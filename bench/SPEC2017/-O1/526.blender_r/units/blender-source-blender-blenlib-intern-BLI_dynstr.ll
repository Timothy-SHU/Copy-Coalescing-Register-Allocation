; ModuleID = 'blender/source/blender/blenlib/intern/BLI_dynstr.c'
source_filename = "blender/source/blender/blenlib/intern/BLI_dynstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.DynStrElem = type { ptr, ptr }
%struct.DynStr = type { ptr, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"DynStr\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"BLI_dynstr_appendf\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"BLI_dynstr_append text too long or format error.\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"dynstr_cstring\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BLI_dynstr_new() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 24, ptr noundef nonnull @.str) #14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind willreturn uwtable
define dso_local void @BLI_dynstr_append(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #2 {
  %3 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %5 = shl i64 %4, 32
  %6 = add i64 %5, 4294967296
  %7 = ashr exact i64 %6, 32
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #15
  %9 = getelementptr inbounds %struct.DynStrElem, ptr %3, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %8, ptr align 1 %1, i64 %7, i1 false)
  store ptr null, ptr %3, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.DynStr, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  %13 = select i1 %12, ptr %0, ptr %11
  store ptr %3, ptr %13, align 8, !tbaa !34
  store ptr %3, ptr %10, align 8, !tbaa !41
  %14 = trunc i64 %4 to i32
  %15 = getelementptr inbounds %struct.DynStr, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !44
  %17 = add nsw i32 %16, %14
  store i32 %17, ptr %15, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local void @BLI_dynstr_nappend(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  %5 = sext i32 %2 to i64
  %6 = tail call i64 @BLI_strnlen(ptr noundef %1, i64 noundef %5) #14
  %7 = shl i64 %6, 32
  %8 = add i64 %7, 4294967296
  %9 = ashr exact i64 %8, 32
  %10 = tail call noalias ptr @malloc(i64 noundef %9) #15
  %11 = getelementptr inbounds %struct.DynStrElem, ptr %4, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !38
  %12 = ashr exact i64 %7, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %1, i64 %12, i1 false)
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  store i8 0, ptr %13, align 1, !tbaa !45
  store ptr null, ptr %4, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.DynStr, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr %0, ptr %15
  store ptr %4, ptr %17, align 8, !tbaa !34
  store ptr %4, ptr %14, align 8, !tbaa !41
  %18 = trunc i64 %6 to i32
  %19 = getelementptr inbounds %struct.DynStr, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !44
  %21 = add nsw i32 %20, %18
  store i32 %21, ptr %19, align 8, !tbaa !44
  ret void
}

