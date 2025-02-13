; ModuleID = 'blender/source/blender/editors/gpencil/gpencil_ops.c'
source_filename = "blender/source/blender/editors/gpencil/gpencil_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmKeyMapItem = type { ptr, ptr, [64 x i8], ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr }

@.str = private unnamed_addr constant [14 x i8] c"Grease Pencil\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"GPENCIL_OT_draw\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_keymap_gpencil(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @WM_keymap_find(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0, i32 noundef 0) #2
  %3 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 100) #2
  %4 = getelementptr inbounds %struct.wmKeyMapItem, ptr %3, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %5, ptr noundef nonnull @.str.2, i32 noundef 0) #2
  %6 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 100) #2
  %7 = getelementptr inbounds %struct.wmKeyMapItem, ptr %6, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %8, ptr noundef nonnull @.str.2, i32 noundef 2) #2
  %9 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef 1, i32 noundef 2, i32 noundef 100) #2
  %10 = getelementptr inbounds %struct.wmKeyMapItem, ptr %9, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %11, ptr noundef nonnull @.str.2, i32 noundef 3) #2
  %12 = tail call ptr @WM_keymap_add_item(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 3, i32 noundef 1, i32 noundef 0, i32 noundef 100) #2
  %13 = getelementptr inbounds %struct.wmKeyMapItem, ptr %12, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  tail call void @RNA_enum_set(ptr noundef %14, ptr noundef nonnull @.str.2, i32 noundef 1) #2
  ret void
}

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @WM_keymap_add_item(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_operatortypes_gpencil() local_unnamed_addr #0 {
  tail call void @WM_operatortype_append(ptr noundef nonnull @GPENCIL_OT_draw) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @GPENCIL_OT_data_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @GPENCIL_OT_data_unlink) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @GPENCIL_OT_layer_add) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @GPENCIL_OT_active_frame_delete) #2
  tail call void @WM_operatortype_append(ptr noundef nonnull @GPENCIL_OT_convert) #2
  ret void
}

; Function Attrs: optsize
declare void @WM_operatortype_append(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @GPENCIL_OT_draw(ptr noundef) #1

; Function Attrs: optsize
declare void @GPENCIL_OT_data_add(ptr noundef) #1

; Function Attrs: optsize
declare void @GPENCIL_OT_data_unlink(ptr noundef) #1

; Function Attrs: optsize
declare void @GPENCIL_OT_layer_add(ptr noundef) #1

; Function Attrs: optsize
declare void @GPENCIL_OT_active_frame_delete(ptr noundef) #1

; Function Attrs: optsize
declare void @GPENCIL_OT_convert(ptr noundef) #1

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
!5 = !{!6, !7, i64 176}
!6 = !{!"wmKeyMapItem", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !8, i64 88, !10, i64 152, !10, i64 154, !10, i64 156, !10, i64 158, !10, i64 160, !10, i64 162, !10, i64 164, !10, i64 166, !10, i64 168, !10, i64 170, !10, i64 172, !10, i64 174, !7, i64 176}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"short", !8, i64 0}
