; ModuleID = 'blender/source/blender/editors/render/render_ops.c'
source_filename = "blender/source/blender/editors/render/render_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_render() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_material_slot_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_material_slot_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_material_slot_assign) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_material_slot_select) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_material_slot_deselect) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @OBJECT_OT_material_slot_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MATERIAL_OT_new) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXTURE_OT_new) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @WORLD_OT_new) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MATERIAL_OT_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @MATERIAL_OT_paste) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCENE_OT_render_layer_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @SCENE_OT_render_layer_remove) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXTURE_OT_slot_copy) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXTURE_OT_slot_paste) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXTURE_OT_slot_move) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXTURE_OT_envmap_save) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXTURE_OT_envmap_clear) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @TEXTURE_OT_envmap_clear_all) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @RENDER_OT_view_show) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @RENDER_OT_render) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @RENDER_OT_view_cancel) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @RENDER_OT_opengl) #2
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @OBJECT_OT_material_slot_add(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_material_slot_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_material_slot_assign(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_material_slot_select(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_material_slot_deselect(ptr noundef) #1

; Function Attrs: optsize
declare void @OBJECT_OT_material_slot_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @MATERIAL_OT_new(ptr noundef) #1

; Function Attrs: optsize
declare void @TEXTURE_OT_new(ptr noundef) #1

; Function Attrs: optsize
declare void @WORLD_OT_new(ptr noundef) #1

; Function Attrs: optsize
declare void @MATERIAL_OT_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @MATERIAL_OT_paste(ptr noundef) #1

; Function Attrs: optsize
declare void @SCENE_OT_render_layer_add(ptr noundef) #1

; Function Attrs: optsize
declare void @SCENE_OT_render_layer_remove(ptr noundef) #1

; Function Attrs: optsize
declare void @TEXTURE_OT_slot_copy(ptr noundef) #1

; Function Attrs: optsize
declare void @TEXTURE_OT_slot_paste(ptr noundef) #1

; Function Attrs: optsize
declare void @TEXTURE_OT_slot_move(ptr noundef) #1

; Function Attrs: optsize
declare void @TEXTURE_OT_envmap_save(ptr noundef) #1

; Function Attrs: optsize
declare void @TEXTURE_OT_envmap_clear(ptr noundef) #1

; Function Attrs: optsize
declare void @TEXTURE_OT_envmap_clear_all(ptr noundef) #1

; Function Attrs: optsize
declare void @RENDER_OT_view_show(ptr noundef) #1

; Function Attrs: optsize
declare void @RENDER_OT_render(ptr noundef) #1

; Function Attrs: optsize
declare void @RENDER_OT_view_cancel(ptr noundef) #1

; Function Attrs: optsize
declare void @RENDER_OT_opengl(ptr noundef) #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
