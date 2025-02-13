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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
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
  tail call void %9(ptr noundef %11) #16
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %12(ptr noundef nonnull %7) #16
  %13 = icmp eq ptr %8, null
  br i1 %13, label %14, label %6, !llvm.loop !49

14:                                               ; preds = %6, %3
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %0) #17
  br label %15

15:                                               ; preds = %1, %14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !51 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
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
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !41
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %25, label %17

17:                                               ; preds = %3, %13
  %18 = tail call fastcc ptr @report_type_str(i32 noundef %1) #17
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %18, ptr noundef %2) #17
  %20 = load ptr, ptr @stdout, align 8, !tbaa !47
  %21 = tail call i32 @fflush(ptr noundef %20) #17
  br i1 %6, label %22, label %49

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !42
  br label %25

25:                                               ; preds = %22, %8, %13
  %26 = phi i32 [ %24, %22 ], [ %10, %8 ], [ %10, %13 ]
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %49, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !34
  %32 = icmp ugt i32 %31, %1
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %35 = tail call ptr %34(i64 noundef 40, ptr noundef nonnull @.str.1) #16
  %36 = trunc i32 %1 to i16
  %37 = getelementptr inbounds %struct.Report, ptr %35, i64 0, i32 2
  store i16 %36, ptr %37, align 8, !tbaa !54
  %38 = tail call fastcc ptr @report_type_str(i32 noundef %1) #17
  %39 = getelementptr inbounds %struct.Report, ptr %35, i64 0, i32 5
  store ptr %38, ptr %39, align 8, !tbaa !55
  %40 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #18
  %41 = trunc i64 %40 to i32
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %43 = shl i64 %40, 32
  %44 = add i64 %43, 4294967296
  %45 = ashr exact i64 %44, 32
  %46 = tail call ptr %42(i64 noundef %45, ptr noundef nonnull @.str.2) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 %2, i64 %45, i1 false)
  %47 = getelementptr inbounds %struct.Report, ptr %35, i64 0, i32 6
  store ptr %46, ptr %47, align 8, !tbaa !48
  %48 = getelementptr inbounds %struct.Report, ptr %35, i64 0, i32 4
  store i32 %41, ptr %48, align 4, !tbaa !56
  tail call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %35) #16
  br label %49

49:                                               ; preds = %33, %29, %25, %17
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @report_type_str(i32 noundef %0) unnamed_addr #5 !PGOFuncName !57 {
  switch i32 %0, label %10 [
    i32 1, label %11
    i32 2, label %2
    i32 4, label %3
    i32 8, label %4
    i32 16, label %5
    i32 32, label %6
    i32 64, label %7
    i32 128, label %8
    i32 256, label %9
  ]

2:                                                ; preds = %1
  br label %11

3:                                                ; preds = %1
  br label %11

4:                                                ; preds = %1
  br label %11

5:                                                ; preds = %1
  br label %11

6:                                                ; preds = %1
  br label %11

7:                                                ; preds = %1
  br label %11

8:                                                ; preds = %1
  br label %11

9:                                                ; preds = %1
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %1, %10, %9, %8, %7, %6, %5, %4, %3, %2
  %12 = phi ptr [ @.str.18, %10 ], [ @.str.17, %9 ], [ @.str.16, %8 ], [ @.str.15, %7 ], [ @.str.14, %6 ], [ @.str.13, %5 ], [ @.str.12, %4 ], [ @.str.11, %3 ], [ @.str.10, %2 ], [ @.str.9, %1 ]
  ret ptr %12
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_reportf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #2 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
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
  br i1 %13, label %29, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !41
  %17 = icmp ugt i32 %16, %1
  br i1 %17, label %29, label %18

18:                                               ; preds = %3, %14
  %19 = tail call fastcc ptr @report_type_str(i32 noundef %1) #17
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %19) #17
  call void @llvm.va_start(ptr nonnull %4)
  %21 = call i32 @vprintf(ptr noundef %2, ptr noundef nonnull %4) #17
  call void @llvm.va_end(ptr nonnull %4)
  %22 = load ptr, ptr @stdout, align 8, !tbaa !47
  %23 = call i32 @fputc(i32 10, ptr %22)
  %24 = load ptr, ptr @stdout, align 8, !tbaa !47
  %25 = call i32 @fflush(ptr noundef %24) #17
  br i1 %7, label %26, label %49

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !42
  br label %29

