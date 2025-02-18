; ModuleID = 'blender/source/blender/blenkernel/intern/report.c'
source_filename = "blender/source/blender/blenkernel/intern/report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.Report = type { ptr, ptr, i16, i16, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Report\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ReportMessage\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"%s  # %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"Unable to save '%s': %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Unknown error opening file\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"Info\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Operator\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Property\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"Warning\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"Invalid Input Error\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Invalid Context Error\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Out Of Memory Error\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"Undefined Type\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_reports_init(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %5 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 2
  store i32 2, ptr %5, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 1
  store i32 32, ptr %6, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 3
  store i32 %1, ptr %7, align 8, !tbaa !42
  br label %8

8:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local void @BKE_reports_clear(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !44
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %10 = getelementptr inbounds %struct.Report, ptr %7, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  tail call void %9(ptr noundef %11) #15
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %12(ptr noundef nonnull %7) #15
  %13 = icmp eq ptr %8, null
  br i1 %13, label %14, label %6, !llvm.loop !49

14:                                               ; preds = %6, %3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %15

15:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind uwtable
define dso_local void @BKE_report(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !52
  %5 = icmp eq i8 %4, 0
  %6 = icmp ne ptr %0, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !42
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !41
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %32, label %17

17:                                               ; preds = %13, %3
  switch i32 %1, label %26 [
    i32 1, label %27
    i32 2, label %18
    i32 4, label %19
    i32 8, label %20
    i32 16, label %21
    i32 32, label %22
    i32 64, label %23
    i32 128, label %24
    i32 256, label %25
  ]

18:                                               ; preds = %17
  br label %27

19:                                               ; preds = %17
  br label %27

20:                                               ; preds = %17
  br label %27

21:                                               ; preds = %17
  br label %27

22:                                               ; preds = %17
  br label %27

23:                                               ; preds = %17
  br label %27

24:                                               ; preds = %17
  br label %27

25:                                               ; preds = %17
  br label %27

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %17, %18, %19, %20, %21, %22, %23, %24, %25, %26
  %28 = phi ptr [ @.str.18, %26 ], [ @.str.17, %25 ], [ @.str.16, %24 ], [ @.str.15, %23 ], [ @.str.14, %22 ], [ @.str.13, %21 ], [ @.str.12, %20 ], [ @.str.11, %19 ], [ @.str.10, %18 ], [ @.str.9, %17 ]
  %29 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %28, ptr noundef %2)
  %30 = load ptr, ptr @stdout, align 8, !tbaa !47
  %31 = tail call i32 @fflush(ptr noundef %30)
  br label %32

32:                                               ; preds = %27, %13, %8
  br i1 %6, label %33, label %68

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !42
  %36 = and i32 %35, 2
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %68, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !34
  %41 = icmp ugt i32 %40, %1
  br i1 %41, label %68, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %44 = tail call ptr %43(i64 noundef 40, ptr noundef nonnull @.str.1) #15
  %45 = trunc i32 %1 to i16
  %46 = getelementptr inbounds %struct.Report, ptr %44, i64 0, i32 2
  store i16 %45, ptr %46, align 8, !tbaa !54
  switch i32 %1, label %55 [
    i32 1, label %56
    i32 2, label %47
    i32 4, label %48
    i32 8, label %49
    i32 16, label %50
    i32 32, label %51
    i32 64, label %52
    i32 128, label %53
    i32 256, label %54
  ]

47:                                               ; preds = %42
  br label %56

48:                                               ; preds = %42
  br label %56

49:                                               ; preds = %42
  br label %56

50:                                               ; preds = %42
  br label %56

51:                                               ; preds = %42
  br label %56

52:                                               ; preds = %42
  br label %56

53:                                               ; preds = %42
  br label %56

54:                                               ; preds = %42
  br label %56

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %42, %47, %48, %49, %50, %51, %52, %53, %54, %55
  %57 = phi ptr [ @.str.18, %55 ], [ @.str.17, %54 ], [ @.str.16, %53 ], [ @.str.15, %52 ], [ @.str.14, %51 ], [ @.str.13, %50 ], [ @.str.12, %49 ], [ @.str.11, %48 ], [ @.str.10, %47 ], [ @.str.9, %42 ]
  %58 = getelementptr inbounds %struct.Report, ptr %44, i64 0, i32 5
  store ptr %57, ptr %58, align 8, !tbaa !55
  %59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #16
  %60 = trunc i64 %59 to i32
  %61 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %62 = shl i64 %59, 32
  %63 = add i64 %62, 4294967296
  %64 = ashr exact i64 %63, 32
  %65 = tail call ptr %61(i64 noundef %64, ptr noundef nonnull @.str.2) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %2, i64 %64, i1 false)
  %66 = getelementptr inbounds %struct.Report, ptr %44, i64 0, i32 6
  store ptr %65, ptr %66, align 8, !tbaa !48
  %67 = getelementptr inbounds %struct.Report, ptr %44, i64 0, i32 4
  store i32 %60, ptr %67, align 4, !tbaa !56
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %44) #15
  br label %68

