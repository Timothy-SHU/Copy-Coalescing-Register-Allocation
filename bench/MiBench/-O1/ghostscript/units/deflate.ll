; ModuleID = 'deflate.c'
source_filename = "deflate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.config_s = type { i16, i16, i16, i16, ptr }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }
%struct.internal_state = type { ptr, i32, ptr, ptr, i32, i32, i8, i8, i32, i32, i32, i32, ptr, i64, ptr, ptr, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [573 x %struct.ct_data_s], [61 x %struct.ct_data_s], [39 x %struct.ct_data_s], %struct.tree_desc_s, %struct.tree_desc_s, %struct.tree_desc_s, [16 x i16], [573 x i32], i32, i32, [573 x i8], ptr, i32, i32, ptr, i64, i64, i64, i32, i32, i16, i32 }
%struct.ct_data_s = type { %union.anon, %union.anon.0 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%struct.tree_desc_s = type { ptr, i32, ptr }

@deflate_copyright = dso_local local_unnamed_addr global [53 x i8] c" deflate 1.0.4 Copyright 1995-1996 Jean-loup Gailly \00", align 16
@z_errmsg = external local_unnamed_addr global [10 x ptr], align 16
@configuration_table = internal unnamed_addr constant [10 x %struct.config_s] [%struct.config_s { i16 0, i16 0, i16 0, i16 0, ptr @deflate_stored }, %struct.config_s { i16 4, i16 4, i16 8, i16 4, ptr @deflate_fast }, %struct.config_s { i16 4, i16 5, i16 16, i16 8, ptr @deflate_fast }, %struct.config_s { i16 4, i16 6, i16 32, i16 32, ptr @deflate_fast }, %struct.config_s { i16 4, i16 4, i16 16, i16 16, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 32, i16 32, ptr @deflate_slow }, %struct.config_s { i16 8, i16 16, i16 128, i16 128, ptr @deflate_slow }, %struct.config_s { i16 8, i16 32, i16 128, i16 256, ptr @deflate_slow }, %struct.config_s { i16 32, i16 128, i16 258, i16 1024, ptr @deflate_slow }, %struct.config_s { i16 32, i16 258, i16 258, i16 4096, ptr @deflate_slow }], align 16

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateInit_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef %2, i32 noundef %3), !range !5
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %154, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !6
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %154, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %154, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr null, ptr %18, align 8, !tbaa !9
  %19 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !14
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  store ptr @zcalloc, ptr %19, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  store ptr null, ptr %23, align 8, !tbaa !15
  br label %24

24:                                               ; preds = %22, %17
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store ptr @zcfree, ptr %25, align 8, !tbaa !16
  br label %29

29:                                               ; preds = %28, %24
  %30 = icmp eq i32 %1, -1
  %31 = select i1 %30, i32 6, i32 %1
  %32 = tail call i32 @llvm.abs.i32(i32 %3, i1 true)
  %33 = lshr i32 %3, 31
  %34 = add i32 %4, -10
  %35 = icmp ult i32 %34, -9
  %36 = icmp ne i32 %2, 8
  %37 = or i1 %36, %35
  %38 = icmp ult i32 %32, 8
  %39 = select i1 %37, i1 true, i1 %38
  %40 = icmp ugt i32 %32, 15
  %41 = select i1 %39, i1 true, i1 %40
  %42 = icmp ugt i32 %31, 9
  %43 = or i1 %42, %41
  %44 = icmp ugt i32 %5, 2
  %45 = or i1 %44, %43
  br i1 %45, label %154, label %46

46:                                               ; preds = %29
  %47 = load ptr, ptr %19, align 8, !tbaa !14
  %48 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !15
  %50 = tail call ptr %47(ptr noundef %49, i32 noundef 1, i32 noundef 5920) #8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %154, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %50, ptr %53, align 8, !tbaa !17
  store ptr %0, ptr %50, align 8, !tbaa !18
  %54 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 5
  store i32 %33, ptr %54, align 4, !tbaa !22
  %55 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 10
  store i32 %32, ptr %55, align 4, !tbaa !23
  %56 = shl nuw i32 1, %32
  %57 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 9
  store i32 %56, ptr %57, align 8, !tbaa !24
  %58 = add i32 %56, -1
  %59 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 11
  store i32 %58, ptr %59, align 8, !tbaa !25
  %60 = add nsw i32 %4, 7
  %61 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 18
  store i32 %60, ptr %61, align 8, !tbaa !26
  %62 = shl nuw i32 1, %60
  %63 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 17
  store i32 %62, ptr %63, align 4, !tbaa !27
  %64 = add i32 %62, -1
  %65 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 19
  store i32 %64, ptr %65, align 4, !tbaa !28
  %66 = add i32 %4, 9
  %67 = udiv i32 %66, 3
  %68 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 20
  store i32 %67, ptr %68, align 8, !tbaa !29
  %69 = load ptr, ptr %19, align 8, !tbaa !14
  %70 = load ptr, ptr %48, align 8, !tbaa !15
  %71 = tail call ptr %69(ptr noundef %70, i32 noundef %56, i32 noundef 2) #8
  %72 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 12
  store ptr %71, ptr %72, align 8, !tbaa !30
  %73 = load ptr, ptr %19, align 8, !tbaa !14
  %74 = load ptr, ptr %48, align 8, !tbaa !15
  %75 = load i32, ptr %57, align 8, !tbaa !24
  %76 = tail call ptr %73(ptr noundef %74, i32 noundef %75, i32 noundef 2) #8
  %77 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 14
  store ptr %76, ptr %77, align 8, !tbaa !31
  %78 = load ptr, ptr %19, align 8, !tbaa !14
  %79 = load ptr, ptr %48, align 8, !tbaa !15
  %80 = load i32, ptr %63, align 4, !tbaa !27
  %81 = tail call ptr %78(ptr noundef %79, i32 noundef %80, i32 noundef 2) #8
  %82 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 15
  store ptr %81, ptr %82, align 8, !tbaa !32
  %83 = add nsw i32 %4, 6
  %84 = shl nuw i32 1, %83
  %85 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 47
  store i32 %84, ptr %85, align 8, !tbaa !33
  %86 = load ptr, ptr %19, align 8, !tbaa !14
  %87 = load ptr, ptr %48, align 8, !tbaa !15
  %88 = tail call ptr %86(ptr noundef %87, i32 noundef %84, i32 noundef 4) #8
  %89 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 2
  store ptr %88, ptr %89, align 8, !tbaa !34
  %90 = load ptr, ptr %72, align 8, !tbaa !30
  %91 = icmp eq ptr %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %52
  %93 = load ptr, ptr %77, align 8, !tbaa !31
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %82, align 8, !tbaa !32
  %97 = icmp eq ptr %96, null
  %98 = icmp eq ptr %88, null
  %99 = select i1 %97, i1 true, i1 %98
  br i1 %99, label %100, label %139

100:                                              ; preds = %95, %92, %52
  %101 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 6), align 16, !tbaa !35
  store ptr %101, ptr %18, align 8, !tbaa !9
  %102 = load ptr, ptr %53, align 8, !tbaa !17
  %103 = icmp eq ptr %102, null
  br i1 %103, label %154, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.internal_state, ptr %102, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !34
  %107 = icmp eq ptr %106, null
  br i1 %107, label %111, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %25, align 8, !tbaa !16
  %110 = load ptr, ptr %48, align 8, !tbaa !15
  tail call void %109(ptr noundef %110, ptr noundef nonnull %106) #8
  br label %111

111:                                              ; preds = %108, %104
  %112 = load ptr, ptr %53, align 8, !tbaa !17
  %113 = getelementptr inbounds %struct.internal_state, ptr %112, i64 0, i32 15
  %114 = load ptr, ptr %113, align 8, !tbaa !32
  %115 = icmp eq ptr %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %111
  %117 = load ptr, ptr %25, align 8, !tbaa !16
  %118 = load ptr, ptr %48, align 8, !tbaa !15
  tail call void %117(ptr noundef %118, ptr noundef nonnull %114) #8
  br label %119

119:                                              ; preds = %116, %111
  %120 = load ptr, ptr %53, align 8, !tbaa !17
  %121 = getelementptr inbounds %struct.internal_state, ptr %120, i64 0, i32 14
  %122 = load ptr, ptr %121, align 8, !tbaa !31
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr %25, align 8, !tbaa !16
  %126 = load ptr, ptr %48, align 8, !tbaa !15
  tail call void %125(ptr noundef %126, ptr noundef nonnull %122) #8
  br label %127

127:                                              ; preds = %124, %119
  %128 = load ptr, ptr %53, align 8, !tbaa !17
  %129 = getelementptr inbounds %struct.internal_state, ptr %128, i64 0, i32 12
  %130 = load ptr, ptr %129, align 8, !tbaa !30
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = load ptr, ptr %25, align 8, !tbaa !16
  %134 = load ptr, ptr %48, align 8, !tbaa !15
  tail call void %133(ptr noundef %134, ptr noundef nonnull %130) #8
  br label %135

135:                                              ; preds = %132, %127
  %136 = load ptr, ptr %53, align 8, !tbaa !17
  %137 = load ptr, ptr %25, align 8, !tbaa !16
  %138 = load ptr, ptr %48, align 8, !tbaa !15
  tail call void %137(ptr noundef %138, ptr noundef %136) #8
  store ptr null, ptr %53, align 8, !tbaa !17
  br label %154

139:                                              ; preds = %95
  %140 = load i32, ptr %85, align 8, !tbaa !33
  %141 = lshr i32 %140, 1
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds i16, ptr %88, i64 %142
  %144 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 49
  store ptr %143, ptr %144, align 8, !tbaa !36
  %145 = zext i32 %140 to i64
  %146 = mul nuw nsw i64 %145, 3
  %147 = getelementptr inbounds i8, ptr %88, i64 %146
  %148 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 46
  store ptr %147, ptr %148, align 8, !tbaa !37
  %149 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 31
  store i32 %31, ptr %149, align 4, !tbaa !38
  %150 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 32
  store i32 %5, ptr %150, align 8, !tbaa !39
  %151 = trunc i32 %2 to i8
  %152 = getelementptr inbounds %struct.internal_state, ptr %50, i64 0, i32 7
  store i8 %151, ptr %152, align 1, !tbaa !40
  %153 = tail call i32 @deflateReset(ptr noundef nonnull %0), !range !41
  br label %154

154:                                              ; preds = %135, %100, %46, %29, %15, %8, %10, %139
  %155 = phi i32 [ %153, %139 ], [ -6, %10 ], [ -6, %8 ], [ -2, %15 ], [ -2, %29 ], [ -4, %46 ], [ -4, %100 ], [ -4, %135 ]
  ret i32 %155
}

declare ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @deflateEnd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %56, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %56, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !15
  tail call void %13(ptr noundef %15, ptr noundef nonnull %9) #8
  br label %16

16:                                               ; preds = %11, %7
  %17 = load ptr, ptr %4, align 8, !tbaa !17
  %18 = getelementptr inbounds %struct.internal_state, ptr %17, i64 0, i32 15
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !16
  %24 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  tail call void %23(ptr noundef %25, ptr noundef nonnull %19) #8
  br label %26

26:                                               ; preds = %21, %16
  %27 = load ptr, ptr %4, align 8, !tbaa !17
  %28 = getelementptr inbounds %struct.internal_state, ptr %27, i64 0, i32 14
  %29 = load ptr, ptr %28, align 8, !tbaa !31
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !15
  tail call void %33(ptr noundef %35, ptr noundef nonnull %29) #8
  br label %36

36:                                               ; preds = %31, %26
  %37 = load ptr, ptr %4, align 8, !tbaa !17
  %38 = getelementptr inbounds %struct.internal_state, ptr %37, i64 0, i32 12
  %39 = load ptr, ptr %38, align 8, !tbaa !30
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !16
  %44 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !15
  tail call void %43(ptr noundef %45, ptr noundef nonnull %39) #8
  br label %46

46:                                               ; preds = %41, %36
  %47 = load ptr, ptr %4, align 8, !tbaa !17
  %48 = getelementptr inbounds %struct.internal_state, ptr %47, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !42
  %50 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !16
  %52 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !15
  tail call void %51(ptr noundef %53, ptr noundef %47) #8
  store ptr null, ptr %4, align 8, !tbaa !17
  %54 = icmp eq i32 %49, 113
  %55 = select i1 %54, i32 -3, i32 0
  br label %56

