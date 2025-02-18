; ModuleID = 'liblzma/lzma/lzma2_decoder.c'
source_filename = "liblzma/lzma/lzma2_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_lz_decoder = type { ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, i32, %struct.lzma_lz_decoder, i64, i64, i8, i8, %struct.lzma_options_lzma }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_dict = type { ptr, i64, i64, i64, i64, i8 }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_lzma2_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !44 {
  %4 = tail call i32 @lzma_lz_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @lzma2_decoder_init) #5
  ret i32 %4
}

declare i32 @lzma_lz_decoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal i32 @lzma2_decoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !prof !44 !PGOFuncName !45 {
  %5 = load ptr, ptr %0, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14, !prof !51

7:                                                ; preds = %4
  %8 = tail call ptr @lzma_alloc(i64 noundef 184, ptr noundef %1) #5
  store ptr %8, ptr %0, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %30, label %10, !prof !52

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 1
  store ptr @lzma2_decode, ptr %11, align 8, !tbaa !53
  %12 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 4
  store ptr @lzma2_decoder_end, ptr %12, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %8, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %13, i8 0, i64 40, i1 false)
  br label %14

14:                                               ; preds = %10, %4
  %15 = load ptr, ptr %0, align 8, !tbaa !46
  store i32 0, ptr %15, align 8, !tbaa !55
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %15, i64 0, i32 5
  store i8 1, ptr %16, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20, !prof !51

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !63
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi i8 [ 1, %14 ], [ %24, %20 ]
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %15, i64 0, i32 6
  store i8 %26, ptr %27, align 1, !tbaa !64
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %15, i64 0, i32 2
  %29 = tail call i32 @lzma_lzma_decoder_create(ptr noundef nonnull %28, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  br label %30

30:                                               ; preds = %7, %25
  %31 = phi i32 [ %29, %25 ], [ 5, %7 ]
  ret i32 %31
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_lzma2_decoder_memusage(ptr noundef %0) local_unnamed_addr #0 !prof !44 {
  %2 = tail call i64 @lzma_lzma_decoder_memusage_nocheck(ptr noundef %0) #5
  %3 = add i64 %2, 184
  ret i64 %3
}

