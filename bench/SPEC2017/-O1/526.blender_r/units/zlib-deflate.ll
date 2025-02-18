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

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateInit_(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef 8, i32 noundef 15, i32 noundef 8, i32 noundef 0, ptr noundef %2, i32 noundef %3), !range !34
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateInit2_(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef readonly %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq ptr %6, null
  br i1 %9, label %177, label %10

10:                                               ; preds = %8
  %11 = load i8, ptr %6, align 1, !tbaa !35
  %12 = icmp ne i8 %11, 49
  %13 = icmp ne i32 %7, 112
  %14 = or i1 %13, %12
  br i1 %14, label %177, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %0, null
  br i1 %16, label %177, label %17

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
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store ptr @zcfree, ptr %25, align 8, !tbaa !45
  br label %29

29:                                               ; preds = %28, %24
  %30 = icmp eq i32 %1, -1
  %31 = select i1 %30, i32 6, i32 %1
  %32 = icmp slt i32 %3, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = sub nsw i32 0, %3
  br label %40

35:                                               ; preds = %29
  %36 = icmp sgt i32 %3, 15
  %37 = add nsw i32 %3, -16
  %38 = select i1 %36, i32 %37, i32 %3
  %39 = select i1 %36, i32 2, i32 1
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %38, %35 ]
  %42 = phi i32 [ 0, %33 ], [ %39, %35 ]
  %43 = add i32 %4, -10
  %44 = icmp ult i32 %43, -9
  %45 = icmp ne i32 %2, 8
  %46 = or i1 %45, %44
  %47 = icmp slt i32 %41, 8
  %48 = select i1 %46, i1 true, i1 %47
  %49 = icmp sgt i32 %41, 15
  %50 = select i1 %48, i1 true, i1 %49
  %51 = icmp ugt i32 %31, 9
  %52 = or i1 %51, %50
  %53 = icmp ugt i32 %5, 4
  %54 = or i1 %53, %52
  br i1 %54, label %177, label %55

55:                                               ; preds = %40
  %56 = load ptr, ptr %19, align 8, !tbaa !43
  %57 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !44
  %59 = tail call ptr %56(ptr noundef %58, i32 noundef 1, i32 noundef 5936) #10
  %60 = icmp eq ptr %59, null
  br i1 %60, label %177, label %61

61:                                               ; preds = %55
  %62 = icmp eq i32 %41, 8
  %63 = select i1 %62, i32 9, i32 %41
  %64 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  store ptr %59, ptr %64, align 8, !tbaa !46
  store ptr %0, ptr %59, align 8, !tbaa !47
  %65 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 6
  store i32 %42, ptr %65, align 4, !tbaa !51
  %66 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 7
  store ptr null, ptr %66, align 8, !tbaa !52
  %67 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 12
  store i32 %63, ptr %67, align 8, !tbaa !53
  %68 = shl nuw i32 1, %63
  %69 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 11
  store i32 %68, ptr %69, align 4, !tbaa !54
  %70 = add i32 %68, -1
  %71 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 13
  store i32 %70, ptr %71, align 4, !tbaa !55
  %72 = add nsw i32 %4, 7
  %73 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 20
  store i32 %72, ptr %73, align 8, !tbaa !56
  %74 = shl nuw i32 1, %72
  %75 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 19
  store i32 %74, ptr %75, align 4, !tbaa !57
  %76 = add i32 %74, -1
  %77 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 21
  store i32 %76, ptr %77, align 4, !tbaa !58
  %78 = add i32 %4, 9
  %79 = udiv i32 %78, 3
  %80 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 22
  store i32 %79, ptr %80, align 8, !tbaa !59
  %81 = load ptr, ptr %19, align 8, !tbaa !43
  %82 = load ptr, ptr %57, align 8, !tbaa !44
  %83 = tail call ptr %81(ptr noundef %82, i32 noundef %68, i32 noundef 2) #10
  %84 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 14
  store ptr %83, ptr %84, align 8, !tbaa !60
  %85 = load ptr, ptr %19, align 8, !tbaa !43
  %86 = load ptr, ptr %57, align 8, !tbaa !44
  %87 = load i32, ptr %69, align 4, !tbaa !54
  %88 = tail call ptr %85(ptr noundef %86, i32 noundef %87, i32 noundef 2) #10
  %89 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 16
  store ptr %88, ptr %89, align 8, !tbaa !61
  %90 = load ptr, ptr %19, align 8, !tbaa !43
  %91 = load ptr, ptr %57, align 8, !tbaa !44
  %92 = load i32, ptr %75, align 4, !tbaa !57
  %93 = tail call ptr %90(ptr noundef %91, i32 noundef %92, i32 noundef 2) #10
  %94 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 17
  store ptr %93, ptr %94, align 8, !tbaa !62
  %95 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 58
  store i64 0, ptr %95, align 8, !tbaa !63
  %96 = add nsw i32 %4, 6
  %97 = shl nuw i32 1, %96
  %98 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 49
  store i32 %97, ptr %98, align 8, !tbaa !64
  %99 = load ptr, ptr %19, align 8, !tbaa !43
  %100 = load ptr, ptr %57, align 8, !tbaa !44
  %101 = tail call ptr %99(ptr noundef %100, i32 noundef %97, i32 noundef 4) #10
  %102 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 2
  store ptr %101, ptr %102, align 8, !tbaa !65
  %103 = load i32, ptr %98, align 8, !tbaa !64
  %104 = zext i32 %103 to i64
  %105 = shl nuw nsw i64 %104, 2
  %106 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 3
  store i64 %105, ptr %106, align 8, !tbaa !66
  %107 = load ptr, ptr %84, align 8, !tbaa !60
  %108 = icmp eq ptr %107, null
  br i1 %108, label %117, label %109

109:                                              ; preds = %61
  %110 = load ptr, ptr %89, align 8, !tbaa !61
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %94, align 8, !tbaa !62
  %114 = icmp eq ptr %113, null
  %115 = icmp eq ptr %101, null
  %116 = select i1 %114, i1 true, i1 %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %112, %109, %61
  %118 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 1
  store i32 666, ptr %118, align 8, !tbaa !67
  %119 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 6), align 16, !tbaa !68
  store ptr %119, ptr %18, align 8, !tbaa !38
  %120 = tail call i32 @deflateEnd(ptr noundef nonnull %0), !range !69
  br label %177

121:                                              ; preds = %112
  %122 = lshr i32 %103, 1
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds i16, ptr %101, i64 %123
  %125 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 51
  store ptr %124, ptr %125, align 8, !tbaa !70
  %126 = mul nuw nsw i64 %104, 3
  %127 = getelementptr inbounds i8, ptr %101, i64 %126
  %128 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 48
  store ptr %127, ptr %128, align 8, !tbaa !71
  %129 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 33
  store i32 %31, ptr %129, align 4, !tbaa !72
  %130 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 34
  store i32 %5, ptr %130, align 8, !tbaa !73
  %131 = trunc i32 %2 to i8
  %132 = getelementptr inbounds %struct.internal_state, ptr %59, i64 0, i32 9
  store i8 %131, ptr %132, align 4, !tbaa !74
  %133 = tail call i32 @deflateResetKeep(ptr noundef nonnull %0), !range !75
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %177

135:                                              ; preds = %121
  %136 = load ptr, ptr %64, align 8, !tbaa !46
  %137 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 11
  %138 = load i32, ptr %137, align 4, !tbaa !54
  %139 = zext i32 %138 to i64
  %140 = shl nuw nsw i64 %139, 1
  %141 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 15
  store i64 %140, ptr %141, align 8, !tbaa !76
  %142 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 17
  %143 = load ptr, ptr %142, align 8, !tbaa !62
  %144 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 19
  %145 = load i32, ptr %144, align 4, !tbaa !57
  %146 = add i32 %145, -1
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i16, ptr %143, i64 %147
  store i16 0, ptr %148, align 2, !tbaa !77
  %149 = shl nuw nsw i64 %147, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %143, i8 0, i64 %149, i1 false)
  %150 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 33
  %151 = load i32, ptr %150, align 4, !tbaa !72
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %152, i32 1
  %154 = load i16, ptr %153, align 2, !tbaa !78
  %155 = zext i16 %154 to i32
  %156 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 32
  store i32 %155, ptr %156, align 8, !tbaa !80
  %157 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %152
  %158 = load i16, ptr %157, align 16, !tbaa !81
  %159 = zext i16 %158 to i32
  %160 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 35
  store i32 %159, ptr %160, align 4, !tbaa !82
  %161 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %152, i32 2
  %162 = load i16, ptr %161, align 4, !tbaa !83
  %163 = zext i16 %162 to i32
  %164 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 36
  store i32 %163, ptr %164, align 8, !tbaa !84
  %165 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %152, i32 3
  %166 = load i16, ptr %165, align 2, !tbaa !85
  %167 = zext i16 %166 to i32
  %168 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 31
  store i32 %167, ptr %168, align 4, !tbaa !86
  %169 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 27
  store i32 0, ptr %169, align 4, !tbaa !87
  %170 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 23
  store i64 0, ptr %170, align 8, !tbaa !88
  %171 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 29
  store i32 0, ptr %171, align 4, !tbaa !89
  %172 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 55
  store i32 0, ptr %172, align 4, !tbaa !90
  %173 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 30
  store i32 2, ptr %173, align 8, !tbaa !91
  %174 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 24
  store i32 2, ptr %174, align 8, !tbaa !92
  %175 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 26
  store i32 0, ptr %175, align 8, !tbaa !93
  %176 = getelementptr inbounds %struct.internal_state, ptr %136, i64 0, i32 18
  store i32 0, ptr %176, align 8, !tbaa !94
  br label %177

177:                                              ; preds = %135, %121, %55, %40, %15, %8, %10, %117
  %178 = phi i32 [ -4, %117 ], [ -6, %10 ], [ -6, %8 ], [ -2, %15 ], [ -2, %40 ], [ -4, %55 ], [ %133, %121 ], [ %133, %135 ]
  ret i32 %178
}

declare hidden ptr @zcalloc(ptr noundef, i32 noundef, i32 noundef) #1

declare hidden void @zcfree(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateEnd(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %57, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %57, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !67
  switch i32 %9, label %57 [
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
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  tail call void %16(ptr noundef %18, ptr noundef nonnull %12) #10
  br label %19

19:                                               ; preds = %14, %10
  %20 = load ptr, ptr %4, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.internal_state, ptr %20, i64 0, i32 17
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !45
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  tail call void %26(ptr noundef %28, ptr noundef nonnull %22) #10
  br label %29

29:                                               ; preds = %24, %19
  %30 = load ptr, ptr %4, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.internal_state, ptr %30, i64 0, i32 16
  %32 = load ptr, ptr %31, align 8, !tbaa !61
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !45
  %37 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !44
  tail call void %36(ptr noundef %38, ptr noundef nonnull %32) #10
  br label %39

39:                                               ; preds = %34, %29
  %40 = load ptr, ptr %4, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.internal_state, ptr %40, i64 0, i32 14
  %42 = load ptr, ptr %41, align 8, !tbaa !60
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %46 = load ptr, ptr %45, align 8, !tbaa !45
  %47 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  tail call void %46(ptr noundef %48, ptr noundef nonnull %42) #10
  br label %49

49:                                               ; preds = %44, %39
  %50 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !45
  %52 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !44
  %54 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void %51(ptr noundef %53, ptr noundef %54) #10
  store ptr null, ptr %4, align 8, !tbaa !46
  %55 = icmp eq i32 %9, 113
  %56 = select i1 %55, i32 -3, i32 0
  br label %57

57:                                               ; preds = %7, %1, %3, %49
  %58 = phi i32 [ %56, %49 ], [ -2, %3 ], [ -2, %1 ], [ -2, %7 ]
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateReset(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @deflateResetKeep(ptr noundef %0), !range !75
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %47

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 4, !tbaa !54
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 1
  %11 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 15
  store i64 %10, ptr %11, align 8, !tbaa !76
  %12 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !62
  %14 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 19
  %15 = load i32, ptr %14, align 4, !tbaa !57
  %16 = add i32 %15, -1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i16, ptr %13, i64 %17
  store i16 0, ptr %18, align 2, !tbaa !77
  %19 = shl nuw nsw i64 %17, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %13, i8 0, i64 %19, i1 false)
  %20 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 33
  %21 = load i32, ptr %20, align 4, !tbaa !72
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %22, i32 1
  %24 = load i16, ptr %23, align 2, !tbaa !78
  %25 = zext i16 %24 to i32
  %26 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 32
  store i32 %25, ptr %26, align 8, !tbaa !80
  %27 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %22
  %28 = load i16, ptr %27, align 16, !tbaa !81
  %29 = zext i16 %28 to i32
  %30 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 35
  store i32 %29, ptr %30, align 4, !tbaa !82
  %31 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %22, i32 2
  %32 = load i16, ptr %31, align 4, !tbaa !83
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 36
  store i32 %33, ptr %34, align 8, !tbaa !84
  %35 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %22, i32 3
  %36 = load i16, ptr %35, align 2, !tbaa !85
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 31
  store i32 %37, ptr %38, align 4, !tbaa !86
  %39 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 27
  store i32 0, ptr %39, align 4, !tbaa !87
  %40 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 23
  store i64 0, ptr %40, align 8, !tbaa !88
  %41 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 29
  store i32 0, ptr %41, align 4, !tbaa !89
  %42 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 55
  store i32 0, ptr %42, align 4, !tbaa !90
  %43 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 30
  store i32 2, ptr %43, align 8, !tbaa !91
  %44 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 24
  store i32 2, ptr %44, align 8, !tbaa !92
  %45 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 26
  store i32 0, ptr %45, align 8, !tbaa !93
  %46 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 18
  store i32 0, ptr %46, align 8, !tbaa !94
  br label %47

47:                                               ; preds = %4, %1
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @deflateSetDictionary(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %117, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %9, %8
  br i1 %10, label %117, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !51
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %117, label %15

15:                                               ; preds = %11
  %16 = icmp eq i32 %13, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !67
  %20 = icmp eq i32 %19, 42
  br i1 %20, label %21, label %117

21:                                               ; preds = %17, %15
  %22 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 29
  %23 = load i32, ptr %22, align 4, !tbaa !89
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %117

25:                                               ; preds = %21
  br i1 %16, label %26, label %30

26:                                               ; preds = %25
  %27 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %28 = load i64, ptr %27, align 8, !tbaa !95
  %29 = tail call i64 @adler32(i64 noundef %28, ptr noundef %1, i32 noundef %2) #10
  store i64 %29, ptr %27, align 8, !tbaa !95
  br label %30

30:                                               ; preds = %26, %25
  store i32 0, ptr %12, align 4, !tbaa !51
  %31 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !54
  %33 = icmp ugt i32 %32, %2
  br i1 %33, label %53, label %34

34:                                               ; preds = %30
  %35 = icmp eq i32 %13, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 17
  %38 = load ptr, ptr %37, align 8, !tbaa !62
  %39 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 19
  %40 = load i32, ptr %39, align 4, !tbaa !57
  %41 = add i32 %40, -1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i16, ptr %38, i64 %42
  store i16 0, ptr %43, align 2, !tbaa !77
  %44 = shl nuw nsw i64 %42, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %38, i8 0, i64 %44, i1 false)
  %45 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 27
  store i32 0, ptr %45, align 4, !tbaa !87
  %46 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 23
  store i64 0, ptr %46, align 8, !tbaa !88
  %47 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 55
  store i32 0, ptr %47, align 4, !tbaa !90
  br label %48

48:                                               ; preds = %36, %34
  %49 = load i32, ptr %31, align 4, !tbaa !54
  %50 = sub i32 %2, %49
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %1, i64 %51
  br label %53

53:                                               ; preds = %48, %30
  %54 = phi i32 [ %49, %48 ], [ %2, %30 ]
  %55 = phi ptr [ %52, %48 ], [ %1, %30 ]
  %56 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !96
  %58 = load ptr, ptr %0, align 8, !tbaa !97
  store i32 %54, ptr %56, align 8, !tbaa !96
  store ptr %55, ptr %0, align 8, !tbaa !97
  tail call fastcc void @fill_window(ptr noundef %7)
  %59 = load i32, ptr %22, align 4, !tbaa !89
  %60 = icmp ugt i32 %59, 2
  br i1 %60, label %61, label %106

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 27
  %63 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 18
  %64 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 22
  %65 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 14
  %66 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 21
  %67 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 17
  %68 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 16
  %69 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 13
  br label %70

70:                                               ; preds = %61, %103
  %71 = phi i32 [ %59, %61 ], [ %104, %103 ]
  %72 = load i32, ptr %62, align 4, !tbaa !87
  %73 = add i32 %71, -2
  %74 = load i32, ptr %64, align 8, !tbaa !59
  %75 = load ptr, ptr %65, align 8, !tbaa !60
  %76 = load i32, ptr %66, align 4, !tbaa !58
  %77 = load ptr, ptr %67, align 8, !tbaa !62
  %78 = load ptr, ptr %68, align 8, !tbaa !61
  %79 = load i32, ptr %69, align 4, !tbaa !55
  %80 = load i32, ptr %63, align 8, !tbaa !94
  br label %81

81:                                               ; preds = %81, %70
  %82 = phi i32 [ %80, %70 ], [ %92, %81 ]
  %83 = phi i32 [ %72, %70 ], [ %100, %81 ]
  %84 = phi i32 [ %73, %70 ], [ %101, %81 ]
  %85 = shl i32 %82, %74
  %86 = add i32 %83, 2
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, ptr %75, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !35
  %90 = zext i8 %89 to i32
  %91 = xor i32 %85, %90
  %92 = and i32 %91, %76
  store i32 %92, ptr %63, align 8, !tbaa !94
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i16, ptr %77, i64 %93
  %95 = load i16, ptr %94, align 2, !tbaa !77
  %96 = and i32 %79, %83
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i16, ptr %78, i64 %97
  store i16 %95, ptr %98, align 2, !tbaa !77
  %99 = trunc i32 %83 to i16
  store i16 %99, ptr %94, align 2, !tbaa !77
  %100 = add i32 %83, 1
  %101 = add i32 %84, -1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %81, !llvm.loop !98

103:                                              ; preds = %81
  store i32 %100, ptr %62, align 4, !tbaa !87
  store i32 2, ptr %22, align 4, !tbaa !89
  tail call fastcc void @fill_window(ptr noundef %7)
  %104 = load i32, ptr %22, align 4, !tbaa !89
  %105 = icmp ugt i32 %104, 2
  br i1 %105, label %70, label %106, !llvm.loop !101

106:                                              ; preds = %103, %53
  %107 = phi i32 [ %59, %53 ], [ %104, %103 ]
  %108 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 27
  %109 = load i32, ptr %108, align 4, !tbaa !87
  %110 = add i32 %109, %107
  store i32 %110, ptr %108, align 4, !tbaa !87
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 23
  store i64 %111, ptr %112, align 8, !tbaa !88
  %113 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 55
  store i32 %107, ptr %113, align 4, !tbaa !90
  store i32 0, ptr %22, align 4, !tbaa !89
  %114 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 30
  store i32 2, ptr %114, align 8, !tbaa !91
  %115 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 24
  store i32 2, ptr %115, align 8, !tbaa !92
  %116 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 26
  store i32 0, ptr %116, align 8, !tbaa !93
  store ptr %58, ptr %0, align 8, !tbaa !97
  store i32 %57, ptr %56, align 8, !tbaa !96
  store i32 %13, ptr %12, align 4, !tbaa !51
  br label %117

117:                                              ; preds = %11, %17, %21, %3, %5, %106
  %118 = phi i32 [ 0, %106 ], [ -2, %5 ], [ -2, %3 ], [ -2, %21 ], [ -2, %17 ], [ -2, %11 ]
  ret i32 %118
}

declare i64 @adler32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @fill_window(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %3 = load i32, ptr %2, align 4, !tbaa !54
  %4 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %6 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %7 = add i32 %3, -262
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %9 = zext i32 %3 to i64
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 19
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  br label %23

23:                                               ; preds = %167, %1
  %24 = load i64, ptr %4, align 8, !tbaa !76
  %25 = load i32, ptr %5, align 4, !tbaa !89
  %26 = zext i32 %25 to i64
  %27 = load i32, ptr %6, align 4, !tbaa !87
  %28 = zext i32 %27 to i64
  %29 = add nuw nsw i64 %26, %28
  %30 = sub i64 %24, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, ptr %2, align 4, !tbaa !54
  %33 = add i32 %7, %32
  %34 = icmp ult i32 %27, %33
  br i1 %34, label %73, label %35

35:                                               ; preds = %23
  %36 = load ptr, ptr %8, align 8, !tbaa !60
  %37 = getelementptr inbounds i8, ptr %36, i64 %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %37, i64 %9, i1 false)
  %38 = load i32, ptr %10, align 8, !tbaa !102
  %39 = sub i32 %38, %3
  store i32 %39, ptr %10, align 8, !tbaa !102
  %40 = load i32, ptr %6, align 4, !tbaa !87
  %41 = sub i32 %40, %3
  store i32 %41, ptr %6, align 4, !tbaa !87
  %42 = load i64, ptr %11, align 8, !tbaa !88
  %43 = sub nsw i64 %42, %9
  store i64 %43, ptr %11, align 8, !tbaa !88
  %44 = load i32, ptr %12, align 4, !tbaa !57
  %45 = load ptr, ptr %13, align 8, !tbaa !62
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds i16, ptr %45, i64 %46
  br label %48

48:                                               ; preds = %48, %35
  %49 = phi ptr [ %47, %35 ], [ %51, %48 ]
  %50 = phi i32 [ %44, %35 ], [ %56, %48 ]
  %51 = getelementptr inbounds i16, ptr %49, i64 -1
  %52 = load i16, ptr %51, align 2, !tbaa !77
  %53 = zext i16 %52 to i32
  %54 = tail call i32 @llvm.usub.sat.i32(i32 %53, i32 %3)
  %55 = trunc i32 %54 to i16
  store i16 %55, ptr %51, align 2, !tbaa !77
  %56 = add i32 %50, -1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %48, !llvm.loop !103

58:                                               ; preds = %48
  %59 = load ptr, ptr %14, align 8, !tbaa !61
  %60 = getelementptr inbounds i16, ptr %59, i64 %9
  br label %61

61:                                               ; preds = %61, %58
  %62 = phi ptr [ %60, %58 ], [ %64, %61 ]
  %63 = phi i32 [ %3, %58 ], [ %69, %61 ]
  %64 = getelementptr inbounds i16, ptr %62, i64 -1
  %65 = load i16, ptr %64, align 2, !tbaa !77
  %66 = zext i16 %65 to i32
  %67 = tail call i32 @llvm.usub.sat.i32(i32 %66, i32 %3)
  %68 = trunc i32 %67 to i16
  store i16 %68, ptr %64, align 2, !tbaa !77
  %69 = add i32 %63, -1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %61, !llvm.loop !104

71:                                               ; preds = %61
  %72 = add i32 %3, %31
  br label %73

73:                                               ; preds = %71, %23
  %74 = phi i32 [ %72, %71 ], [ %31, %23 ]
  %75 = load ptr, ptr %0, align 8, !tbaa !47
  %76 = getelementptr inbounds %struct.z_stream_s, ptr %75, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !96
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %172, label %79

79:                                               ; preds = %73
  %80 = load ptr, ptr %15, align 8, !tbaa !60
  %81 = load i32, ptr %6, align 4, !tbaa !87
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr %80, i64 %82
  %84 = load i32, ptr %5, align 4, !tbaa !89
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %83, i64 %85
  %87 = tail call i32 @llvm.umin.i32(i32 %77, i32 %74)
  %88 = icmp eq i32 %74, 0
  br i1 %88, label %111, label %89

89:                                               ; preds = %79
  %90 = sub i32 %77, %87
  store i32 %90, ptr %76, align 8, !tbaa !96
  %91 = load ptr, ptr %75, align 8, !tbaa !97
  %92 = zext i32 %87 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %86, ptr align 1 %91, i64 %92, i1 false)
  %93 = getelementptr inbounds %struct.z_stream_s, ptr %75, i64 0, i32 7
  %94 = load ptr, ptr %93, align 8, !tbaa !46
  %95 = getelementptr inbounds %struct.internal_state, ptr %94, i64 0, i32 6
  %96 = load i32, ptr %95, align 4, !tbaa !51
  switch i32 %96, label %105 [
    i32 1, label %97
    i32 2, label %101
  ]

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct.z_stream_s, ptr %75, i64 0, i32 12
  %99 = load i64, ptr %98, align 8, !tbaa !95
  %100 = tail call i64 @adler32(i64 noundef %99, ptr noundef %86, i32 noundef %87) #10
  store i64 %100, ptr %98, align 8, !tbaa !95
  br label %105

101:                                              ; preds = %89
  %102 = getelementptr inbounds %struct.z_stream_s, ptr %75, i64 0, i32 12
  %103 = load i64, ptr %102, align 8, !tbaa !95
  %104 = tail call i64 @crc32(i64 noundef %103, ptr noundef %86, i32 noundef %87) #10
  store i64 %104, ptr %102, align 8, !tbaa !95
  br label %105

105:                                              ; preds = %101, %97, %89
  %106 = load ptr, ptr %75, align 8, !tbaa !97
  %107 = getelementptr inbounds i8, ptr %106, i64 %92
  store ptr %107, ptr %75, align 8, !tbaa !97
  %108 = getelementptr inbounds %struct.z_stream_s, ptr %75, i64 0, i32 2
  %109 = load i64, ptr %108, align 8, !tbaa !105
  %110 = add i64 %109, %92
  store i64 %110, ptr %108, align 8, !tbaa !105
  br label %111

111:                                              ; preds = %79, %105
  %112 = phi i32 [ %87, %105 ], [ 0, %79 ]
  %113 = load i32, ptr %5, align 4, !tbaa !89
  %114 = add i32 %113, %112
  store i32 %114, ptr %5, align 4, !tbaa !89
  %115 = load i32, ptr %16, align 4, !tbaa !90
  %116 = add i32 %115, %114
  %117 = icmp ugt i32 %116, 2
  br i1 %117, label %118, label %165

118:                                              ; preds = %111
  %119 = load i32, ptr %6, align 4, !tbaa !87
  %120 = sub i32 %119, %115
  %121 = load ptr, ptr %15, align 8, !tbaa !60
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds i8, ptr %121, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !35
  %125 = zext i8 %124 to i32
  store i32 %125, ptr %17, align 8, !tbaa !94
  %126 = load i32, ptr %18, align 8, !tbaa !59
  %127 = shl i32 %125, %126
  %128 = add i32 %120, 1
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i8, ptr %121, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !35
  %132 = zext i8 %131 to i32
  %133 = xor i32 %127, %132
  %134 = load i32, ptr %19, align 4, !tbaa !58
  %135 = and i32 %133, %134
  store i32 %135, ptr %17, align 8, !tbaa !94
  %136 = load i32, ptr %16, align 4, !tbaa !90
  br label %137

137:                                              ; preds = %141, %118
  %138 = phi i32 [ %136, %118 ], [ %162, %141 ]
  %139 = phi i32 [ %120, %118 ], [ %161, %141 ]
  %140 = icmp eq i32 %138, 0
  br i1 %140, label %165, label %141

141:                                              ; preds = %137
  %142 = load i32, ptr %17, align 8, !tbaa !94
  %143 = shl i32 %142, %126
  %144 = add i32 %139, 2
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i8, ptr %121, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !35
  %148 = zext i8 %147 to i32
  %149 = xor i32 %143, %148
  %150 = and i32 %149, %134
  store i32 %150, ptr %17, align 8, !tbaa !94
  %151 = load ptr, ptr %20, align 8, !tbaa !62
  %152 = zext i32 %150 to i64
  %153 = getelementptr inbounds i16, ptr %151, i64 %152
  %154 = load i16, ptr %153, align 2, !tbaa !77
  %155 = load ptr, ptr %21, align 8, !tbaa !61
  %156 = load i32, ptr %22, align 4, !tbaa !55
  %157 = and i32 %156, %139
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i16, ptr %155, i64 %158
  store i16 %154, ptr %159, align 2, !tbaa !77
  %160 = trunc i32 %139 to i16
  store i16 %160, ptr %153, align 2, !tbaa !77
  %161 = add i32 %139, 1
  %162 = add i32 %138, -1
  store i32 %162, ptr %16, align 4, !tbaa !90
  %163 = add i32 %162, %114
  %164 = icmp ult i32 %163, 3
  br i1 %164, label %165, label %137, !llvm.loop !106

165:                                              ; preds = %137, %141, %111
  %166 = icmp ult i32 %114, 262
  br i1 %166, label %167, label %172

167:                                              ; preds = %165
  %168 = load ptr, ptr %0, align 8, !tbaa !47
  %169 = getelementptr inbounds %struct.z_stream_s, ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !96
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %23, !llvm.loop !107

172:                                              ; preds = %165, %73, %167
  %173 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 15
  %174 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 58
  %175 = load i64, ptr %174, align 8, !tbaa !63
  %176 = load i64, ptr %173, align 8, !tbaa !76
  %177 = icmp ult i64 %175, %176
  br i1 %177, label %178, label %207

178:                                              ; preds = %172
  %179 = load i32, ptr %6, align 4, !tbaa !87
  %180 = zext i32 %179 to i64
  %181 = load i32, ptr %5, align 4, !tbaa !89
  %182 = zext i32 %181 to i64
  %183 = add nuw nsw i64 %182, %180
  %184 = icmp ult i64 %175, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %178
  %186 = sub i64 %176, %183
  %187 = tail call i64 @llvm.umin.i64(i64 %186, i64 258)
  %188 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %189 = load ptr, ptr %188, align 8, !tbaa !60
  %190 = getelementptr inbounds i8, ptr %189, i64 %183
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %190, i8 0, i64 %187, i1 false)
  %191 = add nuw nsw i64 %187, %183
  br label %205

