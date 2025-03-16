; ModuleID = 'zsysvm.c'
source_filename = "zsysvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op_def = type { ptr, ptr }
%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }

@zsysvm_op_defs.op_defs_ = internal constant [14 x %struct.op_def] [%struct.op_def { ptr @.str, ptr @zglobalvmarray }, %struct.op_def { ptr @.str.1, ptr @zglobalvmdict }, %struct.op_def { ptr @.str.2, ptr @zglobalvmpackedarray }, %struct.op_def { ptr @.str.3, ptr @zglobalvmstring }, %struct.op_def { ptr @.str.4, ptr @zlocalvmarray }, %struct.op_def { ptr @.str.5, ptr @zlocalvmdict }, %struct.op_def { ptr @.str.6, ptr @zlocalvmpackedarray }, %struct.op_def { ptr @.str.7, ptr @zlocalvmstring }, %struct.op_def { ptr @.str.8, ptr @zsystemvmarray }, %struct.op_def { ptr @.str.9, ptr @zsystemvmcheck }, %struct.op_def { ptr @.str.10, ptr @zsystemvmdict }, %struct.op_def { ptr @.str.11, ptr @zsystemvmpackedarray }, %struct.op_def { ptr @.str.12, ptr @zsystemvmstring }, %struct.op_def zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"1.globalvmarray\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"1.globalvmdict\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"1.globalvmpackedarray\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"1.globalvmstring\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"1.localvmarray\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"1.localvmdict\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"1.localvmpackedarray\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"1.localvmstring\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"1.systemvmarray\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"1.systemvmcheck\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"1.systemvmdict\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"1.systemvmpackedarray\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"1.systemvmstring\00", align 1
@gs_imemory = external global %struct.gs_dual_memory_s, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zsysvm_op_defs() local_unnamed_addr #0 {
  ret ptr @zsysvm_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zglobalvmarray(ptr noundef %0) #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 8) #4
  %3 = tail call i32 @zarray(ptr noundef %0) #4, !callees !11
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zglobalvmdict(ptr noundef %0) #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 8) #4
  %3 = tail call i32 @zdict(ptr noundef %0) #4, !callees !11
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zglobalvmpackedarray(ptr noundef %0) #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 8) #4
  %3 = tail call i32 @zpackedarray(ptr noundef %0) #4, !callees !11
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zglobalvmstring(ptr noundef %0) #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 8) #4
  %3 = tail call i32 @zstring(ptr noundef %0) #4, !callees !11
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zlocalvmarray(ptr noundef %0) #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 12) #4
  %3 = tail call i32 @zarray(ptr noundef %0) #4, !callees !11
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zlocalvmdict(ptr noundef %0) #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 12) #4
  %3 = tail call i32 @zdict(ptr noundef %0) #4, !callees !11
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zlocalvmpackedarray(ptr noundef %0) #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 12) #4
  %3 = tail call i32 @zpackedarray(ptr noundef %0) #4, !callees !11
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zlocalvmstring(ptr noundef %0) #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 12) #4
  %3 = tail call i32 @zstring(ptr noundef %0) #4, !callees !11
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zsystemvmarray(ptr noundef %0) #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 4) #4
  %3 = tail call i32 @zarray(ptr noundef %0) #4, !callees !11
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %2) #4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @zsystemvmcheck(ptr nocapture noundef %0) #2 {
  %2 = load i16, ptr %0, align 8, !tbaa !12
  %3 = and i16 %2, 12
  %4 = icmp eq i16 %3, 4
  %5 = zext i1 %4 to i16
  %6 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i16 %5, ptr %6, align 8, !tbaa !16
  store i16 256, ptr %0, align 8, !tbaa !12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @zsystemvmdict(ptr noundef %0) #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 4) #4
  %3 = tail call i32 @zdict(ptr noundef %0) #4, !callees !11
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zsystemvmpackedarray(ptr noundef %0) #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 4) #4
  %3 = tail call i32 @zpackedarray(ptr noundef %0) #4, !callees !11
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %2) #4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @zsystemvmstring(ptr noundef %0) #1 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !5
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef 4) #4
  %3 = tail call i32 @zstring(ptr noundef %0) #4, !callees !11
  tail call void @ialloc_set_space(ptr noundef nonnull @gs_imemory, i32 noundef %2) #4
  ret i32 %3
}

declare i32 @zarray(ptr noundef) local_unnamed_addr #3

declare void @ialloc_set_space(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @zdict(ptr noundef) local_unnamed_addr #3

declare i32 @zpackedarray(ptr noundef) local_unnamed_addr #3

declare i32 @zstring(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 40}
!6 = !{!"gs_dual_memory_s", !7, i64 0, !8, i64 8, !10, i64 40, !10, i64 44, !7, i64 48, !10, i64 56, !10, i64 60}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{ptr @zarray, ptr @zdict, ptr @zpackedarray, ptr @zstring}
!12 = !{!13, !15, i64 0}
!13 = !{!"ref_s", !14, i64 0, !8, i64 8}
!14 = !{!"tas_s", !15, i64 0, !15, i64 2}
!15 = !{!"short", !8, i64 0}
!16 = !{!8, !8, i64 0}
