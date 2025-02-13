; ModuleID = 'rtl-error.c'
source_filename = "rtl-error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, ptr, i32, i32 }
%struct.text_info = type { ptr, ptr, i32, ptr, ptr }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }

@global_dc = external local_unnamed_addr global ptr, align 8
@input_location = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"unrecognizable insn:\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"insn does not satisfy its constraints:\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @error_for_asm(ptr nocapture noundef readonly %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @llvm.va_start(ptr nonnull %3)
  call fastcc void @diagnostic_for_asm(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 4) #6
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @diagnostic_for_asm(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.diagnostic_info, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #5
  %6 = tail call fastcc i32 @location_for_asm(ptr noundef %0) #6
  call void @diagnostic_set_info(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, i32 noundef %6, i32 noundef %3) #7
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !6
  %8 = call zeroext i8 @diagnostic_report_diagnostic(ptr noundef %7, ptr noundef nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @diagnostic_set_info(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @location_for_asm(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !10
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %22 [
    i16 23, label %6
    i16 17, label %23
    i16 15, label %12
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 17
  br i1 %11, label %23, label %22

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.rtvec_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = load i32, ptr %16, align 8
  %18 = trunc i32 %17 to i16
  switch i16 %18, label %22 [
    i16 23, label %19
    i16 17, label %23
  ]

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1, i32 0, i32 0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  br label %23

22:                                               ; preds = %12, %1, %6
  br label %23

23:                                               ; preds = %12, %1, %6, %22, %19
  %24 = phi ptr [ %21, %19 ], [ null, %22 ], [ %8, %6 ], [ %3, %1 ], [ %16, %12 ]
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 1, i32 1
  %27 = select i1 %25, ptr @input_location, ptr %26
  %28 = load i32, ptr %27, align 4, !tbaa !10
  ret i32 %28
}

; Function Attrs: optsize
declare zeroext i8 @diagnostic_report_diagnostic(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @warning_for_asm(ptr nocapture noundef readonly %0, ptr noundef %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #5
  call void @llvm.va_start(ptr nonnull %3)
  call fastcc void @diagnostic_for_asm(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef 6) #6
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_fatal_insn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str, ptr noundef %0) #7
  %6 = load ptr, ptr @global_dc, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.diagnostic_context, ptr %6, i64 0, i32 1, i64 4
  %8 = load i32, ptr %7, align 8, !tbaa !11
  %9 = add nsw i32 %8, -1
  store i32 %9, ptr %7, align 8, !tbaa !11
  tail call void @debug_rtx(ptr noundef %1) #7
  tail call void @fancy_abort(ptr noundef %2, i32 noundef %3, ptr noundef %4) #7
  ret void
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @debug_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_fatal_insn_not_found(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !10
  %7 = icmp slt i32 %6, 0
  %8 = select i1 %7, ptr @.str.1, ptr @.str.2
  tail call void @_fatal_insn(ptr noundef nonnull %8, ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #6
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !8, i64 0}
