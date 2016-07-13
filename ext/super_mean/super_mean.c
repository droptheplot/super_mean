#include <ruby.h>

VALUE
super_mean_ary_mean(int argc, const VALUE *argv, VALUE ary)
{
  double result = 0.0;
  long i, length = RARRAY_LEN(ary);
  VALUE *ptr = RARRAY_PTR(ary);

  for(i = 0; i < length; i++) {
    result += NUM2DBL(ptr[i]);
  }

  result = result / length;

  return rb_float_new(result);
}

void
Init_super_mean(void)
{
  VALUE ary;

  ary = rb_define_class("Array", rb_cObject);
  rb_define_method(ary, "mean", super_mean_ary_mean, -1);
}