192:                                              ; preds = %178
  %193 = add nuw nsw i64 %183, 258
  %194 = icmp ult i64 %175, %193
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = sub nsw i64 %193, %175
  %197 = sub i64 %176, %175
  %198 = tail call i64 @llvm.umin.i64(i64 %196, i64 %197)
  %199 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %200 = load ptr, ptr %199, align 8, !tbaa !60
  %201 = getelementptr inbounds i8, ptr %200, i64 %175
  %202 = and i64 %198, 4294967295
  tail call void @llvm.memset.p0.i64(ptr align 1 %201, i8 0, i64 %202, i1 false)
  %203 = load i64, ptr %174, align 8, !tbaa !63
  %204 = add i64 %203, %198
  br label %205

205:                                              ; preds = %195, %185
  %206 = phi i64 [ %191, %185 ], [ %204, %195 ]
  store i64 %206, ptr %174, align 8, !tbaa !63
  br label %207

207:                                              ; preds = %205, %192, %172
  ret void
}

; Function Attrs: nounwind uwtable
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
  store i64 0, ptr %17, align 8, !tbaa !105
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  store i32 2, ptr %18, align 8, !tbaa !108
  %19 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 5
  store i32 0, ptr %19, align 8, !tbaa !109
  %20 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !110
  %23 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !51
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = sub nsw i32 0, %24
  store i32 %27, ptr %23, align 4, !tbaa !51
  br label %28

28:                                               ; preds = %26, %15
  %29 = load i32, ptr %23, align 4, !tbaa !51
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 113, i32 42
  %32 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 1
  store i32 %31, ptr %32, align 8, !tbaa !67
  %33 = icmp eq i32 %29, 2
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %38

36:                                               ; preds = %28
  %37 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ]
  %40 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %39, ptr %40, align 8, !tbaa !95
  %41 = getelementptr inbounds %struct.internal_state, ptr %5, i64 0, i32 10
  store i32 0, ptr %41, align 8, !tbaa !111
  tail call void @_tr_init(ptr noundef nonnull %5) #10
  br label %42

42:                                               ; preds = %1, %3, %7, %11, %38
  %43 = phi i32 [ 0, %38 ], [ -2, %11 ], [ -2, %7 ], [ -2, %3 ], [ -2, %1 ]
  ret i32 %43
}

declare i64 @crc32(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare hidden void @_tr_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @deflateSetHeader(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @deflatePending(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #4 {
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
  %13 = load i32, ptr %12, align 8, !tbaa !109
  store i32 %13, ptr %1, align 4, !tbaa !112
  br label %14

14:                                               ; preds = %11, %9
  %15 = icmp eq ptr %2, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 57
  %18 = load i32, ptr %17, align 4, !tbaa !113
  store i32 %18, ptr %2, align 4, !tbaa !112
  br label %19

19:                                               ; preds = %14, %16, %3, %5
  %20 = phi i32 [ -2, %5 ], [ -2, %3 ], [ 0, %16 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
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
  %13 = load ptr, ptr %12, align 8, !tbaa !110
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
  tail call void @_tr_flush_bits(ptr noundef nonnull %7) #10
  %33 = ashr i32 %21, %24
  %34 = sub nsw i32 %20, %24
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %19, !llvm.loop !115

36:                                               ; preds = %19, %9, %3, %5
  %37 = phi i32 [ -2, %5 ], [ -2, %3 ], [ -5, %9 ], [ 0, %19 ]
  ret i32 %37
}

declare hidden void @_tr_flush_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  %31 = load i64, ptr %30, align 8, !tbaa !105
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @deflate(ptr noundef nonnull %0, i32 noundef 5), !range !117
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
  %43 = load i16, ptr %42, align 2, !tbaa !78
  %44 = zext i16 %43 to i32
  %45 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 32
  store i32 %44, ptr %45, align 8, !tbaa !80
  %46 = load i16, ptr %41, align 16, !tbaa !81
  %47 = zext i16 %46 to i32
  %48 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 35
  store i32 %47, ptr %48, align 4, !tbaa !82
  %49 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %40, i32 2
  %50 = load i16, ptr %49, align 4, !tbaa !83
  %51 = zext i16 %50 to i32
  %52 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 36
  store i32 %51, ptr %52, align 8, !tbaa !84
  %53 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %40, i32 3
  %54 = load i16, ptr %53, align 2, !tbaa !85
  %55 = zext i16 %54 to i32
  %56 = getelementptr inbounds %struct.internal_state, ptr %7, i64 0, i32 31
  store i32 %55, ptr %56, align 4, !tbaa !86
  br label %57

57:                                               ; preds = %39, %35
  store i32 %2, ptr %17, align 8, !tbaa !73
  br label %58

58:                                               ; preds = %9, %3, %5, %57
  %59 = phi i32 [ %36, %57 ], [ -2, %5 ], [ -2, %3 ], [ -2, %9 ]
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define dso_local i32 @deflate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %1535, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  %8 = icmp ugt i32 %1, 5
  %9 = or i1 %8, %7
  br i1 %9, label %1535, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !118
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !97
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !96
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
  br label %1535

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 8, !tbaa !119
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !68
  %36 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %35, ptr %36, align 8, !tbaa !38
  br label %1535

37:                                               ; preds = %30
  store ptr %0, ptr %6, align 8, !tbaa !47
  %38 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 10
  %39 = load i32, ptr %38, align 8, !tbaa !111
  store i32 %1, ptr %38, align 8, !tbaa !111
  %40 = icmp eq i32 %23, 42
  br i1 %40, label %41, label %324

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 6
  %43 = load i32, ptr %42, align 4, !tbaa !51
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %245

45:                                               ; preds = %41
  %46 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %47 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %46, ptr %47, align 8, !tbaa !95
  %48 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !65
  %50 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !109
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 8, !tbaa !109
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i8, ptr %49, i64 %53
  store i8 31, ptr %54, align 1, !tbaa !35
  %55 = load ptr, ptr %48, align 8, !tbaa !65
  %56 = load i32, ptr %50, align 8, !tbaa !109
  %57 = add i32 %56, 1
  store i32 %57, ptr %50, align 8, !tbaa !109
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  store i8 -117, ptr %59, align 1, !tbaa !35
  %60 = load ptr, ptr %48, align 8, !tbaa !65
  %61 = load i32, ptr %50, align 8, !tbaa !109
  %62 = add i32 %61, 1
  store i32 %62, ptr %50, align 8, !tbaa !109
  %63 = zext i32 %61 to i64
  %64 = getelementptr inbounds i8, ptr %60, i64 %63
  store i8 8, ptr %64, align 1, !tbaa !35
  %65 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 7
  %66 = load ptr, ptr %65, align 8, !tbaa !52
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %116

68:                                               ; preds = %45
  %69 = load ptr, ptr %48, align 8, !tbaa !65
  %70 = load i32, ptr %50, align 8, !tbaa !109
  %71 = add i32 %70, 1
  store i32 %71, ptr %50, align 8, !tbaa !109
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  store i8 0, ptr %73, align 1, !tbaa !35
  %74 = load ptr, ptr %48, align 8, !tbaa !65
  %75 = load i32, ptr %50, align 8, !tbaa !109
  %76 = add i32 %75, 1
  store i32 %76, ptr %50, align 8, !tbaa !109
  %77 = zext i32 %75 to i64
  %78 = getelementptr inbounds i8, ptr %74, i64 %77
  store i8 0, ptr %78, align 1, !tbaa !35
  %79 = load ptr, ptr %48, align 8, !tbaa !65
  %80 = load i32, ptr %50, align 8, !tbaa !109
  %81 = add i32 %80, 1
  store i32 %81, ptr %50, align 8, !tbaa !109
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds i8, ptr %79, i64 %82
  store i8 0, ptr %83, align 1, !tbaa !35
  %84 = load ptr, ptr %48, align 8, !tbaa !65
  %85 = load i32, ptr %50, align 8, !tbaa !109
  %86 = add i32 %85, 1
  store i32 %86, ptr %50, align 8, !tbaa !109
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds i8, ptr %84, i64 %87
  store i8 0, ptr %88, align 1, !tbaa !35
  %89 = load ptr, ptr %48, align 8, !tbaa !65
  %90 = load i32, ptr %50, align 8, !tbaa !109
  %91 = add i32 %90, 1
  store i32 %91, ptr %50, align 8, !tbaa !109
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
  %107 = load i32, ptr %50, align 8, !tbaa !109
  %108 = add i32 %107, 1
  store i32 %108, ptr %50, align 8, !tbaa !109
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds i8, ptr %106, i64 %109
  store i8 %105, ptr %110, align 1, !tbaa !35
  %111 = load ptr, ptr %48, align 8, !tbaa !65
  %112 = load i32, ptr %50, align 8, !tbaa !109
  %113 = add i32 %112, 1
  store i32 %113, ptr %50, align 8, !tbaa !109
  %114 = zext i32 %112 to i64
  %115 = getelementptr inbounds i8, ptr %111, i64 %114
  store i8 3, ptr %115, align 1, !tbaa !35
  store i32 113, ptr %22, align 8, !tbaa !67
  br label %324

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
  %141 = load i32, ptr %50, align 8, !tbaa !109
  %142 = add i32 %141, 1
  store i32 %142, ptr %50, align 8, !tbaa !109
  %143 = zext i32 %141 to i64
  %144 = getelementptr inbounds i8, ptr %140, i64 %143
  store i8 %139, ptr %144, align 1, !tbaa !35
  %145 = load ptr, ptr %65, align 8, !tbaa !52
  %146 = getelementptr inbounds %struct.gz_header_s, ptr %145, i64 0, i32 1
  %147 = load i64, ptr %146, align 8, !tbaa !126
  %148 = trunc i64 %147 to i8
  %149 = load ptr, ptr %48, align 8, !tbaa !65
  %150 = load i32, ptr %50, align 8, !tbaa !109
  %151 = add i32 %150, 1
  store i32 %151, ptr %50, align 8, !tbaa !109
  %152 = zext i32 %150 to i64
  %153 = getelementptr inbounds i8, ptr %149, i64 %152
  store i8 %148, ptr %153, align 1, !tbaa !35
  %154 = load ptr, ptr %65, align 8, !tbaa !52
  %155 = getelementptr inbounds %struct.gz_header_s, ptr %154, i64 0, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !126
  %157 = lshr i64 %156, 8
  %158 = trunc i64 %157 to i8
  %159 = load ptr, ptr %48, align 8, !tbaa !65
  %160 = load i32, ptr %50, align 8, !tbaa !109
  %161 = add i32 %160, 1
  store i32 %161, ptr %50, align 8, !tbaa !109
  %162 = zext i32 %160 to i64
  %163 = getelementptr inbounds i8, ptr %159, i64 %162
  store i8 %158, ptr %163, align 1, !tbaa !35
  %164 = load ptr, ptr %65, align 8, !tbaa !52
  %165 = getelementptr inbounds %struct.gz_header_s, ptr %164, i64 0, i32 1
  %166 = load i64, ptr %165, align 8, !tbaa !126
  %167 = lshr i64 %166, 16
  %168 = trunc i64 %167 to i8
  %169 = load ptr, ptr %48, align 8, !tbaa !65
  %170 = load i32, ptr %50, align 8, !tbaa !109
  %171 = add i32 %170, 1
  store i32 %171, ptr %50, align 8, !tbaa !109
  %172 = zext i32 %170 to i64
  %173 = getelementptr inbounds i8, ptr %169, i64 %172
  store i8 %168, ptr %173, align 1, !tbaa !35
  %174 = load ptr, ptr %65, align 8, !tbaa !52
  %175 = getelementptr inbounds %struct.gz_header_s, ptr %174, i64 0, i32 1
  %176 = load i64, ptr %175, align 8, !tbaa !126
  %177 = lshr i64 %176, 24
  %178 = trunc i64 %177 to i8
  %179 = load ptr, ptr %48, align 8, !tbaa !65
  %180 = load i32, ptr %50, align 8, !tbaa !109
  %181 = add i32 %180, 1
  store i32 %181, ptr %50, align 8, !tbaa !109
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
  %197 = load i32, ptr %50, align 8, !tbaa !109
  %198 = add i32 %197, 1
  store i32 %198, ptr %50, align 8, !tbaa !109
  %199 = zext i32 %197 to i64
  %200 = getelementptr inbounds i8, ptr %196, i64 %199
  store i8 %195, ptr %200, align 1, !tbaa !35
  %201 = load ptr, ptr %65, align 8, !tbaa !52
  %202 = getelementptr inbounds %struct.gz_header_s, ptr %201, i64 0, i32 3
  %203 = load i32, ptr %202, align 4, !tbaa !127
  %204 = trunc i32 %203 to i8
  %205 = load ptr, ptr %48, align 8, !tbaa !65
  %206 = load i32, ptr %50, align 8, !tbaa !109
  %207 = add i32 %206, 1
  store i32 %207, ptr %50, align 8, !tbaa !109
  %208 = zext i32 %206 to i64
  %209 = getelementptr inbounds i8, ptr %205, i64 %208
  store i8 %204, ptr %209, align 1, !tbaa !35
  %210 = load ptr, ptr %65, align 8, !tbaa !52
  %211 = getelementptr inbounds %struct.gz_header_s, ptr %210, i64 0, i32 4
  %212 = load ptr, ptr %211, align 8, !tbaa !123
  %213 = icmp eq ptr %212, null
  br i1 %213, label %233, label %214

214:                                              ; preds = %194
  %215 = getelementptr inbounds %struct.gz_header_s, ptr %210, i64 0, i32 5
  %216 = load i32, ptr %215, align 8, !tbaa !128
  %217 = trunc i32 %216 to i8
  %218 = load ptr, ptr %48, align 8, !tbaa !65
  %219 = load i32, ptr %50, align 8, !tbaa !109
  %220 = add i32 %219, 1
  store i32 %220, ptr %50, align 8, !tbaa !109
  %221 = zext i32 %219 to i64
  %222 = getelementptr inbounds i8, ptr %218, i64 %221
  store i8 %217, ptr %222, align 1, !tbaa !35
  %223 = load ptr, ptr %65, align 8, !tbaa !52
  %224 = getelementptr inbounds %struct.gz_header_s, ptr %223, i64 0, i32 5
  %225 = load i32, ptr %224, align 8, !tbaa !128
  %226 = lshr i32 %225, 8
  %227 = trunc i32 %226 to i8
  %228 = load ptr, ptr %48, align 8, !tbaa !65
  %229 = load i32, ptr %50, align 8, !tbaa !109
  %230 = add i32 %229, 1
  store i32 %230, ptr %50, align 8, !tbaa !109
  %231 = zext i32 %229 to i64
  %232 = getelementptr inbounds i8, ptr %228, i64 %231
  store i8 %227, ptr %232, align 1, !tbaa !35
  br label %233

233:                                              ; preds = %214, %194
  %234 = load ptr, ptr %65, align 8, !tbaa !52
  %235 = getelementptr inbounds %struct.gz_header_s, ptr %234, i64 0, i32 11
  %236 = load i32, ptr %235, align 4, !tbaa !122
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %243, label %238

238:                                              ; preds = %233
  %239 = load i64, ptr %47, align 8, !tbaa !95
  %240 = load ptr, ptr %48, align 8, !tbaa !65
  %241 = load i32, ptr %50, align 8, !tbaa !109
  %242 = tail call i64 @crc32(i64 noundef %239, ptr noundef %240, i32 noundef %241) #10
  store i64 %242, ptr %47, align 8, !tbaa !95
  br label %243

243:                                              ; preds = %238, %233
  %244 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 8
  store i32 0, ptr %244, align 8, !tbaa !129
  store i32 69, ptr %22, align 8, !tbaa !67
  br label %324

245:                                              ; preds = %41
  %246 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 12
  %247 = load i32, ptr %246, align 8, !tbaa !53
  %248 = shl i32 %247, 12
  %249 = add i32 %248, -30720
  %250 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 34
  %251 = load i32, ptr %250, align 8, !tbaa !73
  %252 = icmp sgt i32 %251, 1
  br i1 %252, label %262, label %253

253:                                              ; preds = %245
  %254 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 33
  %255 = load i32, ptr %254, align 4, !tbaa !72
  %256 = icmp slt i32 %255, 2
  br i1 %256, label %262, label %257

257:                                              ; preds = %253
  %258 = icmp slt i32 %255, 6
  br i1 %258, label %262, label %259

259:                                              ; preds = %257
  %260 = icmp eq i32 %255, 6
  %261 = select i1 %260, i32 128, i32 192
  br label %262

262:                                              ; preds = %259, %257, %245, %253
  %263 = phi i32 [ 0, %253 ], [ 0, %245 ], [ 64, %257 ], [ %261, %259 ]
  %264 = or disjoint i32 %263, %249
  %265 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 27
  %266 = load i32, ptr %265, align 4, !tbaa !87
  %267 = icmp eq i32 %266, 0
  %268 = or disjoint i32 %264, 32
  %269 = select i1 %267, i32 %264, i32 %268
  %270 = urem i32 %269, 31
  %271 = or disjoint i32 %270, %269
  store i32 113, ptr %22, align 8, !tbaa !67
  %272 = lshr i32 %269, 8
  %273 = trunc i32 %272 to i8
  %274 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !65
  %276 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %277 = load i32, ptr %276, align 8, !tbaa !109
  %278 = add i32 %277, 1
  store i32 %278, ptr %276, align 8, !tbaa !109
  %279 = zext i32 %277 to i64
  %280 = getelementptr inbounds i8, ptr %275, i64 %279
  store i8 %273, ptr %280, align 1, !tbaa !35
  %281 = trunc i32 %271 to i8
  %282 = xor i8 %281, 31
  %283 = load ptr, ptr %274, align 8, !tbaa !65
  %284 = load i32, ptr %276, align 8, !tbaa !109
  %285 = add i32 %284, 1
  store i32 %285, ptr %276, align 8, !tbaa !109
  %286 = zext i32 %284 to i64
  %287 = getelementptr inbounds i8, ptr %283, i64 %286
  store i8 %282, ptr %287, align 1, !tbaa !35
  %288 = load i32, ptr %265, align 4, !tbaa !87
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %321, label %290

290:                                              ; preds = %262
  %291 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %292 = load i64, ptr %291, align 8, !tbaa !95
  %293 = lshr i64 %292, 16
  %294 = lshr i64 %292, 24
  %295 = trunc i64 %294 to i8
  %296 = load ptr, ptr %274, align 8, !tbaa !65
  %297 = load i32, ptr %276, align 8, !tbaa !109
  %298 = add i32 %297, 1
  store i32 %298, ptr %276, align 8, !tbaa !109
  %299 = zext i32 %297 to i64
  %300 = getelementptr inbounds i8, ptr %296, i64 %299
  store i8 %295, ptr %300, align 1, !tbaa !35
  %301 = trunc i64 %293 to i8
  %302 = load ptr, ptr %274, align 8, !tbaa !65
  %303 = load i32, ptr %276, align 8, !tbaa !109
  %304 = add i32 %303, 1
  store i32 %304, ptr %276, align 8, !tbaa !109
  %305 = zext i32 %303 to i64
  %306 = getelementptr inbounds i8, ptr %302, i64 %305
  store i8 %301, ptr %306, align 1, !tbaa !35
  %307 = load i64, ptr %291, align 8, !tbaa !95
  %308 = trunc i64 %307 to i8
  %309 = lshr i64 %307, 8
  %310 = trunc i64 %309 to i8
  %311 = load ptr, ptr %274, align 8, !tbaa !65
  %312 = load i32, ptr %276, align 8, !tbaa !109
  %313 = add i32 %312, 1
  store i32 %313, ptr %276, align 8, !tbaa !109
  %314 = zext i32 %312 to i64
  %315 = getelementptr inbounds i8, ptr %311, i64 %314
  store i8 %310, ptr %315, align 1, !tbaa !35
  %316 = load ptr, ptr %274, align 8, !tbaa !65
  %317 = load i32, ptr %276, align 8, !tbaa !109
  %318 = add i32 %317, 1
  store i32 %318, ptr %276, align 8, !tbaa !109
  %319 = zext i32 %317 to i64
  %320 = getelementptr inbounds i8, ptr %316, i64 %319
  store i8 %308, ptr %320, align 1, !tbaa !35
  br label %321

321:                                              ; preds = %290, %262
  %322 = tail call i64 @adler32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  %323 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  store i64 %322, ptr %323, align 8, !tbaa !95
  br label %324

324:                                              ; preds = %321, %243, %104, %37
  %325 = load i32, ptr %22, align 8, !tbaa !67
  %326 = icmp eq i32 %325, 69
  br i1 %326, label %327, label %447

327:                                              ; preds = %324
  %328 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 7
  %329 = load ptr, ptr %328, align 8, !tbaa !52
  %330 = getelementptr inbounds %struct.gz_header_s, ptr %329, i64 0, i32 4
  %331 = load ptr, ptr %330, align 8, !tbaa !123
  %332 = icmp eq ptr %331, null
  br i1 %332, label %446, label %333

333:                                              ; preds = %327
  %334 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %335 = load i32, ptr %334, align 8, !tbaa !109
  %336 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 8
  %337 = load i32, ptr %336, align 8, !tbaa !129
  %338 = load ptr, ptr %328, align 8, !tbaa !52
  %339 = getelementptr inbounds %struct.gz_header_s, ptr %338, i64 0, i32 5
  %340 = load i32, ptr %339, align 8, !tbaa !128
  %341 = and i32 %340, 65535
  %342 = icmp ult i32 %337, %341
  br i1 %342, label %343, label %421

343:                                              ; preds = %333
  %344 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 3
  %345 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %346 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %347 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %348 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  br label %349

349:                                              ; preds = %343, %400
  %350 = phi ptr [ %338, %343 ], [ %416, %400 ]
  %351 = phi i32 [ %335, %343 ], [ %401, %400 ]
  %352 = load i32, ptr %334, align 8, !tbaa !109
  %353 = zext i32 %352 to i64
  %354 = load i64, ptr %344, align 8, !tbaa !66
  %355 = icmp eq i64 %354, %353
  br i1 %355, label %356, label %400

356:                                              ; preds = %349
  %357 = getelementptr inbounds %struct.gz_header_s, ptr %350, i64 0, i32 11
  %358 = load i32, ptr %357, align 4, !tbaa !122
  %359 = icmp ne i32 %358, 0
  %360 = icmp ugt i32 %352, %351
  %361 = select i1 %359, i1 %360, i1 false
  br i1 %361, label %362, label %369

362:                                              ; preds = %356
  %363 = load i64, ptr %345, align 8, !tbaa !95
  %364 = load ptr, ptr %346, align 8, !tbaa !65
  %365 = zext i32 %351 to i64
  %366 = getelementptr inbounds i8, ptr %364, i64 %365
  %367 = sub i32 %352, %351
  %368 = tail call i64 @crc32(i64 noundef %363, ptr noundef %366, i32 noundef %367) #10
  store i64 %368, ptr %345, align 8, !tbaa !95
  br label %369

369:                                              ; preds = %362, %356
  %370 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %370) #10
  %371 = getelementptr inbounds %struct.internal_state, ptr %370, i64 0, i32 5
  %372 = load i32, ptr %371, align 8, !tbaa !109
  %373 = load i32, ptr %31, align 8, !tbaa !119
  %374 = tail call i32 @llvm.umin.i32(i32 %372, i32 %373)
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %395, label %376

376:                                              ; preds = %369
  %377 = load ptr, ptr %11, align 8, !tbaa !118
  %378 = getelementptr inbounds %struct.internal_state, ptr %370, i64 0, i32 4
  %379 = load ptr, ptr %378, align 8, !tbaa !110
  %380 = zext i32 %374 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %377, ptr align 1 %379, i64 %380, i1 false)
  %381 = load ptr, ptr %11, align 8, !tbaa !118
  %382 = getelementptr inbounds i8, ptr %381, i64 %380
  store ptr %382, ptr %11, align 8, !tbaa !118
  %383 = load ptr, ptr %378, align 8, !tbaa !110
  %384 = getelementptr inbounds i8, ptr %383, i64 %380
  store ptr %384, ptr %378, align 8, !tbaa !110
  %385 = load i64, ptr %347, align 8, !tbaa !130
  %386 = add i64 %385, %380
  store i64 %386, ptr %347, align 8, !tbaa !130
  %387 = load i32, ptr %31, align 8, !tbaa !119
  %388 = sub i32 %387, %374
  store i32 %388, ptr %31, align 8, !tbaa !119
  %389 = load i32, ptr %371, align 8, !tbaa !109
  %390 = sub i32 %389, %374
  store i32 %390, ptr %371, align 8, !tbaa !109
  %391 = icmp eq i32 %389, %374
  br i1 %391, label %392, label %395

392:                                              ; preds = %376
  %393 = getelementptr inbounds %struct.internal_state, ptr %370, i64 0, i32 2
  %394 = load ptr, ptr %393, align 8, !tbaa !65
  store ptr %394, ptr %378, align 8, !tbaa !110
  br label %395

395:                                              ; preds = %369, %376, %392
  %396 = load i32, ptr %334, align 8, !tbaa !109
  %397 = zext i32 %396 to i64
  %398 = load i64, ptr %344, align 8, !tbaa !66
  %399 = icmp eq i64 %398, %397
  br i1 %399, label %421, label %400

400:                                              ; preds = %395, %349
  %401 = phi i32 [ %396, %395 ], [ %351, %349 ]
  %402 = load ptr, ptr %328, align 8, !tbaa !52
  %403 = getelementptr inbounds %struct.gz_header_s, ptr %402, i64 0, i32 4
  %404 = load ptr, ptr %403, align 8, !tbaa !123
  %405 = load i32, ptr %336, align 8, !tbaa !129
  %406 = zext i32 %405 to i64
  %407 = getelementptr inbounds i8, ptr %404, i64 %406
  %408 = load i8, ptr %407, align 1, !tbaa !35
  %409 = load ptr, ptr %348, align 8, !tbaa !65
  %410 = load i32, ptr %334, align 8, !tbaa !109
  %411 = add i32 %410, 1
  store i32 %411, ptr %334, align 8, !tbaa !109
  %412 = zext i32 %410 to i64
  %413 = getelementptr inbounds i8, ptr %409, i64 %412
  store i8 %408, ptr %413, align 1, !tbaa !35
  %414 = load i32, ptr %336, align 8, !tbaa !129
  %415 = add i32 %414, 1
  store i32 %415, ptr %336, align 8, !tbaa !129
  %416 = load ptr, ptr %328, align 8, !tbaa !52
  %417 = getelementptr inbounds %struct.gz_header_s, ptr %416, i64 0, i32 5
  %418 = load i32, ptr %417, align 8, !tbaa !128
  %419 = and i32 %418, 65535
  %420 = icmp ult i32 %415, %419
  br i1 %420, label %349, label %421, !llvm.loop !131

421:                                              ; preds = %400, %395, %333
  %422 = phi i32 [ %335, %333 ], [ %401, %400 ], [ %396, %395 ]
  %423 = load ptr, ptr %328, align 8, !tbaa !52
  %424 = getelementptr inbounds %struct.gz_header_s, ptr %423, i64 0, i32 11
  %425 = load i32, ptr %424, align 4, !tbaa !122
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %439, label %427

427:                                              ; preds = %421
  %428 = load i32, ptr %334, align 8, !tbaa !109
  %429 = icmp ugt i32 %428, %422
  br i1 %429, label %430, label %439

430:                                              ; preds = %427
  %431 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %432 = load i64, ptr %431, align 8, !tbaa !95
  %433 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %434 = load ptr, ptr %433, align 8, !tbaa !65
  %435 = zext i32 %422 to i64
  %436 = getelementptr inbounds i8, ptr %434, i64 %435
  %437 = sub i32 %428, %422
  %438 = tail call i64 @crc32(i64 noundef %432, ptr noundef %436, i32 noundef %437) #10
  store i64 %438, ptr %431, align 8, !tbaa !95
  br label %439

439:                                              ; preds = %430, %427, %421
  %440 = load i32, ptr %336, align 8, !tbaa !129
  %441 = load ptr, ptr %328, align 8, !tbaa !52
  %442 = getelementptr inbounds %struct.gz_header_s, ptr %441, i64 0, i32 5
  %443 = load i32, ptr %442, align 8, !tbaa !128
  %444 = icmp eq i32 %440, %443
  br i1 %444, label %445, label %447

445:                                              ; preds = %439
  store i32 0, ptr %336, align 8, !tbaa !129
  br label %446

446:                                              ; preds = %327, %445
  store i32 73, ptr %22, align 8, !tbaa !67
  br label %447

447:                                              ; preds = %446, %439, %324
  %448 = load i32, ptr %22, align 8, !tbaa !67
  %449 = icmp eq i32 %448, 73
  br i1 %449, label %450, label %555

450:                                              ; preds = %447
  %451 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 7
  %452 = load ptr, ptr %451, align 8, !tbaa !52
  %453 = getelementptr inbounds %struct.gz_header_s, ptr %452, i64 0, i32 7
  %454 = load ptr, ptr %453, align 8, !tbaa !124
  %455 = icmp eq ptr %454, null
  br i1 %455, label %554, label %456

456:                                              ; preds = %450
  %457 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %458 = load i32, ptr %457, align 8, !tbaa !109
  %459 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 3
  %460 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %461 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %462 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %463 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 8
  %464 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  br label %465

465:                                              ; preds = %516, %456
  %466 = phi i32 [ %458, %456 ], [ %517, %516 ]
  %467 = load i32, ptr %457, align 8, !tbaa !109
  %468 = zext i32 %467 to i64
  %469 = load i64, ptr %459, align 8, !tbaa !66
  %470 = icmp eq i64 %469, %468
  br i1 %470, label %471, label %516

471:                                              ; preds = %465
  %472 = load ptr, ptr %451, align 8, !tbaa !52
  %473 = getelementptr inbounds %struct.gz_header_s, ptr %472, i64 0, i32 11
  %474 = load i32, ptr %473, align 4, !tbaa !122
  %475 = icmp ne i32 %474, 0
  %476 = icmp ugt i32 %467, %466
  %477 = select i1 %475, i1 %476, i1 false
  br i1 %477, label %478, label %485

478:                                              ; preds = %471
  %479 = load i64, ptr %460, align 8, !tbaa !95
  %480 = load ptr, ptr %461, align 8, !tbaa !65
  %481 = zext i32 %466 to i64
  %482 = getelementptr inbounds i8, ptr %480, i64 %481
  %483 = sub i32 %467, %466
  %484 = tail call i64 @crc32(i64 noundef %479, ptr noundef %482, i32 noundef %483) #10
  store i64 %484, ptr %460, align 8, !tbaa !95
  br label %485

485:                                              ; preds = %478, %471
  %486 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %486) #10
  %487 = getelementptr inbounds %struct.internal_state, ptr %486, i64 0, i32 5
  %488 = load i32, ptr %487, align 8, !tbaa !109
  %489 = load i32, ptr %31, align 8, !tbaa !119
  %490 = tail call i32 @llvm.umin.i32(i32 %488, i32 %489)
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %511, label %492