declare i64 @BLI_strnlen(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @BLI_dynstr_vappendf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [256 x i8], align 16
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #14
  br label %6

6:                                                ; preds = %35, %3
  %7 = phi i32 [ 256, %3 ], [ %36, %35 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %8 = sext i32 %7 to i64
  %9 = icmp eq i32 %7, 256
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %12 = call ptr %11(i64 noundef %8, ptr noundef nonnull @.str.1) #14
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi ptr [ %12, %10 ], [ %4, %6 ]
  call void @llvm.va_copy(ptr nonnull %5, ptr %2)
  %15 = call i32 @vsnprintf(ptr noundef %14, i64 noundef %8, ptr noundef %1, ptr noundef nonnull %5) #14
  call void @llvm.va_end(ptr %5)
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = icmp eq ptr %14, %4
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %20(ptr noundef %14) #14
  br label %21

21:                                               ; preds = %19, %17
  %22 = shl nsw i32 %7, 1
  %23 = icmp sgt i32 %7, 32768
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load ptr, ptr @stderr, align 8, !tbaa !34
  %26 = call i64 @fwrite(ptr nonnull @.str.2, i64 49, i64 1, ptr %25) #17
  br label %35

27:                                               ; preds = %13
  %28 = icmp slt i32 %15, %7
  br i1 %28, label %35, label %29

29:                                               ; preds = %27
  %30 = icmp eq ptr %14, %4
  br i1 %30, label %33, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %32(ptr noundef %14) #14
  br label %33

33:                                               ; preds = %31, %29
  %34 = add nuw nsw i32 %15, 1
  br label %35

35:                                               ; preds = %33, %21, %27, %24
  %36 = phi i32 [ %22, %24 ], [ %7, %27 ], [ %22, %21 ], [ %34, %33 ]
  %37 = phi ptr [ null, %24 ], [ %14, %27 ], [ null, %21 ], [ null, %33 ]
  %38 = phi i1 [ false, %24 ], [ false, %27 ], [ true, %21 ], [ true, %33 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br i1 %38, label %6, label %39

39:                                               ; preds = %35
  %40 = icmp eq ptr %37, null
  br i1 %40, label %60, label %41

41:                                               ; preds = %39
  %42 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  %43 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #16
  %44 = shl i64 %43, 32
  %45 = add i64 %44, 4294967296
  %46 = ashr exact i64 %45, 32
  %47 = call noalias ptr @malloc(i64 noundef %46) #15
  %48 = getelementptr inbounds %struct.DynStrElem, ptr %42, i64 0, i32 1
  store ptr %47, ptr %48, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %47, ptr nonnull align 1 %37, i64 %46, i1 false)
  store ptr null, ptr %42, align 8, !tbaa !40
  %49 = getelementptr inbounds %struct.DynStr, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !41
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, ptr %0, ptr %50
  store ptr %42, ptr %52, align 8, !tbaa !34
  store ptr %42, ptr %49, align 8, !tbaa !41
  %53 = trunc i64 %43 to i32
  %54 = getelementptr inbounds %struct.DynStr, ptr %0, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !44
  %56 = add nsw i32 %55, %53
  store i32 %56, ptr %54, align 8, !tbaa !44
  %57 = icmp eq ptr %37, %4
  br i1 %57, label %60, label %58

58:                                               ; preds = %41
  %59 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %59(ptr noundef nonnull %37) #14
  br label %60

60:                                               ; preds = %41, %58, %39
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #7

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: nounwind uwtable
define dso_local void @BLI_dynstr_appendf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #0 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #14
  br label %5

5:                                                ; preds = %23, %2
  %6 = phi i32 [ 256, %2 ], [ %24, %23 ]
  %7 = sext i32 %6 to i64
  %8 = icmp eq i32 %6, 256
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = call ptr %10(i64 noundef %7, ptr noundef nonnull @.str.1) #14
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %11, %9 ], [ %4, %5 ]
  call void @llvm.va_start(ptr nonnull %3)
  %14 = call i32 @vsnprintf(ptr noundef %13, i64 noundef %7, ptr noundef %1, ptr noundef nonnull %3) #14
  call void @llvm.va_end(ptr %3)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = icmp eq ptr %13, %4
  br i1 %17, label %20, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %19(ptr noundef %13) #14
  br label %20

20:                                               ; preds = %18, %16
  %21 = shl nsw i32 %6, 1
  %22 = icmp sgt i32 %6, 32768
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %34
  %24 = phi i32 [ %21, %20 ], [ %35, %34 ]
  br label %5, !llvm.loop !46

25:                                               ; preds = %20
  %26 = load ptr, ptr @stderr, align 8, !tbaa !34
  %27 = call i64 @fwrite(ptr nonnull @.str.2, i64 49, i64 1, ptr %26) #17
  br label %36

28:                                               ; preds = %12
  %29 = icmp slt i32 %14, %6
  br i1 %29, label %36, label %30

30:                                               ; preds = %28
  %31 = icmp eq ptr %13, %4
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %33(ptr noundef %13) #14
  br label %34

34:                                               ; preds = %32, %30
  %35 = add nuw nsw i32 %14, 1
  br label %23

36:                                               ; preds = %28, %25
  %37 = phi ptr [ null, %25 ], [ %13, %28 ]
  %38 = icmp eq ptr %37, null
  br i1 %38, label %58, label %39

39:                                               ; preds = %36
  %40 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #15
  %41 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #16
  %42 = shl i64 %41, 32
  %43 = add i64 %42, 4294967296
  %44 = ashr exact i64 %43, 32
  %45 = call noalias ptr @malloc(i64 noundef %44) #15
  %46 = getelementptr inbounds %struct.DynStrElem, ptr %40, i64 0, i32 1
  store ptr %45, ptr %46, align 8, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr nonnull align 1 %37, i64 %44, i1 false)
  store ptr null, ptr %40, align 8, !tbaa !40
  %47 = getelementptr inbounds %struct.DynStr, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !41
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr %0, ptr %48
  store ptr %40, ptr %50, align 8, !tbaa !34
  store ptr %40, ptr %47, align 8, !tbaa !41
  %51 = trunc i64 %41 to i32
  %52 = getelementptr inbounds %struct.DynStr, ptr %0, i64 0, i32 2
  %53 = load i32, ptr %52, align 8, !tbaa !44
  %54 = add nsw i32 %53, %51
  store i32 %54, ptr %52, align 8, !tbaa !44
  %55 = icmp eq ptr %37, %4
  br i1 %55, label %58, label %56