68:                                               ; preds = %56, %38, %33, %32
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @BKE_reportf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #2 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  %5 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !52
  %6 = icmp eq i8 %5, 0
  %7 = icmp ne ptr %0, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !42
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !41
  %17 = icmp ugt i32 %16, %1
  br i1 %17, label %37, label %18

18:                                               ; preds = %14, %3
  switch i32 %1, label %27 [
    i32 1, label %28
    i32 2, label %19
    i32 4, label %20
    i32 8, label %21
    i32 16, label %22
    i32 32, label %23
    i32 64, label %24
    i32 128, label %25
    i32 256, label %26
  ]

19:                                               ; preds = %18
  br label %28

20:                                               ; preds = %18
  br label %28

21:                                               ; preds = %18
  br label %28

22:                                               ; preds = %18
  br label %28

23:                                               ; preds = %18
  br label %28

24:                                               ; preds = %18
  br label %28

25:                                               ; preds = %18
  br label %28

26:                                               ; preds = %18
  br label %28

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %18, %19, %20, %21, %22, %23, %24, %25, %26, %27
  %29 = phi ptr [ @.str.18, %27 ], [ @.str.17, %26 ], [ @.str.16, %25 ], [ @.str.15, %24 ], [ @.str.14, %23 ], [ @.str.13, %22 ], [ @.str.12, %21 ], [ @.str.11, %20 ], [ @.str.10, %19 ], [ @.str.9, %18 ]
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %29)
  call void @llvm.va_start(ptr nonnull %4)
  %31 = load ptr, ptr @stdout, align 8, !tbaa !47, !noalias !57
  %32 = call i32 @vfprintf(ptr noundef %31, ptr noundef %2, ptr noundef nonnull %4)
  call void @llvm.va_end(ptr %4)
  %33 = load ptr, ptr @stdout, align 8, !tbaa !47
  %34 = call i32 @fputc(i32 10, ptr %33)
  %35 = load ptr, ptr @stdout, align 8, !tbaa !47
  %36 = call i32 @fflush(ptr noundef %35)
  br label %37

37:                                               ; preds = %28, %14, %9
  br i1 %7, label %38, label %69

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !42
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !34
  %46 = icmp ugt i32 %45, %1
  br i1 %46, label %69, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %49 = call ptr %48(i64 noundef 40, ptr noundef nonnull @.str.1) #15
  %50 = call ptr @BLI_dynstr_new() #15
  call void @llvm.va_start(ptr nonnull %4)
  call void @BLI_dynstr_vappendf(ptr noundef %50, ptr noundef %2, ptr noundef nonnull %4) #15
  call void @llvm.va_end(ptr %4)
  %51 = call ptr @BLI_dynstr_get_cstring(ptr noundef %50) #15
  %52 = getelementptr inbounds %struct.Report, ptr %49, i64 0, i32 6
  store ptr %51, ptr %52, align 8, !tbaa !48
  %53 = call i32 @BLI_dynstr_get_len(ptr noundef %50) #15
  %54 = getelementptr inbounds %struct.Report, ptr %49, i64 0, i32 4
  store i32 %53, ptr %54, align 4, !tbaa !56
  call void @BLI_dynstr_free(ptr noundef %50) #15
  %55 = trunc i32 %1 to i16
  %56 = getelementptr inbounds %struct.Report, ptr %49, i64 0, i32 2
  store i16 %55, ptr %56, align 8, !tbaa !54
  switch i32 %1, label %65 [
    i32 1, label %66
    i32 2, label %57
    i32 4, label %58
    i32 8, label %59
    i32 16, label %60
    i32 32, label %61
    i32 64, label %62
    i32 128, label %63
    i32 256, label %64
  ]

57:                                               ; preds = %47
  br label %66

58:                                               ; preds = %47
  br label %66

59:                                               ; preds = %47
  br label %66

60:                                               ; preds = %47
  br label %66

61:                                               ; preds = %47
  br label %66

62:                                               ; preds = %47
  br label %66

63:                                               ; preds = %47
  br label %66