492:                                              ; preds = %485
  %493 = load ptr, ptr %11, align 8, !tbaa !118
  %494 = getelementptr inbounds %struct.internal_state, ptr %486, i64 0, i32 4
  %495 = load ptr, ptr %494, align 8, !tbaa !110
  %496 = zext i32 %490 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %493, ptr align 1 %495, i64 %496, i1 false)
  %497 = load ptr, ptr %11, align 8, !tbaa !118
  %498 = getelementptr inbounds i8, ptr %497, i64 %496
  store ptr %498, ptr %11, align 8, !tbaa !118
  %499 = load ptr, ptr %494, align 8, !tbaa !110
  %500 = getelementptr inbounds i8, ptr %499, i64 %496
  store ptr %500, ptr %494, align 8, !tbaa !110
  %501 = load i64, ptr %462, align 8, !tbaa !130
  %502 = add i64 %501, %496
  store i64 %502, ptr %462, align 8, !tbaa !130
  %503 = load i32, ptr %31, align 8, !tbaa !119
  %504 = sub i32 %503, %490
  store i32 %504, ptr %31, align 8, !tbaa !119
  %505 = load i32, ptr %487, align 8, !tbaa !109
  %506 = sub i32 %505, %490
  store i32 %506, ptr %487, align 8, !tbaa !109
  %507 = icmp eq i32 %505, %490
  br i1 %507, label %508, label %511

508:                                              ; preds = %492
  %509 = getelementptr inbounds %struct.internal_state, ptr %486, i64 0, i32 2
  %510 = load ptr, ptr %509, align 8, !tbaa !65
  store ptr %510, ptr %494, align 8, !tbaa !110
  br label %511

511:                                              ; preds = %485, %492, %508
  %512 = load i32, ptr %457, align 8, !tbaa !109
  %513 = zext i32 %512 to i64
  %514 = load i64, ptr %459, align 8, !tbaa !66
  %515 = icmp eq i64 %514, %513
  br i1 %515, label %532, label %516

516:                                              ; preds = %511, %465
  %517 = phi i32 [ %512, %511 ], [ %466, %465 ]
  %518 = load ptr, ptr %451, align 8, !tbaa !52
  %519 = getelementptr inbounds %struct.gz_header_s, ptr %518, i64 0, i32 7
  %520 = load ptr, ptr %519, align 8, !tbaa !124
  %521 = load i32, ptr %463, align 8, !tbaa !129
  %522 = add i32 %521, 1
  store i32 %522, ptr %463, align 8, !tbaa !129
  %523 = zext i32 %521 to i64
  %524 = getelementptr inbounds i8, ptr %520, i64 %523
  %525 = load i8, ptr %524, align 1, !tbaa !35
  %526 = load ptr, ptr %464, align 8, !tbaa !65
  %527 = load i32, ptr %457, align 8, !tbaa !109
  %528 = add i32 %527, 1
  store i32 %528, ptr %457, align 8, !tbaa !109
  %529 = zext i32 %527 to i64
  %530 = getelementptr inbounds i8, ptr %526, i64 %529
  store i8 %525, ptr %530, align 1, !tbaa !35
  %531 = icmp eq i8 %525, 0
  br i1 %531, label %532, label %465, !llvm.loop !132

532:                                              ; preds = %511, %516
  %533 = phi i32 [ %517, %516 ], [ %512, %511 ]
  %534 = phi i1 [ true, %516 ], [ false, %511 ]
  %535 = load ptr, ptr %451, align 8, !tbaa !52
  %536 = getelementptr inbounds %struct.gz_header_s, ptr %535, i64 0, i32 11
  %537 = load i32, ptr %536, align 4, !tbaa !122
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %551, label %539

539:                                              ; preds = %532
  %540 = load i32, ptr %457, align 8, !tbaa !109
  %541 = icmp ugt i32 %540, %533
  br i1 %541, label %542, label %551

542:                                              ; preds = %539
  %543 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %544 = load i64, ptr %543, align 8, !tbaa !95
  %545 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %546 = load ptr, ptr %545, align 8, !tbaa !65
  %547 = zext i32 %533 to i64
  %548 = getelementptr inbounds i8, ptr %546, i64 %547
  %549 = sub i32 %540, %533
  %550 = tail call i64 @crc32(i64 noundef %544, ptr noundef %548, i32 noundef %549) #10
  store i64 %550, ptr %543, align 8, !tbaa !95
  br label %551

551:                                              ; preds = %542, %539, %532
  br i1 %534, label %552, label %555

552:                                              ; preds = %551
  %553 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 8
  store i32 0, ptr %553, align 8, !tbaa !129
  br label %554

554:                                              ; preds = %450, %552
  store i32 91, ptr %22, align 8, !tbaa !67
  br label %555

555:                                              ; preds = %554, %551, %447
  %556 = load i32, ptr %22, align 8, !tbaa !67
  %557 = icmp eq i32 %556, 91
  br i1 %557, label %558, label %661

558:                                              ; preds = %555
  %559 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 7
  %560 = load ptr, ptr %559, align 8, !tbaa !52
  %561 = getelementptr inbounds %struct.gz_header_s, ptr %560, i64 0, i32 9
  %562 = load ptr, ptr %561, align 8, !tbaa !125
  %563 = icmp eq ptr %562, null
  br i1 %563, label %660, label %564

564:                                              ; preds = %558
  %565 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %566 = load i32, ptr %565, align 8, !tbaa !109
  %567 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 3
  %568 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %569 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %570 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %571 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 8
  %572 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  br label %573

573:                                              ; preds = %624, %564
  %574 = phi i32 [ %566, %564 ], [ %625, %624 ]
  %575 = load i32, ptr %565, align 8, !tbaa !109
  %576 = zext i32 %575 to i64
  %577 = load i64, ptr %567, align 8, !tbaa !66
  %578 = icmp eq i64 %577, %576
  br i1 %578, label %579, label %624

579:                                              ; preds = %573
  %580 = load ptr, ptr %559, align 8, !tbaa !52
  %581 = getelementptr inbounds %struct.gz_header_s, ptr %580, i64 0, i32 11
  %582 = load i32, ptr %581, align 4, !tbaa !122
  %583 = icmp ne i32 %582, 0
  %584 = icmp ugt i32 %575, %574
  %585 = select i1 %583, i1 %584, i1 false
  br i1 %585, label %586, label %593

586:                                              ; preds = %579
  %587 = load i64, ptr %568, align 8, !tbaa !95
  %588 = load ptr, ptr %569, align 8, !tbaa !65
  %589 = zext i32 %574 to i64
  %590 = getelementptr inbounds i8, ptr %588, i64 %589
  %591 = sub i32 %575, %574
  %592 = tail call i64 @crc32(i64 noundef %587, ptr noundef %590, i32 noundef %591) #10
  store i64 %592, ptr %568, align 8, !tbaa !95
  br label %593

593:                                              ; preds = %586, %579
  %594 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %594) #10
  %595 = getelementptr inbounds %struct.internal_state, ptr %594, i64 0, i32 5
  %596 = load i32, ptr %595, align 8, !tbaa !109
  %597 = load i32, ptr %31, align 8, !tbaa !119
  %598 = tail call i32 @llvm.umin.i32(i32 %596, i32 %597)
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %619, label %600

600:                                              ; preds = %593
  %601 = load ptr, ptr %11, align 8, !tbaa !118
  %602 = getelementptr inbounds %struct.internal_state, ptr %594, i64 0, i32 4
  %603 = load ptr, ptr %602, align 8, !tbaa !110
  %604 = zext i32 %598 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %601, ptr align 1 %603, i64 %604, i1 false)
  %605 = load ptr, ptr %11, align 8, !tbaa !118
  %606 = getelementptr inbounds i8, ptr %605, i64 %604
  store ptr %606, ptr %11, align 8, !tbaa !118
  %607 = load ptr, ptr %602, align 8, !tbaa !110
  %608 = getelementptr inbounds i8, ptr %607, i64 %604
  store ptr %608, ptr %602, align 8, !tbaa !110
  %609 = load i64, ptr %570, align 8, !tbaa !130
  %610 = add i64 %609, %604
  store i64 %610, ptr %570, align 8, !tbaa !130
  %611 = load i32, ptr %31, align 8, !tbaa !119
  %612 = sub i32 %611, %598
  store i32 %612, ptr %31, align 8, !tbaa !119
  %613 = load i32, ptr %595, align 8, !tbaa !109
  %614 = sub i32 %613, %598
  store i32 %614, ptr %595, align 8, !tbaa !109
  %615 = icmp eq i32 %613, %598
  br i1 %615, label %616, label %619

616:                                              ; preds = %600
  %617 = getelementptr inbounds %struct.internal_state, ptr %594, i64 0, i32 2
  %618 = load ptr, ptr %617, align 8, !tbaa !65
  store ptr %618, ptr %602, align 8, !tbaa !110
  br label %619

619:                                              ; preds = %593, %600, %616
  %620 = load i32, ptr %565, align 8, !tbaa !109
  %621 = zext i32 %620 to i64
  %622 = load i64, ptr %567, align 8, !tbaa !66
  %623 = icmp eq i64 %622, %621
  br i1 %623, label %640, label %624

624:                                              ; preds = %619, %573
  %625 = phi i32 [ %620, %619 ], [ %574, %573 ]
  %626 = load ptr, ptr %559, align 8, !tbaa !52
  %627 = getelementptr inbounds %struct.gz_header_s, ptr %626, i64 0, i32 9
  %628 = load ptr, ptr %627, align 8, !tbaa !125
  %629 = load i32, ptr %571, align 8, !tbaa !129
  %630 = add i32 %629, 1
  store i32 %630, ptr %571, align 8, !tbaa !129
  %631 = zext i32 %629 to i64
  %632 = getelementptr inbounds i8, ptr %628, i64 %631
  %633 = load i8, ptr %632, align 1, !tbaa !35
  %634 = load ptr, ptr %572, align 8, !tbaa !65
  %635 = load i32, ptr %565, align 8, !tbaa !109
  %636 = add i32 %635, 1
  store i32 %636, ptr %565, align 8, !tbaa !109
  %637 = zext i32 %635 to i64
  %638 = getelementptr inbounds i8, ptr %634, i64 %637
  store i8 %633, ptr %638, align 1, !tbaa !35
  %639 = icmp eq i8 %633, 0
  br i1 %639, label %640, label %573, !llvm.loop !133

640:                                              ; preds = %619, %624
  %641 = phi i32 [ %625, %624 ], [ %620, %619 ]
  %642 = phi i1 [ true, %624 ], [ false, %619 ]
  %643 = load ptr, ptr %559, align 8, !tbaa !52
  %644 = getelementptr inbounds %struct.gz_header_s, ptr %643, i64 0, i32 11
  %645 = load i32, ptr %644, align 4, !tbaa !122
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %659, label %647

647:                                              ; preds = %640
  %648 = load i32, ptr %565, align 8, !tbaa !109
  %649 = icmp ugt i32 %648, %641
  br i1 %649, label %650, label %659

650:                                              ; preds = %647
  %651 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %652 = load i64, ptr %651, align 8, !tbaa !95
  %653 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %654 = load ptr, ptr %653, align 8, !tbaa !65
  %655 = zext i32 %641 to i64
  %656 = getelementptr inbounds i8, ptr %654, i64 %655
  %657 = sub i32 %648, %641
  %658 = tail call i64 @crc32(i64 noundef %652, ptr noundef %656, i32 noundef %657) #10
  store i64 %658, ptr %651, align 8, !tbaa !95
  br label %659

659:                                              ; preds = %650, %647, %640
  br i1 %642, label %660, label %661

660:                                              ; preds = %558, %659
  store i32 103, ptr %22, align 8, !tbaa !67
  br label %661

661:                                              ; preds = %660, %659, %555
  %662 = load i32, ptr %22, align 8, !tbaa !67
  %663 = icmp eq i32 %662, 103
  br i1 %663, label %664, label %730

664:                                              ; preds = %661
  %665 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 7
  %666 = load ptr, ptr %665, align 8, !tbaa !52
  %667 = getelementptr inbounds %struct.gz_header_s, ptr %666, i64 0, i32 11
  %668 = load i32, ptr %667, align 4, !tbaa !122
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %729, label %670

670:                                              ; preds = %664
  %671 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %672 = load i32, ptr %671, align 8, !tbaa !109
  %673 = add i32 %672, 2
  %674 = zext i32 %673 to i64
  %675 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 3
  %676 = load i64, ptr %675, align 8, !tbaa !66
  %677 = icmp ult i64 %676, %674
  br i1 %677, label %678, label %705

678:                                              ; preds = %670
  %679 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %679) #10
  %680 = getelementptr inbounds %struct.internal_state, ptr %679, i64 0, i32 5
  %681 = load i32, ptr %680, align 8, !tbaa !109
  %682 = load i32, ptr %31, align 8, !tbaa !119
  %683 = tail call i32 @llvm.umin.i32(i32 %681, i32 %682)
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %705, label %685

685:                                              ; preds = %678
  %686 = load ptr, ptr %11, align 8, !tbaa !118
  %687 = getelementptr inbounds %struct.internal_state, ptr %679, i64 0, i32 4
  %688 = load ptr, ptr %687, align 8, !tbaa !110
  %689 = zext i32 %683 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %686, ptr align 1 %688, i64 %689, i1 false)
  %690 = load ptr, ptr %11, align 8, !tbaa !118
  %691 = getelementptr inbounds i8, ptr %690, i64 %689
  store ptr %691, ptr %11, align 8, !tbaa !118
  %692 = load ptr, ptr %687, align 8, !tbaa !110
  %693 = getelementptr inbounds i8, ptr %692, i64 %689
  store ptr %693, ptr %687, align 8, !tbaa !110
  %694 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %695 = load i64, ptr %694, align 8, !tbaa !130
  %696 = add i64 %695, %689
  store i64 %696, ptr %694, align 8, !tbaa !130
  %697 = load i32, ptr %31, align 8, !tbaa !119
  %698 = sub i32 %697, %683
  store i32 %698, ptr %31, align 8, !tbaa !119
  %699 = load i32, ptr %680, align 8, !tbaa !109
  %700 = sub i32 %699, %683
  store i32 %700, ptr %680, align 8, !tbaa !109
  %701 = icmp eq i32 %699, %683
  br i1 %701, label %702, label %705

702:                                              ; preds = %685
  %703 = getelementptr inbounds %struct.internal_state, ptr %679, i64 0, i32 2
  %704 = load ptr, ptr %703, align 8, !tbaa !65
  store ptr %704, ptr %687, align 8, !tbaa !110
  br label %705

705:                                              ; preds = %702, %685, %678, %670
  %706 = load i32, ptr %671, align 8, !tbaa !109
  %707 = add i32 %706, 2
  %708 = zext i32 %707 to i64
  %709 = load i64, ptr %675, align 8, !tbaa !66
  %710 = icmp ult i64 %709, %708
  br i1 %710, label %730, label %711

711:                                              ; preds = %705
  %712 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %713 = load i64, ptr %712, align 8, !tbaa !95
  %714 = trunc i64 %713 to i8
  %715 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %716 = load ptr, ptr %715, align 8, !tbaa !65
  %717 = add i32 %706, 1
  store i32 %717, ptr %671, align 8, !tbaa !109
  %718 = zext i32 %706 to i64
  %719 = getelementptr inbounds i8, ptr %716, i64 %718
  store i8 %714, ptr %719, align 1, !tbaa !35
  %720 = load i64, ptr %712, align 8, !tbaa !95
  %721 = lshr i64 %720, 8
  %722 = trunc i64 %721 to i8
  %723 = load ptr, ptr %715, align 8, !tbaa !65
  %724 = load i32, ptr %671, align 8, !tbaa !109
  %725 = add i32 %724, 1
  store i32 %725, ptr %671, align 8, !tbaa !109
  %726 = zext i32 %724 to i64
  %727 = getelementptr inbounds i8, ptr %723, i64 %726
  store i8 %722, ptr %727, align 1, !tbaa !35
  %728 = tail call i64 @crc32(i64 noundef 0, ptr noundef null, i32 noundef 0) #10
  store i64 %728, ptr %712, align 8, !tbaa !95
  br label %729

729:                                              ; preds = %664, %711
  store i32 113, ptr %22, align 8, !tbaa !67
  br label %730

730:                                              ; preds = %729, %705, %661
  %731 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 5
  %732 = load i32, ptr %731, align 8, !tbaa !109
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %765, label %734

734:                                              ; preds = %730
  %735 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %735) #10
  %736 = getelementptr inbounds %struct.internal_state, ptr %735, i64 0, i32 5
  %737 = load i32, ptr %736, align 8, !tbaa !109
  %738 = load i32, ptr %31, align 8, !tbaa !119
  %739 = tail call i32 @llvm.umin.i32(i32 %737, i32 %738)
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %761, label %741

741:                                              ; preds = %734
  %742 = load ptr, ptr %11, align 8, !tbaa !118
  %743 = getelementptr inbounds %struct.internal_state, ptr %735, i64 0, i32 4
  %744 = load ptr, ptr %743, align 8, !tbaa !110
  %745 = zext i32 %739 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %742, ptr align 1 %744, i64 %745, i1 false)
  %746 = load ptr, ptr %11, align 8, !tbaa !118
  %747 = getelementptr inbounds i8, ptr %746, i64 %745
  store ptr %747, ptr %11, align 8, !tbaa !118
  %748 = load ptr, ptr %743, align 8, !tbaa !110
  %749 = getelementptr inbounds i8, ptr %748, i64 %745
  store ptr %749, ptr %743, align 8, !tbaa !110
  %750 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %751 = load i64, ptr %750, align 8, !tbaa !130
  %752 = add i64 %751, %745
  store i64 %752, ptr %750, align 8, !tbaa !130
  %753 = load i32, ptr %31, align 8, !tbaa !119
  %754 = sub i32 %753, %739
  store i32 %754, ptr %31, align 8, !tbaa !119
  %755 = load i32, ptr %736, align 8, !tbaa !109
  %756 = sub i32 %755, %739
  store i32 %756, ptr %736, align 8, !tbaa !109
  %757 = icmp eq i32 %755, %739
  br i1 %757, label %758, label %761

758:                                              ; preds = %741
  %759 = getelementptr inbounds %struct.internal_state, ptr %735, i64 0, i32 2
  %760 = load ptr, ptr %759, align 8, !tbaa !65
  store ptr %760, ptr %743, align 8, !tbaa !110
  br label %761

761:                                              ; preds = %734, %741, %758
  %762 = load i32, ptr %31, align 8, !tbaa !119
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %764, label %783

764:                                              ; preds = %761
  store i32 -1, ptr %38, align 8, !tbaa !111
  br label %1535

765:                                              ; preds = %730
  %766 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %767 = load i32, ptr %766, align 8, !tbaa !96
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %769, label %783

769:                                              ; preds = %765
  %770 = shl nuw nsw i32 %1, 1
  %771 = icmp sgt i32 %1, 4
  %772 = select i1 %771, i32 -9, i32 0
  %773 = add nsw i32 %772, %770
  %774 = shl i32 %39, 1
  %775 = icmp sgt i32 %39, 4
  %776 = select i1 %775, i32 -9, i32 0
  %777 = add i32 %776, %774
  %778 = icmp sle i32 %773, %777
  %779 = and i1 %25, %778
  br i1 %779, label %780, label %783

780:                                              ; preds = %769
  %781 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !68
  %782 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %781, ptr %782, align 8, !tbaa !38
  br label %1535

