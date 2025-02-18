; ModuleID = 'blender/source/blender/editors/render/render_ops.c'
source_filename = "blender/source/blender/editors/render/render_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
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

declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

declare void @OBJECT_OT_material_slot_add(ptr noundef) #1

declare void @OBJECT_OT_material_slot_remove(ptr noundef) #1

declare void @OBJECT_OT_material_slot_assign(ptr noundef) #1

declare void @OBJECT_OT_material_slot_select(ptr noundef) #1

declare void @OBJECT_OT_material_slot_deselect(ptr noundef) #1

declare void @OBJECT_OT_material_slot_copy(ptr noundef) #1

declare void @MATERIAL_OT_new(ptr noundef) #1

declare void @TEXTURE_OT_new(ptr noundef) #1

declare void @WORLD_OT_new(ptr noundef) #1

declare void @MATERIAL_OT_copy(ptr noundef) #1

declare void @MATERIAL_OT_paste(ptr noundef) #1

declare void @SCENE_OT_render_layer_add(ptr noundef) #1

declare void @SCENE_OT_render_layer_remove(ptr noundef) #1

declare void @TEXTURE_OT_slot_copy(ptr noundef) #1

declare void @TEXTURE_OT_slot_paste(ptr noundef) #1

declare void @TEXTURE_OT_slot_move(ptr noundef) #1

declare void @TEXTURE_OT_envmap_save(ptr noundef) #1

declare void @TEXTURE_OT_envmap_clear(ptr noundef) #1

declare void @TEXTURE_OT_envmap_clear_all(ptr noundef) #1

declare void @RENDER_OT_view_show(ptr noundef) #1

declare void @RENDER_OT_render(ptr noundef) #1

declare void @RENDER_OT_view_cancel(ptr noundef) #1

declare void @RENDER_OT_opengl(ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
