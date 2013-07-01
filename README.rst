Calvino Example(s)
==================

GLFW3 examples ported to `Calvino`_.

Installation
------------

::

    $ git clone --recursive git@github.com:fracek/calvino-examples.git

Build
-----

::

    $ make

Run
---

::

    $ ./_build/bin/calvino-examples

Notes
-----

To make this work I had to change ``glfwGetFramebufferSize`` function
definition to have ``width`` and ``height`` as output parameters.  

Another problem was that ``glfwWindowShouldClose(window)`` always returned
a truthy value.

I also had some problems with calculating the ``ratio``, but probably that's my
fault.

.. _Calvino: https://github.com/dylan-foundry/calvino
