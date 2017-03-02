Toolium Template
================

Base project to start using `Toolium <https://github.com/Telefonica/toolium>`_ for your testing automation projects
(web, Android or iOS).

The toolium-template example test is a behave web test. There are more examples of web, Android or iOS tests (with or
without using behave) in `toolium-examples <https://github.com/Telefonica/toolium-examples>`_.

Getting Started
---------------

The requirements to install Toolium are `Python 2.7 or 3.3+ <http://www.python.org>`_ and
`pip <https://pypi.python.org/pypi/pip>`_. If you use Python 2.7.9+, you don't need to install pip separately.

Clone `toolium-template <https://github.com/Telefonica/toolium-template>`_ repository and install requirements. It's
highly recommendable to use a virtualenv.

.. code:: console

    $ git clone git@github.com:Telefonica/toolium-template.git
    $ cd toolium-template
    $ pip install -r requirements.txt

Running Tests
-------------

By default, example tests are configured to run in firefox locally, so firefox must be installed in your machine.

To run all tests:

.. code:: console

    $ behave

To run a single test:

.. code:: console

    $ behave -n 'successful login'

Customizing Template
--------------------

Before creating your tests, you should personalize the template:

1. Clone toolium-template repository

.. code:: console

    $ git clone git@github.com:Telefonica/toolium-template.git <your_repository_name>

2. Compact all template commits in one preserving the author

.. code:: console

    $ cd <your_repository_name>
    $ git reset $(git commit-tree HEAD^{tree} -m "Toolium template")
    $ git -c user.name="Ruben Gonzalez Alonso" -c user.email=rgonalo@gmail.com commit --amend --reset-author --no-edit

3. Create a new clean repository in your github user/organization

4. Replace origin and push changes yo your repository

.. code:: console

    $ git remote rm origin
    $ git remote add origin git@github.com:<your_github_organization_or_user>/<your_repository_name>.git
    $ git push -u origin master