56:                                               ; preds = %1, %3, %46
  %57 = phi i32 [ %55, %46 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %57
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateReset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %73, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %73, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %73, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %73, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  store i64 0, ptr %17, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  store i32 2, ptr %18, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 4
  store i32 0, ptr %19, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !22
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 0, ptr %23, align 4, !tbaa !22
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i32, ptr %23, align 4, !tbaa !22
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 42, i32 113
  %31 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 1
  store i32 %30, ptr %31, align 8, !tbaa !42
  %32 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 1, ptr %32, align 8, !tbaa !47
  %33 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 8
  store i32 0, ptr %33, align 4, !tbaa !48
  tail call void @_tr_init(ptr noundef %5) #8
  %34 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 9
  %35 = load i32, ptr %34, align 8, !tbaa !24
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 1
  %38 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 13
  store i64 %37, ptr %38, align 8, !tbaa !49
  %39 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 15
  %40 = load ptr, ptr %39, align 8, !tbaa !32
  %41 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 17
  %42 = load i32, ptr %41, align 4, !tbaa !27
  %43 = add i32 %42, -1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i16, ptr %40, i64 %44
  store i16 0, ptr %45, align 2, !tbaa !50
  %46 = shl nuw nsw i64 %44, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %40, i8 0, i64 %46, i1 false)
  %47 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 31
  %48 = load i32, ptr %47, align 4, !tbaa !38
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %49, i32 1
  %51 = load i16, ptr %50, align 2, !tbaa !51
  %52 = zext i16 %51 to i32
  %53 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 30
  store i32 %52, ptr %53, align 8, !tbaa !53
  %54 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %49
  %55 = load i16, ptr %54, align 16, !tbaa !54
  %56 = zext i16 %55 to i32
  %57 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 33
  store i32 %56, ptr %57, align 4, !tbaa !55
  %58 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %49, i32 2
  %59 = load i16, ptr %58, align 4, !tbaa !56
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 34
  store i32 %60, ptr %61, align 8, !tbaa !57
  %62 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %49, i32 3
  %63 = load i16, ptr %62, align 2, !tbaa !58
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 29
  store i32 %64, ptr %65, align 4, !tbaa !59
  %66 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 25
  store i32 0, ptr %66, align 4, !tbaa !60
  %67 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 21
  store i64 0, ptr %67, align 8, !tbaa !61
  %68 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 27
  store i32 0, ptr %68, align 4, !tbaa !62
  %69 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 28
  store i32 2, ptr %69, align 8, !tbaa !63
  %70 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 22
  store i32 2, ptr %70, align 8, !tbaa !64
  %71 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 24
  store i32 0, ptr %71, align 8, !tbaa !65
  %72 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 16
  store i32 0, ptr %72, align 8, !tbaa !66
  br label %73

73:                                               ; preds = %1, %3, %7, %11, %27
  %74 = phi i32 [ 0, %27 ], [ -2, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateSetDictionary(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %75, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %9, %8
  br i1 %10, label %75, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !42
  %14 = icmp eq i32 %13, 42
  br i1 %14, label %15, label %75

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %17 = load i64, ptr %16, align 8, !tbaa !47
  %18 = tail call i64 @adler32(i64 noundef %17, ptr noundef %1, i32 noundef %2) #8
  store i64 %18, ptr %16, align 8, !tbaa !47
  %19 = icmp ult i32 %2, 3
  br i1 %19, label %75, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !24
  %23 = add i32 %22, -262
  %24 = tail call i32 @llvm.usub.sat.i32(i32 %2, i32 %23)
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  %27 = tail call i32 @llvm.umin.i32(i32 %23, i32 %2)
  %28 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 12
  %29 = load ptr, ptr %28, align 8, !tbaa !30
  %30 = zext i32 %27 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %29, ptr align 1 %26, i64 %30, i1 false)
  %31 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 25
  store i32 %27, ptr %31, align 4, !tbaa !60
  %32 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 21
  store i64 %30, ptr %32, align 8, !tbaa !61
  %33 = load ptr, ptr %28, align 8, !tbaa !30
  %34 = load i8, ptr %33, align 1, !tbaa !6
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 16
  store i32 %35, ptr %36, align 8, !tbaa !66
  %37 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 20
  %38 = load i32, ptr %37, align 8, !tbaa !29
  %39 = shl i32 %35, %38
  %40 = getelementptr inbounds i8, ptr %33, i64 1
  %41 = load i8, ptr %40, align 1, !tbaa !6
  %42 = zext i8 %41 to i32
  %43 = xor i32 %39, %42
  %44 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 19
  %45 = load i32, ptr %44, align 4, !tbaa !28
  %46 = and i32 %43, %45
  store i32 %46, ptr %36, align 8, !tbaa !66
  %47 = add i32 %27, -3
  %48 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 15
  %49 = load ptr, ptr %48, align 8, !tbaa !32
  %50 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 14
  %51 = load ptr, ptr %50, align 8, !tbaa !31
  %52 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 11
  %53 = load i32, ptr %52, align 8, !tbaa !25
  %54 = load i32, ptr %36, align 8, !tbaa !66
  br label %55

55:                                               ; preds = %20, %55
  %56 = phi i32 [ 0, %20 ], [ %73, %55 ]
  %57 = phi i32 [ %54, %20 ], [ %65, %55 ]
  %58 = shl i32 %57, %38
  %59 = add i32 %56, 2
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %33, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !6
  %63 = zext i8 %62 to i32
  %64 = xor i32 %58, %63
  %65 = and i32 %64, %45
  store i32 %65, ptr %36, align 8, !tbaa !66
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i16, ptr %49, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !50
  %69 = and i32 %53, %56
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i16, ptr %51, i64 %70
  store i16 %68, ptr %71, align 2, !tbaa !50
  %72 = trunc i32 %56 to i16
  store i16 %72, ptr %67, align 2, !tbaa !50
  %73 = add i32 %56, 1
  %74 = icmp ugt i32 %73, %47
  br i1 %74, label %75, label %55, !llvm.loop !67

75:                                               ; preds = %55, %15, %3, %5, %11
  %76 = phi i32 [ -2, %11 ], [ -2, %5 ], [ -2, %3 ], [ 0, %15 ], [ 0, %55 ]
  ret i32 %76
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

declare void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @deflateParams(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !17
  %8 = icmp eq ptr %7, null
  br i1 %8, label %54, label %9

9:                                                ; preds = %5
  %10 = icmp eq i32 %1, -1
  %11 = select i1 %10, i32 6, i32 %1
  %12 = icmp ugt i32 %11, 9
  %13 = icmp ugt i32 %2, 2
  %14 = or i1 %13, %12
  br i1 %14, label %54, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 31
  %17 = load i32, ptr %16, align 4, !tbaa !38
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %18, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = zext nneg i32 %11 to i64
  %22 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %21
  %23 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %21, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = icmp eq ptr %20, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !43
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 @deflate(ptr noundef nonnull %0, i32 noundef 1), !range !70
  br label %32

32:                                               ; preds = %30, %26, %15
  %33 = phi i32 [ %31, %30 ], [ 0, %26 ], [ 0, %15 ]
  %34 = load i32, ptr %16, align 4, !tbaa !38
  %35 = icmp eq i32 %34, %11
  br i1 %35, label %52, label %36

36:                                               ; preds = %32
  store i32 %11, ptr %16, align 4, !tbaa !38
  %37 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %21, i32 1
  %38 = load i16, ptr %37, align 2, !tbaa !51
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 30
  store i32 %39, ptr %40, align 8, !tbaa !53
  %41 = load i16, ptr %22, align 16, !tbaa !54
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 33
  store i32 %42, ptr %43, align 4, !tbaa !55
  %44 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %21, i32 2
  %45 = load i16, ptr %44, align 4, !tbaa !56
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 34
  store i32 %46, ptr %47, align 8, !tbaa !57
  %48 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %21, i32 3
  %49 = load i16, ptr %48, align 2, !tbaa !58
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 29
  store i32 %50, ptr %51, align 4, !tbaa !59
  br label %52

52:                                               ; preds = %36, %32
  %53 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 32
  store i32 %2, ptr %53, align 8, !tbaa !39
  br label %54

54:                                               ; preds = %9, %3, %5, %52
  %55 = phi i32 [ %33, %52 ], [ -2, %5 ], [ -2, %3 ], [ -2, %9 ]
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define dso_local i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %257, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !17
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt i32 %1, 4
  %9 = or i1 %8, %7
  br i1 %9, label %257, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !72
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !73
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !42
  %24 = icmp eq i32 %23, 666
  %25 = icmp ne i32 %1, 4
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %17, %10
  %28 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 4), align 16, !tbaa !35
  %29 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %28, ptr %29, align 8, !tbaa !9
  br label %257

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !74
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !35
  %36 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %35, ptr %36, align 8, !tbaa !9
  br label %257

37:                                               ; preds = %30
  store ptr %0, ptr %6, align 8, !tbaa !18
  %38 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 8
  %39 = load i32, ptr %38, align 4, !tbaa !48
  store i32 %1, ptr %38, align 4, !tbaa !48
  %40 = icmp eq i32 %23, 42
  br i1 %40, label %41, label %111

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 10
  %43 = load i32, ptr %42, align 4, !tbaa !23
  %44 = shl i32 %43, 12
  %45 = add i32 %44, -30720
  %46 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 31
  %47 = load i32, ptr %46, align 4, !tbaa !38
  %48 = add nsw i32 %47, -1
  %49 = ashr i32 %48, 1
  %50 = tail call i32 @llvm.umin.i32(i32 %49, i32 3)
  %51 = shl nuw nsw i32 %50, 6
  %52 = or disjoint i32 %51, %45
  %53 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 25
  %54 = load i32, ptr %53, align 4, !tbaa !60
  %55 = icmp eq i32 %54, 0
  %56 = or disjoint i32 %52, 32
  %57 = select i1 %55, i32 %52, i32 %56
  %58 = urem i32 %57, 31
  %59 = or disjoint i32 %58, %57
  store i32 113, ptr %22, align 8, !tbaa !42
  %60 = lshr i32 %57, 8
  %61 = trunc i32 %60 to i8
  %62 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !34
  %64 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 4
  %65 = load i32, ptr %64, align 8, !tbaa !45
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr %64, align 8, !tbaa !45
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, ptr %63, i64 %67
  store i8 %61, ptr %68, align 1, !tbaa !6
  %69 = trunc i32 %59 to i8
  %70 = xor i8 %69, 31
  %71 = load ptr, ptr %62, align 8, !tbaa !34
  %72 = load i32, ptr %64, align 8, !tbaa !45
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %64, align 8, !tbaa !45
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, ptr %71, i64 %74
  store i8 %70, ptr %75, align 1, !tbaa !6
  %76 = load i32, ptr %53, align 4, !tbaa !60
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %109, label %78

78:                                               ; preds = %41
  %79 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %80 = load i64, ptr %79, align 8, !tbaa !47
  %81 = lshr i64 %80, 16
  %82 = lshr i64 %80, 24
  %83 = trunc i64 %82 to i8
  %84 = load ptr, ptr %62, align 8, !tbaa !34
  %85 = load i32, ptr %64, align 8, !tbaa !45
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %64, align 8, !tbaa !45
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, ptr %84, i64 %87
  store i8 %83, ptr %88, align 1, !tbaa !6
  %89 = trunc i64 %81 to i8
  %90 = load ptr, ptr %62, align 8, !tbaa !34
  %91 = load i32, ptr %64, align 8, !tbaa !45
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %64, align 8, !tbaa !45
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, ptr %90, i64 %93
  store i8 %89, ptr %94, align 1, !tbaa !6
  %95 = load i64, ptr %79, align 8, !tbaa !47
  %96 = trunc i64 %95 to i8
  %97 = lshr i64 %95, 8
  %98 = trunc i64 %97 to i8
  %99 = load ptr, ptr %62, align 8, !tbaa !34
  %100 = load i32, ptr %64, align 8, !tbaa !45
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %64, align 8, !tbaa !45
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, ptr %99, i64 %102
  store i8 %98, ptr %103, align 1, !tbaa !6
  %104 = load ptr, ptr %62, align 8, !tbaa !34
  %105 = load i32, ptr %64, align 8, !tbaa !45
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %64, align 8, !tbaa !45
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i8, ptr %104, i64 %107
  store i8 %96, ptr %108, align 1, !tbaa !6
  br label %109

109:                                              ; preds = %78, %41
  %110 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 1, ptr %110, align 8, !tbaa !47
  br label %111

111:                                              ; preds = %109, %37
  %112 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 4
  %113 = load i32, ptr %112, align 8, !tbaa !45
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %149, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %5, align 8, !tbaa !17
  %117 = getelementptr inbounds %struct.internal_state, ptr %116, i64 0, i32 4
  %118 = load i32, ptr %117, align 8, !tbaa !45
  %119 = load i32, ptr %31, align 8, !tbaa !74
  %120 = tail call i32 @llvm.umin.i32(i32 %118, i32 %119)
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %145, label %122

122:                                              ; preds = %115
  %123 = load ptr, ptr %11, align 8, !tbaa !71
  %124 = getelementptr inbounds %struct.internal_state, ptr %116, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !46
  %126 = zext i32 %120 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %123, ptr align 1 %125, i64 %126, i1 false)
  %127 = load ptr, ptr %11, align 8, !tbaa !71
  %128 = getelementptr inbounds i8, ptr %127, i64 %126
  store ptr %128, ptr %11, align 8, !tbaa !71
  %129 = load ptr, ptr %5, align 8, !tbaa !17
  %130 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !46
  %132 = getelementptr inbounds i8, ptr %131, i64 %126
  store ptr %132, ptr %130, align 8, !tbaa !46
  %133 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %134 = load i64, ptr %133, align 8, !tbaa !75
  %135 = add i64 %134, %126
  store i64 %135, ptr %133, align 8, !tbaa !75
  %136 = load i32, ptr %31, align 8, !tbaa !74
  %137 = sub i32 %136, %120
  store i32 %137, ptr %31, align 8, !tbaa !74
  %138 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 4
  %139 = load i32, ptr %138, align 8, !tbaa !45
  %140 = sub i32 %139, %120
  store i32 %140, ptr %138, align 8, !tbaa !45
  %141 = icmp eq i32 %139, %120
  br i1 %141, label %142, label %145

