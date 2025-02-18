; ModuleID = 'liblzma/lzma/lzma2_encoder.c'
source_filename = "liblzma/lzma/lzma2_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_lz_encoder = type { ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, ptr, %struct.lzma_options_lzma, i8, i8, i8, i64, i64, i64, [65542 x i8] }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_lz_options = type { i64, i64, i64, i64, i64, i32, i32, ptr, i32 }
%struct.lzma_mf_s = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lzma_filter = type { i64, ptr }

@lzma_fastpos = external local_unnamed_addr constant [8192 x i8], align 16

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_lzma2_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !44 {
  %4 = tail call i32 @lzma_lz_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @lzma2_encoder_init) #8
  ret i32 %4
}

declare i32 @lzma_lz_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal i32 @lzma2_encoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) #0 !prof !44 !PGOFuncName !45 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %46, label %6, !prof !46

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17, !prof !52

9:                                                ; preds = %6
  %10 = tail call ptr @lzma_alloc(i64 noundef 65704, ptr noundef %1) #8
  store ptr %10, ptr %0, align 8, !tbaa !47
  %11 = icmp eq ptr %10, null
  br i1 %11, label %46, label %12, !prof !46

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 1
  store ptr @lzma2_encode, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 2
  store ptr @lzma2_encoder_end, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.lzma_lz_encoder, ptr %0, i64 0, i32 3
  store ptr @lzma2_encoder_options_update, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %10, i64 0, i32 1
  store ptr null, ptr %16, align 8, !tbaa !56
  br label %17

17:                                               ; preds = %12, %6
  %18 = load ptr, ptr %0, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %18, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %19, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false), !tbaa.struct !62
  %20 = load ptr, ptr %0, align 8, !tbaa !47
  store i32 0, ptr %20, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 3
  store i8 1, ptr %21, align 8, !tbaa !66
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 4
  store i8 0, ptr %22, align 1, !tbaa !67
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26, !prof !52

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 2, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !69
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i8
  br label %31

31:                                               ; preds = %26, %17
  %32 = phi i8 [ 1, %17 ], [ %30, %26 ]
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 5
  store i8 %32, ptr %33, align 2, !tbaa !70
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 1
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %20, i64 0, i32 2
  %36 = tail call i32 @lzma_lzma_encoder_create(ptr noundef nonnull %34, ptr noundef %1, ptr noundef nonnull %35, ptr noundef %3) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46, !prof !52

38:                                               ; preds = %31
  %39 = load i64, ptr %3, align 8, !tbaa !71
  %40 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !73
  %42 = add i64 %41, %39
  %43 = icmp ult i64 %42, 65536
  br i1 %43, label %44, label %46, !prof !46

44:                                               ; preds = %38
  %45 = sub i64 65536, %41
  store i64 %45, ptr %3, align 8, !tbaa !71
  br label %46

46:                                               ; preds = %31, %38, %44, %9, %4
  %47 = phi i32 [ %36, %31 ], [ 11, %4 ], [ 5, %9 ], [ 0, %44 ], [ 0, %38 ]
  ret i32 %47
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_lzma2_encoder_memusage(ptr noundef %0) local_unnamed_addr #0 !prof !74 {
  %2 = tail call i64 @lzma_lzma_encoder_memusage(ptr noundef %0) #8
  %3 = icmp eq i64 %2, -1
  %4 = add i64 %2, 65704
  %5 = select i1 %3, i64 -1, i64 %4
  ret i64 %5
}

