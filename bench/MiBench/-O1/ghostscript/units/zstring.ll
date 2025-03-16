; ModuleID = 'zstring.c'
source_filename = "zstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_dual_memory_s = type { ptr, %union.vm_spaces_s, i32, i32, ptr, i32, i32 }
%union.vm_spaces_s = type { [4 x ptr] }
%struct.op_def = type { ptr, ptr }
%struct.ref_stack_s = type { ptr, ptr, ptr, %struct.ref_s, i32, i32, %struct.ref_s, i32, i32, i32, i32, i32, %struct.ref_s, i32, i32, i32, ptr }
%struct.ref_s = type { %struct.tas_s, %union.v }
%struct.tas_s = type { i16, i16 }
%union.v = type { i64 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@gs_imemory = external local_unnamed_addr global %struct.gs_dual_memory_s, align 8
@.str = private unnamed_addr constant [7 x i8] c"string\00", align 1
@zstring_op_defs.op_defs_ = internal constant [6 x %struct.op_def] [%struct.op_def { ptr @.str.1, ptr @zanchorsearch }, %struct.op_def { ptr @.str.2, ptr @znamestring }, %struct.op_def { ptr @.str.3, ptr @zsearch }, %struct.op_def { ptr @.str.4, ptr @zstring }, %struct.op_def { ptr @.str.5, ptr @zstringmatch }, %struct.op_def zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"2anchorsearch\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"1.namestring\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"2search\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"1string\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"2.stringmatch\00", align 1
@o_stack = external local_unnamed_addr global %struct.ref_stack_s, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @zstring(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 11
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !5
  %10 = icmp ugt i64 %9, 65535
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = trunc i64 %9 to i32
  %13 = load ptr, ptr @gs_imemory, align 8, !tbaa !8
  %14 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %13, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = tail call ptr %15(ptr noundef %13, i32 noundef %12, ptr noundef nonnull @.str) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !5
  %19 = load i32, ptr getelementptr inbounds (%struct.gs_dual_memory_s, ptr @gs_imemory, i64 0, i32 2), align 8, !tbaa !15
  %20 = trunc i32 %19 to i16
  %21 = or i16 %20, 112
  %22 = add i16 %21, 4608
  store i16 %22, ptr %0, align 8, !tbaa !16
  %23 = trunc i64 %9 to i16
  %24 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  store i16 %23, ptr %24, align 2, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %16, i8 0, i64 %9, i1 false)
  br label %25

25:                                               ; preds = %11, %7, %18, %5
  %26 = phi i32 [ 0, %18 ], [ %6, %5 ], [ -15, %7 ], [ -25, %11 ]
  ret i32 %26
}

declare i32 @check_type_failed(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @zstring_op_defs() local_unnamed_addr #3 {
  ret ptr @zstring_op_defs.op_defs_
}

; Function Attrs: nounwind uwtable
define internal i32 @zanchorsearch(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 2, !tbaa !20
  %5 = load i16, ptr %2, align 8, !tbaa !16
  %6 = and i16 %5, 16160
  %7 = icmp eq i16 %6, 4640
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds i8, ptr %0, i64 -15
  %10 = load i8, ptr %9, align 1, !tbaa !5
  %11 = icmp eq i8 %10, 18
  br i1 %11, label %50, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #6
  br label %50

14:                                               ; preds = %1
  %15 = load i16, ptr %0, align 8, !tbaa !16
  %16 = and i16 %15, 16160
  %17 = icmp eq i16 %16, 4640
  br i1 %17, label %24, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %0, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !5
  %21 = icmp eq i8 %20, 18
  br i1 %21, label %50, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %50

24:                                               ; preds = %14
  %25 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %26 = load i16, ptr %25, align 2, !tbaa !20
  %27 = icmp ugt i16 %4, %26
  br i1 %27, label %47, label %28

28:                                               ; preds = %24
  %29 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = zext i16 %4 to i64
  %34 = tail call i32 @bcmp(ptr %30, ptr %32, i64 %33)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  %38 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !21
  %39 = icmp ugt ptr %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 1, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !23
  br label %46

41:                                               ; preds = %36
  store ptr %37, ptr @o_stack, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !25
  store i16 %4, ptr %3, align 2, !tbaa !20
  %42 = load ptr, ptr %29, align 8, !tbaa !5
  %43 = getelementptr inbounds i8, ptr %42, i64 %33
  store ptr %43, ptr %29, align 8, !tbaa !5
  %44 = sub i16 %26, %4
  store i16 %44, ptr %25, align 2, !tbaa !20
  %45 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  store i16 1, ptr %45, align 8, !tbaa !5
  store i16 256, ptr %37, align 8, !tbaa !16
  br label %46

46:                                               ; preds = %41, %40
  br i1 %39, label %50, label %49

47:                                               ; preds = %28, %24
  %48 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i16 0, ptr %48, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !16
  br label %49

49:                                               ; preds = %46, %47
  br label %50

50:                                               ; preds = %22, %18, %12, %8, %46, %49
  %51 = phi i32 [ 0, %49 ], [ -16, %46 ], [ %13, %12 ], [ -7, %8 ], [ %23, %22 ], [ -7, %18 ]
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define internal i32 @znamestring(ptr noundef %0) #0 {
  %2 = getelementptr inbounds i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1, !tbaa !5
  %4 = icmp eq i8 %3, 13
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @check_type_failed(ptr noundef %0) #6
  br label %8

7:                                                ; preds = %1
  tail call void @name_string_ref(ptr noundef %0, ptr noundef %0) #6
  br label %8

8:                                                ; preds = %7, %5
  %9 = phi i32 [ 0, %7 ], [ %6, %5 ]
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @zsearch(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 2, !tbaa !20
  %5 = zext i16 %4 to i32
  %6 = load i16, ptr %2, align 8, !tbaa !16
  %7 = and i16 %6, 16160
  %8 = icmp eq i16 %7, 4640
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %0, i64 -15
  %11 = load i8, ptr %10, align 1, !tbaa !5
  %12 = icmp eq i8 %11, 18
  br i1 %12, label %78, label %13

13:                                               ; preds = %9
  %14 = tail call i32 @check_type_failed(ptr noundef nonnull %2) #6
  br label %78

15:                                               ; preds = %1
  %16 = load i16, ptr %0, align 8, !tbaa !16
  %17 = and i16 %16, 16160
  %18 = icmp eq i16 %17, 4640
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %0, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = icmp eq i8 %21, 18
  br i1 %22, label %78, label %23

23:                                               ; preds = %19
  %24 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %78

25:                                               ; preds = %15
  %26 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %27 = load i16, ptr %26, align 2, !tbaa !20
  %28 = icmp ugt i16 %4, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store i16 0, ptr %30, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !16
  br label %78

31:                                               ; preds = %25
  %32 = zext i16 %27 to i32
  %33 = sub nsw i32 %32, %5
  %34 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = icmp eq i16 %4, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  %40 = load i8, ptr %39, align 1, !tbaa !5
  %41 = icmp eq i16 %4, 1
  %42 = zext i16 %4 to i64
  br label %43

43:                                               ; preds = %52, %37
  %44 = phi i32 [ %33, %37 ], [ %54, %52 ]
  %45 = phi ptr [ %35, %37 ], [ %53, %52 ]
  %46 = load i8, ptr %45, align 1, !tbaa !5
  %47 = icmp eq i8 %46, %40
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  br i1 %41, label %57, label %49

49:                                               ; preds = %48
  %50 = tail call i32 @bcmp(ptr nonnull %45, ptr nonnull %39, i64 %42)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %49, %43
  %53 = getelementptr inbounds i8, ptr %45, i64 1
  %54 = add i32 %44, -1
  %55 = icmp eq i32 %44, 0
  br i1 %55, label %56, label %43, !llvm.loop !32

56:                                               ; preds = %52
  store i16 0, ptr %38, align 8, !tbaa !5
  store i16 256, ptr %0, align 8, !tbaa !16
  br label %78

57:                                               ; preds = %48, %49, %31
  %58 = phi i32 [ %33, %31 ], [ %44, %49 ], [ %44, %48 ]
  %59 = phi ptr [ %35, %31 ], [ %45, %49 ], [ %45, %48 ]
  store i16 %6, ptr %0, align 8, !tbaa !16
  %60 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  store ptr %59, ptr %60, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2
  %62 = load ptr, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 2), align 8, !tbaa !21
  %63 = icmp ugt ptr %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 2, ptr getelementptr inbounds (%struct.ref_stack_s, ptr @o_stack, i64 0, i32 7), align 8, !tbaa !23
  br label %78

65:                                               ; preds = %57
  store ptr %61, ptr @o_stack, align 8, !tbaa !24
  %66 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !25
  %67 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = ptrtoint ptr %59 to i64
  %70 = ptrtoint ptr %68 to i64
  %71 = sub i64 %69, %70
  %72 = trunc i64 %71 to i16
  %73 = getelementptr inbounds %struct.ref_s, ptr %0, i64 1, i32 0, i32 1
  store i16 %72, ptr %73, align 2, !tbaa !20
  %74 = zext i16 %4 to i64
  %75 = getelementptr inbounds i8, ptr %59, i64 %74
  store ptr %75, ptr %34, align 8, !tbaa !5
  %76 = trunc i32 %58 to i16
  store i16 %76, ptr %26, align 2, !tbaa !20
  %77 = getelementptr inbounds %struct.ref_s, ptr %0, i64 2, i32 1
  store i16 1, ptr %77, align 8, !tbaa !5
  store i16 256, ptr %61, align 8, !tbaa !16
  br label %78

78:                                               ; preds = %23, %19, %13, %9, %65, %64, %56, %29
  %79 = phi i32 [ 0, %29 ], [ -16, %64 ], [ 0, %65 ], [ 0, %56 ], [ %14, %13 ], [ -7, %9 ], [ %24, %23 ], [ -7, %19 ]
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @zstringmatch(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.ref_s, ptr %0, i64 -1
  %3 = load i16, ptr %0, align 8, !tbaa !16
  %4 = and i16 %3, 16160
  %5 = icmp eq i16 %4, 4640
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %0, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 18
  br i1 %9, label %48, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @check_type_failed(ptr noundef nonnull %0) #6
  br label %48

12:                                               ; preds = %1
  %13 = getelementptr inbounds i8, ptr %0, i64 -15
  %14 = load i8, ptr %13, align 1, !tbaa !5
  switch i8 %14, label %32 [
    i8 18, label %15
    i8 13, label %19
  ]

15:                                               ; preds = %12
  %16 = load i16, ptr %2, align 8, !tbaa !16
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %48, label %20

19:                                               ; preds = %12
  tail call void @name_string_ref(ptr noundef nonnull %2, ptr noundef nonnull %2) #6
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 0, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !20
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %29 = load i16, ptr %28, align 2, !tbaa !20
  %30 = zext i16 %29 to i32
  %31 = tail call i32 @string_match(ptr noundef %22, i32 noundef %25, ptr noundef %27, i32 noundef %30, ptr noundef null) #6
  br label %42

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.tas_s, ptr %0, i64 0, i32 1
  %34 = load i16, ptr %33, align 2, !tbaa !20
  %35 = icmp eq i16 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.ref_s, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = load i8, ptr %38, align 1, !tbaa !5
  %40 = icmp eq i8 %39, 42
  %41 = zext i1 %40 to i32
  br label %42

42:                                               ; preds = %32, %36, %20
  %43 = phi i32 [ %31, %20 ], [ 0, %32 ], [ %41, %36 ]
  %44 = trunc i32 %43 to i16
  %45 = getelementptr %struct.ref_s, ptr %0, i64 -1, i32 1
  store i16 %44, ptr %45, align 8, !tbaa !5
  store i16 256, ptr %2, align 8, !tbaa !16
  %46 = load ptr, ptr @o_stack, align 8, !tbaa !24
  %47 = getelementptr inbounds %struct.ref_s, ptr %46, i64 -1
  store ptr %47, ptr @o_stack, align 8, !tbaa !24
  br label %48

48:                                               ; preds = %15, %10, %6, %42
  %49 = phi i32 [ 0, %42 ], [ %11, %10 ], [ -7, %6 ], [ -7, %15 ]
  ret i32 %49
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare void @name_string_ref(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @string_match(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"gs_dual_memory_s", !10, i64 0, !6, i64 8, !11, i64 40, !11, i64 44, !10, i64 48, !11, i64 56, !11, i64 60}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !10, i64 96}
!13 = !{!"gs_memory_s", !14, i64 0}
!14 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!15 = !{!9, !11, i64 40}
!16 = !{!17, !19, i64 0}
!17 = !{!"ref_s", !18, i64 0, !6, i64 8}
!18 = !{!"tas_s", !19, i64 0, !19, i64 2}
!19 = !{!"short", !6, i64 0}
!20 = !{!17, !19, i64 2}
!21 = !{!22, !10, i64 16}
!22 = !{!"ref_stack_s", !10, i64 0, !10, i64 8, !10, i64 16, !17, i64 24, !11, i64 40, !11, i64 44, !17, i64 48, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !17, i64 88, !11, i64 104, !11, i64 108, !11, i64 112, !10, i64 120}
!23 = !{!22, !11, i64 64}
!24 = !{!22, !10, i64 0}
!25 = !{i64 0, i64 2, !26, i64 2, i64 2, !26, i64 8, i64 8, !27, i64 8, i64 2, !26, i64 8, i64 4, !29, i64 8, i64 8, !27, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31, i64 8, i64 8, !31}
!26 = !{!19, !19, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !6, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"float", !6, i64 0}
!31 = !{!10, !10, i64 0}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