142:                                              ; preds = %122
  %143 = getelementptr inbounds %struct.internal_state, ptr %129, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !34
  store ptr %144, ptr %130, align 8, !tbaa !46
  br label %145

145:                                              ; preds = %115, %122, %142
  %146 = load i32, ptr %31, align 8, !tbaa !74
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %145
  store i32 -1, ptr %38, align 4, !tbaa !48
  br label %257

149:                                              ; preds = %111
  %150 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %151 = load i32, ptr %150, align 8, !tbaa !73
  %152 = icmp eq i32 %151, 0
  %153 = icmp sge i32 %39, %1
  %154 = and i1 %25, %153
  %155 = select i1 %152, i1 %154, i1 false
  br i1 %155, label %156, label %159

156:                                              ; preds = %149
  %157 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !35
  %158 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %157, ptr %158, align 8, !tbaa !9
  br label %257

159:                                              ; preds = %149, %145
  %160 = load i32, ptr %22, align 8, !tbaa !42
  %161 = icmp eq i32 %160, 666
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %164 = load i32, ptr %163, align 8, !tbaa !73
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %169, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !35
  %168 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %167, ptr %168, align 8, !tbaa !9
  br label %257

169:                                              ; preds = %162, %159
  %170 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %171 = load i32, ptr %170, align 8, !tbaa !73
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 27
  %175 = load i32, ptr %174, align 4, !tbaa !62
  %176 = icmp eq i32 %175, 0
  %177 = icmp eq i32 %1, 0
  %178 = or i1 %177, %161
  %179 = and i1 %178, %176
  br i1 %179, label %217, label %180

180:                                              ; preds = %173, %169
  %181 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 31
  %182 = load i32, ptr %181, align 4, !tbaa !38
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %183, i32 4
  %185 = load ptr, ptr %184, align 8, !tbaa !69
  %186 = tail call i32 %185(ptr noundef nonnull %6, i32 noundef %1) #8
  %187 = and i32 %186, -2
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %189, label %190

189:                                              ; preds = %180
  store i32 666, ptr %22, align 8, !tbaa !42
  br label %190

190:                                              ; preds = %180, %189
  %191 = and i32 %186, -3
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %190
  %194 = load i32, ptr %31, align 8, !tbaa !74
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %257

196:                                              ; preds = %193
  store i32 -1, ptr %38, align 4, !tbaa !48
  br label %257

197:                                              ; preds = %190
  %198 = icmp eq i32 %186, 1
  br i1 %198, label %199, label %217

199:                                              ; preds = %197
  %200 = icmp eq i32 %1, 1
  br i1 %200, label %201, label %202

201:                                              ; preds = %199
  tail call void @_tr_align(ptr noundef nonnull %6) #8
  br label %213

202:                                              ; preds = %199
  tail call void @_tr_stored_block(ptr noundef nonnull %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #8
  %203 = icmp eq i32 %1, 3
  br i1 %203, label %204, label %213

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 15
  %206 = load ptr, ptr %205, align 8, !tbaa !32
  %207 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 17
  %208 = load i32, ptr %207, align 4, !tbaa !27
  %209 = add i32 %208, -1
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i16, ptr %206, i64 %210
  store i16 0, ptr %211, align 2, !tbaa !50
  %212 = shl nuw nsw i64 %210, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %206, i8 0, i64 %212, i1 false)
  br label %213

213:                                              ; preds = %202, %204, %201
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  %214 = load i32, ptr %31, align 8, !tbaa !74
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  store i32 -1, ptr %38, align 4, !tbaa !48
  br label %257

217:                                              ; preds = %173, %213, %197
  br i1 %25, label %257, label %218

218:                                              ; preds = %217
  %219 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %220 = load i32, ptr %219, align 4, !tbaa !22
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %257

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %224 = load i64, ptr %223, align 8, !tbaa !47
  %225 = lshr i64 %224, 16
  %226 = lshr i64 %224, 24
  %227 = trunc i64 %226 to i8
  %228 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !34
  %230 = load i32, ptr %112, align 8, !tbaa !45
  %231 = add nsw i32 %230, 1
  store i32 %231, ptr %112, align 8, !tbaa !45
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i8, ptr %229, i64 %232
  store i8 %227, ptr %233, align 1, !tbaa !6
  %234 = trunc i64 %225 to i8
  %235 = load ptr, ptr %228, align 8, !tbaa !34
  %236 = load i32, ptr %112, align 8, !tbaa !45
  %237 = add nsw i32 %236, 1
  store i32 %237, ptr %112, align 8, !tbaa !45
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i8, ptr %235, i64 %238
  store i8 %234, ptr %239, align 1, !tbaa !6
  %240 = load i64, ptr %223, align 8, !tbaa !47
  %241 = trunc i64 %240 to i8
  %242 = lshr i64 %240, 8
  %243 = trunc i64 %242 to i8
  %244 = load ptr, ptr %228, align 8, !tbaa !34
  %245 = load i32, ptr %112, align 8, !tbaa !45
  %246 = add nsw i32 %245, 1
  store i32 %246, ptr %112, align 8, !tbaa !45
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i8, ptr %244, i64 %247
  store i8 %243, ptr %248, align 1, !tbaa !6
  %249 = load ptr, ptr %228, align 8, !tbaa !34
  %250 = load i32, ptr %112, align 8, !tbaa !45
  %251 = add nsw i32 %250, 1
  store i32 %251, ptr %112, align 8, !tbaa !45
  %252 = sext i32 %250 to i64
  %253 = getelementptr inbounds i8, ptr %249, i64 %252
  store i8 %241, ptr %253, align 1, !tbaa !6
  tail call fastcc void @flush_pending(ptr noundef nonnull %0)
  store i32 -1, ptr %219, align 4, !tbaa !22
  %254 = load i32, ptr %112, align 8, !tbaa !45
  %255 = icmp eq i32 %254, 0
  %256 = zext i1 %255 to i32
  br label %257

257:                                              ; preds = %216, %196, %193, %218, %217, %2, %4, %222, %166, %156, %148, %34, %27
  %258 = phi i32 [ -2, %27 ], [ -5, %34 ], [ 0, %148 ], [ -5, %166 ], [ %256, %222 ], [ -5, %156 ], [ -2, %4 ], [ -2, %2 ], [ 0, %217 ], [ 1, %218 ], [ 0, %193 ], [ 0, %196 ], [ 0, %216 ]
  ret i32 %258
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @flush_pending(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !74
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = getelementptr inbounds %struct.internal_state, ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = zext i32 %8 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 1 %14, i64 %15, i1 false)
  %16 = load ptr, ptr %11, align 8, !tbaa !71
  %17 = getelementptr inbounds i8, ptr %16, i64 %15
  store ptr %17, ptr %11, align 8, !tbaa !71
  %18 = load ptr, ptr %2, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds i8, ptr %20, i64 %15
  store ptr %21, ptr %19, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %23 = load i64, ptr %22, align 8, !tbaa !75
  %24 = add i64 %23, %15
  store i64 %24, ptr %22, align 8, !tbaa !75
  %25 = load i32, ptr %6, align 8, !tbaa !74
  %26 = sub i32 %25, %8
  store i32 %26, ptr %6, align 8, !tbaa !74
  %27 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !45
  %29 = sub i32 %28, %8
  store i32 %29, ptr %27, align 8, !tbaa !45
  %30 = icmp eq i32 %28, %8
  br i1 %30, label %31, label %34

31:                                               ; preds = %10
  %32 = getelementptr inbounds %struct.internal_state, ptr %18, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  store ptr %33, ptr %19, align 8, !tbaa !46
  br label %34

34:                                               ; preds = %10, %31, %1
  ret void
}

declare void @_tr_align(ptr noundef) local_unnamed_addr #1

declare void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @deflateCopy(ptr noundef writeonly %0, ptr noundef readonly %1) local_unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  %4 = icmp eq ptr %0, null
  %5 = or i1 %4, %3
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.z_stream_s, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false), !tbaa.struct !76
  br label %11

11:                                               ; preds = %2, %6, %10
  ret i32 -2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 9
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  br label %8

8:                                                ; preds = %84, %2
  %9 = load i32, ptr %3, align 4, !tbaa !62
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  tail call fastcc void @fill_window(ptr noundef %0)
  %12 = load i32, ptr %3, align 4, !tbaa !62
  %13 = or i32 %12, %1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %147, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %12, 0
  br i1 %16, label %85, label %17

17:                                               ; preds = %15, %8
  %18 = load i32, ptr %3, align 4, !tbaa !62
  %19 = load i32, ptr %4, align 4, !tbaa !60
  %20 = add i32 %19, %18
  store i32 %20, ptr %4, align 4, !tbaa !60
  store i32 0, ptr %3, align 4, !tbaa !62
  %21 = add i32 %20, -65535
  %22 = icmp ult i32 %21, -65534
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = add i32 %20, -65535
  store i32 %24, ptr %3, align 4, !tbaa !62
  store i32 65535, ptr %4, align 4, !tbaa !60
  br label %25

25:                                               ; preds = %17, %23
  %26 = load i32, ptr %4, align 4, !tbaa !60
  %27 = load i64, ptr %5, align 8, !tbaa !61
  %28 = trunc i64 %27 to i32
  %29 = sub i32 %26, %28
  %30 = load i32, ptr %6, align 8, !tbaa !24
  %31 = add i32 %30, -262
  %32 = icmp ult i32 %29, %31
  br i1 %32, label %84, label %33

33:                                               ; preds = %25
  %34 = icmp sgt i64 %27, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = load ptr, ptr %7, align 8, !tbaa !30
  %37 = and i64 %27, 4294967295
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  br label %39

39:                                               ; preds = %33, %35
  %40 = phi ptr [ %38, %35 ], [ null, %33 ]
  %41 = zext i32 %26 to i64
  %42 = sub nsw i64 %41, %27
  %43 = tail call i64 @_tr_flush_block(ptr noundef %0, ptr noundef %40, i64 noundef %42, i32 noundef 0) #8
  %44 = load i32, ptr %4, align 4, !tbaa !60
  %45 = zext i32 %44 to i64
  store i64 %45, ptr %5, align 8, !tbaa !61
  %46 = load ptr, ptr %0, align 8, !tbaa !18
  %47 = getelementptr inbounds %struct.z_stream_s, ptr %46, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !17
  %49 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 4
  %50 = load i32, ptr %49, align 8, !tbaa !45
  %51 = getelementptr inbounds %struct.z_stream_s, ptr %46, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !74
  %53 = tail call i32 @llvm.umin.i32(i32 %50, i32 %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %79, label %55

55:                                               ; preds = %39
  %56 = getelementptr inbounds %struct.z_stream_s, ptr %46, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  %58 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = zext i32 %53 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %59, i64 %60, i1 false)
  %61 = load ptr, ptr %56, align 8, !tbaa !71
  %62 = getelementptr inbounds i8, ptr %61, i64 %60
  store ptr %62, ptr %56, align 8, !tbaa !71
  %63 = load ptr, ptr %47, align 8, !tbaa !17
  %64 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = getelementptr inbounds i8, ptr %65, i64 %60
  store ptr %66, ptr %64, align 8, !tbaa !46
  %67 = getelementptr inbounds %struct.z_stream_s, ptr %46, i64 0, i32 5
  %68 = load i64, ptr %67, align 8, !tbaa !75
  %69 = add i64 %68, %60
  store i64 %69, ptr %67, align 8, !tbaa !75
  %70 = load i32, ptr %51, align 8, !tbaa !74
  %71 = sub i32 %70, %53
  store i32 %71, ptr %51, align 8, !tbaa !74
  %72 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 4
  %73 = load i32, ptr %72, align 8, !tbaa !45
  %74 = sub i32 %73, %53
  store i32 %74, ptr %72, align 8, !tbaa !45
  %75 = icmp eq i32 %73, %53
  br i1 %75, label %76, label %79