783:                                              ; preds = %765, %769, %761
  %784 = load i32, ptr %22, align 8, !tbaa !67
  %785 = icmp eq i32 %784, 666
  br i1 %785, label %786, label %793

786:                                              ; preds = %783
  %787 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %788 = load i32, ptr %787, align 8, !tbaa !96
  %789 = icmp eq i32 %788, 0
  br i1 %789, label %793, label %790

790:                                              ; preds = %786
  %791 = load ptr, ptr getelementptr inbounds ([10 x ptr], ptr @z_errmsg, i64 0, i64 7), align 8, !tbaa !68
  %792 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 6
  store ptr %791, ptr %792, align 8, !tbaa !38
  br label %1535

793:                                              ; preds = %786, %783
  %794 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 1
  %795 = load i32, ptr %794, align 8, !tbaa !96
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %797, label %804

797:                                              ; preds = %793
  %798 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 29
  %799 = load i32, ptr %798, align 4, !tbaa !89
  %800 = icmp eq i32 %799, 0
  %801 = icmp eq i32 %1, 0
  %802 = or i1 %801, %785
  %803 = and i1 %802, %800
  br i1 %803, label %1400, label %804

804:                                              ; preds = %797, %793
  %805 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 34
  %806 = load i32, ptr %805, align 8, !tbaa !73
  switch i32 %806, label %1328 [
    i32 2, label %807
    i32 3, label %1005
  ]

807:                                              ; preds = %804
  %808 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 29
  %809 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 24
  %810 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 14
  %811 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 27
  %812 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 51
  %813 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 50
  %814 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 48
  %815 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 49
  %816 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 23
  br label %817

817:                                              ; preds = %898, %807
  %818 = load i32, ptr %808, align 4, !tbaa !89
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %825

820:                                              ; preds = %817
  tail call fastcc void @fill_window(ptr noundef %6)
  %821 = load i32, ptr %808, align 4, !tbaa !89
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %823, label %825

823:                                              ; preds = %820
  %824 = icmp eq i32 %1, 0
  br i1 %824, label %1335, label %899

825:                                              ; preds = %820, %817
  store i32 0, ptr %809, align 8, !tbaa !92
  %826 = load ptr, ptr %810, align 8, !tbaa !60
  %827 = load i32, ptr %811, align 4, !tbaa !87
  %828 = zext i32 %827 to i64
  %829 = getelementptr inbounds i8, ptr %826, i64 %828
  %830 = load i8, ptr %829, align 1, !tbaa !35
  %831 = load ptr, ptr %812, align 8, !tbaa !70
  %832 = load i32, ptr %813, align 4, !tbaa !134
  %833 = zext i32 %832 to i64
  %834 = getelementptr inbounds i16, ptr %831, i64 %833
  store i16 0, ptr %834, align 2, !tbaa !77
  %835 = load ptr, ptr %814, align 8, !tbaa !71
  %836 = add i32 %832, 1
  store i32 %836, ptr %813, align 4, !tbaa !134
  %837 = getelementptr inbounds i8, ptr %835, i64 %833
  store i8 %830, ptr %837, align 1, !tbaa !35
  %838 = zext i8 %830 to i64
  %839 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 37, i64 %838
  %840 = load i16, ptr %839, align 4, !tbaa !35
  %841 = add i16 %840, 1
  store i16 %841, ptr %839, align 4, !tbaa !35
  %842 = load i32, ptr %813, align 4, !tbaa !134
  %843 = load i32, ptr %815, align 8, !tbaa !64
  %844 = add i32 %843, -1
  %845 = icmp eq i32 %842, %844
  %846 = load i32, ptr %808, align 4, !tbaa !89
  %847 = add i32 %846, -1
  store i32 %847, ptr %808, align 4, !tbaa !89
  %848 = load i32, ptr %811, align 4, !tbaa !87
  %849 = add i32 %848, 1
  store i32 %849, ptr %811, align 4, !tbaa !87
  br i1 %845, label %850, label %898

850:                                              ; preds = %825
  %851 = load i64, ptr %816, align 8, !tbaa !88
  %852 = icmp sgt i64 %851, -1
  br i1 %852, label %853, label %857

853:                                              ; preds = %850
  %854 = load ptr, ptr %810, align 8, !tbaa !60
  %855 = and i64 %851, 4294967295
  %856 = getelementptr inbounds i8, ptr %854, i64 %855
  br label %857

857:                                              ; preds = %853, %850
  %858 = phi ptr [ %856, %853 ], [ null, %850 ]
  %859 = zext i32 %849 to i64
  %860 = sub nsw i64 %859, %851
  tail call void @_tr_flush_block(ptr noundef %6, ptr noundef %858, i64 noundef %860, i32 noundef 0) #10
  %861 = load i32, ptr %811, align 4, !tbaa !87
  %862 = zext i32 %861 to i64
  store i64 %862, ptr %816, align 8, !tbaa !88
  %863 = load ptr, ptr %6, align 8, !tbaa !47
  %864 = getelementptr inbounds %struct.z_stream_s, ptr %863, i64 0, i32 7
  %865 = load ptr, ptr %864, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %865) #10
  %866 = getelementptr inbounds %struct.internal_state, ptr %865, i64 0, i32 5
  %867 = load i32, ptr %866, align 8, !tbaa !109
  %868 = getelementptr inbounds %struct.z_stream_s, ptr %863, i64 0, i32 4
  %869 = load i32, ptr %868, align 8, !tbaa !119
  %870 = tail call i32 @llvm.umin.i32(i32 %867, i32 %869)
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %893, label %872

872:                                              ; preds = %857
  %873 = getelementptr inbounds %struct.z_stream_s, ptr %863, i64 0, i32 3
  %874 = load ptr, ptr %873, align 8, !tbaa !118
  %875 = getelementptr inbounds %struct.internal_state, ptr %865, i64 0, i32 4
  %876 = load ptr, ptr %875, align 8, !tbaa !110
  %877 = zext i32 %870 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %874, ptr align 1 %876, i64 %877, i1 false)
  %878 = load ptr, ptr %873, align 8, !tbaa !118
  %879 = getelementptr inbounds i8, ptr %878, i64 %877
  store ptr %879, ptr %873, align 8, !tbaa !118
  %880 = load ptr, ptr %875, align 8, !tbaa !110
  %881 = getelementptr inbounds i8, ptr %880, i64 %877
  store ptr %881, ptr %875, align 8, !tbaa !110
  %882 = getelementptr inbounds %struct.z_stream_s, ptr %863, i64 0, i32 5
  %883 = load i64, ptr %882, align 8, !tbaa !130
  %884 = add i64 %883, %877
  store i64 %884, ptr %882, align 8, !tbaa !130
  %885 = load i32, ptr %868, align 8, !tbaa !119
  %886 = sub i32 %885, %870
  store i32 %886, ptr %868, align 8, !tbaa !119
  %887 = load i32, ptr %866, align 8, !tbaa !109
  %888 = sub i32 %887, %870
  store i32 %888, ptr %866, align 8, !tbaa !109
  %889 = icmp eq i32 %887, %870
  br i1 %889, label %890, label %893

890:                                              ; preds = %872
  %891 = getelementptr inbounds %struct.internal_state, ptr %865, i64 0, i32 2
  %892 = load ptr, ptr %891, align 8, !tbaa !65
  store ptr %892, ptr %875, align 8, !tbaa !110
  br label %893

893:                                              ; preds = %890, %872, %857
  %894 = load ptr, ptr %6, align 8, !tbaa !47
  %895 = getelementptr inbounds %struct.z_stream_s, ptr %894, i64 0, i32 4
  %896 = load i32, ptr %895, align 8, !tbaa !119
  %897 = icmp eq i32 %896, 0
  br i1 %897, label %1335, label %898

898:                                              ; preds = %893, %825
  br label %817, !llvm.loop !135

899:                                              ; preds = %823
  %900 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 55
  store i32 0, ptr %900, align 4, !tbaa !90
  %901 = icmp eq i32 %1, 4
  br i1 %901, label %902, label %952

902:                                              ; preds = %899
  %903 = load i64, ptr %816, align 8, !tbaa !88
  %904 = icmp sgt i64 %903, -1
  br i1 %904, label %905, label %909

905:                                              ; preds = %902
  %906 = load ptr, ptr %810, align 8, !tbaa !60
  %907 = and i64 %903, 4294967295
  %908 = getelementptr inbounds i8, ptr %906, i64 %907
  br label %909

909:                                              ; preds = %905, %902
  %910 = phi ptr [ %908, %905 ], [ null, %902 ]
  %911 = load i32, ptr %811, align 4, !tbaa !87
  %912 = zext i32 %911 to i64
  %913 = sub nsw i64 %912, %903
  tail call void @_tr_flush_block(ptr noundef %6, ptr noundef %910, i64 noundef %913, i32 noundef 1) #10
  %914 = load i32, ptr %811, align 4, !tbaa !87
  %915 = zext i32 %914 to i64
  store i64 %915, ptr %816, align 8, !tbaa !88
  %916 = load ptr, ptr %6, align 8, !tbaa !47
  %917 = getelementptr inbounds %struct.z_stream_s, ptr %916, i64 0, i32 7
  %918 = load ptr, ptr %917, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %918) #10
  %919 = getelementptr inbounds %struct.internal_state, ptr %918, i64 0, i32 5
  %920 = load i32, ptr %919, align 8, !tbaa !109
  %921 = getelementptr inbounds %struct.z_stream_s, ptr %916, i64 0, i32 4
  %922 = load i32, ptr %921, align 8, !tbaa !119
  %923 = tail call i32 @llvm.umin.i32(i32 %920, i32 %922)
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %946, label %925

925:                                              ; preds = %909
  %926 = getelementptr inbounds %struct.z_stream_s, ptr %916, i64 0, i32 3
  %927 = load ptr, ptr %926, align 8, !tbaa !118
  %928 = getelementptr inbounds %struct.internal_state, ptr %918, i64 0, i32 4
  %929 = load ptr, ptr %928, align 8, !tbaa !110
  %930 = zext i32 %923 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %927, ptr align 1 %929, i64 %930, i1 false)
  %931 = load ptr, ptr %926, align 8, !tbaa !118
  %932 = getelementptr inbounds i8, ptr %931, i64 %930
  store ptr %932, ptr %926, align 8, !tbaa !118
  %933 = load ptr, ptr %928, align 8, !tbaa !110
  %934 = getelementptr inbounds i8, ptr %933, i64 %930
  store ptr %934, ptr %928, align 8, !tbaa !110
  %935 = getelementptr inbounds %struct.z_stream_s, ptr %916, i64 0, i32 5
  %936 = load i64, ptr %935, align 8, !tbaa !130
  %937 = add i64 %936, %930
  store i64 %937, ptr %935, align 8, !tbaa !130
  %938 = load i32, ptr %921, align 8, !tbaa !119
  %939 = sub i32 %938, %923
  store i32 %939, ptr %921, align 8, !tbaa !119
  %940 = load i32, ptr %919, align 8, !tbaa !109
  %941 = sub i32 %940, %923
  store i32 %941, ptr %919, align 8, !tbaa !109
  %942 = icmp eq i32 %940, %923
  br i1 %942, label %943, label %946

943:                                              ; preds = %925
  %944 = getelementptr inbounds %struct.internal_state, ptr %918, i64 0, i32 2
  %945 = load ptr, ptr %944, align 8, !tbaa !65
  store ptr %945, ptr %928, align 8, !tbaa !110
  br label %946

946:                                              ; preds = %943, %925, %909
  %947 = load ptr, ptr %6, align 8, !tbaa !47
  %948 = getelementptr inbounds %struct.z_stream_s, ptr %947, i64 0, i32 4
  %949 = load i32, ptr %948, align 8, !tbaa !119
  %950 = icmp eq i32 %949, 0
  %951 = select i1 %950, i32 2, i32 3
  br label %1335

952:                                              ; preds = %899
  %953 = load i32, ptr %813, align 4, !tbaa !134
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %1004, label %955

955:                                              ; preds = %952
  %956 = load i64, ptr %816, align 8, !tbaa !88
  %957 = icmp sgt i64 %956, -1
  br i1 %957, label %958, label %962

958:                                              ; preds = %955
  %959 = load ptr, ptr %810, align 8, !tbaa !60
  %960 = and i64 %956, 4294967295
  %961 = getelementptr inbounds i8, ptr %959, i64 %960
  br label %962

962:                                              ; preds = %958, %955
  %963 = phi ptr [ %961, %958 ], [ null, %955 ]
  %964 = load i32, ptr %811, align 4, !tbaa !87
  %965 = zext i32 %964 to i64
  %966 = sub nsw i64 %965, %956
  tail call void @_tr_flush_block(ptr noundef %6, ptr noundef %963, i64 noundef %966, i32 noundef 0) #10
  %967 = load i32, ptr %811, align 4, !tbaa !87
  %968 = zext i32 %967 to i64
  store i64 %968, ptr %816, align 8, !tbaa !88
  %969 = load ptr, ptr %6, align 8, !tbaa !47
  %970 = getelementptr inbounds %struct.z_stream_s, ptr %969, i64 0, i32 7
  %971 = load ptr, ptr %970, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %971) #10
  %972 = getelementptr inbounds %struct.internal_state, ptr %971, i64 0, i32 5
  %973 = load i32, ptr %972, align 8, !tbaa !109
  %974 = getelementptr inbounds %struct.z_stream_s, ptr %969, i64 0, i32 4
  %975 = load i32, ptr %974, align 8, !tbaa !119
  %976 = tail call i32 @llvm.umin.i32(i32 %973, i32 %975)
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %999, label %978

978:                                              ; preds = %962
  %979 = getelementptr inbounds %struct.z_stream_s, ptr %969, i64 0, i32 3
  %980 = load ptr, ptr %979, align 8, !tbaa !118
  %981 = getelementptr inbounds %struct.internal_state, ptr %971, i64 0, i32 4
  %982 = load ptr, ptr %981, align 8, !tbaa !110
  %983 = zext i32 %976 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %980, ptr align 1 %982, i64 %983, i1 false)
  %984 = load ptr, ptr %979, align 8, !tbaa !118
  %985 = getelementptr inbounds i8, ptr %984, i64 %983
  store ptr %985, ptr %979, align 8, !tbaa !118
  %986 = load ptr, ptr %981, align 8, !tbaa !110
  %987 = getelementptr inbounds i8, ptr %986, i64 %983
  store ptr %987, ptr %981, align 8, !tbaa !110
  %988 = getelementptr inbounds %struct.z_stream_s, ptr %969, i64 0, i32 5
  %989 = load i64, ptr %988, align 8, !tbaa !130
  %990 = add i64 %989, %983
  store i64 %990, ptr %988, align 8, !tbaa !130
  %991 = load i32, ptr %974, align 8, !tbaa !119
  %992 = sub i32 %991, %976
  store i32 %992, ptr %974, align 8, !tbaa !119
  %993 = load i32, ptr %972, align 8, !tbaa !109
  %994 = sub i32 %993, %976
  store i32 %994, ptr %972, align 8, !tbaa !109
  %995 = icmp eq i32 %993, %976
  br i1 %995, label %996, label %999

996:                                              ; preds = %978
  %997 = getelementptr inbounds %struct.internal_state, ptr %971, i64 0, i32 2
  %998 = load ptr, ptr %997, align 8, !tbaa !65
  store ptr %998, ptr %981, align 8, !tbaa !110
  br label %999

999:                                              ; preds = %996, %978, %962
  %1000 = load ptr, ptr %6, align 8, !tbaa !47
  %1001 = getelementptr inbounds %struct.z_stream_s, ptr %1000, i64 0, i32 4
  %1002 = load i32, ptr %1001, align 8, !tbaa !119
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1335, label %1004

1004:                                             ; preds = %999, %952
  br label %1335

1005:                                             ; preds = %804
  %1006 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 29
  %1007 = icmp eq i32 %1, 0
  %1008 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 24
  %1009 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 27
  %1010 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 14
  %1011 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 51
  %1012 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 50
  %1013 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 48
  %1014 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 49
  %1015 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 23
  br label %1016

1016:                                             ; preds = %1221, %1005
  %1017 = load i32, ptr %1006, align 4, !tbaa !89
  %1018 = icmp ult i32 %1017, 259
  br i1 %1018, label %1019, label %1025

1019:                                             ; preds = %1016
  tail call fastcc void @fill_window(ptr noundef %6)
  %1020 = load i32, ptr %1006, align 4, !tbaa !89
  %1021 = icmp ult i32 %1020, 259
  %1022 = and i1 %1007, %1021
  br i1 %1022, label %1335, label %1023

1023:                                             ; preds = %1019
  %1024 = icmp eq i32 %1020, 0
  br i1 %1024, label %1222, label %1025

1025:                                             ; preds = %1023, %1016
  store i32 0, ptr %1008, align 8, !tbaa !92
  %1026 = load i32, ptr %1006, align 4, !tbaa !89
  %1027 = icmp ugt i32 %1026, 2
  br i1 %1027, label %1028, label %1110

1028:                                             ; preds = %1025
  %1029 = load i32, ptr %1009, align 4, !tbaa !87
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1110, label %1031

1031:                                             ; preds = %1028
  %1032 = load ptr, ptr %1010, align 8, !tbaa !60
  %1033 = zext i32 %1029 to i64
  %1034 = getelementptr inbounds i8, ptr %1032, i64 %1033
  %1035 = getelementptr inbounds i8, ptr %1034, i64 -1
  %1036 = load i8, ptr %1035, align 1, !tbaa !35
  %1037 = load i8, ptr %1034, align 1, !tbaa !35
  %1038 = icmp eq i8 %1036, %1037
  br i1 %1038, label %1039, label %1110

1039:                                             ; preds = %1031
  %1040 = getelementptr inbounds i8, ptr %1034, i64 1
  %1041 = load i8, ptr %1040, align 1, !tbaa !35
  %1042 = icmp eq i8 %1036, %1041
  br i1 %1042, label %1043, label %1110

1043:                                             ; preds = %1039
  %1044 = getelementptr inbounds i8, ptr %1034, i64 2
  %1045 = load i8, ptr %1044, align 1, !tbaa !35
  %1046 = icmp eq i8 %1036, %1045
  br i1 %1046, label %1047, label %1110

1047:                                             ; preds = %1043
  %1048 = getelementptr inbounds i8, ptr %1034, i64 258
  br label %1049

1049:                                             ; preds = %1079, %1047
  %1050 = phi i64 [ 2, %1047 ], [ %1080, %1079 ]
  %1051 = getelementptr inbounds i8, ptr %1034, i64 %1050
  %1052 = getelementptr inbounds i8, ptr %1051, i64 1
  %1053 = load i8, ptr %1052, align 1, !tbaa !35
  %1054 = icmp eq i8 %1036, %1053
  br i1 %1054, label %1055, label %1086

1055:                                             ; preds = %1049
  %1056 = getelementptr inbounds i8, ptr %1051, i64 2
  %1057 = load i8, ptr %1056, align 1, !tbaa !35
  %1058 = icmp eq i8 %1036, %1057
  br i1 %1058, label %1059, label %1088

1059:                                             ; preds = %1055
  %1060 = getelementptr inbounds i8, ptr %1051, i64 3
  %1061 = load i8, ptr %1060, align 1, !tbaa !35
  %1062 = icmp eq i8 %1036, %1061
  br i1 %1062, label %1063, label %1090

1063:                                             ; preds = %1059
  %1064 = getelementptr inbounds i8, ptr %1051, i64 4
  %1065 = load i8, ptr %1064, align 1, !tbaa !35
  %1066 = icmp eq i8 %1036, %1065
  br i1 %1066, label %1067, label %1092

1067:                                             ; preds = %1063
  %1068 = getelementptr inbounds i8, ptr %1051, i64 5
  %1069 = load i8, ptr %1068, align 1, !tbaa !35
  %1070 = icmp eq i8 %1036, %1069
  br i1 %1070, label %1071, label %1094

1071:                                             ; preds = %1067
  %1072 = getelementptr inbounds i8, ptr %1051, i64 6
  %1073 = load i8, ptr %1072, align 1, !tbaa !35
  %1074 = icmp eq i8 %1036, %1073
  br i1 %1074, label %1075, label %1096

1075:                                             ; preds = %1071
  %1076 = getelementptr inbounds i8, ptr %1051, i64 7
  %1077 = load i8, ptr %1076, align 1, !tbaa !35
  %1078 = icmp eq i8 %1036, %1077
  br i1 %1078, label %1079, label %1098

1079:                                             ; preds = %1075
  %1080 = add nuw nsw i64 %1050, 8
  %1081 = getelementptr inbounds i8, ptr %1034, i64 %1080
  %1082 = load i8, ptr %1081, align 1, !tbaa !35
  %1083 = icmp eq i8 %1036, %1082
  %1084 = icmp ult i64 %1050, 250
  %1085 = and i1 %1084, %1083
  br i1 %1085, label %1049, label %1100, !llvm.loop !136

1086:                                             ; preds = %1049
  %1087 = getelementptr inbounds i8, ptr %1051, i64 1
  br label %1102

1088:                                             ; preds = %1055
  %1089 = getelementptr inbounds i8, ptr %1051, i64 2
  br label %1102

1090:                                             ; preds = %1059
  %1091 = getelementptr inbounds i8, ptr %1051, i64 3
  br label %1102

1092:                                             ; preds = %1063
  %1093 = getelementptr inbounds i8, ptr %1051, i64 4
  br label %1102

1094:                                             ; preds = %1067
  %1095 = getelementptr inbounds i8, ptr %1051, i64 5
  br label %1102

1096:                                             ; preds = %1071
  %1097 = getelementptr inbounds i8, ptr %1051, i64 6
  br label %1102

1098:                                             ; preds = %1075
  %1099 = getelementptr inbounds i8, ptr %1051, i64 7
  br label %1102

1100:                                             ; preds = %1079
  %1101 = getelementptr inbounds i8, ptr %1034, i64 %1080
  br label %1102

1102:                                             ; preds = %1100, %1098, %1096, %1094, %1092, %1090, %1088, %1086
  %1103 = phi ptr [ %1087, %1086 ], [ %1089, %1088 ], [ %1091, %1090 ], [ %1093, %1092 ], [ %1095, %1094 ], [ %1097, %1096 ], [ %1099, %1098 ], [ %1101, %1100 ]
  %1104 = ptrtoint ptr %1048 to i64
  %1105 = ptrtoint ptr %1103 to i64
  %1106 = sub i64 %1105, %1104
  %1107 = trunc i64 %1106 to i32
  %1108 = add i32 %1107, 258
  %1109 = tail call i32 @llvm.umin.i32(i32 %1108, i32 %1026)
  store i32 %1109, ptr %1008, align 8
  br label %1110

1110:                                             ; preds = %1102, %1043, %1039, %1031, %1028, %1025
  %1111 = load i32, ptr %1008, align 8, !tbaa !92
  %1112 = icmp ugt i32 %1111, 2
  br i1 %1112, label %1113, label %1145

1113:                                             ; preds = %1110
  %1114 = trunc i32 %1111 to i8
  %1115 = add i8 %1114, -3
  %1116 = load ptr, ptr %1011, align 8, !tbaa !70
  %1117 = load i32, ptr %1012, align 4, !tbaa !134
  %1118 = zext i32 %1117 to i64
  %1119 = getelementptr inbounds i16, ptr %1116, i64 %1118
  store i16 1, ptr %1119, align 2, !tbaa !77
  %1120 = load ptr, ptr %1013, align 8, !tbaa !71
  %1121 = add i32 %1117, 1
  store i32 %1121, ptr %1012, align 4, !tbaa !134
  %1122 = getelementptr inbounds i8, ptr %1120, i64 %1118
  store i8 %1115, ptr %1122, align 1, !tbaa !35
  %1123 = zext i8 %1115 to i64
  %1124 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %1123
  %1125 = load i8, ptr %1124, align 1, !tbaa !35
  %1126 = zext i8 %1125 to i64
  %1127 = add nuw nsw i64 %1126, 257
  %1128 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 37, i64 %1127
  %1129 = load i16, ptr %1128, align 4, !tbaa !35
  %1130 = add i16 %1129, 1
  store i16 %1130, ptr %1128, align 4, !tbaa !35
  %1131 = load i8, ptr @_dist_code, align 1, !tbaa !35
  %1132 = zext i8 %1131 to i64
  %1133 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 38, i64 %1132
  %1134 = load i16, ptr %1133, align 4, !tbaa !35
  %1135 = add i16 %1134, 1
  store i16 %1135, ptr %1133, align 4, !tbaa !35
  %1136 = load i32, ptr %1012, align 4, !tbaa !134
  %1137 = load i32, ptr %1014, align 8, !tbaa !64
  %1138 = add i32 %1137, -1
  %1139 = icmp eq i32 %1136, %1138
  %1140 = load i32, ptr %1008, align 8, !tbaa !92
  %1141 = load i32, ptr %1006, align 4, !tbaa !89
  %1142 = sub i32 %1141, %1140
  store i32 %1142, ptr %1006, align 4, !tbaa !89
  %1143 = load i32, ptr %1009, align 4, !tbaa !87
  %1144 = add i32 %1143, %1140
  store i32 %1144, ptr %1009, align 4, !tbaa !87
  store i32 0, ptr %1008, align 8, !tbaa !92
  br label %1170

1145:                                             ; preds = %1110
  %1146 = load ptr, ptr %1010, align 8, !tbaa !60
  %1147 = load i32, ptr %1009, align 4, !tbaa !87
  %1148 = zext i32 %1147 to i64
  %1149 = getelementptr inbounds i8, ptr %1146, i64 %1148
  %1150 = load i8, ptr %1149, align 1, !tbaa !35
  %1151 = load ptr, ptr %1011, align 8, !tbaa !70
  %1152 = load i32, ptr %1012, align 4, !tbaa !134
  %1153 = zext i32 %1152 to i64
  %1154 = getelementptr inbounds i16, ptr %1151, i64 %1153
  store i16 0, ptr %1154, align 2, !tbaa !77
  %1155 = load ptr, ptr %1013, align 8, !tbaa !71
  %1156 = add i32 %1152, 1
  store i32 %1156, ptr %1012, align 4, !tbaa !134
  %1157 = getelementptr inbounds i8, ptr %1155, i64 %1153
  store i8 %1150, ptr %1157, align 1, !tbaa !35
  %1158 = zext i8 %1150 to i64
  %1159 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 37, i64 %1158
  %1160 = load i16, ptr %1159, align 4, !tbaa !35
  %1161 = add i16 %1160, 1
  store i16 %1161, ptr %1159, align 4, !tbaa !35
  %1162 = load i32, ptr %1012, align 4, !tbaa !134
  %1163 = load i32, ptr %1014, align 8, !tbaa !64
  %1164 = add i32 %1163, -1
  %1165 = icmp eq i32 %1162, %1164
  %1166 = load i32, ptr %1006, align 4, !tbaa !89
  %1167 = add i32 %1166, -1
  store i32 %1167, ptr %1006, align 4, !tbaa !89
  %1168 = load i32, ptr %1009, align 4, !tbaa !87
  %1169 = add i32 %1168, 1
  store i32 %1169, ptr %1009, align 4, !tbaa !87
  br label %1170

