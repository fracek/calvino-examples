module: calvino-examples
synopsis: 
author: 
copyright: 

define function main (name :: <string>, arguments :: <vector>)
  if (~glfwInit())
    error("Init failed");
  end;
  glfwWindowHint($GLFW-VISIBLE, 1);
  glfwWindowHint($GLFW-DECORATED, 1);

  let window = glfwCreateWindow(640, 480, "Test!", null-pointer(<GLFWMonitor*>), null-pointer(<GLFWWindow*>));
/*
  let window = glfwCreateWindow(1024, 768,
                                "Calvino, Italo",
                                glfwGetPrimaryMonitor(),
                                null-pointer(<GLFWWindow*>));
                                */

  glfwMakeContextCurrent(window);

  /* Loop until the user closes the window */
  //while (~glfwWindowShouldClose(window))
  glClearColor(0.1, 0.08, 0.09, 1.0);
  while(#t)
    /* Render here */

    let (width, height) = glfwGetFramebufferSize(window);

    glViewport(0, 0, width, height);
    glClear($GL-COLOR-BUFFER-BIT);

    let ratio = as(<double-float>, as(<float>, width) / as(<float>, height));
    format-out("R: %s\n", ratio);
    force-output(*standard-output*);
    let one = as(<double-float>, 1.0);
    glMatrixMode($GL-PROJECTION);
    glLoadIdentity();
    glOrtho(-ratio, ratio, -one, one, one, -one);
    glMatrixMode($GL-MODELVIEW);
    glBegin($GL-TRIANGLES);
      glColor3f(1.0, 0.0, 0.0);
      glVertex3f(-0.6, -0.4, 0.0);
      glColor3f(0.0, 1.0, 0.0);
      glVertex3f(0.6, -0.4, 0.0);
      glColor3f(0.0, 0.0, 1.0);
      glVertex3f(0.0, 0.6, 0.0);
    glEnd();

    /* Swap front and back buffers */
    glfwSwapBuffers(window);

    /* Poll for and process events */
    glfwPollEvents();
  end;

  glfwDestroyWindow(window);
  glfwTerminate();
end function main;

main(application-name(), application-arguments());
