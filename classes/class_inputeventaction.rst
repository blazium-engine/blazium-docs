:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/blazium-engine/blazium/tree/4.3/doc/tools/make_rst.py.
.. XML source: https://github.com/blazium-engine/blazium/tree/4.3/doc/classes/InputEventAction.xml.

.. _class_InputEventAction:

InputEventAction
================

**Inherits:** :ref:`InputEvent<class_InputEvent>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

An input event type for actions.

.. rst-class:: classref-introduction-group

Description
-----------

Contains a generic action which can be targeted from several types of inputs. Actions and their events can be set in the **Input Map** tab in **Project > Project Settings**, or with the :ref:`InputMap<class_InputMap>` class.

\ **Note:** Unlike the other :ref:`InputEvent<class_InputEvent>` subclasses which map to unique physical events, this virtual one is not emitted by the engine. This class is useful to emit actions manually with :ref:`Input.parse_input_event()<class_Input_method_parse_input_event>`, which are then received in :ref:`Node._input()<class_Node_private_method__input>`. To check if a physical event matches an action from the Input Map, use :ref:`InputEvent.is_action()<class_InputEvent_method_is_action>` and :ref:`InputEvent.is_action_pressed()<class_InputEvent_method_is_action_pressed>`.

.. rst-class:: classref-introduction-group

Tutorials
---------

- `Using InputEvent: Actions <../tutorials/inputs/inputevent.html#actions>`__

- `2D Dodge The Creeps Demo <https://godotengine.org/asset-library/asset/2712>`__

- `3D Voxel Demo <https://godotengine.org/asset-library/asset/2755>`__

.. rst-class:: classref-reftable-group

Properties
----------

.. table::
   :widths: auto

   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`StringName<class_StringName>` | :ref:`action<class_InputEventAction_property_action>`           | ``&""``   |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`int<class_int>`               | :ref:`event_index<class_InputEventAction_property_event_index>` | ``-1``    |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`bool<class_bool>`             | :ref:`pressed<class_InputEventAction_property_pressed>`         | ``false`` |
   +-------------------------------------+-----------------------------------------------------------------+-----------+
   | :ref:`float<class_float>`           | :ref:`strength<class_InputEventAction_property_strength>`       | ``1.0``   |
   +-------------------------------------+-----------------------------------------------------------------+-----------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Property Descriptions
---------------------

.. _class_InputEventAction_property_action:

.. rst-class:: classref-property

:ref:`StringName<class_StringName>` **action** = ``&""`` :ref:`🔗<class_InputEventAction_property_action>`

.. rst-class:: classref-property-setget

- |void| **set_action**\ (\ value\: :ref:`StringName<class_StringName>`\ )
- :ref:`StringName<class_StringName>` **get_action**\ (\ )

The action's name. Actions are accessed via this :ref:`String<class_String>`.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_event_index:

.. rst-class:: classref-property

:ref:`int<class_int>` **event_index** = ``-1`` :ref:`🔗<class_InputEventAction_property_event_index>`

.. rst-class:: classref-property-setget

- |void| **set_event_index**\ (\ value\: :ref:`int<class_int>`\ )
- :ref:`int<class_int>` **get_event_index**\ (\ )

The real event index in action this event corresponds to (from events defined for this action in the :ref:`InputMap<class_InputMap>`). If ``-1``, a unique ID will be used and actions pressed with this ID will need to be released with another **InputEventAction**.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_pressed:

.. rst-class:: classref-property

:ref:`bool<class_bool>` **pressed** = ``false`` :ref:`🔗<class_InputEventAction_property_pressed>`

.. rst-class:: classref-property-setget

- |void| **set_pressed**\ (\ value\: :ref:`bool<class_bool>`\ )
- :ref:`bool<class_bool>` **is_pressed**\ (\ )

If ``true``, the action's state is pressed. If ``false``, the action's state is released.

.. rst-class:: classref-item-separator

----

.. _class_InputEventAction_property_strength:

.. rst-class:: classref-property

:ref:`float<class_float>` **strength** = ``1.0`` :ref:`🔗<class_InputEventAction_property_strength>`

.. rst-class:: classref-property-setget

- |void| **set_strength**\ (\ value\: :ref:`float<class_float>`\ )
- :ref:`float<class_float>` **get_strength**\ (\ )

The action's strength between 0 and 1. This value is considered as equal to 0 if pressed is ``false``. The event strength allows faking analog joypad motion events, by specifying how strongly the joypad axis is bent or pressed.

.. |virtual| replace:: :abbr:`virtual (This method should typically be overridden by the user to have any effect.)`
.. |const| replace:: :abbr:`const (This method has no side effects. It doesn't modify any of the instance's member variables.)`
.. |vararg| replace:: :abbr:`vararg (This method accepts any number of arguments after the ones described here.)`
.. |constructor| replace:: :abbr:`constructor (This method is used to construct a type.)`
.. |static| replace:: :abbr:`static (This method doesn't need an instance to be called, so it can be called directly using the class name.)`
.. |operator| replace:: :abbr:`operator (This method describes a valid operator to use with this type as left-hand operand.)`
.. |bitfield| replace:: :abbr:`BitField (This value is an integer composed as a bitmask of the following flags.)`
.. |void| replace:: :abbr:`void (No return value.)`
