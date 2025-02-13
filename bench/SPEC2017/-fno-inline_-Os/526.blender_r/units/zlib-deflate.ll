; ModuleID = 'zlib/deflate.c'
source_filename = "zlib/deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.config_s = type { i16, i16, i16, i16, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.internal_state = type { ptr, i32, ptr, i64, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i64, i64, i32, i32, i16, i32, i64 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.tree_desc_s = type { ptr, i32, ptr }
%struct.gz_header_s = type { i32, i64, i32, i32, ptr, i32, i32, ptr, i32, ptr, i32, i32, i32 }

@deflate_copyright = dso_local local_unnamed_addr constant [68 x i8] c" deflate 1.2.6 Copyright 1995-2012 Jean-loup Gailly and Mark Adler \00", align 16
@z_errmsg = external local_unnamed_addr constant [10 x ptr], align 16
@configuration_table = internal unnamed_addr constant [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, ptr @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, ptr @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, ptr @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, ptr @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, ptr @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, ptr @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, ptr @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, ptr @deflate_slow }], align 16
@_length_code = external hidden local_unnamed_addr constant [0 x i8], align 1
@_dist_code = external hidden local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @deflateInit_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef %2, i32 noundef %3) #10, !range !34
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %134, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !35
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %134, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %134, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %18, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !43
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  store ptr @zcalloc, ptr %19, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %23, align 8, !tbaa !44
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ @zcalloc, %22 ], [ %20, %17 ]
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store ptr @zcfree, ptr %26, align 8, !tbaa !45
  br label %30

30:                                               ; preds = %29, %24
  %31 = icmp eq i32 %1, -1
  %32 = select i1 %31, i32 6, i32 %1
  %33 = icmp slt i32 %3, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = sub nsw i32 0, %3
  br label %41

36:                                               ; preds = %30
  %37 = icmp ugt i32 %3, 15
  %38 = add nsw i32 %3, -16
  %39 = select i1 %37, i32 %38, i32 %3
  %40 = select i1 %37, i32 2, i32 1
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi i32 [ %35, %34 ], [ %39, %36 ]
  %43 = phi i32 [ 0, %34 ], [ %40, %36 ]
  %44 = add i32 %4, -10
  %45 = icmp ult i32 %44, -9
  %46 = icmp ne i32 %2, 8
  %47 = or i1 %46, %45
  %48 = icmp ult i32 %42, 8
  %49 = select i1 %47, i1 true, i1 %48
  %50 = icmp ugt i32 %42, 15
  %51 = select i1 %49, i1 true, i1 %50
  %52 = icmp ugt i32 %32, 9
  %53 = or i1 %52, %51
  %54 = icmp ugt i32 %5, 4
  %55 = or i1 %54, %53
  br i1 %55, label %134, label %56

56:                                               ; preds = %41
  %57 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  %59 = tail call ptr %25(ptr noundef %58, i32 noundef 1, i32 noundef 5936) #11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %134, label %61

61:                                               ; preds = %56
  %62 = icmp eq i32 %42, 8
  %63 = select i1 %62, i32 9, i32 %42
  %64 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %59, ptr %64, align 8, !tbaa !46
  store ptr %0, ptr %59, align 8, !tbaa !47
  %65 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 6
  store i32 %43, ptr %65, align 4, !tbaa !51
  %66 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 7
  store ptr null, ptr %66, align 8, !tbaa !52
  %67 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 12
  store i32 %63, ptr %67, align 8, !tbaa !53
  %68 = shl nuw nsw i32 1, %63
  %69 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 11
  store i32 %68, ptr %69, align 4, !tbaa !54
  %70 = add nsw i32 %68, -1
  %71 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 13
  store i32 %70, ptr %71, align 4, !tbaa !55
  %72 = add nuw nsw i32 %4, 7
  %73 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 20
  store i32 %72, ptr %73, align 8, !tbaa !56
  %74 = shl nuw nsw i32 128, %4
  %75 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 19
  store i32 %74, ptr %75, align 4, !tbaa !57
  %76 = add nsw i32 %74, -1
  %77 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 21
  store i32 %76, ptr %77, align 4, !tbaa !58
  %78 = trunc i32 %4 to i8
  %79 = add nuw nsw i8 %78, 9
  %80 = udiv i8 %79, 3
  %81 = zext nneg i8 %80 to i32
  %82 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 22
  store i32 %81, ptr %82, align 8, !tbaa !59
  %83 = load ptr, ptr %19, align 8, !tbaa !43
  %84 = load ptr, ptr %57, align 8, !tbaa !44
  %85 = tail call ptr %83(ptr noundef %84, i32 noundef %68, i32 noundef 2) #11
  %86 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 14
  store ptr %85, ptr %86, align 8, !tbaa !60
  %87 = load ptr, ptr %19, align 8, !tbaa !43
  %88 = load ptr, ptr %57, align 8, !tbaa !44
  %89 = load i32, ptr %69, align 4, !tbaa !54
  %90 = tail call ptr %87(ptr noundef %88, i32 noundef %89, i32 noundef 2) #11
  %91 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 16
  store ptr %90, ptr %91, align 8, !tbaa !61
  %92 = load ptr, ptr %19, align 8, !tbaa !43
  %93 = load ptr, ptr %57, align 8, !tbaa !44
  %94 = load i32, ptr %75, align 4, !tbaa !57
  %95 = tail call ptr %92(ptr noundef %93, i32 noundef %94, i32 noundef 2) #11
  %96 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 17
  store ptr %95, ptr %96, align 8, !tbaa !62
  %97 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 58
  store i64 0, ptr %97, align 8, !tbaa !63
  %98 = shl nuw nsw i32 64, %4
  %99 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 49
  store i32 %98, ptr %99, align 8, !tbaa !64
  %100 = load ptr, ptr %19, align 8, !tbaa !43
  %101 = load ptr, ptr %57, align 8, !tbaa !44
  %102 = tail call ptr %100(ptr noundef %101, i32 noundef %98, i32 noundef 4) #11
  %103 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 2
  store ptr %102, ptr %103, align 8, !tbaa !65
  %104 = load i32, ptr %99, align 8, !tbaa !64
  %105 = zext i32 %104 to i64
  %106 = shl nuw nsw i64 %105, 2
  %107 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 3
  store i64 %106, ptr %107, align 8, !tbaa !66
  %108 = load ptr, ptr %86, align 8, !tbaa !60
  %109 = icmp eq ptr %108, null
  br i1 %109, label %118, label %110

110:                                              ; preds = %61
  %111 = load ptr, ptr %91, align 8, !tbaa !61
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %96, align 8, !tbaa !62
  %115 = icmp eq ptr %114, null
  %116 = icmp eq ptr %102, null
  %117 = select i1 %115, i1 true, i1 %116
  br i1 %117, label %118, label %122

118:                                              ; preds = %113, %110, %61
  %119 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 1
  store i32 666, ptr %119, align 8, !tbaa !67
  %120 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 6), align 16, !tbaa !68
  store ptr %120, ptr %18, align 8, !tbaa !38
  %121 = tail call i32 @deflateEnd(ptr noundef nonnull %0) #10, !range !69
  br label %134

122:                                              ; preds = %113
  %123 = lshr i32 %104, 1
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds i16, ptr %102, i64 %124
  %126 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 51
  store ptr %125, ptr %126, align 8, !tbaa !70
  %127 = mul nuw nsw i64 %105, 3
  %128 = getelementptr inbounds i8, ptr %102, i64 %127
  %129 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 48
  store ptr %128, ptr %129, align 8, !tbaa !71
  %130 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 33
  store i32 %32, ptr %130, align 4, !tbaa !72
  %131 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 34
  store i32 %5, ptr %131, align 8, !tbaa !73
  %132 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 9
  store i8 8, ptr %132, align 4, !tbaa !74
  %133 = tail call i32 @deflateReset(ptr noundef nonnull %0) #10, !range !75
  br label %134

134:                                              ; preds = %56, %41, %15, %8, %10, %122, %118
  %135 = phi i32 [ -4, %118 ], [ %133, %122 ], [ -6, %10 ], [ -6, %8 ], [ -2, %15 ], [ -2, %41 ], [ -4, %56 ]
  ret i32 %135
}

; Function Attrs: optsize
declare hidden ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: optsize
declare hidden void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @deflateEnd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %61, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %61, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !67
  switch i32 %9, label %61 [
    i32 666, label %10
    i32 113, label %10
    i32 103, label %10
    i32 91, label %10
    i32 73, label %10
    i32 69, label %10
    i32 42, label %10
  ]

10:                                               ; preds = %7, %7, %7, %7, %7, %7, %7
  %11 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  tail call void %16(ptr noundef %18, ptr noundef nonnull %12) #11
  %19 = load ptr, ptr %4, align 8, !tbaa !46
  br label %20

20:                                               ; preds = %14, %10
  %21 = phi ptr [ %19, %14 ], [ %5, %10 ]
  %22 = getelementptr inbounds %struct.internal_state, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %27 = load ptr, ptr %26, align 8, !tbaa !45
  %28 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  tail call void %27(ptr noundef %29, ptr noundef nonnull %23) #11
  %30 = load ptr, ptr %4, align 8, !tbaa !46
  br label %31

31:                                               ; preds = %25, %20
  %32 = phi ptr [ %30, %25 ], [ %21, %20 ]
  %33 = getelementptr inbounds %struct.internal_state, ptr %32, i64 0, i32 16
  %34 = load ptr, ptr %33, align 8, !tbaa !61
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %38 = load ptr, ptr %37, align 8, !tbaa !45
  %39 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  tail call void %38(ptr noundef %40, ptr noundef nonnull %34) #11
  %41 = load ptr, ptr %4, align 8, !tbaa !46
  br label %42

42:                                               ; preds = %36, %31
  %43 = phi ptr [ %41, %36 ], [ %32, %31 ]
  %44 = getelementptr inbounds %struct.internal_state, ptr %43, i64 0, i32 14
  %45 = load ptr, ptr %44, align 8, !tbaa !60
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  %50 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  tail call void %49(ptr noundef %51, ptr noundef nonnull %45) #11
  %52 = load ptr, ptr %4, align 8, !tbaa !46
  br label %53

53:                                               ; preds = %47, %42
  %54 = phi ptr [ %52, %47 ], [ %43, %42 ]
  %55 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %56 = load ptr, ptr %55, align 8, !tbaa !45
  %57 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  tail call void %56(ptr noundef %58, ptr noundef %54) #11
  store ptr null, ptr %4, align 8, !tbaa !46
  %59 = icmp eq i32 %9, 113
  %60 = select i1 %59, i32 -3, i32 0
  br label %61

61:                                               ; preds = %7, %1, %3, %53
  %62 = phi i32 [ %60, %53 ], [ -2, %3 ], [ -2, %1 ], [ -2, %7 ]
  ret i32 %62
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @deflateReset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @deflateResetKeep(ptr noundef %0) #10, !range !75
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  tail call fastcc void @lm_init(ptr noundef %6) #10
  br label %7

7:                                                ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @deflateSetDictionary(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %123, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %9, %8
  br i1 %10, label %123, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !51
  switch i32 %13, label %22 [
    i32 2, label %123
    i32 1, label %14
  ]

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !67
  %17 = icmp eq i32 %16, 42
  br i1 %17, label %18, label %123

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 29
  %20 = load i32, ptr %19, align 4, !tbaa !76
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %123

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 29
  %24 = load i32, ptr %23, align 4, !tbaa !76
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %123

26:                                               ; preds = %22
  store i32 0, ptr %12, align 4, !tbaa !51
  %27 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 11
  %28 = load i32, ptr %27, align 4, !tbaa !54
  %29 = icmp ugt i32 %28, %2
  br i1 %29, label %58, label %37

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %32 = load i64, ptr %31, align 8, !tbaa !77
  %33 = tail call i64 @adler32(i64 noundef %32, ptr noundef nonnull %1, i32 noundef %2) #11
  store i64 %33, ptr %31, align 8, !tbaa !77
  store i32 0, ptr %12, align 4, !tbaa !51
  %34 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 11
  %35 = load i32, ptr %34, align 4, !tbaa !54
  %36 = icmp ugt i32 %35, %2
  br i1 %36, label %58, label %52

37:                                               ; preds = %26
  %38 = icmp eq i32 %13, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !62
  %42 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 19
  %43 = load i32, ptr %42, align 4, !tbaa !57
  %44 = add i32 %43, -1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i16, ptr %41, i64 %45
  store i16 0, ptr %46, align 2, !tbaa !78
  %47 = shl nuw nsw i64 %45, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %41, i8 0, i64 %47, i1 false)
  %48 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 27
  store i32 0, ptr %48, align 4, !tbaa !79
  %49 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 23
  store i64 0, ptr %49, align 8, !tbaa !80
  %50 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 55
  store i32 0, ptr %50, align 4, !tbaa !81
  %51 = load i32, ptr %27, align 4, !tbaa !54
  br label %52

52:                                               ; preds = %30, %39, %37
  %53 = phi ptr [ %23, %39 ], [ %23, %37 ], [ %19, %30 ]
  %54 = phi i32 [ %51, %39 ], [ %28, %37 ], [ %35, %30 ]
  %55 = sub i32 %2, %54
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %1, i64 %56
  br label %58

58:                                               ; preds = %30, %52, %26
  %59 = phi ptr [ %53, %52 ], [ %23, %26 ], [ %19, %30 ]
  %60 = phi i32 [ %54, %52 ], [ %2, %26 ], [ %2, %30 ]
  %61 = phi ptr [ %57, %52 ], [ %1, %26 ], [ %1, %30 ]
  %62 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !82
  %64 = load ptr, ptr %0, align 8, !tbaa !83
  store i32 %60, ptr %62, align 8, !tbaa !82
  store ptr %61, ptr %0, align 8, !tbaa !83
  tail call fastcc void @fill_window(ptr noundef nonnull %7) #10
  %65 = load i32, ptr %59, align 4, !tbaa !76
  %66 = icmp ugt i32 %65, 2
  br i1 %66, label %67, label %112

67:                                               ; preds = %58
  %68 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 27
  %69 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 18
  %70 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 22
  %71 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 14
  %72 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 21
  %73 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 17
  %74 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 16
  %75 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 13
  br label %76

76:                                               ; preds = %67, %109
  %77 = phi i32 [ %65, %67 ], [ %110, %109 ]
  %78 = load i32, ptr %68, align 4, !tbaa !79
  %79 = add i32 %77, -2
  %80 = load i32, ptr %70, align 8, !tbaa !59
  %81 = load ptr, ptr %71, align 8, !tbaa !60
  %82 = load i32, ptr %72, align 4, !tbaa !58
  %83 = load ptr, ptr %73, align 8, !tbaa !62
  %84 = load ptr, ptr %74, align 8, !tbaa !61
  %85 = load i32, ptr %75, align 4, !tbaa !55
  %86 = load i32, ptr %69, align 8, !tbaa !84
  br label %87

87:                                               ; preds = %87, %76
  %88 = phi i32 [ %86, %76 ], [ %98, %87 ]
  %89 = phi i32 [ %78, %76 ], [ %106, %87 ]
  %90 = phi i32 [ %79, %76 ], [ %107, %87 ]
  %91 = shl i32 %88, %80
  %92 = add i32 %89, 2
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8, ptr %81, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !35
  %96 = zext i8 %95 to i32
  %97 = xor i32 %91, %96
  %98 = and i32 %97, %82
  store i32 %98, ptr %69, align 8, !tbaa !84
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i16, ptr %83, i64 %99
  %101 = load i16, ptr %100, align 2, !tbaa !78
  %102 = and i32 %85, %89
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i16, ptr %84, i64 %103
  store i16 %101, ptr %104, align 2, !tbaa !78
  %105 = trunc i32 %89 to i16
  store i16 %105, ptr %100, align 2, !tbaa !78
  %106 = add i32 %89, 1
  %107 = add i32 %90, -1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %87, !llvm.loop !85

109:                                              ; preds = %87
  store i32 %106, ptr %68, align 4, !tbaa !79
  store i32 2, ptr %59, align 4, !tbaa !76
  tail call fastcc void @fill_window(ptr noundef nonnull %7) #10
  %110 = load i32, ptr %59, align 4, !tbaa !76
  %111 = icmp ugt i32 %110, 2
  br i1 %111, label %76, label %112, !llvm.loop !87

112:                                              ; preds = %109, %58
  %113 = phi i32 [ %65, %58 ], [ %110, %109 ]
  %114 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 27
  %115 = load i32, ptr %114, align 4, !tbaa !79
  %116 = add i32 %115, %113
  store i32 %116, ptr %114, align 4, !tbaa !79
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 23
  store i64 %117, ptr %118, align 8, !tbaa !80
  %119 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 55
  store i32 %113, ptr %119, align 4, !tbaa !81
  store i32 0, ptr %59, align 4, !tbaa !76
  %120 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 30
  store i32 2, ptr %120, align 8, !tbaa !88
  %121 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 24
  store i32 2, ptr %121, align 8, !tbaa !89
  %122 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 26
  store i32 0, ptr %122, align 8, !tbaa !90
  store ptr %64, ptr %0, align 8, !tbaa !83
  store i32 %63, ptr %62, align 8, !tbaa !82
  store i32 %13, ptr %12, align 4, !tbaa !51
  br label %123

123:                                              ; preds = %11, %22, %14, %18, %3, %5, %112
  %124 = phi i32 [ 0, %112 ], [ -2, %5 ], [ -2, %3 ], [ -2, %18 ], [ -2, %14 ], [ -2, %11 ], [ -2, %22 ]
  ret i32 %124
}

; Function Attrs: optsize
declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fill_window(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !91 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !54
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %7 = add i32 %3, -262
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %9 = zext i32 %3 to i64
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %19 = load i32, ptr %5, align 4, !tbaa !76
  %20 = insertelement <2 x i32> poison, i32 %3, i64 0
  %21 = shufflevector <2 x i32> %20, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %22

22:                                               ; preds = %139, %1
  %23 = phi i32 [ %87, %139 ], [ %19, %1 ]
  %24 = load i64, ptr %4, align 8, !tbaa !92
  %25 = zext i32 %23 to i64
  %26 = load i32, ptr %6, align 4, !tbaa !79
  %27 = zext i32 %26 to i64
  %28 = add nuw nsw i64 %25, %27
  %29 = sub i64 %24, %28
  %30 = trunc i64 %29 to i32
  %31 = load i32, ptr %2, align 4, !tbaa !54
  %32 = add i32 %7, %31
  %33 = icmp ult i32 %26, %32
  br i1 %33, label %71, label %34

34:                                               ; preds = %22
  %35 = load ptr, ptr %8, align 8, !tbaa !60
  %36 = getelementptr inbounds i8, ptr %35, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr align 1 %36, i64 %9, i1 false)
  %37 = load <2 x i32>, ptr %6, align 4, !tbaa !93
  %38 = sub <2 x i32> %37, %21
  store <2 x i32> %38, ptr %6, align 4, !tbaa !93
  %39 = load i64, ptr %10, align 8, !tbaa !80
  %40 = sub nsw i64 %39, %9
  store i64 %40, ptr %10, align 8, !tbaa !80
  %41 = load i32, ptr %11, align 4, !tbaa !57
  %42 = load ptr, ptr %12, align 8, !tbaa !62
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds i16, ptr %42, i64 %43
  br label %45

45:                                               ; preds = %45, %34
  %46 = phi ptr [ %44, %34 ], [ %48, %45 ]
  %47 = phi i32 [ %41, %34 ], [ %53, %45 ]
  %48 = getelementptr inbounds i16, ptr %46, i64 -1
  %49 = load i16, ptr %48, align 2, !tbaa !78
  %50 = zext i16 %49 to i32
  %51 = tail call i32 @llvm.usub.sat.i32(i32 %50, i32 %3)
  %52 = trunc i32 %51 to i16
  store i16 %52, ptr %48, align 2, !tbaa !78
  %53 = add i32 %47, -1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %45, !llvm.loop !94

55:                                               ; preds = %45
  %56 = load ptr, ptr %13, align 8, !tbaa !61
  %57 = getelementptr inbounds i16, ptr %56, i64 %9
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi ptr [ %57, %55 ], [ %61, %58 ]
  %60 = phi i32 [ %3, %55 ], [ %66, %58 ]
  %61 = getelementptr inbounds i16, ptr %59, i64 -1
  %62 = load i16, ptr %61, align 2, !tbaa !78
  %63 = zext i16 %62 to i32
  %64 = tail call i32 @llvm.usub.sat.i32(i32 %63, i32 %3)
  %65 = trunc i32 %64 to i16
  store i16 %65, ptr %61, align 2, !tbaa !78
  %66 = add i32 %60, -1
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %58, !llvm.loop !95

68:                                               ; preds = %58
  %69 = add i32 %3, %30
  %70 = extractelement <2 x i32> %38, i64 0
  br label %71

71:                                               ; preds = %68, %22
  %72 = phi i32 [ %70, %68 ], [ %26, %22 ]
  %73 = phi i32 [ %69, %68 ], [ %30, %22 ]
  %74 = load ptr, ptr %0, align 8, !tbaa !47
  %75 = getelementptr inbounds %struct.z_stream_s, ptr %74, i64 0, i32 1
  %76 = load i32, ptr %75, align 8, !tbaa !82
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %144, label %78

