//
#include <omp.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>

//
typedef float              f32;
typedef double             f64;
typedef unsigned long long u64;

//
typedef struct particle_s {

  f32 *x, *y, *z;
  f32 *vx, *vy, *vz;
  
} particle_t;

// Utilisation de Posix au lieu de malloc comme suggerer par MAQAO.
void init(particle_t *p, u64 n)
{

   double * px = NULL;
   double * py = NULL;
   double * pz = NULL;
   
   double * pvx = NULL;
   double * pvy = NULL;
   double * pvz = NULL;
   
   int v=0;
   
   v+= posix_memalign((void**) &px, 64, n * sizeof(particle_t));
   v+= posix_memalign((void**) &py, 64, n * sizeof(particle_t));
   v+= posix_memalign((void**) &pz, 64, n * sizeof(particle_t));
   
   v+= posix_memalign((void**) &pvx, 64, n * sizeof(particle_t));
   v+= posix_memalign((void**) &pvy, 64, n * sizeof(particle_t));
   v+= posix_memalign((void**) &pvz, 64, n * sizeof(particle_t));
   
   p->x = __builtin_assume_aligned(px,64);
   p->y = __builtin_assume_aligned(py,64);
   p->z = __builtin_assume_aligned(pz,64);
   
   p->vx = __builtin_assume_aligned(pvx,64);
   p->vy = __builtin_assume_aligned(pvy,64);
   p->vz = __builtin_assume_aligned(pvz,64);
      //
  for (u64 i = 0; i < n; i++)
    {
      //
      u64 r1 = (u64)rand();
      u64 r2 = (u64)rand();
      f32 sign = (r1 > r2) ? 1 : -1;
      
      //
      p->x[i] = sign * (f32)rand() / (f32)RAND_MAX;
      p->y[i] = (f32)rand() / (f32)RAND_MAX;
      p->z[i] = sign * (f32)rand() / (f32)RAND_MAX;

      //
      p->vx[i]= (f32)rand() / (f32)RAND_MAX;
      p->vy[i] = sign * (f32)rand() / (f32)RAND_MAX;
      p->vz[i] = (f32)rand() / (f32)RAND_MAX;
      
    }
    
}

static inline float InvSqrt(float x)
{
float xhalf = 0.5f*x;
int i = *(int*)&x; // get bits for floating value
i = 0x5f3759df - (i>>1); // gives initial guess y0
x = *(float*)&i; // convert bits back to float
x = x*(1.5f-xhalf*x*x); // Newton step, repeating increases accuracy
return x;
}