1170:                                             ; preds = %1145, %1113
  %1171 = phi i1 [ %1139, %1113 ], [ %1165, %1145 ]
  br i1 %1171, label %1172, label %1221

1172:                                             ; preds = %1170
  %1173 = load i64, ptr %1015, align 8, !tbaa !88
  %1174 = icmp sgt i64 %1173, -1
  br i1 %1174, label %1175, label %1179

1175:                                             ; preds = %1172
  %1176 = load ptr, ptr %1010, align 8, !tbaa !60
  %1177 = and i64 %1173, 4294967295
  %1178 = getelementptr inbounds i8, ptr %1176, i64 %1177
  br label %1179

1179:                                             ; preds = %1175, %1172
  %1180 = phi ptr [ %1178, %1175 ], [ null, %1172 ]
  %1181 = load i32, ptr %1009, align 4, !tbaa !87
  %1182 = zext i32 %1181 to i64
  %1183 = sub nsw i64 %1182, %1173
  tail call void @_tr_flush_block(ptr noundef %6, ptr noundef %1180, i64 noundef %1183, i32 noundef 0) #10
  %1184 = load i32, ptr %1009, align 4, !tbaa !87
  %1185 = zext i32 %1184 to i64
  store i64 %1185, ptr %1015, align 8, !tbaa !88
  %1186 = load ptr, ptr %6, align 8, !tbaa !47
  %1187 = getelementptr inbounds %struct.z_stream_s, ptr %1186, i64 0, i32 7
  %1188 = load ptr, ptr %1187, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %1188) #10
  %1189 = getelementptr inbounds %struct.internal_state, ptr %1188, i64 0, i32 5
  %1190 = load i32, ptr %1189, align 8, !tbaa !109
  %1191 = getelementptr inbounds %struct.z_stream_s, ptr %1186, i64 0, i32 4
  %1192 = load i32, ptr %1191, align 8, !tbaa !119
  %1193 = tail call i32 @llvm.umin.i32(i32 %1190, i32 %1192)
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1216, label %1195

1195:                                             ; preds = %1179
  %1196 = getelementptr inbounds %struct.z_stream_s, ptr %1186, i64 0, i32 3
  %1197 = load ptr, ptr %1196, align 8, !tbaa !118
  %1198 = getelementptr inbounds %struct.internal_state, ptr %1188, i64 0, i32 4
  %1199 = load ptr, ptr %1198, align 8, !tbaa !110
  %1200 = zext i32 %1193 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1197, ptr align 1 %1199, i64 %1200, i1 false)
  %1201 = load ptr, ptr %1196, align 8, !tbaa !118
  %1202 = getelementptr inbounds i8, ptr %1201, i64 %1200
  store ptr %1202, ptr %1196, align 8, !tbaa !118
  %1203 = load ptr, ptr %1198, align 8, !tbaa !110
  %1204 = getelementptr inbounds i8, ptr %1203, i64 %1200
  store ptr %1204, ptr %1198, align 8, !tbaa !110
  %1205 = getelementptr inbounds %struct.z_stream_s, ptr %1186, i64 0, i32 5
  %1206 = load i64, ptr %1205, align 8, !tbaa !130
  %1207 = add i64 %1206, %1200
  store i64 %1207, ptr %1205, align 8, !tbaa !130
  %1208 = load i32, ptr %1191, align 8, !tbaa !119
  %1209 = sub i32 %1208, %1193
  store i32 %1209, ptr %1191, align 8, !tbaa !119
  %1210 = load i32, ptr %1189, align 8, !tbaa !109
  %1211 = sub i32 %1210, %1193
  store i32 %1211, ptr %1189, align 8, !tbaa !109
  %1212 = icmp eq i32 %1210, %1193
  br i1 %1212, label %1213, label %1216

1213:                                             ; preds = %1195
  %1214 = getelementptr inbounds %struct.internal_state, ptr %1188, i64 0, i32 2
  %1215 = load ptr, ptr %1214, align 8, !tbaa !65
  store ptr %1215, ptr %1198, align 8, !tbaa !110
  br label %1216

1216:                                             ; preds = %1213, %1195, %1179
  %1217 = load ptr, ptr %6, align 8, !tbaa !47
  %1218 = getelementptr inbounds %struct.z_stream_s, ptr %1217, i64 0, i32 4
  %1219 = load i32, ptr %1218, align 8, !tbaa !119
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1335, label %1221

1221:                                             ; preds = %1216, %1170
  br label %1016, !llvm.loop !137

1222:                                             ; preds = %1023
  %1223 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 55
  store i32 0, ptr %1223, align 4, !tbaa !90
  %1224 = icmp eq i32 %1, 4
  br i1 %1224, label %1225, label %1275

1225:                                             ; preds = %1222
  %1226 = load i64, ptr %1015, align 8, !tbaa !88
  %1227 = icmp sgt i64 %1226, -1
  br i1 %1227, label %1228, label %1232

1228:                                             ; preds = %1225
  %1229 = load ptr, ptr %1010, align 8, !tbaa !60
  %1230 = and i64 %1226, 4294967295
  %1231 = getelementptr inbounds i8, ptr %1229, i64 %1230
  br label %1232

1232:                                             ; preds = %1228, %1225
  %1233 = phi ptr [ %1231, %1228 ], [ null, %1225 ]
  %1234 = load i32, ptr %1009, align 4, !tbaa !87
  %1235 = zext i32 %1234 to i64
  %1236 = sub nsw i64 %1235, %1226
  tail call void @_tr_flush_block(ptr noundef %6, ptr noundef %1233, i64 noundef %1236, i32 noundef 1) #10
  %1237 = load i32, ptr %1009, align 4, !tbaa !87
  %1238 = zext i32 %1237 to i64
  store i64 %1238, ptr %1015, align 8, !tbaa !88
  %1239 = load ptr, ptr %6, align 8, !tbaa !47
  %1240 = getelementptr inbounds %struct.z_stream_s, ptr %1239, i64 0, i32 7
  %1241 = load ptr, ptr %1240, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %1241) #10
  %1242 = getelementptr inbounds %struct.internal_state, ptr %1241, i64 0, i32 5
  %1243 = load i32, ptr %1242, align 8, !tbaa !109
  %1244 = getelementptr inbounds %struct.z_stream_s, ptr %1239, i64 0, i32 4
  %1245 = load i32, ptr %1244, align 8, !tbaa !119
  %1246 = tail call i32 @llvm.umin.i32(i32 %1243, i32 %1245)
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1269, label %1248

1248:                                             ; preds = %1232
  %1249 = getelementptr inbounds %struct.z_stream_s, ptr %1239, i64 0, i32 3
  %1250 = load ptr, ptr %1249, align 8, !tbaa !118
  %1251 = getelementptr inbounds %struct.internal_state, ptr %1241, i64 0, i32 4
  %1252 = load ptr, ptr %1251, align 8, !tbaa !110
  %1253 = zext i32 %1246 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1250, ptr align 1 %1252, i64 %1253, i1 false)
  %1254 = load ptr, ptr %1249, align 8, !tbaa !118
  %1255 = getelementptr inbounds i8, ptr %1254, i64 %1253
  store ptr %1255, ptr %1249, align 8, !tbaa !118
  %1256 = load ptr, ptr %1251, align 8, !tbaa !110
  %1257 = getelementptr inbounds i8, ptr %1256, i64 %1253
  store ptr %1257, ptr %1251, align 8, !tbaa !110
  %1258 = getelementptr inbounds %struct.z_stream_s, ptr %1239, i64 0, i32 5
  %1259 = load i64, ptr %1258, align 8, !tbaa !130
  %1260 = add i64 %1259, %1253
  store i64 %1260, ptr %1258, align 8, !tbaa !130
  %1261 = load i32, ptr %1244, align 8, !tbaa !119
  %1262 = sub i32 %1261, %1246
  store i32 %1262, ptr %1244, align 8, !tbaa !119
  %1263 = load i32, ptr %1242, align 8, !tbaa !109
  %1264 = sub i32 %1263, %1246
  store i32 %1264, ptr %1242, align 8, !tbaa !109
  %1265 = icmp eq i32 %1263, %1246
  br i1 %1265, label %1266, label %1269

1266:                                             ; preds = %1248
  %1267 = getelementptr inbounds %struct.internal_state, ptr %1241, i64 0, i32 2
  %1268 = load ptr, ptr %1267, align 8, !tbaa !65
  store ptr %1268, ptr %1251, align 8, !tbaa !110
  br label %1269

1269:                                             ; preds = %1266, %1248, %1232
  %1270 = load ptr, ptr %6, align 8, !tbaa !47
  %1271 = getelementptr inbounds %struct.z_stream_s, ptr %1270, i64 0, i32 4
  %1272 = load i32, ptr %1271, align 8, !tbaa !119
  %1273 = icmp eq i32 %1272, 0
  %1274 = select i1 %1273, i32 2, i32 3
  br label %1335

1275:                                             ; preds = %1222
  %1276 = load i32, ptr %1012, align 4, !tbaa !134
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1327, label %1278

1278:                                             ; preds = %1275
  %1279 = load i64, ptr %1015, align 8, !tbaa !88
  %1280 = icmp sgt i64 %1279, -1
  br i1 %1280, label %1281, label %1285

1281:                                             ; preds = %1278
  %1282 = load ptr, ptr %1010, align 8, !tbaa !60
  %1283 = and i64 %1279, 4294967295
  %1284 = getelementptr inbounds i8, ptr %1282, i64 %1283
  br label %1285

1285:                                             ; preds = %1281, %1278
  %1286 = phi ptr [ %1284, %1281 ], [ null, %1278 ]
  %1287 = load i32, ptr %1009, align 4, !tbaa !87
  %1288 = zext i32 %1287 to i64
  %1289 = sub nsw i64 %1288, %1279
  tail call void @_tr_flush_block(ptr noundef %6, ptr noundef %1286, i64 noundef %1289, i32 noundef 0) #10
  %1290 = load i32, ptr %1009, align 4, !tbaa !87
  %1291 = zext i32 %1290 to i64
  store i64 %1291, ptr %1015, align 8, !tbaa !88
  %1292 = load ptr, ptr %6, align 8, !tbaa !47
  %1293 = getelementptr inbounds %struct.z_stream_s, ptr %1292, i64 0, i32 7
  %1294 = load ptr, ptr %1293, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %1294) #10
  %1295 = getelementptr inbounds %struct.internal_state, ptr %1294, i64 0, i32 5
  %1296 = load i32, ptr %1295, align 8, !tbaa !109
  %1297 = getelementptr inbounds %struct.z_stream_s, ptr %1292, i64 0, i32 4
  %1298 = load i32, ptr %1297, align 8, !tbaa !119
  %1299 = tail call i32 @llvm.umin.i32(i32 %1296, i32 %1298)
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1322, label %1301

1301:                                             ; preds = %1285
  %1302 = getelementptr inbounds %struct.z_stream_s, ptr %1292, i64 0, i32 3
  %1303 = load ptr, ptr %1302, align 8, !tbaa !118
  %1304 = getelementptr inbounds %struct.internal_state, ptr %1294, i64 0, i32 4
  %1305 = load ptr, ptr %1304, align 8, !tbaa !110
  %1306 = zext i32 %1299 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1303, ptr align 1 %1305, i64 %1306, i1 false)
  %1307 = load ptr, ptr %1302, align 8, !tbaa !118
  %1308 = getelementptr inbounds i8, ptr %1307, i64 %1306
  store ptr %1308, ptr %1302, align 8, !tbaa !118
  %1309 = load ptr, ptr %1304, align 8, !tbaa !110
  %1310 = getelementptr inbounds i8, ptr %1309, i64 %1306
  store ptr %1310, ptr %1304, align 8, !tbaa !110
  %1311 = getelementptr inbounds %struct.z_stream_s, ptr %1292, i64 0, i32 5
  %1312 = load i64, ptr %1311, align 8, !tbaa !130
  %1313 = add i64 %1312, %1306
  store i64 %1313, ptr %1311, align 8, !tbaa !130
  %1314 = load i32, ptr %1297, align 8, !tbaa !119
  %1315 = sub i32 %1314, %1299
  store i32 %1315, ptr %1297, align 8, !tbaa !119
  %1316 = load i32, ptr %1295, align 8, !tbaa !109
  %1317 = sub i32 %1316, %1299
  store i32 %1317, ptr %1295, align 8, !tbaa !109
  %1318 = icmp eq i32 %1316, %1299
  br i1 %1318, label %1319, label %1322

1319:                                             ; preds = %1301
  %1320 = getelementptr inbounds %struct.internal_state, ptr %1294, i64 0, i32 2
  %1321 = load ptr, ptr %1320, align 8, !tbaa !65
  store ptr %1321, ptr %1304, align 8, !tbaa !110
  br label %1322

1322:                                             ; preds = %1319, %1301, %1285
  %1323 = load ptr, ptr %6, align 8, !tbaa !47
  %1324 = getelementptr inbounds %struct.z_stream_s, ptr %1323, i64 0, i32 4
  %1325 = load i32, ptr %1324, align 8, !tbaa !119
  %1326 = icmp eq i32 %1325, 0
  br i1 %1326, label %1335, label %1327

1327:                                             ; preds = %1322, %1275
  br label %1335

1328:                                             ; preds = %804
  %1329 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 33
  %1330 = load i32, ptr %1329, align 4, !tbaa !72
  %1331 = sext i32 %1330 to i64
  %1332 = getelementptr inbounds [10 x %struct.config_s], ptr @configuration_table, i64 0, i64 %1331, i32 4
  %1333 = load ptr, ptr %1332, align 8, !tbaa !116
  %1334 = tail call i32 %1333(ptr noundef nonnull %6, i32 noundef %1) #10
  br label %1335

1335:                                             ; preds = %1216, %1019, %893, %1327, %1322, %1269, %1004, %999, %946, %823, %1328
  %1336 = phi i32 [ %1334, %1328 ], [ 1, %1004 ], [ 0, %823 ], [ %951, %946 ], [ 0, %999 ], [ 1, %1327 ], [ %1274, %1269 ], [ 0, %1322 ], [ 0, %893 ], [ 0, %1019 ], [ 0, %1216 ]
  %1337 = and i32 %1336, -2
  %1338 = icmp eq i32 %1337, 2
  br i1 %1338, label %1339, label %1340

1339:                                             ; preds = %1335
  store i32 666, ptr %22, align 8, !tbaa !67
  br label %1340

1340:                                             ; preds = %1335, %1339
  %1341 = and i32 %1336, -3
  %1342 = icmp eq i32 %1341, 0
  br i1 %1342, label %1343, label %1347

1343:                                             ; preds = %1340
  %1344 = load i32, ptr %31, align 8, !tbaa !119
  %1345 = icmp eq i32 %1344, 0
  br i1 %1345, label %1346, label %1535

1346:                                             ; preds = %1343
  store i32 -1, ptr %38, align 8, !tbaa !111
  br label %1535

1347:                                             ; preds = %1340
  %1348 = icmp eq i32 %1336, 1
  br i1 %1348, label %1349, label %1400

1349:                                             ; preds = %1347
  switch i32 %1, label %1351 [
    i32 1, label %1350
    i32 5, label %1369
  ]

1350:                                             ; preds = %1349
  tail call void @_tr_align(ptr noundef nonnull %6) #10
  br label %1369

1351:                                             ; preds = %1349
  tail call void @_tr_stored_block(ptr noundef nonnull %6, ptr noundef null, i64 noundef 0, i32 noundef 0) #10
  %1352 = icmp eq i32 %1, 3
  br i1 %1352, label %1353, label %1369

1353:                                             ; preds = %1351
  %1354 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 17
  %1355 = load ptr, ptr %1354, align 8, !tbaa !62
  %1356 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 19
  %1357 = load i32, ptr %1356, align 4, !tbaa !57
  %1358 = add i32 %1357, -1
  %1359 = zext i32 %1358 to i64
  %1360 = getelementptr inbounds i16, ptr %1355, i64 %1359
  store i16 0, ptr %1360, align 2, !tbaa !77
  %1361 = shl nuw nsw i64 %1359, 1
  tail call void @llvm.memset.p0.i64(ptr align 1 %1355, i8 0, i64 %1361, i1 false)
  %1362 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 29
  %1363 = load i32, ptr %1362, align 4, !tbaa !89
  %1364 = icmp eq i32 %1363, 0
  br i1 %1364, label %1365, label %1369

1365:                                             ; preds = %1353
  %1366 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 27
  store i32 0, ptr %1366, align 4, !tbaa !87
  %1367 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 23
  store i64 0, ptr %1367, align 8, !tbaa !88
  %1368 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 55
  store i32 0, ptr %1368, align 4, !tbaa !90
  br label %1369

1369:                                             ; preds = %1349, %1353, %1365, %1351, %1350
  %1370 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %1370) #10
  %1371 = getelementptr inbounds %struct.internal_state, ptr %1370, i64 0, i32 5
  %1372 = load i32, ptr %1371, align 8, !tbaa !109
  %1373 = load i32, ptr %31, align 8, !tbaa !119
  %1374 = tail call i32 @llvm.umin.i32(i32 %1372, i32 %1373)
  %1375 = icmp eq i32 %1374, 0
  br i1 %1375, label %1396, label %1376

1376:                                             ; preds = %1369
  %1377 = load ptr, ptr %11, align 8, !tbaa !118
  %1378 = getelementptr inbounds %struct.internal_state, ptr %1370, i64 0, i32 4
  %1379 = load ptr, ptr %1378, align 8, !tbaa !110
  %1380 = zext i32 %1374 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1377, ptr align 1 %1379, i64 %1380, i1 false)
  %1381 = load ptr, ptr %11, align 8, !tbaa !118
  %1382 = getelementptr inbounds i8, ptr %1381, i64 %1380
  store ptr %1382, ptr %11, align 8, !tbaa !118
  %1383 = load ptr, ptr %1378, align 8, !tbaa !110
  %1384 = getelementptr inbounds i8, ptr %1383, i64 %1380
  store ptr %1384, ptr %1378, align 8, !tbaa !110
  %1385 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %1386 = load i64, ptr %1385, align 8, !tbaa !130
  %1387 = add i64 %1386, %1380
  store i64 %1387, ptr %1385, align 8, !tbaa !130
  %1388 = load i32, ptr %31, align 8, !tbaa !119
  %1389 = sub i32 %1388, %1374
  store i32 %1389, ptr %31, align 8, !tbaa !119
  %1390 = load i32, ptr %1371, align 8, !tbaa !109
  %1391 = sub i32 %1390, %1374
  store i32 %1391, ptr %1371, align 8, !tbaa !109
  %1392 = icmp eq i32 %1390, %1374
  br i1 %1392, label %1393, label %1396

1393:                                             ; preds = %1376
  %1394 = getelementptr inbounds %struct.internal_state, ptr %1370, i64 0, i32 2
  %1395 = load ptr, ptr %1394, align 8, !tbaa !65
  store ptr %1395, ptr %1378, align 8, !tbaa !110
  br label %1396

1396:                                             ; preds = %1369, %1376, %1393
  %1397 = load i32, ptr %31, align 8, !tbaa !119
  %1398 = icmp eq i32 %1397, 0
  br i1 %1398, label %1399, label %1400

1399:                                             ; preds = %1396
  store i32 -1, ptr %38, align 8, !tbaa !111
  br label %1535

1400:                                             ; preds = %797, %1396, %1347
  br i1 %25, label %1535, label %1401

1401:                                             ; preds = %1400
  %1402 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 6
  %1403 = load i32, ptr %1402, align 4, !tbaa !51
  %1404 = icmp slt i32 %1403, 1
  br i1 %1404, label %1535, label %1405

1405:                                             ; preds = %1401
  %1406 = icmp eq i32 %1403, 2
  %1407 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 12
  %1408 = load i64, ptr %1407, align 8, !tbaa !95
  br i1 %1406, label %1409, label %1467

1409:                                             ; preds = %1405
  %1410 = trunc i64 %1408 to i8
  %1411 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %1412 = load ptr, ptr %1411, align 8, !tbaa !65
  %1413 = load i32, ptr %731, align 8, !tbaa !109
  %1414 = add i32 %1413, 1
  store i32 %1414, ptr %731, align 8, !tbaa !109
  %1415 = zext i32 %1413 to i64
  %1416 = getelementptr inbounds i8, ptr %1412, i64 %1415
  store i8 %1410, ptr %1416, align 1, !tbaa !35
  %1417 = load i64, ptr %1407, align 8, !tbaa !95
  %1418 = lshr i64 %1417, 8
  %1419 = trunc i64 %1418 to i8
  %1420 = load ptr, ptr %1411, align 8, !tbaa !65
  %1421 = load i32, ptr %731, align 8, !tbaa !109
  %1422 = add i32 %1421, 1
  store i32 %1422, ptr %731, align 8, !tbaa !109
  %1423 = zext i32 %1421 to i64
  %1424 = getelementptr inbounds i8, ptr %1420, i64 %1423
  store i8 %1419, ptr %1424, align 1, !tbaa !35
  %1425 = load i64, ptr %1407, align 8, !tbaa !95
  %1426 = lshr i64 %1425, 16
  %1427 = trunc i64 %1426 to i8
  %1428 = load ptr, ptr %1411, align 8, !tbaa !65
  %1429 = load i32, ptr %731, align 8, !tbaa !109
  %1430 = add i32 %1429, 1
  store i32 %1430, ptr %731, align 8, !tbaa !109
  %1431 = zext i32 %1429 to i64
  %1432 = getelementptr inbounds i8, ptr %1428, i64 %1431
  store i8 %1427, ptr %1432, align 1, !tbaa !35
  %1433 = load i64, ptr %1407, align 8, !tbaa !95
  %1434 = lshr i64 %1433, 24
  %1435 = trunc i64 %1434 to i8
  %1436 = load ptr, ptr %1411, align 8, !tbaa !65
  %1437 = load i32, ptr %731, align 8, !tbaa !109
  %1438 = add i32 %1437, 1
  store i32 %1438, ptr %731, align 8, !tbaa !109
  %1439 = zext i32 %1437 to i64
  %1440 = getelementptr inbounds i8, ptr %1436, i64 %1439
  store i8 %1435, ptr %1440, align 1, !tbaa !35
  %1441 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 2
  %1442 = load i64, ptr %1441, align 8, !tbaa !105
  %1443 = trunc i64 %1442 to i8
  %1444 = load ptr, ptr %1411, align 8, !tbaa !65
  %1445 = load i32, ptr %731, align 8, !tbaa !109
  %1446 = add i32 %1445, 1
  store i32 %1446, ptr %731, align 8, !tbaa !109
  %1447 = zext i32 %1445 to i64
  %1448 = getelementptr inbounds i8, ptr %1444, i64 %1447
  store i8 %1443, ptr %1448, align 1, !tbaa !35
  %1449 = load i64, ptr %1441, align 8, !tbaa !105
  %1450 = lshr i64 %1449, 8
  %1451 = trunc i64 %1450 to i8
  %1452 = load ptr, ptr %1411, align 8, !tbaa !65
  %1453 = load i32, ptr %731, align 8, !tbaa !109
  %1454 = add i32 %1453, 1
  store i32 %1454, ptr %731, align 8, !tbaa !109
  %1455 = zext i32 %1453 to i64
  %1456 = getelementptr inbounds i8, ptr %1452, i64 %1455
  store i8 %1451, ptr %1456, align 1, !tbaa !35
  %1457 = load i64, ptr %1441, align 8, !tbaa !105
  %1458 = lshr i64 %1457, 16
  %1459 = trunc i64 %1458 to i8
  %1460 = load ptr, ptr %1411, align 8, !tbaa !65
  %1461 = load i32, ptr %731, align 8, !tbaa !109
  %1462 = add i32 %1461, 1
  store i32 %1462, ptr %731, align 8, !tbaa !109
  %1463 = zext i32 %1461 to i64
  %1464 = getelementptr inbounds i8, ptr %1460, i64 %1463
  store i8 %1459, ptr %1464, align 1, !tbaa !35
  %1465 = load i64, ptr %1441, align 8, !tbaa !105
  %1466 = lshr i64 %1465, 24
  br label %1491

1467:                                             ; preds = %1405
  %1468 = lshr i64 %1408, 16
  %1469 = lshr i64 %1408, 24
  %1470 = trunc i64 %1469 to i8
  %1471 = getelementptr inbounds %struct.internal_state, ptr %6, i64 0, i32 2
  %1472 = load ptr, ptr %1471, align 8, !tbaa !65
  %1473 = load i32, ptr %731, align 8, !tbaa !109
  %1474 = add i32 %1473, 1
  store i32 %1474, ptr %731, align 8, !tbaa !109
  %1475 = zext i32 %1473 to i64
  %1476 = getelementptr inbounds i8, ptr %1472, i64 %1475
  store i8 %1470, ptr %1476, align 1, !tbaa !35
  %1477 = trunc i64 %1468 to i8
  %1478 = load ptr, ptr %1471, align 8, !tbaa !65
  %1479 = load i32, ptr %731, align 8, !tbaa !109
  %1480 = add i32 %1479, 1
  store i32 %1480, ptr %731, align 8, !tbaa !109
  %1481 = zext i32 %1479 to i64
  %1482 = getelementptr inbounds i8, ptr %1478, i64 %1481
  store i8 %1477, ptr %1482, align 1, !tbaa !35
  %1483 = load i64, ptr %1407, align 8, !tbaa !95
  %1484 = lshr i64 %1483, 8
  %1485 = trunc i64 %1484 to i8
  %1486 = load ptr, ptr %1471, align 8, !tbaa !65
  %1487 = load i32, ptr %731, align 8, !tbaa !109
  %1488 = add i32 %1487, 1
  store i32 %1488, ptr %731, align 8, !tbaa !109
  %1489 = zext i32 %1487 to i64
  %1490 = getelementptr inbounds i8, ptr %1486, i64 %1489
  store i8 %1485, ptr %1490, align 1, !tbaa !35
  br label %1491

