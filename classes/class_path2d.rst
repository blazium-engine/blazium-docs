:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/blazium-engine/blazium/tree/4.3/doc/tools/make_rst.py.
.. XML source: https://github.com/blazium-engine/blazium/tree/4.3/doc/classes/Path2D.xml.

.. _class_Path2D:

Path2D
======

**Inherits:** :ref:`Node2D<class_Node2D>` **<** :ref:`CanvasItem<class_CanvasItem>` **<** :ref:`Node<class_Node>` **<** :ref:`Object<class_Object>`

Contains a :ref:`Curve2D<class_Curve2D>` path for :ref:`PathFollow2D<class_PathFollow2D>` nodes to follow.

.. rst-class:: classref-introduction-group

Description
-----------

Can have :ref:`PathFollow2D<class_PathFollow2D>` child nodes moving along the :ref:`Curve2D<class_Curve2D>`. See :ref:`PathFollow2D<class_PathFollow2D>` for more information on usage.

\ **Note:** The path is considered as relative to the moved nodes (children of :ref:`PathFollow2D<class_PathFollow2D>`). As such, the curve should usually start with a zero vector (``(0, 0)``).

.. rst-class:: classref-reftable-group

Properties
----------

.. table::
   :widths: auto

   +-------------------------------+-------------------------------------------+
   | :ref:`Curve2D<class_Curve2D>` | :ref:`curve<class_Path2D_property_curve>` |
   +-------------------------------+-------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Property Descriptions
---------------------

.. _class_Path2D_property_curve:

.. rst-class:: classref-property

:ref:`Curve2D<class_Curve2D>` **curve** :ref:`🔗<class_Path2D_property_curve>`

.. rst-class:: classref-property-setget

- |void| **set_curve**\ (\ value\: :ref:`Curve2D<class_Curve2D>`\ )
- :ref:`Curve2D<class_Curve2D>` **get_curve**\ (\ )

A :ref:`Curve2D<class_Curve2D>` describing the path.

.. |virtual| replace:: :abbr:`virtual (This method should typically be overridden by the user to have any effect.)`
.. |const| replace:: :abbr:`const (This method has no side effects. It doesn't modify any of the instance's member variables.)`
.. |vararg| replace:: :abbr:`vararg (This method accepts any number of arguments after the ones described here.)`
.. |constructor| replace:: :abbr:`constructor (This method is used to construct a type.)`
.. |static| replace:: :abbr:`static (This method doesn't need an instance to be called, so it can be called directly using the class name.)`
.. |operator| replace:: :abbr:`operator (This method describes a valid operator to use with this type as left-hand operand.)`
.. |bitfield| replace:: :abbr:`BitField (This value is an integer composed as a bitmask of the following flags.)`
.. |void| replace:: :abbr:`void (No return value.)`