declare i64 @lzma_lzma_decoder_memusage_nocheck(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_lzma2_props_decode(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 !prof !44 {
  %5 = icmp eq i64 %3, 1
  br i1 %5, label %6, label %28, !prof !51

6:                                                ; preds = %4
  %7 = load i8, ptr %2, align 1, !tbaa !65
  %8 = icmp ugt i8 %7, 40
  br i1 %8, label %28, label %9, !prof !52

9:                                                ; preds = %6
  %10 = tail call ptr @lzma_alloc(i64 noundef 112, ptr noundef %1) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12, !prof !52

12:                                               ; preds = %9
  %13 = load i8, ptr %2, align 1, !tbaa !65
  %14 = icmp eq i8 %13, 40
  br i1 %14, label %24, label %15, !prof !52

15:                                               ; preds = %12
  %16 = and i8 %13, 1
  %17 = or disjoint i8 %16, 2
  %18 = zext nneg i8 %17 to i32
  store i32 %18, ptr %10, align 8, !tbaa !66
  %19 = load i8, ptr %2, align 1, !tbaa !65
  %20 = lshr i8 %19, 1
  %21 = add nuw i8 %20, 11
  %22 = zext nneg i8 %21 to i32
  %23 = shl i32 %18, %22
  br label %24

24:                                               ; preds = %12, %15
  %25 = phi i32 [ %23, %15 ], [ -1, %12 ]
  store i32 %25, ptr %10, align 8, !tbaa !66
  %26 = getelementptr inbounds %struct.lzma_options_lzma, ptr %10, i64 0, i32 1
  store ptr null, ptr %26, align 8, !tbaa !62
  %27 = getelementptr inbounds %struct.lzma_options_lzma, ptr %10, i64 0, i32 2
  store i32 0, ptr %27, align 8, !tbaa !63
  store ptr %10, ptr %0, align 8, !tbaa !67
  br label %28

28:                                               ; preds = %24, %9, %6, %4
  %29 = phi i32 [ 8, %4 ], [ 8, %6 ], [ 0, %24 ], [ 5, %9 ]
  ret i32 %29
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @lzma2_decode(ptr noundef %0, ptr noalias noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4) #2 !prof !68 !PGOFuncName !69 {
  br label %6

6:                                                ; preds = %68, %5
  %7 = phi i32 [ undef, %5 ], [ %69, %68 ]
  %8 = load i64, ptr %3, align 8, !tbaa !70
  %9 = icmp ult i64 %8, %4
  br i1 %9, label %13, label %10, !prof !71

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8, !tbaa !55
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %13, label %162

13:                                               ; preds = %6, %10
  %14 = load i32, ptr %0, align 8, !tbaa !55
  switch i32 %14, label %162 [
    i32 0, label %15
    i32 1, label %70
    i32 2, label %79
    i32 3, label %92
    i32 4, label %99
    i32 5, label %110
    i32 6, label %121
    i32 7, label %141
  ], !prof !72

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, ptr %2, i64 %8
  %17 = load i8, ptr %16, align 1, !tbaa !65
  %18 = zext i8 %17 to i64
  %19 = add i64 %8, 1
  store i64 %19, ptr %3, align 8, !tbaa !70
  %20 = icmp eq i8 %17, 0
  br i1 %20, label %65, label %21, !prof !73

21:                                               ; preds = %15
  %22 = icmp ugt i8 %17, -33
  %23 = icmp eq i8 %17, 1
  %24 = or i1 %22, %23
  br i1 %24, label %25, label %28, !prof !74

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  store i8 1, ptr %26, align 8, !tbaa !61
  store i8 1, ptr %27, align 1, !tbaa !64
  br label %32

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %30 = load i8, ptr %29, align 1, !tbaa !64, !range !75, !noundef !76
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %65, !prof !77

32:                                               ; preds = %28, %25
  %33 = icmp slt i8 %17, 0
  br i1 %33, label %34, label %55, !prof !78

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %36 = shl nuw nsw i64 %18, 16
  %37 = and i64 %36, 2031616
  store i64 %37, ptr %35, align 8, !tbaa !79
  store i32 1, ptr %0, align 8, !tbaa !55
  %38 = icmp ugt i8 %17, -65
  br i1 %38, label %39, label %42, !prof !80

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %41 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store i8 0, ptr %40, align 8, !tbaa !61
  store i32 5, ptr %41, align 4, !tbaa !81
  br label %59

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %44 = load i8, ptr %43, align 8, !tbaa !61, !range !75, !noundef !76
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %65, !prof !82

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store i32 6, ptr %47, align 4, !tbaa !81
  %48 = icmp ugt i8 %17, -97
  br i1 %48, label %49, label %59, !prof !83

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 2
  %52 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %53 = load ptr, ptr %51, align 8, !tbaa !84
  %54 = load ptr, ptr %50, align 8, !tbaa !85
  tail call void %53(ptr noundef %54, ptr noundef nonnull %52) #5, !prof !86
  br label %59

55:                                               ; preds = %32
  %56 = icmp ugt i8 %17, 2
  br i1 %56, label %65, label %57, !prof !87

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store i32 3, ptr %0, align 8, !tbaa !55
  store i32 7, ptr %58, align 4, !tbaa !81
  br label %59

59:                                               ; preds = %39, %46, %49, %57
  %60 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %61 = load i8, ptr %60, align 1, !tbaa !64, !range !75, !noundef !76
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63, !prof !88

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.lzma_dict, ptr %1, i64 0, i32 5
  store i8 0, ptr %60, align 1, !tbaa !64
  store i8 1, ptr %64, align 8, !tbaa !89
  br label %65

65:                                               ; preds = %59, %55, %42, %28, %15, %63
  %66 = phi i1 [ false, %63 ], [ false, %15 ], [ false, %28 ], [ false, %42 ], [ false, %55 ], [ true, %59 ]
  %67 = phi i32 [ 0, %63 ], [ 1, %15 ], [ 9, %28 ], [ 9, %42 ], [ 9, %55 ], [ %7, %59 ]
  br i1 %66, label %68, label %162, !prof !91

68:                                               ; preds = %65, %138, %161, %116, %99, %92, %79, %70
  %69 = phi i32 [ %7, %161 ], [ %140, %138 ], [ %7, %116 ], [ %7, %99 ], [ %7, %92 ], [ %7, %79 ], [ %7, %70 ], [ %67, %65 ]
  br label %6, !llvm.loop !92

70:                                               ; preds = %13
  %71 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %72 = add i64 %8, 1
  store i64 %72, ptr %3, align 8, !tbaa !70
  %73 = getelementptr inbounds i8, ptr %2, i64 %8
  %74 = load i8, ptr %73, align 1, !tbaa !65
  %75 = zext i8 %74 to i64
  %76 = shl nuw nsw i64 %75, 8
  %77 = load i64, ptr %71, align 8, !tbaa !79
  %78 = add i64 %76, %77
  store i64 %78, ptr %71, align 8, !tbaa !79
  store i32 2, ptr %0, align 8, !tbaa !55
  br label %68

79:                                               ; preds = %13
  %80 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %81 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %82 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 3
  %83 = add i64 %8, 1
  store i64 %83, ptr %3, align 8, !tbaa !70
  %84 = getelementptr inbounds i8, ptr %2, i64 %8
  %85 = load i8, ptr %84, align 1, !tbaa !65
  %86 = zext i8 %85 to i64
  %87 = add nuw nsw i64 %86, 1
  %88 = load i64, ptr %80, align 8, !tbaa !79
  %89 = add i64 %87, %88
  store i64 %89, ptr %80, align 8, !tbaa !79
  store i32 3, ptr %0, align 8, !tbaa !55
  %90 = load ptr, ptr %82, align 8, !tbaa !95
  %91 = load ptr, ptr %81, align 8, !tbaa !85
  tail call void %90(ptr noundef %91, i64 noundef %89) #5, !prof !96
  br label %68

92:                                               ; preds = %13
  %93 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %94 = add i64 %8, 1
  store i64 %94, ptr %3, align 8, !tbaa !70
  %95 = getelementptr inbounds i8, ptr %2, i64 %8
  %96 = load i8, ptr %95, align 1, !tbaa !65
  %97 = zext i8 %96 to i64
  %98 = shl nuw nsw i64 %97, 8
  store i64 %98, ptr %93, align 8, !tbaa !97
  store i32 4, ptr %0, align 8, !tbaa !55
  br label %68

99:                                               ; preds = %13
  %100 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %101 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %102 = add i64 %8, 1
  store i64 %102, ptr %3, align 8, !tbaa !70
  %103 = getelementptr inbounds i8, ptr %2, i64 %8
  %104 = load i8, ptr %103, align 1, !tbaa !65
  %105 = zext i8 %104 to i64
  %106 = add nuw nsw i64 %105, 1
  %107 = load i64, ptr %100, align 8, !tbaa !97
  %108 = add i64 %106, %107
  store i64 %108, ptr %100, align 8, !tbaa !97
  %109 = load i32, ptr %101, align 4, !tbaa !81
  store i32 %109, ptr %0, align 8, !tbaa !55
  br label %68

110:                                              ; preds = %13
  %111 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %112 = add i64 %8, 1
  store i64 %112, ptr %3, align 8, !tbaa !70
  %113 = getelementptr inbounds i8, ptr %2, i64 %8
  %114 = load i8, ptr %113, align 1, !tbaa !65
  %115 = tail call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %111, i8 noundef zeroext %114) #5
  br i1 %115, label %162, label %116, !prof !52

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %118 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !84
  %120 = load ptr, ptr %117, align 8, !tbaa !85
  tail call void %119(ptr noundef %120, ptr noundef nonnull %111) #5, !prof !98
  store i32 6, ptr %0, align 8, !tbaa !55
  br label %68

121:                                              ; preds = %13
  %122 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %123 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 1
  %124 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %125 = load ptr, ptr %123, align 8, !tbaa !99
  %126 = load ptr, ptr %122, align 8, !tbaa !85
  %127 = tail call i32 %125(ptr noundef %126, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #5, !prof !100
  %128 = load i64, ptr %3, align 8, !tbaa !70
  %129 = sub i64 %128, %8
  %130 = load i64, ptr %124, align 8, !tbaa !97
  %131 = icmp ugt i64 %129, %130
  br i1 %131, label %138, label %132, !prof !101

132:                                              ; preds = %121
  %133 = sub i64 %130, %129
  store i64 %133, ptr %124, align 8, !tbaa !97
  %134 = icmp eq i32 %127, 1
  br i1 %134, label %135, label %138, !prof !102

135:                                              ; preds = %132
  %136 = icmp eq i64 %130, %129
  br i1 %136, label %137, label %138, !prof !103

137:                                              ; preds = %135
  store i32 0, ptr %0, align 8, !tbaa !55
  br label %138

138:                                              ; preds = %135, %132, %121, %137
  %139 = phi i1 [ true, %137 ], [ false, %121 ], [ false, %132 ], [ false, %135 ]
  %140 = phi i32 [ %7, %137 ], [ 9, %121 ], [ %127, %132 ], [ 9, %135 ]
  br i1 %139, label %68, label %162, !prof !102

141:                                              ; preds = %13
  %142 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %143 = getelementptr inbounds %struct.lzma_dict, ptr %1, i64 0, i32 1
  %144 = getelementptr inbounds %struct.lzma_dict, ptr %1, i64 0, i32 3
  %145 = getelementptr inbounds %struct.lzma_dict, ptr %1, i64 0, i32 2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %146 = sub i64 %4, %8
  %147 = load i64, ptr %142, align 8, !tbaa !70, !alias.scope !107, !noalias !109
  %148 = icmp ugt i64 %146, %147
  %149 = add i64 %147, %8
  %150 = select i1 %148, i64 %149, i64 %4, !prof !112
  %151 = load ptr, ptr %1, align 8, !tbaa !113, !alias.scope !104, !noalias !114
  %152 = load i64, ptr %144, align 8, !tbaa !115, !alias.scope !104, !noalias !114
  %153 = tail call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef nonnull %3, i64 noundef %150, ptr noundef %151, ptr noundef nonnull %143, i64 noundef %152) #5, !noalias !107
  %154 = sub i64 %147, %153
  store i64 %154, ptr %142, align 8, !tbaa !70, !alias.scope !107, !noalias !109
  %155 = load i64, ptr %143, align 8, !tbaa !116, !alias.scope !104, !noalias !114
  %156 = load i64, ptr %145, align 8, !tbaa !117, !alias.scope !104, !noalias !114
  %157 = icmp ugt i64 %155, %156
  br i1 %157, label %158, label %159, !prof !118

158:                                              ; preds = %141
  store i64 %155, ptr %145, align 8, !tbaa !117, !alias.scope !104, !noalias !114
  br label %159

159:                                              ; preds = %141, %158
  %160 = icmp eq i64 %147, %153
  br i1 %160, label %161, label %162, !prof !119

161:                                              ; preds = %159
  store i32 0, ptr %0, align 8, !tbaa !55
  br label %68

162:                                              ; preds = %65, %13, %10, %159, %110, %138
  %163 = phi i32 [ %140, %138 ], [ 9, %110 ], [ 0, %159 ], [ 0, %10 ], [ 11, %13 ], [ %67, %65 ]
  ret i32 %163
}

; Function Attrs: cold nounwind uwtable
define internal void @lzma2_decoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !44 !PGOFuncName !120 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  tail call void @lzma_free(ptr noundef %4, ptr noundef %1) #5
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @lzma_lzma_decoder_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nounwind }

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
!35 = !{ptr @lzma_lzma2_decoder_init, ptr @lzma_lz_decoder_init, i64 2}
!36 = !{ptr @lzma2_decoder_init, ptr @lzma_alloc, i64 2}
!37 = !{ptr @lzma2_decoder_init, ptr @lzma_lzma_decoder_create, i64 2}
!38 = !{ptr @lzma_lzma2_decoder_memusage, ptr @lzma_lzma_decoder_memusage_nocheck, i64 2}
!39 = !{ptr @lzma_lzma2_props_decode, ptr @lzma_alloc, i64 2}
!40 = !{ptr @lzma2_decode, ptr @lzma_lzma_lclppb_decode, i64 2}
!41 = !{ptr @lzma2_decode, ptr @lzma_bufcpy, i64 1239}
!42 = !{ptr @lzma2_decoder_end, ptr @lzma_free, i64 4}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 2}
!45 = !{!"liblzma/lzma/lzma2_decoder.c;lzma2_decoder_init"}
!46 = !{!47, !48, i64 0}
!47 = !{!"", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!"branch_weights", i32 2, i32 0}
!52 = !{!"branch_weights", i32 0, i32 2}
!53 = !{!47, !48, i64 8}
!54 = !{!47, !48, i64 32}
!55 = !{!56, !57, i64 0}
!56 = !{!"lzma_coder_s", !57, i64 0, !57, i64 4, !47, i64 8, !58, i64 48, !58, i64 56, !59, i64 64, !59, i64 65, !60, i64 72}
!57 = !{!"int", !49, i64 0}
!58 = !{!"long", !49, i64 0}
!59 = !{!"_Bool", !49, i64 0}
!60 = !{!"", !57, i64 0, !48, i64 8, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !57, i64 48, !57, i64 52, !57, i64 56, !57, i64 60, !57, i64 64, !57, i64 68, !57, i64 72, !57, i64 76, !57, i64 80, !57, i64 84, !57, i64 88, !57, i64 92, !48, i64 96, !48, i64 104}
!61 = !{!56, !59, i64 64}
!62 = !{!60, !48, i64 8}
!63 = !{!60, !57, i64 16}
!64 = !{!56, !59, i64 65}
!65 = !{!49, !49, i64 0}
!66 = !{!60, !57, i64 0}
!67 = !{!48, !48, i64 0}
!68 = !{!"function_entry_count", i64 44549}
!69 = !{!"liblzma/lzma/lzma2_decoder.c;lzma2_decode"}
!70 = !{!58, !58, i64 0}
!71 = !{!"branch_weights", i32 49193, i32 0}
!72 = !{!"branch_weights", i32 0, i32 802, i32 722, i32 722, i32 800, i32 800, i32 2, i32 44106, i32 1239}
!73 = !{!"branch_weights", i32 2, i32 800}
!74 = !{!"branch_weights", i32 2, i32 798}
!75 = !{i8 0, i8 2}
!76 = !{}
!77 = !{!"branch_weights", i32 798, i32 0}
!78 = !{!"branch_weights", i32 722, i32 78}
!79 = !{!56, !58, i64 48}
!80 = !{!"branch_weights", i32 2, i32 720}
!81 = !{!56, !57, i64 4}
!82 = !{!"branch_weights", i32 720, i32 0}
!83 = !{!"branch_weights", i32 12, i32 708}
!84 = !{!56, !48, i64 24}
!85 = !{!56, !48, i64 8}
!86 = !{!"VP", i32 0, i64 12, i64 -4268869234629702071, i64 12}
!87 = !{!"branch_weights", i32 0, i32 78}
!88 = !{!"branch_weights", i32 798, i32 2}
!89 = !{!90, !59, i64 40}
!90 = !{!"", !48, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !59, i64 40}
!91 = !{!"branch_weights", i32 798, i32 4}
!92 = distinct !{!92, !93, !94}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!56, !48, i64 32}
!96 = !{!"VP", i32 0, i64 722, i64 -5243619492426273755, i64 722}
!97 = !{!56, !58, i64 56}
!98 = !{!"VP", i32 0, i64 2, i64 -4268869234629702071, i64 2}
!99 = !{!56, !48, i64 16}
!100 = !{!"VP", i32 0, i64 44106, i64 -9151768240784648061, i64 44106}
!101 = !{!"branch_weights", i32 0, i32 44106}
!102 = !{!"branch_weights", i32 722, i32 43384}
!103 = !{!"branch_weights", i32 722, i32 0}
!104 = !{!105}
!105 = distinct !{!105, !106, !"dict_write: argument 0"}
!106 = distinct !{!106, !"dict_write"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"dict_write: argument 3"}
!109 = !{!105, !110, !111}
!110 = distinct !{!110, !106, !"dict_write: argument 1"}
!111 = distinct !{!111, !106, !"dict_write: argument 2"}
!112 = !{!"branch_weights", i32 126, i32 1113}
!113 = !{!90, !48, i64 0}
!114 = !{!110, !111, !108}
!115 = !{!90, !58, i64 24}
!116 = !{!90, !58, i64 8}
!117 = !{!90, !58, i64 16}
!118 = !{!"branch_weights", i32 414, i32 825}
!119 = !{!"branch_weights", i32 78, i32 1161}
!120 = !{!"liblzma/lzma/lzma2_decoder.c;lzma2_decoder_end"}