64:                                               ; preds = %47
  br label %66

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %47, %57, %58, %59, %60, %61, %62, %63, %64, %65
  %67 = phi ptr [ @.str.18, %65 ], [ @.str.17, %64 ], [ @.str.16, %63 ], [ @.str.15, %62 ], [ @.str.14, %61 ], [ @.str.13, %60 ], [ @.str.12, %59 ], [ @.str.11, %58 ], [ @.str.10, %57 ], [ @.str.9, %47 ]
  %68 = getelementptr inbounds %struct.Report, ptr %49, i64 0, i32 5
  store ptr %67, ptr %68, align 8, !tbaa !55
  call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %49) #15
  br label %69

69:                                               ; preds = %66, %43, %38, %37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

declare ptr @BLI_dynstr_new() local_unnamed_addr #7

declare void @BLI_dynstr_vappendf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #7

declare i32 @BLI_dynstr_get_len(ptr noundef) local_unnamed_addr #7

declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @BKE_reports_prepend(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %17, %7 ], [ %5, %4 ]
  %9 = tail call ptr @BLI_dynstr_new() #15
  tail call void @BLI_dynstr_append(ptr noundef %9, ptr noundef %1) #15
  %10 = getelementptr inbounds %struct.Report, ptr %8, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  tail call void @BLI_dynstr_append(ptr noundef %9, ptr noundef %11) #15
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %13 = load ptr, ptr %10, align 8, !tbaa !48
  tail call void %12(ptr noundef %13) #15
  %14 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %9) #15
  store ptr %14, ptr %10, align 8, !tbaa !48
  %15 = tail call i32 @BLI_dynstr_get_len(ptr noundef %9) #15
  %16 = getelementptr inbounds %struct.Report, ptr %8, i64 0, i32 4
  store i32 %15, ptr %16, align 4, !tbaa !56
  tail call void @BLI_dynstr_free(ptr noundef %9) #15
  %17 = load ptr, ptr %8, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !60

19:                                               ; preds = %7, %4, %2
  ret void
}

declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @BKE_reports_prependf(ptr noundef readonly %0, ptr noundef %1, ...) local_unnamed_addr #2 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %18, %8 ], [ %6, %5 ]
  %10 = call ptr @BLI_dynstr_new() #15
  call void @llvm.va_start(ptr nonnull %3)
  call void @BLI_dynstr_vappendf(ptr noundef %10, ptr noundef %1, ptr noundef nonnull %3) #15
  call void @llvm.va_end(ptr %3)
  %11 = getelementptr inbounds %struct.Report, ptr %9, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  call void @BLI_dynstr_append(ptr noundef %10, ptr noundef %12) #15
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %14 = load ptr, ptr %11, align 8, !tbaa !48
  call void %13(ptr noundef %14) #15
  %15 = call ptr @BLI_dynstr_get_cstring(ptr noundef %10) #15
  store ptr %15, ptr %11, align 8, !tbaa !48
  %16 = call i32 @BLI_dynstr_get_len(ptr noundef %10) #15
  %17 = getelementptr inbounds %struct.Report, ptr %9, i64 0, i32 4
  store i32 %16, ptr %17, align 4, !tbaa !56
  call void @BLI_dynstr_free(ptr noundef %10) #15
  %18 = load ptr, ptr %9, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !61