1491:                                             ; preds = %1467, %1409
  %1492 = phi ptr [ %1471, %1467 ], [ %1411, %1409 ]
  %1493 = phi i64 [ %1483, %1467 ], [ %1466, %1409 ]
  %1494 = trunc i64 %1493 to i8
  %1495 = load ptr, ptr %1492, align 8, !tbaa !65
  %1496 = load i32, ptr %731, align 8, !tbaa !109
  %1497 = add i32 %1496, 1
  store i32 %1497, ptr %731, align 8, !tbaa !109
  %1498 = zext i32 %1496 to i64
  %1499 = getelementptr inbounds i8, ptr %1495, i64 %1498
  store i8 %1494, ptr %1499, align 1, !tbaa !35
  %1500 = load ptr, ptr %5, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %1500) #10
  %1501 = getelementptr inbounds %struct.internal_state, ptr %1500, i64 0, i32 5
  %1502 = load i32, ptr %1501, align 8, !tbaa !109
  %1503 = load i32, ptr %31, align 8, !tbaa !119
  %1504 = tail call i32 @llvm.umin.i32(i32 %1502, i32 %1503)
  %1505 = icmp eq i32 %1504, 0
  br i1 %1505, label %1526, label %1506

1506:                                             ; preds = %1491
  %1507 = load ptr, ptr %11, align 8, !tbaa !118
  %1508 = getelementptr inbounds %struct.internal_state, ptr %1500, i64 0, i32 4
  %1509 = load ptr, ptr %1508, align 8, !tbaa !110
  %1510 = zext i32 %1504 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1507, ptr align 1 %1509, i64 %1510, i1 false)
  %1511 = load ptr, ptr %11, align 8, !tbaa !118
  %1512 = getelementptr inbounds i8, ptr %1511, i64 %1510
  store ptr %1512, ptr %11, align 8, !tbaa !118
  %1513 = load ptr, ptr %1508, align 8, !tbaa !110
  %1514 = getelementptr inbounds i8, ptr %1513, i64 %1510
  store ptr %1514, ptr %1508, align 8, !tbaa !110
  %1515 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 5
  %1516 = load i64, ptr %1515, align 8, !tbaa !130
  %1517 = add i64 %1516, %1510
  store i64 %1517, ptr %1515, align 8, !tbaa !130
  %1518 = load i32, ptr %31, align 8, !tbaa !119
  %1519 = sub i32 %1518, %1504
  store i32 %1519, ptr %31, align 8, !tbaa !119
  %1520 = load i32, ptr %1501, align 8, !tbaa !109
  %1521 = sub i32 %1520, %1504
  store i32 %1521, ptr %1501, align 8, !tbaa !109
  %1522 = icmp eq i32 %1520, %1504
  br i1 %1522, label %1523, label %1526

1523:                                             ; preds = %1506
  %1524 = getelementptr inbounds %struct.internal_state, ptr %1500, i64 0, i32 2
  %1525 = load ptr, ptr %1524, align 8, !tbaa !65
  store ptr %1525, ptr %1508, align 8, !tbaa !110
  br label %1526

1526:                                             ; preds = %1491, %1506, %1523
  %1527 = load i32, ptr %1402, align 4, !tbaa !51
  %1528 = icmp sgt i32 %1527, 0
  br i1 %1528, label %1529, label %1531

1529:                                             ; preds = %1526
  %1530 = sub nsw i32 0, %1527
  store i32 %1530, ptr %1402, align 4, !tbaa !51
  br label %1531

1531:                                             ; preds = %1529, %1526
  %1532 = load i32, ptr %731, align 8, !tbaa !109
  %1533 = icmp eq i32 %1532, 0
  %1534 = zext i1 %1533 to i32
  br label %1535

1535:                                             ; preds = %1399, %1346, %1343, %1401, %1400, %2, %4, %1531, %790, %780, %764, %34, %27
  %1536 = phi i32 [ -2, %27 ], [ -5, %34 ], [ 0, %764 ], [ -5, %790 ], [ %1534, %1531 ], [ -5, %780 ], [ -2, %4 ], [ -2, %2 ], [ 0, %1400 ], [ 1, %1401 ], [ 0, %1343 ], [ 0, %1346 ], [ 0, %1399 ]
  ret i32 %1536
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @deflateTune(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #5 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.z_stream_s, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 35
  store i32 %1, ptr %12, align 4, !tbaa !82
  %13 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 32
  store i32 %2, ptr %13, align 8, !tbaa !80
  %14 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 36
  store i32 %3, ptr %14, align 8, !tbaa !84
  %15 = getelementptr inbounds %struct.internal_state, ptr %9, i64 0, i32 31
  store i32 %4, ptr %15, align 4, !tbaa !86
  br label %16

16:                                               ; preds = %5, %7, %11
  %17 = phi i32 [ 0, %11 ], [ -2, %7 ], [ -2, %5 ]
  ret i32 %17
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
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
  br label %91

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
  %22 = load i32, ptr %21, align 4, !tbaa !87
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
  br i1 %50, label %51, label %44, !llvm.loop !138

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
  br i1 %62, label %63, label %56, !llvm.loop !139

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
  br label %91

82:                                               ; preds = %76
  %83 = lshr i64 %1, 12
  %84 = lshr i64 %1, 14
  %85 = lshr i64 %1, 25
  %86 = add i64 %1, 7
  %87 = add i64 %86, %83
  %88 = add i64 %87, %84
  %89 = add i64 %88, %85
  %90 = add i64 %89, %72
  br label %91

91:                                               ; preds = %82, %80, %15
  %92 = phi i64 [ %16, %15 ], [ %81, %80 ], [ %90, %82 ]
  ret i64 %92
}

declare hidden void @_tr_align(ptr noundef) local_unnamed_addr #1

declare hidden void @_tr_stored_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
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
  %15 = tail call ptr %12(ptr noundef %14, i32 noundef 1, i32 noundef 5936) #10
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
  %23 = tail call ptr %19(ptr noundef %20, i32 noundef %22, i32 noundef 2) #10
  %24 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 14
  store ptr %23, ptr %24, align 8, !tbaa !60
  %25 = load ptr, ptr %11, align 8, !tbaa !43
  %26 = load ptr, ptr %13, align 8, !tbaa !44
  %27 = load i32, ptr %21, align 4, !tbaa !54
  %28 = tail call ptr %25(ptr noundef %26, i32 noundef %27, i32 noundef 2) #10
  %29 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 16
  store ptr %28, ptr %29, align 8, !tbaa !61
  %30 = load ptr, ptr %11, align 8, !tbaa !43
  %31 = load ptr, ptr %13, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 19
  %33 = load i32, ptr %32, align 4, !tbaa !57
  %34 = tail call ptr %30(ptr noundef %31, i32 noundef %33, i32 noundef 2) #10
  %35 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 17
  store ptr %34, ptr %35, align 8, !tbaa !62
  %36 = load ptr, ptr %11, align 8, !tbaa !43
  %37 = load ptr, ptr %13, align 8, !tbaa !44
  %38 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 49
  %39 = load i32, ptr %38, align 8, !tbaa !64
  %40 = tail call ptr %36(ptr noundef %37, i32 noundef %39, i32 noundef 4) #10
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
  %53 = tail call i32 @deflateEnd(ptr noundef %0), !range !69
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
  %80 = load ptr, ptr %79, align 8, !tbaa !110
  %81 = load ptr, ptr %73, align 8, !tbaa !65
  %82 = ptrtoint ptr %80 to i64
  %83 = ptrtoint ptr %81 to i64
  %84 = sub i64 %82, %83
  %85 = getelementptr inbounds i8, ptr %78, i64 %84
  %86 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 4
  store ptr %85, ptr %86, align 8, !tbaa !110
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
  store ptr %96, ptr %97, align 8, !tbaa !140
  %98 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 38
  %99 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 41
  store ptr %98, ptr %99, align 8, !tbaa !141
  %100 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 39
  %101 = getelementptr inbounds %struct.internal_state, ptr %15, i64 0, i32 42
  store ptr %100, ptr %101, align 8, !tbaa !142
  br label %102

102:                                              ; preds = %10, %2, %6, %54, %52
  %103 = phi i32 [ -4, %52 ], [ 0, %54 ], [ -2, %6 ], [ -2, %2 ], [ -4, %10 ]
  ret i32 %103
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define internal i32 @deflate_stored(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !66
  %5 = add i64 %4, -5
  %6 = tail call i64 @llvm.umin.i64(i64 %5, i64 65535)
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %8 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %9 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %10 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %12 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  br label %13

13:                                               ; preds = %136, %2
  %14 = load i32, ptr %7, align 4, !tbaa !89
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  tail call fastcc void @fill_window(ptr noundef %0)
  %17 = load i32, ptr %7, align 4, !tbaa !89
  %18 = or i32 %17, %1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %248, label %20

20:                                               ; preds = %16
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %137, label %22

22:                                               ; preds = %20, %13
  %23 = load i32, ptr %7, align 4, !tbaa !89
  %24 = load i32, ptr %8, align 4, !tbaa !87
  %25 = add i32 %24, %23
  store i32 %25, ptr %8, align 4, !tbaa !87
  store i32 0, ptr %7, align 4, !tbaa !89
  %26 = load i64, ptr %9, align 8, !tbaa !88
  %27 = add i64 %26, %6
  %28 = icmp ne i32 %25, 0
  %29 = zext i32 %25 to i64
  %30 = icmp ugt i64 %27, %29
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %81, label %32

32:                                               ; preds = %22
  %33 = trunc i64 %27 to i32
  %34 = sub i32 %25, %33
  store i32 %34, ptr %7, align 4, !tbaa !89
  store i32 %33, ptr %8, align 4, !tbaa !87
  %35 = icmp sgt i64 %26, -1
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load ptr, ptr %10, align 8, !tbaa !60
  %38 = and i64 %26, 4294967295
  %39 = getelementptr inbounds i8, ptr %37, i64 %38
  br label %40

40:                                               ; preds = %32, %36
  %41 = phi ptr [ %39, %36 ], [ null, %32 ]
  %42 = and i64 %27, 4294967295
  %43 = sub nsw i64 %42, %26
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %41, i64 noundef %43, i32 noundef 0) #10
  %44 = load i32, ptr %8, align 4, !tbaa !87
  %45 = zext i32 %44 to i64
  store i64 %45, ptr %9, align 8, !tbaa !88
  %46 = load ptr, ptr %0, align 8, !tbaa !47
  %47 = getelementptr inbounds %struct.z_stream_s, ptr %46, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %48) #10
  %49 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 5
  %50 = load i32, ptr %49, align 8, !tbaa !109
  %51 = getelementptr inbounds %struct.z_stream_s, ptr %46, i64 0, i32 4
  %52 = load i32, ptr %51, align 8, !tbaa !119
  %53 = tail call i32 @llvm.umin.i32(i32 %50, i32 %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %40
  %56 = getelementptr inbounds %struct.z_stream_s, ptr %46, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !118
  %58 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !110
  %60 = zext i32 %53 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %57, ptr align 1 %59, i64 %60, i1 false)
  %61 = load ptr, ptr %56, align 8, !tbaa !118
  %62 = getelementptr inbounds i8, ptr %61, i64 %60
  store ptr %62, ptr %56, align 8, !tbaa !118
  %63 = load ptr, ptr %58, align 8, !tbaa !110
  %64 = getelementptr inbounds i8, ptr %63, i64 %60
  store ptr %64, ptr %58, align 8, !tbaa !110
  %65 = getelementptr inbounds %struct.z_stream_s, ptr %46, i64 0, i32 5
  %66 = load i64, ptr %65, align 8, !tbaa !130
  %67 = add i64 %66, %60
  store i64 %67, ptr %65, align 8, !tbaa !130
  %68 = load i32, ptr %51, align 8, !tbaa !119
  %69 = sub i32 %68, %53
  store i32 %69, ptr %51, align 8, !tbaa !119
  %70 = load i32, ptr %49, align 8, !tbaa !109
  %71 = sub i32 %70, %53
  store i32 %71, ptr %49, align 8, !tbaa !109
  %72 = icmp eq i32 %70, %53
  br i1 %72, label %73, label %76

73:                                               ; preds = %55
  %74 = getelementptr inbounds %struct.internal_state, ptr %48, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !65
  store ptr %75, ptr %58, align 8, !tbaa !110
  br label %76

76:                                               ; preds = %40, %55, %73
  %77 = load ptr, ptr %0, align 8, !tbaa !47
  %78 = getelementptr inbounds %struct.z_stream_s, ptr %77, i64 0, i32 4
  %79 = load i32, ptr %78, align 8, !tbaa !119
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %248, label %81

81:                                               ; preds = %22, %76
  %82 = load i32, ptr %8, align 4, !tbaa !87
  %83 = load i64, ptr %9, align 8, !tbaa !88
  %84 = trunc i64 %83 to i32
  %85 = sub i32 %82, %84
  %86 = load i32, ptr %11, align 4, !tbaa !54
  %87 = add i32 %86, -262
  %88 = icmp ult i32 %85, %87
  br i1 %88, label %136, label %89

89:                                               ; preds = %81
  %90 = icmp sgt i64 %83, -1
  br i1 %90, label %91, label %95

91:                                               ; preds = %89
  %92 = load ptr, ptr %12, align 8, !tbaa !60
  %93 = and i64 %83, 4294967295
  %94 = getelementptr inbounds i8, ptr %92, i64 %93
  br label %95

95:                                               ; preds = %89, %91
  %96 = phi ptr [ %94, %91 ], [ null, %89 ]
  %97 = zext i32 %82 to i64
  %98 = sub nsw i64 %97, %83
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %96, i64 noundef %98, i32 noundef 0) #10
  %99 = load i32, ptr %8, align 4, !tbaa !87
  %100 = zext i32 %99 to i64
  store i64 %100, ptr %9, align 8, !tbaa !88
  %101 = load ptr, ptr %0, align 8, !tbaa !47
  %102 = getelementptr inbounds %struct.z_stream_s, ptr %101, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %103) #10
  %104 = getelementptr inbounds %struct.internal_state, ptr %103, i64 0, i32 5
  %105 = load i32, ptr %104, align 8, !tbaa !109
  %106 = getelementptr inbounds %struct.z_stream_s, ptr %101, i64 0, i32 4
  %107 = load i32, ptr %106, align 8, !tbaa !119
  %108 = tail call i32 @llvm.umin.i32(i32 %105, i32 %107)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %131, label %110

110:                                              ; preds = %95
  %111 = getelementptr inbounds %struct.z_stream_s, ptr %101, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !118
  %113 = getelementptr inbounds %struct.internal_state, ptr %103, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !110
  %115 = zext i32 %108 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %112, ptr align 1 %114, i64 %115, i1 false)
  %116 = load ptr, ptr %111, align 8, !tbaa !118
  %117 = getelementptr inbounds i8, ptr %116, i64 %115
  store ptr %117, ptr %111, align 8, !tbaa !118
  %118 = load ptr, ptr %113, align 8, !tbaa !110
  %119 = getelementptr inbounds i8, ptr %118, i64 %115
  store ptr %119, ptr %113, align 8, !tbaa !110
  %120 = getelementptr inbounds %struct.z_stream_s, ptr %101, i64 0, i32 5
  %121 = load i64, ptr %120, align 8, !tbaa !130
  %122 = add i64 %121, %115
  store i64 %122, ptr %120, align 8, !tbaa !130
  %123 = load i32, ptr %106, align 8, !tbaa !119
  %124 = sub i32 %123, %108
  store i32 %124, ptr %106, align 8, !tbaa !119
  %125 = load i32, ptr %104, align 8, !tbaa !109
  %126 = sub i32 %125, %108
  store i32 %126, ptr %104, align 8, !tbaa !109
  %127 = icmp eq i32 %125, %108
  br i1 %127, label %128, label %131

128:                                              ; preds = %110
  %129 = getelementptr inbounds %struct.internal_state, ptr %103, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !65
  store ptr %130, ptr %113, align 8, !tbaa !110
  br label %131

131:                                              ; preds = %95, %110, %128
  %132 = load ptr, ptr %0, align 8, !tbaa !47
  %133 = getelementptr inbounds %struct.z_stream_s, ptr %132, i64 0, i32 4
  %134 = load i32, ptr %133, align 8, !tbaa !119
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %248, label %136

136:                                              ; preds = %131, %81
  br label %13, !llvm.loop !143

137:                                              ; preds = %20
  %138 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 0, ptr %138, align 4, !tbaa !90
  %139 = icmp eq i32 %1, 4
  br i1 %139, label %140, label %193

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %142 = load i64, ptr %141, align 8, !tbaa !88
  %143 = icmp sgt i64 %142, -1
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %146 = load ptr, ptr %145, align 8, !tbaa !60
  %147 = and i64 %142, 4294967295
  %148 = getelementptr inbounds i8, ptr %146, i64 %147
  br label %149

149:                                              ; preds = %140, %144
  %150 = phi ptr [ %148, %144 ], [ null, %140 ]
  %151 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %152 = load i32, ptr %151, align 4, !tbaa !87
  %153 = zext i32 %152 to i64
  %154 = sub nsw i64 %153, %142
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %150, i64 noundef %154, i32 noundef 1) #10
  %155 = load i32, ptr %151, align 4, !tbaa !87
  %156 = zext i32 %155 to i64
  store i64 %156, ptr %141, align 8, !tbaa !88
  %157 = load ptr, ptr %0, align 8, !tbaa !47
  %158 = getelementptr inbounds %struct.z_stream_s, ptr %157, i64 0, i32 7
  %159 = load ptr, ptr %158, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %159) #10
  %160 = getelementptr inbounds %struct.internal_state, ptr %159, i64 0, i32 5
  %161 = load i32, ptr %160, align 8, !tbaa !109
  %162 = getelementptr inbounds %struct.z_stream_s, ptr %157, i64 0, i32 4
  %163 = load i32, ptr %162, align 8, !tbaa !119
  %164 = tail call i32 @llvm.umin.i32(i32 %161, i32 %163)
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %187, label %166

166:                                              ; preds = %149
  %167 = getelementptr inbounds %struct.z_stream_s, ptr %157, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !118
  %169 = getelementptr inbounds %struct.internal_state, ptr %159, i64 0, i32 4
  %170 = load ptr, ptr %169, align 8, !tbaa !110
  %171 = zext i32 %164 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %168, ptr align 1 %170, i64 %171, i1 false)
  %172 = load ptr, ptr %167, align 8, !tbaa !118
  %173 = getelementptr inbounds i8, ptr %172, i64 %171
  store ptr %173, ptr %167, align 8, !tbaa !118
  %174 = load ptr, ptr %169, align 8, !tbaa !110
  %175 = getelementptr inbounds i8, ptr %174, i64 %171
  store ptr %175, ptr %169, align 8, !tbaa !110
  %176 = getelementptr inbounds %struct.z_stream_s, ptr %157, i64 0, i32 5
  %177 = load i64, ptr %176, align 8, !tbaa !130
  %178 = add i64 %177, %171
  store i64 %178, ptr %176, align 8, !tbaa !130
  %179 = load i32, ptr %162, align 8, !tbaa !119
  %180 = sub i32 %179, %164
  store i32 %180, ptr %162, align 8, !tbaa !119
  %181 = load i32, ptr %160, align 8, !tbaa !109
  %182 = sub i32 %181, %164
  store i32 %182, ptr %160, align 8, !tbaa !109
  %183 = icmp eq i32 %181, %164
  br i1 %183, label %184, label %187

184:                                              ; preds = %166
  %185 = getelementptr inbounds %struct.internal_state, ptr %159, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !65
  store ptr %186, ptr %169, align 8, !tbaa !110
  br label %187

187:                                              ; preds = %149, %166, %184
  %188 = load ptr, ptr %0, align 8, !tbaa !47
  %189 = getelementptr inbounds %struct.z_stream_s, ptr %188, i64 0, i32 4
  %190 = load i32, ptr %189, align 8, !tbaa !119
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %191, i32 2, i32 3
  br label %248

193:                                              ; preds = %137
  %194 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %195 = load i32, ptr %194, align 4, !tbaa !87
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %198 = load i64, ptr %197, align 8, !tbaa !88
  %199 = icmp slt i64 %198, %196
  br i1 %199, label %200, label %247

200:                                              ; preds = %193
  %201 = icmp sgt i64 %198, -1
  br i1 %201, label %202, label %207

202:                                              ; preds = %200
  %203 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %204 = load ptr, ptr %203, align 8, !tbaa !60
  %205 = and i64 %198, 4294967295
  %206 = getelementptr inbounds i8, ptr %204, i64 %205
  br label %207

207:                                              ; preds = %200, %202
  %208 = phi ptr [ %206, %202 ], [ null, %200 ]
  %209 = sub nsw i64 %196, %198
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %208, i64 noundef %209, i32 noundef 0) #10
  %210 = load i32, ptr %194, align 4, !tbaa !87
  %211 = zext i32 %210 to i64
  store i64 %211, ptr %197, align 8, !tbaa !88
  %212 = load ptr, ptr %0, align 8, !tbaa !47
  %213 = getelementptr inbounds %struct.z_stream_s, ptr %212, i64 0, i32 7
  %214 = load ptr, ptr %213, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %214) #10
  %215 = getelementptr inbounds %struct.internal_state, ptr %214, i64 0, i32 5
  %216 = load i32, ptr %215, align 8, !tbaa !109
  %217 = getelementptr inbounds %struct.z_stream_s, ptr %212, i64 0, i32 4
  %218 = load i32, ptr %217, align 8, !tbaa !119
  %219 = tail call i32 @llvm.umin.i32(i32 %216, i32 %218)
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %242, label %221

221:                                              ; preds = %207
  %222 = getelementptr inbounds %struct.z_stream_s, ptr %212, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !118
  %224 = getelementptr inbounds %struct.internal_state, ptr %214, i64 0, i32 4
  %225 = load ptr, ptr %224, align 8, !tbaa !110
  %226 = zext i32 %219 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %223, ptr align 1 %225, i64 %226, i1 false)
  %227 = load ptr, ptr %222, align 8, !tbaa !118
  %228 = getelementptr inbounds i8, ptr %227, i64 %226
  store ptr %228, ptr %222, align 8, !tbaa !118
  %229 = load ptr, ptr %224, align 8, !tbaa !110
  %230 = getelementptr inbounds i8, ptr %229, i64 %226
  store ptr %230, ptr %224, align 8, !tbaa !110
  %231 = getelementptr inbounds %struct.z_stream_s, ptr %212, i64 0, i32 5
  %232 = load i64, ptr %231, align 8, !tbaa !130
  %233 = add i64 %232, %226
  store i64 %233, ptr %231, align 8, !tbaa !130
  %234 = load i32, ptr %217, align 8, !tbaa !119
  %235 = sub i32 %234, %219
  store i32 %235, ptr %217, align 8, !tbaa !119
  %236 = load i32, ptr %215, align 8, !tbaa !109
  %237 = sub i32 %236, %219
  store i32 %237, ptr %215, align 8, !tbaa !109
  %238 = icmp eq i32 %236, %219
  br i1 %238, label %239, label %242

239:                                              ; preds = %221
  %240 = getelementptr inbounds %struct.internal_state, ptr %214, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !65
  store ptr %241, ptr %224, align 8, !tbaa !110
  br label %242

242:                                              ; preds = %207, %221, %239
  %243 = load ptr, ptr %0, align 8, !tbaa !47
  %244 = getelementptr inbounds %struct.z_stream_s, ptr %243, i64 0, i32 4
  %245 = load i32, ptr %244, align 8, !tbaa !119
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %242, %193
  br label %248

248:                                              ; preds = %131, %76, %16, %242, %187, %247
  %249 = phi i32 [ 1, %247 ], [ %192, %187 ], [ 0, %242 ], [ 0, %16 ], [ 0, %76 ], [ 0, %131 ]
  ret i32 %249
}

; Function Attrs: nounwind uwtable
define internal i32 @deflate_fast(ptr noundef %0, i32 noundef %1) #0 {
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
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 49
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 49
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 32
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %32 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %36 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %37 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %38 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %39 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %40 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %42 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  br label %44

44:                                               ; preds = %269, %2
  %45 = load i32, ptr %3, align 4, !tbaa !89
  %46 = icmp ult i32 %45, 262
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  tail call fastcc void @fill_window(ptr noundef %0)
  %48 = load i32, ptr %3, align 4, !tbaa !89
  %49 = icmp ult i32 %48, 262
  %50 = and i1 %4, %49
  br i1 %50, label %382, label %51

51:                                               ; preds = %47
  %52 = icmp eq i32 %48, 0
  br i1 %52, label %270, label %53

53:                                               ; preds = %51, %44
  %54 = load i32, ptr %3, align 4, !tbaa !89
  %55 = icmp ugt i32 %54, 2
  br i1 %55, label %56, label %81

56:                                               ; preds = %53
  %57 = load i32, ptr %5, align 8, !tbaa !94
  %58 = load i32, ptr %6, align 8, !tbaa !59
  %59 = shl i32 %57, %58
  %60 = load ptr, ptr %7, align 8, !tbaa !60
  %61 = load i32, ptr %8, align 4, !tbaa !87
  %62 = add i32 %61, 2
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %60, i64 %63
  %65 = load i8, ptr %64, align 1, !tbaa !35
  %66 = zext i8 %65 to i32
  %67 = xor i32 %59, %66
  %68 = load i32, ptr %9, align 4, !tbaa !58
  %69 = and i32 %67, %68
  store i32 %69, ptr %5, align 8, !tbaa !94
  %70 = load ptr, ptr %10, align 8, !tbaa !62
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71
  %73 = load i16, ptr %72, align 2, !tbaa !77
  %74 = load ptr, ptr %11, align 8, !tbaa !61
  %75 = load i32, ptr %12, align 4, !tbaa !55
  %76 = and i32 %75, %61
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i16, ptr %74, i64 %77
  store i16 %73, ptr %78, align 2, !tbaa !77
  %79 = zext i16 %73 to i32
  %80 = trunc i32 %61 to i16
  store i16 %80, ptr %72, align 2, !tbaa !77
  br label %81