78:                                               ; preds = %71
  %79 = load ptr, ptr %8, align 8, !tbaa !60
  %80 = zext i32 %72 to i64
  %81 = getelementptr inbounds i8, ptr %79, i64 %80
  %82 = load i32, ptr %5, align 4, !tbaa !76
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, ptr %81, i64 %83
  %85 = tail call fastcc i32 @read_buf(ptr noundef nonnull %74, ptr noundef %84, i32 noundef %73) #10
  %86 = load i32, ptr %5, align 4, !tbaa !76
  %87 = add i32 %86, %85
  store i32 %87, ptr %5, align 4, !tbaa !76
  %88 = load i32, ptr %14, align 4, !tbaa !81
  %89 = add i32 %88, %87
  %90 = icmp ugt i32 %89, 2
  br i1 %90, label %91, label %137

91:                                               ; preds = %78
  %92 = load i32, ptr %6, align 4, !tbaa !79
  %93 = sub i32 %92, %88
  %94 = load ptr, ptr %8, align 8, !tbaa !60
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds i8, ptr %94, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !35
  %98 = zext i8 %97 to i32
  store i32 %98, ptr %15, align 8, !tbaa !84
  %99 = load i32, ptr %16, align 8, !tbaa !59
  %100 = shl i32 %98, %99
  %101 = add i32 %93, 1
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %94, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !35
  %105 = zext i8 %104 to i32
  %106 = xor i32 %100, %105
  %107 = load i32, ptr %17, align 4, !tbaa !58
  %108 = and i32 %106, %107
  store i32 %108, ptr %15, align 8, !tbaa !84
  br label %109

109:                                              ; preds = %114, %91
  %110 = phi i32 [ %122, %114 ], [ %108, %91 ]
  %111 = phi i32 [ %134, %114 ], [ %88, %91 ]
  %112 = phi i32 [ %133, %114 ], [ %93, %91 ]
  %113 = icmp eq i32 %111, 0
  br i1 %113, label %137, label %114

114:                                              ; preds = %109
  %115 = shl i32 %110, %99
  %116 = add i32 %112, 2
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %94, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !35
  %120 = zext i8 %119 to i32
  %121 = xor i32 %115, %120
  %122 = and i32 %121, %107
  store i32 %122, ptr %15, align 8, !tbaa !84
  %123 = load ptr, ptr %12, align 8, !tbaa !62
  %124 = zext i32 %122 to i64
  %125 = getelementptr inbounds i16, ptr %123, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !78
  %127 = load ptr, ptr %13, align 8, !tbaa !61
  %128 = load i32, ptr %18, align 4, !tbaa !55
  %129 = and i32 %128, %112
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i16, ptr %127, i64 %130
  store i16 %126, ptr %131, align 2, !tbaa !78
  %132 = trunc i32 %112 to i16
  store i16 %132, ptr %125, align 2, !tbaa !78
  %133 = add i32 %112, 1
  %134 = add i32 %111, -1
  store i32 %134, ptr %14, align 4, !tbaa !81
  %135 = add i32 %134, %87
  %136 = icmp ult i32 %135, 3
  br i1 %136, label %137, label %109, !llvm.loop !96

137:                                              ; preds = %109, %114, %78
  %138 = icmp ult i32 %87, 262
  br i1 %138, label %139, label %144

139:                                              ; preds = %137
  %140 = load ptr, ptr %0, align 8, !tbaa !47
  %141 = getelementptr inbounds %struct.z_stream_s, ptr %140, i64 0, i32 1
  %142 = load i32, ptr %141, align 8, !tbaa !82
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %22, !llvm.loop !97

144:                                              ; preds = %137, %71, %139
  %145 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 58
  %146 = load i64, ptr %145, align 8, !tbaa !63
  %147 = load i64, ptr %4, align 8, !tbaa !92
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %176

149:                                              ; preds = %144
  %150 = load i32, ptr %6, align 4, !tbaa !79
  %151 = zext i32 %150 to i64
  %152 = load i32, ptr %5, align 4, !tbaa !76
  %153 = zext i32 %152 to i64
  %154 = add nuw nsw i64 %153, %151
  %155 = icmp ult i64 %146, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = sub i64 %147, %154
  %158 = tail call i64 @llvm.umin.i64(i64 %157, i64 258)
  %159 = load ptr, ptr %8, align 8, !tbaa !60
  %160 = getelementptr inbounds i8, ptr %159, i64 %154
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %160, i8 0, i64 %158, i1 false)
  %161 = add nuw nsw i64 %158, %154
  br label %174

162:                                              ; preds = %149
  %163 = add nuw nsw i64 %154, 258
  %164 = icmp ult i64 %146, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %162
  %166 = sub nsw i64 %163, %146
  %167 = sub i64 %147, %146
  %168 = tail call i64 @llvm.umin.i64(i64 %166, i64 %167)
  %169 = load ptr, ptr %8, align 8, !tbaa !60
  %170 = getelementptr inbounds i8, ptr %169, i64 %146
  %171 = and i64 %168, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %170, i8 0, i64 %171, i1 false)
  %172 = load i64, ptr %145, align 8, !tbaa !63
  %173 = add i64 %172, %168
  br label %174

174:                                              ; preds = %165, %156
  %175 = phi i64 [ %161, %156 ], [ %173, %165 ]
  store i64 %175, ptr %145, align 8, !tbaa !63
  br label %176

176:                                              ; preds = %174, %162, %144
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @deflateResetKeep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %42, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %42, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %17, align 8, !tbaa !98
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  store i32 2, ptr %18, align 8, !tbaa !99
  %19 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 5
  store i32 0, ptr %19, align 8, !tbaa !100
  %20 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !101
  %23 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !51
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = sub nsw i32 0, %24
  store i32 %27, ptr %23, align 4, !tbaa !51
  br label %28

28:                                               ; preds = %26, %15
  %29 = phi i32 [ %27, %26 ], [ %24, %15 ]
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 113, i32 42
  %32 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 1
  store i32 %31, ptr %32, align 8, !tbaa !67
  %33 = icmp eq i32 %29, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %38

36:                                               ; preds = %28
  %37 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ]
  %40 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %39, ptr %40, align 8, !tbaa !77
  %41 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 10
  store i32 0, ptr %41, align 8, !tbaa !102
  tail call void @_tr_init(ptr noundef nonnull %5) #11
  br label %42

42:                                               ; preds = %1, %3, %7, %11, %38
  %43 = phi i32 [ 0, %38 ], [ -2, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %43
}