56:                                               ; preds = %39
  %57 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %57(ptr noundef nonnull %37) #14
  br label %58

58:                                               ; preds = %39, %56, %36
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BLI_dynstr_get_len(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.DynStr, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !44
  ret i32 %3
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @BLI_dynstr_get_cstring_ex(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #10 {
  %3 = load ptr, ptr %0, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %14, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %13, %5 ], [ %1, %2 ]
  %8 = getelementptr inbounds %struct.DynStrElem, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #16
  %11 = shl i64 %10, 32
  %12 = ashr exact i64 %11, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %9, i64 %12, i1 false)
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  %14 = load ptr, ptr %6, align 8, !tbaa !34
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !48

16:                                               ; preds = %5, %2
  %17 = getelementptr inbounds %struct.DynStr, ptr %0, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !44
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, ptr %1, i64 %19
  store i8 0, ptr %20, align 1, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @BLI_dynstr_get_cstring(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %3 = getelementptr inbounds %struct.DynStr, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !44
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = tail call ptr %2(i64 noundef %6, ptr noundef nonnull @.str.3) #14
  %8 = load ptr, ptr %0, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %1, %10
  %11 = phi ptr [ %19, %10 ], [ %8, %1 ]
  %12 = phi ptr [ %18, %10 ], [ %7, %1 ]
  %13 = getelementptr inbounds %struct.DynStrElem, ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #16
  %16 = shl i64 %15, 32
  %17 = ashr exact i64 %16, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %14, i64 %17, i1 false)
  %18 = getelementptr inbounds i8, ptr %12, i64 %17
  %19 = load ptr, ptr %11, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !48

21:                                               ; preds = %10, %1
  %22 = load i32, ptr %3, align 8, !tbaa !44
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %7, i64 %23
  store i8 0, ptr %24, align 1, !tbaa !45
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local void @BLI_dynstr_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !50
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = getelementptr inbounds %struct.DynStrElem, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  tail call void @free(ptr noundef %8) #14
  tail call void @free(ptr noundef %5) #14
  %9 = icmp eq ptr %6, null
  br i1 %9, label %10, label %4, !llvm.loop !51

10:                                               ; preds = %4, %1
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %11(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { cold }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !35, i64 8}
!39 = !{!"DynStrElem", !35, i64 0, !35, i64 8}
!40 = !{!39, !35, i64 0}
!41 = !{!42, !35, i64 8}
!42 = !{!"DynStr", !35, i64 0, !35, i64 8, !43, i64 16}
!43 = !{!"int", !36, i64 0}
!44 = !{!42, !43, i64 16}
!45 = !{!36, !36, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !49, !47}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!42, !35, i64 0}
!51 = distinct !{!51, !49, !47}