declare i64 @lzma_lzma_encoder_memusage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @lzma_lzma2_props_encode(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 !prof !44 {
  %3 = load i32, ptr %0, align 8, !tbaa !75
  %4 = icmp ugt i32 %3, 4096
  %5 = add i32 %3, -1
  %6 = select i1 %4, i32 %5, i32 4095, !prof !52
  %7 = lshr i32 %6, 2
  %8 = or i32 %7, %6
  %9 = lshr i32 %8, 3
  %10 = or i32 %9, %8
  %11 = lshr i32 %10, 4
  %12 = or i32 %11, %10
  %13 = lshr i32 %12, 8
  %14 = or i32 %13, %12
  %15 = lshr i32 %14, 16
  %16 = or i32 %15, %14
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %42, label %18, !prof !46

18:                                               ; preds = %2
  %19 = add nuw i32 %16, 1
  %20 = icmp ult i32 %16, 8191
  br i1 %20, label %21, label %25, !prof !46

21:                                               ; preds = %18
  %22 = zext nneg i32 %19 to i64
  %23 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !76
  br label %39

25:                                               ; preds = %18
  %26 = icmp ult i32 %16, 33554431
  br i1 %26, label %27, label %33, !prof !52

27:                                               ; preds = %25
  %28 = lshr i32 %19, 12
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !76
  %32 = add i8 %31, 24
  br label %39

33:                                               ; preds = %25
  %34 = lshr i32 %19, 24
  %35 = zext nneg i32 %34 to i64
  %36 = getelementptr inbounds [8192 x i8], ptr @lzma_fastpos, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !76
  %38 = add i8 %37, 48
  br label %39

39:                                               ; preds = %21, %27, %33
  %40 = phi i8 [ %24, %21 ], [ %32, %27 ], [ %38, %33 ]
  %41 = add i8 %40, -24
  br label %42

42:                                               ; preds = %2, %39
  %43 = phi i8 [ %41, %39 ], [ 40, %2 ]
  store i8 %43, ptr %1, align 1, !tbaa !76
  ret i32 0
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_encode(ptr noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4) #3 !prof !77 !PGOFuncName !78 {
  %6 = load i64, ptr %3, align 8, !tbaa !79
  %7 = icmp ult i64 %6, %4
  br i1 %7, label %8, label %206, !prof !52

8:                                                ; preds = %5, %202
  %9 = phi i64 [ %204, %202 ], [ %6, %5 ]
  %10 = phi i32 [ %203, %202 ], [ undef, %5 ]
  %11 = load i32, ptr %0, align 8, !tbaa !65
  switch i32 %11, label %202 [
    i32 0, label %12
    i32 1, label %46
    i32 2, label %166
    i32 3, label %176
    i32 4, label %183
  ], !prof !80

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 8
  %14 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 5
  %15 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %16 = load i32, ptr %13, align 4, !tbaa !81
  %17 = load i32, ptr %14, align 8, !tbaa !83
  %18 = sub i32 %16, %17
  %19 = load i32, ptr %15, align 4, !tbaa !84
  %20 = sub i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %32, !prof !85

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 20
  %24 = load i32, ptr %23, align 8, !tbaa !86
  %25 = icmp eq i32 %24, 3
  br i1 %25, label %26, label %29, !prof !52

26:                                               ; preds = %22
  %27 = add i64 %9, 1
  store i64 %27, ptr %3, align 8, !tbaa !79
  %28 = getelementptr inbounds i8, ptr %2, i64 %9
  store i8 0, ptr %28, align 1, !tbaa !76
  br label %29

29:                                               ; preds = %26, %22
  %30 = icmp ne i32 %24, 0
  %31 = zext i1 %30 to i32
  br label %206

32:                                               ; preds = %12
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %34 = load i8, ptr %33, align 1, !tbaa !67, !range !87, !noundef !88
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %43, label %36, !prof !89

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %37, align 8, !tbaa !56
  %40 = tail call i32 @lzma_lzma_encoder_reset(ptr noundef %39, ptr noundef nonnull %38) #8
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 %10, i32 %40, !prof !90
  br i1 %41, label %43, label %206, !prof !90

43:                                               ; preds = %36, %32
  %44 = phi i32 [ %42, %36 ], [ %10, %32 ]
  %45 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  store i32 1, ptr %0, align 8, !tbaa !65
  br label %46

46:                                               ; preds = %8, %43
  %47 = phi i32 [ %10, %8 ], [ %44, %43 ]
  %48 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %49 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 19
  %50 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %52 = load i64, ptr %48, align 8, !tbaa !91
  %53 = trunc i64 %52 to i32
  %54 = sub i32 2097152, %53
  %55 = load i32, ptr %49, align 4, !tbaa !92
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %65, label %57, !prof !93

57:                                               ; preds = %46
  %58 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 5
  %59 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 6
  %60 = load i32, ptr %58, align 8, !tbaa !83
  %61 = load i32, ptr %59, align 4, !tbaa !84
  %62 = add i32 %54, %60
  %63 = add i32 %55, %61
  %64 = sub i32 %62, %63
  br label %65

65:                                               ; preds = %46, %57
  %66 = phi i32 [ %64, %57 ], [ 0, %46 ]
  %67 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 5
  %68 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %69 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 6
  %70 = load i32, ptr %67, align 8, !tbaa !83
  %71 = load i32, ptr %50, align 4, !tbaa !84
  %72 = load ptr, ptr %68, align 8, !tbaa !56
  %73 = tail call i32 @lzma_lzma_encode(ptr noundef %72, ptr noundef %1, ptr noundef nonnull %69, ptr noundef nonnull %51, i64 noundef 65536, i32 noundef %66) #8
  %74 = load i32, ptr %67, align 8, !tbaa !83
  %75 = load i32, ptr %50, align 4, !tbaa !84
  %76 = add i32 %71, %74
  %77 = add i32 %70, %75
  %78 = sub i32 %76, %77
  %79 = zext i32 %78 to i64
  %80 = load i64, ptr %48, align 8, !tbaa !91
  %81 = add i64 %80, %79
  store i64 %81, ptr %48, align 8, !tbaa !91
  %82 = icmp eq i32 %73, 1
  br i1 %82, label %83, label %163, !prof !94

83:                                               ; preds = %65
  %84 = load i64, ptr %51, align 8, !tbaa !95
  %85 = icmp ult i64 %84, %81
  br i1 %85, label %106, label %86, !prof !89

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %88 = zext i32 %75 to i64
  %89 = add i64 %81, %88
  store i64 %89, ptr %48, align 8, !tbaa !91
  store i32 0, ptr %50, align 4, !tbaa !84
  %90 = load i8, ptr %87, align 2, !tbaa !70, !range !87, !noundef !88
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %94, label %92, !prof !90

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  store i8 1, ptr %93, align 8, !tbaa !76
  br label %96

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  store i8 2, ptr %95, align 8, !tbaa !76
  br label %96

96:                                               ; preds = %92, %94
  %97 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 1
  %98 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 2
  %99 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %100 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  store i8 0, ptr %87, align 2, !tbaa !70
  %101 = add i64 %89, 65535
  %102 = lshr i64 %101, 8
  %103 = trunc i64 %102 to i8
  store i8 %103, ptr %97, align 1, !tbaa !76
  %104 = trunc i64 %89 to i8
  %105 = add i8 %104, -1
  store i8 %105, ptr %98, align 2, !tbaa !76
  store i64 0, ptr %99, align 8, !tbaa !96
  store i8 1, ptr %100, align 1, !tbaa !67
  br label %160

106:                                              ; preds = %83
  %107 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %108 = load i8, ptr %107, align 8, !tbaa !66, !range !87, !noundef !88
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %118, label %110, !prof !97

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %112 = load i8, ptr %111, align 2, !tbaa !70, !range !87, !noundef !88
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %116, label %114, !prof !46

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  store i8 -32, ptr %115, align 1, !tbaa !76
  br label %126

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  store i8 -64, ptr %117, align 1, !tbaa !76
  br label %126

118:                                              ; preds = %106
  %119 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %120 = load i8, ptr %119, align 1, !tbaa !67, !range !87, !noundef !88
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %124, label %122, !prof !98

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 1
  store i8 -96, ptr %123, align 1, !tbaa !76
  br label %126

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 1
  store i8 -128, ptr %125, align 1, !tbaa !76
  br label %126

126:                                              ; preds = %124, %122, %116, %114
  %127 = phi i64 [ 0, %114 ], [ 0, %116 ], [ 1, %122 ], [ 1, %124 ]
  %128 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  store i64 %127, ptr %128, align 8, !tbaa !96
  %129 = add i64 %81, -1
  %130 = lshr i64 %129, 16
  %131 = add nuw nsw i64 %127, 1
  %132 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %127
  %133 = load i8, ptr %132, align 1, !tbaa !76
  %134 = trunc i64 %130 to i8
  %135 = add i8 %133, %134
  store i8 %135, ptr %132, align 1, !tbaa !76
  %136 = lshr i64 %129, 8
  %137 = trunc i64 %136 to i8
  %138 = or disjoint i64 %127, 2
  %139 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %131
  store i8 %137, ptr %139, align 1, !tbaa !76
  %140 = trunc i64 %129 to i8
  %141 = add nuw nsw i64 %127, 3
  %142 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %138
  store i8 %140, ptr %142, align 1, !tbaa !76
  %143 = add i64 %84, -1
  %144 = lshr i64 %143, 8
  %145 = trunc i64 %144 to i8
  %146 = or disjoint i64 %127, 4
  %147 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %141
  store i8 %145, ptr %147, align 1, !tbaa !76
  %148 = trunc i64 %143 to i8
  %149 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %146
  store i8 %148, ptr %149, align 1, !tbaa !76
  br i1 %109, label %155, label %150, !prof !97

150:                                              ; preds = %126
  %151 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %152 = getelementptr %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 5
  %153 = getelementptr i8, ptr %152, i64 %127
  %154 = tail call zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef nonnull %151, ptr noundef %153) #8
  br label %155

155:                                              ; preds = %126, %150
  %156 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %157 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  store i8 0, ptr %107, align 8, !tbaa !66
  store i8 0, ptr %156, align 1, !tbaa !67
  store i8 0, ptr %157, align 2, !tbaa !70
  %158 = load i64, ptr %51, align 8, !tbaa !95
  %159 = add i64 %158, 6
  store i64 %159, ptr %51, align 8, !tbaa !95
  br label %160

160:                                              ; preds = %96, %155
  %161 = phi i32 [ 2, %155 ], [ 3, %96 ]
  %162 = phi i32 [ 0, %155 ], [ 4, %96 ]
  store i32 %161, ptr %0, align 8, !tbaa !65
  br label %163

163:                                              ; preds = %160, %65
  %164 = phi i32 [ 1, %65 ], [ %162, %160 ]
  %165 = phi i32 [ 0, %65 ], [ %47, %160 ]
  switch i32 %164, label %206 [
    i32 0, label %166
    i32 4, label %202
  ], !prof !99

166:                                              ; preds = %163, %8
  %167 = phi i32 [ %10, %8 ], [ %165, %163 ]
  %168 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %169 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %170 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %171 = load i64, ptr %170, align 8, !tbaa !95
  %172 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %168, ptr noundef nonnull %169, i64 noundef %171, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #8
  %173 = load i64, ptr %169, align 8, !tbaa !96
  %174 = load i64, ptr %170, align 8, !tbaa !95
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %200, label %206, !prof !100

176:                                              ; preds = %8
  %177 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %178 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %179 = tail call i64 @lzma_bufcpy(ptr noundef nonnull %177, ptr noundef nonnull %178, i64 noundef 3, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #8
  %180 = load i64, ptr %178, align 8, !tbaa !96
  %181 = icmp eq i64 %180, 3
  br i1 %181, label %182, label %206, !prof !90

182:                                              ; preds = %176
  store i32 4, ptr %0, align 8, !tbaa !65
  br label %183

183:                                              ; preds = %8, %182
  %184 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %185 = getelementptr inbounds %struct.lzma_mf_s, ptr %1, i64 0, i32 5
  %186 = load i64, ptr %3, align 8, !tbaa !79
  %187 = sub i64 %4, %186
  %188 = load i64, ptr %184, align 8, !tbaa !79
  %189 = tail call i64 @llvm.umin.i64(i64 %187, i64 %188)
  %190 = getelementptr inbounds i8, ptr %2, i64 %186
  %191 = load ptr, ptr %1, align 8, !tbaa !101
  %192 = load i32, ptr %185, align 8, !tbaa !83
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i8, ptr %191, i64 %193
  %195 = sub i64 0, %188
  %196 = getelementptr inbounds i8, ptr %194, i64 %195
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %190, ptr align 1 %196, i64 %189, i1 false), !prof !102
  %197 = add i64 %189, %186
  store i64 %197, ptr %3, align 8, !tbaa !79
  %198 = sub i64 %188, %189
  store i64 %198, ptr %184, align 8, !tbaa !79
  %199 = icmp ugt i64 %188, %187
  br i1 %199, label %206, label %200, !prof !103

200:                                              ; preds = %183, %166
  %201 = phi i32 [ %167, %166 ], [ %10, %183 ]
  store i32 0, ptr %0, align 8, !tbaa !65
  br label %202

202:                                              ; preds = %200, %163, %8
  %203 = phi i32 [ %10, %8 ], [ %165, %163 ], [ %201, %200 ]
  %204 = load i64, ptr %3, align 8, !tbaa !79
  %205 = icmp ult i64 %204, %4
  br i1 %205, label %8, label %206, !prof !104, !llvm.loop !105

206:                                              ; preds = %36, %176, %183, %202, %163, %166, %5, %29
  %207 = phi i32 [ %31, %29 ], [ 0, %5 ], [ 0, %166 ], [ %165, %163 ], [ 0, %202 ], [ 0, %183 ], [ 0, %176 ], [ %42, %36 ]
  ret i32 %207
}