20:                                               ; preds = %8, %5, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_report_print_level(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !41
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 32, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_report_print_level_set(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !41
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_report_store_level(ptr noundef readonly %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !34
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 32, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @BKE_report_store_level_set(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 2
  store i32 %1, ptr %5, align 4, !tbaa !34
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BKE_reports_string(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @BLI_dynstr_new() #15
  %9 = load ptr, ptr %0, align 8, !tbaa !47
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %7, %22
  %12 = phi ptr [ %23, %22 ], [ %9, %7 ]
  %13 = getelementptr inbounds %struct.Report, ptr %12, i64 0, i32 2
  %14 = load i16, ptr %13, align 8, !tbaa !54
  %15 = sext i16 %14 to i32
  %16 = icmp ult i32 %15, %1
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.Report, ptr %12, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds %struct.Report, ptr %12, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef %19, ptr noundef %21) #15
  br label %22

22:                                               ; preds = %11, %17
  %23 = load ptr, ptr %12, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %11, !llvm.loop !62

25:                                               ; preds = %22, %7
  %26 = tail call i32 @BLI_dynstr_get_len(ptr noundef %8) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %8) #15
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi ptr [ %29, %28 ], [ null, %25 ]
  tail call void @BLI_dynstr_free(ptr noundef %8) #15
  br label %32

32:                                               ; preds = %2, %4, %30
  %33 = phi ptr [ %31, %30 ], [ null, %4 ], [ null, %2 ]
  ret ptr %33
}

declare void @BLI_dynstr_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @BKE_reports_print(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @BKE_reports_string(ptr noundef %0, i32 noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %3)
  %7 = load ptr, ptr @stdout, align 8, !tbaa !47
  %8 = tail call i32 @fflush(ptr noundef %7)
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %9(ptr noundef nonnull %3) #15
  br label %10

10:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_reports_last_displayable(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ListBase, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1, %9
  %6 = phi ptr [ %11, %9 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.Report, ptr %6, i64 0, i32 2
  %8 = load i16, ptr %7, align 8, !tbaa !54
  switch i16 %8, label %9 [
    i16 32, label %13
    i16 16, label %13
    i16 2, label %13
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.Report, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %5, !llvm.loop !63

13:                                               ; preds = %5, %5, %5, %9, %1
  %14 = phi ptr [ null, %1 ], [ %6, %5 ], [ %6, %5 ], [ %6, %5 ], [ null, %9 ]
  ret ptr %14
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_reports_contain(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %8
  %5 = phi ptr [ %6, %8 ], [ %0, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.Report, ptr %6, i64 0, i32 2
  %10 = load i16, ptr %9, align 8, !tbaa !54
  %11 = sext i16 %10 to i32
  %12 = icmp ult i32 %11, %1
  br i1 %12, label %4, label %13, !llvm.loop !64

13:                                               ; preds = %4, %8, %2
  %14 = phi i8 [ 0, %2 ], [ 1, %8 ], [ 0, %4 ]
  ret i8 %14
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef zeroext i8 @BKE_report_write_file_fp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #11 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @fputs(ptr noundef nonnull %2, ptr noundef %0)
  br label %7

7:                                                ; preds = %5, %3
  %8 = load ptr, ptr %1, align 8, !tbaa !47
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %7, %10
  %11 = phi ptr [ %17, %10 ], [ %8, %7 ]
  %12 = getelementptr inbounds %struct.Report, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.Report, ptr %11, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !55
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %13, ptr noundef %15)
  %17 = load ptr, ptr %11, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !65

19:                                               ; preds = %10, %7
  ret i8 1
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BKE_report_write_file(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #2 {
  %4 = tail call ptr @__errno_location() #17
  store i32 0, ptr %4, align 4, !tbaa !66
  %5 = tail call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.6) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !47
  %9 = load i32, ptr %4, align 4, !tbaa !66
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @strerror(i32 noundef %9) #15
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ @.str.8, %7 ]
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %14) #18
  br label %34

16:                                               ; preds = %3
  %17 = icmp eq ptr %2, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = tail call i32 @fputs(ptr noundef nonnull %2, ptr noundef nonnull %5)
  br label %20

20:                                               ; preds = %18, %16
  %21 = load ptr, ptr %1, align 8, !tbaa !47
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %30, %23 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.Report, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct.Report, ptr %24, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.5, ptr noundef %26, ptr noundef %28)
  %30 = load ptr, ptr %24, align 8, !tbaa !47
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %23, !llvm.loop !65

32:                                               ; preds = %23, %20
  %33 = tail call i32 @fclose(ptr noundef nonnull %5)
  br label %34

34:                                               ; preds = %32, %13
  %35 = phi i8 [ 0, %13 ], [ 1, %32 ]
  ret i8 %35
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind willreturn memory(none) }
attributes #18 = { cold }

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
!34 = !{!35, !40, i64 20}
!35 = !{!"ReportList", !36, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32}
!36 = !{!"ListBase", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!35, !40, i64 16}
!42 = !{!35, !40, i64 24}
!43 = !{!35, !37, i64 0}
!44 = !{!45, !37, i64 0}
!45 = !{!"Report", !37, i64 0, !37, i64 8, !46, i64 16, !46, i64 18, !40, i64 20, !37, i64 24, !37, i64 32}
!46 = !{!"short", !38, i64 0}
!47 = !{!37, !37, i64 0}
!48 = !{!45, !37, i64 32}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!53, !38, i64 2081}
!53 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !36, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !46, i64 2084, !46, i64 2086, !46, i64 2088, !38, i64 2090, !46, i64 2092, !40, i64 2096, !40, i64 2100, !38, i64 2104, !40, i64 2108, !40, i64 2112, !38, i64 2116}
!54 = !{!45, !46, i64 16}
!55 = !{!45, !37, i64 24}
!56 = !{!45, !40, i64 20}
!57 = !{!58}
!58 = distinct !{!58, !59, !"vprintf: argument 0"}
!59 = distinct !{!59, !"vprintf"}
!60 = distinct !{!60, !50, !51}
!61 = distinct !{!61, !50, !51}
!62 = distinct !{!62, !50, !51}
!63 = distinct !{!63, !50, !51}
!64 = distinct !{!64, !50, !51}
!65 = distinct !{!65, !50, !51}
!66 = !{!40, !40, i64 0}