; Function Attrs: optsize
declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare hidden void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @lm_init(ptr nocapture noundef %0) unnamed_addr #3 !PGOFuncName !103 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !54
  %4 = zext i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 1
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  store i64 %5, ptr %6, align 8, !tbaa !92
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %10 = load i32, ptr %9, align 4, !tbaa !57
  %11 = add i32 %10, -1
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i16, ptr %8, i64 %12
  store i16 0, ptr %13, align 2, !tbaa !78
  %14 = shl nuw nsw i64 %12, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %8, i8 0, i64 %14, i1 false)
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 33
  %16 = load i32, ptr %15, align 4, !tbaa !72
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %17, i32 1
  %19 = load i16, ptr %18, align 2, !tbaa !104
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 32
  store i32 %20, ptr %21, align 8, !tbaa !106
  %22 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %17
  %23 = load i16, ptr %22, align 16, !tbaa !107
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35
  store i32 %24, ptr %25, align 4, !tbaa !108
  %26 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %17, i32 2
  %27 = load i16, ptr %26, align 4, !tbaa !109
  %28 = zext i16 %27 to i32
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36
  store i32 %28, ptr %29, align 8, !tbaa !110
  %30 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %17, i32 3
  %31 = load i16, ptr %30, align 2, !tbaa !111
  %32 = zext i16 %31 to i32
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 31
  store i32 %32, ptr %33, align 4, !tbaa !112
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  store i32 0, ptr %34, align 4, !tbaa !79
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  store i64 0, ptr %35, align 8, !tbaa !80
  %36 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  store i32 0, ptr %36, align 4, !tbaa !76
  %37 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 0, ptr %37, align 4, !tbaa !81
  %38 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 30
  store i32 2, ptr %38, align 8, !tbaa !88
  %39 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  store i32 2, ptr %39, align 8, !tbaa !89
  %40 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 26
  store i32 0, ptr %40, align 8, !tbaa !90
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  store i32 0, ptr %41, align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @deflateSetHeader(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 6
  %10 = load i32, ptr %9, align 4, !tbaa !51
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 7
  store ptr %1, ptr %13, align 8, !tbaa !52
  br label %14

14:                                               ; preds = %8, %2, %4, %12
  %15 = phi i32 [ 0, %12 ], [ -2, %4 ], [ -2, %2 ], [ -2, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @deflatePending(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = icmp eq ptr %1, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !100
  store i32 %13, ptr %1, align 4, !tbaa !93
  br label %14

14:                                               ; preds = %11, %9
  %15 = icmp eq ptr %2, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 57
  %18 = load i32, ptr %17, align 4, !tbaa !113
  store i32 %18, ptr %2, align 4, !tbaa !93
  br label %19

19:                                               ; preds = %14, %16, %3, %5
  %20 = phi i32 [ -2, %5 ], [ -2, %3 ], [ 0, %16 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @deflatePrime(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %36, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 51
  %11 = load ptr, ptr %10, align 8, !tbaa !70
  %12 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = getelementptr inbounds i8, ptr %13, i64 2
  %15 = icmp ult ptr %11, %14
  br i1 %15, label %36, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 57
  %18 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 56
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i32 [ %34, %19 ], [ %1, %16 ]
  %21 = phi i32 [ %33, %19 ], [ %2, %16 ]
  %22 = load i32, ptr %17, align 4, !tbaa !113
  %23 = sub nsw i32 16, %22
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 %20)
  %25 = shl nsw i32 -1, %24
  %26 = xor i32 %25, -1
  %27 = and i32 %21, %26
  %28 = shl i32 %27, %22
  %29 = load i16, ptr %18, align 8, !tbaa !114
  %30 = trunc i32 %28 to i16
  %31 = or i16 %29, %30
  store i16 %31, ptr %18, align 8, !tbaa !114
  %32 = add nsw i32 %24, %22
  store i32 %32, ptr %17, align 4, !tbaa !113
  tail call void @_tr_flush_bits(ptr noundef nonnull %7) #11
  %33 = ashr i32 %21, %24
  %34 = sub nsw i32 %20, %24
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %19, !llvm.loop !115

36:                                               ; preds = %19, %9, %3, %5
  %37 = phi i32 [ -2, %5 ], [ -2, %3 ], [ -5, %9 ], [ 0, %19 ]
  ret i32 %37
}

; Function Attrs: optsize
declare hidden void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %58, label %9

9:                                                ; preds = %5
  %10 = icmp eq i32 %1, -1
  %11 = select i1 %10, i32 6, i32 %1
  %12 = icmp ugt i32 %11, 9
  %13 = icmp ugt i32 %2, 4
  %14 = or i1 %13, %12
  br i1 %14, label %58, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 33
  %17 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 34
  %18 = load i32, ptr %17, align 8, !tbaa !73
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i32, ptr %16, align 4, !tbaa !72
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %22, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !116
  %25 = zext nneg i32 %11 to i64
  %26 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %25, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !116
  %28 = icmp eq ptr %24, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %20, %15
  %30 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !98
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @deflate(ptr noundef nonnull %0, i32 noundef 5) #10, !range !117
  br label %35

35:                                               ; preds = %33, %29, %20
  %36 = phi i32 [ %34, %33 ], [ 0, %29 ], [ 0, %20 ]
  %37 = load i32, ptr %16, align 4, !tbaa !72
  %38 = icmp eq i32 %37, %11
  br i1 %38, label %57, label %39

39:                                               ; preds = %35
  store i32 %11, ptr %16, align 4, !tbaa !72
  %40 = zext nneg i32 %11 to i64
  %41 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %40
  %42 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %40, i32 1
  %43 = load i16, ptr %42, align 2, !tbaa !104
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 32
  store i32 %44, ptr %45, align 8, !tbaa !106
  %46 = load i16, ptr %41, align 16, !tbaa !107
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 35
  store i32 %47, ptr %48, align 4, !tbaa !108
  %49 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %40, i32 2
  %50 = load i16, ptr %49, align 4, !tbaa !109
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 36
  store i32 %51, ptr %52, align 8, !tbaa !110
  %53 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %40, i32 3
  %54 = load i16, ptr %53, align 2, !tbaa !111
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 31
  store i32 %55, ptr %56, align 4, !tbaa !112
  br label %57

57:                                               ; preds = %39, %35
  store i32 %2, ptr %17, align 8, !tbaa !73
  br label %58

58:                                               ; preds = %9, %3, %5, %57
  %59 = phi i32 [ %36, %57 ], [ -2, %5 ], [ -2, %3 ], [ -2, %9 ]
  ret i32 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %783, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt i32 %1, 5
  %9 = or i1 %8, %7
  br i1 %9, label %783, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !118
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !83
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !82
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !67
  %24 = icmp eq i32 %23, 666
  %25 = icmp ne i32 %1, 4
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %17, %10
  %28 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 4), align 16, !tbaa !68
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %28, ptr %29, align 8, !tbaa !38
  br label %783

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !119
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !68
  %36 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %35, ptr %36, align 8, !tbaa !38
  br label %783

37:                                               ; preds = %30
  store ptr %0, ptr %6, align 8, !tbaa !47
  %38 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !102
  store i32 %1, ptr %38, align 8, !tbaa !102
  %40 = icmp eq i32 %23, 42
  br i1 %40, label %41, label %288

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !51
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %246

45:                                               ; preds = %41
  %46 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %47 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %46, ptr %47, align 8, !tbaa !77
  %48 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !65
  %50 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !100
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 8, !tbaa !100
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i8, ptr %49, i64 %53
  store i8 31, ptr %54, align 1, !tbaa !35
  %55 = load ptr, ptr %48, align 8, !tbaa !65
  %56 = load i32, ptr %50, align 8, !tbaa !100
  %57 = add i32 %56, 1
  store i32 %57, ptr %50, align 8, !tbaa !100
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  store i8 -117, ptr %59, align 1, !tbaa !35
  %60 = load ptr, ptr %48, align 8, !tbaa !65
  %61 = load i32, ptr %50, align 8, !tbaa !100
  %62 = add i32 %61, 1
  store i32 %62, ptr %50, align 8, !tbaa !100
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds i8, ptr %60, i64 %63
  store i8 8, ptr %64, align 1, !tbaa !35
  %65 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !52
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %116

68:                                               ; preds = %45
  %69 = load ptr, ptr %48, align 8, !tbaa !65
  %70 = load i32, ptr %50, align 8, !tbaa !100
  %71 = add i32 %70, 1
  store i32 %71, ptr %50, align 8, !tbaa !100
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  store i8 0, ptr %73, align 1, !tbaa !35
  %74 = load ptr, ptr %48, align 8, !tbaa !65
  %75 = load i32, ptr %50, align 8, !tbaa !100
  %76 = add i32 %75, 1
  store i32 %76, ptr %50, align 8, !tbaa !100
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i8, ptr %74, i64 %77
  store i8 0, ptr %78, align 1, !tbaa !35
  %79 = load ptr, ptr %48, align 8, !tbaa !65
  %80 = load i32, ptr %50, align 8, !tbaa !100
  %81 = add i32 %80, 1
  store i32 %81, ptr %50, align 8, !tbaa !100
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds i8, ptr %79, i64 %82
  store i8 0, ptr %83, align 1, !tbaa !35
  %84 = load ptr, ptr %48, align 8, !tbaa !65
  %85 = load i32, ptr %50, align 8, !tbaa !100
  %86 = add i32 %85, 1
  store i32 %86, ptr %50, align 8, !tbaa !100
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds i8, ptr %84, i64 %87
  store i8 0, ptr %88, align 1, !tbaa !35
  %89 = load ptr, ptr %48, align 8, !tbaa !65
  %90 = load i32, ptr %50, align 8, !tbaa !100
  %91 = add i32 %90, 1
  store i32 %91, ptr %50, align 8, !tbaa !100
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds i8, ptr %89, i64 %92
  store i8 0, ptr %93, align 1, !tbaa !35
  %94 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 33
  %95 = load i32, ptr %94, align 4, !tbaa !72
  %96 = icmp eq i32 %95, 9
  br i1 %96, label %104, label %97

97:                                               ; preds = %68
  %98 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 34
  %99 = load i32, ptr %98, align 8, !tbaa !73
  %100 = icmp sgt i32 %99, 1
  %101 = icmp slt i32 %95, 2
  %102 = or i1 %101, %100
  %103 = select i1 %102, i8 4, i8 0
  br label %104

104:                                              ; preds = %68, %97
  %105 = phi i8 [ %103, %97 ], [ 2, %68 ]
  %106 = load ptr, ptr %48, align 8, !tbaa !65
  %107 = load i32, ptr %50, align 8, !tbaa !100
  %108 = add i32 %107, 1
  store i32 %108, ptr %50, align 8, !tbaa !100
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds i8, ptr %106, i64 %109
  store i8 %105, ptr %110, align 1, !tbaa !35
  %111 = load ptr, ptr %48, align 8, !tbaa !65
  %112 = load i32, ptr %50, align 8, !tbaa !100
  %113 = add i32 %112, 1
  store i32 %113, ptr %50, align 8, !tbaa !100
  %114 = zext i32 %112 to i64
  %115 = getelementptr inbounds i8, ptr %111, i64 %114
  store i8 3, ptr %115, align 1, !tbaa !35
  br label %598

116:                                              ; preds = %45
  %117 = load i32, ptr %66, align 8, !tbaa !120
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i8
  %120 = getelementptr inbounds %struct.gz_header_s, ptr %66, i64 0, i32 11
  %121 = load i32, ptr %120, align 4, !tbaa !122
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %122, i8 0, i8 2
  %124 = or disjoint i8 %123, %119
  %125 = getelementptr inbounds %struct.gz_header_s, ptr %66, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !123
  %127 = icmp eq ptr %126, null
  %128 = select i1 %127, i8 0, i8 4
  %129 = or disjoint i8 %124, %128
  %130 = getelementptr inbounds %struct.gz_header_s, ptr %66, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !124
  %132 = icmp eq ptr %131, null
  %133 = select i1 %132, i8 0, i8 8
  %134 = or disjoint i8 %129, %133
  %135 = getelementptr inbounds %struct.gz_header_s, ptr %66, i64 0, i32 9
  %136 = load ptr, ptr %135, align 8, !tbaa !125
  %137 = icmp eq ptr %136, null
  %138 = select i1 %137, i8 0, i8 16
  %139 = or disjoint i8 %134, %138
  %140 = load ptr, ptr %48, align 8, !tbaa !65
  %141 = load i32, ptr %50, align 8, !tbaa !100
  %142 = add i32 %141, 1
  store i32 %142, ptr %50, align 8, !tbaa !100
  %143 = zext i32 %141 to i64
  %144 = getelementptr inbounds i8, ptr %140, i64 %143
  store i8 %139, ptr %144, align 1, !tbaa !35
  %145 = load ptr, ptr %65, align 8, !tbaa !52
  %146 = getelementptr inbounds %struct.gz_header_s, ptr %145, i64 0, i32 1
  %147 = load i64, ptr %146, align 8, !tbaa !126
  %148 = trunc i64 %147 to i8
  %149 = load ptr, ptr %48, align 8, !tbaa !65
  %150 = load i32, ptr %50, align 8, !tbaa !100
  %151 = add i32 %150, 1
  store i32 %151, ptr %50, align 8, !tbaa !100
  %152 = zext i32 %150 to i64
  %153 = getelementptr inbounds i8, ptr %149, i64 %152
  store i8 %148, ptr %153, align 1, !tbaa !35
  %154 = load ptr, ptr %65, align 8, !tbaa !52
  %155 = getelementptr inbounds %struct.gz_header_s, ptr %154, i64 0, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !126
  %157 = lshr i64 %156, 8
  %158 = trunc i64 %157 to i8
  %159 = load ptr, ptr %48, align 8, !tbaa !65
  %160 = load i32, ptr %50, align 8, !tbaa !100
  %161 = add i32 %160, 1
  store i32 %161, ptr %50, align 8, !tbaa !100
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds i8, ptr %159, i64 %162
  store i8 %158, ptr %163, align 1, !tbaa !35
  %164 = load ptr, ptr %65, align 8, !tbaa !52
  %165 = getelementptr inbounds %struct.gz_header_s, ptr %164, i64 0, i32 1
  %166 = load i64, ptr %165, align 8, !tbaa !126
  %167 = lshr i64 %166, 16
  %168 = trunc i64 %167 to i8
  %169 = load ptr, ptr %48, align 8, !tbaa !65
  %170 = load i32, ptr %50, align 8, !tbaa !100
  %171 = add i32 %170, 1
  store i32 %171, ptr %50, align 8, !tbaa !100
  %172 = zext i32 %170 to i64
  %173 = getelementptr inbounds i8, ptr %169, i64 %172
  store i8 %168, ptr %173, align 1, !tbaa !35
  %174 = load ptr, ptr %65, align 8, !tbaa !52
  %175 = getelementptr inbounds %struct.gz_header_s, ptr %174, i64 0, i32 1
  %176 = load i64, ptr %175, align 8, !tbaa !126
  %177 = lshr i64 %176, 24
  %178 = trunc i64 %177 to i8
  %179 = load ptr, ptr %48, align 8, !tbaa !65
  %180 = load i32, ptr %50, align 8, !tbaa !100
  %181 = add i32 %180, 1
  store i32 %181, ptr %50, align 8, !tbaa !100
  %182 = zext i32 %180 to i64
  %183 = getelementptr inbounds i8, ptr %179, i64 %182
  store i8 %178, ptr %183, align 1, !tbaa !35
  %184 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 33
  %185 = load i32, ptr %184, align 4, !tbaa !72
  %186 = icmp eq i32 %185, 9
  br i1 %186, label %194, label %187

187:                                              ; preds = %116
  %188 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 34
  %189 = load i32, ptr %188, align 8, !tbaa !73
  %190 = icmp sgt i32 %189, 1
  %191 = icmp slt i32 %185, 2
  %192 = or i1 %191, %190
  %193 = select i1 %192, i8 4, i8 0
  br label %194

194:                                              ; preds = %116, %187
  %195 = phi i8 [ %193, %187 ], [ 2, %116 ]
  %196 = load ptr, ptr %48, align 8, !tbaa !65
  %197 = load i32, ptr %50, align 8, !tbaa !100
  %198 = add i32 %197, 1
  store i32 %198, ptr %50, align 8, !tbaa !100
  %199 = zext i32 %197 to i64
  %200 = getelementptr inbounds i8, ptr %196, i64 %199
  store i8 %195, ptr %200, align 1, !tbaa !35
  %201 = load ptr, ptr %65, align 8, !tbaa !52
  %202 = getelementptr inbounds %struct.gz_header_s, ptr %201, i64 0, i32 3
  %203 = load i32, ptr %202, align 4, !tbaa !127
  %204 = trunc i32 %203 to i8
  %205 = load ptr, ptr %48, align 8, !tbaa !65
  %206 = load i32, ptr %50, align 8, !tbaa !100
  %207 = add i32 %206, 1
  store i32 %207, ptr %50, align 8, !tbaa !100
  %208 = zext i32 %206 to i64
  %209 = getelementptr inbounds i8, ptr %205, i64 %208
  store i8 %204, ptr %209, align 1, !tbaa !35
  %210 = load ptr, ptr %65, align 8, !tbaa !52
  %211 = getelementptr inbounds %struct.gz_header_s, ptr %210, i64 0, i32 4
  %212 = load ptr, ptr %211, align 8, !tbaa !123
  %213 = icmp eq ptr %212, null
  br i1 %213, label %234, label %214

214:                                              ; preds = %194
  %215 = getelementptr inbounds %struct.gz_header_s, ptr %210, i64 0, i32 5
  %216 = load i32, ptr %215, align 8, !tbaa !128
  %217 = trunc i32 %216 to i8
  %218 = load ptr, ptr %48, align 8, !tbaa !65
  %219 = load i32, ptr %50, align 8, !tbaa !100
  %220 = add i32 %219, 1
  store i32 %220, ptr %50, align 8, !tbaa !100
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds i8, ptr %218, i64 %221
  store i8 %217, ptr %222, align 1, !tbaa !35
  %223 = load ptr, ptr %65, align 8, !tbaa !52
  %224 = getelementptr inbounds %struct.gz_header_s, ptr %223, i64 0, i32 5
  %225 = load i32, ptr %224, align 8, !tbaa !128
  %226 = lshr i32 %225, 8
  %227 = trunc i32 %226 to i8
  %228 = load ptr, ptr %48, align 8, !tbaa !65
  %229 = load i32, ptr %50, align 8, !tbaa !100
  %230 = add i32 %229, 1
  store i32 %230, ptr %50, align 8, !tbaa !100
  %231 = zext i32 %229 to i64
  %232 = getelementptr inbounds i8, ptr %228, i64 %231
  store i8 %227, ptr %232, align 1, !tbaa !35
  %233 = load ptr, ptr %65, align 8, !tbaa !52
  br label %234

234:                                              ; preds = %214, %194
  %235 = phi ptr [ %233, %214 ], [ %210, %194 ]
  %236 = getelementptr inbounds %struct.gz_header_s, ptr %235, i64 0, i32 11
  %237 = load i32, ptr %236, align 4, !tbaa !122
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %244, label %239

239:                                              ; preds = %234
  %240 = load i64, ptr %47, align 8, !tbaa !77
  %241 = load ptr, ptr %48, align 8, !tbaa !65
  %242 = load i32, ptr %50, align 8, !tbaa !100
  %243 = tail call i64 @crc32(i64 noundef %240, ptr noundef %241, i32 noundef %242) #11
  store i64 %243, ptr %47, align 8, !tbaa !77
  br label %244

244:                                              ; preds = %234, %239
  %245 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 8
  store i32 0, ptr %245, align 8, !tbaa !129
  store i32 69, ptr %22, align 8, !tbaa !67
  br label %291

246:                                              ; preds = %41
  %247 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 12
  %248 = load i32, ptr %247, align 8, !tbaa !53
  %249 = shl i32 %248, 12
  %250 = add i32 %249, -30720
  %251 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 34
  %252 = load i32, ptr %251, align 8, !tbaa !73
  %253 = icmp sgt i32 %252, 1
  br i1 %253, label %263, label %254

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 33
  %256 = load i32, ptr %255, align 4, !tbaa !72
  %257 = icmp slt i32 %256, 2
  br i1 %257, label %263, label %258

258:                                              ; preds = %254
  %259 = icmp ult i32 %256, 6
  br i1 %259, label %263, label %260

260:                                              ; preds = %258
  %261 = icmp eq i32 %256, 6
  %262 = select i1 %261, i32 128, i32 192
  br label %263

263:                                              ; preds = %260, %258, %246, %254
  %264 = phi i32 [ 0, %254 ], [ 0, %246 ], [ 64, %258 ], [ %262, %260 ]
  %265 = or disjoint i32 %264, %250
  %266 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 27
  %267 = load i32, ptr %266, align 4, !tbaa !79
  %268 = icmp eq i32 %267, 0
  %269 = or disjoint i32 %265, 32
  %270 = select i1 %268, i32 %265, i32 %269
  %271 = urem i32 %270, 31
  %272 = or disjoint i32 %271, %270
  %273 = xor i32 %272, 31
  store i32 113, ptr %22, align 8, !tbaa !67
  tail call fastcc void @putShortMSB(ptr noundef nonnull %6, i32 noundef %273) #10
  %274 = load i32, ptr %266, align 4, !tbaa !79
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %284, label %276

276:                                              ; preds = %263
  %277 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %278 = load i64, ptr %277, align 8, !tbaa !77
  %279 = lshr i64 %278, 16
  %280 = trunc i64 %279 to i32
  tail call fastcc void @putShortMSB(ptr noundef nonnull %6, i32 noundef %280) #10
  %281 = load i64, ptr %277, align 8, !tbaa !77
  %282 = trunc i64 %281 to i32
  %283 = and i32 %282, 65535
  tail call fastcc void @putShortMSB(ptr noundef nonnull %6, i32 noundef %283) #10
  br label %284

284:                                              ; preds = %276, %263
  %285 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  %286 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %285, ptr %286, align 8, !tbaa !77
  %287 = load i32, ptr %22, align 8, !tbaa !67
  br label %288

288:                                              ; preds = %284, %37
  %289 = phi i32 [ %287, %284 ], [ %23, %37 ]
  %290 = icmp eq i32 %289, 69
  br i1 %290, label %291, label %389

291:                                              ; preds = %244, %288
  %292 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 7
  %293 = load ptr, ptr %292, align 8, !tbaa !52
  %294 = getelementptr inbounds %struct.gz_header_s, ptr %293, i64 0, i32 4
  %295 = load ptr, ptr %294, align 8, !tbaa !123
  %296 = icmp eq ptr %295, null
  br i1 %296, label %386, label %297

297:                                              ; preds = %291
  %298 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %299 = load i32, ptr %298, align 8, !tbaa !100
  %300 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 8
  %301 = load i32, ptr %300, align 8, !tbaa !129
  %302 = getelementptr inbounds %struct.gz_header_s, ptr %293, i64 0, i32 5
  %303 = load i32, ptr %302, align 8, !tbaa !128
  %304 = and i32 %303, 65535
  %305 = icmp ult i32 %301, %304
  br i1 %305, label %306, label %360

306:                                              ; preds = %297
  %307 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 3
  %308 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %309 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  br label %310

310:                                              ; preds = %306, %339
  %311 = phi i32 [ %301, %306 ], [ %354, %339 ]
  %312 = phi ptr [ %293, %306 ], [ %355, %339 ]
  %313 = phi i32 [ %299, %306 ], [ %344, %339 ]
  %314 = load i32, ptr %298, align 8, !tbaa !100
  %315 = zext i32 %314 to i64
  %316 = load i64, ptr %307, align 8, !tbaa !66
  %317 = icmp eq i64 %316, %315
  br i1 %317, label %318, label %339

318:                                              ; preds = %310
  %319 = getelementptr inbounds %struct.gz_header_s, ptr %312, i64 0, i32 11
  %320 = load i32, ptr %319, align 4, !tbaa !122
  %321 = icmp ne i32 %320, 0
  %322 = icmp ugt i32 %314, %313
  %323 = select i1 %321, i1 %322, i1 false
  br i1 %323, label %324, label %331

324:                                              ; preds = %318
  %325 = load i64, ptr %308, align 8, !tbaa !77
  %326 = load ptr, ptr %309, align 8, !tbaa !65
  %327 = zext i32 %313 to i64
  %328 = getelementptr inbounds i8, ptr %326, i64 %327
  %329 = sub i32 %314, %313
  %330 = tail call i64 @crc32(i64 noundef %325, ptr noundef %328, i32 noundef %329) #11
  store i64 %330, ptr %308, align 8, !tbaa !77
  br label %331

331:                                              ; preds = %324, %318
  tail call fastcc void @flush_pending(ptr noundef nonnull %0) #10
  %332 = load i32, ptr %298, align 8, !tbaa !100
  %333 = zext i32 %332 to i64
  %334 = load i64, ptr %307, align 8, !tbaa !66
  %335 = icmp eq i64 %334, %333
  %336 = load ptr, ptr %292, align 8, !tbaa !52
  br i1 %335, label %360, label %337

337:                                              ; preds = %331
  %338 = load i32, ptr %300, align 8, !tbaa !129
  br label %339

339:                                              ; preds = %337, %310
  %340 = phi i64 [ %333, %337 ], [ %315, %310 ]
  %341 = phi i32 [ %332, %337 ], [ %314, %310 ]
  %342 = phi i32 [ %338, %337 ], [ %311, %310 ]
  %343 = phi ptr [ %336, %337 ], [ %312, %310 ]
  %344 = phi i32 [ %332, %337 ], [ %313, %310 ]
  %345 = getelementptr inbounds %struct.gz_header_s, ptr %343, i64 0, i32 4
  %346 = load ptr, ptr %345, align 8, !tbaa !123
  %347 = zext i32 %342 to i64
  %348 = getelementptr inbounds i8, ptr %346, i64 %347
  %349 = load i8, ptr %348, align 1, !tbaa !35
  %350 = load ptr, ptr %309, align 8, !tbaa !65
  %351 = add i32 %341, 1
  store i32 %351, ptr %298, align 8, !tbaa !100
  %352 = getelementptr inbounds i8, ptr %350, i64 %340
  store i8 %349, ptr %352, align 1, !tbaa !35
  %353 = load i32, ptr %300, align 8, !tbaa !129
  %354 = add i32 %353, 1
  store i32 %354, ptr %300, align 8, !tbaa !129
  %355 = load ptr, ptr %292, align 8, !tbaa !52
  %356 = getelementptr inbounds %struct.gz_header_s, ptr %355, i64 0, i32 5
  %357 = load i32, ptr %356, align 8, !tbaa !128
  %358 = and i32 %357, 65535
  %359 = icmp ult i32 %354, %358
  br i1 %359, label %310, label %360, !llvm.loop !130

360:                                              ; preds = %339, %331, %297
  %361 = phi ptr [ %293, %297 ], [ %336, %331 ], [ %355, %339 ]
  %362 = phi i32 [ %299, %297 ], [ %332, %331 ], [ %344, %339 ]
  %363 = getelementptr inbounds %struct.gz_header_s, ptr %361, i64 0, i32 11
  %364 = load i32, ptr %363, align 4, !tbaa !122
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %379, label %366

366:                                              ; preds = %360
  %367 = load i32, ptr %298, align 8, !tbaa !100
  %368 = icmp ugt i32 %367, %362
  br i1 %368, label %369, label %379

369:                                              ; preds = %366
  %370 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %371 = load i64, ptr %370, align 8, !tbaa !77
  %372 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %373 = load ptr, ptr %372, align 8, !tbaa !65
  %374 = zext i32 %362 to i64
  %375 = getelementptr inbounds i8, ptr %373, i64 %374
  %376 = sub i32 %367, %362
  %377 = tail call i64 @crc32(i64 noundef %371, ptr noundef %375, i32 noundef %376) #11
  store i64 %377, ptr %370, align 8, !tbaa !77
  %378 = load ptr, ptr %292, align 8, !tbaa !52
  br label %379

379:                                              ; preds = %369, %366, %360
  %380 = phi ptr [ %378, %369 ], [ %361, %366 ], [ %361, %360 ]
  %381 = load i32, ptr %300, align 8, !tbaa !129
  %382 = getelementptr inbounds %struct.gz_header_s, ptr %380, i64 0, i32 5
  %383 = load i32, ptr %382, align 8, !tbaa !128
  %384 = icmp eq i32 %381, %383
  br i1 %384, label %385, label %387

385:                                              ; preds = %379
  store i32 0, ptr %300, align 8, !tbaa !129
  store i32 73, ptr %22, align 8, !tbaa !67
  br label %395

386:                                              ; preds = %291
  store i32 73, ptr %22, align 8, !tbaa !67
  br label %395

387:                                              ; preds = %379
  %388 = load i32, ptr %22, align 8, !tbaa !67
  br label %389

389:                                              ; preds = %387, %288
  %390 = phi i32 [ %388, %387 ], [ %289, %288 ]
  %391 = icmp eq i32 %390, 73
  br i1 %391, label %392, label %472

392:                                              ; preds = %389
  %393 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 7
  %394 = load ptr, ptr %393, align 8, !tbaa !52
  br label %395

395:                                              ; preds = %392, %386, %385
  %396 = phi ptr [ %394, %392 ], [ %293, %386 ], [ %380, %385 ]
  %397 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 7
  %398 = getelementptr inbounds %struct.gz_header_s, ptr %396, i64 0, i32 7
  %399 = load ptr, ptr %398, align 8, !tbaa !124
  %400 = icmp eq ptr %399, null
  br i1 %400, label %475, label %401

401:                                              ; preds = %395
  %402 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %403 = load i32, ptr %402, align 8, !tbaa !100
  %404 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 3
  %405 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %406 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %407 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 8
  br label %408

408:                                              ; preds = %435, %401
  %409 = phi i32 [ %403, %401 ], [ %439, %435 ]
  %410 = load i32, ptr %402, align 8, !tbaa !100
  %411 = zext i32 %410 to i64
  %412 = load i64, ptr %404, align 8, !tbaa !66
  %413 = icmp eq i64 %412, %411
  %414 = load ptr, ptr %397, align 8, !tbaa !52
  br i1 %413, label %415, label %435

415:                                              ; preds = %408
  %416 = getelementptr inbounds %struct.gz_header_s, ptr %414, i64 0, i32 11
  %417 = load i32, ptr %416, align 4, !tbaa !122
  %418 = icmp ne i32 %417, 0
  %419 = icmp ugt i32 %410, %409
  %420 = select i1 %418, i1 %419, i1 false
  br i1 %420, label %421, label %428

421:                                              ; preds = %415
  %422 = load i64, ptr %405, align 8, !tbaa !77
  %423 = load ptr, ptr %406, align 8, !tbaa !65
  %424 = zext i32 %409 to i64
  %425 = getelementptr inbounds i8, ptr %423, i64 %424
  %426 = sub i32 %410, %409
  %427 = tail call i64 @crc32(i64 noundef %422, ptr noundef %425, i32 noundef %426) #11
  store i64 %427, ptr %405, align 8, !tbaa !77
  br label %428

428:                                              ; preds = %421, %415
  tail call fastcc void @flush_pending(ptr noundef nonnull %0) #10
  %429 = load i32, ptr %402, align 8, !tbaa !100
  %430 = zext i32 %429 to i64
  %431 = load i64, ptr %404, align 8, !tbaa !66
  %432 = icmp eq i64 %431, %430
  br i1 %432, label %451, label %433

433:                                              ; preds = %428
  %434 = load ptr, ptr %397, align 8, !tbaa !52
  br label %435

435:                                              ; preds = %433, %408
  %436 = phi i64 [ %430, %433 ], [ %411, %408 ]
  %437 = phi i32 [ %429, %433 ], [ %410, %408 ]
  %438 = phi ptr [ %434, %433 ], [ %414, %408 ]
  %439 = phi i32 [ %429, %433 ], [ %409, %408 ]
  %440 = getelementptr inbounds %struct.gz_header_s, ptr %438, i64 0, i32 7
  %441 = load ptr, ptr %440, align 8, !tbaa !124
  %442 = load i32, ptr %407, align 8, !tbaa !129
  %443 = add i32 %442, 1
  store i32 %443, ptr %407, align 8, !tbaa !129
  %444 = zext i32 %442 to i64
  %445 = getelementptr inbounds i8, ptr %441, i64 %444
  %446 = load i8, ptr %445, align 1, !tbaa !35
  %447 = load ptr, ptr %406, align 8, !tbaa !65
  %448 = add i32 %437, 1
  store i32 %448, ptr %402, align 8, !tbaa !100
  %449 = getelementptr inbounds i8, ptr %447, i64 %436
  store i8 %446, ptr %449, align 1, !tbaa !35
  %450 = icmp eq i8 %446, 0
  br i1 %450, label %451, label %408, !llvm.loop !131

451:                                              ; preds = %428, %435
  %452 = phi i32 [ %439, %435 ], [ %429, %428 ]
  %453 = phi i1 [ true, %435 ], [ false, %428 ]
  %454 = load ptr, ptr %397, align 8, !tbaa !52
  %455 = getelementptr inbounds %struct.gz_header_s, ptr %454, i64 0, i32 11
  %456 = load i32, ptr %455, align 4, !tbaa !122
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %468, label %458

458:                                              ; preds = %451
  %459 = load i32, ptr %402, align 8, !tbaa !100
  %460 = icmp ugt i32 %459, %452
  br i1 %460, label %461, label %468

461:                                              ; preds = %458
  %462 = load i64, ptr %405, align 8, !tbaa !77
  %463 = load ptr, ptr %406, align 8, !tbaa !65
  %464 = zext i32 %452 to i64
  %465 = getelementptr inbounds i8, ptr %463, i64 %464
  %466 = sub i32 %459, %452
  %467 = tail call i64 @crc32(i64 noundef %462, ptr noundef %465, i32 noundef %466) #11
  store i64 %467, ptr %405, align 8, !tbaa !77
  br label %468

468:                                              ; preds = %461, %458, %451
  br i1 %453, label %471, label %469

469:                                              ; preds = %468
  %470 = load i32, ptr %22, align 8, !tbaa !67
  br label %472

471:                                              ; preds = %468
  store i32 0, ptr %407, align 8, !tbaa !129
  br label %475

472:                                              ; preds = %469, %389
  %473 = phi i32 [ %470, %469 ], [ %390, %389 ]
  %474 = icmp eq i32 %473, 91
  br i1 %474, label %476, label %552

475:                                              ; preds = %395, %471
  store i32 91, ptr %22, align 8, !tbaa !67
  br label %476

476:                                              ; preds = %475, %472
  %477 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 7
  %478 = load ptr, ptr %477, align 8, !tbaa !52
  %479 = getelementptr inbounds %struct.gz_header_s, ptr %478, i64 0, i32 9
  %480 = load ptr, ptr %479, align 8, !tbaa !125
  %481 = icmp eq ptr %480, null
  br i1 %481, label %555, label %482

482:                                              ; preds = %476
  %483 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %484 = load i32, ptr %483, align 8, !tbaa !100
  %485 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 3
  %486 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %487 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %488 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 8
  br label %489

489:                                              ; preds = %516, %482
  %490 = phi i32 [ %484, %482 ], [ %520, %516 ]
  %491 = load i32, ptr %483, align 8, !tbaa !100
  %492 = zext i32 %491 to i64
  %493 = load i64, ptr %485, align 8, !tbaa !66
  %494 = icmp eq i64 %493, %492
  %495 = load ptr, ptr %477, align 8, !tbaa !52
  br i1 %494, label %496, label %516

496:                                              ; preds = %489
  %497 = getelementptr inbounds %struct.gz_header_s, ptr %495, i64 0, i32 11
  %498 = load i32, ptr %497, align 4, !tbaa !122
  %499 = icmp ne i32 %498, 0
  %500 = icmp ugt i32 %491, %490
  %501 = select i1 %499, i1 %500, i1 false
  br i1 %501, label %502, label %509

502:                                              ; preds = %496
  %503 = load i64, ptr %486, align 8, !tbaa !77
  %504 = load ptr, ptr %487, align 8, !tbaa !65
  %505 = zext i32 %490 to i64
  %506 = getelementptr inbounds i8, ptr %504, i64 %505
  %507 = sub i32 %491, %490
  %508 = tail call i64 @crc32(i64 noundef %503, ptr noundef %506, i32 noundef %507) #11
  store i64 %508, ptr %486, align 8, !tbaa !77
  br label %509

509:                                              ; preds = %502, %496
  tail call fastcc void @flush_pending(ptr noundef nonnull %0) #10
  %510 = load i32, ptr %483, align 8, !tbaa !100
  %511 = zext i32 %510 to i64
  %512 = load i64, ptr %485, align 8, !tbaa !66
  %513 = icmp eq i64 %512, %511
  br i1 %513, label %532, label %514

514:                                              ; preds = %509
  %515 = load ptr, ptr %477, align 8, !tbaa !52
  br label %516

516:                                              ; preds = %514, %489
  %517 = phi i64 [ %511, %514 ], [ %492, %489 ]
  %518 = phi i32 [ %510, %514 ], [ %491, %489 ]
  %519 = phi ptr [ %515, %514 ], [ %495, %489 ]
  %520 = phi i32 [ %510, %514 ], [ %490, %489 ]
  %521 = getelementptr inbounds %struct.gz_header_s, ptr %519, i64 0, i32 9
  %522 = load ptr, ptr %521, align 8, !tbaa !125
  %523 = load i32, ptr %488, align 8, !tbaa !129
  %524 = add i32 %523, 1
  store i32 %524, ptr %488, align 8, !tbaa !129
  %525 = zext i32 %523 to i64
  %526 = getelementptr inbounds i8, ptr %522, i64 %525
  %527 = load i8, ptr %526, align 1, !tbaa !35
  %528 = load ptr, ptr %487, align 8, !tbaa !65
  %529 = add i32 %518, 1
  store i32 %529, ptr %483, align 8, !tbaa !100
  %530 = getelementptr inbounds i8, ptr %528, i64 %517
  store i8 %527, ptr %530, align 1, !tbaa !35
  %531 = icmp eq i8 %527, 0
  br i1 %531, label %532, label %489, !llvm.loop !132

532:                                              ; preds = %509, %516
  %533 = phi i32 [ %520, %516 ], [ %510, %509 ]
  %534 = phi i1 [ true, %516 ], [ false, %509 ]
  %535 = load ptr, ptr %477, align 8, !tbaa !52
  %536 = getelementptr inbounds %struct.gz_header_s, ptr %535, i64 0, i32 11
  %537 = load i32, ptr %536, align 4, !tbaa !122
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %549, label %539

539:                                              ; preds = %532
  %540 = load i32, ptr %483, align 8, !tbaa !100
  %541 = icmp ugt i32 %540, %533
  br i1 %541, label %542, label %549

542:                                              ; preds = %539
  %543 = load i64, ptr %486, align 8, !tbaa !77
  %544 = load ptr, ptr %487, align 8, !tbaa !65
  %545 = zext i32 %533 to i64
  %546 = getelementptr inbounds i8, ptr %544, i64 %545
  %547 = sub i32 %540, %533
  %548 = tail call i64 @crc32(i64 noundef %543, ptr noundef %546, i32 noundef %547) #11
  store i64 %548, ptr %486, align 8, !tbaa !77
  br label %549

549:                                              ; preds = %542, %539, %532
  br i1 %534, label %555, label %550

550:                                              ; preds = %549
  %551 = load i32, ptr %22, align 8, !tbaa !67
  br label %552

552:                                              ; preds = %550, %472
  %553 = phi i32 [ %551, %550 ], [ %473, %472 ]
  %554 = icmp eq i32 %553, 103
  br i1 %554, label %556, label %599

555:                                              ; preds = %476, %549
  store i32 103, ptr %22, align 8, !tbaa !67
  br label %556

556:                                              ; preds = %555, %552
  %557 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 7
  %558 = load ptr, ptr %557, align 8, !tbaa !52
  %559 = getelementptr inbounds %struct.gz_header_s, ptr %558, i64 0, i32 11
  %560 = load i32, ptr %559, align 4, !tbaa !122
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %598, label %562

562:                                              ; preds = %556
  %563 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %564 = load i32, ptr %563, align 8, !tbaa !100
  %565 = add i32 %564, 2
  %566 = zext i32 %565 to i64
  %567 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 3
  %568 = load i64, ptr %567, align 8, !tbaa !66
  %569 = icmp ult i64 %568, %566
  br i1 %569, label %570, label %575

570:                                              ; preds = %562
  tail call fastcc void @flush_pending(ptr noundef nonnull %0) #10
  %571 = load i32, ptr %563, align 8, !tbaa !100
  %572 = load i64, ptr %567, align 8, !tbaa !66
  %573 = add i32 %571, 2
  %574 = zext i32 %573 to i64
  br label %575

575:                                              ; preds = %570, %562
  %576 = phi i64 [ %574, %570 ], [ %566, %562 ]
  %577 = phi i64 [ %572, %570 ], [ %568, %562 ]
  %578 = phi i32 [ %571, %570 ], [ %564, %562 ]
  %579 = icmp ult i64 %577, %576
  br i1 %579, label %599, label %580

580:                                              ; preds = %575
  %581 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %582 = load i64, ptr %581, align 8, !tbaa !77
  %583 = trunc i64 %582 to i8
  %584 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %585 = load ptr, ptr %584, align 8, !tbaa !65
  %586 = add i32 %578, 1
  store i32 %586, ptr %563, align 8, !tbaa !100
  %587 = zext i32 %578 to i64
  %588 = getelementptr inbounds i8, ptr %585, i64 %587
  store i8 %583, ptr %588, align 1, !tbaa !35
  %589 = load i64, ptr %581, align 8, !tbaa !77
  %590 = lshr i64 %589, 8
  %591 = trunc i64 %590 to i8
  %592 = load ptr, ptr %584, align 8, !tbaa !65
  %593 = load i32, ptr %563, align 8, !tbaa !100
  %594 = add i32 %593, 1
  store i32 %594, ptr %563, align 8, !tbaa !100
  %595 = zext i32 %593 to i64
  %596 = getelementptr inbounds i8, ptr %592, i64 %595
  store i8 %591, ptr %596, align 1, !tbaa !35
  %597 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #11
  store i64 %597, ptr %581, align 8, !tbaa !77
  br label %598

598:                                              ; preds = %556, %580, %104
  store i32 113, ptr %22, align 8, !tbaa !67
  br label %599

599:                                              ; preds = %598, %575, %552
  %600 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %601 = load i32, ptr %600, align 8, !tbaa !100
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %607, label %603

603:                                              ; preds = %599
  tail call fastcc void @flush_pending(ptr noundef nonnull %0) #10
  %604 = load i32, ptr %31, align 8, !tbaa !119
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %606, label %625

606:                                              ; preds = %603
  store i32 -1, ptr %38, align 8, !tbaa !102
  br label %783

607:                                              ; preds = %599
  %608 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %609 = load i32, ptr %608, align 8, !tbaa !82
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %611, label %625

611:                                              ; preds = %607
  %612 = shl nuw nsw i32 %1, 1
  %613 = icmp sgt i32 %1, 4
  %614 = select i1 %613, i32 -9, i32 0
  %615 = add nsw i32 %614, %612
  %616 = shl i32 %39, 1
  %617 = icmp sgt i32 %39, 4
  %618 = select i1 %617, i32 -9, i32 0
  %619 = add i32 %618, %616
  %620 = icmp sle i32 %615, %619
  %621 = and i1 %25, %620
  br i1 %621, label %622, label %625

622:                                              ; preds = %611
  %623 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !68
  %624 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %623, ptr %624, align 8, !tbaa !38
  br label %783

625:                                              ; preds = %607, %611, %603
  %626 = load i32, ptr %22, align 8, !tbaa !67
  %627 = icmp eq i32 %626, 666
  %628 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %629 = load i32, ptr %628, align 8, !tbaa !82
  %630 = icmp eq i32 %629, 0
  br i1 %627, label %631, label %635

631:                                              ; preds = %625
  br i1 %630, label %636, label %632

632:                                              ; preds = %631
  %633 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !68
  %634 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %633, ptr %634, align 8, !tbaa !38
  br label %783

635:                                              ; preds = %625
  br i1 %630, label %636, label %643

636:                                              ; preds = %631, %635
  %637 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 29
  %638 = load i32, ptr %637, align 4, !tbaa !76
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %643

640:                                              ; preds = %636
  %641 = icmp eq i32 %1, 0
  br i1 %641, label %783, label %642

642:                                              ; preds = %640
  br i1 %627, label %695, label %643

643:                                              ; preds = %642, %636, %635
  %644 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 34
  %645 = load i32, ptr %644, align 8, !tbaa !73
  switch i32 %645, label %650 [
    i32 2, label %646
    i32 3, label %648
  ]

646:                                              ; preds = %643
  %647 = tail call fastcc i32 @deflate_huff(ptr noundef nonnull %6, i32 noundef %1) #10, !range !133
  br label %657

648:                                              ; preds = %643
  %649 = tail call fastcc i32 @deflate_rle(ptr noundef nonnull %6, i32 noundef %1) #10, !range !133
  br label %657

650:                                              ; preds = %643
  %651 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 33
  %652 = load i32, ptr %651, align 4, !tbaa !72
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %653, i32 4
  %655 = load ptr, ptr %654, align 8, !tbaa !116
  %656 = tail call i32 %655(ptr noundef nonnull %6, i32 noundef %1) #11
  br label %657

657:                                              ; preds = %648, %650, %646
  %658 = phi i32 [ %647, %646 ], [ %649, %648 ], [ %656, %650 ]
  %659 = and i32 %658, -2
  %660 = icmp eq i32 %659, 2
  br i1 %660, label %661, label %662

661:                                              ; preds = %657
  store i32 666, ptr %22, align 8, !tbaa !67
  br label %662

662:                                              ; preds = %657, %661
  %663 = and i32 %658, -3
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %665, label %669

665:                                              ; preds = %662
  %666 = load i32, ptr %31, align 8, !tbaa !119
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %668, label %783

668:                                              ; preds = %665
  store i32 -1, ptr %38, align 8, !tbaa !102
  br label %783

669:                                              ; preds = %662
  %670 = icmp eq i32 %658, 1
  br i1 %670, label %671, label %695

671:                                              ; preds = %669
  switch i32 %1, label %673 [
    i32 1, label %672
    i32 5, label %691
  ]

672:                                              ; preds = %671
  tail call void @_tr_align(ptr noundef nonnull %6) #11
  br label %691

673:                                              ; preds = %671
  tail call void @_tr_stored_block(ptr noundef nonnull %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #11
  %674 = icmp eq i32 %1, 3
  br i1 %674, label %675, label %691

675:                                              ; preds = %673
  %676 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 17
  %677 = load ptr, ptr %676, align 8, !tbaa !62
  %678 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 19
  %679 = load i32, ptr %678, align 4, !tbaa !57
  %680 = add i32 %679, -1
  %681 = zext i32 %680 to i64
  %682 = getelementptr inbounds i16, ptr %677, i64 %681
  store i16 0, ptr %682, align 2, !tbaa !78
  %683 = shl nuw nsw i64 %681, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %677, i8 0, i64 %683, i1 false)
  %684 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 29
  %685 = load i32, ptr %684, align 4, !tbaa !76
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %687, label %691

687:                                              ; preds = %675
  %688 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 27
  store i32 0, ptr %688, align 4, !tbaa !79
  %689 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 23
  store i64 0, ptr %689, align 8, !tbaa !80
  %690 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 55
  store i32 0, ptr %690, align 4, !tbaa !81
  br label %691

691:                                              ; preds = %671, %675, %687, %673, %672
  tail call fastcc void @flush_pending(ptr noundef nonnull %0) #10
  %692 = load i32, ptr %31, align 8, !tbaa !119
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %694, label %695

694:                                              ; preds = %691
  store i32 -1, ptr %38, align 8, !tbaa !102
  br label %783

695:                                              ; preds = %691, %669, %642
  br i1 %25, label %783, label %696

696:                                              ; preds = %695
  %697 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 6
  %698 = load i32, ptr %697, align 4, !tbaa !51
  %699 = icmp slt i32 %698, 1
  br i1 %699, label %783, label %700

700:                                              ; preds = %696
  %701 = icmp eq i32 %698, 2
  %702 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %703 = load i64, ptr %702, align 8, !tbaa !77
  br i1 %701, label %704, label %768

704:                                              ; preds = %700
  %705 = trunc i64 %703 to i8
  %706 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %707 = load ptr, ptr %706, align 8, !tbaa !65
  %708 = load i32, ptr %600, align 8, !tbaa !100
  %709 = add i32 %708, 1
  store i32 %709, ptr %600, align 8, !tbaa !100
  %710 = zext i32 %708 to i64
  %711 = getelementptr inbounds i8, ptr %707, i64 %710
  store i8 %705, ptr %711, align 1, !tbaa !35
  %712 = load i64, ptr %702, align 8, !tbaa !77
  %713 = lshr i64 %712, 8
  %714 = trunc i64 %713 to i8
  %715 = load ptr, ptr %706, align 8, !tbaa !65
  %716 = load i32, ptr %600, align 8, !tbaa !100
  %717 = add i32 %716, 1
  store i32 %717, ptr %600, align 8, !tbaa !100
  %718 = zext i32 %716 to i64
  %719 = getelementptr inbounds i8, ptr %715, i64 %718
  store i8 %714, ptr %719, align 1, !tbaa !35
  %720 = load i64, ptr %702, align 8, !tbaa !77
  %721 = lshr i64 %720, 16
  %722 = trunc i64 %721 to i8
  %723 = load ptr, ptr %706, align 8, !tbaa !65
  %724 = load i32, ptr %600, align 8, !tbaa !100
  %725 = add i32 %724, 1
  store i32 %725, ptr %600, align 8, !tbaa !100
  %726 = zext i32 %724 to i64
  %727 = getelementptr inbounds i8, ptr %723, i64 %726
  store i8 %722, ptr %727, align 1, !tbaa !35
  %728 = load i64, ptr %702, align 8, !tbaa !77
  %729 = lshr i64 %728, 24
  %730 = trunc i64 %729 to i8
  %731 = load ptr, ptr %706, align 8, !tbaa !65
  %732 = load i32, ptr %600, align 8, !tbaa !100
  %733 = add i32 %732, 1
  store i32 %733, ptr %600, align 8, !tbaa !100
  %734 = zext i32 %732 to i64
  %735 = getelementptr inbounds i8, ptr %731, i64 %734
  store i8 %730, ptr %735, align 1, !tbaa !35
  %736 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %737 = load i64, ptr %736, align 8, !tbaa !98
  %738 = trunc i64 %737 to i8
  %739 = load ptr, ptr %706, align 8, !tbaa !65
  %740 = load i32, ptr %600, align 8, !tbaa !100
  %741 = add i32 %740, 1
  store i32 %741, ptr %600, align 8, !tbaa !100
  %742 = zext i32 %740 to i64
  %743 = getelementptr inbounds i8, ptr %739, i64 %742
  store i8 %738, ptr %743, align 1, !tbaa !35
  %744 = load i64, ptr %736, align 8, !tbaa !98
  %745 = lshr i64 %744, 8
  %746 = trunc i64 %745 to i8
  %747 = load ptr, ptr %706, align 8, !tbaa !65
  %748 = load i32, ptr %600, align 8, !tbaa !100
  %749 = add i32 %748, 1
  store i32 %749, ptr %600, align 8, !tbaa !100
  %750 = zext i32 %748 to i64
  %751 = getelementptr inbounds i8, ptr %747, i64 %750
  store i8 %746, ptr %751, align 1, !tbaa !35
  %752 = load i64, ptr %736, align 8, !tbaa !98
  %753 = lshr i64 %752, 16
  %754 = trunc i64 %753 to i8
  %755 = load ptr, ptr %706, align 8, !tbaa !65
  %756 = load i32, ptr %600, align 8, !tbaa !100
  %757 = add i32 %756, 1
  store i32 %757, ptr %600, align 8, !tbaa !100
  %758 = zext i32 %756 to i64
  %759 = getelementptr inbounds i8, ptr %755, i64 %758
  store i8 %754, ptr %759, align 1, !tbaa !35
  %760 = load i64, ptr %736, align 8, !tbaa !98
  %761 = lshr i64 %760, 24
  %762 = trunc i64 %761 to i8
  %763 = load ptr, ptr %706, align 8, !tbaa !65
  %764 = load i32, ptr %600, align 8, !tbaa !100
  %765 = add i32 %764, 1
  store i32 %765, ptr %600, align 8, !tbaa !100
  %766 = zext i32 %764 to i64
  %767 = getelementptr inbounds i8, ptr %763, i64 %766
  store i8 %762, ptr %767, align 1, !tbaa !35
  br label %774

768:                                              ; preds = %700
  %769 = lshr i64 %703, 16
  %770 = trunc i64 %769 to i32
  tail call fastcc void @putShortMSB(ptr noundef nonnull %6, i32 noundef %770) #10
  %771 = load i64, ptr %702, align 8, !tbaa !77
  %772 = trunc i64 %771 to i32
  %773 = and i32 %772, 65535
  tail call fastcc void @putShortMSB(ptr noundef nonnull %6, i32 noundef %773) #10
  br label %774

774:                                              ; preds = %768, %704
  tail call fastcc void @flush_pending(ptr noundef nonnull %0) #10
  %775 = load i32, ptr %697, align 4, !tbaa !51
  %776 = icmp sgt i32 %775, 0
  br i1 %776, label %777, label %779

777:                                              ; preds = %774
  %778 = sub nsw i32 0, %775
  store i32 %778, ptr %697, align 4, !tbaa !51
  br label %779

779:                                              ; preds = %777, %774
  %780 = load i32, ptr %600, align 8, !tbaa !100
  %781 = icmp eq i32 %780, 0
  %782 = zext i1 %781 to i32
  br label %783

783:                                              ; preds = %640, %694, %668, %665, %696, %695, %2, %4, %779, %632, %622, %606, %34, %27
  %784 = phi i32 [ -2, %27 ], [ -5, %34 ], [ 0, %606 ], [ -5, %632 ], [ %782, %779 ], [ -5, %622 ], [ -2, %4 ], [ -2, %2 ], [ 0, %695 ], [ 1, %696 ], [ 0, %665 ], [ 0, %668 ], [ 0, %694 ], [ 0, %640 ]
  ret i32 %784
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @deflateTune(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 35
  store i32 %1, ptr %12, align 4, !tbaa !108
  %13 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 32
  store i32 %2, ptr %13, align 8, !tbaa !106
  %14 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 36
  store i32 %3, ptr %14, align 8, !tbaa !110
  %15 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 31
  store i32 %4, ptr %15, align 4, !tbaa !112
  br label %16

16:                                               ; preds = %5, %7, %11
  %17 = phi i32 [ 0, %11 ], [ -2, %7 ], [ -2, %5 ]
  ret i32 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @deflateBound(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #6 {
  %3 = add i64 %1, 7
  %4 = lshr i64 %3, 3
  %5 = add i64 %4, %1
  %6 = add i64 %1, 63
  %7 = lshr i64 %6, 6
  %8 = add i64 %5, %7
  %9 = add i64 %8, 5
  %10 = icmp eq ptr %0, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %2
  %16 = add i64 %8, 11
  br label %90

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 6
  %19 = load i32, ptr %18, align 4, !tbaa !51
  switch i32 %19, label %70 [
    i32 0, label %71
    i32 1, label %20
    i32 2, label %25
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 27
  %22 = load i32, ptr %21, align 4, !tbaa !79
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i64 6, i64 10
  br label %71

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !52
  %28 = icmp eq ptr %27, null
  br i1 %28, label %71, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.gz_header_s, ptr %27, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !123
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.gz_header_s, ptr %27, i64 0, i32 5
  %35 = load i32, ptr %34, align 8, !tbaa !128
  %36 = add i32 %35, 2
  %37 = zext i32 %36 to i64
  %38 = add nuw nsw i64 %37, 18
  br label %39

39:                                               ; preds = %33, %29
  %40 = phi i64 [ %38, %33 ], [ 18, %29 ]
  %41 = getelementptr inbounds %struct.gz_header_s, ptr %27, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !124
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %39, %44
  %45 = phi i64 [ %47, %44 ], [ %40, %39 ]
  %46 = phi ptr [ %48, %44 ], [ %42, %39 ]
  %47 = add i64 %45, 1
  %48 = getelementptr inbounds i8, ptr %46, i64 1
  %49 = load i8, ptr %46, align 1, !tbaa !35
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %44, !llvm.loop !134

51:                                               ; preds = %44, %39
  %52 = phi i64 [ %40, %39 ], [ %47, %44 ]
  %53 = getelementptr inbounds %struct.gz_header_s, ptr %27, i64 0, i32 9
  %54 = load ptr, ptr %53, align 8, !tbaa !125
  %55 = icmp eq ptr %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %51, %56
  %57 = phi i64 [ %59, %56 ], [ %52, %51 ]
  %58 = phi ptr [ %60, %56 ], [ %54, %51 ]
  %59 = add i64 %57, 1
  %60 = getelementptr inbounds i8, ptr %58, i64 1
  %61 = load i8, ptr %58, align 1, !tbaa !35
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %56, !llvm.loop !135

63:                                               ; preds = %56, %51
  %64 = phi i64 [ %52, %51 ], [ %59, %56 ]
  %65 = getelementptr inbounds %struct.gz_header_s, ptr %27, i64 0, i32 11
  %66 = load i32, ptr %65, align 4, !tbaa !122
  %67 = icmp eq i32 %66, 0
  %68 = add i64 %64, 2
  %69 = select i1 %67, i64 %64, i64 %68
  br label %71

70:                                               ; preds = %17
  br label %71

71:                                               ; preds = %63, %17, %25, %70, %20
  %72 = phi i64 [ 6, %70 ], [ 18, %25 ], [ %24, %20 ], [ 0, %17 ], [ %69, %63 ]
  %73 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 12
  %74 = load i32, ptr %73, align 8, !tbaa !53
  %75 = icmp eq i32 %74, 15
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 20
  %78 = load i32, ptr %77, align 8, !tbaa !56
  %79 = icmp eq i32 %78, 15
  br i1 %79, label %82, label %80

80:                                               ; preds = %76, %71
  %81 = add i64 %9, %72
  br label %90

82:                                               ; preds = %76
  %83 = lshr i64 %1, 12
  %84 = lshr i64 %1, 14
  %85 = lshr i64 %1, 25
  %86 = add i64 %3, %83
  %87 = add i64 %86, %84
  %88 = add i64 %87, %85
  %89 = add i64 %88, %72
  br label %90

90:                                               ; preds = %82, %80, %15
  %91 = phi i64 [ %16, %15 ], [ %81, %80 ], [ %89, %82 ]
  ret i64 %91
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @putShortMSB(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 !PGOFuncName !136 {
  %3 = lshr i32 %1, 8
  %4 = trunc i32 %3 to i8
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !100
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !100
  %10 = zext i32 %8 to i64
  %11 = getelementptr inbounds i8, ptr %6, i64 %10
  store i8 %4, ptr %11, align 1, !tbaa !35
  %12 = trunc i32 %1 to i8
  %13 = load ptr, ptr %5, align 8, !tbaa !65
  %14 = load i32, ptr %7, align 8, !tbaa !100
  %15 = add i32 %14, 1
  store i32 %15, ptr %7, align 8, !tbaa !100
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds i8, ptr %13, i64 %16
  store i8 %12, ptr %17, align 1, !tbaa !35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @flush_pending(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !137 {
  %2 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !100
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !119
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !118
  %13 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = zext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %14, i64 %15, i1 false)
  %16 = load ptr, ptr %11, align 8, !tbaa !118
  %17 = getelementptr inbounds i8, ptr %16, i64 %15
  store ptr %17, ptr %11, align 8, !tbaa !118
  %18 = load ptr, ptr %13, align 8, !tbaa !101
  %19 = getelementptr inbounds i8, ptr %18, i64 %15
  store ptr %19, ptr %13, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %21 = load i64, ptr %20, align 8, !tbaa !138
  %22 = add i64 %21, %15
  store i64 %22, ptr %20, align 8, !tbaa !138
  %23 = load i32, ptr %6, align 8, !tbaa !119
  %24 = sub i32 %23, %8
  store i32 %24, ptr %6, align 8, !tbaa !119
  %25 = load i32, ptr %4, align 8, !tbaa !100
  %26 = sub i32 %25, %8
  store i32 %26, ptr %4, align 8, !tbaa !100
  %27 = icmp eq i32 %25, %8
  br i1 %27, label %28, label %31

28:                                               ; preds = %10
  %29 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !65
  store ptr %30, ptr %13, align 8, !tbaa !101
  br label %31

31:                                               ; preds = %10, %28, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @deflate_huff(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !139 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 49
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  br label %12

12:                                               ; preds = %63, %2
  %13 = load i32, ptr %3, align 4, !tbaa !76
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  tail call fastcc void @fill_window(ptr noundef nonnull %0) #10
  %16 = load i32, ptr %3, align 4, !tbaa !76
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %110, label %64

20:                                               ; preds = %15, %12
  store i32 0, ptr %4, align 8, !tbaa !89
  %21 = load ptr, ptr %5, align 8, !tbaa !60
  %22 = load i32, ptr %6, align 4, !tbaa !79
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %21, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !35
  %26 = load ptr, ptr %7, align 8, !tbaa !70
  %27 = load i32, ptr %8, align 4, !tbaa !140
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i16, ptr %26, i64 %28
  store i16 0, ptr %29, align 2, !tbaa !78
  %30 = load ptr, ptr %9, align 8, !tbaa !71
  %31 = add i32 %27, 1
  store i32 %31, ptr %8, align 4, !tbaa !140
  %32 = getelementptr inbounds i8, ptr %30, i64 %28
  store i8 %25, ptr %32, align 1, !tbaa !35
  %33 = zext i8 %25 to i64
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %33
  %35 = load i16, ptr %34, align 4, !tbaa !35
  %36 = add i16 %35, 1
  store i16 %36, ptr %34, align 4, !tbaa !35
  %37 = load i32, ptr %8, align 4, !tbaa !140
  %38 = load i32, ptr %10, align 8, !tbaa !64
  %39 = add i32 %38, -1
  %40 = icmp eq i32 %37, %39
  %41 = load i32, ptr %3, align 4, !tbaa !76
  %42 = add i32 %41, -1
  store i32 %42, ptr %3, align 4, !tbaa !76
  %43 = load i32, ptr %6, align 4, !tbaa !79
  %44 = add i32 %43, 1
  store i32 %44, ptr %6, align 4, !tbaa !79
  br i1 %40, label %45, label %63

45:                                               ; preds = %20
  %46 = load i64, ptr %11, align 8, !tbaa !80
  %47 = icmp sgt i64 %46, -1
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load ptr, ptr %5, align 8, !tbaa !60
  %50 = and i64 %46, 4294967295
  %51 = getelementptr inbounds i8, ptr %49, i64 %50
  br label %52

52:                                               ; preds = %45, %48
  %53 = phi ptr [ %51, %48 ], [ null, %45 ]
  %54 = zext i32 %44 to i64
  %55 = sub nsw i64 %54, %46
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %53, i64 noundef %55, i32 noundef 0) #11
  %56 = load i32, ptr %6, align 4, !tbaa !79
  %57 = zext i32 %56 to i64
  store i64 %57, ptr %11, align 8, !tbaa !80
  %58 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %58) #10
  %59 = load ptr, ptr %0, align 8, !tbaa !47
  %60 = getelementptr inbounds %struct.z_stream_s, ptr %59, i64 0, i32 4
  %61 = load i32, ptr %60, align 8, !tbaa !119
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %110, label %63

63:                                               ; preds = %52, %20
  br label %12

64:                                               ; preds = %18
  %65 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 0, ptr %65, align 4, !tbaa !81
  %66 = icmp eq i32 %1, 4
  br i1 %66, label %67, label %87

67:                                               ; preds = %64
  %68 = load i64, ptr %11, align 8, !tbaa !80
  %69 = icmp sgt i64 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load ptr, ptr %5, align 8, !tbaa !60
  %72 = and i64 %68, 4294967295
  %73 = getelementptr inbounds i8, ptr %71, i64 %72
  br label %74

74:                                               ; preds = %67, %70
  %75 = phi ptr [ %73, %70 ], [ null, %67 ]
  %76 = load i32, ptr %6, align 4, !tbaa !79
  %77 = zext i32 %76 to i64
  %78 = sub nsw i64 %77, %68
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %75, i64 noundef %78, i32 noundef 1) #11
  %79 = load i32, ptr %6, align 4, !tbaa !79
  %80 = zext i32 %79 to i64
  store i64 %80, ptr %11, align 8, !tbaa !80
  %81 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %81) #10
  %82 = load ptr, ptr %0, align 8, !tbaa !47
  %83 = getelementptr inbounds %struct.z_stream_s, ptr %82, i64 0, i32 4
  %84 = load i32, ptr %83, align 8, !tbaa !119
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 2, i32 3
  br label %110

87:                                               ; preds = %64
  %88 = load i32, ptr %8, align 4, !tbaa !140
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %109, label %90

90:                                               ; preds = %87
  %91 = load i64, ptr %11, align 8, !tbaa !80
  %92 = icmp sgt i64 %91, -1
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load ptr, ptr %5, align 8, !tbaa !60
  %95 = and i64 %91, 4294967295
  %96 = getelementptr inbounds i8, ptr %94, i64 %95
  br label %97

97:                                               ; preds = %90, %93
  %98 = phi ptr [ %96, %93 ], [ null, %90 ]
  %99 = load i32, ptr %6, align 4, !tbaa !79
  %100 = zext i32 %99 to i64
  %101 = sub nsw i64 %100, %91
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %98, i64 noundef %101, i32 noundef 0) #11
  %102 = load i32, ptr %6, align 4, !tbaa !79
  %103 = zext i32 %102 to i64
  store i64 %103, ptr %11, align 8, !tbaa !80
  %104 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %104) #10
  %105 = load ptr, ptr %0, align 8, !tbaa !47
  %106 = getelementptr inbounds %struct.z_stream_s, ptr %105, i64 0, i32 4
  %107 = load i32, ptr %106, align 8, !tbaa !119
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %97, %87
  br label %110

110:                                              ; preds = %52, %97, %74, %18, %109
  %111 = phi i32 [ 1, %109 ], [ 0, %18 ], [ %86, %74 ], [ 0, %97 ], [ 0, %52 ]
  ret i32 %111
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @deflate_rle(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !141 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %5 = icmp eq i32 %1, 0
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 49
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  br label %13

13:                                               ; preds = %143, %2
  %14 = load i32, ptr %3, align 4, !tbaa !76
  %15 = icmp ult i32 %14, 259
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  store i32 0, ptr %4, align 8, !tbaa !89
  %17 = load i32, ptr %6, align 4, !tbaa !79
  br label %27

18:                                               ; preds = %13
  tail call fastcc void @fill_window(ptr noundef nonnull %0) #10
  %19 = load i32, ptr %3, align 4, !tbaa !76
  %20 = icmp ult i32 %19, 259
  %21 = and i1 %5, %20
  br i1 %21, label %237, label %22

22:                                               ; preds = %18
  %23 = icmp eq i32 %19, 0
  br i1 %23, label %191, label %24

24:                                               ; preds = %22
  store i32 0, ptr %4, align 8, !tbaa !89
  %25 = icmp ugt i32 %19, 2
  %26 = load i32, ptr %6, align 4, !tbaa !79
  br i1 %25, label %27, label %144

27:                                               ; preds = %16, %24
  %28 = phi i32 [ %17, %16 ], [ %26, %24 ]
  %29 = phi i32 [ %14, %16 ], [ %19, %24 ]
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %144, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %7, align 8, !tbaa !60
  %33 = zext i32 %28 to i64
  %34 = getelementptr inbounds i8, ptr %32, i64 %33
  %35 = getelementptr inbounds i8, ptr %34, i64 -1
  %36 = load i8, ptr %35, align 1, !tbaa !35
  %37 = load i8, ptr %34, align 1, !tbaa !35
  %38 = icmp eq i8 %36, %37
  br i1 %38, label %39, label %144

39:                                               ; preds = %31
  %40 = getelementptr inbounds i8, ptr %34, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !35
  %42 = icmp eq i8 %36, %41
  br i1 %42, label %43, label %144

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %34, i64 2
  %45 = load i8, ptr %44, align 1, !tbaa !35
  %46 = icmp eq i8 %36, %45
  br i1 %46, label %47, label %144

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %34, i64 258
  br label %49

49:                                               ; preds = %79, %47
  %50 = phi i64 [ 2, %47 ], [ %80, %79 ]
  %51 = getelementptr inbounds i8, ptr %34, i64 %50
  %52 = getelementptr inbounds i8, ptr %51, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !35
  %54 = icmp eq i8 %36, %53
  br i1 %54, label %55, label %100

55:                                               ; preds = %49
  %56 = getelementptr inbounds i8, ptr %51, i64 2
  %57 = load i8, ptr %56, align 1, !tbaa !35
  %58 = icmp eq i8 %36, %57
  br i1 %58, label %59, label %98

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %51, i64 3
  %61 = load i8, ptr %60, align 1, !tbaa !35
  %62 = icmp eq i8 %36, %61
  br i1 %62, label %63, label %96

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %51, i64 4
  %65 = load i8, ptr %64, align 1, !tbaa !35
  %66 = icmp eq i8 %36, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %51, i64 5
  %69 = load i8, ptr %68, align 1, !tbaa !35
  %70 = icmp eq i8 %36, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %67
  %72 = getelementptr inbounds i8, ptr %51, i64 6
  %73 = load i8, ptr %72, align 1, !tbaa !35
  %74 = icmp eq i8 %36, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = getelementptr inbounds i8, ptr %51, i64 7
  %77 = load i8, ptr %76, align 1, !tbaa !35
  %78 = icmp eq i8 %36, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = add nuw nsw i64 %50, 8
  %81 = getelementptr inbounds i8, ptr %34, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !35
  %83 = icmp eq i8 %36, %82
  %84 = icmp ult i64 %50, 250
  %85 = and i1 %84, %83
  br i1 %85, label %49, label %86, !llvm.loop !142

86:                                               ; preds = %79
  %87 = getelementptr inbounds i8, ptr %34, i64 %80
  br label %102

88:                                               ; preds = %75
  %89 = getelementptr inbounds i8, ptr %51, i64 7
  br label %102

90:                                               ; preds = %71
  %91 = getelementptr inbounds i8, ptr %51, i64 6
  br label %102

92:                                               ; preds = %67
  %93 = getelementptr inbounds i8, ptr %51, i64 5
  br label %102

94:                                               ; preds = %63
  %95 = getelementptr inbounds i8, ptr %51, i64 4
  br label %102

96:                                               ; preds = %59
  %97 = getelementptr inbounds i8, ptr %51, i64 3
  br label %102

98:                                               ; preds = %55
  %99 = getelementptr inbounds i8, ptr %51, i64 2
  br label %102

100:                                              ; preds = %49
  %101 = getelementptr inbounds i8, ptr %51, i64 1
  br label %102

102:                                              ; preds = %100, %98, %96, %94, %92, %90, %88, %86
  %103 = phi ptr [ %87, %86 ], [ %89, %88 ], [ %91, %90 ], [ %93, %92 ], [ %95, %94 ], [ %97, %96 ], [ %99, %98 ], [ %101, %100 ]
  %104 = ptrtoint ptr %48 to i64
  %105 = ptrtoint ptr %103 to i64
  %106 = sub i64 %105, %104
  %107 = trunc i64 %106 to i32
  %108 = add i32 %107, 258
  %109 = tail call i32 @llvm.umin.i32(i32 %108, i32 %29)
  store i32 %109, ptr %4, align 8
  %110 = icmp ugt i32 %109, 2
  %111 = load i32, ptr %9, align 4, !tbaa !140
  br i1 %110, label %112, label %147

112:                                              ; preds = %102
  %113 = trunc i32 %109 to i8
  %114 = add i8 %113, -3
  %115 = load ptr, ptr %8, align 8, !tbaa !70
  %116 = zext i32 %111 to i64
  %117 = getelementptr inbounds i16, ptr %115, i64 %116
  store i16 1, ptr %117, align 2, !tbaa !78
  %118 = load ptr, ptr %10, align 8, !tbaa !71
  %119 = add i32 %111, 1
  store i32 %119, ptr %9, align 4, !tbaa !140
  %120 = getelementptr inbounds i8, ptr %118, i64 %116
  store i8 %114, ptr %120, align 1, !tbaa !35
  %121 = zext i8 %114 to i64
  %122 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !35
  %124 = zext i8 %123 to i64
  %125 = add nuw nsw i64 %124, 257
  %126 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %125
  %127 = load i16, ptr %126, align 4, !tbaa !35
  %128 = add i16 %127, 1
  store i16 %128, ptr %126, align 4, !tbaa !35
  %129 = load i8, ptr @_dist_code, align 1, !tbaa !35
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %130
  %132 = load i16, ptr %131, align 4, !tbaa !35
  %133 = add i16 %132, 1
  store i16 %133, ptr %131, align 4, !tbaa !35
  %134 = load i32, ptr %9, align 4, !tbaa !140
  %135 = load i32, ptr %11, align 8, !tbaa !64
  %136 = add i32 %135, -1
  %137 = icmp eq i32 %134, %136
  %138 = load i32, ptr %4, align 8, !tbaa !89
  %139 = load i32, ptr %3, align 4, !tbaa !76
  %140 = sub i32 %139, %138
  store i32 %140, ptr %3, align 4, !tbaa !76
  %141 = load i32, ptr %6, align 4, !tbaa !79
  %142 = add i32 %141, %138
  store i32 %142, ptr %6, align 4, !tbaa !79
  store i32 0, ptr %4, align 8, !tbaa !89
  br i1 %137, label %172, label %143

143:                                              ; preds = %112, %180, %147
  br label %13

144:                                              ; preds = %31, %39, %43, %27, %24
  %145 = phi i32 [ %26, %24 ], [ %28, %27 ], [ %28, %43 ], [ %28, %39 ], [ %28, %31 ]
  %146 = load i32, ptr %9, align 4, !tbaa !140
  br label %147

147:                                              ; preds = %144, %102
  %148 = phi i32 [ %111, %102 ], [ %146, %144 ]
  %149 = phi i32 [ %28, %102 ], [ %145, %144 ]
  %150 = load ptr, ptr %7, align 8, !tbaa !60
  %151 = zext i32 %149 to i64
  %152 = getelementptr inbounds i8, ptr %150, i64 %151
  %153 = load i8, ptr %152, align 1, !tbaa !35
  %154 = load ptr, ptr %8, align 8, !tbaa !70
  %155 = zext i32 %148 to i64
  %156 = getelementptr inbounds i16, ptr %154, i64 %155
  store i16 0, ptr %156, align 2, !tbaa !78
  %157 = load ptr, ptr %10, align 8, !tbaa !71
  %158 = add i32 %148, 1
  store i32 %158, ptr %9, align 4, !tbaa !140
  %159 = getelementptr inbounds i8, ptr %157, i64 %155
  store i8 %153, ptr %159, align 1, !tbaa !35
  %160 = zext i8 %153 to i64
  %161 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %160
  %162 = load i16, ptr %161, align 4, !tbaa !35
  %163 = add i16 %162, 1
  store i16 %163, ptr %161, align 4, !tbaa !35
  %164 = load i32, ptr %9, align 4, !tbaa !140
  %165 = load i32, ptr %11, align 8, !tbaa !64
  %166 = add i32 %165, -1
  %167 = icmp eq i32 %164, %166
  %168 = load i32, ptr %3, align 4, !tbaa !76
  %169 = add i32 %168, -1
  store i32 %169, ptr %3, align 4, !tbaa !76
  %170 = load i32, ptr %6, align 4, !tbaa !79
  %171 = add i32 %170, 1
  store i32 %171, ptr %6, align 4, !tbaa !79
  br i1 %167, label %172, label %143

172:                                              ; preds = %112, %147
  %173 = phi i32 [ %142, %112 ], [ %171, %147 ]
  %174 = load i64, ptr %12, align 8, !tbaa !80
  %175 = icmp sgt i64 %174, -1
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load ptr, ptr %7, align 8, !tbaa !60
  %178 = and i64 %174, 4294967295
  %179 = getelementptr inbounds i8, ptr %177, i64 %178
  br label %180

180:                                              ; preds = %172, %176
  %181 = phi ptr [ %179, %176 ], [ null, %172 ]
  %182 = zext i32 %173 to i64
  %183 = sub nsw i64 %182, %174
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %181, i64 noundef %183, i32 noundef 0) #11
  %184 = load i32, ptr %6, align 4, !tbaa !79
  %185 = zext i32 %184 to i64
  store i64 %185, ptr %12, align 8, !tbaa !80
  %186 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %186) #10
  %187 = load ptr, ptr %0, align 8, !tbaa !47
  %188 = getelementptr inbounds %struct.z_stream_s, ptr %187, i64 0, i32 4
  %189 = load i32, ptr %188, align 8, !tbaa !119
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %237, label %143

191:                                              ; preds = %22
  %192 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 0, ptr %192, align 4, !tbaa !81
  %193 = icmp eq i32 %1, 4
  br i1 %193, label %194, label %214

194:                                              ; preds = %191
  %195 = load i64, ptr %12, align 8, !tbaa !80
  %196 = icmp sgt i64 %195, -1
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load ptr, ptr %7, align 8, !tbaa !60
  %199 = and i64 %195, 4294967295
  %200 = getelementptr inbounds i8, ptr %198, i64 %199
  br label %201

201:                                              ; preds = %194, %197
  %202 = phi ptr [ %200, %197 ], [ null, %194 ]
  %203 = load i32, ptr %6, align 4, !tbaa !79
  %204 = zext i32 %203 to i64
  %205 = sub nsw i64 %204, %195
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %202, i64 noundef %205, i32 noundef 1) #11
  %206 = load i32, ptr %6, align 4, !tbaa !79
  %207 = zext i32 %206 to i64
  store i64 %207, ptr %12, align 8, !tbaa !80
  %208 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %208) #10
  %209 = load ptr, ptr %0, align 8, !tbaa !47
  %210 = getelementptr inbounds %struct.z_stream_s, ptr %209, i64 0, i32 4
  %211 = load i32, ptr %210, align 8, !tbaa !119
  %212 = icmp eq i32 %211, 0
  %213 = select i1 %212, i32 2, i32 3
  br label %237