29:                                               ; preds = %26, %9, %14
  %30 = phi i32 [ %28, %26 ], [ %11, %9 ], [ %11, %14 ]
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ReportList, ptr %0, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !34
  %36 = icmp ugt i32 %35, %1
  br i1 %36, label %49, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !47
  %39 = call ptr %38(i64 noundef 40, ptr noundef nonnull @.str.1) #16
  %40 = call ptr @BLI_dynstr_new() #16
  call void @llvm.va_start(ptr nonnull %4)
  call void @BLI_dynstr_vappendf(ptr noundef %40, ptr noundef %2, ptr noundef nonnull %4) #16
  call void @llvm.va_end(ptr nonnull %4)
  %41 = call ptr @BLI_dynstr_get_cstring(ptr noundef %40) #16
  %42 = getelementptr inbounds %struct.Report, ptr %39, i64 0, i32 6
  store ptr %41, ptr %42, align 8, !tbaa !48
  %43 = call i32 @BLI_dynstr_get_len(ptr noundef %40) #16
  %44 = getelementptr inbounds %struct.Report, ptr %39, i64 0, i32 4
  store i32 %43, ptr %44, align 4, !tbaa !56
  call void @BLI_dynstr_free(ptr noundef %40) #16
  %45 = trunc i32 %1 to i16
  %46 = getelementptr inbounds %struct.Report, ptr %39, i64 0, i32 2
  store i16 %45, ptr %46, align 8, !tbaa !54
  %47 = call fastcc ptr @report_type_str(i32 noundef %1) #17
  %48 = getelementptr inbounds %struct.Report, ptr %39, i64 0, i32 5
  store ptr %47, ptr %48, align 8, !tbaa !55
  call void @BLI_addtail(ptr noundef nonnull %0, ptr noundef %39) #16
  br label %49

