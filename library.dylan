module: dylan-user

define library calvino-examples
  use common-dylan;
  use io;
  use c-ffi;
  use calvino-gl-legacy;
  use calvino-glfw3;
end library;

define module calvino-examples
  use common-dylan, exclude: { format-to-string };
  use format-out;
  use streams;
  use standard-io;
  use c-ffi;
  use calvino-gl-legacy;
  use calvino-glfw3;
end module;