214:                                              ; preds = %191
  %215 = load i32, ptr %9, align 4, !tbaa !140
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %236, label %217

217:                                              ; preds = %214
  %218 = load i64, ptr %12, align 8, !tbaa !80
  %219 = icmp sgt i64 %218, -1
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = load ptr, ptr %7, align 8, !tbaa !60
  %222 = and i64 %218, 4294967295
  %223 = getelementptr inbounds i8, ptr %221, i64 %222
  br label %224

224:                                              ; preds = %217, %220
  %225 = phi ptr [ %223, %220 ], [ null, %217 ]
  %226 = load i32, ptr %6, align 4, !tbaa !79
  %227 = zext i32 %226 to i64
  %228 = sub nsw i64 %227, %218
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %225, i64 noundef %228, i32 noundef 0) #11
  %229 = load i32, ptr %6, align 4, !tbaa !79
  %230 = zext i32 %229 to i64
  store i64 %230, ptr %12, align 8, !tbaa !80
  %231 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %231) #10
  %232 = load ptr, ptr %0, align 8, !tbaa !47
  %233 = getelementptr inbounds %struct.z_stream_s, ptr %232, i64 0, i32 4
  %234 = load i32, ptr %233, align 8, !tbaa !119
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %224, %214
  br label %237

237:                                              ; preds = %180, %18, %224, %201, %236
  %238 = phi i32 [ 1, %236 ], [ %213, %201 ], [ 0, %224 ], [ 0, %18 ], [ 0, %180 ]
  ret i32 %238
}

