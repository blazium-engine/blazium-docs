:github_url: hide

.. DO NOT EDIT THIS FILE!!!
.. Generated automatically from Godot engine sources.
.. Generator: https://github.com/blazium-engine/blazium/tree/4.3/doc/tools/make_rst.py.
.. XML source: https://github.com/blazium-engine/blazium/tree/4.3/doc/classes/EditorResourceTooltipPlugin.xml.

.. _class_EditorResourceTooltipPlugin:

EditorResourceTooltipPlugin
===========================

**Inherits:** :ref:`RefCounted<class_RefCounted>` **<** :ref:`Object<class_Object>`

A plugin that advanced tooltip for its handled resource type.

.. rst-class:: classref-introduction-group

Description
-----------

Resource tooltip plugins are used by :ref:`FileSystemDock<class_FileSystemDock>` to generate customized tooltips for specific resources. E.g. tooltip for a :ref:`Texture2D<class_Texture2D>` displays a bigger preview and the texture's dimensions.

A plugin must be first registered with :ref:`FileSystemDock.add_resource_tooltip_plugin()<class_FileSystemDock_method_add_resource_tooltip_plugin>`. When the user hovers a resource in filesystem dock which is handled by the plugin, :ref:`_make_tooltip_for_path()<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>` is called to create the tooltip. It works similarly to :ref:`Control._make_custom_tooltip()<class_Control_private_method__make_custom_tooltip>`.

.. rst-class:: classref-reftable-group

Methods
-------

.. table::
   :widths: auto

   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`bool<class_bool>`       | :ref:`_handles<class_EditorResourceTooltipPlugin_private_method__handles>`\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |const|                                                                                                                   |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | :ref:`Control<class_Control>` | :ref:`_make_tooltip_for_path<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>`\ (\ path\: :ref:`String<class_String>`, metadata\: :ref:`Dictionary<class_Dictionary>`, base\: :ref:`Control<class_Control>`\ ) |virtual| |const| |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
   | |void|                        | :ref:`request_thumbnail<class_EditorResourceTooltipPlugin_method_request_thumbnail>`\ (\ path\: :ref:`String<class_String>`, control\: :ref:`TextureRect<class_TextureRect>`\ ) |const|                                                                  |
   +-------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

.. rst-class:: classref-section-separator

----

.. rst-class:: classref-descriptions-group

Method Descriptions
-------------------

.. _class_EditorResourceTooltipPlugin_private_method__handles:

.. rst-class:: classref-method

:ref:`bool<class_bool>` **_handles**\ (\ type\: :ref:`String<class_String>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceTooltipPlugin_private_method__handles>`

Return ``true`` if the plugin is going to handle the given :ref:`Resource<class_Resource>` ``type``.

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path:

.. rst-class:: classref-method

:ref:`Control<class_Control>` **_make_tooltip_for_path**\ (\ path\: :ref:`String<class_String>`, metadata\: :ref:`Dictionary<class_Dictionary>`, base\: :ref:`Control<class_Control>`\ ) |virtual| |const| :ref:`🔗<class_EditorResourceTooltipPlugin_private_method__make_tooltip_for_path>`

Create and return a tooltip that will be displayed when the user hovers a resource under the given ``path`` in filesystem dock.

The ``metadata`` dictionary is provided by preview generator (see :ref:`EditorResourcePreviewGenerator._generate()<class_EditorResourcePreviewGenerator_private_method__generate>`).

\ ``base`` is the base default tooltip, which is a :ref:`VBoxContainer<class_VBoxContainer>` with a file name, type and size labels. If another plugin handled the same file type, ``base`` will be output from the previous plugin. For best result, make sure the base tooltip is part of the returned :ref:`Control<class_Control>`.

\ **Note:** It's unadvised to use :ref:`ResourceLoader.load()<class_ResourceLoader_method_load>`, especially with heavy resources like models or textures, because it will make the editor unresponsive when creating the tooltip. You can use :ref:`request_thumbnail()<class_EditorResourceTooltipPlugin_method_request_thumbnail>` if you want to display a preview in your tooltip.

\ **Note:** If you decide to discard the ``base``, make sure to call :ref:`Node.queue_free()<class_Node_method_queue_free>`, because it's not freed automatically.

::

    func _make_tooltip_for_path(path, metadata, base):
        var t_rect = TextureRect.new()
        request_thumbnail(path, t_rect)
        base.add_child(t_rect) # The TextureRect will appear at the bottom of the tooltip.
        return base

.. rst-class:: classref-item-separator

----

.. _class_EditorResourceTooltipPlugin_method_request_thumbnail:

.. rst-class:: classref-method

|void| **request_thumbnail**\ (\ path\: :ref:`String<class_String>`, control\: :ref:`TextureRect<class_TextureRect>`\ ) |const| :ref:`🔗<class_EditorResourceTooltipPlugin_method_request_thumbnail>`

Requests a thumbnail for the given :ref:`TextureRect<class_TextureRect>`. The thumbnail is created asynchronously by :ref:`EditorResourcePreview<class_EditorResourcePreview>` and automatically set when available.

.. |virtual| replace:: :abbr:`virtual (This method should typically be overridden by the user to have any effect.)`
.. |const| replace:: :abbr:`const (This method has no side effects. It doesn't modify any of the instance's member variables.)`
.. |vararg| replace:: :abbr:`vararg (This method accepts any number of arguments after the ones described here.)`
.. |constructor| replace:: :abbr:`constructor (This method is used to construct a type.)`
.. |static| replace:: :abbr:`static (This method doesn't need an instance to be called, so it can be called directly using the class name.)`
.. |operator| replace:: :abbr:`operator (This method describes a valid operator to use with this type as left-hand operand.)`
.. |bitfield| replace:: :abbr:`BitField (This value is an integer composed as a bitmask of the following flags.)`
.. |void| replace:: :abbr:`void (No return value.)`