76:                                               ; preds = %55
  %77 = getelementptr inbounds %struct.internal_state, ptr %63, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !34
  store ptr %78, ptr %64, align 8, !tbaa !46
  br label %79

79:                                               ; preds = %39, %55, %76
  %80 = load ptr, ptr %0, align 8, !tbaa !18
  %81 = getelementptr inbounds %struct.z_stream_s, ptr %80, i64 0, i32 4
  %82 = load i32, ptr %81, align 8, !tbaa !74
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %147, label %84

84:                                               ; preds = %79, %25
  br label %8, !llvm.loop !79

85:                                               ; preds = %15
  %86 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %87 = load i64, ptr %86, align 8, !tbaa !61
  %88 = icmp sgt i64 %87, -1
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %91 = load ptr, ptr %90, align 8, !tbaa !30
  %92 = and i64 %87, 4294967295
  %93 = getelementptr inbounds i8, ptr %91, i64 %92
  br label %94

94:                                               ; preds = %85, %89
  %95 = phi ptr [ %93, %89 ], [ null, %85 ]
  %96 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %97 = load i32, ptr %96, align 4, !tbaa !60
  %98 = zext i32 %97 to i64
  %99 = sub nsw i64 %98, %87
  %100 = icmp eq i32 %1, 4
  %101 = zext i1 %100 to i32
  %102 = tail call i64 @_tr_flush_block(ptr noundef %0, ptr noundef %95, i64 noundef %99, i32 noundef %101) #8
  %103 = load i32, ptr %96, align 4, !tbaa !60
  %104 = zext i32 %103 to i64
  store i64 %104, ptr %86, align 8, !tbaa !61
  %105 = load ptr, ptr %0, align 8, !tbaa !18
  %106 = getelementptr inbounds %struct.z_stream_s, ptr %105, i64 0, i32 7
  %107 = load ptr, ptr %106, align 8, !tbaa !17
  %108 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 4
  %109 = load i32, ptr %108, align 8, !tbaa !45
  %110 = getelementptr inbounds %struct.z_stream_s, ptr %105, i64 0, i32 4
  %111 = load i32, ptr %110, align 8, !tbaa !74
  %112 = tail call i32 @llvm.umin.i32(i32 %109, i32 %111)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %138, label %114

114:                                              ; preds = %94
  %115 = getelementptr inbounds %struct.z_stream_s, ptr %105, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !71
  %117 = getelementptr inbounds %struct.internal_state, ptr %107, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !46
  %119 = zext i32 %112 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %116, ptr align 1 %118, i64 %119, i1 false)
  %120 = load ptr, ptr %115, align 8, !tbaa !71
  %121 = getelementptr inbounds i8, ptr %120, i64 %119
  store ptr %121, ptr %115, align 8, !tbaa !71
  %122 = load ptr, ptr %106, align 8, !tbaa !17
  %123 = getelementptr inbounds %struct.internal_state, ptr %122, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !46
  %125 = getelementptr inbounds i8, ptr %124, i64 %119
  store ptr %125, ptr %123, align 8, !tbaa !46
  %126 = getelementptr inbounds %struct.z_stream_s, ptr %105, i64 0, i32 5
  %127 = load i64, ptr %126, align 8, !tbaa !75
  %128 = add i64 %127, %119
  store i64 %128, ptr %126, align 8, !tbaa !75
  %129 = load i32, ptr %110, align 8, !tbaa !74
  %130 = sub i32 %129, %112
  store i32 %130, ptr %110, align 8, !tbaa !74
  %131 = getelementptr inbounds %struct.internal_state, ptr %122, i64 0, i32 4
  %132 = load i32, ptr %131, align 8, !tbaa !45
  %133 = sub i32 %132, %112
  store i32 %133, ptr %131, align 8, !tbaa !45
  %134 = icmp eq i32 %132, %112
  br i1 %134, label %135, label %138

135:                                              ; preds = %114
  %136 = getelementptr inbounds %struct.internal_state, ptr %122, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !34
  store ptr %137, ptr %123, align 8, !tbaa !46
  br label %138

138:                                              ; preds = %94, %114, %135
  %139 = load ptr, ptr %0, align 8, !tbaa !18
  %140 = getelementptr inbounds %struct.z_stream_s, ptr %139, i64 0, i32 4
  %141 = load i32, ptr %140, align 8, !tbaa !74
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = select i1 %100, i32 2, i32 0
  br label %147

145:                                              ; preds = %138
  %146 = select i1 %100, i32 3, i32 1
  br label %147

147:                                              ; preds = %79, %11, %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ], [ 0, %11 ], [ 0, %79 ]
  ret i32 %148
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @deflate_fast(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 20
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 9
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 32
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 26
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 30
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 20
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 20
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %32 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %36 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  br label %37

37:                                               ; preds = %228, %2
  %38 = phi i32 [ 0, %2 ], [ %172, %228 ]
  %39 = load i32, ptr %3, align 4, !tbaa !62
  %40 = icmp ult i32 %39, 262
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  tail call fastcc void @fill_window(ptr noundef %0)
  %42 = load i32, ptr %3, align 4, !tbaa !62
  %43 = icmp ult i32 %42, 262
  %44 = and i1 %4, %43
  br i1 %44, label %291, label %45

45:                                               ; preds = %41
  %46 = icmp eq i32 %42, 0
  br i1 %46, label %229, label %47

47:                                               ; preds = %45, %37
  %48 = load i32, ptr %3, align 4, !tbaa !62
  %49 = icmp ugt i32 %48, 2
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = load i32, ptr %5, align 8, !tbaa !66
  %52 = load i32, ptr %6, align 8, !tbaa !29
  %53 = shl i32 %51, %52
  %54 = load ptr, ptr %7, align 8, !tbaa !30
  %55 = load i32, ptr %8, align 4, !tbaa !60
  %56 = add i32 %55, 2
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !6
  %60 = zext i8 %59 to i32
  %61 = xor i32 %53, %60
  %62 = load i32, ptr %9, align 4, !tbaa !28
  %63 = and i32 %61, %62
  store i32 %63, ptr %5, align 8, !tbaa !66
  %64 = load ptr, ptr %10, align 8, !tbaa !32
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds i16, ptr %64, i64 %65
  %67 = load i16, ptr %66, align 2, !tbaa !50
  %68 = zext i16 %67 to i32
  %69 = load ptr, ptr %11, align 8, !tbaa !31
  %70 = load i32, ptr %12, align 8, !tbaa !25
  %71 = and i32 %70, %55
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i16, ptr %69, i64 %72
  store i16 %67, ptr %73, align 2, !tbaa !50
  %74 = trunc i32 %55 to i16
  store i16 %74, ptr %66, align 2, !tbaa !50
  br label %75

75:                                               ; preds = %50, %47
  %76 = phi i32 [ %68, %50 ], [ %38, %47 ]
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %75
  %79 = load i32, ptr %13, align 4, !tbaa !60
  %80 = sub i32 %79, %76
  %81 = load i32, ptr %14, align 8, !tbaa !24
  %82 = add i32 %81, -262
  %83 = icmp ugt i32 %80, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load i32, ptr %15, align 8, !tbaa !39
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = tail call fastcc i32 @longest_match(ptr noundef %0, i32 noundef %76)
  store i32 %88, ptr %16, align 8, !tbaa !64
  br label %89

89:                                               ; preds = %84, %87, %78, %75
  %90 = load i32, ptr %17, align 8, !tbaa !64
  %91 = icmp ugt i32 %90, 2
  br i1 %91, label %92, label %159

92:                                               ; preds = %89
  %93 = load i32, ptr %20, align 4, !tbaa !60
  %94 = load i32, ptr %21, align 8, !tbaa !80
  %95 = sub i32 %93, %94
  %96 = add i32 %90, -3
  %97 = tail call i32 @_tr_tally(ptr noundef %0, i32 noundef %95, i32 noundef %96) #8
  %98 = load i32, ptr %17, align 8, !tbaa !64
  %99 = load i32, ptr %3, align 4, !tbaa !62
  %100 = sub i32 %99, %98
  store i32 %100, ptr %3, align 4, !tbaa !62
  %101 = load i32, ptr %22, align 8, !tbaa !53
  %102 = icmp ule i32 %98, %101
  %103 = icmp ugt i32 %100, 2
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %105, label %141

105:                                              ; preds = %92
  %106 = add i32 %98, -1
  store i32 %106, ptr %17, align 8, !tbaa !64
  %107 = load i32, ptr %28, align 8, !tbaa !29
  %108 = load ptr, ptr %29, align 8, !tbaa !30
  %109 = load i32, ptr %30, align 4, !tbaa !28
  %110 = load ptr, ptr %31, align 8, !tbaa !32
  %111 = load ptr, ptr %32, align 8, !tbaa !31
  %112 = load i32, ptr %33, align 8, !tbaa !25
  %113 = load i32, ptr %20, align 4, !tbaa !60
  %114 = load i32, ptr %27, align 8, !tbaa !66
  %115 = load i32, ptr %17, align 8, !tbaa !64
  br label %116

116:                                              ; preds = %116, %105
  %117 = phi i32 [ %136, %116 ], [ %115, %105 ]
  %118 = phi i32 [ %128, %116 ], [ %114, %105 ]
  %119 = phi i32 [ %120, %116 ], [ %113, %105 ]
  %120 = add i32 %119, 1
  store i32 %120, ptr %20, align 4, !tbaa !60
  %121 = shl i32 %118, %107
  %122 = add i32 %119, 3
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i8, ptr %108, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !6
  %126 = zext i8 %125 to i32
  %127 = xor i32 %121, %126
  %128 = and i32 %127, %109
  store i32 %128, ptr %27, align 8, !tbaa !66
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i16, ptr %110, i64 %129
  %131 = load i16, ptr %130, align 2, !tbaa !50
  %132 = and i32 %112, %120
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i16, ptr %111, i64 %133
  store i16 %131, ptr %134, align 2, !tbaa !50
  %135 = trunc i32 %120 to i16
  store i16 %135, ptr %130, align 2, !tbaa !50
  %136 = add i32 %117, -1
  store i32 %136, ptr %17, align 8, !tbaa !64
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %116, !llvm.loop !81

138:                                              ; preds = %116
  %139 = zext i16 %131 to i32
  %140 = add i32 %119, 2
  store i32 %140, ptr %20, align 4, !tbaa !60
  br label %171

141:                                              ; preds = %92
  %142 = load i32, ptr %20, align 4, !tbaa !60
  %143 = add i32 %142, %98
  store i32 %143, ptr %20, align 4, !tbaa !60
  store i32 0, ptr %17, align 8, !tbaa !64
  %144 = load ptr, ptr %23, align 8, !tbaa !30
  %145 = zext i32 %143 to i64
  %146 = getelementptr inbounds i8, ptr %144, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !6
  %148 = zext i8 %147 to i32
  store i32 %148, ptr %24, align 8, !tbaa !66
  %149 = load i32, ptr %25, align 8, !tbaa !29
  %150 = shl i32 %148, %149
  %151 = add i32 %143, 1
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds i8, ptr %144, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !6
  %155 = zext i8 %154 to i32
  %156 = xor i32 %150, %155
  %157 = load i32, ptr %26, align 4, !tbaa !28
  %158 = and i32 %156, %157
  store i32 %158, ptr %24, align 8, !tbaa !66
  br label %171

159:                                              ; preds = %89
  %160 = load ptr, ptr %18, align 8, !tbaa !30
  %161 = load i32, ptr %19, align 4, !tbaa !60
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i8, ptr %160, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !6
  %165 = zext i8 %164 to i32
  %166 = tail call i32 @_tr_tally(ptr noundef %0, i32 noundef 0, i32 noundef %165) #8
  %167 = load i32, ptr %3, align 4, !tbaa !62
  %168 = add i32 %167, -1
  store i32 %168, ptr %3, align 4, !tbaa !62
  %169 = load i32, ptr %19, align 4, !tbaa !60
  %170 = add i32 %169, 1
  store i32 %170, ptr %19, align 4, !tbaa !60
  br label %171

171:                                              ; preds = %138, %141, %159
  %172 = phi i32 [ %139, %138 ], [ %76, %141 ], [ %76, %159 ]
  %173 = phi i32 [ %97, %138 ], [ %97, %141 ], [ %166, %159 ]
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %228, label %175

175:                                              ; preds = %171
  %176 = load i64, ptr %34, align 8, !tbaa !61
  %177 = icmp sgt i64 %176, -1
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load ptr, ptr %35, align 8, !tbaa !30
  %180 = and i64 %176, 4294967295
  %181 = getelementptr inbounds i8, ptr %179, i64 %180
  br label %182

182:                                              ; preds = %175, %178
  %183 = phi ptr [ %181, %178 ], [ null, %175 ]
  %184 = load i32, ptr %36, align 4, !tbaa !60
  %185 = zext i32 %184 to i64
  %186 = sub nsw i64 %185, %176
  %187 = tail call i64 @_tr_flush_block(ptr noundef %0, ptr noundef %183, i64 noundef %186, i32 noundef 0) #8
  %188 = load i32, ptr %36, align 4, !tbaa !60
  %189 = zext i32 %188 to i64
  store i64 %189, ptr %34, align 8, !tbaa !61
  %190 = load ptr, ptr %0, align 8, !tbaa !18
  %191 = getelementptr inbounds %struct.z_stream_s, ptr %190, i64 0, i32 7
  %192 = load ptr, ptr %191, align 8, !tbaa !17
  %193 = getelementptr inbounds %struct.internal_state, ptr %192, i64 0, i32 4
  %194 = load i32, ptr %193, align 8, !tbaa !45
  %195 = getelementptr inbounds %struct.z_stream_s, ptr %190, i64 0, i32 4
  %196 = load i32, ptr %195, align 8, !tbaa !74
  %197 = tail call i32 @llvm.umin.i32(i32 %194, i32 %196)
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %223, label %199

199:                                              ; preds = %182
  %200 = getelementptr inbounds %struct.z_stream_s, ptr %190, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !71
  %202 = getelementptr inbounds %struct.internal_state, ptr %192, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !46
  %204 = zext i32 %197 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %201, ptr align 1 %203, i64 %204, i1 false)
  %205 = load ptr, ptr %200, align 8, !tbaa !71
  %206 = getelementptr inbounds i8, ptr %205, i64 %204
  store ptr %206, ptr %200, align 8, !tbaa !71
  %207 = load ptr, ptr %191, align 8, !tbaa !17
  %208 = getelementptr inbounds %struct.internal_state, ptr %207, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !46
  %210 = getelementptr inbounds i8, ptr %209, i64 %204
  store ptr %210, ptr %208, align 8, !tbaa !46
  %211 = getelementptr inbounds %struct.z_stream_s, ptr %190, i64 0, i32 5
  %212 = load i64, ptr %211, align 8, !tbaa !75
  %213 = add i64 %212, %204
  store i64 %213, ptr %211, align 8, !tbaa !75
  %214 = load i32, ptr %195, align 8, !tbaa !74
  %215 = sub i32 %214, %197
  store i32 %215, ptr %195, align 8, !tbaa !74
  %216 = getelementptr inbounds %struct.internal_state, ptr %207, i64 0, i32 4
  %217 = load i32, ptr %216, align 8, !tbaa !45
  %218 = sub i32 %217, %197
  store i32 %218, ptr %216, align 8, !tbaa !45
  %219 = icmp eq i32 %217, %197
  br i1 %219, label %220, label %223