; Function Attrs: optsize
declare hidden void @_tr_align(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare hidden void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @deflateCopy(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  br i1 %5, label %102, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %102, label %10

10:                                               ; preds = %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %0, ptr noundef nonnull align 1 dereferenceable(112) %1, i64 112, i1 false)
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = tail call ptr %12(ptr noundef %14, i32 noundef 1, i32 noundef 5936) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %102, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %15, ptr %18, align 8, !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5936) %15, ptr noundef nonnull align 1 dereferenceable(5936) %8, i64 5936, i1 false)
  store ptr %0, ptr %15, align 8, !tbaa !47
  %19 = load ptr, ptr %11, align 8, !tbaa !43
  %20 = load ptr, ptr %13, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 11
  %22 = load i32, ptr %21, align 4, !tbaa !54
  %23 = tail call ptr %19(ptr noundef %20, i32 noundef %22, i32 noundef 2) #11
  %24 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 14
  store ptr %23, ptr %24, align 8, !tbaa !60
  %25 = load ptr, ptr %11, align 8, !tbaa !43
  %26 = load ptr, ptr %13, align 8, !tbaa !44
  %27 = load i32, ptr %21, align 4, !tbaa !54
  %28 = tail call ptr %25(ptr noundef %26, i32 noundef %27, i32 noundef 2) #11
  %29 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 16
  store ptr %28, ptr %29, align 8, !tbaa !61
  %30 = load ptr, ptr %11, align 8, !tbaa !43
  %31 = load ptr, ptr %13, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 19
  %33 = load i32, ptr %32, align 4, !tbaa !57
  %34 = tail call ptr %30(ptr noundef %31, i32 noundef %33, i32 noundef 2) #11
  %35 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 17
  store ptr %34, ptr %35, align 8, !tbaa !62
  %36 = load ptr, ptr %11, align 8, !tbaa !43
  %37 = load ptr, ptr %13, align 8, !tbaa !44
  %38 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 49
  %39 = load i32, ptr %38, align 8, !tbaa !64
  %40 = tail call ptr %36(ptr noundef %37, i32 noundef %39, i32 noundef 4) #11
  %41 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !65
  %42 = load ptr, ptr %24, align 8, !tbaa !60
  %43 = icmp eq ptr %42, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %17
  %45 = load ptr, ptr %29, align 8, !tbaa !61
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %35, align 8, !tbaa !62
  %49 = icmp eq ptr %48, null
  %50 = icmp eq ptr %40, null
  %51 = select i1 %49, i1 true, i1 %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %47, %44, %17
  %53 = tail call i32 @deflateEnd(ptr noundef nonnull %0) #10, !range !69
  br label %102

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !60
  %57 = load i32, ptr %21, align 4, !tbaa !54
  %58 = shl i32 %57, 1
  %59 = zext i32 %58 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %42, ptr align 1 %56, i64 %59, i1 false)
  %60 = load ptr, ptr %29, align 8, !tbaa !61
  %61 = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 16
  %62 = load ptr, ptr %61, align 8, !tbaa !61
  %63 = load i32, ptr %21, align 4, !tbaa !54
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %62, i64 %65, i1 false)
  %66 = load ptr, ptr %35, align 8, !tbaa !62
  %67 = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 17
  %68 = load ptr, ptr %67, align 8, !tbaa !62
  %69 = load i32, ptr %32, align 4, !tbaa !57
  %70 = zext i32 %69 to i64
  %71 = shl nuw nsw i64 %70, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr align 1 %68, i64 %71, i1 false)
  %72 = load ptr, ptr %41, align 8, !tbaa !65
  %73 = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !65
  %75 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 3
  %76 = load i64, ptr %75, align 8, !tbaa !66
  %77 = and i64 %76, 4294967295
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %72, ptr align 1 %74, i64 %77, i1 false)
  %78 = load ptr, ptr %41, align 8, !tbaa !65
  %79 = getelementptr inbounds %struct.internal_state, ptr %8, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !101
  %81 = load ptr, ptr %73, align 8, !tbaa !65
  %82 = ptrtoint ptr %80 to i64
  %83 = ptrtoint ptr %81 to i64
  %84 = sub i64 %82, %83
  %85 = getelementptr inbounds i8, ptr %78, i64 %84
  %86 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 4
  store ptr %85, ptr %86, align 8, !tbaa !101
  %87 = load i32, ptr %38, align 8, !tbaa !64
  %88 = lshr i32 %87, 1
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds i16, ptr %40, i64 %89
  %91 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 51
  store ptr %90, ptr %91, align 8, !tbaa !70
  %92 = zext i32 %87 to i64
  %93 = mul nuw nsw i64 %92, 3
  %94 = getelementptr inbounds i8, ptr %78, i64 %93
  %95 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 48
  store ptr %94, ptr %95, align 8, !tbaa !71
  %96 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 37
  %97 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 40
  store ptr %96, ptr %97, align 8, !tbaa !143
  %98 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 38
  %99 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 41
  store ptr %98, ptr %99, align 8, !tbaa !144
  %100 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 39
  %101 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 42
  store ptr %100, ptr %101, align 8, !tbaa !145
  br label %102