81:                                               ; preds = %56, %53
  %82 = phi i32 [ %79, %56 ], [ 0, %53 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = load i32, ptr %13, align 4, !tbaa !87
  %86 = sub i32 %85, %82
  %87 = load i32, ptr %14, align 4, !tbaa !54
  %88 = add i32 %87, -262
  %89 = icmp ugt i32 %86, %88
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = tail call fastcc i32 @longest_match(ptr noundef %0, i32 noundef %82)
  store i32 %91, ptr %15, align 8, !tbaa !92
  br label %92

92:                                               ; preds = %90, %84, %81
  %93 = load i32, ptr %16, align 8, !tbaa !92
  %94 = icmp ugt i32 %93, 2
  br i1 %94, label %95, label %193

95:                                               ; preds = %92
  %96 = trunc i32 %93 to i8
  %97 = add i8 %96, -3
  %98 = load i32, ptr %23, align 4, !tbaa !87
  %99 = load i32, ptr %24, align 8, !tbaa !102
  %100 = sub i32 %98, %99
  %101 = trunc i32 %100 to i16
  %102 = load ptr, ptr %25, align 8, !tbaa !70
  %103 = load i32, ptr %26, align 4, !tbaa !134
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i16, ptr %102, i64 %104
  store i16 %101, ptr %105, align 2, !tbaa !77
  %106 = load ptr, ptr %27, align 8, !tbaa !71
  %107 = add i32 %103, 1
  store i32 %107, ptr %26, align 4, !tbaa !134
  %108 = getelementptr inbounds i8, ptr %106, i64 %104
  store i8 %97, ptr %108, align 1, !tbaa !35
  %109 = add i16 %101, -1
  %110 = zext i8 %97 to i64
  %111 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !35
  %113 = zext i8 %112 to i64
  %114 = add nuw nsw i64 %113, 257
  %115 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %114
  %116 = load i16, ptr %115, align 4, !tbaa !35
  %117 = add i16 %116, 1
  store i16 %117, ptr %115, align 4, !tbaa !35
  %118 = icmp ult i16 %109, 256
  %119 = lshr i16 %109, 7
  %120 = add nuw nsw i16 %119, 256
  %121 = select i1 %118, i16 %109, i16 %120
  %122 = zext i16 %121 to i64
  %123 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !35
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %125
  %127 = load i16, ptr %126, align 4, !tbaa !35
  %128 = add i16 %127, 1
  store i16 %128, ptr %126, align 4, !tbaa !35
  %129 = load i32, ptr %26, align 4, !tbaa !134
  %130 = load i32, ptr %28, align 8, !tbaa !64
  %131 = add i32 %130, -1
  %132 = icmp eq i32 %129, %131
  %133 = load i32, ptr %16, align 8, !tbaa !92
  %134 = load i32, ptr %3, align 4, !tbaa !89
  %135 = sub i32 %134, %133
  store i32 %135, ptr %3, align 4, !tbaa !89
  %136 = load i32, ptr %29, align 8, !tbaa !80
  %137 = icmp ule i32 %133, %136
  %138 = icmp ugt i32 %135, 2
  %139 = select i1 %137, i1 %138, i1 false
  br i1 %139, label %140, label %175

140:                                              ; preds = %95
  %141 = add i32 %133, -1
  store i32 %141, ptr %16, align 8, !tbaa !92
  %142 = load i32, ptr %35, align 8, !tbaa !59
  %143 = load ptr, ptr %36, align 8, !tbaa !60
  %144 = load i32, ptr %37, align 4, !tbaa !58
  %145 = load ptr, ptr %38, align 8, !tbaa !62
  %146 = load ptr, ptr %39, align 8, !tbaa !61
  %147 = load i32, ptr %40, align 4, !tbaa !55
  %148 = load i32, ptr %23, align 4, !tbaa !87
  %149 = load i32, ptr %34, align 8, !tbaa !94
  %150 = load i32, ptr %16, align 8, !tbaa !92
  br label %151

151:                                              ; preds = %151, %140
  %152 = phi i32 [ %171, %151 ], [ %150, %140 ]
  %153 = phi i32 [ %163, %151 ], [ %149, %140 ]
  %154 = phi i32 [ %155, %151 ], [ %148, %140 ]
  %155 = add i32 %154, 1
  store i32 %155, ptr %23, align 4, !tbaa !87
  %156 = shl i32 %153, %142
  %157 = add i32 %154, 3
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i8, ptr %143, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !35
  %161 = zext i8 %160 to i32
  %162 = xor i32 %156, %161
  %163 = and i32 %162, %144
  store i32 %163, ptr %34, align 8, !tbaa !94
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i16, ptr %145, i64 %164
  %166 = load i16, ptr %165, align 2, !tbaa !77
  %167 = and i32 %147, %155
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i16, ptr %146, i64 %168
  store i16 %166, ptr %169, align 2, !tbaa !77
  %170 = trunc i32 %155 to i16
  store i16 %170, ptr %165, align 2, !tbaa !77
  %171 = add i32 %152, -1
  store i32 %171, ptr %16, align 8, !tbaa !92
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %151, !llvm.loop !144

173:                                              ; preds = %151
  %174 = add i32 %154, 2
  store i32 %174, ptr %23, align 4, !tbaa !87
  br label %218

175:                                              ; preds = %95
  %176 = load i32, ptr %23, align 4, !tbaa !87
  %177 = add i32 %176, %133
  store i32 %177, ptr %23, align 4, !tbaa !87
  store i32 0, ptr %16, align 8, !tbaa !92
  %178 = load ptr, ptr %30, align 8, !tbaa !60
  %179 = zext i32 %177 to i64
  %180 = getelementptr inbounds i8, ptr %178, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !35
  %182 = zext i8 %181 to i32
  store i32 %182, ptr %31, align 8, !tbaa !94
  %183 = load i32, ptr %32, align 8, !tbaa !59
  %184 = shl i32 %182, %183
  %185 = add i32 %177, 1
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i8, ptr %178, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !35
  %189 = zext i8 %188 to i32
  %190 = xor i32 %184, %189
  %191 = load i32, ptr %33, align 4, !tbaa !58
  %192 = and i32 %190, %191
  store i32 %192, ptr %31, align 8, !tbaa !94
  br label %218

193:                                              ; preds = %92
  %194 = load ptr, ptr %17, align 8, !tbaa !60
  %195 = load i32, ptr %18, align 4, !tbaa !87
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %194, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !35
  %199 = load ptr, ptr %19, align 8, !tbaa !70
  %200 = load i32, ptr %20, align 4, !tbaa !134
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i16, ptr %199, i64 %201
  store i16 0, ptr %202, align 2, !tbaa !77
  %203 = load ptr, ptr %21, align 8, !tbaa !71
  %204 = add i32 %200, 1
  store i32 %204, ptr %20, align 4, !tbaa !134
  %205 = getelementptr inbounds i8, ptr %203, i64 %201
  store i8 %198, ptr %205, align 1, !tbaa !35
  %206 = zext i8 %198 to i64
  %207 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %206
  %208 = load i16, ptr %207, align 4, !tbaa !35
  %209 = add i16 %208, 1
  store i16 %209, ptr %207, align 4, !tbaa !35
  %210 = load i32, ptr %20, align 4, !tbaa !134
  %211 = load i32, ptr %22, align 8, !tbaa !64
  %212 = add i32 %211, -1
  %213 = icmp eq i32 %210, %212
  %214 = load i32, ptr %3, align 4, !tbaa !89
  %215 = add i32 %214, -1
  store i32 %215, ptr %3, align 4, !tbaa !89
  %216 = load i32, ptr %18, align 4, !tbaa !87
  %217 = add i32 %216, 1
  store i32 %217, ptr %18, align 4, !tbaa !87
  br label %218

218:                                              ; preds = %173, %175, %193
  %219 = phi i1 [ %132, %173 ], [ %132, %175 ], [ %213, %193 ]
  br i1 %219, label %220, label %269

220:                                              ; preds = %218
  %221 = load i64, ptr %41, align 8, !tbaa !88
  %222 = icmp sgt i64 %221, -1
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = load ptr, ptr %42, align 8, !tbaa !60
  %225 = and i64 %221, 4294967295
  %226 = getelementptr inbounds i8, ptr %224, i64 %225
  br label %227

227:                                              ; preds = %220, %223
  %228 = phi ptr [ %226, %223 ], [ null, %220 ]
  %229 = load i32, ptr %43, align 4, !tbaa !87
  %230 = zext i32 %229 to i64
  %231 = sub nsw i64 %230, %221
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %228, i64 noundef %231, i32 noundef 0) #10
  %232 = load i32, ptr %43, align 4, !tbaa !87
  %233 = zext i32 %232 to i64
  store i64 %233, ptr %41, align 8, !tbaa !88
  %234 = load ptr, ptr %0, align 8, !tbaa !47
  %235 = getelementptr inbounds %struct.z_stream_s, ptr %234, i64 0, i32 7
  %236 = load ptr, ptr %235, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %236) #10
  %237 = getelementptr inbounds %struct.internal_state, ptr %236, i64 0, i32 5
  %238 = load i32, ptr %237, align 8, !tbaa !109
  %239 = getelementptr inbounds %struct.z_stream_s, ptr %234, i64 0, i32 4
  %240 = load i32, ptr %239, align 8, !tbaa !119
  %241 = tail call i32 @llvm.umin.i32(i32 %238, i32 %240)
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %264, label %243

243:                                              ; preds = %227
  %244 = getelementptr inbounds %struct.z_stream_s, ptr %234, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !118
  %246 = getelementptr inbounds %struct.internal_state, ptr %236, i64 0, i32 4
  %247 = load ptr, ptr %246, align 8, !tbaa !110
  %248 = zext i32 %241 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %245, ptr align 1 %247, i64 %248, i1 false)
  %249 = load ptr, ptr %244, align 8, !tbaa !118
  %250 = getelementptr inbounds i8, ptr %249, i64 %248
  store ptr %250, ptr %244, align 8, !tbaa !118
  %251 = load ptr, ptr %246, align 8, !tbaa !110
  %252 = getelementptr inbounds i8, ptr %251, i64 %248
  store ptr %252, ptr %246, align 8, !tbaa !110
  %253 = getelementptr inbounds %struct.z_stream_s, ptr %234, i64 0, i32 5
  %254 = load i64, ptr %253, align 8, !tbaa !130
  %255 = add i64 %254, %248
  store i64 %255, ptr %253, align 8, !tbaa !130
  %256 = load i32, ptr %239, align 8, !tbaa !119
  %257 = sub i32 %256, %241
  store i32 %257, ptr %239, align 8, !tbaa !119
  %258 = load i32, ptr %237, align 8, !tbaa !109
  %259 = sub i32 %258, %241
  store i32 %259, ptr %237, align 8, !tbaa !109
  %260 = icmp eq i32 %258, %241
  br i1 %260, label %261, label %264

261:                                              ; preds = %243
  %262 = getelementptr inbounds %struct.internal_state, ptr %236, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !65
  store ptr %263, ptr %246, align 8, !tbaa !110
  br label %264

264:                                              ; preds = %227, %243, %261
  %265 = load ptr, ptr %0, align 8, !tbaa !47
  %266 = getelementptr inbounds %struct.z_stream_s, ptr %265, i64 0, i32 4
  %267 = load i32, ptr %266, align 8, !tbaa !119
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %382, label %269

269:                                              ; preds = %264, %218
  br label %44, !llvm.loop !145

270:                                              ; preds = %51
  %271 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %272 = load i32, ptr %271, align 4, !tbaa !87
  %273 = tail call i32 @llvm.umin.i32(i32 %272, i32 2)
  %274 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 %273, ptr %274, align 4, !tbaa !90
  %275 = icmp eq i32 %1, 4
  br i1 %275, label %276, label %327

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %278 = load i64, ptr %277, align 8, !tbaa !88
  %279 = icmp sgt i64 %278, -1
  br i1 %279, label %280, label %285

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %282 = load ptr, ptr %281, align 8, !tbaa !60
  %283 = and i64 %278, 4294967295
  %284 = getelementptr inbounds i8, ptr %282, i64 %283
  br label %285

285:                                              ; preds = %276, %280
  %286 = phi ptr [ %284, %280 ], [ null, %276 ]
  %287 = zext i32 %272 to i64
  %288 = sub nsw i64 %287, %278
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %286, i64 noundef %288, i32 noundef 1) #10
  %289 = load i32, ptr %271, align 4, !tbaa !87
  %290 = zext i32 %289 to i64
  store i64 %290, ptr %277, align 8, !tbaa !88
  %291 = load ptr, ptr %0, align 8, !tbaa !47
  %292 = getelementptr inbounds %struct.z_stream_s, ptr %291, i64 0, i32 7
  %293 = load ptr, ptr %292, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %293) #10
  %294 = getelementptr inbounds %struct.internal_state, ptr %293, i64 0, i32 5
  %295 = load i32, ptr %294, align 8, !tbaa !109
  %296 = getelementptr inbounds %struct.z_stream_s, ptr %291, i64 0, i32 4
  %297 = load i32, ptr %296, align 8, !tbaa !119
  %298 = tail call i32 @llvm.umin.i32(i32 %295, i32 %297)
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %321, label %300

300:                                              ; preds = %285
  %301 = getelementptr inbounds %struct.z_stream_s, ptr %291, i64 0, i32 3
  %302 = load ptr, ptr %301, align 8, !tbaa !118
  %303 = getelementptr inbounds %struct.internal_state, ptr %293, i64 0, i32 4
  %304 = load ptr, ptr %303, align 8, !tbaa !110
  %305 = zext i32 %298 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %302, ptr align 1 %304, i64 %305, i1 false)
  %306 = load ptr, ptr %301, align 8, !tbaa !118
  %307 = getelementptr inbounds i8, ptr %306, i64 %305
  store ptr %307, ptr %301, align 8, !tbaa !118
  %308 = load ptr, ptr %303, align 8, !tbaa !110
  %309 = getelementptr inbounds i8, ptr %308, i64 %305
  store ptr %309, ptr %303, align 8, !tbaa !110
  %310 = getelementptr inbounds %struct.z_stream_s, ptr %291, i64 0, i32 5
  %311 = load i64, ptr %310, align 8, !tbaa !130
  %312 = add i64 %311, %305
  store i64 %312, ptr %310, align 8, !tbaa !130
  %313 = load i32, ptr %296, align 8, !tbaa !119
  %314 = sub i32 %313, %298
  store i32 %314, ptr %296, align 8, !tbaa !119
  %315 = load i32, ptr %294, align 8, !tbaa !109
  %316 = sub i32 %315, %298
  store i32 %316, ptr %294, align 8, !tbaa !109
  %317 = icmp eq i32 %315, %298
  br i1 %317, label %318, label %321

318:                                              ; preds = %300
  %319 = getelementptr inbounds %struct.internal_state, ptr %293, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !65
  store ptr %320, ptr %303, align 8, !tbaa !110
  br label %321

321:                                              ; preds = %285, %300, %318
  %322 = load ptr, ptr %0, align 8, !tbaa !47
  %323 = getelementptr inbounds %struct.z_stream_s, ptr %322, i64 0, i32 4
  %324 = load i32, ptr %323, align 8, !tbaa !119
  %325 = icmp eq i32 %324, 0
  %326 = select i1 %325, i32 2, i32 3
  br label %382

327:                                              ; preds = %270
  %328 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %329 = load i32, ptr %328, align 4, !tbaa !134
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %381, label %331

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %333 = load i64, ptr %332, align 8, !tbaa !88
  %334 = icmp sgt i64 %333, -1
  br i1 %334, label %335, label %340

335:                                              ; preds = %331
  %336 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %337 = load ptr, ptr %336, align 8, !tbaa !60
  %338 = and i64 %333, 4294967295
  %339 = getelementptr inbounds i8, ptr %337, i64 %338
  br label %340

340:                                              ; preds = %331, %335
  %341 = phi ptr [ %339, %335 ], [ null, %331 ]
  %342 = zext i32 %272 to i64
  %343 = sub nsw i64 %342, %333
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %341, i64 noundef %343, i32 noundef 0) #10
  %344 = load i32, ptr %271, align 4, !tbaa !87
  %345 = zext i32 %344 to i64
  store i64 %345, ptr %332, align 8, !tbaa !88
  %346 = load ptr, ptr %0, align 8, !tbaa !47
  %347 = getelementptr inbounds %struct.z_stream_s, ptr %346, i64 0, i32 7
  %348 = load ptr, ptr %347, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %348) #10
  %349 = getelementptr inbounds %struct.internal_state, ptr %348, i64 0, i32 5
  %350 = load i32, ptr %349, align 8, !tbaa !109
  %351 = getelementptr inbounds %struct.z_stream_s, ptr %346, i64 0, i32 4
  %352 = load i32, ptr %351, align 8, !tbaa !119
  %353 = tail call i32 @llvm.umin.i32(i32 %350, i32 %352)
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %376, label %355

355:                                              ; preds = %340
  %356 = getelementptr inbounds %struct.z_stream_s, ptr %346, i64 0, i32 3
  %357 = load ptr, ptr %356, align 8, !tbaa !118
  %358 = getelementptr inbounds %struct.internal_state, ptr %348, i64 0, i32 4
  %359 = load ptr, ptr %358, align 8, !tbaa !110
  %360 = zext i32 %353 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %357, ptr align 1 %359, i64 %360, i1 false)
  %361 = load ptr, ptr %356, align 8, !tbaa !118
  %362 = getelementptr inbounds i8, ptr %361, i64 %360
  store ptr %362, ptr %356, align 8, !tbaa !118
  %363 = load ptr, ptr %358, align 8, !tbaa !110
  %364 = getelementptr inbounds i8, ptr %363, i64 %360
  store ptr %364, ptr %358, align 8, !tbaa !110
  %365 = getelementptr inbounds %struct.z_stream_s, ptr %346, i64 0, i32 5
  %366 = load i64, ptr %365, align 8, !tbaa !130
  %367 = add i64 %366, %360
  store i64 %367, ptr %365, align 8, !tbaa !130
  %368 = load i32, ptr %351, align 8, !tbaa !119
  %369 = sub i32 %368, %353
  store i32 %369, ptr %351, align 8, !tbaa !119
  %370 = load i32, ptr %349, align 8, !tbaa !109
  %371 = sub i32 %370, %353
  store i32 %371, ptr %349, align 8, !tbaa !109
  %372 = icmp eq i32 %370, %353
  br i1 %372, label %373, label %376

373:                                              ; preds = %355
  %374 = getelementptr inbounds %struct.internal_state, ptr %348, i64 0, i32 2
  %375 = load ptr, ptr %374, align 8, !tbaa !65
  store ptr %375, ptr %358, align 8, !tbaa !110
  br label %376

376:                                              ; preds = %340, %355, %373
  %377 = load ptr, ptr %0, align 8, !tbaa !47
  %378 = getelementptr inbounds %struct.z_stream_s, ptr %377, i64 0, i32 4
  %379 = load i32, ptr %378, align 8, !tbaa !119
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %382, label %381

381:                                              ; preds = %376, %327
  br label %382

382:                                              ; preds = %264, %47, %376, %321, %381
  %383 = phi i32 [ 1, %381 ], [ %326, %321 ], [ 0, %376 ], [ 0, %47 ], [ 0, %264 ]
  ret i32 %383
}

; Function Attrs: nounwind uwtable
define internal i32 @deflate_slow(ptr noundef %0, i32 noundef %1) #0 {
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
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 24
  %14 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 30
  %15 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 28
  %16 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 25
  %17 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 32
  %18 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %19 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 11
  %20 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 34
  %21 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %22 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %23 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %24 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %25 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 49
  %26 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 18
  %27 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 22
  %28 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %29 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 21
  %30 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 17
  %31 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 16
  %32 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 13
  %33 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 26
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %35 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %36 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 26
  %37 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %38 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %39 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %40 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %41 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %42 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 49
  %43 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %44 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  br label %45

45:                                               ; preds = %197, %2
  %46 = load i32, ptr %3, align 4, !tbaa !89
  %47 = icmp ult i32 %46, 262
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  tail call fastcc void @fill_window(ptr noundef %0)
  %49 = load i32, ptr %3, align 4, !tbaa !89
  %50 = icmp ult i32 %49, 262
  %51 = and i1 %4, %50
  br i1 %51, label %468, label %52

52:                                               ; preds = %48
  %53 = icmp eq i32 %49, 0
  br i1 %53, label %329, label %54

54:                                               ; preds = %52, %45
  %55 = load i32, ptr %3, align 4, !tbaa !89
  %56 = icmp ugt i32 %55, 2
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load i32, ptr %5, align 8, !tbaa !94
  %59 = load i32, ptr %6, align 8, !tbaa !59
  %60 = shl i32 %58, %59
  %61 = load ptr, ptr %7, align 8, !tbaa !60
  %62 = load i32, ptr %8, align 4, !tbaa !87
  %63 = add i32 %62, 2
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %61, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !35
  %67 = zext i8 %66 to i32
  %68 = xor i32 %60, %67
  %69 = load i32, ptr %9, align 4, !tbaa !58
  %70 = and i32 %68, %69
  store i32 %70, ptr %5, align 8, !tbaa !94
  %71 = load ptr, ptr %10, align 8, !tbaa !62
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !77
  %75 = load ptr, ptr %11, align 8, !tbaa !61
  %76 = load i32, ptr %12, align 4, !tbaa !55
  %77 = and i32 %76, %62
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i16, ptr %75, i64 %78
  store i16 %74, ptr %79, align 2, !tbaa !77
  %80 = zext i16 %74 to i32
  %81 = trunc i32 %62 to i16
  store i16 %81, ptr %73, align 2, !tbaa !77
  br label %82

82:                                               ; preds = %57, %54
  %83 = phi i32 [ %80, %57 ], [ 0, %54 ]
  %84 = load i32, ptr %13, align 8, !tbaa !92
  store i32 %84, ptr %14, align 8, !tbaa !91
  %85 = load i32, ptr %15, align 8, !tbaa !102
  store i32 %85, ptr %16, align 4, !tbaa !146
  store i32 2, ptr %13, align 8, !tbaa !92
  %86 = icmp eq i32 %83, 0
  br i1 %86, label %110, label %87

87:                                               ; preds = %82
  %88 = load i32, ptr %17, align 8, !tbaa !80
  %89 = icmp ult i32 %84, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %87
  %91 = load i32, ptr %18, align 4, !tbaa !87
  %92 = sub i32 %91, %83
  %93 = load i32, ptr %19, align 4, !tbaa !54
  %94 = add i32 %93, -262
  %95 = icmp ugt i32 %92, %94
  br i1 %95, label %110, label %96

96:                                               ; preds = %90
  %97 = tail call fastcc i32 @longest_match(ptr noundef %0, i32 noundef %83)
  store i32 %97, ptr %13, align 8, !tbaa !92
  %98 = icmp ult i32 %97, 6
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load i32, ptr %20, align 8, !tbaa !73
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %109, label %102

102:                                              ; preds = %99
  %103 = icmp eq i32 %97, 3
  br i1 %103, label %104, label %110

104:                                              ; preds = %102
  %105 = load i32, ptr %18, align 4, !tbaa !87
  %106 = load i32, ptr %15, align 8, !tbaa !102
  %107 = sub i32 %105, %106
  %108 = icmp ugt i32 %107, 4096
  br i1 %108, label %109, label %110

109:                                              ; preds = %104, %99
  store i32 2, ptr %13, align 8, !tbaa !92
  br label %110

110:                                              ; preds = %96, %102, %104, %109, %90, %87, %82
  %111 = load i32, ptr %14, align 8, !tbaa !91
  %112 = icmp ugt i32 %111, 2
  br i1 %112, label %113, label %246

113:                                              ; preds = %110
  %114 = load i32, ptr %13, align 8, !tbaa !92
  %115 = icmp ugt i32 %114, %111
  br i1 %115, label %246, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr %21, align 4, !tbaa !87
  %118 = load i32, ptr %3, align 4, !tbaa !89
  %119 = add i32 %117, -3
  %120 = add i32 %119, %118
  %121 = trunc i32 %111 to i8
  %122 = add i8 %121, -3
  %123 = load i32, ptr %16, align 4, !tbaa !146
  %124 = xor i32 %123, -1
  %125 = add i32 %117, %124
  %126 = trunc i32 %125 to i16
  %127 = load ptr, ptr %22, align 8, !tbaa !70
  %128 = load i32, ptr %23, align 4, !tbaa !134
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i16, ptr %127, i64 %129
  store i16 %126, ptr %130, align 2, !tbaa !77
  %131 = load ptr, ptr %24, align 8, !tbaa !71
  %132 = add i32 %128, 1
  store i32 %132, ptr %23, align 4, !tbaa !134
  %133 = getelementptr inbounds i8, ptr %131, i64 %129
  store i8 %122, ptr %133, align 1, !tbaa !35
  %134 = add i16 %126, -1
  %135 = zext i8 %122 to i64
  %136 = getelementptr inbounds [0 x i8], ptr @_length_code, i64 0, i64 %135
  %137 = load i8, ptr %136, align 1, !tbaa !35
  %138 = zext i8 %137 to i64
  %139 = add nuw nsw i64 %138, 257
  %140 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %139
  %141 = load i16, ptr %140, align 4, !tbaa !35
  %142 = add i16 %141, 1
  store i16 %142, ptr %140, align 4, !tbaa !35
  %143 = icmp ult i16 %134, 256
  %144 = lshr i16 %134, 7
  %145 = add nuw nsw i16 %144, 256
  %146 = select i1 %143, i16 %134, i16 %145
  %147 = zext i16 %146 to i64
  %148 = getelementptr inbounds [0 x i8], ptr @_dist_code, i64 0, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !35
  %150 = zext i8 %149 to i64
  %151 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 38, i64 %150
  %152 = load i16, ptr %151, align 4, !tbaa !35
  %153 = add i16 %152, 1
  store i16 %153, ptr %151, align 4, !tbaa !35
  %154 = load i32, ptr %23, align 4, !tbaa !134
  %155 = load i32, ptr %25, align 8, !tbaa !64
  %156 = add i32 %155, -1
  %157 = load i32, ptr %14, align 8, !tbaa !91
  %158 = load i32, ptr %3, align 4, !tbaa !89
  %159 = sub i32 %158, %157
  %160 = add i32 %159, 1
  store i32 %160, ptr %3, align 4, !tbaa !89
  %161 = add i32 %157, -2
  store i32 %161, ptr %14, align 8, !tbaa !91
  %162 = load i32, ptr %21, align 4, !tbaa !87
  br label %163

163:                                              ; preds = %191, %116
  %164 = phi i32 [ %192, %191 ], [ %161, %116 ]
  %165 = phi i32 [ %166, %191 ], [ %162, %116 ]
  %166 = add i32 %165, 1
  store i32 %166, ptr %21, align 4, !tbaa !87
  %167 = icmp ugt i32 %166, %120
  br i1 %167, label %191, label %168

168:                                              ; preds = %163
  %169 = load i32, ptr %26, align 8, !tbaa !94
  %170 = load i32, ptr %27, align 8, !tbaa !59
  %171 = shl i32 %169, %170
  %172 = load ptr, ptr %28, align 8, !tbaa !60
  %173 = add i32 %165, 3
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i8, ptr %172, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !35
  %177 = zext i8 %176 to i32
  %178 = xor i32 %171, %177
  %179 = load i32, ptr %29, align 4, !tbaa !58
  %180 = and i32 %178, %179
  store i32 %180, ptr %26, align 8, !tbaa !94
  %181 = load ptr, ptr %30, align 8, !tbaa !62
  %182 = zext i32 %180 to i64
  %183 = getelementptr inbounds i16, ptr %181, i64 %182
  %184 = load i16, ptr %183, align 2, !tbaa !77
  %185 = load ptr, ptr %31, align 8, !tbaa !61
  %186 = load i32, ptr %32, align 4, !tbaa !55
  %187 = and i32 %186, %166
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i16, ptr %185, i64 %188
  store i16 %184, ptr %189, align 2, !tbaa !77
  %190 = trunc i32 %166 to i16
  store i16 %190, ptr %183, align 2, !tbaa !77
  br label %191