220:                                              ; preds = %199
  %221 = getelementptr inbounds %struct.internal_state, ptr %207, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !34
  store ptr %222, ptr %208, align 8, !tbaa !46
  br label %223

223:                                              ; preds = %182, %199, %220
  %224 = load ptr, ptr %0, align 8, !tbaa !18
  %225 = getelementptr inbounds %struct.z_stream_s, ptr %224, i64 0, i32 4
  %226 = load i32, ptr %225, align 8, !tbaa !74
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %291, label %228

228:                                              ; preds = %223, %171
  br label %37, !llvm.loop !82

229:                                              ; preds = %45
  %230 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %231 = load i64, ptr %230, align 8, !tbaa !61
  %232 = icmp sgt i64 %231, -1
  br i1 %232, label %233, label %238

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %235 = load ptr, ptr %234, align 8, !tbaa !30
  %236 = and i64 %231, 4294967295
  %237 = getelementptr inbounds i8, ptr %235, i64 %236
  br label %238

238:                                              ; preds = %229, %233
  %239 = phi ptr [ %237, %233 ], [ null, %229 ]
  %240 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %241 = load i32, ptr %240, align 4, !tbaa !60
  %242 = zext i32 %241 to i64
  %243 = sub nsw i64 %242, %231
  %244 = icmp eq i32 %1, 4
  %245 = zext i1 %244 to i32
  %246 = tail call i64 @_tr_flush_block(ptr noundef %0, ptr noundef %239, i64 noundef %243, i32 noundef %245) #8
  %247 = load i32, ptr %240, align 4, !tbaa !60
  %248 = zext i32 %247 to i64
  store i64 %248, ptr %230, align 8, !tbaa !61
  %249 = load ptr, ptr %0, align 8, !tbaa !18
  %250 = getelementptr inbounds %struct.z_stream_s, ptr %249, i64 0, i32 7
  %251 = load ptr, ptr %250, align 8, !tbaa !17
  %252 = getelementptr inbounds %struct.internal_state, ptr %251, i64 0, i32 4
  %253 = load i32, ptr %252, align 8, !tbaa !45
  %254 = getelementptr inbounds %struct.z_stream_s, ptr %249, i64 0, i32 4
  %255 = load i32, ptr %254, align 8, !tbaa !74
  %256 = tail call i32 @llvm.umin.i32(i32 %253, i32 %255)
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %282, label %258

258:                                              ; preds = %238
  %259 = getelementptr inbounds %struct.z_stream_s, ptr %249, i64 0, i32 3
  %260 = load ptr, ptr %259, align 8, !tbaa !71
  %261 = getelementptr inbounds %struct.internal_state, ptr %251, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !46
  %263 = zext i32 %256 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %260, ptr align 1 %262, i64 %263, i1 false)
  %264 = load ptr, ptr %259, align 8, !tbaa !71
  %265 = getelementptr inbounds i8, ptr %264, i64 %263
  store ptr %265, ptr %259, align 8, !tbaa !71
  %266 = load ptr, ptr %250, align 8, !tbaa !17
  %267 = getelementptr inbounds %struct.internal_state, ptr %266, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !46
  %269 = getelementptr inbounds i8, ptr %268, i64 %263
  store ptr %269, ptr %267, align 8, !tbaa !46
  %270 = getelementptr inbounds %struct.z_stream_s, ptr %249, i64 0, i32 5
  %271 = load i64, ptr %270, align 8, !tbaa !75
  %272 = add i64 %271, %263
  store i64 %272, ptr %270, align 8, !tbaa !75
  %273 = load i32, ptr %254, align 8, !tbaa !74
  %274 = sub i32 %273, %256
  store i32 %274, ptr %254, align 8, !tbaa !74
  %275 = getelementptr inbounds %struct.internal_state, ptr %266, i64 0, i32 4
  %276 = load i32, ptr %275, align 8, !tbaa !45
  %277 = sub i32 %276, %256
  store i32 %277, ptr %275, align 8, !tbaa !45
  %278 = icmp eq i32 %276, %256
  br i1 %278, label %279, label %282

279:                                              ; preds = %258
  %280 = getelementptr inbounds %struct.internal_state, ptr %266, i64 0, i32 2
  %281 = load ptr, ptr %280, align 8, !tbaa !34
  store ptr %281, ptr %267, align 8, !tbaa !46
  br label %282

282:                                              ; preds = %238, %258, %279
  %283 = load ptr, ptr %0, align 8, !tbaa !18
  %284 = getelementptr inbounds %struct.z_stream_s, ptr %283, i64 0, i32 4
  %285 = load i32, ptr %284, align 8, !tbaa !74
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %282
  %288 = select i1 %244, i32 2, i32 0
  br label %291

289:                                              ; preds = %282
  %290 = select i1 %244, i32 3, i32 1
  br label %291