; Function Attrs: cold nounwind uwtable
define internal void @lzma2_encoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !44 !PGOFuncName !108 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  tail call void @lzma_free(ptr noundef %4, ptr noundef %1) #8
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @lzma2_encoder_options_update(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #4 !prof !74 {
  %3 = getelementptr inbounds %struct.lzma_filter, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !109
  %5 = icmp eq ptr %4, null
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !65
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !111
  %12 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !112
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 4
  %17 = load i32, ptr %16, align 8, !tbaa !113
  %18 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !114
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 5
  %23 = load i32, ptr %22, align 4, !tbaa !115
  %24 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !116
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %45, label %27

27:                                               ; preds = %21, %15, %9
  %28 = icmp ugt i32 %13, 4
  br i1 %28, label %45, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !114
  %32 = icmp ugt i32 %31, 4
  %33 = add nuw nsw i32 %31, %13
  %34 = icmp ugt i32 %33, 4
  %35 = select i1 %32, i1 true, i1 %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.lzma_options_lzma, ptr %4, i64 0, i32 5
  %38 = load i32, ptr %37, align 4, !tbaa !116
  %39 = icmp ugt i32 %38, 4
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  store i32 %13, ptr %10, align 4, !tbaa !111
  %41 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 4
  store i32 %31, ptr %41, align 8, !tbaa !113
  %42 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 5
  store i32 %38, ptr %42, align 4, !tbaa !115
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  store i8 1, ptr %43, align 8, !tbaa !66
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  store i8 1, ptr %44, align 1, !tbaa !67
  br label %45

45:                                               ; preds = %36, %29, %27, %40, %21, %2, %6
  %46 = phi i32 [ 11, %6 ], [ 11, %2 ], [ 8, %36 ], [ 8, %29 ], [ 8, %27 ], [ 0, %40 ], [ 0, %21 ]
  ret i32 %46
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @lzma_lzma_encoder_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_lzma_encoder_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_lzma_encode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @lzma_lzma_lclppb_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @lzma_lzma2_encoder_init, ptr @lzma_lz_encoder_init, i64 1}
!36 = !{ptr @lzma2_encoder_init, ptr @lzma_alloc, i64 1}
!37 = !{ptr @lzma2_encoder_init, ptr @lzma_lzma_encoder_create, i64 1}
!38 = !{ptr @lzma2_encode, ptr @lzma_lzma_encoder_reset, i64 65}
!39 = !{ptr @lzma2_encode, ptr @lzma_lzma_encode, i64 32690}
!40 = !{ptr @lzma2_encode, ptr @lzma_lzma_lclppb_encode, i64 1}
!41 = !{ptr @lzma2_encode, ptr @lzma_bufcpy, i64 5162}
!42 = !{ptr @lzma2_encoder_end, ptr @lzma_free, i64 2}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 1}
!45 = !{!"liblzma/lzma/lzma2_encoder.c;lzma2_encoder_init"}
!46 = !{!"branch_weights", i32 0, i32 1}
!47 = !{!48, !49, i64 0}
!48 = !{!"", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!"branch_weights", i32 1, i32 0}
!53 = !{!48, !49, i64 8}
!54 = !{!48, !49, i64 16}
!55 = !{!48, !49, i64 24}
!56 = !{!57, !49, i64 8}
!57 = !{!"lzma_coder_s", !58, i64 0, !49, i64 8, !59, i64 16, !60, i64 128, !60, i64 129, !60, i64 130, !61, i64 136, !61, i64 144, !61, i64 152, !50, i64 160}
!58 = !{!"int", !50, i64 0}
!59 = !{!"", !58, i64 0, !49, i64 8, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !58, i64 40, !58, i64 44, !58, i64 48, !58, i64 52, !58, i64 56, !58, i64 60, !58, i64 64, !58, i64 68, !58, i64 72, !58, i64 76, !58, i64 80, !58, i64 84, !58, i64 88, !58, i64 92, !49, i64 96, !49, i64 104}
!60 = !{!"_Bool", !50, i64 0}
!61 = !{!"long", !50, i64 0}
!62 = !{i64 0, i64 4, !63, i64 8, i64 8, !64, i64 16, i64 4, !63, i64 20, i64 4, !63, i64 24, i64 4, !63, i64 28, i64 4, !63, i64 32, i64 4, !63, i64 36, i64 4, !63, i64 40, i64 4, !63, i64 44, i64 4, !63, i64 48, i64 4, !63, i64 52, i64 4, !63, i64 56, i64 4, !63, i64 60, i64 4, !63, i64 64, i64 4, !63, i64 68, i64 4, !63, i64 72, i64 4, !63, i64 76, i64 4, !63, i64 80, i64 4, !63, i64 84, i64 4, !63, i64 88, i64 4, !63, i64 92, i64 4, !63, i64 96, i64 8, !64, i64 104, i64 8, !64}
!63 = !{!58, !58, i64 0}
!64 = !{!49, !49, i64 0}
!65 = !{!57, !58, i64 0}
!66 = !{!57, !60, i64 128}
!67 = !{!57, !60, i64 129}
!68 = !{!57, !49, i64 24}
!69 = !{!57, !58, i64 32}
!70 = !{!57, !60, i64 130}
!71 = !{!72, !61, i64 0}
!72 = !{!"", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !58, i64 40, !58, i64 44, !49, i64 48, !58, i64 56}
!73 = !{!72, !61, i64 8}
!74 = !{!"function_entry_count", i64 0}
!75 = !{!59, !58, i64 0}
!76 = !{!50, !50, i64 0}
!77 = !{!"function_entry_count", i64 37007}
!78 = !{!"liblzma/lzma/lzma2_encoder.c;lzma2_encode"}
!79 = !{!61, !61, i64 0}
!80 = !{!"branch_weights", i32 0, i32 666, i32 32025, i32 4497, i32 65, i32 484}
!81 = !{!82, !58, i64 36}
!82 = !{!"lzma_mf_s", !49, i64 0, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !58, i64 36, !58, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !58, i64 80, !58, i64 84, !58, i64 88, !58, i64 92, !58, i64 96, !58, i64 100, !58, i64 104, !58, i64 108, !58, i64 112}
!83 = !{!82, !58, i64 24}
!84 = !{!82, !58, i64 28}
!85 = !{!"branch_weights", i32 1, i32 665}
!86 = !{!82, !58, i64 104}
!87 = !{i8 0, i8 2}
!88 = !{}
!89 = !{!"branch_weights", i32 600, i32 65}
!90 = !{!"branch_weights", i32 65, i32 0}
!91 = !{!57, !61, i64 136}
!92 = !{!82, !58, i64 100}
!93 = !{!"branch_weights", i32 0, i32 32690}
!94 = !{!"branch_weights", i32 665, i32 32025}
!95 = !{!57, !61, i64 144}
!96 = !{!57, !61, i64 152}
!97 = !{!"branch_weights", i32 599, i32 1}
!98 = !{!"branch_weights", i32 589, i32 10}
!99 = !{!"branch_weights", i32 32025, i32 600, i32 65}
!100 = !{!"branch_weights", i32 600, i32 4497}
!101 = !{!82, !49, i64 0}
!102 = !{!"VP", i32 1, i64 549, i64 513, i64 539, i64 257, i64 6, i64 129, i64 2, i64 65, i64 1}
!103 = !{!"branch_weights", i32 484, i32 65}
!104 = !{!"branch_weights", i32 37737, i32 0}
!105 = distinct !{!105, !106, !107}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!"liblzma/lzma/lzma2_encoder.c;lzma2_encoder_end"}
!109 = !{!110, !49, i64 8}
!110 = !{!"", !61, i64 0, !49, i64 8}
!111 = !{!57, !58, i64 36}
!112 = !{!59, !58, i64 20}
!113 = !{!57, !58, i64 40}
!114 = !{!59, !58, i64 24}
!115 = !{!57, !58, i64 44}
!116 = !{!59, !58, i64 28}
