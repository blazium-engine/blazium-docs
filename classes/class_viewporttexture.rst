:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/blazium-engine/blazium/tree/4.3/doc/tools/make_rst.py.
.. XML source: https://github.com/blazium-engine/blazium/tree/4.3/doc/classes/ViewportTexture.xml.

.. _class_ViewportTexture:

ViewportTexture
===============

**Inherits:** :ref:`Texture2D<class_Texture2D>` **<** :ref:`Texture<class_Texture>` **<** :ref:`Resource<class_Resource>` **<** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

Provides the content of a :ref:`Viewport<class_Viewport>` as a dynamic texture.

.. rst-class:: classref-introduction-group

Description
-----------

A **ViewportTexture** provides the content of a :ref:`Viewport<class_Viewport>` as a dynamic :ref:`Texture2D<class_Texture2D>`. This can be used to combine the rendering of :ref:`Control<class_Control>`, :ref:`Node2D<class_Node2D>` and :ref:`Node3D<class_Node3D>` nodes. For example, you can use this texture to display a 3D scene inside a :ref:`TextureRect<class_TextureRect>`, or a 2D overlay in a :ref:`Sprite3D<class_Sprite3D>`.

To get a **ViewportTexture** in code, use the :ref:`Viewport.get_texture()<class_Viewport_method_get_texture>` method on the target viewport.

\ **Note:** A **ViewportTexture** is always local to its scene (see :ref:`Resource.resource_local_to_scene<class_Resource_property_resource_local_to_scene>`). If the scene root is not ready, it may return incorrect data (see :ref:`Node.ready<class_Node_signal_ready>`).

\ **Note:** Instantiating scenes containing a high-resolution **ViewportTexture** may cause noticeable stutter.

.. rst-class:: classref-introduction-group

Tutorials
---------

- `GUI in 3D Viewport Demo <https://godotengine.org/asset-library/asset/2807>`__

- `3D in 2D Viewport Demo <https://godotengine.org/asset-library/asset/2804>`__

- `2D in 3D Viewport Demo <https://godotengine.org/asset-library/asset/2803>`__

- `3D Resolution Scaling Demo <https://godotengine.org/asset-library/asset/2805>`__

.. rst-class:: classref-reftable-group

Properties
----------

.. table::
   :widths: auto

   +---------------------------------+--------------------------------------------------------------------+------------------+
   | :ref:`NodePath<class_NodePath>` | :ref:`viewport_path<class_ViewportTexture_property_viewport_path>` | ``NodePath("")`` |
   +---------------------------------+--------------------------------------------------------------------+------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Property Descriptions
---------------------

.. _class_ViewportTexture_property_viewport_path:

.. rst-class:: classref-property

:ref:`NodePath<class_NodePath>` **viewport_path** = ``NodePath("")`` :ref:`🔗<class_ViewportTexture_property_viewport_path>`

.. rst-class:: classref-property-setget

- |void| **set_viewport_path_in_scene**\ (\ value\: :ref:`NodePath<class_NodePath>`\ )
- :ref:`NodePath<class_NodePath>` **get_viewport_path_in_scene**\ (\ )

The path to the :ref:`Viewport<class_Viewport>` node to display. This is relative to the local scene root (see :ref:`Resource.get_local_scene()<class_Resource_method_get_local_scene>`), **not** to the nodes that use this texture.

\ **Note:** In the editor, this path is automatically updated when the target viewport or one of its ancestors is renamed or moved. At runtime, this path may not automatically update if the scene root cannot be found.

.. |virtual| replace:: :abbr:`virtual (This method should typically be overridden by the user to have any effect.)`
.. |const| replace:: :abbr:`const (This method has no side effects. It doesn't modify any of the instance's member variables.)`
.. |vararg| replace:: :abbr:`vararg (This method accepts any number of arguments after the ones described here.)`
.. |constructor| replace:: :abbr:`constructor (This method is used to construct a type.)`
.. |static| replace:: :abbr:`static (This method doesn't need an instance to be called, so it can be called directly using the class name.)`
.. |operator| replace:: :abbr:`operator (This method describes a valid operator to use with this type as left-hand operand.)`
.. |bitfield| replace:: :abbr:`BitField (This value is an integer composed as a bitmask of the following flags.)`
.. |void| replace:: :abbr:`void (No return value.)`