291:                                              ; preds = %223, %41, %289, %287
  %292 = phi i32 [ %288, %287 ], [ %290, %289 ], [ 0, %41 ], [ 0, %223 ]
  ret i32 %292
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @deflate_slow(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %4 = icmp eq i32 %1, 0
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 20
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 26
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 30
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 9
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 32
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 20
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %32 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %36 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  br label %37

37:                                               ; preds = %167, %2
  %38 = phi i32 [ 0, %2 ], [ %168, %167 ]
  %39 = load i32, ptr %3, align 4, !tbaa !62
  %40 = icmp ult i32 %39, 262
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  tail call fastcc void @fill_window(ptr noundef %0)
  %42 = load i32, ptr %3, align 4, !tbaa !62
  %43 = icmp ult i32 %42, 262
  %44 = and i1 %4, %43
  br i1 %44, label %373, label %45

45:                                               ; preds = %41
  %46 = icmp eq i32 %42, 0
  br i1 %46, label %296, label %47

47:                                               ; preds = %45, %37
  %48 = load i32, ptr %3, align 4, !tbaa !62
  %49 = icmp ugt i32 %48, 2
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = load i32, ptr %5, align 8, !tbaa !66
  %52 = load i32, ptr %6, align 8, !tbaa !29
  %53 = shl i32 %51, %52
  %54 = load ptr, ptr %7, align 8, !tbaa !30
  %55 = load i32, ptr %8, align 4, !tbaa !60
  %56 = add i32 %55, 2
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !6
  %60 = zext i8 %59 to i32
  %61 = xor i32 %53, %60
  %62 = load i32, ptr %9, align 4, !tbaa !28
  %63 = and i32 %61, %62
  store i32 %63, ptr %5, align 8, !tbaa !66
  %64 = load ptr, ptr %10, align 8, !tbaa !32
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds i16, ptr %64, i64 %65
  %67 = load i16, ptr %66, align 2, !tbaa !50
  %68 = zext i16 %67 to i32
  %69 = load ptr, ptr %11, align 8, !tbaa !31
  %70 = load i32, ptr %12, align 8, !tbaa !25
  %71 = and i32 %70, %55
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i16, ptr %69, i64 %72
  store i16 %67, ptr %73, align 2, !tbaa !50
  %74 = trunc i32 %55 to i16
  store i16 %74, ptr %66, align 2, !tbaa !50
  br label %75

75:                                               ; preds = %50, %47
  %76 = phi i32 [ %68, %50 ], [ %38, %47 ]
  %77 = load i32, ptr %13, align 8, !tbaa !64
  store i32 %77, ptr %14, align 8, !tbaa !63
  %78 = load i32, ptr %15, align 8, !tbaa !80
  store i32 %78, ptr %16, align 4, !tbaa !83
  store i32 2, ptr %13, align 8, !tbaa !64
  %79 = icmp eq i32 %76, 0
  br i1 %79, label %108, label %80

80:                                               ; preds = %75
  %81 = load i32, ptr %17, align 8, !tbaa !53
  %82 = icmp ult i32 %77, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load i32, ptr %18, align 4, !tbaa !60
  %85 = sub i32 %84, %76
  %86 = load i32, ptr %19, align 8, !tbaa !24
  %87 = add i32 %86, -262
  %88 = icmp ugt i32 %85, %87
  br i1 %88, label %108, label %89

89:                                               ; preds = %83
  %90 = load i32, ptr %20, align 8, !tbaa !39
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = tail call fastcc i32 @longest_match(ptr noundef %0, i32 noundef %76)
  store i32 %93, ptr %13, align 8, !tbaa !64
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i32, ptr %13, align 8, !tbaa !64
  %96 = icmp ult i32 %95, 6
  br i1 %96, label %97, label %108

97:                                               ; preds = %94
  %98 = load i32, ptr %20, align 8, !tbaa !39
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = icmp eq i32 %95, 3
  br i1 %101, label %102, label %108

102:                                              ; preds = %100
  %103 = load i32, ptr %18, align 4, !tbaa !60
  %104 = load i32, ptr %15, align 8, !tbaa !80
  %105 = sub i32 %103, %104
  %106 = icmp ugt i32 %105, 4096
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %97
  store i32 2, ptr %13, align 8, !tbaa !64
  br label %108

108:                                              ; preds = %94, %100, %102, %107, %83, %80, %75
  %109 = load i32, ptr %14, align 8, !tbaa !63
  %110 = icmp ugt i32 %109, 2
  br i1 %110, label %111, label %221

111:                                              ; preds = %108
  %112 = load i32, ptr %13, align 8, !tbaa !64
  %113 = icmp ugt i32 %112, %109
  br i1 %113, label %221, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr %21, align 4, !tbaa !60
  %116 = load i32, ptr %3, align 4, !tbaa !62
  %117 = add i32 %115, -3
  %118 = add i32 %117, %116
  %119 = load i32, ptr %16, align 4, !tbaa !83
  %120 = xor i32 %119, -1
  %121 = add i32 %115, %120
  %122 = add i32 %109, -3
  %123 = tail call i32 @_tr_tally(ptr noundef %0, i32 noundef %121, i32 noundef %122) #8
  %124 = load i32, ptr %14, align 8, !tbaa !63
  %125 = load i32, ptr %3, align 4, !tbaa !62
  %126 = sub i32 %125, %124
  %127 = add i32 %126, 1
  store i32 %127, ptr %3, align 4, !tbaa !62
  %128 = add i32 %124, -2
  store i32 %128, ptr %14, align 8, !tbaa !63
  %129 = load i32, ptr %21, align 4, !tbaa !60
  br label %130

130:                                              ; preds = %160, %114
  %131 = phi i32 [ %128, %114 ], [ %162, %160 ]
  %132 = phi i32 [ %129, %114 ], [ %134, %160 ]
  %133 = phi i32 [ %76, %114 ], [ %161, %160 ]
  %134 = add i32 %132, 1
  store i32 %134, ptr %21, align 4, !tbaa !60
  %135 = icmp ugt i32 %134, %118
  br i1 %135, label %160, label %136

136:                                              ; preds = %130
  %137 = load i32, ptr %22, align 8, !tbaa !66
  %138 = load i32, ptr %23, align 8, !tbaa !29
  %139 = shl i32 %137, %138
  %140 = load ptr, ptr %24, align 8, !tbaa !30
  %141 = add i32 %132, 3
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i8, ptr %140, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !6
  %145 = zext i8 %144 to i32
  %146 = xor i32 %139, %145
  %147 = load i32, ptr %25, align 4, !tbaa !28
  %148 = and i32 %146, %147
  store i32 %148, ptr %22, align 8, !tbaa !66
  %149 = load ptr, ptr %26, align 8, !tbaa !32
  %150 = zext i32 %148 to i64
  %151 = getelementptr inbounds i16, ptr %149, i64 %150
  %152 = load i16, ptr %151, align 2, !tbaa !50
  %153 = zext i16 %152 to i32
  %154 = load ptr, ptr %27, align 8, !tbaa !31
  %155 = load i32, ptr %28, align 8, !tbaa !25
  %156 = and i32 %155, %134
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i16, ptr %154, i64 %157
  store i16 %152, ptr %158, align 2, !tbaa !50
  %159 = trunc i32 %134 to i16
  store i16 %159, ptr %151, align 2, !tbaa !50
  br label %160

160:                                              ; preds = %130, %136
  %161 = phi i32 [ %153, %136 ], [ %133, %130 ]
  %162 = add i32 %131, -1
  store i32 %162, ptr %14, align 8, !tbaa !63
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %130, !llvm.loop !84

164:                                              ; preds = %160
  store i32 0, ptr %29, align 8, !tbaa !65
  store i32 2, ptr %13, align 8, !tbaa !64
  %165 = add i32 %132, 2
  store i32 %165, ptr %21, align 4, !tbaa !60
  %166 = icmp eq i32 %123, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164, %216, %291, %282
  %168 = phi i32 [ %76, %282 ], [ %76, %291 ], [ %161, %216 ], [ %161, %164 ]
  br label %37, !llvm.loop !85

169:                                              ; preds = %164
  %170 = load i64, ptr %30, align 8, !tbaa !61
  %171 = icmp sgt i64 %170, -1
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load ptr, ptr %31, align 8, !tbaa !30
  %174 = and i64 %170, 4294967295
  %175 = getelementptr inbounds i8, ptr %173, i64 %174
  br label %176

176:                                              ; preds = %169, %172
  %177 = phi ptr [ %175, %172 ], [ null, %169 ]
  %178 = zext i32 %165 to i64
  %179 = sub nsw i64 %178, %170
  %180 = tail call i64 @_tr_flush_block(ptr noundef %0, ptr noundef %177, i64 noundef %179, i32 noundef 0) #8
  %181 = load i32, ptr %21, align 4, !tbaa !60
  %182 = zext i32 %181 to i64
  store i64 %182, ptr %30, align 8, !tbaa !61
  %183 = load ptr, ptr %0, align 8, !tbaa !18
  %184 = getelementptr inbounds %struct.z_stream_s, ptr %183, i64 0, i32 7
  %185 = load ptr, ptr %184, align 8, !tbaa !17
  %186 = getelementptr inbounds %struct.internal_state, ptr %185, i64 0, i32 4
  %187 = load i32, ptr %186, align 8, !tbaa !45
  %188 = getelementptr inbounds %struct.z_stream_s, ptr %183, i64 0, i32 4
  %189 = load i32, ptr %188, align 8, !tbaa !74
  %190 = tail call i32 @llvm.umin.i32(i32 %187, i32 %189)
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %216, label %192

192:                                              ; preds = %176
  %193 = getelementptr inbounds %struct.z_stream_s, ptr %183, i64 0, i32 3
  %194 = load ptr, ptr %193, align 8, !tbaa !71
  %195 = getelementptr inbounds %struct.internal_state, ptr %185, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !46
  %197 = zext i32 %190 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %194, ptr align 1 %196, i64 %197, i1 false)
  %198 = load ptr, ptr %193, align 8, !tbaa !71
  %199 = getelementptr inbounds i8, ptr %198, i64 %197
  store ptr %199, ptr %193, align 8, !tbaa !71
  %200 = load ptr, ptr %184, align 8, !tbaa !17
  %201 = getelementptr inbounds %struct.internal_state, ptr %200, i64 0, i32 3
  %202 = load ptr, ptr %201, align 8, !tbaa !46
  %203 = getelementptr inbounds i8, ptr %202, i64 %197
  store ptr %203, ptr %201, align 8, !tbaa !46
  %204 = getelementptr inbounds %struct.z_stream_s, ptr %183, i64 0, i32 5
  %205 = load i64, ptr %204, align 8, !tbaa !75
  %206 = add i64 %205, %197
  store i64 %206, ptr %204, align 8, !tbaa !75
  %207 = load i32, ptr %188, align 8, !tbaa !74
  %208 = sub i32 %207, %190
  store i32 %208, ptr %188, align 8, !tbaa !74
  %209 = getelementptr inbounds %struct.internal_state, ptr %200, i64 0, i32 4
  %210 = load i32, ptr %209, align 8, !tbaa !45
  %211 = sub i32 %210, %190
  store i32 %211, ptr %209, align 8, !tbaa !45
  %212 = icmp eq i32 %210, %190
  br i1 %212, label %213, label %216

213:                                              ; preds = %192
  %214 = getelementptr inbounds %struct.internal_state, ptr %200, i64 0, i32 2
  %215 = load ptr, ptr %214, align 8, !tbaa !34
  store ptr %215, ptr %201, align 8, !tbaa !46
  br label %216

216:                                              ; preds = %176, %192, %213
  %217 = load ptr, ptr %0, align 8, !tbaa !18
  %218 = getelementptr inbounds %struct.z_stream_s, ptr %217, i64 0, i32 4
  %219 = load i32, ptr %218, align 8, !tbaa !74
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %373, label %167

221:                                              ; preds = %111, %108
  %222 = load i32, ptr %32, align 8, !tbaa !65
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %291, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %33, align 8, !tbaa !30
  %226 = load i32, ptr %34, align 4, !tbaa !60
  %227 = add i32 %226, -1
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i8, ptr %225, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !6
  %231 = zext i8 %230 to i32
  %232 = tail call i32 @_tr_tally(ptr noundef %0, i32 noundef 0, i32 noundef %231) #8
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %282, label %234

234:                                              ; preds = %224
  %235 = load i64, ptr %35, align 8, !tbaa !61
  %236 = icmp sgt i64 %235, -1
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load ptr, ptr %33, align 8, !tbaa !30
  %239 = and i64 %235, 4294967295
  %240 = getelementptr inbounds i8, ptr %238, i64 %239
  br label %241

241:                                              ; preds = %234, %237
  %242 = phi ptr [ %240, %237 ], [ null, %234 ]
  %243 = load i32, ptr %34, align 4, !tbaa !60
  %244 = zext i32 %243 to i64
  %245 = sub nsw i64 %244, %235
  %246 = tail call i64 @_tr_flush_block(ptr noundef %0, ptr noundef %242, i64 noundef %245, i32 noundef 0) #8
  %247 = load i32, ptr %34, align 4, !tbaa !60
  %248 = zext i32 %247 to i64
  store i64 %248, ptr %35, align 8, !tbaa !61
  %249 = load ptr, ptr %0, align 8, !tbaa !18
  %250 = getelementptr inbounds %struct.z_stream_s, ptr %249, i64 0, i32 7
  %251 = load ptr, ptr %250, align 8, !tbaa !17
  %252 = getelementptr inbounds %struct.internal_state, ptr %251, i64 0, i32 4
  %253 = load i32, ptr %252, align 8, !tbaa !45
  %254 = getelementptr inbounds %struct.z_stream_s, ptr %249, i64 0, i32 4
  %255 = load i32, ptr %254, align 8, !tbaa !74
  %256 = tail call i32 @llvm.umin.i32(i32 %253, i32 %255)
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %282, label %258

258:                                              ; preds = %241
  %259 = getelementptr inbounds %struct.z_stream_s, ptr %249, i64 0, i32 3
  %260 = load ptr, ptr %259, align 8, !tbaa !71
  %261 = getelementptr inbounds %struct.internal_state, ptr %251, i64 0, i32 3
  %262 = load ptr, ptr %261, align 8, !tbaa !46
  %263 = zext i32 %256 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %260, ptr align 1 %262, i64 %263, i1 false)
  %264 = load ptr, ptr %259, align 8, !tbaa !71
  %265 = getelementptr inbounds i8, ptr %264, i64 %263
  store ptr %265, ptr %259, align 8, !tbaa !71
  %266 = load ptr, ptr %250, align 8, !tbaa !17
  %267 = getelementptr inbounds %struct.internal_state, ptr %266, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !46
  %269 = getelementptr inbounds i8, ptr %268, i64 %263
  store ptr %269, ptr %267, align 8, !tbaa !46
  %270 = getelementptr inbounds %struct.z_stream_s, ptr %249, i64 0, i32 5
  %271 = load i64, ptr %270, align 8, !tbaa !75
  %272 = add i64 %271, %263
  store i64 %272, ptr %270, align 8, !tbaa !75
  %273 = load i32, ptr %254, align 8, !tbaa !74
  %274 = sub i32 %273, %256
  store i32 %274, ptr %254, align 8, !tbaa !74
  %275 = getelementptr inbounds %struct.internal_state, ptr %266, i64 0, i32 4
  %276 = load i32, ptr %275, align 8, !tbaa !45
  %277 = sub i32 %276, %256
  store i32 %277, ptr %275, align 8, !tbaa !45
  %278 = icmp eq i32 %276, %256
  br i1 %278, label %279, label %282

279:                                              ; preds = %258
  %280 = getelementptr inbounds %struct.internal_state, ptr %266, i64 0, i32 2
  %281 = load ptr, ptr %280, align 8, !tbaa !34
  store ptr %281, ptr %267, align 8, !tbaa !46
  br label %282

282:                                              ; preds = %279, %258, %241, %224
  %283 = load i32, ptr %34, align 4, !tbaa !60
  %284 = add i32 %283, 1
  store i32 %284, ptr %34, align 4, !tbaa !60
  %285 = load i32, ptr %3, align 4, !tbaa !62
  %286 = add i32 %285, -1
  store i32 %286, ptr %3, align 4, !tbaa !62
  %287 = load ptr, ptr %0, align 8, !tbaa !18
  %288 = getelementptr inbounds %struct.z_stream_s, ptr %287, i64 0, i32 4
  %289 = load i32, ptr %288, align 8, !tbaa !74
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %373, label %167