102:                                              ; preds = %10, %2, %6, %54, %52
  %103 = phi i32 [ -4, %52 ], [ 0, %54 ], [ -2, %6 ], [ -2, %2 ], [ -4, %10 ]
  ret i32 %103
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 !PGOFuncName !146 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !66
  %5 = add i64 %4, -5
  %6 = tail call i64 @llvm.umin.i64(i64 %5, i64 65535)
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  br label %12

12:                                               ; preds = %78, %2
  %13 = load i32, ptr %7, align 4, !tbaa !76
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  tail call fastcc void @fill_window(ptr noundef nonnull %0) #10
  %16 = load i32, ptr %7, align 4, !tbaa !76
  %17 = or i32 %16, %1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %123, label %19

19:                                               ; preds = %15
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %79, label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ %16, %19 ], [ %13, %12 ]
  %23 = load i32, ptr %8, align 4, !tbaa !79
  %24 = add i32 %23, %22
  store i32 %24, ptr %8, align 4, !tbaa !79
  store i32 0, ptr %7, align 4, !tbaa !76
  %25 = load i64, ptr %9, align 8, !tbaa !80
  %26 = add i64 %25, %6
  %27 = icmp ne i32 %24, 0
  %28 = zext i32 %24 to i64
  %29 = icmp ugt i64 %26, %28
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %53, label %31

31:                                               ; preds = %21
  %32 = trunc i64 %26 to i32
  %33 = sub i32 %24, %32
  store i32 %33, ptr %7, align 4, !tbaa !76
  store i32 %32, ptr %8, align 4, !tbaa !79
  %34 = icmp sgt i64 %25, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load ptr, ptr %10, align 8, !tbaa !60
  %37 = and i64 %25, 4294967295
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  br label %39

39:                                               ; preds = %31, %35
  %40 = phi ptr [ %38, %35 ], [ null, %31 ]
  %41 = and i64 %26, 4294967295
  %42 = sub nsw i64 %41, %25
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %40, i64 noundef %42, i32 noundef 0) #11
  %43 = load i32, ptr %8, align 4, !tbaa !79
  %44 = zext i32 %43 to i64
  store i64 %44, ptr %9, align 8, !tbaa !80
  %45 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %45) #10
  %46 = load ptr, ptr %0, align 8, !tbaa !47
  %47 = getelementptr inbounds %struct.z_stream_s, ptr %46, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !119
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %123, label %50

50:                                               ; preds = %39
  %51 = load i32, ptr %8, align 4, !tbaa !79
  %52 = load i64, ptr %9, align 8, !tbaa !80
  br label %53

53:                                               ; preds = %50, %21
  %54 = phi i64 [ %52, %50 ], [ %25, %21 ]
  %55 = phi i32 [ %51, %50 ], [ %24, %21 ]
  %56 = trunc i64 %54 to i32
  %57 = sub i32 %55, %56
  %58 = load i32, ptr %11, align 4, !tbaa !54
  %59 = add i32 %58, -262
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %78, label %61

61:                                               ; preds = %53
  %62 = icmp sgt i64 %54, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = load ptr, ptr %10, align 8, !tbaa !60
  %65 = and i64 %54, 4294967295
  %66 = getelementptr inbounds i8, ptr %64, i64 %65
  br label %67

67:                                               ; preds = %61, %63
  %68 = phi ptr [ %66, %63 ], [ null, %61 ]
  %69 = zext i32 %55 to i64
  %70 = sub nsw i64 %69, %54
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %68, i64 noundef %70, i32 noundef 0) #11
  %71 = load i32, ptr %8, align 4, !tbaa !79
  %72 = zext i32 %71 to i64
  store i64 %72, ptr %9, align 8, !tbaa !80
  %73 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %73) #10
  %74 = load ptr, ptr %0, align 8, !tbaa !47
  %75 = getelementptr inbounds %struct.z_stream_s, ptr %74, i64 0, i32 4
  %76 = load i32, ptr %75, align 8, !tbaa !119
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %123, label %78

78:                                               ; preds = %67, %53
  br label %12

79:                                               ; preds = %19
  %80 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 0, ptr %80, align 4, !tbaa !81
  %81 = icmp eq i32 %1, 4
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = load i64, ptr %9, align 8, !tbaa !80
  %84 = icmp sgt i64 %83, -1
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load ptr, ptr %10, align 8, !tbaa !60
  %87 = and i64 %83, 4294967295
  %88 = getelementptr inbounds i8, ptr %86, i64 %87
  br label %89

89:                                               ; preds = %82, %85
  %90 = phi ptr [ %88, %85 ], [ null, %82 ]
  %91 = load i32, ptr %8, align 4, !tbaa !79
  %92 = zext i32 %91 to i64
  %93 = sub nsw i64 %92, %83
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %90, i64 noundef %93, i32 noundef 1) #11
  %94 = load i32, ptr %8, align 4, !tbaa !79
  %95 = zext i32 %94 to i64
  store i64 %95, ptr %9, align 8, !tbaa !80
  %96 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %96) #10
  %97 = load ptr, ptr %0, align 8, !tbaa !47
  %98 = getelementptr inbounds %struct.z_stream_s, ptr %97, i64 0, i32 4
  %99 = load i32, ptr %98, align 8, !tbaa !119
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, i32 2, i32 3
  br label %123

102:                                              ; preds = %79
  %103 = load i32, ptr %8, align 4, !tbaa !79
  %104 = zext i32 %103 to i64
  %105 = load i64, ptr %9, align 8, !tbaa !80
  %106 = icmp slt i64 %105, %104
  br i1 %106, label %107, label %122

107:                                              ; preds = %102
  %108 = icmp sgt i64 %105, -1
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load ptr, ptr %10, align 8, !tbaa !60
  %111 = getelementptr inbounds i8, ptr %110, i64 %105
  br label %112

112:                                              ; preds = %107, %109
  %113 = phi ptr [ %111, %109 ], [ null, %107 ]
  %114 = sub nsw i64 %104, %105
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %113, i64 noundef %114, i32 noundef 0) #11
  %115 = load i32, ptr %8, align 4, !tbaa !79
  %116 = zext i32 %115 to i64
  store i64 %116, ptr %9, align 8, !tbaa !80
  %117 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %117) #10
  %118 = load ptr, ptr %0, align 8, !tbaa !47
  %119 = getelementptr inbounds %struct.z_stream_s, ptr %118, i64 0, i32 4
  %120 = load i32, ptr %119, align 8, !tbaa !119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %112, %102
  br label %123

123:                                              ; preds = %67, %39, %15, %112, %89, %122
  %124 = phi i32 [ 1, %122 ], [ %101, %89 ], [ 0, %112 ], [ 0, %15 ], [ 0, %39 ], [ 0, %67 ]
  ret i32 %124
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @deflate_fast(ptr noundef %0, i32 noundef %1) #0 !PGOFuncName !147 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 49
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 32
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  br label %22

22:                                               ; preds = %168, %2
  %23 = load i32, ptr %3, align 4, !tbaa !76
  %24 = icmp ult i32 %23, 262
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  tail call fastcc void @fill_window(ptr noundef nonnull %0) #10
  %26 = load i32, ptr %3, align 4, !tbaa !76
  %27 = icmp ult i32 %26, 262
  %28 = and i1 %4, %27
  br i1 %28, label %259, label %29

29:                                               ; preds = %25
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %213, label %31

31:                                               ; preds = %29
  %32 = icmp ugt i32 %26, 2
  br i1 %32, label %33, label %66

33:                                               ; preds = %22, %31
  %34 = load i32, ptr %5, align 8, !tbaa !84
  %35 = load i32, ptr %6, align 8, !tbaa !59
  %36 = shl i32 %34, %35
  %37 = load ptr, ptr %7, align 8, !tbaa !60
  %38 = load i32, ptr %8, align 4, !tbaa !79
  %39 = add i32 %38, 2
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %37, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !35
  %43 = zext i8 %42 to i32
  %44 = xor i32 %36, %43
  %45 = load i32, ptr %9, align 4, !tbaa !58
  %46 = and i32 %44, %45
  store i32 %46, ptr %5, align 8, !tbaa !84
  %47 = load ptr, ptr %10, align 8, !tbaa !62
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds i16, ptr %47, i64 %48
  %50 = load i16, ptr %49, align 2, !tbaa !78
  %51 = load ptr, ptr %11, align 8, !tbaa !61
  %52 = load i32, ptr %12, align 4, !tbaa !55
  %53 = and i32 %52, %38
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i16, ptr %51, i64 %54
  store i16 %50, ptr %55, align 2, !tbaa !78
  %56 = zext i16 %50 to i32
  %57 = trunc i32 %38 to i16
  store i16 %57, ptr %49, align 2, !tbaa !78
  %58 = icmp eq i16 %50, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %33
  %60 = sub i32 %38, %56
  %61 = load i32, ptr %13, align 4, !tbaa !54
  %62 = add i32 %61, -262
  %63 = icmp ugt i32 %60, %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %56) #10
  store i32 %65, ptr %14, align 8, !tbaa !89
  br label %68

66:                                               ; preds = %33, %59, %31
  %67 = load i32, ptr %14, align 8, !tbaa !89
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %67, %66 ], [ %65, %64 ]
  %70 = icmp ugt i32 %69, 2
  br i1 %70, label %71, label %169

71:                                               ; preds = %68
  %72 = trunc i32 %69 to i8
  %73 = add i8 %72, -3
  %74 = load i32, ptr %8, align 4, !tbaa !79
  %75 = load i32, ptr %19, align 8, !tbaa !148
  %76 = sub i32 %74, %75
  %77 = trunc i32 %76 to i16
  %78 = load ptr, ptr %15, align 8, !tbaa !70
  %79 = load i32, ptr %16, align 4, !tbaa !140
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i16, ptr %78, i64 %80
  store i16 %77, ptr %81, align 2, !tbaa !78
  %82 = load ptr, ptr %17, align 8, !tbaa !71
  %83 = add i32 %79, 1
  store i32 %83, ptr %16, align 4, !tbaa !140
  %84 = getelementptr inbounds i8, ptr %82, i64 %80
  store i8 %73, ptr %84, align 1, !tbaa !35
  %85 = add i16 %77, -1
  %86 = zext i8 %73 to i64
  %87 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !35
  %89 = zext i8 %88 to i64
  %90 = add nuw nsw i64 %89, 257
  %91 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %90
  %92 = load i16, ptr %91, align 4, !tbaa !35
  %93 = add i16 %92, 1
  store i16 %93, ptr %91, align 4, !tbaa !35
  %94 = icmp ult i16 %85, 256
  %95 = lshr i16 %85, 7
  %96 = add nuw nsw i16 %95, 256
  %97 = select i1 %94, i16 %85, i16 %96
  %98 = zext i16 %97 to i64
  %99 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !35
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %101
  %103 = load i16, ptr %102, align 4, !tbaa !35
  %104 = add i16 %103, 1
  store i16 %104, ptr %102, align 4, !tbaa !35
  %105 = load i32, ptr %16, align 4, !tbaa !140
  %106 = load i32, ptr %18, align 8, !tbaa !64
  %107 = add i32 %106, -1
  %108 = icmp eq i32 %105, %107
  %109 = load i32, ptr %14, align 8, !tbaa !89
  %110 = load i32, ptr %3, align 4, !tbaa !76
  %111 = sub i32 %110, %109
  store i32 %111, ptr %3, align 4, !tbaa !76
  %112 = load i32, ptr %20, align 8, !tbaa !106
  %113 = icmp ule i32 %109, %112
  %114 = icmp ugt i32 %111, 2
  %115 = select i1 %113, i1 %114, i1 false
  br i1 %115, label %116, label %150

116:                                              ; preds = %71
  %117 = add i32 %109, -1
  store i32 %117, ptr %14, align 8, !tbaa !89
  %118 = load i32, ptr %6, align 8, !tbaa !59
  %119 = load ptr, ptr %7, align 8, !tbaa !60
  %120 = load i32, ptr %9, align 4, !tbaa !58
  %121 = load ptr, ptr %10, align 8, !tbaa !62
  %122 = load ptr, ptr %11, align 8, !tbaa !61
  %123 = load i32, ptr %12, align 4, !tbaa !55
  %124 = load i32, ptr %8, align 4, !tbaa !79
  %125 = load i32, ptr %5, align 8, !tbaa !84
  br label %126

126:                                              ; preds = %126, %116
  %127 = phi i32 [ %146, %126 ], [ %117, %116 ]
  %128 = phi i32 [ %138, %126 ], [ %125, %116 ]
  %129 = phi i32 [ %130, %126 ], [ %124, %116 ]
  %130 = add i32 %129, 1
  store i32 %130, ptr %8, align 4, !tbaa !79
  %131 = shl i32 %128, %118
  %132 = add i32 %129, 3
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, ptr %119, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !35
  %136 = zext i8 %135 to i32
  %137 = xor i32 %131, %136
  %138 = and i32 %137, %120
  store i32 %138, ptr %5, align 8, !tbaa !84
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i16, ptr %121, i64 %139
  %141 = load i16, ptr %140, align 2, !tbaa !78
  %142 = and i32 %123, %130
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i16, ptr %122, i64 %143
  store i16 %141, ptr %144, align 2, !tbaa !78
  %145 = trunc i32 %130 to i16
  store i16 %145, ptr %140, align 2, !tbaa !78
  %146 = add i32 %127, -1
  store i32 %146, ptr %14, align 8, !tbaa !89
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %126, !llvm.loop !149

