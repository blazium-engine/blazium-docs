:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/blazium-engine/blazium/tree/4.3/doc/tools/make_rst.py.
.. XML source: https://github.com/blazium-engine/blazium/tree/4.3/doc/classes/SceneTreeTimer.xml.

.. _class_SceneTreeTimer:

SceneTreeTimer
==============

**Inherits:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

One-shot timer.

.. rst-class:: classref-introduction-group

Description
-----------

A one-shot timer managed by the scene tree, which emits :ref:`timeout<class_SceneTreeTimer_signal_timeout>` on completion. See also :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>`.

As opposed to :ref:`Timer<class_Timer>`, it does not require the instantiation of a node. Commonly used to create a one-shot delay timer as in the following example:


.. tabs::

 .. code-tab:: gdscript

    func some_function():
        print("Timer started.")
        await get_tree().create_timer(1.0).timeout
        print("Timer ended.")

 .. code-tab:: csharp

    public async Task SomeFunction()
    {
        GD.Print("Timer started.");
        await ToSignal(GetTree().CreateTimer(1.0f), SceneTreeTimer.SignalName.Timeout);
        GD.Print("Timer ended.");
    }



The timer will be dereferenced after its time elapses. To preserve the timer, you can keep a reference to it. See :ref:`RefCounted<class_RefCounted>`.

\ **Note:** The timer is processed after all of the nodes in the current frame, i.e. node's :ref:`Node._process()<class_Node_private_method__process>` method would be called before the timer (or :ref:`Node._physics_process()<class_Node_private_method__physics_process>` if ``process_in_physics`` in :ref:`SceneTree.create_timer()<class_SceneTree_method_create_timer>` has been set to ``true``).

.. rst-class:: classref-reftable-group

Properties
----------

.. table::
   :widths: auto

   +---------------------------+-----------------------------------------------------------+
   | :ref:`float<class_float>` | :ref:`time_left<class_SceneTreeTimer_property_time_left>` |
   +---------------------------+-----------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Signals
-------

.. _class_SceneTreeTimer_signal_timeout:

.. rst-class:: classref-signal

**timeout**\ (\ ) :ref:`🔗<class_SceneTreeTimer_signal_timeout>`

Emitted when the timer reaches 0.

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Property Descriptions
---------------------

.. _class_SceneTreeTimer_property_time_left:

.. rst-class:: classref-property

:ref:`float<class_float>` **time_left** :ref:`🔗<class_SceneTreeTimer_property_time_left>`

.. rst-class:: classref-property-setget

- |void| **set_time_left**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_time_left**\ (\ )

The time remaining (in seconds).

.. |virtual| replace:: :abbr:`virtual (This method should typically be overridden by the user to have any effect.)`
.. |const| replace:: :abbr:`const (This method has no side effects. It doesn't modify any of the instance's member variables.)`
.. |vararg| replace:: :abbr:`vararg (This method accepts any number of arguments after the ones described here.)`
.. |constructor| replace:: :abbr:`constructor (This method is used to construct a type.)`
.. |static| replace:: :abbr:`static (This method doesn't need an instance to be called, so it can be called directly using the class name.)`
.. |operator| replace:: :abbr:`operator (This method describes a valid operator to use with this type as left-hand operand.)`
.. |bitfield| replace:: :abbr:`BitField (This value is an integer composed as a bitmask of the following flags.)`
.. |void| replace:: :abbr:`void (No return value.)`