291:                                              ; preds = %221
  store i32 1, ptr %32, align 8, !tbaa !65
  %292 = load i32, ptr %36, align 4, !tbaa !60
  %293 = add i32 %292, 1
  store i32 %293, ptr %36, align 4, !tbaa !60
  %294 = load i32, ptr %3, align 4, !tbaa !62
  %295 = add i32 %294, -1
  store i32 %295, ptr %3, align 4, !tbaa !62
  br label %167

296:                                              ; preds = %45
  %297 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %298 = load i32, ptr %297, align 8, !tbaa !65
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %311, label %300

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %302 = load ptr, ptr %301, align 8, !tbaa !30
  %303 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %304 = load i32, ptr %303, align 4, !tbaa !60
  %305 = add i32 %304, -1
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i8, ptr %302, i64 %306
  %308 = load i8, ptr %307, align 1, !tbaa !6
  %309 = zext i8 %308 to i32
  %310 = tail call i32 @_tr_tally(ptr noundef %0, i32 noundef 0, i32 noundef %309) #8
  store i32 0, ptr %297, align 8, !tbaa !65
  br label %311

311:                                              ; preds = %300, %296
  %312 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %313 = load i64, ptr %312, align 8, !tbaa !61
  %314 = icmp sgt i64 %313, -1
  br i1 %314, label %315, label %320

315:                                              ; preds = %311
  %316 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %317 = load ptr, ptr %316, align 8, !tbaa !30
  %318 = and i64 %313, 4294967295
  %319 = getelementptr inbounds i8, ptr %317, i64 %318
  br label %320

320:                                              ; preds = %311, %315
  %321 = phi ptr [ %319, %315 ], [ null, %311 ]
  %322 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %323 = load i32, ptr %322, align 4, !tbaa !60
  %324 = zext i32 %323 to i64
  %325 = sub nsw i64 %324, %313
  %326 = icmp eq i32 %1, 4
  %327 = zext i1 %326 to i32
  %328 = tail call i64 @_tr_flush_block(ptr noundef %0, ptr noundef %321, i64 noundef %325, i32 noundef %327) #8
  %329 = load i32, ptr %322, align 4, !tbaa !60
  %330 = zext i32 %329 to i64
  store i64 %330, ptr %312, align 8, !tbaa !61
  %331 = load ptr, ptr %0, align 8, !tbaa !18
  %332 = getelementptr inbounds %struct.z_stream_s, ptr %331, i64 0, i32 7
  %333 = load ptr, ptr %332, align 8, !tbaa !17
  %334 = getelementptr inbounds %struct.internal_state, ptr %333, i64 0, i32 4
  %335 = load i32, ptr %334, align 8, !tbaa !45
  %336 = getelementptr inbounds %struct.z_stream_s, ptr %331, i64 0, i32 4
  %337 = load i32, ptr %336, align 8, !tbaa !74
  %338 = tail call i32 @llvm.umin.i32(i32 %335, i32 %337)
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %364, label %340

340:                                              ; preds = %320
  %341 = getelementptr inbounds %struct.z_stream_s, ptr %331, i64 0, i32 3
  %342 = load ptr, ptr %341, align 8, !tbaa !71
  %343 = getelementptr inbounds %struct.internal_state, ptr %333, i64 0, i32 3
  %344 = load ptr, ptr %343, align 8, !tbaa !46
  %345 = zext i32 %338 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %342, ptr align 1 %344, i64 %345, i1 false)
  %346 = load ptr, ptr %341, align 8, !tbaa !71
  %347 = getelementptr inbounds i8, ptr %346, i64 %345
  store ptr %347, ptr %341, align 8, !tbaa !71
  %348 = load ptr, ptr %332, align 8, !tbaa !17
  %349 = getelementptr inbounds %struct.internal_state, ptr %348, i64 0, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !46
  %351 = getelementptr inbounds i8, ptr %350, i64 %345
  store ptr %351, ptr %349, align 8, !tbaa !46
  %352 = getelementptr inbounds %struct.z_stream_s, ptr %331, i64 0, i32 5
  %353 = load i64, ptr %352, align 8, !tbaa !75
  %354 = add i64 %353, %345
  store i64 %354, ptr %352, align 8, !tbaa !75
  %355 = load i32, ptr %336, align 8, !tbaa !74
  %356 = sub i32 %355, %338
  store i32 %356, ptr %336, align 8, !tbaa !74
  %357 = getelementptr inbounds %struct.internal_state, ptr %348, i64 0, i32 4
  %358 = load i32, ptr %357, align 8, !tbaa !45
  %359 = sub i32 %358, %338
  store i32 %359, ptr %357, align 8, !tbaa !45
  %360 = icmp eq i32 %358, %338
  br i1 %360, label %361, label %364

361:                                              ; preds = %340
  %362 = getelementptr inbounds %struct.internal_state, ptr %348, i64 0, i32 2
  %363 = load ptr, ptr %362, align 8, !tbaa !34
  store ptr %363, ptr %349, align 8, !tbaa !46
  br label %364

364:                                              ; preds = %320, %340, %361
  %365 = load ptr, ptr %0, align 8, !tbaa !18
  %366 = getelementptr inbounds %struct.z_stream_s, ptr %365, i64 0, i32 4
  %367 = load i32, ptr %366, align 8, !tbaa !74
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %364
  %370 = select i1 %326, i32 2, i32 0
  br label %373

371:                                              ; preds = %364
  %372 = select i1 %326, i32 3, i32 1
  br label %373

373:                                              ; preds = %282, %216, %41, %371, %369
  %374 = phi i32 [ %370, %369 ], [ %372, %371 ], [ 0, %41 ], [ 0, %216 ], [ 0, %282 ]
  ret i32 %374
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_window(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %7 = add i32 %3, -262
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %9 = zext i32 %3 to i64
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 26
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 20
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  br label %19

19:                                               ; preds = %135, %1
  %20 = load i64, ptr %4, align 8, !tbaa !49
  %21 = load i32, ptr %5, align 4, !tbaa !62
  %22 = zext i32 %21 to i64
  %23 = load i32, ptr %6, align 4, !tbaa !60
  %24 = zext i32 %23 to i64
  %25 = add nuw nsw i64 %22, %24
  %26 = sub i64 %20, %25
  %27 = trunc i64 %26 to i32
  %28 = or i32 %23, %21
  %29 = or i32 %28, %27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %75, label %31

31:                                               ; preds = %19
  %32 = icmp eq i32 %27, -1
  br i1 %32, label %75, label %33

33:                                               ; preds = %31
  %34 = load i32, ptr %2, align 8, !tbaa !24
  %35 = add i32 %7, %34
  %36 = icmp ult i32 %23, %35
  br i1 %36, label %75, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %8, align 8, !tbaa !30
  %39 = getelementptr inbounds i8, ptr %38, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr align 1 %39, i64 %9, i1 false)
  %40 = load i32, ptr %10, align 8, !tbaa !80
  %41 = sub i32 %40, %3
  store i32 %41, ptr %10, align 8, !tbaa !80
  %42 = load i32, ptr %6, align 4, !tbaa !60
  %43 = sub i32 %42, %3
  store i32 %43, ptr %6, align 4, !tbaa !60
  %44 = load i64, ptr %11, align 8, !tbaa !61
  %45 = sub nsw i64 %44, %9
  store i64 %45, ptr %11, align 8, !tbaa !61
  %46 = load i32, ptr %12, align 4, !tbaa !27
  %47 = load ptr, ptr %13, align 8, !tbaa !32
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds i16, ptr %47, i64 %48
  br label %50

50:                                               ; preds = %50, %37
  %51 = phi ptr [ %49, %37 ], [ %53, %50 ]
  %52 = phi i32 [ %46, %37 ], [ %58, %50 ]
  %53 = getelementptr inbounds i16, ptr %51, i64 -1
  %54 = load i16, ptr %53, align 2, !tbaa !50
  %55 = zext i16 %54 to i32
  %56 = tail call i32 @llvm.usub.sat.i32(i32 %55, i32 %3)
  %57 = trunc i32 %56 to i16
  store i16 %57, ptr %53, align 2, !tbaa !50
  %58 = add i32 %52, -1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %50, !llvm.loop !86

60:                                               ; preds = %50
  %61 = load ptr, ptr %14, align 8, !tbaa !31
  %62 = getelementptr inbounds i16, ptr %61, i64 %9
  br label %63

63:                                               ; preds = %63, %60
  %64 = phi ptr [ %62, %60 ], [ %66, %63 ]
  %65 = phi i32 [ %3, %60 ], [ %71, %63 ]
  %66 = getelementptr inbounds i16, ptr %64, i64 -1
  %67 = load i16, ptr %66, align 2, !tbaa !50
  %68 = zext i16 %67 to i32
  %69 = tail call i32 @llvm.usub.sat.i32(i32 %68, i32 %3)
  %70 = trunc i32 %69 to i16
  store i16 %70, ptr %66, align 2, !tbaa !50
  %71 = add i32 %65, -1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %63, !llvm.loop !87

73:                                               ; preds = %63
  %74 = add i32 %3, %27
  br label %75

75:                                               ; preds = %31, %19, %73, %33
  %76 = phi i32 [ %74, %73 ], [ %27, %33 ], [ %3, %19 ], [ -2, %31 ]
  %77 = load ptr, ptr %0, align 8, !tbaa !18
  %78 = getelementptr inbounds %struct.z_stream_s, ptr %77, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !73
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %140, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr %15, align 8, !tbaa !30
  %83 = load i32, ptr %6, align 4, !tbaa !60
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %82, i64 %84
  %86 = load i32, ptr %5, align 4, !tbaa !62
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %85, i64 %87
  %89 = tail call i32 @llvm.umin.i32(i32 %79, i32 %76)
  %90 = icmp eq i32 %76, 0
  br i1 %90, label %111, label %91

91:                                               ; preds = %81
  %92 = sub i32 %79, %89
  store i32 %92, ptr %78, align 8, !tbaa !73
  %93 = getelementptr inbounds %struct.z_stream_s, ptr %77, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !17
  %95 = getelementptr inbounds %struct.internal_state, ptr %94, i64 0, i32 5
  %96 = load i32, ptr %95, align 4, !tbaa !22
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.z_stream_s, ptr %77, i64 0, i32 12
  %100 = load i64, ptr %99, align 8, !tbaa !47
  %101 = load ptr, ptr %77, align 8, !tbaa !72
  %102 = tail call i64 @adler32(i64 noundef %100, ptr noundef %101, i32 noundef %89) #8
  store i64 %102, ptr %99, align 8, !tbaa !47
  br label %103

103:                                              ; preds = %98, %91
  %104 = load ptr, ptr %77, align 8, !tbaa !72
  %105 = zext i32 %89 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %88, ptr align 1 %104, i64 %105, i1 false)
  %106 = load ptr, ptr %77, align 8, !tbaa !72
  %107 = getelementptr inbounds i8, ptr %106, i64 %105
  store ptr %107, ptr %77, align 8, !tbaa !72
  %108 = getelementptr inbounds %struct.z_stream_s, ptr %77, i64 0, i32 2
  %109 = load i64, ptr %108, align 8, !tbaa !43
  %110 = add i64 %109, %105
  store i64 %110, ptr %108, align 8, !tbaa !43
  br label %111

111:                                              ; preds = %81, %103
  %112 = phi i32 [ %89, %103 ], [ 0, %81 ]
  %113 = load i32, ptr %5, align 4, !tbaa !62
  %114 = add i32 %113, %112
  store i32 %114, ptr %5, align 4, !tbaa !62
  %115 = icmp ugt i32 %114, 2
  br i1 %115, label %116, label %133

116:                                              ; preds = %111
  %117 = load ptr, ptr %15, align 8, !tbaa !30
  %118 = load i32, ptr %6, align 4, !tbaa !60
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr %117, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !6
  %122 = zext i8 %121 to i32
  store i32 %122, ptr %16, align 8, !tbaa !66
  %123 = load i32, ptr %17, align 8, !tbaa !29
  %124 = shl i32 %122, %123
  %125 = add i32 %118, 1
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i8, ptr %117, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !6
  %129 = zext i8 %128 to i32
  %130 = xor i32 %124, %129
  %131 = load i32, ptr %18, align 4, !tbaa !28
  %132 = and i32 %130, %131
  store i32 %132, ptr %16, align 8, !tbaa !66
  br label %133

133:                                              ; preds = %111, %116
  %134 = icmp ult i32 %114, 262
  br i1 %134, label %135, label %140