148:                                              ; preds = %126
  %149 = add i32 %129, 2
  store i32 %149, ptr %8, align 4, !tbaa !79
  br i1 %108, label %194, label %168

150:                                              ; preds = %71
  %151 = load i32, ptr %8, align 4, !tbaa !79
  %152 = add i32 %151, %109
  store i32 %152, ptr %8, align 4, !tbaa !79
  store i32 0, ptr %14, align 8, !tbaa !89
  %153 = load ptr, ptr %7, align 8, !tbaa !60
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds i8, ptr %153, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !35
  %157 = zext i8 %156 to i32
  store i32 %157, ptr %5, align 8, !tbaa !84
  %158 = load i32, ptr %6, align 8, !tbaa !59
  %159 = shl i32 %157, %158
  %160 = add i32 %152, 1
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %153, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !35
  %164 = zext i8 %163 to i32
  %165 = xor i32 %159, %164
  %166 = load i32, ptr %9, align 4, !tbaa !58
  %167 = and i32 %165, %166
  store i32 %167, ptr %5, align 8, !tbaa !84
  br i1 %108, label %194, label %168

168:                                              ; preds = %150, %148, %202, %169
  br label %22

169:                                              ; preds = %68
  %170 = load ptr, ptr %7, align 8, !tbaa !60
  %171 = load i32, ptr %8, align 4, !tbaa !79
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds i8, ptr %170, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !35
  %175 = load ptr, ptr %15, align 8, !tbaa !70
  %176 = load i32, ptr %16, align 4, !tbaa !140
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i16, ptr %175, i64 %177
  store i16 0, ptr %178, align 2, !tbaa !78
  %179 = load ptr, ptr %17, align 8, !tbaa !71
  %180 = add i32 %176, 1
  store i32 %180, ptr %16, align 4, !tbaa !140
  %181 = getelementptr inbounds i8, ptr %179, i64 %177
  store i8 %174, ptr %181, align 1, !tbaa !35
  %182 = zext i8 %174 to i64
  %183 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %182
  %184 = load i16, ptr %183, align 4, !tbaa !35
  %185 = add i16 %184, 1
  store i16 %185, ptr %183, align 4, !tbaa !35
  %186 = load i32, ptr %16, align 4, !tbaa !140
  %187 = load i32, ptr %18, align 8, !tbaa !64
  %188 = add i32 %187, -1
  %189 = icmp eq i32 %186, %188
  %190 = load i32, ptr %3, align 4, !tbaa !76
  %191 = add i32 %190, -1
  store i32 %191, ptr %3, align 4, !tbaa !76
  %192 = load i32, ptr %8, align 4, !tbaa !79
  %193 = add i32 %192, 1
  store i32 %193, ptr %8, align 4, !tbaa !79
  br i1 %189, label %194, label %168

194:                                              ; preds = %150, %148, %169
  %195 = phi i32 [ %152, %150 ], [ %149, %148 ], [ %193, %169 ]
  %196 = load i64, ptr %21, align 8, !tbaa !80
  %197 = icmp sgt i64 %196, -1
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = load ptr, ptr %7, align 8, !tbaa !60
  %200 = and i64 %196, 4294967295
  %201 = getelementptr inbounds i8, ptr %199, i64 %200
  br label %202

202:                                              ; preds = %194, %198
  %203 = phi ptr [ %201, %198 ], [ null, %194 ]
  %204 = zext i32 %195 to i64
  %205 = sub nsw i64 %204, %196
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %203, i64 noundef %205, i32 noundef 0) #11
  %206 = load i32, ptr %8, align 4, !tbaa !79
  %207 = zext i32 %206 to i64
  store i64 %207, ptr %21, align 8, !tbaa !80
  %208 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %208) #10
  %209 = load ptr, ptr %0, align 8, !tbaa !47
  %210 = getelementptr inbounds %struct.z_stream_s, ptr %209, i64 0, i32 4
  %211 = load i32, ptr %210, align 8, !tbaa !119
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %259, label %168

213:                                              ; preds = %29
  %214 = load i32, ptr %8, align 4, !tbaa !79
  %215 = tail call i32 @llvm.umin.i32(i32 %214, i32 2)
  %216 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 %215, ptr %216, align 4, !tbaa !81
  %217 = icmp eq i32 %1, 4
  br i1 %217, label %218, label %237

218:                                              ; preds = %213
  %219 = load i64, ptr %21, align 8, !tbaa !80
  %220 = icmp sgt i64 %219, -1
  br i1 %220, label %221, label %225

221:                                              ; preds = %218
  %222 = load ptr, ptr %7, align 8, !tbaa !60
  %223 = and i64 %219, 4294967295
  %224 = getelementptr inbounds i8, ptr %222, i64 %223
  br label %225

225:                                              ; preds = %218, %221
  %226 = phi ptr [ %224, %221 ], [ null, %218 ]
  %227 = zext i32 %214 to i64
  %228 = sub nsw i64 %227, %219
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %226, i64 noundef %228, i32 noundef 1) #11
  %229 = load i32, ptr %8, align 4, !tbaa !79
  %230 = zext i32 %229 to i64
  store i64 %230, ptr %21, align 8, !tbaa !80
  %231 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %231) #10
  %232 = load ptr, ptr %0, align 8, !tbaa !47
  %233 = getelementptr inbounds %struct.z_stream_s, ptr %232, i64 0, i32 4
  %234 = load i32, ptr %233, align 8, !tbaa !119
  %235 = icmp eq i32 %234, 0
  %236 = select i1 %235, i32 2, i32 3
  br label %259

237:                                              ; preds = %213
  %238 = load i32, ptr %16, align 4, !tbaa !140
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %258, label %240

240:                                              ; preds = %237
  %241 = load i64, ptr %21, align 8, !tbaa !80
  %242 = icmp sgt i64 %241, -1
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load ptr, ptr %7, align 8, !tbaa !60
  %245 = and i64 %241, 4294967295
  %246 = getelementptr inbounds i8, ptr %244, i64 %245
  br label %247

247:                                              ; preds = %240, %243
  %248 = phi ptr [ %246, %243 ], [ null, %240 ]
  %249 = zext i32 %214 to i64
  %250 = sub nsw i64 %249, %241
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %248, i64 noundef %250, i32 noundef 0) #11
  %251 = load i32, ptr %8, align 4, !tbaa !79
  %252 = zext i32 %251 to i64
  store i64 %252, ptr %21, align 8, !tbaa !80
  %253 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %253) #10
  %254 = load ptr, ptr %0, align 8, !tbaa !47
  %255 = getelementptr inbounds %struct.z_stream_s, ptr %254, i64 0, i32 4
  %256 = load i32, ptr %255, align 8, !tbaa !119
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %247, %237
  br label %259

259:                                              ; preds = %202, %25, %247, %225, %258
  %260 = phi i32 [ 1, %258 ], [ %236, %225 ], [ 0, %247 ], [ 0, %25 ], [ 0, %202 ]
  ret i32 %260
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @deflate_slow(ptr noundef %0, i32 noundef %1) #0 !PGOFuncName !150 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 30
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 32
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 34
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 49
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 26
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  br label %26

26:                                               ; preds = %183, %2
  %27 = load i32, ptr %3, align 4, !tbaa !76
  %28 = icmp ult i32 %27, 262
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr %5, align 8, !tbaa !89
  %31 = load i32, ptr %7, align 8, !tbaa !148
  br label %43

32:                                               ; preds = %26
  tail call fastcc void @fill_window(ptr noundef nonnull %0) #10
  %33 = load i32, ptr %3, align 4, !tbaa !76
  %34 = icmp ult i32 %33, 262
  %35 = and i1 %4, %34
  br i1 %35, label %323, label %36

36:                                               ; preds = %32
  %37 = icmp eq i32 %33, 0
  br i1 %37, label %256, label %38

38:                                               ; preds = %36
  %39 = icmp ugt i32 %33, 2
  %40 = load i32, ptr %5, align 8, !tbaa !89
  %41 = load i32, ptr %7, align 8, !tbaa !148
  br i1 %39, label %43, label %42

42:                                               ; preds = %38
  store i32 %40, ptr %6, align 8, !tbaa !88
  store i32 %41, ptr %8, align 4, !tbaa !151
  store i32 2, ptr %5, align 8, !tbaa !89
  br label %96

43:                                               ; preds = %29, %38
  %44 = phi i32 [ %31, %29 ], [ %41, %38 ]
  %45 = phi i32 [ %30, %29 ], [ %40, %38 ]
  %46 = load i32, ptr %9, align 8, !tbaa !84
  %47 = load i32, ptr %10, align 8, !tbaa !59
  %48 = shl i32 %46, %47
  %49 = load ptr, ptr %11, align 8, !tbaa !60
  %50 = load i32, ptr %12, align 4, !tbaa !79
  %51 = add i32 %50, 2
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %49, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !35
  %55 = zext i8 %54 to i32
  %56 = xor i32 %48, %55
  %57 = load i32, ptr %13, align 4, !tbaa !58
  %58 = and i32 %56, %57
  store i32 %58, ptr %9, align 8, !tbaa !84
  %59 = load ptr, ptr %14, align 8, !tbaa !62
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load i16, ptr %61, align 2, !tbaa !78
  %63 = load ptr, ptr %15, align 8, !tbaa !61
  %64 = load i32, ptr %16, align 4, !tbaa !55
  %65 = and i32 %64, %50
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i16, ptr %63, i64 %66
  store i16 %62, ptr %67, align 2, !tbaa !78
  %68 = zext i16 %62 to i32
  %69 = trunc i32 %50 to i16
  store i16 %69, ptr %61, align 2, !tbaa !78
  store i32 %45, ptr %6, align 8, !tbaa !88
  store i32 %44, ptr %8, align 4, !tbaa !151
  store i32 2, ptr %5, align 8, !tbaa !89
  %70 = icmp eq i16 %62, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %43
  %72 = load i32, ptr %17, align 8, !tbaa !106
  %73 = icmp ult i32 %45, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = sub i32 %50, %68
  %76 = load i32, ptr %18, align 4, !tbaa !54
  %77 = add i32 %76, -262
  %78 = icmp ugt i32 %75, %77
  br i1 %78, label %93, label %79

79:                                               ; preds = %74
  %80 = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %68) #10
  store i32 %80, ptr %5, align 8, !tbaa !89
  %81 = icmp ult i32 %80, 6
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i32, ptr %19, align 8, !tbaa !73
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = icmp eq i32 %80, 3
  br i1 %86, label %87, label %93

87:                                               ; preds = %85
  %88 = load i32, ptr %12, align 4, !tbaa !79
  %89 = load i32, ptr %7, align 8, !tbaa !148
  %90 = sub i32 %88, %89
  %91 = icmp ugt i32 %90, 4096
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %82
  store i32 2, ptr %5, align 8, !tbaa !89
  br label %93

93:                                               ; preds = %71, %74, %92, %87, %85, %79
  %94 = phi i32 [ 2, %71 ], [ 2, %74 ], [ 2, %92 ], [ 3, %87 ], [ %80, %85 ], [ %80, %79 ]
  %95 = load i32, ptr %6, align 8, !tbaa !88
  br label %96

96:                                               ; preds = %93, %42, %43
  %97 = phi i32 [ %95, %93 ], [ %40, %42 ], [ %45, %43 ]
  %98 = phi i32 [ %94, %93 ], [ 2, %42 ], [ 2, %43 ]
  %99 = icmp ult i32 %97, 3
  %100 = icmp ugt i32 %98, %97
  %101 = or i1 %99, %100
  br i1 %101, label %202, label %102

102:                                              ; preds = %96
  %103 = load i32, ptr %12, align 4, !tbaa !79
  %104 = load i32, ptr %3, align 4, !tbaa !76
  %105 = add i32 %103, -3
  %106 = add i32 %105, %104
  %107 = trunc i32 %97 to i8
  %108 = add i8 %107, -3
  %109 = load i32, ptr %8, align 4, !tbaa !151
  %110 = xor i32 %109, -1
  %111 = add i32 %103, %110
  %112 = trunc i32 %111 to i16
  %113 = load ptr, ptr %20, align 8, !tbaa !70
  %114 = load i32, ptr %21, align 4, !tbaa !140
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i16, ptr %113, i64 %115
  store i16 %112, ptr %116, align 2, !tbaa !78
  %117 = load ptr, ptr %22, align 8, !tbaa !71
  %118 = add i32 %114, 1
  store i32 %118, ptr %21, align 4, !tbaa !140
  %119 = getelementptr inbounds i8, ptr %117, i64 %115
  store i8 %108, ptr %119, align 1, !tbaa !35
  %120 = add i16 %112, -1
  %121 = zext i8 %108 to i64
  %122 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !35
  %124 = zext i8 %123 to i64
  %125 = add nuw nsw i64 %124, 257
  %126 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %125
  %127 = load i16, ptr %126, align 4, !tbaa !35
  %128 = add i16 %127, 1
  store i16 %128, ptr %126, align 4, !tbaa !35
  %129 = icmp ult i16 %120, 256
  %130 = lshr i16 %120, 7
  %131 = add nuw nsw i16 %130, 256
  %132 = select i1 %129, i16 %120, i16 %131
  %133 = zext i16 %132 to i64
  %134 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %133
  %135 = load i8, ptr %134, align 1, !tbaa !35
  %136 = zext i8 %135 to i64
  %137 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %136
  %138 = load i16, ptr %137, align 4, !tbaa !35
  %139 = add i16 %138, 1
  store i16 %139, ptr %137, align 4, !tbaa !35
  %140 = load i32, ptr %21, align 4, !tbaa !140
  %141 = load i32, ptr %23, align 8, !tbaa !64
  %142 = add i32 %141, -1
  %143 = load i32, ptr %6, align 8, !tbaa !88
  %144 = load i32, ptr %3, align 4, !tbaa !76
  %145 = sub i32 %144, %143
  %146 = add i32 %145, 1
  store i32 %146, ptr %3, align 4, !tbaa !76
  %147 = add i32 %143, -2
  store i32 %147, ptr %6, align 8, !tbaa !88
  %148 = load i32, ptr %12, align 4, !tbaa !79
  br label %149

149:                                              ; preds = %177, %102
  %150 = phi i32 [ %178, %177 ], [ %147, %102 ]
  %151 = phi i32 [ %152, %177 ], [ %148, %102 ]
  %152 = add i32 %151, 1
  store i32 %152, ptr %12, align 4, !tbaa !79
  %153 = icmp ugt i32 %152, %106
  br i1 %153, label %177, label %154

154:                                              ; preds = %149
  %155 = load i32, ptr %9, align 8, !tbaa !84
  %156 = load i32, ptr %10, align 8, !tbaa !59
  %157 = shl i32 %155, %156
  %158 = load ptr, ptr %11, align 8, !tbaa !60
  %159 = add i32 %151, 3
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i8, ptr %158, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !35
  %163 = zext i8 %162 to i32
  %164 = xor i32 %157, %163
  %165 = load i32, ptr %13, align 4, !tbaa !58
  %166 = and i32 %164, %165
  store i32 %166, ptr %9, align 8, !tbaa !84
  %167 = load ptr, ptr %14, align 8, !tbaa !62
  %168 = zext i32 %166 to i64
  %169 = getelementptr inbounds i16, ptr %167, i64 %168
  %170 = load i16, ptr %169, align 2, !tbaa !78
  %171 = load ptr, ptr %15, align 8, !tbaa !61
  %172 = load i32, ptr %16, align 4, !tbaa !55
  %173 = and i32 %172, %152
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i16, ptr %171, i64 %174
  store i16 %170, ptr %175, align 2, !tbaa !78
  %176 = trunc i32 %152 to i16
  store i16 %176, ptr %169, align 2, !tbaa !78
  br label %177

177:                                              ; preds = %149, %154
  %178 = add i32 %150, -1
  store i32 %178, ptr %6, align 8, !tbaa !88
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %149, !llvm.loop !152

180:                                              ; preds = %177
  %181 = icmp eq i32 %140, %142
  store i32 0, ptr %24, align 8, !tbaa !90
  store i32 2, ptr %5, align 8, !tbaa !89
  %182 = add i32 %151, 2
  store i32 %182, ptr %12, align 4, !tbaa !79
  br i1 %181, label %184, label %183

183:                                              ; preds = %180, %191, %251, %242
  br label %26

184:                                              ; preds = %180
  %185 = load i64, ptr %25, align 8, !tbaa !80
  %186 = icmp sgt i64 %185, -1
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load ptr, ptr %11, align 8, !tbaa !60
  %189 = and i64 %185, 4294967295
  %190 = getelementptr inbounds i8, ptr %188, i64 %189
  br label %191

191:                                              ; preds = %184, %187
  %192 = phi ptr [ %190, %187 ], [ null, %184 ]
  %193 = zext i32 %182 to i64
  %194 = sub nsw i64 %193, %185
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %192, i64 noundef %194, i32 noundef 0) #11
  %195 = load i32, ptr %12, align 4, !tbaa !79
  %196 = zext i32 %195 to i64
  store i64 %196, ptr %25, align 8, !tbaa !80
  %197 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %197) #10
  %198 = load ptr, ptr %0, align 8, !tbaa !47
  %199 = getelementptr inbounds %struct.z_stream_s, ptr %198, i64 0, i32 4
  %200 = load i32, ptr %199, align 8, !tbaa !119
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %323, label %183

202:                                              ; preds = %96
  %203 = load i32, ptr %24, align 8, !tbaa !90
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %251, label %205

205:                                              ; preds = %202
  %206 = load ptr, ptr %11, align 8, !tbaa !60
  %207 = load i32, ptr %12, align 4, !tbaa !79
  %208 = add i32 %207, -1
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i8, ptr %206, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !35
  %212 = load ptr, ptr %20, align 8, !tbaa !70
  %213 = load i32, ptr %21, align 4, !tbaa !140
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds i16, ptr %212, i64 %214
  store i16 0, ptr %215, align 2, !tbaa !78
  %216 = load ptr, ptr %22, align 8, !tbaa !71
  %217 = add i32 %213, 1
  store i32 %217, ptr %21, align 4, !tbaa !140
  %218 = getelementptr inbounds i8, ptr %216, i64 %214
  store i8 %211, ptr %218, align 1, !tbaa !35
  %219 = zext i8 %211 to i64
  %220 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %219
  %221 = load i16, ptr %220, align 4, !tbaa !35
  %222 = add i16 %221, 1
  store i16 %222, ptr %220, align 4, !tbaa !35
  %223 = load i32, ptr %21, align 4, !tbaa !140
  %224 = load i32, ptr %23, align 8, !tbaa !64
  %225 = add i32 %224, -1
  %226 = icmp eq i32 %223, %225
  br i1 %226, label %227, label %242

227:                                              ; preds = %205
  %228 = load i64, ptr %25, align 8, !tbaa !80
  %229 = icmp sgt i64 %228, -1
  br i1 %229, label %230, label %234

230:                                              ; preds = %227
  %231 = load ptr, ptr %11, align 8, !tbaa !60
  %232 = and i64 %228, 4294967295
  %233 = getelementptr inbounds i8, ptr %231, i64 %232
  br label %234

234:                                              ; preds = %227, %230
  %235 = phi ptr [ %233, %230 ], [ null, %227 ]
  %236 = load i32, ptr %12, align 4, !tbaa !79
  %237 = zext i32 %236 to i64
  %238 = sub nsw i64 %237, %228
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %235, i64 noundef %238, i32 noundef 0) #11
  %239 = load i32, ptr %12, align 4, !tbaa !79
  %240 = zext i32 %239 to i64
  store i64 %240, ptr %25, align 8, !tbaa !80
  %241 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %241) #10
  br label %242

242:                                              ; preds = %234, %205
  %243 = load i32, ptr %12, align 4, !tbaa !79
  %244 = add i32 %243, 1
  store i32 %244, ptr %12, align 4, !tbaa !79
  %245 = load i32, ptr %3, align 4, !tbaa !76
  %246 = add i32 %245, -1
  store i32 %246, ptr %3, align 4, !tbaa !76
  %247 = load ptr, ptr %0, align 8, !tbaa !47
  %248 = getelementptr inbounds %struct.z_stream_s, ptr %247, i64 0, i32 4
  %249 = load i32, ptr %248, align 8, !tbaa !119
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %323, label %183

251:                                              ; preds = %202
  store i32 1, ptr %24, align 8, !tbaa !90
  %252 = load i32, ptr %12, align 4, !tbaa !79
  %253 = add i32 %252, 1
  store i32 %253, ptr %12, align 4, !tbaa !79
  %254 = load i32, ptr %3, align 4, !tbaa !76
  %255 = add i32 %254, -1
  store i32 %255, ptr %3, align 4, !tbaa !76
  br label %183

256:                                              ; preds = %36
  %257 = load i32, ptr %24, align 8, !tbaa !90
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %277, label %259

