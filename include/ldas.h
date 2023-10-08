#ifndef ldasH__
#define ldasH__

struct ldas_config {
  _Bool verbose;
};

int ldas_main(struct ldas_config *cfg);

#endif 