135:                                              ; preds = %133
  %136 = load ptr, ptr %0, align 8, !tbaa !18
  %137 = getelementptr inbounds %struct.z_stream_s, ptr %136, i64 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !73
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %19, !llvm.loop !88

140:                                              ; preds = %135, %133, %75
  ret void
}

declare i64 @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @longest_match(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %4 = load i32, ptr %3, align 4, !tbaa !59
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %8 = load i32, ptr %7, align 4, !tbaa !60
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %12 = load i32, ptr %11, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 34
  %14 = load i32, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !24
  %17 = add i32 %16, -262
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %8, i32 %17)
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %20 = load ptr, ptr %19, align 8, !tbaa !31
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %22 = load i32, ptr %21, align 8, !tbaa !25
  %23 = getelementptr inbounds i8, ptr %10, i64 258
  %24 = sext i32 %12 to i64
  %25 = getelementptr i8, ptr %10, i64 %24
  %26 = getelementptr i8, ptr %25, i64 -1
  %27 = load i8, ptr %26, align 1, !tbaa !6
  %28 = load i8, ptr %25, align 1, !tbaa !6
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 33
  %30 = load i32, ptr %29, align 4, !tbaa !55
  %31 = icmp ult i32 %12, %30
  %32 = lshr i32 %4, 2
  %33 = select i1 %31, i32 %4, i32 %32
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %35 = load i32, ptr %34, align 4, !tbaa !62
  %36 = tail call i32 @llvm.umin.i32(i32 %14, i32 %35)
  %37 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 26
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
  %50 = load i8, ptr %49, align 1, !tbaa !6
  %51 = icmp eq i8 %50, %45
  br i1 %51, label %52, label %155

52:                                               ; preds = %40
  %53 = getelementptr i8, ptr %49, i64 -1
  %54 = load i8, ptr %53, align 1, !tbaa !6
  %55 = icmp eq i8 %54, %44
  br i1 %55, label %56, label %155

56:                                               ; preds = %52
  %57 = load i8, ptr %47, align 1, !tbaa !6
  %58 = load i8, ptr %10, align 1, !tbaa !6
  %59 = icmp eq i8 %57, %58
  br i1 %59, label %60, label %155

60:                                               ; preds = %56
  %61 = getelementptr inbounds i8, ptr %47, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !6
  %63 = load i8, ptr %38, align 1, !tbaa !6
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
  %72 = load i8, ptr %71, align 1, !tbaa !6
  %73 = getelementptr inbounds i8, ptr %68, i64 1
  %74 = load i8, ptr %73, align 1, !tbaa !6
  %75 = icmp eq i8 %72, %74
  br i1 %75, label %76, label %135

76:                                               ; preds = %67
  %77 = getelementptr inbounds i8, ptr %70, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !6
  %79 = getelementptr inbounds i8, ptr %68, i64 2
  %80 = load i8, ptr %79, align 1, !tbaa !6
  %81 = icmp eq i8 %78, %80
  br i1 %81, label %82, label %133

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, ptr %70, i64 3
  %84 = load i8, ptr %83, align 1, !tbaa !6
  %85 = getelementptr inbounds i8, ptr %68, i64 3
  %86 = load i8, ptr %85, align 1, !tbaa !6
  %87 = icmp eq i8 %84, %86
  br i1 %87, label %88, label %131

88:                                               ; preds = %82
  %89 = getelementptr inbounds i8, ptr %70, i64 4
  %90 = load i8, ptr %89, align 1, !tbaa !6
  %91 = getelementptr inbounds i8, ptr %68, i64 4
  %92 = load i8, ptr %91, align 1, !tbaa !6
  %93 = icmp eq i8 %90, %92
  br i1 %93, label %94, label %129

94:                                               ; preds = %88
  %95 = getelementptr inbounds i8, ptr %70, i64 5
  %96 = load i8, ptr %95, align 1, !tbaa !6
  %97 = getelementptr inbounds i8, ptr %68, i64 5
  %98 = load i8, ptr %97, align 1, !tbaa !6
  %99 = icmp eq i8 %96, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %94
  %101 = getelementptr inbounds i8, ptr %70, i64 6
  %102 = load i8, ptr %101, align 1, !tbaa !6
  %103 = getelementptr inbounds i8, ptr %68, i64 6
  %104 = load i8, ptr %103, align 1, !tbaa !6
  %105 = icmp eq i8 %102, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %100
  %107 = getelementptr inbounds i8, ptr %70, i64 7
  %108 = load i8, ptr %107, align 1, !tbaa !6
  %109 = getelementptr inbounds i8, ptr %68, i64 7
  %110 = load i8, ptr %109, align 1, !tbaa !6
  %111 = icmp eq i8 %108, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %106
  %113 = add nuw nsw i64 %69, 8
  %114 = getelementptr inbounds i8, ptr %10, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !6
  %116 = getelementptr inbounds i8, ptr %68, i64 8
  %117 = load i8, ptr %116, align 1, !tbaa !6
  %118 = icmp eq i8 %115, %117
  %119 = icmp ult i64 %69, 250
  %120 = and i1 %119, %118
  br i1 %120, label %67, label %121, !llvm.loop !89

121:                                              ; preds = %112
  %122 = getelementptr inbounds i8, ptr %10, i64 %113
  br label %137

123:                                              ; preds = %106
  %124 = getelementptr inbounds i8, ptr %70, i64 7
  br label %137

125:                                              ; preds = %100
  %126 = getelementptr inbounds i8, ptr %70, i64 6
  br label %137

127:                                              ; preds = %94
  %128 = getelementptr inbounds i8, ptr %70, i64 5
  br label %137

129:                                              ; preds = %88
  %130 = getelementptr inbounds i8, ptr %70, i64 4
  br label %137

131:                                              ; preds = %82
  %132 = getelementptr inbounds i8, ptr %70, i64 3
  br label %137

133:                                              ; preds = %76
  %134 = getelementptr inbounds i8, ptr %70, i64 2
  br label %137

135:                                              ; preds = %67
  %136 = getelementptr inbounds i8, ptr %70, i64 1
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
  store i32 %43, ptr %37, align 8, !tbaa !80
  %145 = icmp slt i32 %142, %36
  br i1 %145, label %146, label %168

146:                                              ; preds = %144
  %147 = shl i64 %140, 32
  %148 = add i64 %147, 1103806595072
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds i8, ptr %10, i64 %149
  %151 = load i8, ptr %150, align 1, !tbaa !6
  %152 = sext i32 %142 to i64
  %153 = getelementptr inbounds i8, ptr %10, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !6
  br label %155

155:                                              ; preds = %137, %146, %40, %52, %56, %60
  %156 = phi i32 [ %41, %40 ], [ %41, %52 ], [ %41, %56 ], [ %41, %60 ], [ %142, %146 ], [ %41, %137 ]
  %157 = phi i8 [ %44, %40 ], [ %44, %52 ], [ %44, %56 ], [ %44, %60 ], [ %151, %146 ], [ %44, %137 ]
  %158 = phi i8 [ %45, %40 ], [ %45, %52 ], [ %45, %56 ], [ %45, %60 ], [ %154, %146 ], [ %45, %137 ]
  %159 = and i32 %43, %22
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds i16, ptr %20, i64 %160
  %162 = load i16, ptr %161, align 2, !tbaa !50
  %163 = zext i16 %162 to i32
  %164 = icmp uge i32 %18, %163
  %165 = add i32 %42, -1
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %164, i1 true, i1 %166
  br i1 %167, label %168, label %40, !llvm.loop !90

168:                                              ; preds = %155, %144
  %169 = phi i32 [ %156, %155 ], [ %142, %144 ]
  %170 = tail call i32 @llvm.umin.i32(i32 %169, i32 %35)
  ret i32 %170
}

declare i32 @_tr_tally(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i32 -6, i32 1}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 48}
!10 = !{!"z_stream_s", !11, i64 0, !12, i64 8, !13, i64 16, !11, i64 24, !12, i64 32, !13, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !12, i64 88, !13, i64 96, !13, i64 104}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!10, !11, i64 64}
!15 = !{!10, !11, i64 80}
!16 = !{!10, !11, i64 72}
!17 = !{!10, !11, i64 56}
!18 = !{!19, !11, i64 0}
!19 = !{!"internal_state", !11, i64 0, !12, i64 8, !11, i64 16, !11, i64 24, !12, i64 32, !12, i64 36, !7, i64 40, !7, i64 41, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !11, i64 64, !13, i64 72, !11, i64 80, !11, i64 88, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !13, i64 120, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !12, i64 172, !12, i64 176, !7, i64 180, !7, i64 2472, !7, i64 2716, !20, i64 2872, !20, i64 2896, !20, i64 2920, !7, i64 2944, !7, i64 2976, !12, i64 5268, !12, i64 5272, !7, i64 5276, !11, i64 5856, !12, i64 5864, !12, i64 5868, !11, i64 5872, !13, i64 5880, !13, i64 5888, !13, i64 5896, !12, i64 5904, !12, i64 5908, !21, i64 5912, !12, i64 5916}
!20 = !{!"tree_desc_s", !11, i64 0, !12, i64 8, !11, i64 16}
!21 = !{!"short", !7, i64 0}
!22 = !{!19, !12, i64 36}
!23 = !{!19, !12, i64 52}
!24 = !{!19, !12, i64 48}
!25 = !{!19, !12, i64 56}
!26 = !{!19, !12, i64 104}
!27 = !{!19, !12, i64 100}
!28 = !{!19, !12, i64 108}
!29 = !{!19, !12, i64 112}
!30 = !{!19, !11, i64 64}
!31 = !{!19, !11, i64 80}
!32 = !{!19, !11, i64 88}
!33 = !{!19, !12, i64 5864}
!34 = !{!19, !11, i64 16}
!35 = !{!11, !11, i64 0}
!36 = !{!19, !11, i64 5872}
!37 = !{!19, !11, i64 5856}
!38 = !{!19, !12, i64 164}
!39 = !{!19, !12, i64 168}
!40 = !{!19, !7, i64 41}
!41 = !{i32 -2, i32 1}
!42 = !{!19, !12, i64 8}
!43 = !{!10, !13, i64 16}
!44 = !{!10, !12, i64 88}
!45 = !{!19, !12, i64 32}
!46 = !{!19, !11, i64 24}
!47 = !{!10, !13, i64 96}
!48 = !{!19, !12, i64 44}
!49 = !{!19, !13, i64 72}
!50 = !{!21, !21, i64 0}
!51 = !{!52, !21, i64 2}
!52 = !{!"config_s", !21, i64 0, !21, i64 2, !21, i64 4, !21, i64 6, !11, i64 8}
!53 = !{!19, !12, i64 160}
!54 = !{!52, !21, i64 0}
!55 = !{!19, !12, i64 172}
!56 = !{!52, !21, i64 4}
!57 = !{!19, !12, i64 176}
!58 = !{!52, !21, i64 6}
!59 = !{!19, !12, i64 156}
!60 = !{!19, !12, i64 140}
!61 = !{!19, !13, i64 120}
!62 = !{!19, !12, i64 148}
!63 = !{!19, !12, i64 152}
!64 = !{!19, !12, i64 128}
!65 = !{!19, !12, i64 136}
!66 = !{!19, !12, i64 96}
!67 = distinct !{!67, !68}
!68 = !{!"llvm.loop.unroll.disable"}
!69 = !{!52, !11, i64 8}
!70 = !{i32 -5, i32 2}
!71 = !{!10, !11, i64 24}
!72 = !{!10, !11, i64 0}
!73 = !{!10, !12, i64 8}
!74 = !{!10, !12, i64 32}
!75 = !{!10, !13, i64 40}
!76 = !{i64 0, i64 8, !35, i64 8, i64 4, !77, i64 16, i64 8, !78, i64 24, i64 8, !35, i64 32, i64 4, !77, i64 40, i64 8, !78, i64 48, i64 8, !35, i64 56, i64 8, !35, i64 64, i64 8, !35, i64 72, i64 8, !35, i64 80, i64 8, !35, i64 88, i64 4, !77, i64 96, i64 8, !78, i64 104, i64 8, !78}
!77 = !{!12, !12, i64 0}
!78 = !{!13, !13, i64 0}
!79 = distinct !{!79, !68}
!80 = !{!19, !12, i64 144}
!81 = distinct !{!81, !68}
!82 = distinct !{!82, !68}
!83 = !{!19, !12, i64 132}
!84 = distinct !{!84, !68}
!85 = distinct !{!85, !68}
!86 = distinct !{!86, !68}
!87 = distinct !{!87, !68}
!88 = distinct !{!88, !68}
!89 = distinct !{!89, !68}
!90 = distinct !{!90, !68}