49:                                               ; preds = %37, %33, %29, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vprintf(ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @BLI_dynstr_new() local_unnamed_addr #8

; Function Attrs: optsize
declare void @BLI_dynstr_vappendf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @BLI_dynstr_get_cstring(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @BLI_dynstr_get_len(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @BLI_dynstr_free(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_reports_prepend(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %17, %7 ], [ %5, %4 ]
  %9 = tail call ptr @BLI_dynstr_new() #16
  tail call void @BLI_dynstr_append(ptr noundef %9, ptr noundef %1) #16
  %10 = getelementptr inbounds %struct.Report, ptr %8, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  tail call void @BLI_dynstr_append(ptr noundef %9, ptr noundef %11) #16
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %13 = load ptr, ptr %10, align 8, !tbaa !48
  tail call void %12(ptr noundef %13) #16
  %14 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %9) #16
  store ptr %14, ptr %10, align 8, !tbaa !48
  %15 = tail call i32 @BLI_dynstr_get_len(ptr noundef %9) #16
  %16 = getelementptr inbounds %struct.Report, ptr %8, i64 0, i32 4
  store i32 %15, ptr %16, align 4, !tbaa !56
  tail call void @BLI_dynstr_free(ptr noundef %9) #16
  %17 = load ptr, ptr %8, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !58

19:                                               ; preds = %7, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @BLI_dynstr_append(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_reports_prependf(ptr noundef readonly %0, ptr noundef %1, ...) local_unnamed_addr #2 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  %4 = icmp eq ptr %0, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !47
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %5, %8
  %9 = phi ptr [ %18, %8 ], [ %6, %5 ]
  %10 = call ptr @BLI_dynstr_new() #16
  call void @llvm.va_start(ptr nonnull %3)
  call void @BLI_dynstr_vappendf(ptr noundef %10, ptr noundef %1, ptr noundef nonnull %3) #16
  call void @llvm.va_end(ptr nonnull %3)
  %11 = getelementptr inbounds %struct.Report, ptr %9, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  call void @BLI_dynstr_append(ptr noundef %10, ptr noundef %12) #16
  %13 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  %14 = load ptr, ptr %11, align 8, !tbaa !48
  call void %13(ptr noundef %14) #16
  %15 = call ptr @BLI_dynstr_get_cstring(ptr noundef %10) #16
  store ptr %15, ptr %11, align 8, !tbaa !48
  %16 = call i32 @BLI_dynstr_get_len(ptr noundef %10) #16
  %17 = getelementptr inbounds %struct.Report, ptr %9, i64 0, i32 4
  store i32 %16, ptr %17, align 4, !tbaa !56
  call void @BLI_dynstr_free(ptr noundef %10) #16
  %18 = load ptr, ptr %9, align 8, !tbaa !47
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !59

20:                                               ; preds = %8, %5, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_report_print_level(ptr noundef readonly %0) local_unnamed_addr #10 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @BKE_report_store_level(ptr noundef readonly %0) local_unnamed_addr #10 {
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @BKE_reports_string(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !43
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @BLI_dynstr_new() #16
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
  tail call void (ptr, ptr, ...) @BLI_dynstr_appendf(ptr noundef %8, ptr noundef nonnull @.str, ptr noundef %19, ptr noundef %21) #16
  br label %22

22:                                               ; preds = %11, %17
  %23 = load ptr, ptr %12, align 8, !tbaa !47
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %11, !llvm.loop !60

25:                                               ; preds = %22, %7
  %26 = tail call i32 @BLI_dynstr_get_len(ptr noundef %8) #16
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @BLI_dynstr_get_cstring(ptr noundef %8) #16
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi ptr [ %29, %28 ], [ null, %25 ]
  tail call void @BLI_dynstr_free(ptr noundef %8) #16
  br label %32

32:                                               ; preds = %2, %4, %30
  %33 = phi ptr [ %31, %30 ], [ null, %4 ], [ null, %2 ]
  ret ptr %33
}

; Function Attrs: optsize
declare void @BLI_dynstr_appendf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BKE_reports_print(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
  %3 = tail call ptr @BKE_reports_string(ptr noundef %0, i32 noundef %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) %3) #17
  %7 = load ptr, ptr @stdout, align 8, !tbaa !47
  %8 = tail call i32 @fflush(ptr noundef %7) #17
  %9 = load ptr, ptr @MEM_freeN, align 8, !tbaa !47
  tail call void %9(ptr noundef nonnull %3) #16
  br label %10

10:                                               ; preds = %2, %5
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @BKE_reports_last_displayable(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
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
  br i1 %12, label %13, label %5, !llvm.loop !61

13:                                               ; preds = %5, %5, %5, %9, %1
  %14 = phi ptr [ null, %1 ], [ null, %9 ], [ %6, %5 ], [ %6, %5 ], [ %6, %5 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BKE_reports_contain(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #11 {
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
  br i1 %12, label %4, label %13, !llvm.loop !62

13:                                               ; preds = %4, %8, %2
  %14 = phi i8 [ 0, %2 ], [ 0, %4 ], [ 1, %8 ]
  ret i8 %14
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_report_write_file_fp(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #12 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @fputs(ptr noundef nonnull %2, ptr noundef %0) #17
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
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %13, ptr noundef %15) #17
  %17 = load ptr, ptr %11, align 8, !tbaa !47
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %10, !llvm.loop !63

19:                                               ; preds = %10, %7
  ret i8 1
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @BKE_report_write_file(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr @__errno_location() #20
  store i32 0, ptr %4, align 4, !tbaa !64
  %5 = tail call ptr @BLI_fopen(ptr noundef %0, ptr noundef nonnull @.str.6) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !47
  %9 = load i32, ptr %4, align 4, !tbaa !64
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @strerror(i32 noundef %9) #16
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ @.str.8, %7 ]
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %14) #21
  br label %19

16:                                               ; preds = %3
  %17 = tail call zeroext i8 @BKE_report_write_file_fp(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #17
  %18 = tail call i32 @fclose(ptr noundef nonnull %5) #17
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i8 [ 0, %13 ], [ 1, %16 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @BLI_fopen(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }
attributes #19 = { nounwind }
attributes #20 = { nounwind optsize willreturn memory(none) }
attributes #21 = { cold optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"report.c:BLI_listbase_clear"}
!52 = !{!53, !38, i64 2081}
!53 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !36, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !46, i64 2084, !46, i64 2086, !46, i64 2088, !38, i64 2090, !46, i64 2092, !40, i64 2096, !40, i64 2100, !38, i64 2104, !40, i64 2108, !40, i64 2112, !38, i64 2116}
!54 = !{!45, !46, i64 16}
!55 = !{!45, !37, i64 24}
!56 = !{!45, !40, i64 20}
!57 = !{!"report.c:report_type_str"}
!58 = distinct !{!58, !50}
!59 = distinct !{!59, !50}
!60 = distinct !{!60, !50}
!61 = distinct !{!61, !50}
!62 = distinct !{!62, !50}
!63 = distinct !{!63, !50}
!64 = !{!40, !40, i64 0}