191:                                              ; preds = %163, %168
  %192 = add i32 %164, -1
  store i32 %192, ptr %14, align 8, !tbaa !91
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %163, !llvm.loop !147

194:                                              ; preds = %191
  %195 = icmp eq i32 %154, %156
  store i32 0, ptr %33, align 8, !tbaa !93
  store i32 2, ptr %13, align 8, !tbaa !92
  %196 = add i32 %165, 2
  store i32 %196, ptr %21, align 4, !tbaa !87
  br i1 %195, label %198, label %197

197:                                              ; preds = %194, %241, %324, %315
  br label %45, !llvm.loop !148

198:                                              ; preds = %194
  %199 = load i64, ptr %34, align 8, !tbaa !88
  %200 = icmp sgt i64 %199, -1
  br i1 %200, label %201, label %205

201:                                              ; preds = %198
  %202 = load ptr, ptr %35, align 8, !tbaa !60
  %203 = and i64 %199, 4294967295
  %204 = getelementptr inbounds i8, ptr %202, i64 %203
  br label %205

205:                                              ; preds = %198, %201
  %206 = phi ptr [ %204, %201 ], [ null, %198 ]
  %207 = zext i32 %196 to i64
  %208 = sub nsw i64 %207, %199
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %206, i64 noundef %208, i32 noundef 0) #10
  %209 = load i32, ptr %21, align 4, !tbaa !87
  %210 = zext i32 %209 to i64
  store i64 %210, ptr %34, align 8, !tbaa !88
  %211 = load ptr, ptr %0, align 8, !tbaa !47
  %212 = getelementptr inbounds %struct.z_stream_s, ptr %211, i64 0, i32 7
  %213 = load ptr, ptr %212, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %213) #10
  %214 = getelementptr inbounds %struct.internal_state, ptr %213, i64 0, i32 5
  %215 = load i32, ptr %214, align 8, !tbaa !109
  %216 = getelementptr inbounds %struct.z_stream_s, ptr %211, i64 0, i32 4
  %217 = load i32, ptr %216, align 8, !tbaa !119
  %218 = tail call i32 @llvm.umin.i32(i32 %215, i32 %217)
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %241, label %220

220:                                              ; preds = %205
  %221 = getelementptr inbounds %struct.z_stream_s, ptr %211, i64 0, i32 3
  %222 = load ptr, ptr %221, align 8, !tbaa !118
  %223 = getelementptr inbounds %struct.internal_state, ptr %213, i64 0, i32 4
  %224 = load ptr, ptr %223, align 8, !tbaa !110
  %225 = zext i32 %218 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %222, ptr align 1 %224, i64 %225, i1 false)
  %226 = load ptr, ptr %221, align 8, !tbaa !118
  %227 = getelementptr inbounds i8, ptr %226, i64 %225
  store ptr %227, ptr %221, align 8, !tbaa !118
  %228 = load ptr, ptr %223, align 8, !tbaa !110
  %229 = getelementptr inbounds i8, ptr %228, i64 %225
  store ptr %229, ptr %223, align 8, !tbaa !110
  %230 = getelementptr inbounds %struct.z_stream_s, ptr %211, i64 0, i32 5
  %231 = load i64, ptr %230, align 8, !tbaa !130
  %232 = add i64 %231, %225
  store i64 %232, ptr %230, align 8, !tbaa !130
  %233 = load i32, ptr %216, align 8, !tbaa !119
  %234 = sub i32 %233, %218
  store i32 %234, ptr %216, align 8, !tbaa !119
  %235 = load i32, ptr %214, align 8, !tbaa !109
  %236 = sub i32 %235, %218
  store i32 %236, ptr %214, align 8, !tbaa !109
  %237 = icmp eq i32 %235, %218
  br i1 %237, label %238, label %241

238:                                              ; preds = %220
  %239 = getelementptr inbounds %struct.internal_state, ptr %213, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !65
  store ptr %240, ptr %223, align 8, !tbaa !110
  br label %241

241:                                              ; preds = %205, %220, %238
  %242 = load ptr, ptr %0, align 8, !tbaa !47
  %243 = getelementptr inbounds %struct.z_stream_s, ptr %242, i64 0, i32 4
  %244 = load i32, ptr %243, align 8, !tbaa !119
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %468, label %197

246:                                              ; preds = %113, %110
  %247 = load i32, ptr %36, align 8, !tbaa !93
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %324, label %249

249:                                              ; preds = %246
  %250 = load ptr, ptr %37, align 8, !tbaa !60
  %251 = load i32, ptr %38, align 4, !tbaa !87
  %252 = add i32 %251, -1
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i8, ptr %250, i64 %253
  %255 = load i8, ptr %254, align 1, !tbaa !35
  %256 = load ptr, ptr %39, align 8, !tbaa !70
  %257 = load i32, ptr %40, align 4, !tbaa !134
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i16, ptr %256, i64 %258
  store i16 0, ptr %259, align 2, !tbaa !77
  %260 = load ptr, ptr %41, align 8, !tbaa !71
  %261 = add i32 %257, 1
  store i32 %261, ptr %40, align 4, !tbaa !134
  %262 = getelementptr inbounds i8, ptr %260, i64 %258
  store i8 %255, ptr %262, align 1, !tbaa !35
  %263 = zext i8 %255 to i64
  %264 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %263
  %265 = load i16, ptr %264, align 4, !tbaa !35
  %266 = add i16 %265, 1
  store i16 %266, ptr %264, align 4, !tbaa !35
  %267 = load i32, ptr %40, align 4, !tbaa !134
  %268 = load i32, ptr %42, align 8, !tbaa !64
  %269 = add i32 %268, -1
  %270 = icmp eq i32 %267, %269
  br i1 %270, label %271, label %315

271:                                              ; preds = %249
  %272 = load i64, ptr %43, align 8, !tbaa !88
  %273 = icmp sgt i64 %272, -1
  br i1 %273, label %274, label %278

274:                                              ; preds = %271
  %275 = load ptr, ptr %37, align 8, !tbaa !60
  %276 = and i64 %272, 4294967295
  %277 = getelementptr inbounds i8, ptr %275, i64 %276
  br label %278

278:                                              ; preds = %271, %274
  %279 = phi ptr [ %277, %274 ], [ null, %271 ]
  %280 = load i32, ptr %38, align 4, !tbaa !87
  %281 = zext i32 %280 to i64
  %282 = sub nsw i64 %281, %272
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %279, i64 noundef %282, i32 noundef 0) #10
  %283 = load i32, ptr %38, align 4, !tbaa !87
  %284 = zext i32 %283 to i64
  store i64 %284, ptr %43, align 8, !tbaa !88
  %285 = load ptr, ptr %0, align 8, !tbaa !47
  %286 = getelementptr inbounds %struct.z_stream_s, ptr %285, i64 0, i32 7
  %287 = load ptr, ptr %286, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %287) #10
  %288 = getelementptr inbounds %struct.internal_state, ptr %287, i64 0, i32 5
  %289 = load i32, ptr %288, align 8, !tbaa !109
  %290 = getelementptr inbounds %struct.z_stream_s, ptr %285, i64 0, i32 4
  %291 = load i32, ptr %290, align 8, !tbaa !119
  %292 = tail call i32 @llvm.umin.i32(i32 %289, i32 %291)
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %315, label %294

294:                                              ; preds = %278
  %295 = getelementptr inbounds %struct.z_stream_s, ptr %285, i64 0, i32 3
  %296 = load ptr, ptr %295, align 8, !tbaa !118
  %297 = getelementptr inbounds %struct.internal_state, ptr %287, i64 0, i32 4
  %298 = load ptr, ptr %297, align 8, !tbaa !110
  %299 = zext i32 %292 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %296, ptr align 1 %298, i64 %299, i1 false)
  %300 = load ptr, ptr %295, align 8, !tbaa !118
  %301 = getelementptr inbounds i8, ptr %300, i64 %299
  store ptr %301, ptr %295, align 8, !tbaa !118
  %302 = load ptr, ptr %297, align 8, !tbaa !110
  %303 = getelementptr inbounds i8, ptr %302, i64 %299
  store ptr %303, ptr %297, align 8, !tbaa !110
  %304 = getelementptr inbounds %struct.z_stream_s, ptr %285, i64 0, i32 5
  %305 = load i64, ptr %304, align 8, !tbaa !130
  %306 = add i64 %305, %299
  store i64 %306, ptr %304, align 8, !tbaa !130
  %307 = load i32, ptr %290, align 8, !tbaa !119
  %308 = sub i32 %307, %292
  store i32 %308, ptr %290, align 8, !tbaa !119
  %309 = load i32, ptr %288, align 8, !tbaa !109
  %310 = sub i32 %309, %292
  store i32 %310, ptr %288, align 8, !tbaa !109
  %311 = icmp eq i32 %309, %292
  br i1 %311, label %312, label %315

312:                                              ; preds = %294
  %313 = getelementptr inbounds %struct.internal_state, ptr %287, i64 0, i32 2
  %314 = load ptr, ptr %313, align 8, !tbaa !65
  store ptr %314, ptr %297, align 8, !tbaa !110
  br label %315

315:                                              ; preds = %312, %294, %278, %249
  %316 = load i32, ptr %38, align 4, !tbaa !87
  %317 = add i32 %316, 1
  store i32 %317, ptr %38, align 4, !tbaa !87
  %318 = load i32, ptr %3, align 4, !tbaa !89
  %319 = add i32 %318, -1
  store i32 %319, ptr %3, align 4, !tbaa !89
  %320 = load ptr, ptr %0, align 8, !tbaa !47
  %321 = getelementptr inbounds %struct.z_stream_s, ptr %320, i64 0, i32 4
  %322 = load i32, ptr %321, align 8, !tbaa !119
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %468, label %197

324:                                              ; preds = %246
  store i32 1, ptr %36, align 8, !tbaa !93
  %325 = load i32, ptr %44, align 4, !tbaa !87
  %326 = add i32 %325, 1
  store i32 %326, ptr %44, align 4, !tbaa !87
  %327 = load i32, ptr %3, align 4, !tbaa !89
  %328 = add i32 %327, -1
  store i32 %328, ptr %3, align 4, !tbaa !89
  br label %197

329:                                              ; preds = %52
  %330 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 26
  %331 = load i32, ptr %330, align 8, !tbaa !93
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %356, label %333

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %335 = load ptr, ptr %334, align 8, !tbaa !60
  %336 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %337 = load i32, ptr %336, align 4, !tbaa !87
  %338 = add i32 %337, -1
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i8, ptr %335, i64 %339
  %341 = load i8, ptr %340, align 1, !tbaa !35
  %342 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 51
  %343 = load ptr, ptr %342, align 8, !tbaa !70
  %344 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %345 = load i32, ptr %344, align 4, !tbaa !134
  %346 = zext i32 %345 to i64
  %347 = getelementptr inbounds i16, ptr %343, i64 %346
  store i16 0, ptr %347, align 2, !tbaa !77
  %348 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 48
  %349 = load ptr, ptr %348, align 8, !tbaa !71
  %350 = add i32 %345, 1
  store i32 %350, ptr %344, align 4, !tbaa !134
  %351 = getelementptr inbounds i8, ptr %349, i64 %346
  store i8 %341, ptr %351, align 1, !tbaa !35
  %352 = zext i8 %341 to i64
  %353 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 37, i64 %352
  %354 = load i16, ptr %353, align 4, !tbaa !35
  %355 = add i16 %354, 1
  store i16 %355, ptr %353, align 4, !tbaa !35
  store i32 0, ptr %330, align 8, !tbaa !93
  br label %356

356:                                              ; preds = %333, %329
  %357 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %358 = load i32, ptr %357, align 4, !tbaa !87
  %359 = tail call i32 @llvm.umin.i32(i32 %358, i32 2)
  %360 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 55
  store i32 %359, ptr %360, align 4, !tbaa !90
  %361 = icmp eq i32 %1, 4
  br i1 %361, label %362, label %413

362:                                              ; preds = %356
  %363 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %364 = load i64, ptr %363, align 8, !tbaa !88
  %365 = icmp sgt i64 %364, -1
  br i1 %365, label %366, label %371

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %368 = load ptr, ptr %367, align 8, !tbaa !60
  %369 = and i64 %364, 4294967295
  %370 = getelementptr inbounds i8, ptr %368, i64 %369
  br label %371

371:                                              ; preds = %362, %366
  %372 = phi ptr [ %370, %366 ], [ null, %362 ]
  %373 = zext i32 %358 to i64
  %374 = sub nsw i64 %373, %364
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %372, i64 noundef %374, i32 noundef 1) #10
  %375 = load i32, ptr %357, align 4, !tbaa !87
  %376 = zext i32 %375 to i64
  store i64 %376, ptr %363, align 8, !tbaa !88
  %377 = load ptr, ptr %0, align 8, !tbaa !47
  %378 = getelementptr inbounds %struct.z_stream_s, ptr %377, i64 0, i32 7
  %379 = load ptr, ptr %378, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %379) #10
  %380 = getelementptr inbounds %struct.internal_state, ptr %379, i64 0, i32 5
  %381 = load i32, ptr %380, align 8, !tbaa !109
  %382 = getelementptr inbounds %struct.z_stream_s, ptr %377, i64 0, i32 4
  %383 = load i32, ptr %382, align 8, !tbaa !119
  %384 = tail call i32 @llvm.umin.i32(i32 %381, i32 %383)
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %407, label %386

386:                                              ; preds = %371
  %387 = getelementptr inbounds %struct.z_stream_s, ptr %377, i64 0, i32 3
  %388 = load ptr, ptr %387, align 8, !tbaa !118
  %389 = getelementptr inbounds %struct.internal_state, ptr %379, i64 0, i32 4
  %390 = load ptr, ptr %389, align 8, !tbaa !110
  %391 = zext i32 %384 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %388, ptr align 1 %390, i64 %391, i1 false)
  %392 = load ptr, ptr %387, align 8, !tbaa !118
  %393 = getelementptr inbounds i8, ptr %392, i64 %391
  store ptr %393, ptr %387, align 8, !tbaa !118
  %394 = load ptr, ptr %389, align 8, !tbaa !110
  %395 = getelementptr inbounds i8, ptr %394, i64 %391
  store ptr %395, ptr %389, align 8, !tbaa !110
  %396 = getelementptr inbounds %struct.z_stream_s, ptr %377, i64 0, i32 5
  %397 = load i64, ptr %396, align 8, !tbaa !130
  %398 = add i64 %397, %391
  store i64 %398, ptr %396, align 8, !tbaa !130
  %399 = load i32, ptr %382, align 8, !tbaa !119
  %400 = sub i32 %399, %384
  store i32 %400, ptr %382, align 8, !tbaa !119
  %401 = load i32, ptr %380, align 8, !tbaa !109
  %402 = sub i32 %401, %384
  store i32 %402, ptr %380, align 8, !tbaa !109
  %403 = icmp eq i32 %401, %384
  br i1 %403, label %404, label %407

404:                                              ; preds = %386
  %405 = getelementptr inbounds %struct.internal_state, ptr %379, i64 0, i32 2
  %406 = load ptr, ptr %405, align 8, !tbaa !65
  store ptr %406, ptr %389, align 8, !tbaa !110
  br label %407

407:                                              ; preds = %371, %386, %404
  %408 = load ptr, ptr %0, align 8, !tbaa !47
  %409 = getelementptr inbounds %struct.z_stream_s, ptr %408, i64 0, i32 4
  %410 = load i32, ptr %409, align 8, !tbaa !119
  %411 = icmp eq i32 %410, 0
  %412 = select i1 %411, i32 2, i32 3
  br label %468

413:                                              ; preds = %356
  %414 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 50
  %415 = load i32, ptr %414, align 4, !tbaa !134
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %467, label %417

417:                                              ; preds = %413
  %418 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 23
  %419 = load i64, ptr %418, align 8, !tbaa !88
  %420 = icmp sgt i64 %419, -1
  br i1 %420, label %421, label %426

421:                                              ; preds = %417
  %422 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %423 = load ptr, ptr %422, align 8, !tbaa !60
  %424 = and i64 %419, 4294967295
  %425 = getelementptr inbounds i8, ptr %423, i64 %424
  br label %426

426:                                              ; preds = %417, %421
  %427 = phi ptr [ %425, %421 ], [ null, %417 ]
  %428 = zext i32 %358 to i64
  %429 = sub nsw i64 %428, %419
  tail call void @_tr_flush_block(ptr noundef %0, ptr noundef %427, i64 noundef %429, i32 noundef 0) #10
  %430 = load i32, ptr %357, align 4, !tbaa !87
  %431 = zext i32 %430 to i64
  store i64 %431, ptr %418, align 8, !tbaa !88
  %432 = load ptr, ptr %0, align 8, !tbaa !47
  %433 = getelementptr inbounds %struct.z_stream_s, ptr %432, i64 0, i32 7
  %434 = load ptr, ptr %433, align 8, !tbaa !46
  tail call void @_tr_flush_bits(ptr noundef %434) #10
  %435 = getelementptr inbounds %struct.internal_state, ptr %434, i64 0, i32 5
  %436 = load i32, ptr %435, align 8, !tbaa !109
  %437 = getelementptr inbounds %struct.z_stream_s, ptr %432, i64 0, i32 4
  %438 = load i32, ptr %437, align 8, !tbaa !119
  %439 = tail call i32 @llvm.umin.i32(i32 %436, i32 %438)
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %462, label %441

441:                                              ; preds = %426
  %442 = getelementptr inbounds %struct.z_stream_s, ptr %432, i64 0, i32 3
  %443 = load ptr, ptr %442, align 8, !tbaa !118
  %444 = getelementptr inbounds %struct.internal_state, ptr %434, i64 0, i32 4
  %445 = load ptr, ptr %444, align 8, !tbaa !110
  %446 = zext i32 %439 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %443, ptr align 1 %445, i64 %446, i1 false)
  %447 = load ptr, ptr %442, align 8, !tbaa !118
  %448 = getelementptr inbounds i8, ptr %447, i64 %446
  store ptr %448, ptr %442, align 8, !tbaa !118
  %449 = load ptr, ptr %444, align 8, !tbaa !110
  %450 = getelementptr inbounds i8, ptr %449, i64 %446
  store ptr %450, ptr %444, align 8, !tbaa !110
  %451 = getelementptr inbounds %struct.z_stream_s, ptr %432, i64 0, i32 5
  %452 = load i64, ptr %451, align 8, !tbaa !130
  %453 = add i64 %452, %446
  store i64 %453, ptr %451, align 8, !tbaa !130
  %454 = load i32, ptr %437, align 8, !tbaa !119
  %455 = sub i32 %454, %439
  store i32 %455, ptr %437, align 8, !tbaa !119
  %456 = load i32, ptr %435, align 8, !tbaa !109
  %457 = sub i32 %456, %439
  store i32 %457, ptr %435, align 8, !tbaa !109
  %458 = icmp eq i32 %456, %439
  br i1 %458, label %459, label %462

459:                                              ; preds = %441
  %460 = getelementptr inbounds %struct.internal_state, ptr %434, i64 0, i32 2
  %461 = load ptr, ptr %460, align 8, !tbaa !65
  store ptr %461, ptr %444, align 8, !tbaa !110
  br label %462

462:                                              ; preds = %426, %441, %459
  %463 = load ptr, ptr %0, align 8, !tbaa !47
  %464 = getelementptr inbounds %struct.z_stream_s, ptr %463, i64 0, i32 4
  %465 = load i32, ptr %464, align 8, !tbaa !119
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %468, label %467

467:                                              ; preds = %462, %413
  br label %468

468:                                              ; preds = %315, %241, %48, %462, %407, %467
  %469 = phi i32 [ 1, %467 ], [ %412, %407 ], [ 0, %462 ], [ 0, %48 ], [ 0, %241 ], [ 0, %315 ]
  ret i32 %469
}

declare hidden void @_tr_flush_block(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @longest_match(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 31
  %4 = load i32, ptr %3, align 4, !tbaa !86
  %5 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 14
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 27
  %8 = load i32, ptr %7, align 4, !tbaa !87
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %6, i64 %9
  %11 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 30
  %12 = load i32, ptr %11, align 8, !tbaa !91
  %13 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 36
  %14 = load i32, ptr %13, align 8, !tbaa !84
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
  %30 = load i32, ptr %29, align 4, !tbaa !82
  %31 = icmp ult i32 %12, %30
  %32 = lshr i32 %4, 2
  %33 = select i1 %31, i32 %4, i32 %32
  %34 = getelementptr inbounds %struct.internal_state, ptr %0, i64 0, i32 29
  %35 = load i32, ptr %34, align 4, !tbaa !89
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
  br i1 %75, label %76, label %135

76:                                               ; preds = %67
  %77 = getelementptr inbounds i8, ptr %70, i64 2
  %78 = load i8, ptr %77, align 1, !tbaa !35
  %79 = getelementptr inbounds i8, ptr %68, i64 2
  %80 = load i8, ptr %79, align 1, !tbaa !35
  %81 = icmp eq i8 %78, %80
  br i1 %81, label %82, label %133

82:                                               ; preds = %76
  %83 = getelementptr inbounds i8, ptr %70, i64 3
  %84 = load i8, ptr %83, align 1, !tbaa !35
  %85 = getelementptr inbounds i8, ptr %68, i64 3
  %86 = load i8, ptr %85, align 1, !tbaa !35
  %87 = icmp eq i8 %84, %86
  br i1 %87, label %88, label %131

88:                                               ; preds = %82
  %89 = getelementptr inbounds i8, ptr %70, i64 4
  %90 = load i8, ptr %89, align 1, !tbaa !35
  %91 = getelementptr inbounds i8, ptr %68, i64 4
  %92 = load i8, ptr %91, align 1, !tbaa !35
  %93 = icmp eq i8 %90, %92
  br i1 %93, label %94, label %129

94:                                               ; preds = %88
  %95 = getelementptr inbounds i8, ptr %70, i64 5
  %96 = load i8, ptr %95, align 1, !tbaa !35
  %97 = getelementptr inbounds i8, ptr %68, i64 5
  %98 = load i8, ptr %97, align 1, !tbaa !35
  %99 = icmp eq i8 %96, %98
  br i1 %99, label %100, label %127

100:                                              ; preds = %94
  %101 = getelementptr inbounds i8, ptr %70, i64 6
  %102 = load i8, ptr %101, align 1, !tbaa !35
  %103 = getelementptr inbounds i8, ptr %68, i64 6
  %104 = load i8, ptr %103, align 1, !tbaa !35
  %105 = icmp eq i8 %102, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %100
  %107 = getelementptr inbounds i8, ptr %70, i64 7
  %108 = load i8, ptr %107, align 1, !tbaa !35
  %109 = getelementptr inbounds i8, ptr %68, i64 7
  %110 = load i8, ptr %109, align 1, !tbaa !35
  %111 = icmp eq i8 %108, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %106
  %113 = add nuw nsw i64 %69, 8
  %114 = getelementptr inbounds i8, ptr %10, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !35
  %116 = getelementptr inbounds i8, ptr %68, i64 8
  %117 = load i8, ptr %116, align 1, !tbaa !35
  %118 = icmp eq i8 %115, %117
  %119 = icmp ult i64 %69, 250
  %120 = and i1 %119, %118
  br i1 %120, label %67, label %121, !llvm.loop !149

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
  store i32 %43, ptr %37, align 8, !tbaa !102
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
  %162 = load i16, ptr %161, align 2, !tbaa !77
  %163 = zext i16 %162 to i32
  %164 = icmp uge i32 %18, %163
  %165 = add i32 %42, -1
  %166 = icmp eq i32 %165, 0
  %167 = select i1 %164, i1 true, i1 %166
  br i1 %167, label %168, label %40, !llvm.loop !150

168:                                              ; preds = %155, %144
  %169 = phi i32 [ %156, %155 ], [ %142, %144 ]
  %170 = tail call i32 @llvm.umin.i32(i32 %169, i32 %35)
  ret i32 %170
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

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
!76 = !{!48, !42, i64 88}
!77 = !{!50, !50, i64 0}
!78 = !{!79, !50, i64 2}
!79 = !{!"config_s", !50, i64 0, !50, i64 2, !50, i64 4, !50, i64 6, !40, i64 8}
!80 = !{!48, !41, i64 176}
!81 = !{!79, !50, i64 0}
!82 = !{!48, !41, i64 188}
!83 = !{!79, !50, i64 4}
!84 = !{!48, !41, i64 192}
!85 = !{!79, !50, i64 6}
!86 = !{!48, !41, i64 172}
!87 = !{!48, !41, i64 156}
!88 = !{!48, !42, i64 136}
!89 = !{!48, !41, i64 164}
!90 = !{!48, !41, i64 5916}
!91 = !{!48, !41, i64 168}
!92 = !{!48, !41, i64 144}
!93 = !{!48, !41, i64 152}
!94 = !{!48, !41, i64 112}
!95 = !{!39, !42, i64 96}
!96 = !{!39, !41, i64 8}
!97 = !{!39, !40, i64 0}
!98 = distinct !{!98, !99, !100}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = distinct !{!101, !99, !100}
!102 = !{!48, !41, i64 160}
!103 = distinct !{!103, !99, !100}
!104 = distinct !{!104, !99, !100}
!105 = !{!39, !42, i64 16}
!106 = distinct !{!106, !99, !100}
!107 = distinct !{!107, !99, !100}
!108 = !{!39, !41, i64 88}
!109 = !{!48, !41, i64 40}
!110 = !{!48, !40, i64 32}
!111 = !{!48, !41, i64 64}
!112 = !{!41, !41, i64 0}
!113 = !{!48, !41, i64 5924}
!114 = !{!48, !50, i64 5920}
!115 = distinct !{!115, !99, !100}
!116 = !{!79, !40, i64 8}
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
!130 = !{!39, !42, i64 40}
!131 = distinct !{!131, !99, !100}
!132 = distinct !{!132, !99, !100}
!133 = distinct !{!133, !99, !100}
!134 = !{!48, !41, i64 5884}
!135 = distinct !{!135, !100}
!136 = distinct !{!136, !99, !100}
!137 = distinct !{!137, !100}
!138 = distinct !{!138, !99, !100}
!139 = distinct !{!139, !99, !100}
!140 = !{!48, !40, i64 2888}
!141 = !{!48, !40, i64 2912}
!142 = !{!48, !40, i64 2936}
!143 = distinct !{!143, !100}
!144 = distinct !{!144, !99, !100}
!145 = distinct !{!145, !100}
!146 = !{!48, !41, i64 148}
!147 = distinct !{!147, !99, !100}
!148 = distinct !{!148, !100}
!149 = distinct !{!149, !99, !100}
!150 = distinct !{!150, !99, !100}