void move_particles(particle_t *p, const f32 dt, u64 n)
{
  //
  const f32 softening = 1e-20;

  //
  f32 fx = 0.0;
  f32 fy = 0.0;
  f32 fz = 0.0;

  //
  for (u64 i = 0; i < n; i++)
    {
      //
      int pxi = p->x[i];
      int pyi = p->y[i];
      int pzi = p->z[i];
    
      //23 floating-point operations
      for (u64 j = 0; j < n; j++)
	{
	  //Newton's law
      
        const f32 dx = p->x[j] - pxi; //1
        const f32 dy = p->y[j] - pyi; //2
        const f32 dz = p->z[j] - pzi; //3
      
        const f32 d_2 = (dx * dx) + (dy * dy) + (dz * dz) + softening; //9
        const f32 d_sq = InvSqrt(d_2); //11
        const f32 d_3_over_2 = d_sq * d_sq * d_sq; //13

	  //Net force
	    fx += dx * d_3_over_2; //15
	    fy += dy * d_3_over_2; //17
	    fz += dz * d_3_over_2; //19
	}

      //
      p->vx[i] += dt * fx;//21
      p->vy[i] += dt * fy;//23
      p->vz[i] += dt * fz;//25
    }


  //3 floating-point operations
  // Changement de l'enroulement de la boucle avec un pas de 9.
  for (u64 i = 0; i < n; i+=9)
    {
      p->x[i] += dt * p->vx[i];
      p->y[i] += dt * p->vy[i];
      p->z[i] += dt * p->vz[i];
      
      p->x[i+1] += dt * p->vx[i+1];
      p->y[i+1] += dt * p->vy[i+1];
      p->z[i+1] += dt * p->vz[i+1];
      
      p->x[i+2] += dt * p->vx[i+2];
      p->y[i+2] += dt * p->vy[i+2];
      p->z[i+2] += dt * p->vz[i+2];
      
      p->x[i+3] += dt * p->vx[i+3];
      p->y[i+3] += dt * p->vy[i+3];
      p->z[i+3] += dt * p->vz[i+3];
      
      p->x[i+4] += dt * p->vx[i+4];
      p->y[i+4] += dt * p->vy[i+4];
      p->z[i+4] += dt * p->vz[i+4];
      
      p->x[i+5] += dt * p->vx[i+5];
      p->y[i+5] += dt * p->vy[i+5];
      p->z[i+5] += dt * p->vz[i+5];
      
      p->x[i+6] += dt * p->vx[i+6];
      p->y[i+6] += dt * p->vy[i+6];
      p->z[i+6] += dt * p->vz[i+6];
      
      p->x[i+7] += dt * p->vx[i+7];
      p->y[i+7] += dt * p->vy[i+7];
      p->z[i+7] += dt * p->vz[i+7];
      
      p->x[i+8] += dt * p->vx[i+8];
      p->y[i+8] += dt * p->vy[i+8];
      p->z[i+8] += dt * p->vz[i+8];

      
    }
}

//
int main(int argc, char **argv)
{
  //
  const u64 n = (argc > 1) ? atoll(argv[1]) : 16384;
  const u64 steps= 10;
  const f32 dt = 0.01;

  //
  f64 rate = 0.0, drate = 0.0;

  //Steps to skip for warm up
  const u64 warmup = 3;
  
  //
  particle_t *p = malloc(sizeof(particle_t) * n);

  //
  init(p, n);

  const u64 s = sizeof(particle_t) * n;
  
  printf("\n\033[1mTotal memory size:\033[0m %llu B, %llu KiB, %llu MiB\n\n", s, s >> 10, s >> 20);
  
  //
  printf("\033[1m%5s %10s %10s %8s\033[0m\n", "Step", "Time, s", "Interact/s", "GFLOP/s"); fflush(stdout);
  
  //
  for (u64 i = 0; i < steps; i++)
    {
      //Measure
      const f64 start = omp_get_wtime();

      move_particles(p, dt, n);

      const f64 end = omp_get_wtime();

      //Number of interactions/iterations
      const f32 h1 = (f32)(n) * (f32)(n - 1);

      //GFLOPS
      const f32 h2 = (23.0 * h1 + 3.0 * (f32)n) * 1e-9;
      
      if (i >= warmup)
	{
	  rate += h2 / (end - start);
	  drate += (h2 * h2) / ((end - start) * (end - start));
	}

      //
      printf("%5llu %10.3e %10.3e %8.1f %s\n",
	     i,
	     (end - start),
	     h1 / (end - start),
	     h2 / (end - start),
	     (i < warmup) ? "*" : "");
      
      fflush(stdout);
    }

  //
  rate /= (f64)(steps - warmup);
  drate = sqrt(drate / (f64)(steps - warmup) - (rate * rate));

  printf("-----------------------------------------------------\n");
  printf("\033[1m%s %4s \033[42m%10.1lf +- %.1lf GFLOP/s\033[0m\n",
	 "Average performance:", "", rate, drate);
  printf("-----------------------------------------------------\n");
  
  //
  free(p->x);
  free(p->y);
  free(p->z);
  free(p->vx);
  free(p->vy);
  free(p->vz);

  //
  return 0;
}
