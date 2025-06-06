:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/blazium-engine/blazium/tree/4.3/doc/tools/make_rst.py.
.. XML source: https://github.com/blazium-engine/blazium/tree/4.3/doc/classes/RenderDataExtension.xml.

.. _class_RenderDataExtension:

RenderDataExtension
===================

**Inherits:** :ref:`RenderData<class_RenderData>` **<** :ref:`Object<class_Object>`

This class allows for a RenderData implementation to be made in GDExtension.

.. rst-class:: classref-introduction-group

Description
-----------

This class allows for a RenderData implementation to be made in GDExtension.

.. rst-class:: classref-reftable-group

Methods
-------

.. table::
   :widths: auto

   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`_get_camera_attributes<class_RenderDataExtension_private_method__get_camera_attributes>`\ (\ ) |virtual| |const|       |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RID<class_RID>`                               | :ref:`_get_environment<class_RenderDataExtension_private_method__get_environment>`\ (\ ) |virtual| |const|                   |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` | :ref:`_get_render_scene_buffers<class_RenderDataExtension_private_method__get_render_scene_buffers>`\ (\ ) |virtual| |const| |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`RenderSceneData<class_RenderSceneData>`       | :ref:`_get_render_scene_data<class_RenderDataExtension_private_method__get_render_scene_data>`\ (\ ) |virtual| |const|       |
   +-----------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Method Descriptions
-------------------

.. _class_RenderDataExtension_private_method__get_camera_attributes:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_camera_attributes**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_camera_attributes>`

Implement this in GDExtension to return the :ref:`RID<class_RID>` for the implementation's camera attributes object.

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_environment:

.. rst-class:: classref-method

:ref:`RID<class_RID>` **_get_environment**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_environment>`

Implement this in GDExtension to return the :ref:`RID<class_RID>` of the implementation's environment object.

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_render_scene_buffers:

.. rst-class:: classref-method

:ref:`RenderSceneBuffers<class_RenderSceneBuffers>` **_get_render_scene_buffers**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_render_scene_buffers>`

Implement this in GDExtension to return the implementation's :ref:`RenderSceneBuffers<class_RenderSceneBuffers>` object.

.. rst-class:: classref-item-separator

----

.. _class_RenderDataExtension_private_method__get_render_scene_data:

.. rst-class:: classref-method

:ref:`RenderSceneData<class_RenderSceneData>` **_get_render_scene_data**\ (\ ) |virtual| |const| :ref:`🔗<class_RenderDataExtension_private_method__get_render_scene_data>`

Implement this in GDExtension to return the implementation's :ref:`RenderSceneDataExtension<class_RenderSceneDataExtension>` object.

.. |virtual| replace:: :abbr:`virtual (This method should typically be overridden by the user to have any effect.)`
.. |const| replace:: :abbr:`const (This method has no side effects. It doesn't modify any of the instance's member variables.)`
.. |vararg| replace:: :abbr:`vararg (This method accepts any number of arguments after the ones described here.)`
.. |constructor| replace:: :abbr:`constructor (This method is used to construct a type.)`
.. |static| replace:: :abbr:`static (This method doesn't need an instance to be called, so it can be called directly using the class name.)`
.. |operator| replace:: :abbr:`operator (This method describes a valid operator to use with this type as left-hand operand.)`
.. |bitfield| replace:: :abbr:`BitField (This value is an integer composed as a bitmask of the following flags.)`
.. |void| replace:: :abbr:`void (No return value.)`