259:                                              ; preds = %256
  %260 = load ptr, ptr %11, align 8, !tbaa !60
  %261 = load i32, ptr %12, align 4, !tbaa !79
  %262 = add i32 %261, -1
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i8, ptr %260, i64 %263
  %265 = load i8, ptr %264, align 1, !tbaa !35
  %266 = load ptr, ptr %20, align 8, !tbaa !70
  %267 = load i32, ptr %21, align 4, !tbaa !140
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i16, ptr %266, i64 %268
  store i16 0, ptr %269, align 2, !tbaa !78
  %270 = load ptr, ptr %22, align 8, !tbaa !71
  %271 = add i32 %267, 1
  store i32 %271, ptr %21, align 4, !tbaa !140
  %272 = getelementptr inbounds i8, ptr %270, i64 %268
  store i8 %265, ptr %272, align 1, !tbaa !35
  %273 = zext i8 %265 to i64
  %274 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %273
  %275 = load i16, ptr %274, align 4, !tbaa !35
  %276 = add i16 %275, 1
  store i16 %276, ptr %274, align 4, !tbaa !35
  store i32 0, ptr %24, align 8, !tbaa !90
  br label %277

277:                                              ; preds = %259, %256
  %278 = load i32, ptr %12, align 4, !tbaa !79
  %279 = tail call i32 @llvm.umin.i32(i32 %278, i32 2)
  %280 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 %279, ptr %280, align 4, !tbaa !81
  %281 = icmp eq i32 %1, 4
  br i1 %281, label %282, label %301

282:                                              ; preds = %277
  %283 = load i64, ptr %25, align 8, !tbaa !80
  %284 = icmp sgt i64 %283, -1
  br i1 %284, label %285, label %289

285:                                              ; preds = %282
  %286 = load ptr, ptr %11, align 8, !tbaa !60
  %287 = and i64 %283, 4294967295
  %288 = getelementptr inbounds i8, ptr %286, i64 %287
  br label %289

289:                                              ; preds = %282, %285
  %290 = phi ptr [ %288, %285 ], [ null, %282 ]
  %291 = zext i32 %278 to i64
  %292 = sub nsw i64 %291, %283
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %290, i64 noundef %292, i32 noundef 1) #11
  %293 = load i32, ptr %12, align 4, !tbaa !79
  %294 = zext i32 %293 to i64
  store i64 %294, ptr %25, align 8, !tbaa !80
  %295 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %295) #10
  %296 = load ptr, ptr %0, align 8, !tbaa !47
  %297 = getelementptr inbounds %struct.z_stream_s, ptr %296, i64 0, i32 4
  %298 = load i32, ptr %297, align 8, !tbaa !119
  %299 = icmp eq i32 %298, 0
  %300 = select i1 %299, i32 2, i32 3
  br label %323

301:                                              ; preds = %277
  %302 = load i32, ptr %21, align 4, !tbaa !140
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %322, label %304

304:                                              ; preds = %301
  %305 = load i64, ptr %25, align 8, !tbaa !80
  %306 = icmp sgt i64 %305, -1
  br i1 %306, label %307, label %311

307:                                              ; preds = %304
  %308 = load ptr, ptr %11, align 8, !tbaa !60
  %309 = and i64 %305, 4294967295
  %310 = getelementptr inbounds i8, ptr %308, i64 %309
  br label %311

311:                                              ; preds = %304, %307
  %312 = phi ptr [ %310, %307 ], [ null, %304 ]
  %313 = zext i32 %278 to i64
  %314 = sub nsw i64 %313, %305
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %312, i64 noundef %314, i32 noundef 0) #11
  %315 = load i32, ptr %12, align 4, !tbaa !79
  %316 = zext i32 %315 to i64
  store i64 %316, ptr %25, align 8, !tbaa !80
  %317 = load ptr, ptr %0, align 8, !tbaa !47
  tail call fastcc void @flush_pending(ptr noundef %317) #10
  %318 = load ptr, ptr %0, align 8, !tbaa !47
  %319 = getelementptr inbounds %struct.z_stream_s, ptr %318, i64 0, i32 4
  %320 = load i32, ptr %319, align 8, !tbaa !119
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %311, %301
  br label %323

323:                                              ; preds = %242, %191, %32, %311, %289, %322
  %324 = phi i32 [ 1, %322 ], [ %300, %289 ], [ 0, %311 ], [ 0, %32 ], [ 0, %191 ], [ 0, %242 ]
  ret i32 %324
}

; Function Attrs: optsize
declare hidden void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @longest_match(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !153 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 31
  %4 = load i32, ptr %3, align 4, !tbaa !112
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %8 = load i32, ptr %7, align 4, !tbaa !79
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36
  %14 = load i32, ptr %13, align 8, !tbaa !110
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %16 = load i32, ptr %15, align 4, !tbaa !54
  %17 = add i32 %16, -262
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %8, i32 %17)
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %22 = load i32, ptr %21, align 4, !tbaa !55
  %23 = getelementptr inbounds i8, ptr %10, i64 258
  %24 = sext i32 %12 to i64
  %25 = getelementptr i8, ptr %10, i64 %24
  %26 = getelementptr i8, ptr %25, i64 -1
  %27 = load i8, ptr %26, align 1, !tbaa !35
  %28 = load i8, ptr %25, align 1, !tbaa !35
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 35
  %30 = load i32, ptr %29, align 4, !tbaa !108
  %31 = icmp ult i32 %12, %30
  %32 = lshr i32 %4, 2
  %33 = select i1 %31, i32 %4, i32 %32
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %35 = load i32, ptr %34, align 4, !tbaa !76
  %36 = tail call i32 @llvm.umin.i32(i32 %14, i32 %35)
  %37 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %38 = getelementptr inbounds i8, ptr %10, i64 1
  %39 = ptrtoint ptr %23 to i64
  br label %40

40:                                               ; preds = %155, %2
  %41 = phi i32 [ %12, %2 ], [ %156, %155 ]
  %42 = phi i32 [ %33, %2 ], [ %165, %155 ]
  %43 = phi i32 [ %1, %2 ], [ %163, %155 ]
  %44 = phi i8 [ %27, %2 ], [ %157, %155 ]
  %45 = phi i8 [ %28, %2 ], [ %158, %155 ]
  %46 = zext nneg i32 %43 to i64
  %47 = getelementptr inbounds i8, ptr %6, i64 %46
  %48 = sext i32 %41 to i64
  %49 = getelementptr inbounds i8, ptr %47, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !35
  %51 = icmp eq i8 %50, %45
  br i1 %51, label %52, label %155

52:                                               ; preds = %40
  %53 = getelementptr i8, ptr %49, i64 -1
  %54 = load i8, ptr %53, align 1, !tbaa !35
  %55 = icmp eq i8 %54, %44
  br i1 %55, label %56, label %155

56:                                               ; preds = %52
  %57 = load i8, ptr %47, align 1, !tbaa !35
  %58 = load i8, ptr %10, align 1, !tbaa !35
  %59 = icmp eq i8 %57, %58
  br i1 %59, label %60, label %155

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %47, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !35
  %63 = load i8, ptr %38, align 1, !tbaa !35
  %64 = icmp eq i8 %62, %63
  br i1 %64, label %65, label %155

65:                                               ; preds = %60
  %66 = getelementptr inbounds i8, ptr %47, i64 2
  br label %67

67:                                               ; preds = %112, %65
  %68 = phi ptr [ %66, %65 ], [ %116, %112 ]
  %69 = phi i64 [ 2, %65 ], [ %113, %112 ]
  %70 = getelementptr inbounds i8, ptr %10, i64 %69
  %71 = getelementptr inbounds i8, ptr %70, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !35
  %73 = getelementptr inbounds i8, ptr %68, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !35
  %75 = icmp eq i8 %72, %74
  br i1 %75, label %76, label %121

76:                                               ; preds = %67
  %77 = getelementptr inbounds i8, ptr %70, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !35
  %79 = getelementptr inbounds i8, ptr %68, i64 2
  %80 = load i8, ptr %79, align 1, !tbaa !35
  %81 = icmp eq i8 %78, %80
  br i1 %81, label %82, label %123

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, ptr %70, i64 3
  %84 = load i8, ptr %83, align 1, !tbaa !35
  %85 = getelementptr inbounds i8, ptr %68, i64 3
  %86 = load i8, ptr %85, align 1, !tbaa !35
  %87 = icmp eq i8 %84, %86
  br i1 %87, label %88, label %125

88:                                               ; preds = %82
  %89 = getelementptr inbounds i8, ptr %70, i64 4
  %90 = load i8, ptr %89, align 1, !tbaa !35
  %91 = getelementptr inbounds i8, ptr %68, i64 4
  %92 = load i8, ptr %91, align 1, !tbaa !35
  %93 = icmp eq i8 %90, %92
  br i1 %93, label %94, label %127

94:                                               ; preds = %88
  %95 = getelementptr inbounds i8, ptr %70, i64 5
  %96 = load i8, ptr %95, align 1, !tbaa !35
  %97 = getelementptr inbounds i8, ptr %68, i64 5
  %98 = load i8, ptr %97, align 1, !tbaa !35
  %99 = icmp eq i8 %96, %98
  br i1 %99, label %100, label %129

100:                                              ; preds = %94
  %101 = getelementptr inbounds i8, ptr %70, i64 6
  %102 = load i8, ptr %101, align 1, !tbaa !35
  %103 = getelementptr inbounds i8, ptr %68, i64 6
  %104 = load i8, ptr %103, align 1, !tbaa !35
  %105 = icmp eq i8 %102, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %100
  %107 = getelementptr inbounds i8, ptr %70, i64 7
  %108 = load i8, ptr %107, align 1, !tbaa !35
  %109 = getelementptr inbounds i8, ptr %68, i64 7
  %110 = load i8, ptr %109, align 1, !tbaa !35
  %111 = icmp eq i8 %108, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %106
  %113 = add nuw nsw i64 %69, 8
  %114 = getelementptr inbounds i8, ptr %10, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !35
  %116 = getelementptr inbounds i8, ptr %68, i64 8
  %117 = load i8, ptr %116, align 1, !tbaa !35
  %118 = icmp eq i8 %115, %117
  %119 = icmp ult i64 %69, 250
  %120 = and i1 %119, %118
  br i1 %120, label %67, label %135, !llvm.loop !154

121:                                              ; preds = %67
  %122 = getelementptr inbounds i8, ptr %70, i64 1
  br label %137

123:                                              ; preds = %76
  %124 = getelementptr inbounds i8, ptr %70, i64 2
  br label %137

125:                                              ; preds = %82
  %126 = getelementptr inbounds i8, ptr %70, i64 3
  br label %137

127:                                              ; preds = %88
  %128 = getelementptr inbounds i8, ptr %70, i64 4
  br label %137

129:                                              ; preds = %94
  %130 = getelementptr inbounds i8, ptr %70, i64 5
  br label %137

131:                                              ; preds = %100
  %132 = getelementptr inbounds i8, ptr %70, i64 6
  br label %137

133:                                              ; preds = %106
  %134 = getelementptr inbounds i8, ptr %70, i64 7
  br label %137

135:                                              ; preds = %112
  %136 = getelementptr inbounds i8, ptr %10, i64 %113
  br label %137

137:                                              ; preds = %135, %133, %131, %129, %127, %125, %123, %121
  %138 = phi ptr [ %122, %121 ], [ %124, %123 ], [ %126, %125 ], [ %128, %127 ], [ %130, %129 ], [ %132, %131 ], [ %134, %133 ], [ %136, %135 ]
  %139 = ptrtoint ptr %138 to i64
  %140 = sub i64 %139, %39
  %141 = trunc i64 %140 to i32
  %142 = add i32 %141, 258
  %143 = icmp sgt i32 %142, %41
  br i1 %143, label %144, label %155

144:                                              ; preds = %137
  store i32 %43, ptr %37, align 8, !tbaa !148
  %145 = icmp slt i32 %142, %36
  br i1 %145, label %146, label %168

146:                                              ; preds = %144
  %147 = shl i64 %140, 32
  %148 = add i64 %147, 1103806595072
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds i8, ptr %10, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !35
  %152 = sext i32 %142 to i64
  %153 = getelementptr inbounds i8, ptr %10, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !35
  br label %155

155:                                              ; preds = %137, %146, %40, %52, %56, %60
  %156 = phi i32 [ %41, %40 ], [ %41, %52 ], [ %41, %56 ], [ %41, %60 ], [ %142, %146 ], [ %41, %137 ]
  %157 = phi i8 [ %44, %40 ], [ %44, %52 ], [ %44, %56 ], [ %44, %60 ], [ %151, %146 ], [ %44, %137 ]
  %158 = phi i8 [ %45, %40 ], [ %45, %52 ], [ %45, %56 ], [ %45, %60 ], [ %154, %146 ], [ %45, %137 ]
  %159 = and i32 %43, %22
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds i16, ptr %20, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !78
  %163 = zext i16 %162 to i32
  %164 = icmp uge i32 %18, %163
  %165 = add i32 %42, -1
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %164, i1 true, i1 %166
  br i1 %167, label %168, label %40, !llvm.loop !155

168:                                              ; preds = %155, %144
  %169 = phi i32 [ %156, %155 ], [ %142, %144 ]
  %170 = tail call i32 @llvm.umin.i32(i32 %169, i32 %35)
  ret i32 %170
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @read_buf(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !PGOFuncName !156 {
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !82
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 %2)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %3
  %9 = sub i32 %5, %6
  store i32 %9, ptr %4, align 8, !tbaa !82
  %10 = load ptr, ptr %0, align 8, !tbaa !83
  %11 = zext i32 %6 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %10, i64 %11, i1 false)
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.internal_state, ptr %13, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !51
  switch i32 %15, label %24 [
    i32 1, label %16
    i32 2, label %20
  ]

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %18 = load i64, ptr %17, align 8, !tbaa !77
  %19 = tail call i64 @adler32(i64 noundef %18, ptr noundef %1, i32 noundef %6) #11
  store i64 %19, ptr %17, align 8, !tbaa !77
  br label %24

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %22 = load i64, ptr %21, align 8, !tbaa !77
  %23 = tail call i64 @crc32(i64 noundef %22, ptr noundef %1, i32 noundef %6) #11
  store i64 %23, ptr %21, align 8, !tbaa !77
  br label %24

24:                                               ; preds = %8, %20, %16
  %25 = load ptr, ptr %0, align 8, !tbaa !83
  %26 = getelementptr inbounds i8, ptr %25, i64 %11
  store ptr %26, ptr %0, align 8, !tbaa !83
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !98
  %29 = add i64 %28, %11
  store i64 %29, ptr %27, align 8, !tbaa !98
  br label %30

30:                                               ; preds = %3, %24
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }

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
!34 = !{i32 -6, i32 1}
!35 = !{!36, !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 48}
!39 = !{!"z_stream_s", !40, i64 0, !41, i64 8, !42, i64 16, !40, i64 24, !41, i64 32, !42, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !41, i64 88, !42, i64 96, !42, i64 104}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"long", !36, i64 0}
!43 = !{!39, !40, i64 64}
!44 = !{!39, !40, i64 80}
!45 = !{!39, !40, i64 72}
!46 = !{!39, !40, i64 56}
!47 = !{!48, !40, i64 0}
!48 = !{!"internal_state", !40, i64 0, !41, i64 8, !40, i64 16, !42, i64 24, !40, i64 32, !41, i64 40, !41, i64 44, !40, i64 48, !41, i64 56, !36, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !41, i64 76, !40, i64 80, !42, i64 88, !40, i64 96, !40, i64 104, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !41, i64 128, !42, i64 136, !41, i64 144, !41, i64 148, !41, i64 152, !41, i64 156, !41, i64 160, !41, i64 164, !41, i64 168, !41, i64 172, !41, i64 176, !41, i64 180, !41, i64 184, !41, i64 188, !41, i64 192, !36, i64 196, !36, i64 2488, !36, i64 2732, !49, i64 2888, !49, i64 2912, !49, i64 2936, !36, i64 2960, !36, i64 2992, !41, i64 5284, !41, i64 5288, !36, i64 5292, !40, i64 5872, !41, i64 5880, !41, i64 5884, !40, i64 5888, !42, i64 5896, !42, i64 5904, !41, i64 5912, !41, i64 5916, !50, i64 5920, !41, i64 5924, !42, i64 5928}
!49 = !{!"tree_desc_s", !40, i64 0, !41, i64 8, !40, i64 16}
!50 = !{!"short", !36, i64 0}
!51 = !{!48, !41, i64 44}
!52 = !{!48, !40, i64 48}
!53 = !{!48, !41, i64 72}
!54 = !{!48, !41, i64 68}
!55 = !{!48, !41, i64 76}
!56 = !{!48, !41, i64 120}
!57 = !{!48, !41, i64 116}
!58 = !{!48, !41, i64 124}
!59 = !{!48, !41, i64 128}
!60 = !{!48, !40, i64 80}
!61 = !{!48, !40, i64 96}
!62 = !{!48, !40, i64 104}
!63 = !{!48, !42, i64 5928}
!64 = !{!48, !41, i64 5880}
!65 = !{!48, !40, i64 16}
!66 = !{!48, !42, i64 24}
!67 = !{!48, !41, i64 8}
!68 = !{!40, !40, i64 0}
!69 = !{i32 -3, i32 1}
!70 = !{!48, !40, i64 5888}
!71 = !{!48, !40, i64 5872}
!72 = !{!48, !41, i64 180}
!73 = !{!48, !41, i64 184}
!74 = !{!48, !36, i64 60}
!75 = !{i32 -2, i32 1}
!76 = !{!48, !41, i64 164}
!77 = !{!39, !42, i64 96}
!78 = !{!50, !50, i64 0}
!79 = !{!48, !41, i64 156}
!80 = !{!48, !42, i64 136}
!81 = !{!48, !41, i64 5916}
!82 = !{!39, !41, i64 8}
!83 = !{!39, !40, i64 0}
!84 = !{!48, !41, i64 112}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.mustprogress"}
!87 = distinct !{!87, !86}
!88 = !{!48, !41, i64 168}
!89 = !{!48, !41, i64 144}
!90 = !{!48, !41, i64 152}
!91 = !{!"deflate.c:fill_window"}
!92 = !{!48, !42, i64 88}
!93 = !{!41, !41, i64 0}
!94 = distinct !{!94, !86}
!95 = distinct !{!95, !86}
!96 = distinct !{!96, !86}
!97 = distinct !{!97, !86}
!98 = !{!39, !42, i64 16}
!99 = !{!39, !41, i64 88}
!100 = !{!48, !41, i64 40}
!101 = !{!48, !40, i64 32}
!102 = !{!48, !41, i64 64}
!103 = !{!"deflate.c:lm_init"}
!104 = !{!105, !50, i64 2}
!105 = !{!"config_s", !50, i64 0, !50, i64 2, !50, i64 4, !50, i64 6, !40, i64 8}
!106 = !{!48, !41, i64 176}
!107 = !{!105, !50, i64 0}
!108 = !{!48, !41, i64 188}
!109 = !{!105, !50, i64 4}
!110 = !{!48, !41, i64 192}
!111 = !{!105, !50, i64 6}
!112 = !{!48, !41, i64 172}
!113 = !{!48, !41, i64 5924}
!114 = !{!48, !50, i64 5920}
!115 = distinct !{!115, !86}
!116 = !{!105, !40, i64 8}
!117 = !{i32 -5, i32 2}
!118 = !{!39, !40, i64 24}
!119 = !{!39, !41, i64 32}
!120 = !{!121, !41, i64 0}
!121 = !{!"gz_header_s", !41, i64 0, !42, i64 8, !41, i64 16, !41, i64 20, !40, i64 24, !41, i64 32, !41, i64 36, !40, i64 40, !41, i64 48, !40, i64 56, !41, i64 64, !41, i64 68, !41, i64 72}
!122 = !{!121, !41, i64 68}
!123 = !{!121, !40, i64 24}
!124 = !{!121, !40, i64 40}
!125 = !{!121, !40, i64 56}
!126 = !{!121, !42, i64 8}
!127 = !{!121, !41, i64 20}
!128 = !{!121, !41, i64 32}
!129 = !{!48, !41, i64 56}
!130 = distinct !{!130, !86}
!131 = distinct !{!131, !86}
!132 = distinct !{!132, !86}
!133 = !{i32 0, i32 4}
!134 = distinct !{!134, !86}
!135 = distinct !{!135, !86}
!136 = !{!"deflate.c:putShortMSB"}
!137 = !{!"deflate.c:flush_pending"}
!138 = !{!39, !42, i64 40}
!139 = !{!"deflate.c:deflate_huff"}
!140 = !{!48, !41, i64 5884}
!141 = !{!"deflate.c:deflate_rle"}
!142 = distinct !{!142, !86}
!143 = !{!48, !40, i64 2888}
!144 = !{!48, !40, i64 2912}
!145 = !{!48, !40, i64 2936}
!146 = !{!"deflate.c:deflate_stored"}
!147 = !{!"deflate.c:deflate_fast"}
!148 = !{!48, !41, i64 160}
!149 = distinct !{!149, !86}
!150 = !{!"deflate.c:deflate_slow"}
!151 = !{!48, !41, i64 148}
!152 = distinct !{!152, !86}
!153 = !{!"deflate.c:longest_match"}
!154 = distinct !{!154, !86}
!155 = distinct !{!155, !86}
!156 = !{!"deflate.c:read_buf"}
