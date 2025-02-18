; ModuleID = 'liblzma/lzma/lzma_decoder.c'
source_filename = "liblzma/lzma/lzma_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_lz_decoder = type { ptr, ptr, ptr, ptr, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_lz_options = type { i64, ptr, i64 }
%struct.lzma_coder_s = type { [16 x [768 x i16]], [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_length_decoder, %struct.lzma_length_decoder, %struct.lzma_range_decoder, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, ptr, i32, i32, i32, i32 }
%struct.lzma_length_decoder = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16] }
%struct.lzma_range_decoder = type { i32, i32, i32 }

@lzma_decode.next_state = internal unnamed_addr constant [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 4, i32 5], align 16

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_lzma_decoder_create(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 !prof !38 {
  %5 = load ptr, ptr %0, align 8, !tbaa !39
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14, !prof !44

7:                                                ; preds = %4
  %8 = tail call ptr @lzma_alloc(i64 noundef 28352, ptr noundef %1) #9
  store ptr %8, ptr %0, align 8, !tbaa !39
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10, !prof !45

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 1
  store ptr @lzma_decode, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 2
  store ptr @lzma_decoder_reset, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 3
  store ptr @lzma_decoder_uncompressed, ptr %13, align 8, !tbaa !48
  br label %14

14:                                               ; preds = %10, %4
  %15 = load i32, ptr %2, align 8, !tbaa !49
  %16 = zext i32 %15 to i64
  store i64 %16, ptr %3, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !57
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 2
  store i64 %22, ptr %23, align 8, !tbaa !58
  br label %24

24:                                               ; preds = %7, %14
  %25 = phi i32 [ 0, %14 ], [ 5, %7 ]
  ret i32 %25
}

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind uwtable
define internal i32 @lzma_decode(ptr noundef %0, ptr noalias nocapture noundef %1, ptr noalias noundef readonly %2, ptr noalias nocapture noundef %3, i64 noundef %4) #2 !prof !59 !PGOFuncName !60 {
  %6 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %27, label %10, !prof !66

10:                                               ; preds = %5
  %11 = load i64, ptr %3, align 8, !tbaa !67, !alias.scope !64, !noalias !61
  br label %12

12:                                               ; preds = %10, %16
  %13 = phi i64 [ %11, %10 ], [ %24, %16 ]
  %14 = phi i32 [ %8, %10 ], [ %25, %16 ]
  %15 = icmp eq i64 %13, %4
  br i1 %15, label %4148, label %16, !prof !68

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !69, !noalias !71
  %19 = shl i32 %18, 8
  %20 = getelementptr inbounds i8, ptr %2, i64 %13
  %21 = load i8, ptr %20, align 1, !tbaa !72, !alias.scope !61, !noalias !64
  %22 = zext i8 %21 to i32
  %23 = or disjoint i32 %19, %22
  store i32 %23, ptr %17, align 4, !tbaa !69, !noalias !71
  %24 = add i64 %13, 1
  store i64 %24, ptr %3, align 8, !tbaa !67, !alias.scope !64, !noalias !61
  %25 = add i32 %14, -1
  store i32 %25, ptr %7, align 4, !tbaa !73, !noalias !71
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %12, !prof !74, !llvm.loop !75

27:                                               ; preds = %16, %5
  %28 = phi i32 [ %8, %5 ], [ %25, %16 ]
  %29 = load ptr, ptr %1, align 8, !tbaa.struct !78
  %30 = getelementptr inbounds i8, ptr %1, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa.struct !82
  %32 = getelementptr inbounds i8, ptr %1, i64 16
  %33 = load i64, ptr %32, align 8, !tbaa.struct !83
  %34 = getelementptr inbounds i8, ptr %1, i64 24
  %35 = load i64, ptr %34, align 8, !tbaa.struct !84
  %36 = getelementptr inbounds i8, ptr %1, i64 32
  %37 = load i64, ptr %36, align 8, !tbaa.struct !85
  %38 = load i32, ptr %6, align 4, !tbaa.struct !86
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa.struct !88
  %41 = load i64, ptr %3, align 8, !tbaa !67
  %42 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13
  %43 = load i32, ptr %42, align 8, !tbaa !89
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14
  %45 = load i32, ptr %44, align 4, !tbaa !93
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15
  %47 = load i32, ptr %46, align 8, !tbaa !94
  %48 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 16
  %49 = load i32, ptr %48, align 4, !tbaa !95
  %50 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 17
  %51 = load i32, ptr %50, align 8, !tbaa !96
  %52 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18
  %53 = load i32, ptr %52, align 4, !tbaa !97
  %54 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  %55 = load ptr, ptr %54, align 8, !tbaa !98
  %56 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 24
  %57 = load i32, ptr %56, align 8, !tbaa !99
  %58 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 25
  %59 = load i32, ptr %58, align 4, !tbaa !100
  %60 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 26
  %61 = load i32, ptr %60, align 8, !tbaa !101
  %62 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 27
  %63 = load i32, ptr %62, align 4, !tbaa !102
  %64 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20
  %65 = load i32, ptr %64, align 4, !tbaa !103
  %66 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 19
  %67 = load i32, ptr %66, align 8, !tbaa !104
  %68 = trunc i64 %31 to i32
  %69 = and i32 %53, %68
  %70 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 21
  %71 = load i64, ptr %70, align 8, !tbaa !105
  %72 = icmp ne i64 %71, -1
  %73 = sub i64 %35, %31
  %74 = icmp ult i64 %71, %73
  %75 = select i1 %72, i1 %74, i1 false, !prof !106
  %76 = add i64 %71, %31
  %77 = select i1 %75, i64 %76, i64 %35, !prof !107
  %78 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22
  %79 = load i32, ptr %78, align 8, !tbaa !108
  switch i32 %79, label %4079 [
    i32 0, label %98
    i32 1, label %98
    i32 2, label %164
    i32 3, label %215
    i32 4, label %266
    i32 5, label %317
    i32 6, label %368
    i32 7, label %419
    i32 8, label %470
    i32 9, label %521
    i32 10, label %582
    i32 11, label %643
    i32 12, label %704
    i32 13, label %765
    i32 14, label %826
    i32 15, label %887
    i32 16, label %948
    i32 17, label %1009
    i32 18, label %1083
    i32 19, label %1114
    i32 20, label %1161
    i32 21, label %1205
    i32 22, label %1258
    i32 23, label %1311
    i32 24, label %1374
    i32 25, label %1418
    i32 26, label %1471
    i32 27, label %1524
    i32 28, label %1587
    i32 29, label %1638
    i32 30, label %1689
    i32 31, label %1740
    i32 32, label %1791
    i32 33, label %1842
    i32 34, label %1893
    i32 35, label %1944
    i32 36, label %2019
    i32 37, label %2070
    i32 38, label %2121
    i32 39, label %2172
    i32 40, label %2223
    i32 41, label %2274
    i32 42, label %2346
    i32 43, label %2599
    i32 44, label %2649
    i32 45, label %2701
    i32 46, label %2753
    i32 47, label %2805
    i32 48, label %2863
    i32 49, label %2915
    i32 51, label %2960
    i32 50, label %3008
    i32 52, label %3050
    i32 53, label %3100
    i32 54, label %3168
    i32 55, label %3212
    i32 56, label %3265
    i32 57, label %3318
    i32 58, label %3381
    i32 59, label %3425
    i32 60, label %3478
    i32 61, label %3531
    i32 62, label %3594
    i32 63, label %3645
    i32 64, label %3696
    i32 65, label %3747
    i32 66, label %3798
    i32 67, label %3849
    i32 68, label %3900
    i32 69, label %3951
    i32 70, label %4007
  ], !prof !109

80:                                               ; preds = %4074, %3036, %1105
  %81 = phi i64 [ %4076, %4074 ], [ %1106, %1105 ], [ %3037, %3036 ]
  %82 = phi i64 [ %4075, %4074 ], [ %1107, %1105 ], [ %3038, %3036 ]
  %83 = phi i32 [ %4028, %4074 ], [ %1086, %1105 ], [ %3011, %3036 ]
  %84 = phi i32 [ %4011, %4074 ], [ %1087, %1105 ], [ %3012, %3036 ]
  %85 = phi i32 [ %4012, %4074 ], [ %1088, %1105 ], [ %3013, %3036 ]
  %86 = phi i32 [ %4013, %4074 ], [ %1089, %1105 ], [ %3014, %3036 ]
  %87 = phi i32 [ %4014, %4074 ], [ %1090, %1105 ], [ %3015, %3036 ]
  %88 = phi i32 [ %4015, %4074 ], [ %1091, %1105 ], [ %3016, %3036 ]
  %89 = phi ptr [ %4016, %4074 ], [ %1092, %1105 ], [ %3017, %3036 ]
  %90 = phi i32 [ %4017, %4074 ], [ %1093, %1105 ], [ %3018, %3036 ]
  %91 = phi i32 [ %4018, %4074 ], [ %1094, %1105 ], [ %3019, %3036 ]
  %92 = phi i32 [ %4019, %4074 ], [ %1095, %1105 ], [ %3020, %3036 ]
  %93 = phi i64 [ %4020, %4074 ], [ %1096, %1105 ], [ %3021, %3036 ]
  %94 = phi i32 [ %4021, %4074 ], [ %1097, %1105 ], [ %3022, %3036 ]
  %95 = phi i32 [ %4022, %4074 ], [ %1098, %1105 ], [ %3023, %3036 ]
  %96 = trunc i64 %82 to i32
  %97 = and i32 %53, %96
  br label %98

98:                                               ; preds = %27, %27, %80
  %99 = phi i64 [ %81, %80 ], [ %33, %27 ], [ %33, %27 ]
  %100 = phi i64 [ %82, %80 ], [ %31, %27 ], [ %31, %27 ]
  %101 = phi i32 [ %83, %80 ], [ %63, %27 ], [ %63, %27 ]
  %102 = phi i32 [ %84, %80 ], [ %45, %27 ], [ %45, %27 ]
  %103 = phi i32 [ %85, %80 ], [ %47, %27 ], [ %47, %27 ]
  %104 = phi i32 [ %86, %80 ], [ %49, %27 ], [ %49, %27 ]
  %105 = phi i32 [ %87, %80 ], [ %51, %27 ], [ %51, %27 ]
  %106 = phi i32 [ %88, %80 ], [ %43, %27 ], [ %43, %27 ]
  %107 = phi ptr [ %89, %80 ], [ %55, %27 ], [ %55, %27 ]
  %108 = phi i32 [ %90, %80 ], [ %57, %27 ], [ %57, %27 ]
  %109 = phi i32 [ %91, %80 ], [ %59, %27 ], [ %59, %27 ]
  %110 = phi i32 [ %92, %80 ], [ %61, %27 ], [ %61, %27 ]
  %111 = phi i64 [ %93, %80 ], [ %41, %27 ], [ %41, %27 ]
  %112 = phi i32 [ %97, %80 ], [ %69, %27 ], [ %69, %27 ]
  %113 = phi i32 [ %94, %80 ], [ %38, %27 ], [ %38, %27 ]
  %114 = phi i32 [ %95, %80 ], [ %40, %27 ], [ %40, %27 ]
  %115 = icmp eq i64 %100, %77
  %116 = select i1 %72, i1 %115, i1 false, !prof !110
  br i1 %116, label %4079, label %117, !prof !111, !irr_loop !112

117:                                              ; preds = %98
  %118 = icmp ult i32 %113, 16777216
  br i1 %118, label %119, label %130, !prof !113

119:                                              ; preds = %117
  %120 = icmp eq i64 %111, %4
  br i1 %120, label %121, label %122, !prof !114

121:                                              ; preds = %119
  store i32 1, ptr %78, align 8, !tbaa !108
  br label %4111

122:                                              ; preds = %119
  %123 = shl nuw i32 %113, 8
  %124 = shl i32 %114, 8
  %125 = add i64 %111, 1
  %126 = getelementptr inbounds i8, ptr %2, i64 %111
  %127 = load i8, ptr %126, align 1, !tbaa !72
  %128 = zext i8 %127 to i32
  %129 = or disjoint i32 %124, %128
  br label %130

130:                                              ; preds = %122, %117
  %131 = phi i64 [ %125, %122 ], [ %111, %117 ]
  %132 = phi i32 [ %123, %122 ], [ %113, %117 ]
  %133 = phi i32 [ %129, %122 ], [ %114, %117 ]
  %134 = lshr i32 %132, 11
  %135 = zext i32 %106 to i64
  %136 = zext i32 %112 to i64
  %137 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i64 %135, i64 %136
  %138 = load i16, ptr %137, align 2, !tbaa !115
  %139 = zext i16 %138 to i32
  %140 = mul i32 %134, %139
  %141 = icmp ult i32 %133, %140
  br i1 %141, label %142, label %1109, !prof !116

142:                                              ; preds = %130
  %143 = sub nsw i32 2048, %139
  %144 = lshr i32 %143, 5
  %145 = trunc i32 %144 to i16
  %146 = add i16 %138, %145
  store i16 %146, ptr %137, align 2, !tbaa !115
  %147 = zext i32 %65 to i64
  %148 = and i64 %100, %147
  %149 = zext nneg i32 %67 to i64
  %150 = shl i64 %148, %149
  %151 = icmp eq i64 %100, 0
  %152 = select i1 %151, i64 %37, i64 0, !prof !117
  %153 = getelementptr i8, ptr %29, i64 %100
  %154 = getelementptr i8, ptr %153, i64 -1
  %155 = getelementptr i8, ptr %154, i64 %152
  %156 = load i8, ptr %155, align 1, !tbaa !72
  %157 = zext i8 %156 to i32
  %158 = sub i32 8, %67
  %159 = lshr i32 %157, %158
  %160 = zext nneg i32 %159 to i64
  %161 = add i64 %150, %160
  %162 = getelementptr inbounds [16 x [768 x i16]], ptr %0, i64 0, i64 %161
  %163 = icmp ult i32 %106, 7
  br i1 %163, label %164, label %572, !prof !118

164:                                              ; preds = %142, %27
  %165 = phi i64 [ %99, %142 ], [ %33, %27 ]
  %166 = phi i64 [ %100, %142 ], [ %31, %27 ]
  %167 = phi i32 [ %101, %142 ], [ %63, %27 ]
  %168 = phi i32 [ %102, %142 ], [ %45, %27 ]
  %169 = phi i32 [ %103, %142 ], [ %47, %27 ]
  %170 = phi i32 [ %104, %142 ], [ %49, %27 ]
  %171 = phi i32 [ %105, %142 ], [ %51, %27 ]
  %172 = phi i32 [ %106, %142 ], [ %43, %27 ]
  %173 = phi ptr [ %162, %142 ], [ %55, %27 ]
  %174 = phi i32 [ 1, %142 ], [ %57, %27 ]
  %175 = phi i32 [ %109, %142 ], [ %59, %27 ]
  %176 = phi i32 [ %110, %142 ], [ %61, %27 ]
  %177 = phi i64 [ %131, %142 ], [ %41, %27 ]
  %178 = phi i32 [ %140, %142 ], [ %38, %27 ]
  %179 = phi i32 [ %133, %142 ], [ %40, %27 ]
  %180 = icmp ult i32 %178, 16777216
  br i1 %180, label %181, label %192, !prof !119, !irr_loop !120

181:                                              ; preds = %164
  %182 = icmp eq i64 %177, %4
  br i1 %182, label %183, label %184, !prof !121

183:                                              ; preds = %181
  store i32 2, ptr %78, align 8, !tbaa !108
  br label %4111

184:                                              ; preds = %181
  %185 = shl nuw i32 %178, 8
  %186 = shl i32 %179, 8
  %187 = add i64 %177, 1
  %188 = getelementptr inbounds i8, ptr %2, i64 %177
  %189 = load i8, ptr %188, align 1, !tbaa !72
  %190 = zext i8 %189 to i32
  %191 = or disjoint i32 %186, %190
  br label %192

192:                                              ; preds = %184, %164
  %193 = phi i64 [ %187, %184 ], [ %177, %164 ]
  %194 = phi i32 [ %185, %184 ], [ %178, %164 ]
  %195 = phi i32 [ %191, %184 ], [ %179, %164 ]
  %196 = lshr i32 %194, 11
  %197 = zext i32 %174 to i64
  %198 = getelementptr inbounds i16, ptr %173, i64 %197
  %199 = load i16, ptr %198, align 2, !tbaa !115
  %200 = zext i16 %199 to i32
  %201 = mul i32 %196, %200
  %202 = icmp ult i32 %195, %201
  %203 = shl i32 %174, 1
  br i1 %202, label %204, label %209, !prof !122

204:                                              ; preds = %192
  %205 = sub nsw i32 2048, %200
  %206 = lshr i32 %205, 5
  %207 = trunc i32 %206 to i16
  %208 = add i16 %199, %207
  store i16 %208, ptr %198, align 2, !tbaa !115
  br label %215

209:                                              ; preds = %192
  %210 = sub i32 %194, %201
  %211 = sub i32 %195, %201
  %212 = lshr i16 %199, 5
  %213 = sub i16 %199, %212
  store i16 %213, ptr %198, align 2, !tbaa !115
  %214 = or disjoint i32 %203, 1
  br label %215

215:                                              ; preds = %204, %209, %27
  %216 = phi i64 [ %165, %204 ], [ %165, %209 ], [ %33, %27 ]
  %217 = phi i64 [ %166, %204 ], [ %166, %209 ], [ %31, %27 ]
  %218 = phi i32 [ %167, %204 ], [ %167, %209 ], [ %63, %27 ]
  %219 = phi i32 [ %168, %204 ], [ %168, %209 ], [ %45, %27 ]
  %220 = phi i32 [ %169, %204 ], [ %169, %209 ], [ %47, %27 ]
  %221 = phi i32 [ %170, %204 ], [ %170, %209 ], [ %49, %27 ]
  %222 = phi i32 [ %171, %204 ], [ %171, %209 ], [ %51, %27 ]
  %223 = phi i32 [ %172, %204 ], [ %172, %209 ], [ %43, %27 ]
  %224 = phi ptr [ %173, %204 ], [ %173, %209 ], [ %55, %27 ]
  %225 = phi i32 [ %203, %204 ], [ %214, %209 ], [ %57, %27 ]
  %226 = phi i32 [ %175, %204 ], [ %175, %209 ], [ %59, %27 ]
  %227 = phi i32 [ %176, %204 ], [ %176, %209 ], [ %61, %27 ]
  %228 = phi i64 [ %193, %204 ], [ %193, %209 ], [ %41, %27 ]
  %229 = phi i32 [ %201, %204 ], [ %210, %209 ], [ %38, %27 ]
  %230 = phi i32 [ %195, %204 ], [ %211, %209 ], [ %40, %27 ]
  %231 = icmp ult i32 %229, 16777216
  br i1 %231, label %232, label %243, !prof !123, !irr_loop !124

232:                                              ; preds = %215
  %233 = icmp eq i64 %228, %4
  br i1 %233, label %234, label %235, !prof !125

234:                                              ; preds = %232
  store i32 3, ptr %78, align 8, !tbaa !108
  br label %4111

235:                                              ; preds = %232
  %236 = shl nuw i32 %229, 8
  %237 = shl i32 %230, 8
  %238 = add i64 %228, 1
  %239 = getelementptr inbounds i8, ptr %2, i64 %228
  %240 = load i8, ptr %239, align 1, !tbaa !72
  %241 = zext i8 %240 to i32
  %242 = or disjoint i32 %237, %241
  br label %243

243:                                              ; preds = %235, %215
  %244 = phi i64 [ %238, %235 ], [ %228, %215 ]
  %245 = phi i32 [ %236, %235 ], [ %229, %215 ]
  %246 = phi i32 [ %242, %235 ], [ %230, %215 ]
  %247 = lshr i32 %245, 11
  %248 = zext i32 %225 to i64
  %249 = getelementptr inbounds i16, ptr %224, i64 %248
  %250 = load i16, ptr %249, align 2, !tbaa !115
  %251 = zext i16 %250 to i32
  %252 = mul i32 %247, %251
  %253 = icmp ult i32 %246, %252
  %254 = shl i32 %225, 1
  br i1 %253, label %255, label %260, !prof !126

255:                                              ; preds = %243
  %256 = sub nsw i32 2048, %251
  %257 = lshr i32 %256, 5
  %258 = trunc i32 %257 to i16
  %259 = add i16 %250, %258
  store i16 %259, ptr %249, align 2, !tbaa !115
  br label %266

260:                                              ; preds = %243
  %261 = sub i32 %245, %252
  %262 = sub i32 %246, %252
  %263 = lshr i16 %250, 5
  %264 = sub i16 %250, %263
  store i16 %264, ptr %249, align 2, !tbaa !115
  %265 = or disjoint i32 %254, 1
  br label %266

266:                                              ; preds = %255, %260, %27
  %267 = phi i64 [ %216, %255 ], [ %216, %260 ], [ %33, %27 ]
  %268 = phi i64 [ %217, %255 ], [ %217, %260 ], [ %31, %27 ]
  %269 = phi i32 [ %218, %255 ], [ %218, %260 ], [ %63, %27 ]
  %270 = phi i32 [ %219, %255 ], [ %219, %260 ], [ %45, %27 ]
  %271 = phi i32 [ %220, %255 ], [ %220, %260 ], [ %47, %27 ]
  %272 = phi i32 [ %221, %255 ], [ %221, %260 ], [ %49, %27 ]
  %273 = phi i32 [ %222, %255 ], [ %222, %260 ], [ %51, %27 ]
  %274 = phi i32 [ %223, %255 ], [ %223, %260 ], [ %43, %27 ]
  %275 = phi ptr [ %224, %255 ], [ %224, %260 ], [ %55, %27 ]
  %276 = phi i32 [ %254, %255 ], [ %265, %260 ], [ %57, %27 ]
  %277 = phi i32 [ %226, %255 ], [ %226, %260 ], [ %59, %27 ]
  %278 = phi i32 [ %227, %255 ], [ %227, %260 ], [ %61, %27 ]
  %279 = phi i64 [ %244, %255 ], [ %244, %260 ], [ %41, %27 ]
  %280 = phi i32 [ %252, %255 ], [ %261, %260 ], [ %38, %27 ]
  %281 = phi i32 [ %246, %255 ], [ %262, %260 ], [ %40, %27 ]
  %282 = icmp ult i32 %280, 16777216
  br i1 %282, label %283, label %294, !prof !127, !irr_loop !128

283:                                              ; preds = %266
  %284 = icmp eq i64 %279, %4
  br i1 %284, label %285, label %286, !prof !129

285:                                              ; preds = %283
  store i32 4, ptr %78, align 8, !tbaa !108
  br label %4111

286:                                              ; preds = %283
  %287 = shl nuw i32 %280, 8
  %288 = shl i32 %281, 8
  %289 = add i64 %279, 1
  %290 = getelementptr inbounds i8, ptr %2, i64 %279
  %291 = load i8, ptr %290, align 1, !tbaa !72
  %292 = zext i8 %291 to i32
  %293 = or disjoint i32 %288, %292
  br label %294

294:                                              ; preds = %286, %266
  %295 = phi i64 [ %289, %286 ], [ %279, %266 ]
  %296 = phi i32 [ %287, %286 ], [ %280, %266 ]
  %297 = phi i32 [ %293, %286 ], [ %281, %266 ]
  %298 = lshr i32 %296, 11
  %299 = zext i32 %276 to i64
  %300 = getelementptr inbounds i16, ptr %275, i64 %299
  %301 = load i16, ptr %300, align 2, !tbaa !115
  %302 = zext i16 %301 to i32
  %303 = mul i32 %298, %302
  %304 = icmp ult i32 %297, %303
  %305 = shl i32 %276, 1
  br i1 %304, label %306, label %311, !prof !130

306:                                              ; preds = %294
  %307 = sub nsw i32 2048, %302
  %308 = lshr i32 %307, 5
  %309 = trunc i32 %308 to i16
  %310 = add i16 %301, %309
  store i16 %310, ptr %300, align 2, !tbaa !115
  br label %317

311:                                              ; preds = %294
  %312 = sub i32 %296, %303
  %313 = sub i32 %297, %303
  %314 = lshr i16 %301, 5
  %315 = sub i16 %301, %314
  store i16 %315, ptr %300, align 2, !tbaa !115
  %316 = or disjoint i32 %305, 1
  br label %317

317:                                              ; preds = %306, %311, %27
  %318 = phi i64 [ %267, %306 ], [ %267, %311 ], [ %33, %27 ]
  %319 = phi i64 [ %268, %306 ], [ %268, %311 ], [ %31, %27 ]
  %320 = phi i32 [ %269, %306 ], [ %269, %311 ], [ %63, %27 ]
  %321 = phi i32 [ %270, %306 ], [ %270, %311 ], [ %45, %27 ]
  %322 = phi i32 [ %271, %306 ], [ %271, %311 ], [ %47, %27 ]
  %323 = phi i32 [ %272, %306 ], [ %272, %311 ], [ %49, %27 ]
  %324 = phi i32 [ %273, %306 ], [ %273, %311 ], [ %51, %27 ]
  %325 = phi i32 [ %274, %306 ], [ %274, %311 ], [ %43, %27 ]
  %326 = phi ptr [ %275, %306 ], [ %275, %311 ], [ %55, %27 ]
  %327 = phi i32 [ %305, %306 ], [ %316, %311 ], [ %57, %27 ]
  %328 = phi i32 [ %277, %306 ], [ %277, %311 ], [ %59, %27 ]
  %329 = phi i32 [ %278, %306 ], [ %278, %311 ], [ %61, %27 ]
  %330 = phi i64 [ %295, %306 ], [ %295, %311 ], [ %41, %27 ]
  %331 = phi i32 [ %303, %306 ], [ %312, %311 ], [ %38, %27 ]
  %332 = phi i32 [ %297, %306 ], [ %313, %311 ], [ %40, %27 ]
  %333 = icmp ult i32 %331, 16777216
  br i1 %333, label %334, label %345, !prof !131, !irr_loop !132

334:                                              ; preds = %317
  %335 = icmp eq i64 %330, %4
  br i1 %335, label %336, label %337, !prof !133

336:                                              ; preds = %334
  store i32 5, ptr %78, align 8, !tbaa !108
  br label %4111

337:                                              ; preds = %334
  %338 = shl nuw i32 %331, 8
  %339 = shl i32 %332, 8
  %340 = add i64 %330, 1
  %341 = getelementptr inbounds i8, ptr %2, i64 %330
  %342 = load i8, ptr %341, align 1, !tbaa !72
  %343 = zext i8 %342 to i32
  %344 = or disjoint i32 %339, %343
  br label %345

345:                                              ; preds = %337, %317
  %346 = phi i64 [ %340, %337 ], [ %330, %317 ]
  %347 = phi i32 [ %338, %337 ], [ %331, %317 ]
  %348 = phi i32 [ %344, %337 ], [ %332, %317 ]
  %349 = lshr i32 %347, 11
  %350 = zext i32 %327 to i64
  %351 = getelementptr inbounds i16, ptr %326, i64 %350
  %352 = load i16, ptr %351, align 2, !tbaa !115
  %353 = zext i16 %352 to i32
  %354 = mul i32 %349, %353
  %355 = icmp ult i32 %348, %354
  %356 = shl i32 %327, 1
  br i1 %355, label %357, label %362, !prof !134

357:                                              ; preds = %345
  %358 = sub nsw i32 2048, %353
  %359 = lshr i32 %358, 5
  %360 = trunc i32 %359 to i16
  %361 = add i16 %352, %360
  store i16 %361, ptr %351, align 2, !tbaa !115
  br label %368

362:                                              ; preds = %345
  %363 = sub i32 %347, %354
  %364 = sub i32 %348, %354
  %365 = lshr i16 %352, 5
  %366 = sub i16 %352, %365
  store i16 %366, ptr %351, align 2, !tbaa !115
  %367 = or disjoint i32 %356, 1
  br label %368

368:                                              ; preds = %357, %362, %27
  %369 = phi i64 [ %318, %357 ], [ %318, %362 ], [ %33, %27 ]
  %370 = phi i64 [ %319, %357 ], [ %319, %362 ], [ %31, %27 ]
  %371 = phi i32 [ %320, %357 ], [ %320, %362 ], [ %63, %27 ]
  %372 = phi i32 [ %321, %357 ], [ %321, %362 ], [ %45, %27 ]
  %373 = phi i32 [ %322, %357 ], [ %322, %362 ], [ %47, %27 ]
  %374 = phi i32 [ %323, %357 ], [ %323, %362 ], [ %49, %27 ]
  %375 = phi i32 [ %324, %357 ], [ %324, %362 ], [ %51, %27 ]
  %376 = phi i32 [ %325, %357 ], [ %325, %362 ], [ %43, %27 ]
  %377 = phi ptr [ %326, %357 ], [ %326, %362 ], [ %55, %27 ]
  %378 = phi i32 [ %356, %357 ], [ %367, %362 ], [ %57, %27 ]
  %379 = phi i32 [ %328, %357 ], [ %328, %362 ], [ %59, %27 ]
  %380 = phi i32 [ %329, %357 ], [ %329, %362 ], [ %61, %27 ]
  %381 = phi i64 [ %346, %357 ], [ %346, %362 ], [ %41, %27 ]
  %382 = phi i32 [ %354, %357 ], [ %363, %362 ], [ %38, %27 ]
  %383 = phi i32 [ %348, %357 ], [ %364, %362 ], [ %40, %27 ]
  %384 = icmp ult i32 %382, 16777216
  br i1 %384, label %385, label %396, !prof !135, !irr_loop !136

385:                                              ; preds = %368
  %386 = icmp eq i64 %381, %4
  br i1 %386, label %387, label %388, !prof !137

387:                                              ; preds = %385
  store i32 6, ptr %78, align 8, !tbaa !108
  br label %4111

388:                                              ; preds = %385
  %389 = shl nuw i32 %382, 8
  %390 = shl i32 %383, 8
  %391 = add i64 %381, 1
  %392 = getelementptr inbounds i8, ptr %2, i64 %381
  %393 = load i8, ptr %392, align 1, !tbaa !72
  %394 = zext i8 %393 to i32
  %395 = or disjoint i32 %390, %394
  br label %396

396:                                              ; preds = %388, %368
  %397 = phi i64 [ %391, %388 ], [ %381, %368 ]
  %398 = phi i32 [ %389, %388 ], [ %382, %368 ]
  %399 = phi i32 [ %395, %388 ], [ %383, %368 ]
  %400 = lshr i32 %398, 11
  %401 = zext i32 %378 to i64
  %402 = getelementptr inbounds i16, ptr %377, i64 %401
  %403 = load i16, ptr %402, align 2, !tbaa !115
  %404 = zext i16 %403 to i32
  %405 = mul i32 %400, %404
  %406 = icmp ult i32 %399, %405
  %407 = shl i32 %378, 1
  br i1 %406, label %408, label %413, !prof !138

408:                                              ; preds = %396
  %409 = sub nsw i32 2048, %404
  %410 = lshr i32 %409, 5
  %411 = trunc i32 %410 to i16
  %412 = add i16 %403, %411
  store i16 %412, ptr %402, align 2, !tbaa !115
  br label %419

413:                                              ; preds = %396
  %414 = sub i32 %398, %405
  %415 = sub i32 %399, %405
  %416 = lshr i16 %403, 5
  %417 = sub i16 %403, %416
  store i16 %417, ptr %402, align 2, !tbaa !115
  %418 = or disjoint i32 %407, 1
  br label %419

419:                                              ; preds = %408, %413, %27
  %420 = phi i64 [ %369, %408 ], [ %369, %413 ], [ %33, %27 ]
  %421 = phi i64 [ %370, %408 ], [ %370, %413 ], [ %31, %27 ]
  %422 = phi i32 [ %371, %408 ], [ %371, %413 ], [ %63, %27 ]
  %423 = phi i32 [ %372, %408 ], [ %372, %413 ], [ %45, %27 ]
  %424 = phi i32 [ %373, %408 ], [ %373, %413 ], [ %47, %27 ]
  %425 = phi i32 [ %374, %408 ], [ %374, %413 ], [ %49, %27 ]
  %426 = phi i32 [ %375, %408 ], [ %375, %413 ], [ %51, %27 ]
  %427 = phi i32 [ %376, %408 ], [ %376, %413 ], [ %43, %27 ]
  %428 = phi ptr [ %377, %408 ], [ %377, %413 ], [ %55, %27 ]
  %429 = phi i32 [ %407, %408 ], [ %418, %413 ], [ %57, %27 ]
  %430 = phi i32 [ %379, %408 ], [ %379, %413 ], [ %59, %27 ]
  %431 = phi i32 [ %380, %408 ], [ %380, %413 ], [ %61, %27 ]
  %432 = phi i64 [ %397, %408 ], [ %397, %413 ], [ %41, %27 ]
  %433 = phi i32 [ %405, %408 ], [ %414, %413 ], [ %38, %27 ]
  %434 = phi i32 [ %399, %408 ], [ %415, %413 ], [ %40, %27 ]
  %435 = icmp ult i32 %433, 16777216
  br i1 %435, label %436, label %447, !prof !139, !irr_loop !140

436:                                              ; preds = %419
  %437 = icmp eq i64 %432, %4
  br i1 %437, label %438, label %439, !prof !141

438:                                              ; preds = %436
  store i32 7, ptr %78, align 8, !tbaa !108
  br label %4111

439:                                              ; preds = %436
  %440 = shl nuw i32 %433, 8
  %441 = shl i32 %434, 8
  %442 = add i64 %432, 1
  %443 = getelementptr inbounds i8, ptr %2, i64 %432
  %444 = load i8, ptr %443, align 1, !tbaa !72
  %445 = zext i8 %444 to i32
  %446 = or disjoint i32 %441, %445
  br label %447

447:                                              ; preds = %439, %419
  %448 = phi i64 [ %442, %439 ], [ %432, %419 ]
  %449 = phi i32 [ %440, %439 ], [ %433, %419 ]
  %450 = phi i32 [ %446, %439 ], [ %434, %419 ]
  %451 = lshr i32 %449, 11
  %452 = zext i32 %429 to i64
  %453 = getelementptr inbounds i16, ptr %428, i64 %452
  %454 = load i16, ptr %453, align 2, !tbaa !115
  %455 = zext i16 %454 to i32
  %456 = mul i32 %451, %455
  %457 = icmp ult i32 %450, %456
  %458 = shl i32 %429, 1
  br i1 %457, label %459, label %464, !prof !142

459:                                              ; preds = %447
  %460 = sub nsw i32 2048, %455
  %461 = lshr i32 %460, 5
  %462 = trunc i32 %461 to i16
  %463 = add i16 %454, %462
  store i16 %463, ptr %453, align 2, !tbaa !115
  br label %470

464:                                              ; preds = %447
  %465 = sub i32 %449, %456
  %466 = sub i32 %450, %456
  %467 = lshr i16 %454, 5
  %468 = sub i16 %454, %467
  store i16 %468, ptr %453, align 2, !tbaa !115
  %469 = or disjoint i32 %458, 1
  br label %470

470:                                              ; preds = %459, %464, %27
  %471 = phi i64 [ %420, %459 ], [ %420, %464 ], [ %33, %27 ]
  %472 = phi i64 [ %421, %459 ], [ %421, %464 ], [ %31, %27 ]
  %473 = phi i32 [ %422, %459 ], [ %422, %464 ], [ %63, %27 ]
  %474 = phi i32 [ %423, %459 ], [ %423, %464 ], [ %45, %27 ]
  %475 = phi i32 [ %424, %459 ], [ %424, %464 ], [ %47, %27 ]
  %476 = phi i32 [ %425, %459 ], [ %425, %464 ], [ %49, %27 ]
  %477 = phi i32 [ %426, %459 ], [ %426, %464 ], [ %51, %27 ]
  %478 = phi i32 [ %427, %459 ], [ %427, %464 ], [ %43, %27 ]
  %479 = phi ptr [ %428, %459 ], [ %428, %464 ], [ %55, %27 ]
  %480 = phi i32 [ %458, %459 ], [ %469, %464 ], [ %57, %27 ]
  %481 = phi i32 [ %430, %459 ], [ %430, %464 ], [ %59, %27 ]
  %482 = phi i32 [ %431, %459 ], [ %431, %464 ], [ %61, %27 ]
  %483 = phi i64 [ %448, %459 ], [ %448, %464 ], [ %41, %27 ]
  %484 = phi i32 [ %456, %459 ], [ %465, %464 ], [ %38, %27 ]
  %485 = phi i32 [ %450, %459 ], [ %466, %464 ], [ %40, %27 ]
  %486 = icmp ult i32 %484, 16777216
  br i1 %486, label %487, label %498, !prof !143, !irr_loop !144

487:                                              ; preds = %470
  %488 = icmp eq i64 %483, %4
  br i1 %488, label %489, label %490, !prof !145

489:                                              ; preds = %487
  store i32 8, ptr %78, align 8, !tbaa !108
  br label %4111

490:                                              ; preds = %487
  %491 = shl nuw i32 %484, 8
  %492 = shl i32 %485, 8
  %493 = add i64 %483, 1
  %494 = getelementptr inbounds i8, ptr %2, i64 %483
  %495 = load i8, ptr %494, align 1, !tbaa !72
  %496 = zext i8 %495 to i32
  %497 = or disjoint i32 %492, %496
  br label %498

498:                                              ; preds = %490, %470
  %499 = phi i64 [ %493, %490 ], [ %483, %470 ]
  %500 = phi i32 [ %491, %490 ], [ %484, %470 ]
  %501 = phi i32 [ %497, %490 ], [ %485, %470 ]
  %502 = lshr i32 %500, 11
  %503 = zext i32 %480 to i64
  %504 = getelementptr inbounds i16, ptr %479, i64 %503
  %505 = load i16, ptr %504, align 2, !tbaa !115
  %506 = zext i16 %505 to i32
  %507 = mul i32 %502, %506
  %508 = icmp ult i32 %501, %507
  %509 = shl i32 %480, 1
  br i1 %508, label %510, label %515, !prof !146

510:                                              ; preds = %498
  %511 = sub nsw i32 2048, %506
  %512 = lshr i32 %511, 5
  %513 = trunc i32 %512 to i16
  %514 = add i16 %505, %513
  store i16 %514, ptr %504, align 2, !tbaa !115
  br label %521

515:                                              ; preds = %498
  %516 = sub i32 %500, %507
  %517 = sub i32 %501, %507
  %518 = lshr i16 %505, 5
  %519 = sub i16 %505, %518
  store i16 %519, ptr %504, align 2, !tbaa !115
  %520 = or disjoint i32 %509, 1
  br label %521

521:                                              ; preds = %510, %515, %27
  %522 = phi i64 [ %471, %510 ], [ %471, %515 ], [ %33, %27 ]
  %523 = phi i64 [ %472, %510 ], [ %472, %515 ], [ %31, %27 ]
  %524 = phi i32 [ %473, %510 ], [ %473, %515 ], [ %63, %27 ]
  %525 = phi i32 [ %474, %510 ], [ %474, %515 ], [ %45, %27 ]
  %526 = phi i32 [ %475, %510 ], [ %475, %515 ], [ %47, %27 ]
  %527 = phi i32 [ %476, %510 ], [ %476, %515 ], [ %49, %27 ]
  %528 = phi i32 [ %477, %510 ], [ %477, %515 ], [ %51, %27 ]
  %529 = phi i32 [ %478, %510 ], [ %478, %515 ], [ %43, %27 ]
  %530 = phi ptr [ %479, %510 ], [ %479, %515 ], [ %55, %27 ]
  %531 = phi i32 [ %509, %510 ], [ %520, %515 ], [ %57, %27 ]
  %532 = phi i32 [ %481, %510 ], [ %481, %515 ], [ %59, %27 ]
  %533 = phi i32 [ %482, %510 ], [ %482, %515 ], [ %61, %27 ]
  %534 = phi i64 [ %499, %510 ], [ %499, %515 ], [ %41, %27 ]
  %535 = phi i32 [ %507, %510 ], [ %516, %515 ], [ %38, %27 ]
  %536 = phi i32 [ %501, %510 ], [ %517, %515 ], [ %40, %27 ]
  %537 = icmp ult i32 %535, 16777216
  br i1 %537, label %538, label %549, !prof !147, !irr_loop !148

538:                                              ; preds = %521
  %539 = icmp eq i64 %534, %4
  br i1 %539, label %540, label %541, !prof !149

540:                                              ; preds = %538
  store i32 9, ptr %78, align 8, !tbaa !108
  br label %4111

541:                                              ; preds = %538
  %542 = shl nuw i32 %535, 8
  %543 = shl i32 %536, 8
  %544 = add i64 %534, 1
  %545 = getelementptr inbounds i8, ptr %2, i64 %534
  %546 = load i8, ptr %545, align 1, !tbaa !72
  %547 = zext i8 %546 to i32
  %548 = or disjoint i32 %543, %547
  br label %549

549:                                              ; preds = %541, %521
  %550 = phi i64 [ %544, %541 ], [ %534, %521 ]
  %551 = phi i32 [ %542, %541 ], [ %535, %521 ]
  %552 = phi i32 [ %548, %541 ], [ %536, %521 ]
  %553 = lshr i32 %551, 11
  %554 = zext i32 %531 to i64
  %555 = getelementptr inbounds i16, ptr %530, i64 %554
  %556 = load i16, ptr %555, align 2, !tbaa !115
  %557 = zext i16 %556 to i32
  %558 = mul i32 %553, %557
  %559 = icmp ult i32 %552, %558
  %560 = shl i32 %531, 1
  br i1 %559, label %561, label %566, !prof !150

561:                                              ; preds = %549
  %562 = sub nsw i32 2048, %557
  %563 = lshr i32 %562, 5
  %564 = trunc i32 %563 to i16
  %565 = add i16 %556, %564
  store i16 %565, ptr %555, align 2, !tbaa !115
  br label %1064

566:                                              ; preds = %549
  %567 = sub i32 %551, %558
  %568 = sub i32 %552, %558
  %569 = lshr i16 %556, 5
  %570 = sub i16 %556, %569
  store i16 %570, ptr %555, align 2, !tbaa !115
  %571 = or disjoint i32 %560, 1
  br label %1064

572:                                              ; preds = %142
  %573 = zext i32 %102 to i64
  %574 = icmp ugt i64 %100, %573
  %575 = select i1 %574, i64 0, i64 %37, !prof !151
  %576 = xor i64 %573, -1
  %577 = getelementptr i8, ptr %153, i64 %576
  %578 = getelementptr i8, ptr %577, i64 %575
  %579 = load i8, ptr %578, align 1, !tbaa !72
  %580 = zext i8 %579 to i32
  %581 = shl nuw nsw i32 %580, 1
  br label %582

582:                                              ; preds = %27, %572
  %583 = phi i64 [ %99, %572 ], [ %33, %27 ]
  %584 = phi i64 [ %100, %572 ], [ %31, %27 ]
  %585 = phi i32 [ %581, %572 ], [ %63, %27 ]
  %586 = phi i32 [ %102, %572 ], [ %45, %27 ]
  %587 = phi i32 [ %103, %572 ], [ %47, %27 ]
  %588 = phi i32 [ %104, %572 ], [ %49, %27 ]
  %589 = phi i32 [ %105, %572 ], [ %51, %27 ]
  %590 = phi i32 [ %106, %572 ], [ %43, %27 ]
  %591 = phi ptr [ %162, %572 ], [ %55, %27 ]
  %592 = phi i32 [ 1, %572 ], [ %57, %27 ]
  %593 = phi i32 [ %109, %572 ], [ %59, %27 ]
  %594 = phi i32 [ 256, %572 ], [ %61, %27 ]
  %595 = phi i64 [ %131, %572 ], [ %41, %27 ]
  %596 = phi i32 [ %140, %572 ], [ %38, %27 ]
  %597 = phi i32 [ %133, %572 ], [ %40, %27 ]
  %598 = and i32 %594, %585
  %599 = add i32 %594, %592
  %600 = add i32 %599, %598
  %601 = icmp ult i32 %596, 16777216
  br i1 %601, label %602, label %613, !prof !152, !irr_loop !153

602:                                              ; preds = %582
  %603 = icmp eq i64 %595, %4
  br i1 %603, label %604, label %605, !prof !154

604:                                              ; preds = %602
  store i32 10, ptr %78, align 8, !tbaa !108
  br label %4111

605:                                              ; preds = %602
  %606 = shl nuw i32 %596, 8
  %607 = shl i32 %597, 8
  %608 = add i64 %595, 1
  %609 = getelementptr inbounds i8, ptr %2, i64 %595
  %610 = load i8, ptr %609, align 1, !tbaa !72
  %611 = zext i8 %610 to i32
  %612 = or disjoint i32 %607, %611
  br label %613

613:                                              ; preds = %605, %582
  %614 = phi i64 [ %608, %605 ], [ %595, %582 ]
  %615 = phi i32 [ %606, %605 ], [ %596, %582 ]
  %616 = phi i32 [ %612, %605 ], [ %597, %582 ]
  %617 = lshr i32 %615, 11
  %618 = zext i32 %600 to i64
  %619 = getelementptr inbounds i16, ptr %591, i64 %618
  %620 = load i16, ptr %619, align 2, !tbaa !115
  %621 = zext i16 %620 to i32
  %622 = mul i32 %617, %621
  %623 = icmp ult i32 %616, %622
  %624 = shl i32 %592, 1
  br i1 %623, label %625, label %631, !prof !155

625:                                              ; preds = %613
  %626 = sub nsw i32 2048, %621
  %627 = lshr i32 %626, 5
  %628 = trunc i32 %627 to i16
  %629 = add i16 %620, %628
  store i16 %629, ptr %619, align 2, !tbaa !115
  %630 = xor i32 %598, %594
  br label %637

631:                                              ; preds = %613
  %632 = sub i32 %615, %622
  %633 = sub i32 %616, %622
  %634 = lshr i16 %620, 5
  %635 = sub i16 %620, %634
  store i16 %635, ptr %619, align 2, !tbaa !115
  %636 = or disjoint i32 %624, 1
  br label %637

637:                                              ; preds = %631, %625
  %638 = phi i32 [ %624, %625 ], [ %636, %631 ]
  %639 = phi i32 [ %630, %625 ], [ %598, %631 ]
  %640 = phi i32 [ %622, %625 ], [ %632, %631 ]
  %641 = phi i32 [ %616, %625 ], [ %633, %631 ]
  %642 = shl i32 %585, 1
  br label %643

643:                                              ; preds = %27, %637
  %644 = phi i64 [ %583, %637 ], [ %33, %27 ]
  %645 = phi i64 [ %584, %637 ], [ %31, %27 ]
  %646 = phi i32 [ %642, %637 ], [ %63, %27 ]
  %647 = phi i32 [ %586, %637 ], [ %45, %27 ]
  %648 = phi i32 [ %587, %637 ], [ %47, %27 ]
  %649 = phi i32 [ %588, %637 ], [ %49, %27 ]
  %650 = phi i32 [ %589, %637 ], [ %51, %27 ]
  %651 = phi i32 [ %590, %637 ], [ %43, %27 ]
  %652 = phi ptr [ %591, %637 ], [ %55, %27 ]
  %653 = phi i32 [ %638, %637 ], [ %57, %27 ]
  %654 = phi i32 [ %593, %637 ], [ %59, %27 ]
  %655 = phi i32 [ %639, %637 ], [ %61, %27 ]
  %656 = phi i64 [ %614, %637 ], [ %41, %27 ]
  %657 = phi i32 [ %640, %637 ], [ %38, %27 ]
  %658 = phi i32 [ %641, %637 ], [ %40, %27 ]
  %659 = and i32 %655, %646
  %660 = add i32 %655, %653
  %661 = add i32 %660, %659
  %662 = icmp ult i32 %657, 16777216
  br i1 %662, label %663, label %674, !prof !156, !irr_loop !157

663:                                              ; preds = %643
  %664 = icmp eq i64 %656, %4
  br i1 %664, label %665, label %666, !prof !158

665:                                              ; preds = %663
  store i32 11, ptr %78, align 8, !tbaa !108
  br label %4111

666:                                              ; preds = %663
  %667 = shl nuw i32 %657, 8
  %668 = shl i32 %658, 8
  %669 = add i64 %656, 1
  %670 = getelementptr inbounds i8, ptr %2, i64 %656
  %671 = load i8, ptr %670, align 1, !tbaa !72
  %672 = zext i8 %671 to i32
  %673 = or disjoint i32 %668, %672
  br label %674

674:                                              ; preds = %666, %643
  %675 = phi i64 [ %669, %666 ], [ %656, %643 ]
  %676 = phi i32 [ %667, %666 ], [ %657, %643 ]
  %677 = phi i32 [ %673, %666 ], [ %658, %643 ]
  %678 = lshr i32 %676, 11
  %679 = zext i32 %661 to i64
  %680 = getelementptr inbounds i16, ptr %652, i64 %679
  %681 = load i16, ptr %680, align 2, !tbaa !115
  %682 = zext i16 %681 to i32
  %683 = mul i32 %678, %682
  %684 = icmp ult i32 %677, %683
  %685 = shl i32 %653, 1
  br i1 %684, label %686, label %692, !prof !159

686:                                              ; preds = %674
  %687 = sub nsw i32 2048, %682
  %688 = lshr i32 %687, 5
  %689 = trunc i32 %688 to i16
  %690 = add i16 %681, %689
  store i16 %690, ptr %680, align 2, !tbaa !115
  %691 = xor i32 %659, %655
  br label %698

692:                                              ; preds = %674
  %693 = sub i32 %676, %683
  %694 = sub i32 %677, %683
  %695 = lshr i16 %681, 5
  %696 = sub i16 %681, %695
  store i16 %696, ptr %680, align 2, !tbaa !115
  %697 = or disjoint i32 %685, 1
  br label %698

698:                                              ; preds = %692, %686
  %699 = phi i32 [ %685, %686 ], [ %697, %692 ]
  %700 = phi i32 [ %691, %686 ], [ %659, %692 ]
  %701 = phi i32 [ %683, %686 ], [ %693, %692 ]
  %702 = phi i32 [ %677, %686 ], [ %694, %692 ]
  %703 = shl i32 %646, 1
  br label %704

704:                                              ; preds = %27, %698
  %705 = phi i64 [ %644, %698 ], [ %33, %27 ]
  %706 = phi i64 [ %645, %698 ], [ %31, %27 ]
  %707 = phi i32 [ %703, %698 ], [ %63, %27 ]
  %708 = phi i32 [ %647, %698 ], [ %45, %27 ]
  %709 = phi i32 [ %648, %698 ], [ %47, %27 ]
  %710 = phi i32 [ %649, %698 ], [ %49, %27 ]
  %711 = phi i32 [ %650, %698 ], [ %51, %27 ]
  %712 = phi i32 [ %651, %698 ], [ %43, %27 ]
  %713 = phi ptr [ %652, %698 ], [ %55, %27 ]
  %714 = phi i32 [ %699, %698 ], [ %57, %27 ]
  %715 = phi i32 [ %654, %698 ], [ %59, %27 ]
  %716 = phi i32 [ %700, %698 ], [ %61, %27 ]
  %717 = phi i64 [ %675, %698 ], [ %41, %27 ]
  %718 = phi i32 [ %701, %698 ], [ %38, %27 ]
  %719 = phi i32 [ %702, %698 ], [ %40, %27 ]
  %720 = and i32 %716, %707
  %721 = add i32 %716, %714
  %722 = add i32 %721, %720
  %723 = icmp ult i32 %718, 16777216
  br i1 %723, label %724, label %735, !prof !160, !irr_loop !161

724:                                              ; preds = %704
  %725 = icmp eq i64 %717, %4
  br i1 %725, label %726, label %727, !prof !162

726:                                              ; preds = %724
  store i32 12, ptr %78, align 8, !tbaa !108
  br label %4111

727:                                              ; preds = %724
  %728 = shl nuw i32 %718, 8
  %729 = shl i32 %719, 8
  %730 = add i64 %717, 1
  %731 = getelementptr inbounds i8, ptr %2, i64 %717
  %732 = load i8, ptr %731, align 1, !tbaa !72
  %733 = zext i8 %732 to i32
  %734 = or disjoint i32 %729, %733
  br label %735

735:                                              ; preds = %727, %704
  %736 = phi i64 [ %730, %727 ], [ %717, %704 ]
  %737 = phi i32 [ %728, %727 ], [ %718, %704 ]
  %738 = phi i32 [ %734, %727 ], [ %719, %704 ]
  %739 = lshr i32 %737, 11
  %740 = zext i32 %722 to i64
  %741 = getelementptr inbounds i16, ptr %713, i64 %740
  %742 = load i16, ptr %741, align 2, !tbaa !115
  %743 = zext i16 %742 to i32
  %744 = mul i32 %739, %743
  %745 = icmp ult i32 %738, %744
  %746 = shl i32 %714, 1
  br i1 %745, label %747, label %753, !prof !163

747:                                              ; preds = %735
  %748 = sub nsw i32 2048, %743
  %749 = lshr i32 %748, 5
  %750 = trunc i32 %749 to i16
  %751 = add i16 %742, %750
  store i16 %751, ptr %741, align 2, !tbaa !115
  %752 = xor i32 %720, %716
  br label %759

753:                                              ; preds = %735
  %754 = sub i32 %737, %744
  %755 = sub i32 %738, %744
  %756 = lshr i16 %742, 5
  %757 = sub i16 %742, %756
  store i16 %757, ptr %741, align 2, !tbaa !115
  %758 = or disjoint i32 %746, 1
  br label %759

759:                                              ; preds = %753, %747
  %760 = phi i32 [ %746, %747 ], [ %758, %753 ]
  %761 = phi i32 [ %752, %747 ], [ %720, %753 ]
  %762 = phi i32 [ %744, %747 ], [ %754, %753 ]
  %763 = phi i32 [ %738, %747 ], [ %755, %753 ]
  %764 = shl i32 %707, 1
  br label %765

765:                                              ; preds = %27, %759
  %766 = phi i64 [ %705, %759 ], [ %33, %27 ]
  %767 = phi i64 [ %706, %759 ], [ %31, %27 ]
  %768 = phi i32 [ %764, %759 ], [ %63, %27 ]
  %769 = phi i32 [ %708, %759 ], [ %45, %27 ]
  %770 = phi i32 [ %709, %759 ], [ %47, %27 ]
  %771 = phi i32 [ %710, %759 ], [ %49, %27 ]
  %772 = phi i32 [ %711, %759 ], [ %51, %27 ]
  %773 = phi i32 [ %712, %759 ], [ %43, %27 ]
  %774 = phi ptr [ %713, %759 ], [ %55, %27 ]
  %775 = phi i32 [ %760, %759 ], [ %57, %27 ]
  %776 = phi i32 [ %715, %759 ], [ %59, %27 ]
  %777 = phi i32 [ %761, %759 ], [ %61, %27 ]
  %778 = phi i64 [ %736, %759 ], [ %41, %27 ]
  %779 = phi i32 [ %762, %759 ], [ %38, %27 ]
  %780 = phi i32 [ %763, %759 ], [ %40, %27 ]
  %781 = and i32 %777, %768
  %782 = add i32 %777, %775
  %783 = add i32 %782, %781
  %784 = icmp ult i32 %779, 16777216
  br i1 %784, label %785, label %796, !prof !164, !irr_loop !165

785:                                              ; preds = %765
  %786 = icmp eq i64 %778, %4
  br i1 %786, label %787, label %788, !prof !166

787:                                              ; preds = %785
  store i32 13, ptr %78, align 8, !tbaa !108
  br label %4111

788:                                              ; preds = %785
  %789 = shl nuw i32 %779, 8
  %790 = shl i32 %780, 8
  %791 = add i64 %778, 1
  %792 = getelementptr inbounds i8, ptr %2, i64 %778
  %793 = load i8, ptr %792, align 1, !tbaa !72
  %794 = zext i8 %793 to i32
  %795 = or disjoint i32 %790, %794
  br label %796

796:                                              ; preds = %788, %765
  %797 = phi i64 [ %791, %788 ], [ %778, %765 ]
  %798 = phi i32 [ %789, %788 ], [ %779, %765 ]
  %799 = phi i32 [ %795, %788 ], [ %780, %765 ]
  %800 = lshr i32 %798, 11
  %801 = zext i32 %783 to i64
  %802 = getelementptr inbounds i16, ptr %774, i64 %801
  %803 = load i16, ptr %802, align 2, !tbaa !115
  %804 = zext i16 %803 to i32
  %805 = mul i32 %800, %804
  %806 = icmp ult i32 %799, %805
  %807 = shl i32 %775, 1
  br i1 %806, label %808, label %814, !prof !167

808:                                              ; preds = %796
  %809 = sub nsw i32 2048, %804
  %810 = lshr i32 %809, 5
  %811 = trunc i32 %810 to i16
  %812 = add i16 %803, %811
  store i16 %812, ptr %802, align 2, !tbaa !115
  %813 = xor i32 %781, %777
  br label %820

814:                                              ; preds = %796
  %815 = sub i32 %798, %805
  %816 = sub i32 %799, %805
  %817 = lshr i16 %803, 5
  %818 = sub i16 %803, %817
  store i16 %818, ptr %802, align 2, !tbaa !115
  %819 = or disjoint i32 %807, 1
  br label %820

820:                                              ; preds = %814, %808
  %821 = phi i32 [ %807, %808 ], [ %819, %814 ]
  %822 = phi i32 [ %813, %808 ], [ %781, %814 ]
  %823 = phi i32 [ %805, %808 ], [ %815, %814 ]
  %824 = phi i32 [ %799, %808 ], [ %816, %814 ]
  %825 = shl i32 %768, 1
  br label %826

826:                                              ; preds = %27, %820
  %827 = phi i64 [ %766, %820 ], [ %33, %27 ]
  %828 = phi i64 [ %767, %820 ], [ %31, %27 ]
  %829 = phi i32 [ %825, %820 ], [ %63, %27 ]
  %830 = phi i32 [ %769, %820 ], [ %45, %27 ]
  %831 = phi i32 [ %770, %820 ], [ %47, %27 ]
  %832 = phi i32 [ %771, %820 ], [ %49, %27 ]
  %833 = phi i32 [ %772, %820 ], [ %51, %27 ]
  %834 = phi i32 [ %773, %820 ], [ %43, %27 ]
  %835 = phi ptr [ %774, %820 ], [ %55, %27 ]
  %836 = phi i32 [ %821, %820 ], [ %57, %27 ]
  %837 = phi i32 [ %776, %820 ], [ %59, %27 ]
  %838 = phi i32 [ %822, %820 ], [ %61, %27 ]
  %839 = phi i64 [ %797, %820 ], [ %41, %27 ]
  %840 = phi i32 [ %823, %820 ], [ %38, %27 ]
  %841 = phi i32 [ %824, %820 ], [ %40, %27 ]
  %842 = and i32 %838, %829
  %843 = add i32 %838, %836
  %844 = add i32 %843, %842
  %845 = icmp ult i32 %840, 16777216
  br i1 %845, label %846, label %857, !prof !168, !irr_loop !169

846:                                              ; preds = %826
  %847 = icmp eq i64 %839, %4
  br i1 %847, label %848, label %849, !prof !170

848:                                              ; preds = %846
  store i32 14, ptr %78, align 8, !tbaa !108
  br label %4111

849:                                              ; preds = %846
  %850 = shl nuw i32 %840, 8
  %851 = shl i32 %841, 8
  %852 = add i64 %839, 1
  %853 = getelementptr inbounds i8, ptr %2, i64 %839
  %854 = load i8, ptr %853, align 1, !tbaa !72
  %855 = zext i8 %854 to i32
  %856 = or disjoint i32 %851, %855
  br label %857

857:                                              ; preds = %849, %826
  %858 = phi i64 [ %852, %849 ], [ %839, %826 ]
  %859 = phi i32 [ %850, %849 ], [ %840, %826 ]
  %860 = phi i32 [ %856, %849 ], [ %841, %826 ]
  %861 = lshr i32 %859, 11
  %862 = zext i32 %844 to i64
  %863 = getelementptr inbounds i16, ptr %835, i64 %862
  %864 = load i16, ptr %863, align 2, !tbaa !115
  %865 = zext i16 %864 to i32
  %866 = mul i32 %861, %865
  %867 = icmp ult i32 %860, %866
  %868 = shl i32 %836, 1
  br i1 %867, label %869, label %875, !prof !171

869:                                              ; preds = %857
  %870 = sub nsw i32 2048, %865
  %871 = lshr i32 %870, 5
  %872 = trunc i32 %871 to i16
  %873 = add i16 %864, %872
  store i16 %873, ptr %863, align 2, !tbaa !115
  %874 = xor i32 %842, %838
  br label %881

875:                                              ; preds = %857
  %876 = sub i32 %859, %866
  %877 = sub i32 %860, %866
  %878 = lshr i16 %864, 5
  %879 = sub i16 %864, %878
  store i16 %879, ptr %863, align 2, !tbaa !115
  %880 = or disjoint i32 %868, 1
  br label %881

881:                                              ; preds = %875, %869
  %882 = phi i32 [ %868, %869 ], [ %880, %875 ]
  %883 = phi i32 [ %874, %869 ], [ %842, %875 ]
  %884 = phi i32 [ %866, %869 ], [ %876, %875 ]
  %885 = phi i32 [ %860, %869 ], [ %877, %875 ]
  %886 = shl i32 %829, 1
  br label %887

887:                                              ; preds = %27, %881
  %888 = phi i64 [ %827, %881 ], [ %33, %27 ]
  %889 = phi i64 [ %828, %881 ], [ %31, %27 ]
  %890 = phi i32 [ %886, %881 ], [ %63, %27 ]
  %891 = phi i32 [ %830, %881 ], [ %45, %27 ]
  %892 = phi i32 [ %831, %881 ], [ %47, %27 ]
  %893 = phi i32 [ %832, %881 ], [ %49, %27 ]
  %894 = phi i32 [ %833, %881 ], [ %51, %27 ]
  %895 = phi i32 [ %834, %881 ], [ %43, %27 ]
  %896 = phi ptr [ %835, %881 ], [ %55, %27 ]
  %897 = phi i32 [ %882, %881 ], [ %57, %27 ]
  %898 = phi i32 [ %837, %881 ], [ %59, %27 ]
  %899 = phi i32 [ %883, %881 ], [ %61, %27 ]
  %900 = phi i64 [ %858, %881 ], [ %41, %27 ]
  %901 = phi i32 [ %884, %881 ], [ %38, %27 ]
  %902 = phi i32 [ %885, %881 ], [ %40, %27 ]
  %903 = and i32 %899, %890
  %904 = add i32 %899, %897
  %905 = add i32 %904, %903
  %906 = icmp ult i32 %901, 16777216
  br i1 %906, label %907, label %918, !prof !172, !irr_loop !173

907:                                              ; preds = %887
  %908 = icmp eq i64 %900, %4
  br i1 %908, label %909, label %910, !prof !174

909:                                              ; preds = %907
  store i32 15, ptr %78, align 8, !tbaa !108
  br label %4111

910:                                              ; preds = %907
  %911 = shl nuw i32 %901, 8
  %912 = shl i32 %902, 8
  %913 = add i64 %900, 1
  %914 = getelementptr inbounds i8, ptr %2, i64 %900
  %915 = load i8, ptr %914, align 1, !tbaa !72
  %916 = zext i8 %915 to i32
  %917 = or disjoint i32 %912, %916
  br label %918

918:                                              ; preds = %910, %887
  %919 = phi i64 [ %913, %910 ], [ %900, %887 ]
  %920 = phi i32 [ %911, %910 ], [ %901, %887 ]
  %921 = phi i32 [ %917, %910 ], [ %902, %887 ]
  %922 = lshr i32 %920, 11
  %923 = zext i32 %905 to i64
  %924 = getelementptr inbounds i16, ptr %896, i64 %923
  %925 = load i16, ptr %924, align 2, !tbaa !115
  %926 = zext i16 %925 to i32
  %927 = mul i32 %922, %926
  %928 = icmp ult i32 %921, %927
  %929 = shl i32 %897, 1
  br i1 %928, label %930, label %936, !prof !175

930:                                              ; preds = %918
  %931 = sub nsw i32 2048, %926
  %932 = lshr i32 %931, 5
  %933 = trunc i32 %932 to i16
  %934 = add i16 %925, %933
  store i16 %934, ptr %924, align 2, !tbaa !115
  %935 = xor i32 %903, %899
  br label %942

936:                                              ; preds = %918
  %937 = sub i32 %920, %927
  %938 = sub i32 %921, %927
  %939 = lshr i16 %925, 5
  %940 = sub i16 %925, %939
  store i16 %940, ptr %924, align 2, !tbaa !115
  %941 = or disjoint i32 %929, 1
  br label %942

942:                                              ; preds = %936, %930
  %943 = phi i32 [ %929, %930 ], [ %941, %936 ]
  %944 = phi i32 [ %935, %930 ], [ %903, %936 ]
  %945 = phi i32 [ %927, %930 ], [ %937, %936 ]
  %946 = phi i32 [ %921, %930 ], [ %938, %936 ]
  %947 = shl i32 %890, 1
  br label %948

948:                                              ; preds = %27, %942
  %949 = phi i64 [ %888, %942 ], [ %33, %27 ]
  %950 = phi i64 [ %889, %942 ], [ %31, %27 ]
  %951 = phi i32 [ %947, %942 ], [ %63, %27 ]
  %952 = phi i32 [ %891, %942 ], [ %45, %27 ]
  %953 = phi i32 [ %892, %942 ], [ %47, %27 ]
  %954 = phi i32 [ %893, %942 ], [ %49, %27 ]
  %955 = phi i32 [ %894, %942 ], [ %51, %27 ]
  %956 = phi i32 [ %895, %942 ], [ %43, %27 ]
  %957 = phi ptr [ %896, %942 ], [ %55, %27 ]
  %958 = phi i32 [ %943, %942 ], [ %57, %27 ]
  %959 = phi i32 [ %898, %942 ], [ %59, %27 ]
  %960 = phi i32 [ %944, %942 ], [ %61, %27 ]
  %961 = phi i64 [ %919, %942 ], [ %41, %27 ]
  %962 = phi i32 [ %945, %942 ], [ %38, %27 ]
  %963 = phi i32 [ %946, %942 ], [ %40, %27 ]
  %964 = and i32 %960, %951
  %965 = add i32 %960, %958
  %966 = add i32 %965, %964
  %967 = icmp ult i32 %962, 16777216
  br i1 %967, label %968, label %979, !prof !176, !irr_loop !177

968:                                              ; preds = %948
  %969 = icmp eq i64 %961, %4
  br i1 %969, label %970, label %971, !prof !178

970:                                              ; preds = %968
  store i32 16, ptr %78, align 8, !tbaa !108
  br label %4111

971:                                              ; preds = %968
  %972 = shl nuw i32 %962, 8
  %973 = shl i32 %963, 8
  %974 = add i64 %961, 1
  %975 = getelementptr inbounds i8, ptr %2, i64 %961
  %976 = load i8, ptr %975, align 1, !tbaa !72
  %977 = zext i8 %976 to i32
  %978 = or disjoint i32 %973, %977
  br label %979

979:                                              ; preds = %971, %948
  %980 = phi i64 [ %974, %971 ], [ %961, %948 ]
  %981 = phi i32 [ %972, %971 ], [ %962, %948 ]
  %982 = phi i32 [ %978, %971 ], [ %963, %948 ]
  %983 = lshr i32 %981, 11
  %984 = zext i32 %966 to i64
  %985 = getelementptr inbounds i16, ptr %957, i64 %984
  %986 = load i16, ptr %985, align 2, !tbaa !115
  %987 = zext i16 %986 to i32
  %988 = mul i32 %983, %987
  %989 = icmp ult i32 %982, %988
  %990 = shl i32 %958, 1
  br i1 %989, label %991, label %997, !prof !179

991:                                              ; preds = %979
  %992 = sub nsw i32 2048, %987
  %993 = lshr i32 %992, 5
  %994 = trunc i32 %993 to i16
  %995 = add i16 %986, %994
  store i16 %995, ptr %985, align 2, !tbaa !115
  %996 = xor i32 %964, %960
  br label %1003

997:                                              ; preds = %979
  %998 = sub i32 %981, %988
  %999 = sub i32 %982, %988
  %1000 = lshr i16 %986, 5
  %1001 = sub i16 %986, %1000
  store i16 %1001, ptr %985, align 2, !tbaa !115
  %1002 = or disjoint i32 %990, 1
  br label %1003

1003:                                             ; preds = %997, %991
  %1004 = phi i32 [ %990, %991 ], [ %1002, %997 ]
  %1005 = phi i32 [ %996, %991 ], [ %964, %997 ]
  %1006 = phi i32 [ %988, %991 ], [ %998, %997 ]
  %1007 = phi i32 [ %982, %991 ], [ %999, %997 ]
  %1008 = shl i32 %951, 1
  br label %1009

1009:                                             ; preds = %27, %1003
  %1010 = phi i64 [ %949, %1003 ], [ %33, %27 ]
  %1011 = phi i64 [ %950, %1003 ], [ %31, %27 ]
  %1012 = phi i32 [ %1008, %1003 ], [ %63, %27 ]
  %1013 = phi i32 [ %952, %1003 ], [ %45, %27 ]
  %1014 = phi i32 [ %953, %1003 ], [ %47, %27 ]
  %1015 = phi i32 [ %954, %1003 ], [ %49, %27 ]
  %1016 = phi i32 [ %955, %1003 ], [ %51, %27 ]
  %1017 = phi i32 [ %956, %1003 ], [ %43, %27 ]
  %1018 = phi ptr [ %957, %1003 ], [ %55, %27 ]
  %1019 = phi i32 [ %1004, %1003 ], [ %57, %27 ]
  %1020 = phi i32 [ %959, %1003 ], [ %59, %27 ]
  %1021 = phi i32 [ %1005, %1003 ], [ %61, %27 ]
  %1022 = phi i64 [ %980, %1003 ], [ %41, %27 ]
  %1023 = phi i32 [ %1006, %1003 ], [ %38, %27 ]
  %1024 = phi i32 [ %1007, %1003 ], [ %40, %27 ]
  %1025 = and i32 %1021, %1012
  %1026 = add i32 %1021, %1019
  %1027 = add i32 %1026, %1025
  %1028 = icmp ult i32 %1023, 16777216
  br i1 %1028, label %1029, label %1040, !prof !180, !irr_loop !181

1029:                                             ; preds = %1009
  %1030 = icmp eq i64 %1022, %4
  br i1 %1030, label %1031, label %1032, !prof !182

1031:                                             ; preds = %1029
  store i32 17, ptr %78, align 8, !tbaa !108
  br label %4111

1032:                                             ; preds = %1029
  %1033 = shl nuw i32 %1023, 8
  %1034 = shl i32 %1024, 8
  %1035 = add i64 %1022, 1
  %1036 = getelementptr inbounds i8, ptr %2, i64 %1022
  %1037 = load i8, ptr %1036, align 1, !tbaa !72
  %1038 = zext i8 %1037 to i32
  %1039 = or disjoint i32 %1034, %1038
  br label %1040

1040:                                             ; preds = %1032, %1009
  %1041 = phi i64 [ %1035, %1032 ], [ %1022, %1009 ]
  %1042 = phi i32 [ %1033, %1032 ], [ %1023, %1009 ]
  %1043 = phi i32 [ %1039, %1032 ], [ %1024, %1009 ]
  %1044 = lshr i32 %1042, 11
  %1045 = zext i32 %1027 to i64
  %1046 = getelementptr inbounds i16, ptr %1018, i64 %1045
  %1047 = load i16, ptr %1046, align 2, !tbaa !115
  %1048 = zext i16 %1047 to i32
  %1049 = mul i32 %1044, %1048
  %1050 = icmp ult i32 %1043, %1049
  %1051 = shl i32 %1019, 1
  br i1 %1050, label %1052, label %1058, !prof !183

1052:                                             ; preds = %1040
  %1053 = sub nsw i32 2048, %1048
  %1054 = lshr i32 %1053, 5
  %1055 = trunc i32 %1054 to i16
  %1056 = add i16 %1047, %1055
  store i16 %1056, ptr %1046, align 2, !tbaa !115
  %1057 = xor i32 %1025, %1021
  br label %1064

1058:                                             ; preds = %1040
  %1059 = sub i32 %1042, %1049
  %1060 = sub i32 %1043, %1049
  %1061 = lshr i16 %1047, 5
  %1062 = sub i16 %1047, %1061
  store i16 %1062, ptr %1046, align 2, !tbaa !115
  %1063 = or disjoint i32 %1051, 1
  br label %1064

1064:                                             ; preds = %1052, %1058, %561, %566
  %1065 = phi i64 [ %522, %561 ], [ %522, %566 ], [ %1010, %1052 ], [ %1010, %1058 ]
  %1066 = phi i64 [ %523, %561 ], [ %523, %566 ], [ %1011, %1052 ], [ %1011, %1058 ]
  %1067 = phi i32 [ %524, %561 ], [ %524, %566 ], [ %1012, %1052 ], [ %1012, %1058 ]
  %1068 = phi i32 [ %525, %561 ], [ %525, %566 ], [ %1013, %1052 ], [ %1013, %1058 ]
  %1069 = phi i32 [ %526, %561 ], [ %526, %566 ], [ %1014, %1052 ], [ %1014, %1058 ]
  %1070 = phi i32 [ %527, %561 ], [ %527, %566 ], [ %1015, %1052 ], [ %1015, %1058 ]
  %1071 = phi i32 [ %528, %561 ], [ %528, %566 ], [ %1016, %1052 ], [ %1016, %1058 ]
  %1072 = phi i32 [ %529, %561 ], [ %529, %566 ], [ %1017, %1052 ], [ %1017, %1058 ]
  %1073 = phi ptr [ %530, %561 ], [ %530, %566 ], [ %1018, %1052 ], [ %1018, %1058 ]
  %1074 = phi i32 [ %560, %561 ], [ %571, %566 ], [ %1051, %1052 ], [ %1063, %1058 ]
  %1075 = phi i32 [ %532, %561 ], [ %532, %566 ], [ %1020, %1052 ], [ %1020, %1058 ]
  %1076 = phi i32 [ %533, %561 ], [ %533, %566 ], [ %1057, %1052 ], [ %1025, %1058 ]
  %1077 = phi i64 [ %550, %561 ], [ %550, %566 ], [ %1041, %1052 ], [ %1041, %1058 ]
  %1078 = phi i32 [ %558, %561 ], [ %567, %566 ], [ %1049, %1052 ], [ %1059, %1058 ]
  %1079 = phi i32 [ %552, %561 ], [ %568, %566 ], [ %1043, %1052 ], [ %1060, %1058 ]
  %1080 = zext i32 %1072 to i64
  %1081 = getelementptr inbounds [12 x i32], ptr @lzma_decode.next_state, i64 0, i64 %1080
  %1082 = load i32, ptr %1081, align 4, !tbaa !87
  br label %1083

1083:                                             ; preds = %27, %1064
  %1084 = phi i64 [ %1065, %1064 ], [ %33, %27 ]
  %1085 = phi i64 [ %1066, %1064 ], [ %31, %27 ]
  %1086 = phi i32 [ %1067, %1064 ], [ %63, %27 ]
  %1087 = phi i32 [ %1068, %1064 ], [ %45, %27 ]
  %1088 = phi i32 [ %1069, %1064 ], [ %47, %27 ]
  %1089 = phi i32 [ %1070, %1064 ], [ %49, %27 ]
  %1090 = phi i32 [ %1071, %1064 ], [ %51, %27 ]
  %1091 = phi i32 [ %1082, %1064 ], [ %43, %27 ]
  %1092 = phi ptr [ %1073, %1064 ], [ %55, %27 ]
  %1093 = phi i32 [ %1074, %1064 ], [ %57, %27 ]
  %1094 = phi i32 [ %1075, %1064 ], [ %59, %27 ]
  %1095 = phi i32 [ %1076, %1064 ], [ %61, %27 ]
  %1096 = phi i64 [ %1077, %1064 ], [ %41, %27 ]
  %1097 = phi i32 [ %1078, %1064 ], [ %38, %27 ]
  %1098 = phi i32 [ %1079, %1064 ], [ %40, %27 ]
  %1099 = icmp eq i64 %1085, %77
  br i1 %1099, label %1105, label %1100, !prof !184, !irr_loop !185

1100:                                             ; preds = %1083
  %1101 = trunc i32 %1093 to i8
  %1102 = add i64 %1085, 1
  %1103 = getelementptr inbounds i8, ptr %29, i64 %1085
  store i8 %1101, ptr %1103, align 1, !tbaa !72
  %1104 = tail call i64 @llvm.umax.i64(i64 %1102, i64 %1084)
  br label %1105

1105:                                             ; preds = %1100, %1083
  %1106 = phi i64 [ %1084, %1083 ], [ %1104, %1100 ]
  %1107 = phi i64 [ %1085, %1083 ], [ %1102, %1100 ]
  br i1 %1099, label %1108, label %80, !prof !184, !llvm.loop !186

1108:                                             ; preds = %1105
  store i32 18, ptr %78, align 8, !tbaa !108
  br label %4111

1109:                                             ; preds = %130
  %1110 = sub i32 %132, %140
  %1111 = sub i32 %133, %140
  %1112 = lshr i16 %138, 5
  %1113 = sub i16 %138, %1112
  store i16 %1113, ptr %137, align 2, !tbaa !115
  br label %1114

1114:                                             ; preds = %1109, %27
  %1115 = phi i64 [ %99, %1109 ], [ %33, %27 ]
  %1116 = phi i64 [ %100, %1109 ], [ %31, %27 ]
  %1117 = phi i32 [ %101, %1109 ], [ %63, %27 ]
  %1118 = phi i32 [ %102, %1109 ], [ %45, %27 ]
  %1119 = phi i32 [ %103, %1109 ], [ %47, %27 ]
  %1120 = phi i32 [ %104, %1109 ], [ %49, %27 ]
  %1121 = phi i32 [ %105, %1109 ], [ %51, %27 ]
  %1122 = phi i32 [ %106, %1109 ], [ %43, %27 ]
  %1123 = phi ptr [ %107, %1109 ], [ %55, %27 ]
  %1124 = phi i32 [ %108, %1109 ], [ %57, %27 ]
  %1125 = phi i32 [ %109, %1109 ], [ %59, %27 ]
  %1126 = phi i32 [ %110, %1109 ], [ %61, %27 ]
  %1127 = phi i64 [ %131, %1109 ], [ %41, %27 ]
  %1128 = phi i32 [ %112, %1109 ], [ %69, %27 ]
  %1129 = phi i32 [ %1110, %1109 ], [ %38, %27 ]
  %1130 = phi i32 [ %1111, %1109 ], [ %40, %27 ]
  %1131 = icmp ult i32 %1129, 16777216
  br i1 %1131, label %1132, label %1143, !prof !187, !irr_loop !188

1132:                                             ; preds = %1114
  %1133 = icmp eq i64 %1127, %4
  br i1 %1133, label %1134, label %1135, !prof !189

1134:                                             ; preds = %1132
  store i32 19, ptr %78, align 8, !tbaa !108
  br label %4111

1135:                                             ; preds = %1132
  %1136 = shl nuw i32 %1129, 8
  %1137 = shl i32 %1130, 8
  %1138 = add i64 %1127, 1
  %1139 = getelementptr inbounds i8, ptr %2, i64 %1127
  %1140 = load i8, ptr %1139, align 1, !tbaa !72
  %1141 = zext i8 %1140 to i32
  %1142 = or disjoint i32 %1137, %1141
  br label %1143

1143:                                             ; preds = %1135, %1114
  %1144 = phi i64 [ %1138, %1135 ], [ %1127, %1114 ]
  %1145 = phi i32 [ %1136, %1135 ], [ %1129, %1114 ]
  %1146 = phi i32 [ %1142, %1135 ], [ %1130, %1114 ]
  %1147 = lshr i32 %1145, 11
  %1148 = zext i32 %1122 to i64
  %1149 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %1148
  %1150 = load i16, ptr %1149, align 2, !tbaa !115
  %1151 = zext i16 %1150 to i32
  %1152 = mul i32 %1147, %1151
  %1153 = icmp ult i32 %1146, %1152
  br i1 %1153, label %1154, label %2909, !prof !190

1154:                                             ; preds = %1143
  %1155 = sub nsw i32 2048, %1151
  %1156 = lshr i32 %1155, 5
  %1157 = trunc i32 %1156 to i16
  %1158 = add i16 %1150, %1157
  store i16 %1158, ptr %1149, align 2, !tbaa !115
  %1159 = icmp ult i32 %1122, 7
  %1160 = select i1 %1159, i32 7, i32 10, !prof !191
  br label %1161

1161:                                             ; preds = %1154, %27
  %1162 = phi i64 [ %1115, %1154 ], [ %33, %27 ]
  %1163 = phi i64 [ %1116, %1154 ], [ %31, %27 ]
  %1164 = phi i32 [ %1117, %1154 ], [ %63, %27 ]
  %1165 = phi i32 [ %1118, %1154 ], [ %45, %27 ]
  %1166 = phi i32 [ %1118, %1154 ], [ %47, %27 ]
  %1167 = phi i32 [ %1119, %1154 ], [ %49, %27 ]
  %1168 = phi i32 [ %1120, %1154 ], [ %51, %27 ]
  %1169 = phi i32 [ %1160, %1154 ], [ %43, %27 ]
  %1170 = phi ptr [ %1123, %1154 ], [ %55, %27 ]
  %1171 = phi i32 [ 1, %1154 ], [ %57, %27 ]
  %1172 = phi i32 [ %1125, %1154 ], [ %59, %27 ]
  %1173 = phi i32 [ %1126, %1154 ], [ %61, %27 ]
  %1174 = phi i64 [ %1144, %1154 ], [ %41, %27 ]
  %1175 = phi i32 [ %1128, %1154 ], [ %69, %27 ]
  %1176 = phi i32 [ %1152, %1154 ], [ %38, %27 ]
  %1177 = phi i32 [ %1146, %1154 ], [ %40, %27 ]
  %1178 = icmp ult i32 %1176, 16777216
  br i1 %1178, label %1179, label %1190, !prof !192, !irr_loop !193

1179:                                             ; preds = %1161
  %1180 = icmp eq i64 %1174, %4
  br i1 %1180, label %1181, label %1182, !prof !194

1181:                                             ; preds = %1179
  store i32 20, ptr %78, align 8, !tbaa !108
  br label %4111

1182:                                             ; preds = %1179
  %1183 = shl nuw i32 %1176, 8
  %1184 = shl i32 %1177, 8
  %1185 = add i64 %1174, 1
  %1186 = getelementptr inbounds i8, ptr %2, i64 %1174
  %1187 = load i8, ptr %1186, align 1, !tbaa !72
  %1188 = zext i8 %1187 to i32
  %1189 = or disjoint i32 %1184, %1188
  br label %1190

1190:                                             ; preds = %1182, %1161
  %1191 = phi i64 [ %1185, %1182 ], [ %1174, %1161 ]
  %1192 = phi i32 [ %1183, %1182 ], [ %1176, %1161 ]
  %1193 = phi i32 [ %1189, %1182 ], [ %1177, %1161 ]
  %1194 = lshr i32 %1192, 11
  %1195 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %1196 = load i16, ptr %1195, align 4, !tbaa !195
  %1197 = zext i16 %1196 to i32
  %1198 = mul i32 %1194, %1197
  %1199 = icmp ult i32 %1193, %1198
  br i1 %1199, label %1200, label %1369, !prof !196

1200:                                             ; preds = %1190
  %1201 = sub nsw i32 2048, %1197
  %1202 = lshr i32 %1201, 5
  %1203 = trunc i32 %1202 to i16
  %1204 = add i16 %1196, %1203
  store i16 %1204, ptr %1195, align 4, !tbaa !195
  br label %1205

1205:                                             ; preds = %27, %1200
  %1206 = phi i64 [ %1162, %1200 ], [ %33, %27 ]
  %1207 = phi i64 [ %1163, %1200 ], [ %31, %27 ]
  %1208 = phi i32 [ %1164, %1200 ], [ %63, %27 ]
  %1209 = phi i32 [ %1165, %1200 ], [ %45, %27 ]
  %1210 = phi i32 [ %1166, %1200 ], [ %47, %27 ]
  %1211 = phi i32 [ %1167, %1200 ], [ %49, %27 ]
  %1212 = phi i32 [ %1168, %1200 ], [ %51, %27 ]
  %1213 = phi i32 [ %1169, %1200 ], [ %43, %27 ]
  %1214 = phi ptr [ %1170, %1200 ], [ %55, %27 ]
  %1215 = phi i32 [ %1171, %1200 ], [ %57, %27 ]
  %1216 = phi i32 [ %1172, %1200 ], [ %59, %27 ]
  %1217 = phi i32 [ %1173, %1200 ], [ %61, %27 ]
  %1218 = phi i64 [ %1191, %1200 ], [ %41, %27 ]
  %1219 = phi i32 [ %1175, %1200 ], [ %69, %27 ]
  %1220 = phi i32 [ %1198, %1200 ], [ %38, %27 ]
  %1221 = phi i32 [ %1193, %1200 ], [ %40, %27 ]
  %1222 = icmp ult i32 %1220, 16777216
  br i1 %1222, label %1223, label %1234, !prof !197, !irr_loop !198

1223:                                             ; preds = %1205
  %1224 = icmp eq i64 %1218, %4
  br i1 %1224, label %1225, label %1226, !prof !199

1225:                                             ; preds = %1223
  store i32 21, ptr %78, align 8, !tbaa !108
  br label %4111

1226:                                             ; preds = %1223
  %1227 = shl nuw i32 %1220, 8
  %1228 = shl i32 %1221, 8
  %1229 = add i64 %1218, 1
  %1230 = getelementptr inbounds i8, ptr %2, i64 %1218
  %1231 = load i8, ptr %1230, align 1, !tbaa !72
  %1232 = zext i8 %1231 to i32
  %1233 = or disjoint i32 %1228, %1232
  br label %1234

1234:                                             ; preds = %1226, %1205
  %1235 = phi i64 [ %1229, %1226 ], [ %1218, %1205 ]
  %1236 = phi i32 [ %1227, %1226 ], [ %1220, %1205 ]
  %1237 = phi i32 [ %1233, %1226 ], [ %1221, %1205 ]
  %1238 = lshr i32 %1236, 11
  %1239 = zext i32 %1219 to i64
  %1240 = zext i32 %1215 to i64
  %1241 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 2, i64 %1239, i64 %1240
  %1242 = load i16, ptr %1241, align 2, !tbaa !115
  %1243 = zext i16 %1242 to i32
  %1244 = mul i32 %1238, %1243
  %1245 = icmp ult i32 %1237, %1244
  %1246 = shl i32 %1215, 1
  br i1 %1245, label %1247, label %1252, !prof !200

1247:                                             ; preds = %1234
  %1248 = sub nsw i32 2048, %1243
  %1249 = lshr i32 %1248, 5
  %1250 = trunc i32 %1249 to i16
  %1251 = add i16 %1242, %1250
  store i16 %1251, ptr %1241, align 2, !tbaa !115
  br label %1258

1252:                                             ; preds = %1234
  %1253 = sub i32 %1236, %1244
  %1254 = sub i32 %1237, %1244
  %1255 = lshr i16 %1242, 5
  %1256 = sub i16 %1242, %1255
  store i16 %1256, ptr %1241, align 2, !tbaa !115
  %1257 = or disjoint i32 %1246, 1
  br label %1258

1258:                                             ; preds = %1247, %1252, %27
  %1259 = phi i64 [ %1206, %1247 ], [ %1206, %1252 ], [ %33, %27 ]
  %1260 = phi i64 [ %1207, %1247 ], [ %1207, %1252 ], [ %31, %27 ]
  %1261 = phi i32 [ %1208, %1247 ], [ %1208, %1252 ], [ %63, %27 ]
  %1262 = phi i32 [ %1209, %1247 ], [ %1209, %1252 ], [ %45, %27 ]
  %1263 = phi i32 [ %1210, %1247 ], [ %1210, %1252 ], [ %47, %27 ]
  %1264 = phi i32 [ %1211, %1247 ], [ %1211, %1252 ], [ %49, %27 ]
  %1265 = phi i32 [ %1212, %1247 ], [ %1212, %1252 ], [ %51, %27 ]
  %1266 = phi i32 [ %1213, %1247 ], [ %1213, %1252 ], [ %43, %27 ]
  %1267 = phi ptr [ %1214, %1247 ], [ %1214, %1252 ], [ %55, %27 ]
  %1268 = phi i32 [ %1246, %1247 ], [ %1257, %1252 ], [ %57, %27 ]
  %1269 = phi i32 [ %1216, %1247 ], [ %1216, %1252 ], [ %59, %27 ]
  %1270 = phi i32 [ %1217, %1247 ], [ %1217, %1252 ], [ %61, %27 ]
  %1271 = phi i64 [ %1235, %1247 ], [ %1235, %1252 ], [ %41, %27 ]
  %1272 = phi i32 [ %1219, %1247 ], [ %1219, %1252 ], [ %69, %27 ]
  %1273 = phi i32 [ %1244, %1247 ], [ %1253, %1252 ], [ %38, %27 ]
  %1274 = phi i32 [ %1237, %1247 ], [ %1254, %1252 ], [ %40, %27 ]
  %1275 = icmp ult i32 %1273, 16777216
  br i1 %1275, label %1276, label %1287, !prof !201, !irr_loop !202

1276:                                             ; preds = %1258
  %1277 = icmp eq i64 %1271, %4
  br i1 %1277, label %1278, label %1279, !prof !203

1278:                                             ; preds = %1276
  store i32 22, ptr %78, align 8, !tbaa !108
  br label %4111

1279:                                             ; preds = %1276
  %1280 = shl nuw i32 %1273, 8
  %1281 = shl i32 %1274, 8
  %1282 = add i64 %1271, 1
  %1283 = getelementptr inbounds i8, ptr %2, i64 %1271
  %1284 = load i8, ptr %1283, align 1, !tbaa !72
  %1285 = zext i8 %1284 to i32
  %1286 = or disjoint i32 %1281, %1285
  br label %1287

1287:                                             ; preds = %1279, %1258
  %1288 = phi i64 [ %1282, %1279 ], [ %1271, %1258 ]
  %1289 = phi i32 [ %1280, %1279 ], [ %1273, %1258 ]
  %1290 = phi i32 [ %1286, %1279 ], [ %1274, %1258 ]
  %1291 = lshr i32 %1289, 11
  %1292 = zext i32 %1272 to i64
  %1293 = zext i32 %1268 to i64
  %1294 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 2, i64 %1292, i64 %1293
  %1295 = load i16, ptr %1294, align 2, !tbaa !115
  %1296 = zext i16 %1295 to i32
  %1297 = mul i32 %1291, %1296
  %1298 = icmp ult i32 %1290, %1297
  %1299 = shl i32 %1268, 1
  br i1 %1298, label %1300, label %1305, !prof !204

1300:                                             ; preds = %1287
  %1301 = sub nsw i32 2048, %1296
  %1302 = lshr i32 %1301, 5
  %1303 = trunc i32 %1302 to i16
  %1304 = add i16 %1295, %1303
  store i16 %1304, ptr %1294, align 2, !tbaa !115
  br label %1311

1305:                                             ; preds = %1287
  %1306 = sub i32 %1289, %1297
  %1307 = sub i32 %1290, %1297
  %1308 = lshr i16 %1295, 5
  %1309 = sub i16 %1295, %1308
  store i16 %1309, ptr %1294, align 2, !tbaa !115
  %1310 = or disjoint i32 %1299, 1
  br label %1311

1311:                                             ; preds = %1300, %1305, %27
  %1312 = phi i64 [ %1259, %1300 ], [ %1259, %1305 ], [ %33, %27 ]
  %1313 = phi i64 [ %1260, %1300 ], [ %1260, %1305 ], [ %31, %27 ]
  %1314 = phi i32 [ %1261, %1300 ], [ %1261, %1305 ], [ %63, %27 ]
  %1315 = phi i32 [ %1262, %1300 ], [ %1262, %1305 ], [ %45, %27 ]
  %1316 = phi i32 [ %1263, %1300 ], [ %1263, %1305 ], [ %47, %27 ]
  %1317 = phi i32 [ %1264, %1300 ], [ %1264, %1305 ], [ %49, %27 ]
  %1318 = phi i32 [ %1265, %1300 ], [ %1265, %1305 ], [ %51, %27 ]
  %1319 = phi i32 [ %1266, %1300 ], [ %1266, %1305 ], [ %43, %27 ]
  %1320 = phi ptr [ %1267, %1300 ], [ %1267, %1305 ], [ %55, %27 ]
  %1321 = phi i32 [ %1299, %1300 ], [ %1310, %1305 ], [ %57, %27 ]
  %1322 = phi i32 [ %1269, %1300 ], [ %1269, %1305 ], [ %59, %27 ]
  %1323 = phi i32 [ %1270, %1300 ], [ %1270, %1305 ], [ %61, %27 ]
  %1324 = phi i64 [ %1288, %1300 ], [ %1288, %1305 ], [ %41, %27 ]
  %1325 = phi i32 [ %1272, %1300 ], [ %1272, %1305 ], [ %69, %27 ]
  %1326 = phi i32 [ %1297, %1300 ], [ %1306, %1305 ], [ %38, %27 ]
  %1327 = phi i32 [ %1290, %1300 ], [ %1307, %1305 ], [ %40, %27 ]
  %1328 = icmp ult i32 %1326, 16777216
  br i1 %1328, label %1329, label %1340, !prof !205, !irr_loop !206

1329:                                             ; preds = %1311
  %1330 = icmp eq i64 %1324, %4
  br i1 %1330, label %1331, label %1332, !prof !207

1331:                                             ; preds = %1329
  store i32 23, ptr %78, align 8, !tbaa !108
  br label %4111

1332:                                             ; preds = %1329
  %1333 = shl nuw i32 %1326, 8
  %1334 = shl i32 %1327, 8
  %1335 = add i64 %1324, 1
  %1336 = getelementptr inbounds i8, ptr %2, i64 %1324
  %1337 = load i8, ptr %1336, align 1, !tbaa !72
  %1338 = zext i8 %1337 to i32
  %1339 = or disjoint i32 %1334, %1338
  br label %1340

1340:                                             ; preds = %1332, %1311
  %1341 = phi i64 [ %1335, %1332 ], [ %1324, %1311 ]
  %1342 = phi i32 [ %1333, %1332 ], [ %1326, %1311 ]
  %1343 = phi i32 [ %1339, %1332 ], [ %1327, %1311 ]
  %1344 = lshr i32 %1342, 11
  %1345 = zext i32 %1325 to i64
  %1346 = zext i32 %1321 to i64
  %1347 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 2, i64 %1345, i64 %1346
  %1348 = load i16, ptr %1347, align 2, !tbaa !115
  %1349 = zext i16 %1348 to i32
  %1350 = mul i32 %1344, %1349
  %1351 = icmp ult i32 %1343, %1350
  %1352 = shl i32 %1321, 1
  br i1 %1351, label %1353, label %1358, !prof !208

1353:                                             ; preds = %1340
  %1354 = sub nsw i32 2048, %1349
  %1355 = lshr i32 %1354, 5
  %1356 = trunc i32 %1355 to i16
  %1357 = add i16 %1348, %1356
  store i16 %1357, ptr %1347, align 2, !tbaa !115
  br label %1364

1358:                                             ; preds = %1340
  %1359 = sub i32 %1342, %1350
  %1360 = sub i32 %1343, %1350
  %1361 = lshr i16 %1348, 5
  %1362 = sub i16 %1348, %1361
  store i16 %1362, ptr %1347, align 2, !tbaa !115
  %1363 = or disjoint i32 %1352, 1
  br label %1364

1364:                                             ; preds = %1358, %1353
  %1365 = phi i32 [ %1352, %1353 ], [ %1363, %1358 ]
  %1366 = phi i32 [ %1350, %1353 ], [ %1359, %1358 ]
  %1367 = phi i32 [ %1343, %1353 ], [ %1360, %1358 ]
  %1368 = add i32 %1365, -6
  br label %2000

1369:                                             ; preds = %1190
  %1370 = sub i32 %1192, %1198
  %1371 = sub i32 %1193, %1198
  %1372 = lshr i16 %1196, 5
  %1373 = sub i16 %1196, %1372
  store i16 %1373, ptr %1195, align 4, !tbaa !195
  br label %1374

1374:                                             ; preds = %1369, %27
  %1375 = phi i64 [ %1162, %1369 ], [ %33, %27 ]
  %1376 = phi i64 [ %1163, %1369 ], [ %31, %27 ]
  %1377 = phi i32 [ %1164, %1369 ], [ %63, %27 ]
  %1378 = phi i32 [ %1165, %1369 ], [ %45, %27 ]
  %1379 = phi i32 [ %1166, %1369 ], [ %47, %27 ]
  %1380 = phi i32 [ %1167, %1369 ], [ %49, %27 ]
  %1381 = phi i32 [ %1168, %1369 ], [ %51, %27 ]
  %1382 = phi i32 [ %1169, %1369 ], [ %43, %27 ]
  %1383 = phi ptr [ %1170, %1369 ], [ %55, %27 ]
  %1384 = phi i32 [ %1171, %1369 ], [ %57, %27 ]
  %1385 = phi i32 [ %1172, %1369 ], [ %59, %27 ]
  %1386 = phi i32 [ %1173, %1369 ], [ %61, %27 ]
  %1387 = phi i64 [ %1191, %1369 ], [ %41, %27 ]
  %1388 = phi i32 [ %1175, %1369 ], [ %69, %27 ]
  %1389 = phi i32 [ %1370, %1369 ], [ %38, %27 ]
  %1390 = phi i32 [ %1371, %1369 ], [ %40, %27 ]
  %1391 = icmp ult i32 %1389, 16777216
  br i1 %1391, label %1392, label %1403, !prof !209, !irr_loop !210

1392:                                             ; preds = %1374
  %1393 = icmp eq i64 %1387, %4
  br i1 %1393, label %1394, label %1395, !prof !211

1394:                                             ; preds = %1392
  store i32 24, ptr %78, align 8, !tbaa !108
  br label %4111

1395:                                             ; preds = %1392
  %1396 = shl nuw i32 %1389, 8
  %1397 = shl i32 %1390, 8
  %1398 = add i64 %1387, 1
  %1399 = getelementptr inbounds i8, ptr %2, i64 %1387
  %1400 = load i8, ptr %1399, align 1, !tbaa !72
  %1401 = zext i8 %1400 to i32
  %1402 = or disjoint i32 %1397, %1401
  br label %1403

1403:                                             ; preds = %1395, %1374
  %1404 = phi i64 [ %1398, %1395 ], [ %1387, %1374 ]
  %1405 = phi i32 [ %1396, %1395 ], [ %1389, %1374 ]
  %1406 = phi i32 [ %1402, %1395 ], [ %1390, %1374 ]
  %1407 = lshr i32 %1405, 11
  %1408 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 1
  %1409 = load i16, ptr %1408, align 2, !tbaa !212
  %1410 = zext i16 %1409 to i32
  %1411 = mul i32 %1407, %1410
  %1412 = icmp ult i32 %1406, %1411
  br i1 %1412, label %1413, label %1582, !prof !213

1413:                                             ; preds = %1403
  %1414 = sub nsw i32 2048, %1410
  %1415 = lshr i32 %1414, 5
  %1416 = trunc i32 %1415 to i16
  %1417 = add i16 %1409, %1416
  store i16 %1417, ptr %1408, align 2, !tbaa !212
  br label %1418

1418:                                             ; preds = %27, %1413
  %1419 = phi i64 [ %1375, %1413 ], [ %33, %27 ]
  %1420 = phi i64 [ %1376, %1413 ], [ %31, %27 ]
  %1421 = phi i32 [ %1377, %1413 ], [ %63, %27 ]
  %1422 = phi i32 [ %1378, %1413 ], [ %45, %27 ]
  %1423 = phi i32 [ %1379, %1413 ], [ %47, %27 ]
  %1424 = phi i32 [ %1380, %1413 ], [ %49, %27 ]
  %1425 = phi i32 [ %1381, %1413 ], [ %51, %27 ]
  %1426 = phi i32 [ %1382, %1413 ], [ %43, %27 ]
  %1427 = phi ptr [ %1383, %1413 ], [ %55, %27 ]
  %1428 = phi i32 [ %1384, %1413 ], [ %57, %27 ]
  %1429 = phi i32 [ %1385, %1413 ], [ %59, %27 ]
  %1430 = phi i32 [ %1386, %1413 ], [ %61, %27 ]
  %1431 = phi i64 [ %1404, %1413 ], [ %41, %27 ]
  %1432 = phi i32 [ %1388, %1413 ], [ %69, %27 ]
  %1433 = phi i32 [ %1411, %1413 ], [ %38, %27 ]
  %1434 = phi i32 [ %1406, %1413 ], [ %40, %27 ]
  %1435 = icmp ult i32 %1433, 16777216
  br i1 %1435, label %1436, label %1447, !prof !214, !irr_loop !215

1436:                                             ; preds = %1418
  %1437 = icmp eq i64 %1431, %4
  br i1 %1437, label %1438, label %1439, !prof !216

1438:                                             ; preds = %1436
  store i32 25, ptr %78, align 8, !tbaa !108
  br label %4111

1439:                                             ; preds = %1436
  %1440 = shl nuw i32 %1433, 8
  %1441 = shl i32 %1434, 8
  %1442 = add i64 %1431, 1
  %1443 = getelementptr inbounds i8, ptr %2, i64 %1431
  %1444 = load i8, ptr %1443, align 1, !tbaa !72
  %1445 = zext i8 %1444 to i32
  %1446 = or disjoint i32 %1441, %1445
  br label %1447

1447:                                             ; preds = %1439, %1418
  %1448 = phi i64 [ %1442, %1439 ], [ %1431, %1418 ]
  %1449 = phi i32 [ %1440, %1439 ], [ %1433, %1418 ]
  %1450 = phi i32 [ %1446, %1439 ], [ %1434, %1418 ]
  %1451 = lshr i32 %1449, 11
  %1452 = zext i32 %1432 to i64
  %1453 = zext i32 %1428 to i64
  %1454 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 3, i64 %1452, i64 %1453
  %1455 = load i16, ptr %1454, align 2, !tbaa !115
  %1456 = zext i16 %1455 to i32
  %1457 = mul i32 %1451, %1456
  %1458 = icmp ult i32 %1450, %1457
  %1459 = shl i32 %1428, 1
  br i1 %1458, label %1460, label %1465, !prof !217

1460:                                             ; preds = %1447
  %1461 = sub nsw i32 2048, %1456
  %1462 = lshr i32 %1461, 5
  %1463 = trunc i32 %1462 to i16
  %1464 = add i16 %1455, %1463
  store i16 %1464, ptr %1454, align 2, !tbaa !115
  br label %1471

1465:                                             ; preds = %1447
  %1466 = sub i32 %1449, %1457
  %1467 = sub i32 %1450, %1457
  %1468 = lshr i16 %1455, 5
  %1469 = sub i16 %1455, %1468
  store i16 %1469, ptr %1454, align 2, !tbaa !115
  %1470 = or disjoint i32 %1459, 1
  br label %1471

1471:                                             ; preds = %1460, %1465, %27
  %1472 = phi i64 [ %1419, %1460 ], [ %1419, %1465 ], [ %33, %27 ]
  %1473 = phi i64 [ %1420, %1460 ], [ %1420, %1465 ], [ %31, %27 ]
  %1474 = phi i32 [ %1421, %1460 ], [ %1421, %1465 ], [ %63, %27 ]
  %1475 = phi i32 [ %1422, %1460 ], [ %1422, %1465 ], [ %45, %27 ]
  %1476 = phi i32 [ %1423, %1460 ], [ %1423, %1465 ], [ %47, %27 ]
  %1477 = phi i32 [ %1424, %1460 ], [ %1424, %1465 ], [ %49, %27 ]
  %1478 = phi i32 [ %1425, %1460 ], [ %1425, %1465 ], [ %51, %27 ]
  %1479 = phi i32 [ %1426, %1460 ], [ %1426, %1465 ], [ %43, %27 ]
  %1480 = phi ptr [ %1427, %1460 ], [ %1427, %1465 ], [ %55, %27 ]
  %1481 = phi i32 [ %1459, %1460 ], [ %1470, %1465 ], [ %57, %27 ]
  %1482 = phi i32 [ %1429, %1460 ], [ %1429, %1465 ], [ %59, %27 ]
  %1483 = phi i32 [ %1430, %1460 ], [ %1430, %1465 ], [ %61, %27 ]
  %1484 = phi i64 [ %1448, %1460 ], [ %1448, %1465 ], [ %41, %27 ]
  %1485 = phi i32 [ %1432, %1460 ], [ %1432, %1465 ], [ %69, %27 ]
  %1486 = phi i32 [ %1457, %1460 ], [ %1466, %1465 ], [ %38, %27 ]
  %1487 = phi i32 [ %1450, %1460 ], [ %1467, %1465 ], [ %40, %27 ]
  %1488 = icmp ult i32 %1486, 16777216
  br i1 %1488, label %1489, label %1500, !prof !218, !irr_loop !219

1489:                                             ; preds = %1471
  %1490 = icmp eq i64 %1484, %4
  br i1 %1490, label %1491, label %1492, !prof !220

1491:                                             ; preds = %1489
  store i32 26, ptr %78, align 8, !tbaa !108
  br label %4111

1492:                                             ; preds = %1489
  %1493 = shl nuw i32 %1486, 8
  %1494 = shl i32 %1487, 8
  %1495 = add i64 %1484, 1
  %1496 = getelementptr inbounds i8, ptr %2, i64 %1484
  %1497 = load i8, ptr %1496, align 1, !tbaa !72
  %1498 = zext i8 %1497 to i32
  %1499 = or disjoint i32 %1494, %1498
  br label %1500

1500:                                             ; preds = %1492, %1471
  %1501 = phi i64 [ %1495, %1492 ], [ %1484, %1471 ]
  %1502 = phi i32 [ %1493, %1492 ], [ %1486, %1471 ]
  %1503 = phi i32 [ %1499, %1492 ], [ %1487, %1471 ]
  %1504 = lshr i32 %1502, 11
  %1505 = zext i32 %1485 to i64
  %1506 = zext i32 %1481 to i64
  %1507 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 3, i64 %1505, i64 %1506
  %1508 = load i16, ptr %1507, align 2, !tbaa !115
  %1509 = zext i16 %1508 to i32
  %1510 = mul i32 %1504, %1509
  %1511 = icmp ult i32 %1503, %1510
  %1512 = shl i32 %1481, 1
  br i1 %1511, label %1513, label %1518, !prof !221

1513:                                             ; preds = %1500
  %1514 = sub nsw i32 2048, %1509
  %1515 = lshr i32 %1514, 5
  %1516 = trunc i32 %1515 to i16
  %1517 = add i16 %1508, %1516
  store i16 %1517, ptr %1507, align 2, !tbaa !115
  br label %1524

1518:                                             ; preds = %1500
  %1519 = sub i32 %1502, %1510
  %1520 = sub i32 %1503, %1510
  %1521 = lshr i16 %1508, 5
  %1522 = sub i16 %1508, %1521
  store i16 %1522, ptr %1507, align 2, !tbaa !115
  %1523 = or disjoint i32 %1512, 1
  br label %1524

1524:                                             ; preds = %1513, %1518, %27
  %1525 = phi i64 [ %1472, %1513 ], [ %1472, %1518 ], [ %33, %27 ]
  %1526 = phi i64 [ %1473, %1513 ], [ %1473, %1518 ], [ %31, %27 ]
  %1527 = phi i32 [ %1474, %1513 ], [ %1474, %1518 ], [ %63, %27 ]
  %1528 = phi i32 [ %1475, %1513 ], [ %1475, %1518 ], [ %45, %27 ]
  %1529 = phi i32 [ %1476, %1513 ], [ %1476, %1518 ], [ %47, %27 ]
  %1530 = phi i32 [ %1477, %1513 ], [ %1477, %1518 ], [ %49, %27 ]
  %1531 = phi i32 [ %1478, %1513 ], [ %1478, %1518 ], [ %51, %27 ]
  %1532 = phi i32 [ %1479, %1513 ], [ %1479, %1518 ], [ %43, %27 ]
  %1533 = phi ptr [ %1480, %1513 ], [ %1480, %1518 ], [ %55, %27 ]
  %1534 = phi i32 [ %1512, %1513 ], [ %1523, %1518 ], [ %57, %27 ]
  %1535 = phi i32 [ %1482, %1513 ], [ %1482, %1518 ], [ %59, %27 ]
  %1536 = phi i32 [ %1483, %1513 ], [ %1483, %1518 ], [ %61, %27 ]
  %1537 = phi i64 [ %1501, %1513 ], [ %1501, %1518 ], [ %41, %27 ]
  %1538 = phi i32 [ %1485, %1513 ], [ %1485, %1518 ], [ %69, %27 ]
  %1539 = phi i32 [ %1510, %1513 ], [ %1519, %1518 ], [ %38, %27 ]
  %1540 = phi i32 [ %1503, %1513 ], [ %1520, %1518 ], [ %40, %27 ]
  %1541 = icmp ult i32 %1539, 16777216
  br i1 %1541, label %1542, label %1553, !prof !222, !irr_loop !223

1542:                                             ; preds = %1524
  %1543 = icmp eq i64 %1537, %4
  br i1 %1543, label %1544, label %1545, !prof !224

1544:                                             ; preds = %1542
  store i32 27, ptr %78, align 8, !tbaa !108
  br label %4111

1545:                                             ; preds = %1542
  %1546 = shl nuw i32 %1539, 8
  %1547 = shl i32 %1540, 8
  %1548 = add i64 %1537, 1
  %1549 = getelementptr inbounds i8, ptr %2, i64 %1537
  %1550 = load i8, ptr %1549, align 1, !tbaa !72
  %1551 = zext i8 %1550 to i32
  %1552 = or disjoint i32 %1547, %1551
  br label %1553

1553:                                             ; preds = %1545, %1524
  %1554 = phi i64 [ %1548, %1545 ], [ %1537, %1524 ]
  %1555 = phi i32 [ %1546, %1545 ], [ %1539, %1524 ]
  %1556 = phi i32 [ %1552, %1545 ], [ %1540, %1524 ]
  %1557 = lshr i32 %1555, 11
  %1558 = zext i32 %1538 to i64
  %1559 = zext i32 %1534 to i64
  %1560 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 3, i64 %1558, i64 %1559
  %1561 = load i16, ptr %1560, align 2, !tbaa !115
  %1562 = zext i16 %1561 to i32
  %1563 = mul i32 %1557, %1562
  %1564 = icmp ult i32 %1556, %1563
  %1565 = shl i32 %1534, 1
  br i1 %1564, label %1566, label %1571, !prof !225

1566:                                             ; preds = %1553
  %1567 = sub nsw i32 2048, %1562
  %1568 = lshr i32 %1567, 5
  %1569 = trunc i32 %1568 to i16
  %1570 = add i16 %1561, %1569
  store i16 %1570, ptr %1560, align 2, !tbaa !115
  br label %1577

1571:                                             ; preds = %1553
  %1572 = sub i32 %1555, %1563
  %1573 = sub i32 %1556, %1563
  %1574 = lshr i16 %1561, 5
  %1575 = sub i16 %1561, %1574
  store i16 %1575, ptr %1560, align 2, !tbaa !115
  %1576 = or disjoint i32 %1565, 1
  br label %1577

1577:                                             ; preds = %1571, %1566
  %1578 = phi i32 [ %1565, %1566 ], [ %1576, %1571 ]
  %1579 = phi i32 [ %1563, %1566 ], [ %1572, %1571 ]
  %1580 = phi i32 [ %1556, %1566 ], [ %1573, %1571 ]
  %1581 = add i32 %1578, 2
  br label %2000

1582:                                             ; preds = %1403
  %1583 = sub i32 %1405, %1411
  %1584 = sub i32 %1406, %1411
  %1585 = lshr i16 %1409, 5
  %1586 = sub i16 %1409, %1585
  store i16 %1586, ptr %1408, align 2, !tbaa !212
  br label %1587

1587:                                             ; preds = %27, %1582
  %1588 = phi i64 [ %1375, %1582 ], [ %33, %27 ]
  %1589 = phi i64 [ %1376, %1582 ], [ %31, %27 ]
  %1590 = phi i32 [ %1377, %1582 ], [ %63, %27 ]
  %1591 = phi i32 [ %1378, %1582 ], [ %45, %27 ]
  %1592 = phi i32 [ %1379, %1582 ], [ %47, %27 ]
  %1593 = phi i32 [ %1380, %1582 ], [ %49, %27 ]
  %1594 = phi i32 [ %1381, %1582 ], [ %51, %27 ]
  %1595 = phi i32 [ %1382, %1582 ], [ %43, %27 ]
  %1596 = phi ptr [ %1383, %1582 ], [ %55, %27 ]
  %1597 = phi i32 [ %1384, %1582 ], [ %57, %27 ]
  %1598 = phi i32 [ %1385, %1582 ], [ %59, %27 ]
  %1599 = phi i32 [ %1386, %1582 ], [ %61, %27 ]
  %1600 = phi i64 [ %1404, %1582 ], [ %41, %27 ]
  %1601 = phi i32 [ %1583, %1582 ], [ %38, %27 ]
  %1602 = phi i32 [ %1584, %1582 ], [ %40, %27 ]
  %1603 = icmp ult i32 %1601, 16777216
  br i1 %1603, label %1604, label %1615, !prof !226, !irr_loop !227

1604:                                             ; preds = %1587
  %1605 = icmp eq i64 %1600, %4
  br i1 %1605, label %1606, label %1607, !prof !228

1606:                                             ; preds = %1604
  store i32 28, ptr %78, align 8, !tbaa !108
  br label %4111

1607:                                             ; preds = %1604
  %1608 = shl nuw i32 %1601, 8
  %1609 = shl i32 %1602, 8
  %1610 = add i64 %1600, 1
  %1611 = getelementptr inbounds i8, ptr %2, i64 %1600
  %1612 = load i8, ptr %1611, align 1, !tbaa !72
  %1613 = zext i8 %1612 to i32
  %1614 = or disjoint i32 %1609, %1613
  br label %1615

1615:                                             ; preds = %1607, %1587
  %1616 = phi i64 [ %1610, %1607 ], [ %1600, %1587 ]
  %1617 = phi i32 [ %1608, %1607 ], [ %1601, %1587 ]
  %1618 = phi i32 [ %1614, %1607 ], [ %1602, %1587 ]
  %1619 = lshr i32 %1617, 11
  %1620 = zext i32 %1597 to i64
  %1621 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1620
  %1622 = load i16, ptr %1621, align 2, !tbaa !115
  %1623 = zext i16 %1622 to i32
  %1624 = mul i32 %1619, %1623
  %1625 = icmp ult i32 %1618, %1624
  %1626 = shl i32 %1597, 1
  br i1 %1625, label %1627, label %1632, !prof !229

1627:                                             ; preds = %1615
  %1628 = sub nsw i32 2048, %1623
  %1629 = lshr i32 %1628, 5
  %1630 = trunc i32 %1629 to i16
  %1631 = add i16 %1622, %1630
  store i16 %1631, ptr %1621, align 2, !tbaa !115
  br label %1638

1632:                                             ; preds = %1615
  %1633 = sub i32 %1617, %1624
  %1634 = sub i32 %1618, %1624
  %1635 = lshr i16 %1622, 5
  %1636 = sub i16 %1622, %1635
  store i16 %1636, ptr %1621, align 2, !tbaa !115
  %1637 = or disjoint i32 %1626, 1
  br label %1638

1638:                                             ; preds = %1627, %1632, %27
  %1639 = phi i64 [ %1588, %1627 ], [ %1588, %1632 ], [ %33, %27 ]
  %1640 = phi i64 [ %1589, %1627 ], [ %1589, %1632 ], [ %31, %27 ]
  %1641 = phi i32 [ %1590, %1627 ], [ %1590, %1632 ], [ %63, %27 ]
  %1642 = phi i32 [ %1591, %1627 ], [ %1591, %1632 ], [ %45, %27 ]
  %1643 = phi i32 [ %1592, %1627 ], [ %1592, %1632 ], [ %47, %27 ]
  %1644 = phi i32 [ %1593, %1627 ], [ %1593, %1632 ], [ %49, %27 ]
  %1645 = phi i32 [ %1594, %1627 ], [ %1594, %1632 ], [ %51, %27 ]
  %1646 = phi i32 [ %1595, %1627 ], [ %1595, %1632 ], [ %43, %27 ]
  %1647 = phi ptr [ %1596, %1627 ], [ %1596, %1632 ], [ %55, %27 ]
  %1648 = phi i32 [ %1626, %1627 ], [ %1637, %1632 ], [ %57, %27 ]
  %1649 = phi i32 [ %1598, %1627 ], [ %1598, %1632 ], [ %59, %27 ]
  %1650 = phi i32 [ %1599, %1627 ], [ %1599, %1632 ], [ %61, %27 ]
  %1651 = phi i64 [ %1616, %1627 ], [ %1616, %1632 ], [ %41, %27 ]
  %1652 = phi i32 [ %1624, %1627 ], [ %1633, %1632 ], [ %38, %27 ]
  %1653 = phi i32 [ %1618, %1627 ], [ %1634, %1632 ], [ %40, %27 ]
  %1654 = icmp ult i32 %1652, 16777216
  br i1 %1654, label %1655, label %1666, !prof !230, !irr_loop !231

1655:                                             ; preds = %1638
  %1656 = icmp eq i64 %1651, %4
  br i1 %1656, label %1657, label %1658, !prof !232

1657:                                             ; preds = %1655
  store i32 29, ptr %78, align 8, !tbaa !108
  br label %4111

1658:                                             ; preds = %1655
  %1659 = shl nuw i32 %1652, 8
  %1660 = shl i32 %1653, 8
  %1661 = add i64 %1651, 1
  %1662 = getelementptr inbounds i8, ptr %2, i64 %1651
  %1663 = load i8, ptr %1662, align 1, !tbaa !72
  %1664 = zext i8 %1663 to i32
  %1665 = or disjoint i32 %1660, %1664
  br label %1666

1666:                                             ; preds = %1658, %1638
  %1667 = phi i64 [ %1661, %1658 ], [ %1651, %1638 ]
  %1668 = phi i32 [ %1659, %1658 ], [ %1652, %1638 ]
  %1669 = phi i32 [ %1665, %1658 ], [ %1653, %1638 ]
  %1670 = lshr i32 %1668, 11
  %1671 = zext i32 %1648 to i64
  %1672 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1671
  %1673 = load i16, ptr %1672, align 2, !tbaa !115
  %1674 = zext i16 %1673 to i32
  %1675 = mul i32 %1670, %1674
  %1676 = icmp ult i32 %1669, %1675
  %1677 = shl i32 %1648, 1
  br i1 %1676, label %1678, label %1683, !prof !233

1678:                                             ; preds = %1666
  %1679 = sub nsw i32 2048, %1674
  %1680 = lshr i32 %1679, 5
  %1681 = trunc i32 %1680 to i16
  %1682 = add i16 %1673, %1681
  store i16 %1682, ptr %1672, align 2, !tbaa !115
  br label %1689

1683:                                             ; preds = %1666
  %1684 = sub i32 %1668, %1675
  %1685 = sub i32 %1669, %1675
  %1686 = lshr i16 %1673, 5
  %1687 = sub i16 %1673, %1686
  store i16 %1687, ptr %1672, align 2, !tbaa !115
  %1688 = or disjoint i32 %1677, 1
  br label %1689

1689:                                             ; preds = %1678, %1683, %27
  %1690 = phi i64 [ %1639, %1678 ], [ %1639, %1683 ], [ %33, %27 ]
  %1691 = phi i64 [ %1640, %1678 ], [ %1640, %1683 ], [ %31, %27 ]
  %1692 = phi i32 [ %1641, %1678 ], [ %1641, %1683 ], [ %63, %27 ]
  %1693 = phi i32 [ %1642, %1678 ], [ %1642, %1683 ], [ %45, %27 ]
  %1694 = phi i32 [ %1643, %1678 ], [ %1643, %1683 ], [ %47, %27 ]
  %1695 = phi i32 [ %1644, %1678 ], [ %1644, %1683 ], [ %49, %27 ]
  %1696 = phi i32 [ %1645, %1678 ], [ %1645, %1683 ], [ %51, %27 ]
  %1697 = phi i32 [ %1646, %1678 ], [ %1646, %1683 ], [ %43, %27 ]
  %1698 = phi ptr [ %1647, %1678 ], [ %1647, %1683 ], [ %55, %27 ]
  %1699 = phi i32 [ %1677, %1678 ], [ %1688, %1683 ], [ %57, %27 ]
  %1700 = phi i32 [ %1649, %1678 ], [ %1649, %1683 ], [ %59, %27 ]
  %1701 = phi i32 [ %1650, %1678 ], [ %1650, %1683 ], [ %61, %27 ]
  %1702 = phi i64 [ %1667, %1678 ], [ %1667, %1683 ], [ %41, %27 ]
  %1703 = phi i32 [ %1675, %1678 ], [ %1684, %1683 ], [ %38, %27 ]
  %1704 = phi i32 [ %1669, %1678 ], [ %1685, %1683 ], [ %40, %27 ]
  %1705 = icmp ult i32 %1703, 16777216
  br i1 %1705, label %1706, label %1717, !prof !234, !irr_loop !235

1706:                                             ; preds = %1689
  %1707 = icmp eq i64 %1702, %4
  br i1 %1707, label %1708, label %1709, !prof !236

1708:                                             ; preds = %1706
  store i32 30, ptr %78, align 8, !tbaa !108
  br label %4111

1709:                                             ; preds = %1706
  %1710 = shl nuw i32 %1703, 8
  %1711 = shl i32 %1704, 8
  %1712 = add i64 %1702, 1
  %1713 = getelementptr inbounds i8, ptr %2, i64 %1702
  %1714 = load i8, ptr %1713, align 1, !tbaa !72
  %1715 = zext i8 %1714 to i32
  %1716 = or disjoint i32 %1711, %1715
  br label %1717

1717:                                             ; preds = %1709, %1689
  %1718 = phi i64 [ %1712, %1709 ], [ %1702, %1689 ]
  %1719 = phi i32 [ %1710, %1709 ], [ %1703, %1689 ]
  %1720 = phi i32 [ %1716, %1709 ], [ %1704, %1689 ]
  %1721 = lshr i32 %1719, 11
  %1722 = zext i32 %1699 to i64
  %1723 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1722
  %1724 = load i16, ptr %1723, align 2, !tbaa !115
  %1725 = zext i16 %1724 to i32
  %1726 = mul i32 %1721, %1725
  %1727 = icmp ult i32 %1720, %1726
  %1728 = shl i32 %1699, 1
  br i1 %1727, label %1729, label %1734, !prof !237

1729:                                             ; preds = %1717
  %1730 = sub nsw i32 2048, %1725
  %1731 = lshr i32 %1730, 5
  %1732 = trunc i32 %1731 to i16
  %1733 = add i16 %1724, %1732
  store i16 %1733, ptr %1723, align 2, !tbaa !115
  br label %1740

1734:                                             ; preds = %1717
  %1735 = sub i32 %1719, %1726
  %1736 = sub i32 %1720, %1726
  %1737 = lshr i16 %1724, 5
  %1738 = sub i16 %1724, %1737
  store i16 %1738, ptr %1723, align 2, !tbaa !115
  %1739 = or disjoint i32 %1728, 1
  br label %1740

1740:                                             ; preds = %1729, %1734, %27
  %1741 = phi i64 [ %1690, %1729 ], [ %1690, %1734 ], [ %33, %27 ]
  %1742 = phi i64 [ %1691, %1729 ], [ %1691, %1734 ], [ %31, %27 ]
  %1743 = phi i32 [ %1692, %1729 ], [ %1692, %1734 ], [ %63, %27 ]
  %1744 = phi i32 [ %1693, %1729 ], [ %1693, %1734 ], [ %45, %27 ]
  %1745 = phi i32 [ %1694, %1729 ], [ %1694, %1734 ], [ %47, %27 ]
  %1746 = phi i32 [ %1695, %1729 ], [ %1695, %1734 ], [ %49, %27 ]
  %1747 = phi i32 [ %1696, %1729 ], [ %1696, %1734 ], [ %51, %27 ]
  %1748 = phi i32 [ %1697, %1729 ], [ %1697, %1734 ], [ %43, %27 ]
  %1749 = phi ptr [ %1698, %1729 ], [ %1698, %1734 ], [ %55, %27 ]
  %1750 = phi i32 [ %1728, %1729 ], [ %1739, %1734 ], [ %57, %27 ]
  %1751 = phi i32 [ %1700, %1729 ], [ %1700, %1734 ], [ %59, %27 ]
  %1752 = phi i32 [ %1701, %1729 ], [ %1701, %1734 ], [ %61, %27 ]
  %1753 = phi i64 [ %1718, %1729 ], [ %1718, %1734 ], [ %41, %27 ]
  %1754 = phi i32 [ %1726, %1729 ], [ %1735, %1734 ], [ %38, %27 ]
  %1755 = phi i32 [ %1720, %1729 ], [ %1736, %1734 ], [ %40, %27 ]
  %1756 = icmp ult i32 %1754, 16777216
  br i1 %1756, label %1757, label %1768, !prof !238, !irr_loop !239

1757:                                             ; preds = %1740
  %1758 = icmp eq i64 %1753, %4
  br i1 %1758, label %1759, label %1760, !prof !240

1759:                                             ; preds = %1757
  store i32 31, ptr %78, align 8, !tbaa !108
  br label %4111

1760:                                             ; preds = %1757
  %1761 = shl nuw i32 %1754, 8
  %1762 = shl i32 %1755, 8
  %1763 = add i64 %1753, 1
  %1764 = getelementptr inbounds i8, ptr %2, i64 %1753
  %1765 = load i8, ptr %1764, align 1, !tbaa !72
  %1766 = zext i8 %1765 to i32
  %1767 = or disjoint i32 %1762, %1766
  br label %1768

1768:                                             ; preds = %1760, %1740
  %1769 = phi i64 [ %1763, %1760 ], [ %1753, %1740 ]
  %1770 = phi i32 [ %1761, %1760 ], [ %1754, %1740 ]
  %1771 = phi i32 [ %1767, %1760 ], [ %1755, %1740 ]
  %1772 = lshr i32 %1770, 11
  %1773 = zext i32 %1750 to i64
  %1774 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1773
  %1775 = load i16, ptr %1774, align 2, !tbaa !115
  %1776 = zext i16 %1775 to i32
  %1777 = mul i32 %1772, %1776
  %1778 = icmp ult i32 %1771, %1777
  %1779 = shl i32 %1750, 1
  br i1 %1778, label %1780, label %1785, !prof !241

1780:                                             ; preds = %1768
  %1781 = sub nsw i32 2048, %1776
  %1782 = lshr i32 %1781, 5
  %1783 = trunc i32 %1782 to i16
  %1784 = add i16 %1775, %1783
  store i16 %1784, ptr %1774, align 2, !tbaa !115
  br label %1791

1785:                                             ; preds = %1768
  %1786 = sub i32 %1770, %1777
  %1787 = sub i32 %1771, %1777
  %1788 = lshr i16 %1775, 5
  %1789 = sub i16 %1775, %1788
  store i16 %1789, ptr %1774, align 2, !tbaa !115
  %1790 = or disjoint i32 %1779, 1
  br label %1791

1791:                                             ; preds = %1780, %1785, %27
  %1792 = phi i64 [ %1741, %1780 ], [ %1741, %1785 ], [ %33, %27 ]
  %1793 = phi i64 [ %1742, %1780 ], [ %1742, %1785 ], [ %31, %27 ]
  %1794 = phi i32 [ %1743, %1780 ], [ %1743, %1785 ], [ %63, %27 ]
  %1795 = phi i32 [ %1744, %1780 ], [ %1744, %1785 ], [ %45, %27 ]
  %1796 = phi i32 [ %1745, %1780 ], [ %1745, %1785 ], [ %47, %27 ]
  %1797 = phi i32 [ %1746, %1780 ], [ %1746, %1785 ], [ %49, %27 ]
  %1798 = phi i32 [ %1747, %1780 ], [ %1747, %1785 ], [ %51, %27 ]
  %1799 = phi i32 [ %1748, %1780 ], [ %1748, %1785 ], [ %43, %27 ]
  %1800 = phi ptr [ %1749, %1780 ], [ %1749, %1785 ], [ %55, %27 ]
  %1801 = phi i32 [ %1779, %1780 ], [ %1790, %1785 ], [ %57, %27 ]
  %1802 = phi i32 [ %1751, %1780 ], [ %1751, %1785 ], [ %59, %27 ]
  %1803 = phi i32 [ %1752, %1780 ], [ %1752, %1785 ], [ %61, %27 ]
  %1804 = phi i64 [ %1769, %1780 ], [ %1769, %1785 ], [ %41, %27 ]
  %1805 = phi i32 [ %1777, %1780 ], [ %1786, %1785 ], [ %38, %27 ]
  %1806 = phi i32 [ %1771, %1780 ], [ %1787, %1785 ], [ %40, %27 ]
  %1807 = icmp ult i32 %1805, 16777216
  br i1 %1807, label %1808, label %1819, !prof !242, !irr_loop !243

1808:                                             ; preds = %1791
  %1809 = icmp eq i64 %1804, %4
  br i1 %1809, label %1810, label %1811, !prof !244

1810:                                             ; preds = %1808
  store i32 32, ptr %78, align 8, !tbaa !108
  br label %4111

1811:                                             ; preds = %1808
  %1812 = shl nuw i32 %1805, 8
  %1813 = shl i32 %1806, 8
  %1814 = add i64 %1804, 1
  %1815 = getelementptr inbounds i8, ptr %2, i64 %1804
  %1816 = load i8, ptr %1815, align 1, !tbaa !72
  %1817 = zext i8 %1816 to i32
  %1818 = or disjoint i32 %1813, %1817
  br label %1819

1819:                                             ; preds = %1811, %1791
  %1820 = phi i64 [ %1814, %1811 ], [ %1804, %1791 ]
  %1821 = phi i32 [ %1812, %1811 ], [ %1805, %1791 ]
  %1822 = phi i32 [ %1818, %1811 ], [ %1806, %1791 ]
  %1823 = lshr i32 %1821, 11
  %1824 = zext i32 %1801 to i64
  %1825 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1824
  %1826 = load i16, ptr %1825, align 2, !tbaa !115
  %1827 = zext i16 %1826 to i32
  %1828 = mul i32 %1823, %1827
  %1829 = icmp ult i32 %1822, %1828
  %1830 = shl i32 %1801, 1
  br i1 %1829, label %1831, label %1836, !prof !245

1831:                                             ; preds = %1819
  %1832 = sub nsw i32 2048, %1827
  %1833 = lshr i32 %1832, 5
  %1834 = trunc i32 %1833 to i16
  %1835 = add i16 %1826, %1834
  store i16 %1835, ptr %1825, align 2, !tbaa !115
  br label %1842

1836:                                             ; preds = %1819
  %1837 = sub i32 %1821, %1828
  %1838 = sub i32 %1822, %1828
  %1839 = lshr i16 %1826, 5
  %1840 = sub i16 %1826, %1839
  store i16 %1840, ptr %1825, align 2, !tbaa !115
  %1841 = or disjoint i32 %1830, 1
  br label %1842

1842:                                             ; preds = %1831, %1836, %27
  %1843 = phi i64 [ %1792, %1831 ], [ %1792, %1836 ], [ %33, %27 ]
  %1844 = phi i64 [ %1793, %1831 ], [ %1793, %1836 ], [ %31, %27 ]
  %1845 = phi i32 [ %1794, %1831 ], [ %1794, %1836 ], [ %63, %27 ]
  %1846 = phi i32 [ %1795, %1831 ], [ %1795, %1836 ], [ %45, %27 ]
  %1847 = phi i32 [ %1796, %1831 ], [ %1796, %1836 ], [ %47, %27 ]
  %1848 = phi i32 [ %1797, %1831 ], [ %1797, %1836 ], [ %49, %27 ]
  %1849 = phi i32 [ %1798, %1831 ], [ %1798, %1836 ], [ %51, %27 ]
  %1850 = phi i32 [ %1799, %1831 ], [ %1799, %1836 ], [ %43, %27 ]
  %1851 = phi ptr [ %1800, %1831 ], [ %1800, %1836 ], [ %55, %27 ]
  %1852 = phi i32 [ %1830, %1831 ], [ %1841, %1836 ], [ %57, %27 ]
  %1853 = phi i32 [ %1802, %1831 ], [ %1802, %1836 ], [ %59, %27 ]
  %1854 = phi i32 [ %1803, %1831 ], [ %1803, %1836 ], [ %61, %27 ]
  %1855 = phi i64 [ %1820, %1831 ], [ %1820, %1836 ], [ %41, %27 ]
  %1856 = phi i32 [ %1828, %1831 ], [ %1837, %1836 ], [ %38, %27 ]
  %1857 = phi i32 [ %1822, %1831 ], [ %1838, %1836 ], [ %40, %27 ]
  %1858 = icmp ult i32 %1856, 16777216
  br i1 %1858, label %1859, label %1870, !prof !246, !irr_loop !247

1859:                                             ; preds = %1842
  %1860 = icmp eq i64 %1855, %4
  br i1 %1860, label %1861, label %1862, !prof !248

1861:                                             ; preds = %1859
  store i32 33, ptr %78, align 8, !tbaa !108
  br label %4111

1862:                                             ; preds = %1859
  %1863 = shl nuw i32 %1856, 8
  %1864 = shl i32 %1857, 8
  %1865 = add i64 %1855, 1
  %1866 = getelementptr inbounds i8, ptr %2, i64 %1855
  %1867 = load i8, ptr %1866, align 1, !tbaa !72
  %1868 = zext i8 %1867 to i32
  %1869 = or disjoint i32 %1864, %1868
  br label %1870

1870:                                             ; preds = %1862, %1842
  %1871 = phi i64 [ %1865, %1862 ], [ %1855, %1842 ]
  %1872 = phi i32 [ %1863, %1862 ], [ %1856, %1842 ]
  %1873 = phi i32 [ %1869, %1862 ], [ %1857, %1842 ]
  %1874 = lshr i32 %1872, 11
  %1875 = zext i32 %1852 to i64
  %1876 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1875
  %1877 = load i16, ptr %1876, align 2, !tbaa !115
  %1878 = zext i16 %1877 to i32
  %1879 = mul i32 %1874, %1878
  %1880 = icmp ult i32 %1873, %1879
  %1881 = shl i32 %1852, 1
  br i1 %1880, label %1882, label %1887, !prof !249

1882:                                             ; preds = %1870
  %1883 = sub nsw i32 2048, %1878
  %1884 = lshr i32 %1883, 5
  %1885 = trunc i32 %1884 to i16
  %1886 = add i16 %1877, %1885
  store i16 %1886, ptr %1876, align 2, !tbaa !115
  br label %1893

1887:                                             ; preds = %1870
  %1888 = sub i32 %1872, %1879
  %1889 = sub i32 %1873, %1879
  %1890 = lshr i16 %1877, 5
  %1891 = sub i16 %1877, %1890
  store i16 %1891, ptr %1876, align 2, !tbaa !115
  %1892 = or disjoint i32 %1881, 1
  br label %1893

1893:                                             ; preds = %1882, %1887, %27
  %1894 = phi i64 [ %1843, %1882 ], [ %1843, %1887 ], [ %33, %27 ]
  %1895 = phi i64 [ %1844, %1882 ], [ %1844, %1887 ], [ %31, %27 ]
  %1896 = phi i32 [ %1845, %1882 ], [ %1845, %1887 ], [ %63, %27 ]
  %1897 = phi i32 [ %1846, %1882 ], [ %1846, %1887 ], [ %45, %27 ]
  %1898 = phi i32 [ %1847, %1882 ], [ %1847, %1887 ], [ %47, %27 ]
  %1899 = phi i32 [ %1848, %1882 ], [ %1848, %1887 ], [ %49, %27 ]
  %1900 = phi i32 [ %1849, %1882 ], [ %1849, %1887 ], [ %51, %27 ]
  %1901 = phi i32 [ %1850, %1882 ], [ %1850, %1887 ], [ %43, %27 ]
  %1902 = phi ptr [ %1851, %1882 ], [ %1851, %1887 ], [ %55, %27 ]
  %1903 = phi i32 [ %1881, %1882 ], [ %1892, %1887 ], [ %57, %27 ]
  %1904 = phi i32 [ %1853, %1882 ], [ %1853, %1887 ], [ %59, %27 ]
  %1905 = phi i32 [ %1854, %1882 ], [ %1854, %1887 ], [ %61, %27 ]
  %1906 = phi i64 [ %1871, %1882 ], [ %1871, %1887 ], [ %41, %27 ]
  %1907 = phi i32 [ %1879, %1882 ], [ %1888, %1887 ], [ %38, %27 ]
  %1908 = phi i32 [ %1873, %1882 ], [ %1889, %1887 ], [ %40, %27 ]
  %1909 = icmp ult i32 %1907, 16777216
  br i1 %1909, label %1910, label %1921, !prof !250, !irr_loop !251

1910:                                             ; preds = %1893
  %1911 = icmp eq i64 %1906, %4
  br i1 %1911, label %1912, label %1913, !prof !252

1912:                                             ; preds = %1910
  store i32 34, ptr %78, align 8, !tbaa !108
  br label %4111

1913:                                             ; preds = %1910
  %1914 = shl nuw i32 %1907, 8
  %1915 = shl i32 %1908, 8
  %1916 = add i64 %1906, 1
  %1917 = getelementptr inbounds i8, ptr %2, i64 %1906
  %1918 = load i8, ptr %1917, align 1, !tbaa !72
  %1919 = zext i8 %1918 to i32
  %1920 = or disjoint i32 %1915, %1919
  br label %1921

1921:                                             ; preds = %1913, %1893
  %1922 = phi i64 [ %1916, %1913 ], [ %1906, %1893 ]
  %1923 = phi i32 [ %1914, %1913 ], [ %1907, %1893 ]
  %1924 = phi i32 [ %1920, %1913 ], [ %1908, %1893 ]
  %1925 = lshr i32 %1923, 11
  %1926 = zext i32 %1903 to i64
  %1927 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1926
  %1928 = load i16, ptr %1927, align 2, !tbaa !115
  %1929 = zext i16 %1928 to i32
  %1930 = mul i32 %1925, %1929
  %1931 = icmp ult i32 %1924, %1930
  %1932 = shl i32 %1903, 1
  br i1 %1931, label %1933, label %1938, !prof !253

1933:                                             ; preds = %1921
  %1934 = sub nsw i32 2048, %1929
  %1935 = lshr i32 %1934, 5
  %1936 = trunc i32 %1935 to i16
  %1937 = add i16 %1928, %1936
  store i16 %1937, ptr %1927, align 2, !tbaa !115
  br label %1944

1938:                                             ; preds = %1921
  %1939 = sub i32 %1923, %1930
  %1940 = sub i32 %1924, %1930
  %1941 = lshr i16 %1928, 5
  %1942 = sub i16 %1928, %1941
  store i16 %1942, ptr %1927, align 2, !tbaa !115
  %1943 = or disjoint i32 %1932, 1
  br label %1944

1944:                                             ; preds = %1933, %1938, %27
  %1945 = phi i64 [ %1894, %1933 ], [ %1894, %1938 ], [ %33, %27 ]
  %1946 = phi i64 [ %1895, %1933 ], [ %1895, %1938 ], [ %31, %27 ]
  %1947 = phi i32 [ %1896, %1933 ], [ %1896, %1938 ], [ %63, %27 ]
  %1948 = phi i32 [ %1897, %1933 ], [ %1897, %1938 ], [ %45, %27 ]
  %1949 = phi i32 [ %1898, %1933 ], [ %1898, %1938 ], [ %47, %27 ]
  %1950 = phi i32 [ %1899, %1933 ], [ %1899, %1938 ], [ %49, %27 ]
  %1951 = phi i32 [ %1900, %1933 ], [ %1900, %1938 ], [ %51, %27 ]
  %1952 = phi i32 [ %1901, %1933 ], [ %1901, %1938 ], [ %43, %27 ]
  %1953 = phi ptr [ %1902, %1933 ], [ %1902, %1938 ], [ %55, %27 ]
  %1954 = phi i32 [ %1932, %1933 ], [ %1943, %1938 ], [ %57, %27 ]
  %1955 = phi i32 [ %1904, %1933 ], [ %1904, %1938 ], [ %59, %27 ]
  %1956 = phi i32 [ %1905, %1933 ], [ %1905, %1938 ], [ %61, %27 ]
  %1957 = phi i64 [ %1922, %1933 ], [ %1922, %1938 ], [ %41, %27 ]
  %1958 = phi i32 [ %1930, %1933 ], [ %1939, %1938 ], [ %38, %27 ]
  %1959 = phi i32 [ %1924, %1933 ], [ %1940, %1938 ], [ %40, %27 ]
  %1960 = icmp ult i32 %1958, 16777216
  br i1 %1960, label %1961, label %1972, !prof !254, !irr_loop !255

1961:                                             ; preds = %1944
  %1962 = icmp eq i64 %1957, %4
  br i1 %1962, label %1963, label %1964, !prof !256

1963:                                             ; preds = %1961
  store i32 35, ptr %78, align 8, !tbaa !108
  br label %4111

1964:                                             ; preds = %1961
  %1965 = shl nuw i32 %1958, 8
  %1966 = shl i32 %1959, 8
  %1967 = add i64 %1957, 1
  %1968 = getelementptr inbounds i8, ptr %2, i64 %1957
  %1969 = load i8, ptr %1968, align 1, !tbaa !72
  %1970 = zext i8 %1969 to i32
  %1971 = or disjoint i32 %1966, %1970
  br label %1972

1972:                                             ; preds = %1964, %1944
  %1973 = phi i64 [ %1967, %1964 ], [ %1957, %1944 ]
  %1974 = phi i32 [ %1965, %1964 ], [ %1958, %1944 ]
  %1975 = phi i32 [ %1971, %1964 ], [ %1959, %1944 ]
  %1976 = lshr i32 %1974, 11
  %1977 = zext i32 %1954 to i64
  %1978 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1977
  %1979 = load i16, ptr %1978, align 2, !tbaa !115
  %1980 = zext i16 %1979 to i32
  %1981 = mul i32 %1976, %1980
  %1982 = icmp ult i32 %1975, %1981
  %1983 = shl i32 %1954, 1
  br i1 %1982, label %1984, label %1989, !prof !257

1984:                                             ; preds = %1972
  %1985 = sub nsw i32 2048, %1980
  %1986 = lshr i32 %1985, 5
  %1987 = trunc i32 %1986 to i16
  %1988 = add i16 %1979, %1987
  store i16 %1988, ptr %1978, align 2, !tbaa !115
  br label %1995

1989:                                             ; preds = %1972
  %1990 = sub i32 %1974, %1981
  %1991 = sub i32 %1975, %1981
  %1992 = lshr i16 %1979, 5
  %1993 = sub i16 %1979, %1992
  store i16 %1993, ptr %1978, align 2, !tbaa !115
  %1994 = or disjoint i32 %1983, 1
  br label %1995

1995:                                             ; preds = %1989, %1984
  %1996 = phi i32 [ %1983, %1984 ], [ %1994, %1989 ]
  %1997 = phi i32 [ %1981, %1984 ], [ %1990, %1989 ]
  %1998 = phi i32 [ %1975, %1984 ], [ %1991, %1989 ]
  %1999 = add i32 %1996, -238
  br label %2000

2000:                                             ; preds = %1577, %1995, %1364
  %2001 = phi i64 [ %1312, %1364 ], [ %1525, %1577 ], [ %1945, %1995 ]
  %2002 = phi i64 [ %1313, %1364 ], [ %1526, %1577 ], [ %1946, %1995 ]
  %2003 = phi i32 [ %1368, %1364 ], [ %1581, %1577 ], [ %1999, %1995 ]
  %2004 = phi i32 [ %1315, %1364 ], [ %1528, %1577 ], [ %1948, %1995 ]
  %2005 = phi i32 [ %1316, %1364 ], [ %1529, %1577 ], [ %1949, %1995 ]
  %2006 = phi i32 [ %1317, %1364 ], [ %1530, %1577 ], [ %1950, %1995 ]
  %2007 = phi i32 [ %1318, %1364 ], [ %1531, %1577 ], [ %1951, %1995 ]
  %2008 = phi i32 [ %1319, %1364 ], [ %1532, %1577 ], [ %1952, %1995 ]
  %2009 = phi i32 [ %1322, %1364 ], [ %1535, %1577 ], [ %1955, %1995 ]
  %2010 = phi i32 [ %1323, %1364 ], [ %1536, %1577 ], [ %1956, %1995 ]
  %2011 = phi i64 [ %1341, %1364 ], [ %1554, %1577 ], [ %1973, %1995 ]
  %2012 = phi i32 [ %1366, %1364 ], [ %1579, %1577 ], [ %1997, %1995 ]
  %2013 = phi i32 [ %1367, %1364 ], [ %1580, %1577 ], [ %1998, %1995 ]
  %2014 = icmp ult i32 %2003, 6
  %2015 = add i32 %2003, -2
  %2016 = select i1 %2014, i32 %2015, i32 3, !prof !258
  %2017 = zext i32 %2016 to i64
  %2018 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7, i64 %2017
  br label %2019

2019:                                             ; preds = %27, %2000
  %2020 = phi i64 [ %2001, %2000 ], [ %33, %27 ]
  %2021 = phi i64 [ %2002, %2000 ], [ %31, %27 ]
  %2022 = phi i32 [ %2003, %2000 ], [ %63, %27 ]
  %2023 = phi i32 [ %2004, %2000 ], [ %45, %27 ]
  %2024 = phi i32 [ %2005, %2000 ], [ %47, %27 ]
  %2025 = phi i32 [ %2006, %2000 ], [ %49, %27 ]
  %2026 = phi i32 [ %2007, %2000 ], [ %51, %27 ]
  %2027 = phi i32 [ %2008, %2000 ], [ %43, %27 ]
  %2028 = phi ptr [ %2018, %2000 ], [ %55, %27 ]
  %2029 = phi i32 [ 1, %2000 ], [ %57, %27 ]
  %2030 = phi i32 [ %2009, %2000 ], [ %59, %27 ]
  %2031 = phi i32 [ %2010, %2000 ], [ %61, %27 ]
  %2032 = phi i64 [ %2011, %2000 ], [ %41, %27 ]
  %2033 = phi i32 [ %2012, %2000 ], [ %38, %27 ]
  %2034 = phi i32 [ %2013, %2000 ], [ %40, %27 ]
  %2035 = icmp ult i32 %2033, 16777216
  br i1 %2035, label %2036, label %2047, !prof !259, !irr_loop !260

2036:                                             ; preds = %2019
  %2037 = icmp eq i64 %2032, %4
  br i1 %2037, label %2038, label %2039, !prof !261

2038:                                             ; preds = %2036
  store i32 36, ptr %78, align 8, !tbaa !108
  br label %4111

2039:                                             ; preds = %2036
  %2040 = shl nuw i32 %2033, 8
  %2041 = shl i32 %2034, 8
  %2042 = add i64 %2032, 1
  %2043 = getelementptr inbounds i8, ptr %2, i64 %2032
  %2044 = load i8, ptr %2043, align 1, !tbaa !72
  %2045 = zext i8 %2044 to i32
  %2046 = or disjoint i32 %2041, %2045
  br label %2047

2047:                                             ; preds = %2039, %2019
  %2048 = phi i64 [ %2042, %2039 ], [ %2032, %2019 ]
  %2049 = phi i32 [ %2040, %2039 ], [ %2033, %2019 ]
  %2050 = phi i32 [ %2046, %2039 ], [ %2034, %2019 ]
  %2051 = lshr i32 %2049, 11
  %2052 = zext i32 %2029 to i64
  %2053 = getelementptr inbounds i16, ptr %2028, i64 %2052
  %2054 = load i16, ptr %2053, align 2, !tbaa !115
  %2055 = zext i16 %2054 to i32
  %2056 = mul i32 %2051, %2055
  %2057 = icmp ult i32 %2050, %2056
  %2058 = shl i32 %2029, 1
  br i1 %2057, label %2059, label %2064, !prof !262

2059:                                             ; preds = %2047
  %2060 = sub nsw i32 2048, %2055
  %2061 = lshr i32 %2060, 5
  %2062 = trunc i32 %2061 to i16
  %2063 = add i16 %2054, %2062
  store i16 %2063, ptr %2053, align 2, !tbaa !115
  br label %2070

2064:                                             ; preds = %2047
  %2065 = sub i32 %2049, %2056
  %2066 = sub i32 %2050, %2056
  %2067 = lshr i16 %2054, 5
  %2068 = sub i16 %2054, %2067
  store i16 %2068, ptr %2053, align 2, !tbaa !115
  %2069 = or disjoint i32 %2058, 1
  br label %2070

2070:                                             ; preds = %2059, %2064, %27
  %2071 = phi i64 [ %2020, %2059 ], [ %2020, %2064 ], [ %33, %27 ]
  %2072 = phi i64 [ %2021, %2059 ], [ %2021, %2064 ], [ %31, %27 ]
  %2073 = phi i32 [ %2022, %2059 ], [ %2022, %2064 ], [ %63, %27 ]
  %2074 = phi i32 [ %2023, %2059 ], [ %2023, %2064 ], [ %45, %27 ]
  %2075 = phi i32 [ %2024, %2059 ], [ %2024, %2064 ], [ %47, %27 ]
  %2076 = phi i32 [ %2025, %2059 ], [ %2025, %2064 ], [ %49, %27 ]
  %2077 = phi i32 [ %2026, %2059 ], [ %2026, %2064 ], [ %51, %27 ]
  %2078 = phi i32 [ %2027, %2059 ], [ %2027, %2064 ], [ %43, %27 ]
  %2079 = phi ptr [ %2028, %2059 ], [ %2028, %2064 ], [ %55, %27 ]
  %2080 = phi i32 [ %2058, %2059 ], [ %2069, %2064 ], [ %57, %27 ]
  %2081 = phi i32 [ %2030, %2059 ], [ %2030, %2064 ], [ %59, %27 ]
  %2082 = phi i32 [ %2031, %2059 ], [ %2031, %2064 ], [ %61, %27 ]
  %2083 = phi i64 [ %2048, %2059 ], [ %2048, %2064 ], [ %41, %27 ]
  %2084 = phi i32 [ %2056, %2059 ], [ %2065, %2064 ], [ %38, %27 ]
  %2085 = phi i32 [ %2050, %2059 ], [ %2066, %2064 ], [ %40, %27 ]
  %2086 = icmp ult i32 %2084, 16777216
  br i1 %2086, label %2087, label %2098, !prof !263, !irr_loop !264

2087:                                             ; preds = %2070
  %2088 = icmp eq i64 %2083, %4
  br i1 %2088, label %2089, label %2090, !prof !265

2089:                                             ; preds = %2087
  store i32 37, ptr %78, align 8, !tbaa !108
  br label %4111

2090:                                             ; preds = %2087
  %2091 = shl nuw i32 %2084, 8
  %2092 = shl i32 %2085, 8
  %2093 = add i64 %2083, 1
  %2094 = getelementptr inbounds i8, ptr %2, i64 %2083
  %2095 = load i8, ptr %2094, align 1, !tbaa !72
  %2096 = zext i8 %2095 to i32
  %2097 = or disjoint i32 %2092, %2096
  br label %2098

2098:                                             ; preds = %2090, %2070
  %2099 = phi i64 [ %2093, %2090 ], [ %2083, %2070 ]
  %2100 = phi i32 [ %2091, %2090 ], [ %2084, %2070 ]
  %2101 = phi i32 [ %2097, %2090 ], [ %2085, %2070 ]
  %2102 = lshr i32 %2100, 11
  %2103 = zext i32 %2080 to i64
  %2104 = getelementptr inbounds i16, ptr %2079, i64 %2103
  %2105 = load i16, ptr %2104, align 2, !tbaa !115
  %2106 = zext i16 %2105 to i32
  %2107 = mul i32 %2102, %2106
  %2108 = icmp ult i32 %2101, %2107
  %2109 = shl i32 %2080, 1
  br i1 %2108, label %2110, label %2115, !prof !266

2110:                                             ; preds = %2098
  %2111 = sub nsw i32 2048, %2106
  %2112 = lshr i32 %2111, 5
  %2113 = trunc i32 %2112 to i16
  %2114 = add i16 %2105, %2113
  store i16 %2114, ptr %2104, align 2, !tbaa !115
  br label %2121

2115:                                             ; preds = %2098
  %2116 = sub i32 %2100, %2107
  %2117 = sub i32 %2101, %2107
  %2118 = lshr i16 %2105, 5
  %2119 = sub i16 %2105, %2118
  store i16 %2119, ptr %2104, align 2, !tbaa !115
  %2120 = or disjoint i32 %2109, 1
  br label %2121

2121:                                             ; preds = %2110, %2115, %27
  %2122 = phi i64 [ %2071, %2110 ], [ %2071, %2115 ], [ %33, %27 ]
  %2123 = phi i64 [ %2072, %2110 ], [ %2072, %2115 ], [ %31, %27 ]
  %2124 = phi i32 [ %2073, %2110 ], [ %2073, %2115 ], [ %63, %27 ]
  %2125 = phi i32 [ %2074, %2110 ], [ %2074, %2115 ], [ %45, %27 ]
  %2126 = phi i32 [ %2075, %2110 ], [ %2075, %2115 ], [ %47, %27 ]
  %2127 = phi i32 [ %2076, %2110 ], [ %2076, %2115 ], [ %49, %27 ]
  %2128 = phi i32 [ %2077, %2110 ], [ %2077, %2115 ], [ %51, %27 ]
  %2129 = phi i32 [ %2078, %2110 ], [ %2078, %2115 ], [ %43, %27 ]
  %2130 = phi ptr [ %2079, %2110 ], [ %2079, %2115 ], [ %55, %27 ]
  %2131 = phi i32 [ %2109, %2110 ], [ %2120, %2115 ], [ %57, %27 ]
  %2132 = phi i32 [ %2081, %2110 ], [ %2081, %2115 ], [ %59, %27 ]
  %2133 = phi i32 [ %2082, %2110 ], [ %2082, %2115 ], [ %61, %27 ]
  %2134 = phi i64 [ %2099, %2110 ], [ %2099, %2115 ], [ %41, %27 ]
  %2135 = phi i32 [ %2107, %2110 ], [ %2116, %2115 ], [ %38, %27 ]
  %2136 = phi i32 [ %2101, %2110 ], [ %2117, %2115 ], [ %40, %27 ]
  %2137 = icmp ult i32 %2135, 16777216
  br i1 %2137, label %2138, label %2149, !prof !267, !irr_loop !268

2138:                                             ; preds = %2121
  %2139 = icmp eq i64 %2134, %4
  br i1 %2139, label %2140, label %2141, !prof !269

2140:                                             ; preds = %2138
  store i32 38, ptr %78, align 8, !tbaa !108
  br label %4111

2141:                                             ; preds = %2138
  %2142 = shl nuw i32 %2135, 8
  %2143 = shl i32 %2136, 8
  %2144 = add i64 %2134, 1
  %2145 = getelementptr inbounds i8, ptr %2, i64 %2134
  %2146 = load i8, ptr %2145, align 1, !tbaa !72
  %2147 = zext i8 %2146 to i32
  %2148 = or disjoint i32 %2143, %2147
  br label %2149

2149:                                             ; preds = %2141, %2121
  %2150 = phi i64 [ %2144, %2141 ], [ %2134, %2121 ]
  %2151 = phi i32 [ %2142, %2141 ], [ %2135, %2121 ]
  %2152 = phi i32 [ %2148, %2141 ], [ %2136, %2121 ]
  %2153 = lshr i32 %2151, 11
  %2154 = zext i32 %2131 to i64
  %2155 = getelementptr inbounds i16, ptr %2130, i64 %2154
  %2156 = load i16, ptr %2155, align 2, !tbaa !115
  %2157 = zext i16 %2156 to i32
  %2158 = mul i32 %2153, %2157
  %2159 = icmp ult i32 %2152, %2158
  %2160 = shl i32 %2131, 1
  br i1 %2159, label %2161, label %2166, !prof !270

2161:                                             ; preds = %2149
  %2162 = sub nsw i32 2048, %2157
  %2163 = lshr i32 %2162, 5
  %2164 = trunc i32 %2163 to i16
  %2165 = add i16 %2156, %2164
  store i16 %2165, ptr %2155, align 2, !tbaa !115
  br label %2172

2166:                                             ; preds = %2149
  %2167 = sub i32 %2151, %2158
  %2168 = sub i32 %2152, %2158
  %2169 = lshr i16 %2156, 5
  %2170 = sub i16 %2156, %2169
  store i16 %2170, ptr %2155, align 2, !tbaa !115
  %2171 = or disjoint i32 %2160, 1
  br label %2172

2172:                                             ; preds = %2161, %2166, %27
  %2173 = phi i64 [ %2122, %2161 ], [ %2122, %2166 ], [ %33, %27 ]
  %2174 = phi i64 [ %2123, %2161 ], [ %2123, %2166 ], [ %31, %27 ]
  %2175 = phi i32 [ %2124, %2161 ], [ %2124, %2166 ], [ %63, %27 ]
  %2176 = phi i32 [ %2125, %2161 ], [ %2125, %2166 ], [ %45, %27 ]
  %2177 = phi i32 [ %2126, %2161 ], [ %2126, %2166 ], [ %47, %27 ]
  %2178 = phi i32 [ %2127, %2161 ], [ %2127, %2166 ], [ %49, %27 ]
  %2179 = phi i32 [ %2128, %2161 ], [ %2128, %2166 ], [ %51, %27 ]
  %2180 = phi i32 [ %2129, %2161 ], [ %2129, %2166 ], [ %43, %27 ]
  %2181 = phi ptr [ %2130, %2161 ], [ %2130, %2166 ], [ %55, %27 ]
  %2182 = phi i32 [ %2160, %2161 ], [ %2171, %2166 ], [ %57, %27 ]
  %2183 = phi i32 [ %2132, %2161 ], [ %2132, %2166 ], [ %59, %27 ]
  %2184 = phi i32 [ %2133, %2161 ], [ %2133, %2166 ], [ %61, %27 ]
  %2185 = phi i64 [ %2150, %2161 ], [ %2150, %2166 ], [ %41, %27 ]
  %2186 = phi i32 [ %2158, %2161 ], [ %2167, %2166 ], [ %38, %27 ]
  %2187 = phi i32 [ %2152, %2161 ], [ %2168, %2166 ], [ %40, %27 ]
  %2188 = icmp ult i32 %2186, 16777216
  br i1 %2188, label %2189, label %2200, !prof !271, !irr_loop !272

2189:                                             ; preds = %2172
  %2190 = icmp eq i64 %2185, %4
  br i1 %2190, label %2191, label %2192, !prof !273

2191:                                             ; preds = %2189
  store i32 39, ptr %78, align 8, !tbaa !108
  br label %4111

2192:                                             ; preds = %2189
  %2193 = shl nuw i32 %2186, 8
  %2194 = shl i32 %2187, 8
  %2195 = add i64 %2185, 1
  %2196 = getelementptr inbounds i8, ptr %2, i64 %2185
  %2197 = load i8, ptr %2196, align 1, !tbaa !72
  %2198 = zext i8 %2197 to i32
  %2199 = or disjoint i32 %2194, %2198
  br label %2200

2200:                                             ; preds = %2192, %2172
  %2201 = phi i64 [ %2195, %2192 ], [ %2185, %2172 ]
  %2202 = phi i32 [ %2193, %2192 ], [ %2186, %2172 ]
  %2203 = phi i32 [ %2199, %2192 ], [ %2187, %2172 ]
  %2204 = lshr i32 %2202, 11
  %2205 = zext i32 %2182 to i64
  %2206 = getelementptr inbounds i16, ptr %2181, i64 %2205
  %2207 = load i16, ptr %2206, align 2, !tbaa !115
  %2208 = zext i16 %2207 to i32
  %2209 = mul i32 %2204, %2208
  %2210 = icmp ult i32 %2203, %2209
  %2211 = shl i32 %2182, 1
  br i1 %2210, label %2212, label %2217, !prof !274

2212:                                             ; preds = %2200
  %2213 = sub nsw i32 2048, %2208
  %2214 = lshr i32 %2213, 5
  %2215 = trunc i32 %2214 to i16
  %2216 = add i16 %2207, %2215
  store i16 %2216, ptr %2206, align 2, !tbaa !115
  br label %2223

2217:                                             ; preds = %2200
  %2218 = sub i32 %2202, %2209
  %2219 = sub i32 %2203, %2209
  %2220 = lshr i16 %2207, 5
  %2221 = sub i16 %2207, %2220
  store i16 %2221, ptr %2206, align 2, !tbaa !115
  %2222 = or disjoint i32 %2211, 1
  br label %2223

2223:                                             ; preds = %2212, %2217, %27
  %2224 = phi i64 [ %2173, %2212 ], [ %2173, %2217 ], [ %33, %27 ]
  %2225 = phi i64 [ %2174, %2212 ], [ %2174, %2217 ], [ %31, %27 ]
  %2226 = phi i32 [ %2175, %2212 ], [ %2175, %2217 ], [ %63, %27 ]
  %2227 = phi i32 [ %2176, %2212 ], [ %2176, %2217 ], [ %45, %27 ]
  %2228 = phi i32 [ %2177, %2212 ], [ %2177, %2217 ], [ %47, %27 ]
  %2229 = phi i32 [ %2178, %2212 ], [ %2178, %2217 ], [ %49, %27 ]
  %2230 = phi i32 [ %2179, %2212 ], [ %2179, %2217 ], [ %51, %27 ]
  %2231 = phi i32 [ %2180, %2212 ], [ %2180, %2217 ], [ %43, %27 ]
  %2232 = phi ptr [ %2181, %2212 ], [ %2181, %2217 ], [ %55, %27 ]
  %2233 = phi i32 [ %2211, %2212 ], [ %2222, %2217 ], [ %57, %27 ]
  %2234 = phi i32 [ %2183, %2212 ], [ %2183, %2217 ], [ %59, %27 ]
  %2235 = phi i32 [ %2184, %2212 ], [ %2184, %2217 ], [ %61, %27 ]
  %2236 = phi i64 [ %2201, %2212 ], [ %2201, %2217 ], [ %41, %27 ]
  %2237 = phi i32 [ %2209, %2212 ], [ %2218, %2217 ], [ %38, %27 ]
  %2238 = phi i32 [ %2203, %2212 ], [ %2219, %2217 ], [ %40, %27 ]
  %2239 = icmp ult i32 %2237, 16777216
  br i1 %2239, label %2240, label %2251, !prof !275, !irr_loop !276

2240:                                             ; preds = %2223
  %2241 = icmp eq i64 %2236, %4
  br i1 %2241, label %2242, label %2243, !prof !277

2242:                                             ; preds = %2240
  store i32 40, ptr %78, align 8, !tbaa !108
  br label %4111

2243:                                             ; preds = %2240
  %2244 = shl nuw i32 %2237, 8
  %2245 = shl i32 %2238, 8
  %2246 = add i64 %2236, 1
  %2247 = getelementptr inbounds i8, ptr %2, i64 %2236
  %2248 = load i8, ptr %2247, align 1, !tbaa !72
  %2249 = zext i8 %2248 to i32
  %2250 = or disjoint i32 %2245, %2249
  br label %2251

2251:                                             ; preds = %2243, %2223
  %2252 = phi i64 [ %2246, %2243 ], [ %2236, %2223 ]
  %2253 = phi i32 [ %2244, %2243 ], [ %2237, %2223 ]
  %2254 = phi i32 [ %2250, %2243 ], [ %2238, %2223 ]
  %2255 = lshr i32 %2253, 11
  %2256 = zext i32 %2233 to i64
  %2257 = getelementptr inbounds i16, ptr %2232, i64 %2256
  %2258 = load i16, ptr %2257, align 2, !tbaa !115
  %2259 = zext i16 %2258 to i32
  %2260 = mul i32 %2255, %2259
  %2261 = icmp ult i32 %2254, %2260
  %2262 = shl i32 %2233, 1
  br i1 %2261, label %2263, label %2268, !prof !278

2263:                                             ; preds = %2251
  %2264 = sub nsw i32 2048, %2259
  %2265 = lshr i32 %2264, 5
  %2266 = trunc i32 %2265 to i16
  %2267 = add i16 %2258, %2266
  store i16 %2267, ptr %2257, align 2, !tbaa !115
  br label %2274

2268:                                             ; preds = %2251
  %2269 = sub i32 %2253, %2260
  %2270 = sub i32 %2254, %2260
  %2271 = lshr i16 %2258, 5
  %2272 = sub i16 %2258, %2271
  store i16 %2272, ptr %2257, align 2, !tbaa !115
  %2273 = or disjoint i32 %2262, 1
  br label %2274

2274:                                             ; preds = %2263, %2268, %27
  %2275 = phi i64 [ %2224, %2263 ], [ %2224, %2268 ], [ %33, %27 ]
  %2276 = phi i64 [ %2225, %2263 ], [ %2225, %2268 ], [ %31, %27 ]
  %2277 = phi i32 [ %2226, %2263 ], [ %2226, %2268 ], [ %63, %27 ]
  %2278 = phi i32 [ %2227, %2263 ], [ %2227, %2268 ], [ %45, %27 ]
  %2279 = phi i32 [ %2228, %2263 ], [ %2228, %2268 ], [ %47, %27 ]
  %2280 = phi i32 [ %2229, %2263 ], [ %2229, %2268 ], [ %49, %27 ]
  %2281 = phi i32 [ %2230, %2263 ], [ %2230, %2268 ], [ %51, %27 ]
  %2282 = phi i32 [ %2231, %2263 ], [ %2231, %2268 ], [ %43, %27 ]
  %2283 = phi ptr [ %2232, %2263 ], [ %2232, %2268 ], [ %55, %27 ]
  %2284 = phi i32 [ %2262, %2263 ], [ %2273, %2268 ], [ %57, %27 ]
  %2285 = phi i32 [ %2234, %2263 ], [ %2234, %2268 ], [ %59, %27 ]
  %2286 = phi i32 [ %2235, %2263 ], [ %2235, %2268 ], [ %61, %27 ]
  %2287 = phi i64 [ %2252, %2263 ], [ %2252, %2268 ], [ %41, %27 ]
  %2288 = phi i32 [ %2260, %2263 ], [ %2269, %2268 ], [ %38, %27 ]
  %2289 = phi i32 [ %2254, %2263 ], [ %2270, %2268 ], [ %40, %27 ]
  %2290 = icmp ult i32 %2288, 16777216
  br i1 %2290, label %2291, label %2302, !prof !279, !irr_loop !280

2291:                                             ; preds = %2274
  %2292 = icmp eq i64 %2287, %4
  br i1 %2292, label %2293, label %2294, !prof !281

2293:                                             ; preds = %2291
  store i32 41, ptr %78, align 8, !tbaa !108
  br label %4111

2294:                                             ; preds = %2291
  %2295 = shl nuw i32 %2288, 8
  %2296 = shl i32 %2289, 8
  %2297 = add i64 %2287, 1
  %2298 = getelementptr inbounds i8, ptr %2, i64 %2287
  %2299 = load i8, ptr %2298, align 1, !tbaa !72
  %2300 = zext i8 %2299 to i32
  %2301 = or disjoint i32 %2296, %2300
  br label %2302

2302:                                             ; preds = %2294, %2274
  %2303 = phi i64 [ %2297, %2294 ], [ %2287, %2274 ]
  %2304 = phi i32 [ %2295, %2294 ], [ %2288, %2274 ]
  %2305 = phi i32 [ %2301, %2294 ], [ %2289, %2274 ]
  %2306 = lshr i32 %2304, 11
  %2307 = zext i32 %2284 to i64
  %2308 = getelementptr inbounds i16, ptr %2283, i64 %2307
  %2309 = load i16, ptr %2308, align 2, !tbaa !115
  %2310 = zext i16 %2309 to i32
  %2311 = mul i32 %2306, %2310
  %2312 = icmp ult i32 %2305, %2311
  %2313 = shl i32 %2284, 1
  br i1 %2312, label %2314, label %2319, !prof !282

2314:                                             ; preds = %2302
  %2315 = sub nsw i32 2048, %2310
  %2316 = lshr i32 %2315, 5
  %2317 = trunc i32 %2316 to i16
  %2318 = add i16 %2309, %2317
  store i16 %2318, ptr %2308, align 2, !tbaa !115
  br label %2325

2319:                                             ; preds = %2302
  %2320 = sub i32 %2304, %2311
  %2321 = sub i32 %2305, %2311
  %2322 = lshr i16 %2309, 5
  %2323 = sub i16 %2309, %2322
  store i16 %2323, ptr %2308, align 2, !tbaa !115
  %2324 = or disjoint i32 %2313, 1
  br label %2325

2325:                                             ; preds = %2319, %2314
  %2326 = phi i32 [ %2313, %2314 ], [ %2324, %2319 ]
  %2327 = phi i32 [ %2311, %2314 ], [ %2320, %2319 ]
  %2328 = phi i32 [ %2305, %2314 ], [ %2321, %2319 ]
  %2329 = add i32 %2326, -64
  %2330 = icmp ult i32 %2329, 4
  br i1 %2330, label %2891, label %2331, !prof !283

2331:                                             ; preds = %2325
  %2332 = lshr i32 %2329, 1
  %2333 = and i32 %2326, 1
  %2334 = or disjoint i32 %2333, 2
  %2335 = icmp ult i32 %2329, 14
  br i1 %2335, label %2336, label %2597, !prof !284

2336:                                             ; preds = %2331
  %2337 = add nsw i32 %2332, -1
  %2338 = shl i32 %2334, %2337
  %2339 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %2340 = zext i32 %2338 to i64
  %2341 = getelementptr inbounds i16, ptr %2339, i64 %2340
  %2342 = zext nneg i32 %2329 to i64
  %2343 = sub nsw i64 0, %2342
  %2344 = getelementptr inbounds i16, ptr %2341, i64 %2343
  %2345 = getelementptr inbounds i16, ptr %2344, i64 -1
  br label %2346

2346:                                             ; preds = %27, %2336
  %2347 = phi i64 [ %2275, %2336 ], [ %33, %27 ]
  %2348 = phi i64 [ %2276, %2336 ], [ %31, %27 ]
  %2349 = phi i32 [ %2277, %2336 ], [ %63, %27 ]
  %2350 = phi i32 [ %2338, %2336 ], [ %45, %27 ]
  %2351 = phi i32 [ %2279, %2336 ], [ %47, %27 ]
  %2352 = phi i32 [ %2280, %2336 ], [ %49, %27 ]
  %2353 = phi i32 [ %2281, %2336 ], [ %51, %27 ]
  %2354 = phi i32 [ %2282, %2336 ], [ %43, %27 ]
  %2355 = phi ptr [ %2345, %2336 ], [ %55, %27 ]
  %2356 = phi i32 [ 1, %2336 ], [ %57, %27 ]
  %2357 = phi i32 [ %2337, %2336 ], [ %59, %27 ]
  %2358 = phi i32 [ 0, %2336 ], [ %61, %27 ]
  %2359 = phi i64 [ %2303, %2336 ], [ %41, %27 ]
  %2360 = phi i32 [ %2327, %2336 ], [ %38, %27 ]
  %2361 = phi i32 [ %2328, %2336 ], [ %40, %27 ]
  switch i32 %2357, label %2891 [
    i32 5, label %2362
    i32 4, label %2405
    i32 3, label %2455
    i32 2, label %2505
    i32 1, label %2555
  ], !prof !285, !irr_loop !286

2362:                                             ; preds = %2346
  %2363 = icmp ult i32 %2360, 16777216
  br i1 %2363, label %2364, label %2375, !prof !287

2364:                                             ; preds = %2362
  %2365 = icmp eq i64 %2359, %4
  br i1 %2365, label %2366, label %2367, !prof !288

2366:                                             ; preds = %2364
  store i32 42, ptr %78, align 8, !tbaa !108
  br label %4111

2367:                                             ; preds = %2364
  %2368 = shl nuw i32 %2360, 8
  %2369 = shl i32 %2361, 8
  %2370 = add i64 %2359, 1
  %2371 = getelementptr inbounds i8, ptr %2, i64 %2359
  %2372 = load i8, ptr %2371, align 1, !tbaa !72
  %2373 = zext i8 %2372 to i32
  %2374 = or disjoint i32 %2369, %2373
  br label %2375

2375:                                             ; preds = %2367, %2362
  %2376 = phi i64 [ %2370, %2367 ], [ %2359, %2362 ]
  %2377 = phi i32 [ %2368, %2367 ], [ %2360, %2362 ]
  %2378 = phi i32 [ %2374, %2367 ], [ %2361, %2362 ]
  %2379 = lshr i32 %2377, 11
  %2380 = zext i32 %2356 to i64
  %2381 = getelementptr inbounds i16, ptr %2355, i64 %2380
  %2382 = load i16, ptr %2381, align 2, !tbaa !115
  %2383 = zext i16 %2382 to i32
  %2384 = mul i32 %2379, %2383
  %2385 = icmp ult i32 %2378, %2384
  %2386 = shl i32 %2356, 1
  br i1 %2385, label %2387, label %2392, !prof !289

2387:                                             ; preds = %2375
  %2388 = sub nsw i32 2048, %2383
  %2389 = lshr i32 %2388, 5
  %2390 = trunc i32 %2389 to i16
  %2391 = add i16 %2382, %2390
  store i16 %2391, ptr %2381, align 2, !tbaa !115
  br label %2399

2392:                                             ; preds = %2375
  %2393 = sub i32 %2377, %2384
  %2394 = sub i32 %2378, %2384
  %2395 = lshr i16 %2382, 5
  %2396 = sub i16 %2382, %2395
  store i16 %2396, ptr %2381, align 2, !tbaa !115
  %2397 = or disjoint i32 %2386, 1
  %2398 = add i32 %2350, 1
  br label %2399

2399:                                             ; preds = %2392, %2387
  %2400 = phi i32 [ %2350, %2387 ], [ %2398, %2392 ]
  %2401 = phi i32 [ %2386, %2387 ], [ %2397, %2392 ]
  %2402 = phi i32 [ %2384, %2387 ], [ %2393, %2392 ]
  %2403 = phi i32 [ %2378, %2387 ], [ %2394, %2392 ]
  %2404 = add i32 %2358, 1
  br label %2405

2405:                                             ; preds = %2346, %2399
  %2406 = phi i32 [ %2350, %2346 ], [ %2400, %2399 ]
  %2407 = phi i32 [ %2356, %2346 ], [ %2401, %2399 ]
  %2408 = phi i32 [ %2358, %2346 ], [ %2404, %2399 ]
  %2409 = phi i64 [ %2359, %2346 ], [ %2376, %2399 ]
  %2410 = phi i32 [ %2360, %2346 ], [ %2402, %2399 ]
  %2411 = phi i32 [ %2361, %2346 ], [ %2403, %2399 ]
  %2412 = icmp ult i32 %2410, 16777216
  br i1 %2412, label %2413, label %2424, !prof !290

2413:                                             ; preds = %2405
  %2414 = icmp eq i64 %2409, %4
  br i1 %2414, label %2415, label %2416, !prof !291

2415:                                             ; preds = %2413
  store i32 42, ptr %78, align 8, !tbaa !108
  br label %4111

2416:                                             ; preds = %2413
  %2417 = shl nuw i32 %2410, 8
  %2418 = shl i32 %2411, 8
  %2419 = add i64 %2409, 1
  %2420 = getelementptr inbounds i8, ptr %2, i64 %2409
  %2421 = load i8, ptr %2420, align 1, !tbaa !72
  %2422 = zext i8 %2421 to i32
  %2423 = or disjoint i32 %2418, %2422
  br label %2424

2424:                                             ; preds = %2416, %2405
  %2425 = phi i64 [ %2419, %2416 ], [ %2409, %2405 ]
  %2426 = phi i32 [ %2417, %2416 ], [ %2410, %2405 ]
  %2427 = phi i32 [ %2423, %2416 ], [ %2411, %2405 ]
  %2428 = lshr i32 %2426, 11
  %2429 = zext i32 %2407 to i64
  %2430 = getelementptr inbounds i16, ptr %2355, i64 %2429
  %2431 = load i16, ptr %2430, align 2, !tbaa !115
  %2432 = zext i16 %2431 to i32
  %2433 = mul i32 %2428, %2432
  %2434 = icmp ult i32 %2427, %2433
  %2435 = shl i32 %2407, 1
  br i1 %2434, label %2436, label %2441, !prof !292

2436:                                             ; preds = %2424
  %2437 = sub nsw i32 2048, %2432
  %2438 = lshr i32 %2437, 5
  %2439 = trunc i32 %2438 to i16
  %2440 = add i16 %2431, %2439
  store i16 %2440, ptr %2430, align 2, !tbaa !115
  br label %2449

2441:                                             ; preds = %2424
  %2442 = sub i32 %2426, %2433
  %2443 = sub i32 %2427, %2433
  %2444 = lshr i16 %2431, 5
  %2445 = sub i16 %2431, %2444
  store i16 %2445, ptr %2430, align 2, !tbaa !115
  %2446 = or disjoint i32 %2435, 1
  %2447 = shl nuw i32 1, %2408
  %2448 = add i32 %2447, %2406
  br label %2449

2449:                                             ; preds = %2441, %2436
  %2450 = phi i32 [ %2406, %2436 ], [ %2448, %2441 ]
  %2451 = phi i32 [ %2435, %2436 ], [ %2446, %2441 ]
  %2452 = phi i32 [ %2433, %2436 ], [ %2442, %2441 ]
  %2453 = phi i32 [ %2427, %2436 ], [ %2443, %2441 ]
  %2454 = add i32 %2408, 1
  br label %2455

2455:                                             ; preds = %2346, %2449
  %2456 = phi i32 [ %2350, %2346 ], [ %2450, %2449 ]
  %2457 = phi i32 [ %2356, %2346 ], [ %2451, %2449 ]
  %2458 = phi i32 [ %2358, %2346 ], [ %2454, %2449 ]
  %2459 = phi i64 [ %2359, %2346 ], [ %2425, %2449 ]
  %2460 = phi i32 [ %2360, %2346 ], [ %2452, %2449 ]
  %2461 = phi i32 [ %2361, %2346 ], [ %2453, %2449 ]
  %2462 = icmp ult i32 %2460, 16777216
  br i1 %2462, label %2463, label %2474, !prof !293

2463:                                             ; preds = %2455
  %2464 = icmp eq i64 %2459, %4
  br i1 %2464, label %2465, label %2466, !prof !294

2465:                                             ; preds = %2463
  store i32 42, ptr %78, align 8, !tbaa !108
  br label %4111

2466:                                             ; preds = %2463
  %2467 = shl nuw i32 %2460, 8
  %2468 = shl i32 %2461, 8
  %2469 = add i64 %2459, 1
  %2470 = getelementptr inbounds i8, ptr %2, i64 %2459
  %2471 = load i8, ptr %2470, align 1, !tbaa !72
  %2472 = zext i8 %2471 to i32
  %2473 = or disjoint i32 %2468, %2472
  br label %2474

2474:                                             ; preds = %2466, %2455
  %2475 = phi i64 [ %2469, %2466 ], [ %2459, %2455 ]
  %2476 = phi i32 [ %2467, %2466 ], [ %2460, %2455 ]
  %2477 = phi i32 [ %2473, %2466 ], [ %2461, %2455 ]
  %2478 = lshr i32 %2476, 11
  %2479 = zext i32 %2457 to i64
  %2480 = getelementptr inbounds i16, ptr %2355, i64 %2479
  %2481 = load i16, ptr %2480, align 2, !tbaa !115
  %2482 = zext i16 %2481 to i32
  %2483 = mul i32 %2478, %2482
  %2484 = icmp ult i32 %2477, %2483
  %2485 = shl i32 %2457, 1
  br i1 %2484, label %2486, label %2491, !prof !295

2486:                                             ; preds = %2474
  %2487 = sub nsw i32 2048, %2482
  %2488 = lshr i32 %2487, 5
  %2489 = trunc i32 %2488 to i16
  %2490 = add i16 %2481, %2489
  store i16 %2490, ptr %2480, align 2, !tbaa !115
  br label %2499

2491:                                             ; preds = %2474
  %2492 = sub i32 %2476, %2483
  %2493 = sub i32 %2477, %2483
  %2494 = lshr i16 %2481, 5
  %2495 = sub i16 %2481, %2494
  store i16 %2495, ptr %2480, align 2, !tbaa !115
  %2496 = or disjoint i32 %2485, 1
  %2497 = shl nuw i32 1, %2458
  %2498 = add i32 %2497, %2456
  br label %2499

2499:                                             ; preds = %2491, %2486
  %2500 = phi i32 [ %2456, %2486 ], [ %2498, %2491 ]
  %2501 = phi i32 [ %2485, %2486 ], [ %2496, %2491 ]
  %2502 = phi i32 [ %2483, %2486 ], [ %2492, %2491 ]
  %2503 = phi i32 [ %2477, %2486 ], [ %2493, %2491 ]
  %2504 = add i32 %2458, 1
  br label %2505

2505:                                             ; preds = %2346, %2499
  %2506 = phi i32 [ %2350, %2346 ], [ %2500, %2499 ]
  %2507 = phi i32 [ %2356, %2346 ], [ %2501, %2499 ]
  %2508 = phi i32 [ %2358, %2346 ], [ %2504, %2499 ]
  %2509 = phi i64 [ %2359, %2346 ], [ %2475, %2499 ]
  %2510 = phi i32 [ %2360, %2346 ], [ %2502, %2499 ]
  %2511 = phi i32 [ %2361, %2346 ], [ %2503, %2499 ]
  %2512 = icmp ult i32 %2510, 16777216
  br i1 %2512, label %2513, label %2524, !prof !296

2513:                                             ; preds = %2505
  %2514 = icmp eq i64 %2509, %4
  br i1 %2514, label %2515, label %2516, !prof !297

2515:                                             ; preds = %2513
  store i32 42, ptr %78, align 8, !tbaa !108
  br label %4111

2516:                                             ; preds = %2513
  %2517 = shl nuw i32 %2510, 8
  %2518 = shl i32 %2511, 8
  %2519 = add i64 %2509, 1
  %2520 = getelementptr inbounds i8, ptr %2, i64 %2509
  %2521 = load i8, ptr %2520, align 1, !tbaa !72
  %2522 = zext i8 %2521 to i32
  %2523 = or disjoint i32 %2518, %2522
  br label %2524

2524:                                             ; preds = %2516, %2505
  %2525 = phi i64 [ %2519, %2516 ], [ %2509, %2505 ]
  %2526 = phi i32 [ %2517, %2516 ], [ %2510, %2505 ]
  %2527 = phi i32 [ %2523, %2516 ], [ %2511, %2505 ]
  %2528 = lshr i32 %2526, 11
  %2529 = zext i32 %2507 to i64
  %2530 = getelementptr inbounds i16, ptr %2355, i64 %2529
  %2531 = load i16, ptr %2530, align 2, !tbaa !115
  %2532 = zext i16 %2531 to i32
  %2533 = mul i32 %2528, %2532
  %2534 = icmp ult i32 %2527, %2533
  %2535 = shl i32 %2507, 1
  br i1 %2534, label %2536, label %2541, !prof !298

2536:                                             ; preds = %2524
  %2537 = sub nsw i32 2048, %2532
  %2538 = lshr i32 %2537, 5
  %2539 = trunc i32 %2538 to i16
  %2540 = add i16 %2531, %2539
  store i16 %2540, ptr %2530, align 2, !tbaa !115
  br label %2549

2541:                                             ; preds = %2524
  %2542 = sub i32 %2526, %2533
  %2543 = sub i32 %2527, %2533
  %2544 = lshr i16 %2531, 5
  %2545 = sub i16 %2531, %2544
  store i16 %2545, ptr %2530, align 2, !tbaa !115
  %2546 = or disjoint i32 %2535, 1
  %2547 = shl nuw i32 1, %2508
  %2548 = add i32 %2547, %2506
  br label %2549

2549:                                             ; preds = %2541, %2536
  %2550 = phi i32 [ %2506, %2536 ], [ %2548, %2541 ]
  %2551 = phi i32 [ %2535, %2536 ], [ %2546, %2541 ]
  %2552 = phi i32 [ %2533, %2536 ], [ %2542, %2541 ]
  %2553 = phi i32 [ %2527, %2536 ], [ %2543, %2541 ]
  %2554 = add i32 %2508, 1
  br label %2555

2555:                                             ; preds = %2346, %2549
  %2556 = phi i32 [ %2350, %2346 ], [ %2550, %2549 ]
  %2557 = phi i32 [ %2356, %2346 ], [ %2551, %2549 ]
  %2558 = phi i32 [ %2358, %2346 ], [ %2554, %2549 ]
  %2559 = phi i64 [ %2359, %2346 ], [ %2525, %2549 ]
  %2560 = phi i32 [ %2360, %2346 ], [ %2552, %2549 ]
  %2561 = phi i32 [ %2361, %2346 ], [ %2553, %2549 ]
  %2562 = icmp ult i32 %2560, 16777216
  br i1 %2562, label %2563, label %2574, !prof !299

2563:                                             ; preds = %2555
  %2564 = icmp eq i64 %2559, %4
  br i1 %2564, label %2565, label %2566, !prof !300

2565:                                             ; preds = %2563
  store i32 42, ptr %78, align 8, !tbaa !108
  br label %4111

2566:                                             ; preds = %2563
  %2567 = shl nuw i32 %2560, 8
  %2568 = shl i32 %2561, 8
  %2569 = add i64 %2559, 1
  %2570 = getelementptr inbounds i8, ptr %2, i64 %2559
  %2571 = load i8, ptr %2570, align 1, !tbaa !72
  %2572 = zext i8 %2571 to i32
  %2573 = or disjoint i32 %2568, %2572
  br label %2574

2574:                                             ; preds = %2566, %2555
  %2575 = phi i64 [ %2569, %2566 ], [ %2559, %2555 ]
  %2576 = phi i32 [ %2567, %2566 ], [ %2560, %2555 ]
  %2577 = phi i32 [ %2573, %2566 ], [ %2561, %2555 ]
  %2578 = lshr i32 %2576, 11
  %2579 = zext i32 %2557 to i64
  %2580 = getelementptr inbounds i16, ptr %2355, i64 %2579
  %2581 = load i16, ptr %2580, align 2, !tbaa !115
  %2582 = zext i16 %2581 to i32
  %2583 = mul i32 %2578, %2582
  %2584 = icmp ult i32 %2577, %2583
  br i1 %2584, label %2585, label %2590, !prof !301

2585:                                             ; preds = %2574
  %2586 = sub nsw i32 2048, %2582
  %2587 = lshr i32 %2586, 5
  %2588 = trunc i32 %2587 to i16
  %2589 = add i16 %2581, %2588
  store i16 %2589, ptr %2580, align 2, !tbaa !115
  br label %2891

2590:                                             ; preds = %2574
  %2591 = sub i32 %2576, %2583
  %2592 = sub i32 %2577, %2583
  %2593 = lshr i16 %2581, 5
  %2594 = sub i16 %2581, %2593
  store i16 %2594, ptr %2580, align 2, !tbaa !115
  %2595 = shl nuw i32 1, %2558
  %2596 = add i32 %2595, %2556
  br label %2891

2597:                                             ; preds = %2331
  %2598 = add nsw i32 %2332, -5
  br label %2599

2599:                                             ; preds = %27, %2597
  %2600 = phi i64 [ %2275, %2597 ], [ %33, %27 ]
  %2601 = phi i64 [ %2276, %2597 ], [ %31, %27 ]
  %2602 = phi i32 [ %2277, %2597 ], [ %63, %27 ]
  %2603 = phi i32 [ %2334, %2597 ], [ %45, %27 ]
  %2604 = phi i32 [ %2279, %2597 ], [ %47, %27 ]
  %2605 = phi i32 [ %2280, %2597 ], [ %49, %27 ]
  %2606 = phi i32 [ %2281, %2597 ], [ %51, %27 ]
  %2607 = phi i32 [ %2282, %2597 ], [ %43, %27 ]
  %2608 = phi ptr [ %2283, %2597 ], [ %55, %27 ]
  %2609 = phi i32 [ %2329, %2597 ], [ %57, %27 ]
  %2610 = phi i32 [ %2598, %2597 ], [ %59, %27 ]
  %2611 = phi i32 [ %2286, %2597 ], [ %61, %27 ]
  %2612 = phi i64 [ %2303, %2597 ], [ %41, %27 ]
  %2613 = phi i32 [ %2327, %2597 ], [ %38, %27 ]
  %2614 = phi i32 [ %2328, %2597 ], [ %40, %27 ]
  br label %2615, !irr_loop !302

2615:                                             ; preds = %2633, %2599
  %2616 = phi i32 [ %2603, %2599 ], [ %2644, %2633 ]
  %2617 = phi i32 [ %2610, %2599 ], [ %2645, %2633 ]
  %2618 = phi i64 [ %2612, %2599 ], [ %2634, %2633 ]
  %2619 = phi i32 [ %2613, %2599 ], [ %2637, %2633 ]
  %2620 = phi i32 [ %2614, %2599 ], [ %2641, %2633 ]
  %2621 = icmp ult i32 %2619, 16777216
  br i1 %2621, label %2622, label %2633, !prof !303

2622:                                             ; preds = %2615
  %2623 = icmp eq i64 %2618, %4
  br i1 %2623, label %2624, label %2625, !prof !304

2624:                                             ; preds = %2622
  store i32 43, ptr %78, align 8, !tbaa !108
  br label %4111

2625:                                             ; preds = %2622
  %2626 = shl nuw i32 %2619, 8
  %2627 = shl i32 %2620, 8
  %2628 = add i64 %2618, 1
  %2629 = getelementptr inbounds i8, ptr %2, i64 %2618
  %2630 = load i8, ptr %2629, align 1, !tbaa !72
  %2631 = zext i8 %2630 to i32
  %2632 = or disjoint i32 %2627, %2631
  br label %2633

2633:                                             ; preds = %2615, %2625
  %2634 = phi i64 [ %2628, %2625 ], [ %2618, %2615 ]
  %2635 = phi i32 [ %2626, %2625 ], [ %2619, %2615 ]
  %2636 = phi i32 [ %2632, %2625 ], [ %2620, %2615 ]
  %2637 = lshr i32 %2635, 1
  %2638 = sub i32 %2636, %2637
  %2639 = ashr i32 %2638, 31
  %2640 = and i32 %2639, %2637
  %2641 = add i32 %2640, %2638
  %2642 = shl i32 %2616, 1
  %2643 = or disjoint i32 %2642, 1
  %2644 = add nsw i32 %2643, %2639
  %2645 = add i32 %2617, -1
  %2646 = icmp eq i32 %2645, 0
  br i1 %2646, label %2647, label %2615, !prof !305, !llvm.loop !306

2647:                                             ; preds = %2633
  %2648 = shl i32 %2644, 4
  br label %2649

2649:                                             ; preds = %27, %2647
  %2650 = phi i64 [ %2600, %2647 ], [ %33, %27 ]
  %2651 = phi i64 [ %2601, %2647 ], [ %31, %27 ]
  %2652 = phi i32 [ %2602, %2647 ], [ %63, %27 ]
  %2653 = phi i32 [ %2648, %2647 ], [ %45, %27 ]
  %2654 = phi i32 [ %2604, %2647 ], [ %47, %27 ]
  %2655 = phi i32 [ %2605, %2647 ], [ %49, %27 ]
  %2656 = phi i32 [ %2606, %2647 ], [ %51, %27 ]
  %2657 = phi i32 [ %2607, %2647 ], [ %43, %27 ]
  %2658 = phi ptr [ %2608, %2647 ], [ %55, %27 ]
  %2659 = phi i32 [ 1, %2647 ], [ %57, %27 ]
  %2660 = phi i32 [ 0, %2647 ], [ %59, %27 ]
  %2661 = phi i32 [ %2611, %2647 ], [ %61, %27 ]
  %2662 = phi i64 [ %2634, %2647 ], [ %41, %27 ]
  %2663 = phi i32 [ %2637, %2647 ], [ %38, %27 ]
  %2664 = phi i32 [ %2641, %2647 ], [ %40, %27 ]
  %2665 = icmp ult i32 %2663, 16777216
  br i1 %2665, label %2666, label %2677, !prof !307, !irr_loop !308

2666:                                             ; preds = %2649
  %2667 = icmp eq i64 %2662, %4
  br i1 %2667, label %2668, label %2669, !prof !309

2668:                                             ; preds = %2666
  store i32 44, ptr %78, align 8, !tbaa !108
  br label %4111

2669:                                             ; preds = %2666
  %2670 = shl nuw i32 %2663, 8
  %2671 = shl i32 %2664, 8
  %2672 = add i64 %2662, 1
  %2673 = getelementptr inbounds i8, ptr %2, i64 %2662
  %2674 = load i8, ptr %2673, align 1, !tbaa !72
  %2675 = zext i8 %2674 to i32
  %2676 = or disjoint i32 %2671, %2675
  br label %2677

2677:                                             ; preds = %2669, %2649
  %2678 = phi i64 [ %2672, %2669 ], [ %2662, %2649 ]
  %2679 = phi i32 [ %2670, %2669 ], [ %2663, %2649 ]
  %2680 = phi i32 [ %2676, %2669 ], [ %2664, %2649 ]
  %2681 = lshr i32 %2679, 11
  %2682 = zext i32 %2659 to i64
  %2683 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %2682
  %2684 = load i16, ptr %2683, align 2, !tbaa !115
  %2685 = zext i16 %2684 to i32
  %2686 = mul i32 %2681, %2685
  %2687 = icmp ult i32 %2680, %2686
  %2688 = shl i32 %2659, 1
  br i1 %2687, label %2689, label %2694, !prof !310

2689:                                             ; preds = %2677
  %2690 = sub nsw i32 2048, %2685
  %2691 = lshr i32 %2690, 5
  %2692 = trunc i32 %2691 to i16
  %2693 = add i16 %2684, %2692
  store i16 %2693, ptr %2683, align 2, !tbaa !115
  br label %2701

2694:                                             ; preds = %2677
  %2695 = sub i32 %2679, %2686
  %2696 = sub i32 %2680, %2686
  %2697 = lshr i16 %2684, 5
  %2698 = sub i16 %2684, %2697
  store i16 %2698, ptr %2683, align 2, !tbaa !115
  %2699 = or disjoint i32 %2688, 1
  %2700 = add i32 %2653, 1
  br label %2701

2701:                                             ; preds = %2689, %2694, %27
  %2702 = phi i64 [ %2650, %2689 ], [ %2650, %2694 ], [ %33, %27 ]
  %2703 = phi i64 [ %2651, %2689 ], [ %2651, %2694 ], [ %31, %27 ]
  %2704 = phi i32 [ %2652, %2689 ], [ %2652, %2694 ], [ %63, %27 ]
  %2705 = phi i32 [ %2653, %2689 ], [ %2700, %2694 ], [ %45, %27 ]
  %2706 = phi i32 [ %2654, %2689 ], [ %2654, %2694 ], [ %47, %27 ]
  %2707 = phi i32 [ %2655, %2689 ], [ %2655, %2694 ], [ %49, %27 ]
  %2708 = phi i32 [ %2656, %2689 ], [ %2656, %2694 ], [ %51, %27 ]
  %2709 = phi i32 [ %2657, %2689 ], [ %2657, %2694 ], [ %43, %27 ]
  %2710 = phi ptr [ %2658, %2689 ], [ %2658, %2694 ], [ %55, %27 ]
  %2711 = phi i32 [ %2688, %2689 ], [ %2699, %2694 ], [ %57, %27 ]
  %2712 = phi i32 [ %2660, %2689 ], [ %2660, %2694 ], [ %59, %27 ]
  %2713 = phi i32 [ %2661, %2689 ], [ %2661, %2694 ], [ %61, %27 ]
  %2714 = phi i64 [ %2678, %2689 ], [ %2678, %2694 ], [ %41, %27 ]
  %2715 = phi i32 [ %2686, %2689 ], [ %2695, %2694 ], [ %38, %27 ]
  %2716 = phi i32 [ %2680, %2689 ], [ %2696, %2694 ], [ %40, %27 ]
  %2717 = icmp ult i32 %2715, 16777216
  br i1 %2717, label %2718, label %2729, !prof !311, !irr_loop !312

2718:                                             ; preds = %2701
  %2719 = icmp eq i64 %2714, %4
  br i1 %2719, label %2720, label %2721, !prof !313

2720:                                             ; preds = %2718
  store i32 45, ptr %78, align 8, !tbaa !108
  br label %4111

2721:                                             ; preds = %2718
  %2722 = shl nuw i32 %2715, 8
  %2723 = shl i32 %2716, 8
  %2724 = add i64 %2714, 1
  %2725 = getelementptr inbounds i8, ptr %2, i64 %2714
  %2726 = load i8, ptr %2725, align 1, !tbaa !72
  %2727 = zext i8 %2726 to i32
  %2728 = or disjoint i32 %2723, %2727
  br label %2729

2729:                                             ; preds = %2721, %2701
  %2730 = phi i64 [ %2724, %2721 ], [ %2714, %2701 ]
  %2731 = phi i32 [ %2722, %2721 ], [ %2715, %2701 ]
  %2732 = phi i32 [ %2728, %2721 ], [ %2716, %2701 ]
  %2733 = lshr i32 %2731, 11
  %2734 = zext i32 %2711 to i64
  %2735 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %2734
  %2736 = load i16, ptr %2735, align 2, !tbaa !115
  %2737 = zext i16 %2736 to i32
  %2738 = mul i32 %2733, %2737
  %2739 = icmp ult i32 %2732, %2738
  %2740 = shl i32 %2711, 1
  br i1 %2739, label %2741, label %2746, !prof !314

2741:                                             ; preds = %2729
  %2742 = sub nsw i32 2048, %2737
  %2743 = lshr i32 %2742, 5
  %2744 = trunc i32 %2743 to i16
  %2745 = add i16 %2736, %2744
  store i16 %2745, ptr %2735, align 2, !tbaa !115
  br label %2753

2746:                                             ; preds = %2729
  %2747 = sub i32 %2731, %2738
  %2748 = sub i32 %2732, %2738
  %2749 = lshr i16 %2736, 5
  %2750 = sub i16 %2736, %2749
  store i16 %2750, ptr %2735, align 2, !tbaa !115
  %2751 = or disjoint i32 %2740, 1
  %2752 = add i32 %2705, 2
  br label %2753

2753:                                             ; preds = %2741, %2746, %27
  %2754 = phi i64 [ %2702, %2741 ], [ %2702, %2746 ], [ %33, %27 ]
  %2755 = phi i64 [ %2703, %2741 ], [ %2703, %2746 ], [ %31, %27 ]
  %2756 = phi i32 [ %2704, %2741 ], [ %2704, %2746 ], [ %63, %27 ]
  %2757 = phi i32 [ %2705, %2741 ], [ %2752, %2746 ], [ %45, %27 ]
  %2758 = phi i32 [ %2706, %2741 ], [ %2706, %2746 ], [ %47, %27 ]
  %2759 = phi i32 [ %2707, %2741 ], [ %2707, %2746 ], [ %49, %27 ]
  %2760 = phi i32 [ %2708, %2741 ], [ %2708, %2746 ], [ %51, %27 ]
  %2761 = phi i32 [ %2709, %2741 ], [ %2709, %2746 ], [ %43, %27 ]
  %2762 = phi ptr [ %2710, %2741 ], [ %2710, %2746 ], [ %55, %27 ]
  %2763 = phi i32 [ %2740, %2741 ], [ %2751, %2746 ], [ %57, %27 ]
  %2764 = phi i32 [ %2712, %2741 ], [ %2712, %2746 ], [ %59, %27 ]
  %2765 = phi i32 [ %2713, %2741 ], [ %2713, %2746 ], [ %61, %27 ]
  %2766 = phi i64 [ %2730, %2741 ], [ %2730, %2746 ], [ %41, %27 ]
  %2767 = phi i32 [ %2738, %2741 ], [ %2747, %2746 ], [ %38, %27 ]
  %2768 = phi i32 [ %2732, %2741 ], [ %2748, %2746 ], [ %40, %27 ]
  %2769 = icmp ult i32 %2767, 16777216
  br i1 %2769, label %2770, label %2781, !prof !315, !irr_loop !312

2770:                                             ; preds = %2753
  %2771 = icmp eq i64 %2766, %4
  br i1 %2771, label %2772, label %2773, !prof !316

2772:                                             ; preds = %2770
  store i32 46, ptr %78, align 8, !tbaa !108
  br label %4111

2773:                                             ; preds = %2770
  %2774 = shl nuw i32 %2767, 8
  %2775 = shl i32 %2768, 8
  %2776 = add i64 %2766, 1
  %2777 = getelementptr inbounds i8, ptr %2, i64 %2766
  %2778 = load i8, ptr %2777, align 1, !tbaa !72
  %2779 = zext i8 %2778 to i32
  %2780 = or disjoint i32 %2775, %2779
  br label %2781

2781:                                             ; preds = %2773, %2753
  %2782 = phi i64 [ %2776, %2773 ], [ %2766, %2753 ]
  %2783 = phi i32 [ %2774, %2773 ], [ %2767, %2753 ]
  %2784 = phi i32 [ %2780, %2773 ], [ %2768, %2753 ]
  %2785 = lshr i32 %2783, 11
  %2786 = zext i32 %2763 to i64
  %2787 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %2786
  %2788 = load i16, ptr %2787, align 2, !tbaa !115
  %2789 = zext i16 %2788 to i32
  %2790 = mul i32 %2785, %2789
  %2791 = icmp ult i32 %2784, %2790
  %2792 = shl i32 %2763, 1
  br i1 %2791, label %2793, label %2798, !prof !317

2793:                                             ; preds = %2781
  %2794 = sub nsw i32 2048, %2789
  %2795 = lshr i32 %2794, 5
  %2796 = trunc i32 %2795 to i16
  %2797 = add i16 %2788, %2796
  store i16 %2797, ptr %2787, align 2, !tbaa !115
  br label %2805

2798:                                             ; preds = %2781
  %2799 = sub i32 %2783, %2790
  %2800 = sub i32 %2784, %2790
  %2801 = lshr i16 %2788, 5
  %2802 = sub i16 %2788, %2801
  store i16 %2802, ptr %2787, align 2, !tbaa !115
  %2803 = or disjoint i32 %2792, 1
  %2804 = add i32 %2757, 4
  br label %2805

2805:                                             ; preds = %2793, %2798, %27
  %2806 = phi i64 [ %2754, %2793 ], [ %2754, %2798 ], [ %33, %27 ]
  %2807 = phi i64 [ %2755, %2793 ], [ %2755, %2798 ], [ %31, %27 ]
  %2808 = phi i32 [ %2756, %2793 ], [ %2756, %2798 ], [ %63, %27 ]
  %2809 = phi i32 [ %2757, %2793 ], [ %2804, %2798 ], [ %45, %27 ]
  %2810 = phi i32 [ %2758, %2793 ], [ %2758, %2798 ], [ %47, %27 ]
  %2811 = phi i32 [ %2759, %2793 ], [ %2759, %2798 ], [ %49, %27 ]
  %2812 = phi i32 [ %2760, %2793 ], [ %2760, %2798 ], [ %51, %27 ]
  %2813 = phi i32 [ %2761, %2793 ], [ %2761, %2798 ], [ %43, %27 ]
  %2814 = phi ptr [ %2762, %2793 ], [ %2762, %2798 ], [ %55, %27 ]
  %2815 = phi i32 [ %2792, %2793 ], [ %2803, %2798 ], [ %57, %27 ]
  %2816 = phi i32 [ %2764, %2793 ], [ %2764, %2798 ], [ %59, %27 ]
  %2817 = phi i32 [ %2765, %2793 ], [ %2765, %2798 ], [ %61, %27 ]
  %2818 = phi i64 [ %2782, %2793 ], [ %2782, %2798 ], [ %41, %27 ]
  %2819 = phi i32 [ %2790, %2793 ], [ %2799, %2798 ], [ %38, %27 ]
  %2820 = phi i32 [ %2784, %2793 ], [ %2800, %2798 ], [ %40, %27 ]
  %2821 = icmp ult i32 %2819, 16777216
  br i1 %2821, label %2822, label %2833, !prof !318, !irr_loop !319

2822:                                             ; preds = %2805
  %2823 = icmp eq i64 %2818, %4
  br i1 %2823, label %2824, label %2825, !prof !320

2824:                                             ; preds = %2822
  store i32 47, ptr %78, align 8, !tbaa !108
  br label %4111

2825:                                             ; preds = %2822
  %2826 = shl nuw i32 %2819, 8
  %2827 = shl i32 %2820, 8
  %2828 = add i64 %2818, 1
  %2829 = getelementptr inbounds i8, ptr %2, i64 %2818
  %2830 = load i8, ptr %2829, align 1, !tbaa !72
  %2831 = zext i8 %2830 to i32
  %2832 = or disjoint i32 %2827, %2831
  br label %2833

2833:                                             ; preds = %2825, %2805
  %2834 = phi i64 [ %2828, %2825 ], [ %2818, %2805 ]
  %2835 = phi i32 [ %2826, %2825 ], [ %2819, %2805 ]
  %2836 = phi i32 [ %2832, %2825 ], [ %2820, %2805 ]
  %2837 = lshr i32 %2835, 11
  %2838 = zext i32 %2815 to i64
  %2839 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %2838
  %2840 = load i16, ptr %2839, align 2, !tbaa !115
  %2841 = zext i16 %2840 to i32
  %2842 = mul i32 %2837, %2841
  %2843 = icmp ult i32 %2836, %2842
  br i1 %2843, label %2844, label %2849, !prof !321

2844:                                             ; preds = %2833
  %2845 = sub nsw i32 2048, %2841
  %2846 = lshr i32 %2845, 5
  %2847 = trunc i32 %2846 to i16
  %2848 = add i16 %2840, %2847
  store i16 %2848, ptr %2839, align 2, !tbaa !115
  br label %2855

2849:                                             ; preds = %2833
  %2850 = sub i32 %2835, %2842
  %2851 = sub i32 %2836, %2842
  %2852 = lshr i16 %2840, 5
  %2853 = sub i16 %2840, %2852
  store i16 %2853, ptr %2839, align 2, !tbaa !115
  %2854 = add i32 %2809, 8
  br label %2855

2855:                                             ; preds = %2849, %2844
  %2856 = phi i32 [ %2809, %2844 ], [ %2854, %2849 ]
  %2857 = phi i32 [ %2842, %2844 ], [ %2850, %2849 ]
  %2858 = phi i32 [ %2836, %2844 ], [ %2851, %2849 ]
  %2859 = icmp eq i32 %2856, -1
  br i1 %2859, label %2860, label %2891, !prof !322

2860:                                             ; preds = %2855
  %2861 = load i64, ptr %70, align 8, !tbaa !105
  %2862 = icmp eq i64 %2861, -1
  br i1 %2862, label %2863, label %4111

2863:                                             ; preds = %2860, %27
  %2864 = phi i64 [ %33, %27 ], [ %2806, %2860 ]
  %2865 = phi i64 [ %31, %27 ], [ %2807, %2860 ]
  %2866 = phi i32 [ %63, %27 ], [ %2808, %2860 ]
  %2867 = phi i32 [ %45, %27 ], [ -1, %2860 ]
  %2868 = phi i32 [ %47, %27 ], [ %2810, %2860 ]
  %2869 = phi i32 [ %49, %27 ], [ %2811, %2860 ]
  %2870 = phi i32 [ %51, %27 ], [ %2812, %2860 ]
  %2871 = phi i32 [ %43, %27 ], [ %2813, %2860 ]
  %2872 = phi ptr [ %55, %27 ], [ %2814, %2860 ]
  %2873 = phi i32 [ %57, %27 ], [ %2815, %2860 ]
  %2874 = phi i32 [ %59, %27 ], [ %2816, %2860 ]
  %2875 = phi i32 [ %61, %27 ], [ %2817, %2860 ]
  %2876 = phi i64 [ %41, %27 ], [ %2834, %2860 ]
  %2877 = phi i32 [ %38, %27 ], [ %2857, %2860 ]
  %2878 = phi i32 [ %40, %27 ], [ %2858, %2860 ]
  %2879 = icmp ult i32 %2877, 16777216
  br i1 %2879, label %2880, label %4111

2880:                                             ; preds = %2863
  %2881 = icmp eq i64 %2876, %4
  br i1 %2881, label %2882, label %2883

2882:                                             ; preds = %2880
  store i32 48, ptr %78, align 8, !tbaa !108
  br label %4111

2883:                                             ; preds = %2880
  %2884 = shl nuw i32 %2877, 8
  %2885 = shl i32 %2878, 8
  %2886 = add i64 %2876, 1
  %2887 = getelementptr inbounds i8, ptr %2, i64 %2876
  %2888 = load i8, ptr %2887, align 1, !tbaa !72
  %2889 = zext i8 %2888 to i32
  %2890 = or disjoint i32 %2885, %2889
  br label %4111

2891:                                             ; preds = %2325, %2585, %2590, %2346, %2855
  %2892 = phi i64 [ %2275, %2325 ], [ %2347, %2346 ], [ %2347, %2585 ], [ %2347, %2590 ], [ %2806, %2855 ]
  %2893 = phi i64 [ %2276, %2325 ], [ %2348, %2346 ], [ %2348, %2585 ], [ %2348, %2590 ], [ %2807, %2855 ]
  %2894 = phi i32 [ %2277, %2325 ], [ %2349, %2346 ], [ %2349, %2585 ], [ %2349, %2590 ], [ %2808, %2855 ]
  %2895 = phi i32 [ %2329, %2325 ], [ %2350, %2346 ], [ %2556, %2585 ], [ %2596, %2590 ], [ %2856, %2855 ]
  %2896 = phi i32 [ %2279, %2325 ], [ %2351, %2346 ], [ %2351, %2585 ], [ %2351, %2590 ], [ %2810, %2855 ]
  %2897 = phi i32 [ %2280, %2325 ], [ %2352, %2346 ], [ %2352, %2585 ], [ %2352, %2590 ], [ %2811, %2855 ]
  %2898 = phi i32 [ %2281, %2325 ], [ %2353, %2346 ], [ %2353, %2585 ], [ %2353, %2590 ], [ %2812, %2855 ]
  %2899 = phi i32 [ %2282, %2325 ], [ %2354, %2346 ], [ %2354, %2585 ], [ %2354, %2590 ], [ %2813, %2855 ]
  %2900 = phi ptr [ %2283, %2325 ], [ %2355, %2346 ], [ %2355, %2585 ], [ %2355, %2590 ], [ %2814, %2855 ]
  %2901 = phi i32 [ %2329, %2325 ], [ %2356, %2346 ], [ %2557, %2585 ], [ %2557, %2590 ], [ %2815, %2855 ]
  %2902 = phi i32 [ %2285, %2325 ], [ %2357, %2346 ], [ 1, %2585 ], [ 1, %2590 ], [ %2816, %2855 ]
  %2903 = phi i32 [ %2286, %2325 ], [ %2358, %2346 ], [ %2558, %2585 ], [ %2558, %2590 ], [ %2817, %2855 ]
  %2904 = phi i64 [ %2303, %2325 ], [ %2359, %2346 ], [ %2575, %2585 ], [ %2575, %2590 ], [ %2834, %2855 ]
  %2905 = phi i32 [ %2327, %2325 ], [ %2360, %2346 ], [ %2583, %2585 ], [ %2591, %2590 ], [ %2857, %2855 ]
  %2906 = phi i32 [ %2328, %2325 ], [ %2361, %2346 ], [ %2577, %2585 ], [ %2592, %2590 ], [ %2858, %2855 ]
  %2907 = zext i32 %2895 to i64
  %2908 = icmp ugt i64 %2892, %2907
  br i1 %2908, label %4007, label %4111, !prof !323

2909:                                             ; preds = %1143
  %2910 = sub i32 %1145, %1152
  %2911 = sub i32 %1146, %1152
  %2912 = lshr i16 %1150, 5
  %2913 = sub i16 %1150, %2912
  store i16 %2913, ptr %1149, align 2, !tbaa !115
  %2914 = icmp eq i64 %1115, 0
  br i1 %2914, label %4111, label %2915, !prof !324

2915:                                             ; preds = %27, %2909
  %2916 = phi i64 [ %1115, %2909 ], [ %33, %27 ]
  %2917 = phi i64 [ %1116, %2909 ], [ %31, %27 ]
  %2918 = phi i32 [ %1117, %2909 ], [ %63, %27 ]
  %2919 = phi i32 [ %1118, %2909 ], [ %45, %27 ]
  %2920 = phi i32 [ %1119, %2909 ], [ %47, %27 ]
  %2921 = phi i32 [ %1120, %2909 ], [ %49, %27 ]
  %2922 = phi i32 [ %1121, %2909 ], [ %51, %27 ]
  %2923 = phi i32 [ %1122, %2909 ], [ %43, %27 ]
  %2924 = phi ptr [ %1123, %2909 ], [ %55, %27 ]
  %2925 = phi i32 [ %1124, %2909 ], [ %57, %27 ]
  %2926 = phi i32 [ %1125, %2909 ], [ %59, %27 ]
  %2927 = phi i32 [ %1126, %2909 ], [ %61, %27 ]
  %2928 = phi i64 [ %1144, %2909 ], [ %41, %27 ]
  %2929 = phi i32 [ %1128, %2909 ], [ %69, %27 ]
  %2930 = phi i32 [ %2910, %2909 ], [ %38, %27 ]
  %2931 = phi i32 [ %2911, %2909 ], [ %40, %27 ]
  %2932 = icmp ult i32 %2930, 16777216
  br i1 %2932, label %2933, label %2944, !prof !325, !irr_loop !326

2933:                                             ; preds = %2915
  %2934 = icmp eq i64 %2928, %4
  br i1 %2934, label %2935, label %2936, !prof !327

2935:                                             ; preds = %2933
  store i32 49, ptr %78, align 8, !tbaa !108
  br label %4111

2936:                                             ; preds = %2933
  %2937 = shl nuw i32 %2930, 8
  %2938 = shl i32 %2931, 8
  %2939 = add i64 %2928, 1
  %2940 = getelementptr inbounds i8, ptr %2, i64 %2928
  %2941 = load i8, ptr %2940, align 1, !tbaa !72
  %2942 = zext i8 %2941 to i32
  %2943 = or disjoint i32 %2938, %2942
  br label %2944

2944:                                             ; preds = %2936, %2915
  %2945 = phi i64 [ %2939, %2936 ], [ %2928, %2915 ]
  %2946 = phi i32 [ %2937, %2936 ], [ %2930, %2915 ]
  %2947 = phi i32 [ %2943, %2936 ], [ %2931, %2915 ]
  %2948 = lshr i32 %2946, 11
  %2949 = zext i32 %2923 to i64
  %2950 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %2949
  %2951 = load i16, ptr %2950, align 2, !tbaa !115
  %2952 = zext i16 %2951 to i32
  %2953 = mul i32 %2948, %2952
  %2954 = icmp ult i32 %2947, %2953
  br i1 %2954, label %2955, label %3045, !prof !328

2955:                                             ; preds = %2944
  %2956 = sub nsw i32 2048, %2952
  %2957 = lshr i32 %2956, 5
  %2958 = trunc i32 %2957 to i16
  %2959 = add i16 %2951, %2958
  store i16 %2959, ptr %2950, align 2, !tbaa !115
  br label %2960

2960:                                             ; preds = %2955, %27
  %2961 = phi i64 [ %2916, %2955 ], [ %33, %27 ]
  %2962 = phi i64 [ %2917, %2955 ], [ %31, %27 ]
  %2963 = phi i32 [ %2918, %2955 ], [ %63, %27 ]
  %2964 = phi i32 [ %2919, %2955 ], [ %45, %27 ]
  %2965 = phi i32 [ %2920, %2955 ], [ %47, %27 ]
  %2966 = phi i32 [ %2921, %2955 ], [ %49, %27 ]
  %2967 = phi i32 [ %2922, %2955 ], [ %51, %27 ]
  %2968 = phi i32 [ %2923, %2955 ], [ %43, %27 ]
  %2969 = phi ptr [ %2924, %2955 ], [ %55, %27 ]
  %2970 = phi i32 [ %2925, %2955 ], [ %57, %27 ]
  %2971 = phi i32 [ %2926, %2955 ], [ %59, %27 ]
  %2972 = phi i32 [ %2927, %2955 ], [ %61, %27 ]
  %2973 = phi i64 [ %2945, %2955 ], [ %41, %27 ]
  %2974 = phi i32 [ %2929, %2955 ], [ %69, %27 ]
  %2975 = phi i32 [ %2953, %2955 ], [ %38, %27 ]
  %2976 = phi i32 [ %2947, %2955 ], [ %40, %27 ]
  %2977 = icmp ult i32 %2975, 16777216
  br i1 %2977, label %2978, label %2989, !prof !329, !irr_loop !330

2978:                                             ; preds = %2960
  %2979 = icmp eq i64 %2973, %4
  br i1 %2979, label %2980, label %2981, !prof !331

2980:                                             ; preds = %2978
  store i32 51, ptr %78, align 8, !tbaa !108
  br label %4111

2981:                                             ; preds = %2978
  %2982 = shl nuw i32 %2975, 8
  %2983 = shl i32 %2976, 8
  %2984 = add i64 %2973, 1
  %2985 = getelementptr inbounds i8, ptr %2, i64 %2973
  %2986 = load i8, ptr %2985, align 1, !tbaa !72
  %2987 = zext i8 %2986 to i32
  %2988 = or disjoint i32 %2983, %2987
  br label %2989

2989:                                             ; preds = %2981, %2960
  %2990 = phi i64 [ %2984, %2981 ], [ %2973, %2960 ]
  %2991 = phi i32 [ %2982, %2981 ], [ %2975, %2960 ]
  %2992 = phi i32 [ %2988, %2981 ], [ %2976, %2960 ]
  %2993 = lshr i32 %2991, 11
  %2994 = zext i32 %2968 to i64
  %2995 = zext i32 %2974 to i64
  %2996 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6, i64 %2994, i64 %2995
  %2997 = load i16, ptr %2996, align 2, !tbaa !115
  %2998 = zext i16 %2997 to i32
  %2999 = mul i32 %2993, %2998
  %3000 = icmp ult i32 %2992, %2999
  br i1 %3000, label %3001, label %3040, !prof !332

3001:                                             ; preds = %2989
  %3002 = sub nsw i32 2048, %2998
  %3003 = lshr i32 %3002, 5
  %3004 = trunc i32 %3003 to i16
  %3005 = add i16 %2997, %3004
  store i16 %3005, ptr %2996, align 2, !tbaa !115
  %3006 = icmp ult i32 %2968, 7
  %3007 = select i1 %3006, i32 9, i32 11, !prof !333
  br label %3008

3008:                                             ; preds = %27, %3001
  %3009 = phi i64 [ %2961, %3001 ], [ %33, %27 ]
  %3010 = phi i64 [ %2962, %3001 ], [ %31, %27 ]
  %3011 = phi i32 [ %2963, %3001 ], [ %63, %27 ]
  %3012 = phi i32 [ %2964, %3001 ], [ %45, %27 ]
  %3013 = phi i32 [ %2965, %3001 ], [ %47, %27 ]
  %3014 = phi i32 [ %2966, %3001 ], [ %49, %27 ]
  %3015 = phi i32 [ %2967, %3001 ], [ %51, %27 ]
  %3016 = phi i32 [ %3007, %3001 ], [ %43, %27 ]
  %3017 = phi ptr [ %2969, %3001 ], [ %55, %27 ]
  %3018 = phi i32 [ %2970, %3001 ], [ %57, %27 ]
  %3019 = phi i32 [ %2971, %3001 ], [ %59, %27 ]
  %3020 = phi i32 [ %2972, %3001 ], [ %61, %27 ]
  %3021 = phi i64 [ %2990, %3001 ], [ %41, %27 ]
  %3022 = phi i32 [ %2999, %3001 ], [ %38, %27 ]
  %3023 = phi i32 [ %2992, %3001 ], [ %40, %27 ]
  %3024 = icmp eq i64 %3010, %77
  br i1 %3024, label %3036, label %3025, !prof !334, !irr_loop !335

3025:                                             ; preds = %3008
  %3026 = getelementptr i8, ptr %29, i64 %3010
  %3027 = zext i32 %3012 to i64
  %3028 = xor i64 %3027, -1
  %3029 = getelementptr i8, ptr %3026, i64 %3028
  %3030 = icmp ugt i64 %3010, %3027
  %3031 = select i1 %3030, i64 0, i64 %37, !prof !336
  %3032 = getelementptr i8, ptr %3029, i64 %3031
  %3033 = load i8, ptr %3032, align 1, !tbaa !72
  %3034 = add i64 %3010, 1
  store i8 %3033, ptr %3026, align 1, !tbaa !72
  %3035 = tail call i64 @llvm.umax.i64(i64 %3034, i64 %3009)
  br label %3036

3036:                                             ; preds = %3025, %3008
  %3037 = phi i64 [ %3009, %3008 ], [ %3035, %3025 ]
  %3038 = phi i64 [ %3010, %3008 ], [ %3034, %3025 ]
  br i1 %3024, label %3039, label %80, !prof !334, !llvm.loop !186

3039:                                             ; preds = %3036
  store i32 50, ptr %78, align 8, !tbaa !108
  br label %4111

3040:                                             ; preds = %2989
  %3041 = sub i32 %2991, %2999
  %3042 = sub i32 %2992, %2999
  %3043 = lshr i16 %2997, 5
  %3044 = sub i16 %2997, %3043
  store i16 %3044, ptr %2996, align 2, !tbaa !115
  br label %3150

3045:                                             ; preds = %2944
  %3046 = sub i32 %2946, %2953
  %3047 = sub i32 %2947, %2953
  %3048 = lshr i16 %2951, 5
  %3049 = sub i16 %2951, %3048
  store i16 %3049, ptr %2950, align 2, !tbaa !115
  br label %3050

3050:                                             ; preds = %3045, %27
  %3051 = phi i64 [ %2916, %3045 ], [ %33, %27 ]
  %3052 = phi i64 [ %2917, %3045 ], [ %31, %27 ]
  %3053 = phi i32 [ %2918, %3045 ], [ %63, %27 ]
  %3054 = phi i32 [ %2919, %3045 ], [ %45, %27 ]
  %3055 = phi i32 [ %2920, %3045 ], [ %47, %27 ]
  %3056 = phi i32 [ %2921, %3045 ], [ %49, %27 ]
  %3057 = phi i32 [ %2922, %3045 ], [ %51, %27 ]
  %3058 = phi i32 [ %2923, %3045 ], [ %43, %27 ]
  %3059 = phi ptr [ %2924, %3045 ], [ %55, %27 ]
  %3060 = phi i32 [ %2925, %3045 ], [ %57, %27 ]
  %3061 = phi i32 [ %2926, %3045 ], [ %59, %27 ]
  %3062 = phi i32 [ %2927, %3045 ], [ %61, %27 ]
  %3063 = phi i64 [ %2945, %3045 ], [ %41, %27 ]
  %3064 = phi i32 [ %2929, %3045 ], [ %69, %27 ]
  %3065 = phi i32 [ %3046, %3045 ], [ %38, %27 ]
  %3066 = phi i32 [ %3047, %3045 ], [ %40, %27 ]
  %3067 = icmp ult i32 %3065, 16777216
  br i1 %3067, label %3068, label %3079, !prof !337, !irr_loop !338

3068:                                             ; preds = %3050
  %3069 = icmp eq i64 %3063, %4
  br i1 %3069, label %3070, label %3071, !prof !339

3070:                                             ; preds = %3068
  store i32 52, ptr %78, align 8, !tbaa !108
  br label %4111

3071:                                             ; preds = %3068
  %3072 = shl nuw i32 %3065, 8
  %3073 = shl i32 %3066, 8
  %3074 = add i64 %3063, 1
  %3075 = getelementptr inbounds i8, ptr %2, i64 %3063
  %3076 = load i8, ptr %3075, align 1, !tbaa !72
  %3077 = zext i8 %3076 to i32
  %3078 = or disjoint i32 %3073, %3077
  br label %3079

3079:                                             ; preds = %3071, %3050
  %3080 = phi i64 [ %3074, %3071 ], [ %3063, %3050 ]
  %3081 = phi i32 [ %3072, %3071 ], [ %3065, %3050 ]
  %3082 = phi i32 [ %3078, %3071 ], [ %3066, %3050 ]
  %3083 = lshr i32 %3081, 11
  %3084 = zext i32 %3058 to i64
  %3085 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %3084
  %3086 = load i16, ptr %3085, align 2, !tbaa !115
  %3087 = zext i16 %3086 to i32
  %3088 = mul i32 %3083, %3087
  %3089 = icmp ult i32 %3082, %3088
  br i1 %3089, label %3090, label %3095, !prof !340

3090:                                             ; preds = %3079
  %3091 = sub nsw i32 2048, %3087
  %3092 = lshr i32 %3091, 5
  %3093 = trunc i32 %3092 to i16
  %3094 = add i16 %3086, %3093
  store i16 %3094, ptr %3085, align 2, !tbaa !115
  br label %3150

3095:                                             ; preds = %3079
  %3096 = sub i32 %3081, %3088
  %3097 = sub i32 %3082, %3088
  %3098 = lshr i16 %3086, 5
  %3099 = sub i16 %3086, %3098
  store i16 %3099, ptr %3085, align 2, !tbaa !115
  br label %3100

3100:                                             ; preds = %3095, %27
  %3101 = phi i64 [ %3051, %3095 ], [ %33, %27 ]
  %3102 = phi i64 [ %3052, %3095 ], [ %31, %27 ]
  %3103 = phi i32 [ %3053, %3095 ], [ %63, %27 ]
  %3104 = phi i32 [ %3054, %3095 ], [ %45, %27 ]
  %3105 = phi i32 [ %3055, %3095 ], [ %47, %27 ]
  %3106 = phi i32 [ %3056, %3095 ], [ %49, %27 ]
  %3107 = phi i32 [ %3057, %3095 ], [ %51, %27 ]
  %3108 = phi i32 [ %3058, %3095 ], [ %43, %27 ]
  %3109 = phi ptr [ %3059, %3095 ], [ %55, %27 ]
  %3110 = phi i32 [ %3060, %3095 ], [ %57, %27 ]
  %3111 = phi i32 [ %3061, %3095 ], [ %59, %27 ]
  %3112 = phi i32 [ %3062, %3095 ], [ %61, %27 ]
  %3113 = phi i64 [ %3080, %3095 ], [ %41, %27 ]
  %3114 = phi i32 [ %3064, %3095 ], [ %69, %27 ]
  %3115 = phi i32 [ %3096, %3095 ], [ %38, %27 ]
  %3116 = phi i32 [ %3097, %3095 ], [ %40, %27 ]
  %3117 = icmp ult i32 %3115, 16777216
  br i1 %3117, label %3118, label %3129, !prof !341, !irr_loop !342

3118:                                             ; preds = %3100
  %3119 = icmp eq i64 %3113, %4
  br i1 %3119, label %3120, label %3121, !prof !343

3120:                                             ; preds = %3118
  store i32 53, ptr %78, align 8, !tbaa !108
  br label %4111

3121:                                             ; preds = %3118
  %3122 = shl nuw i32 %3115, 8
  %3123 = shl i32 %3116, 8
  %3124 = add i64 %3113, 1
  %3125 = getelementptr inbounds i8, ptr %2, i64 %3113
  %3126 = load i8, ptr %3125, align 1, !tbaa !72
  %3127 = zext i8 %3126 to i32
  %3128 = or disjoint i32 %3123, %3127
  br label %3129

3129:                                             ; preds = %3121, %3100
  %3130 = phi i64 [ %3124, %3121 ], [ %3113, %3100 ]
  %3131 = phi i32 [ %3122, %3121 ], [ %3115, %3100 ]
  %3132 = phi i32 [ %3128, %3121 ], [ %3116, %3100 ]
  %3133 = lshr i32 %3131, 11
  %3134 = zext i32 %3108 to i64
  %3135 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i64 %3134
  %3136 = load i16, ptr %3135, align 2, !tbaa !115
  %3137 = zext i16 %3136 to i32
  %3138 = mul i32 %3133, %3137
  %3139 = icmp ult i32 %3132, %3138
  br i1 %3139, label %3140, label %3145, !prof !344

3140:                                             ; preds = %3129
  %3141 = sub nsw i32 2048, %3137
  %3142 = lshr i32 %3141, 5
  %3143 = trunc i32 %3142 to i16
  %3144 = add i16 %3136, %3143
  store i16 %3144, ptr %3135, align 2, !tbaa !115
  br label %3150

3145:                                             ; preds = %3129
  %3146 = sub i32 %3131, %3138
  %3147 = sub i32 %3132, %3138
  %3148 = lshr i16 %3136, 5
  %3149 = sub i16 %3136, %3148
  store i16 %3149, ptr %3135, align 2, !tbaa !115
  br label %3150

3150:                                             ; preds = %3090, %3145, %3140, %3040
  %3151 = phi i64 [ %2961, %3040 ], [ %3051, %3090 ], [ %3101, %3140 ], [ %3101, %3145 ]
  %3152 = phi i64 [ %2962, %3040 ], [ %3052, %3090 ], [ %3102, %3140 ], [ %3102, %3145 ]
  %3153 = phi i32 [ %2963, %3040 ], [ %3053, %3090 ], [ %3103, %3140 ], [ %3103, %3145 ]
  %3154 = phi i32 [ %2964, %3040 ], [ %3055, %3090 ], [ %3106, %3140 ], [ %3107, %3145 ]
  %3155 = phi i32 [ %2965, %3040 ], [ %3054, %3090 ], [ %3104, %3140 ], [ %3104, %3145 ]
  %3156 = phi i32 [ %2966, %3040 ], [ %3056, %3090 ], [ %3105, %3140 ], [ %3105, %3145 ]
  %3157 = phi i32 [ %2967, %3040 ], [ %3057, %3090 ], [ %3107, %3140 ], [ %3106, %3145 ]
  %3158 = phi i32 [ %2968, %3040 ], [ %3058, %3090 ], [ %3108, %3140 ], [ %3108, %3145 ]
  %3159 = phi ptr [ %2969, %3040 ], [ %3059, %3090 ], [ %3109, %3140 ], [ %3109, %3145 ]
  %3160 = phi i32 [ %2971, %3040 ], [ %3061, %3090 ], [ %3111, %3140 ], [ %3111, %3145 ]
  %3161 = phi i32 [ %2972, %3040 ], [ %3062, %3090 ], [ %3112, %3140 ], [ %3112, %3145 ]
  %3162 = phi i64 [ %2990, %3040 ], [ %3080, %3090 ], [ %3130, %3140 ], [ %3130, %3145 ]
  %3163 = phi i32 [ %2974, %3040 ], [ %3064, %3090 ], [ %3114, %3140 ], [ %3114, %3145 ]
  %3164 = phi i32 [ %3041, %3040 ], [ %3088, %3090 ], [ %3138, %3140 ], [ %3146, %3145 ]
  %3165 = phi i32 [ %3042, %3040 ], [ %3082, %3090 ], [ %3132, %3140 ], [ %3147, %3145 ]
  %3166 = icmp ult i32 %3158, 7
  %3167 = select i1 %3166, i32 8, i32 11, !prof !345
  br label %3168

3168:                                             ; preds = %3150, %27
  %3169 = phi i64 [ %3151, %3150 ], [ %33, %27 ]
  %3170 = phi i64 [ %3152, %3150 ], [ %31, %27 ]
  %3171 = phi i32 [ %3153, %3150 ], [ %63, %27 ]
  %3172 = phi i32 [ %3154, %3150 ], [ %45, %27 ]
  %3173 = phi i32 [ %3155, %3150 ], [ %47, %27 ]
  %3174 = phi i32 [ %3156, %3150 ], [ %49, %27 ]
  %3175 = phi i32 [ %3157, %3150 ], [ %51, %27 ]
  %3176 = phi i32 [ %3167, %3150 ], [ %43, %27 ]
  %3177 = phi ptr [ %3159, %3150 ], [ %55, %27 ]
  %3178 = phi i32 [ 1, %3150 ], [ %57, %27 ]
  %3179 = phi i32 [ %3160, %3150 ], [ %59, %27 ]
  %3180 = phi i32 [ %3161, %3150 ], [ %61, %27 ]
  %3181 = phi i64 [ %3162, %3150 ], [ %41, %27 ]
  %3182 = phi i32 [ %3163, %3150 ], [ %69, %27 ]
  %3183 = phi i32 [ %3164, %3150 ], [ %38, %27 ]
  %3184 = phi i32 [ %3165, %3150 ], [ %40, %27 ]
  %3185 = icmp ult i32 %3183, 16777216
  br i1 %3185, label %3186, label %3197, !prof !346, !irr_loop !347

3186:                                             ; preds = %3168
  %3187 = icmp eq i64 %3181, %4
  br i1 %3187, label %3188, label %3189, !prof !348

3188:                                             ; preds = %3186
  store i32 54, ptr %78, align 8, !tbaa !108
  br label %4111

3189:                                             ; preds = %3186
  %3190 = shl nuw i32 %3183, 8
  %3191 = shl i32 %3184, 8
  %3192 = add i64 %3181, 1
  %3193 = getelementptr inbounds i8, ptr %2, i64 %3181
  %3194 = load i8, ptr %3193, align 1, !tbaa !72
  %3195 = zext i8 %3194 to i32
  %3196 = or disjoint i32 %3191, %3195
  br label %3197

3197:                                             ; preds = %3189, %3168
  %3198 = phi i64 [ %3192, %3189 ], [ %3181, %3168 ]
  %3199 = phi i32 [ %3190, %3189 ], [ %3183, %3168 ]
  %3200 = phi i32 [ %3196, %3189 ], [ %3184, %3168 ]
  %3201 = lshr i32 %3199, 11
  %3202 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  %3203 = load i16, ptr %3202, align 8, !tbaa !349
  %3204 = zext i16 %3203 to i32
  %3205 = mul i32 %3201, %3204
  %3206 = icmp ult i32 %3200, %3205
  br i1 %3206, label %3207, label %3376, !prof !350

3207:                                             ; preds = %3197
  %3208 = sub nsw i32 2048, %3204
  %3209 = lshr i32 %3208, 5
  %3210 = trunc i32 %3209 to i16
  %3211 = add i16 %3203, %3210
  store i16 %3211, ptr %3202, align 8, !tbaa !349
  br label %3212

3212:                                             ; preds = %27, %3207
  %3213 = phi i64 [ %3169, %3207 ], [ %33, %27 ]
  %3214 = phi i64 [ %3170, %3207 ], [ %31, %27 ]
  %3215 = phi i32 [ %3171, %3207 ], [ %63, %27 ]
  %3216 = phi i32 [ %3172, %3207 ], [ %45, %27 ]
  %3217 = phi i32 [ %3173, %3207 ], [ %47, %27 ]
  %3218 = phi i32 [ %3174, %3207 ], [ %49, %27 ]
  %3219 = phi i32 [ %3175, %3207 ], [ %51, %27 ]
  %3220 = phi i32 [ %3176, %3207 ], [ %43, %27 ]
  %3221 = phi ptr [ %3177, %3207 ], [ %55, %27 ]
  %3222 = phi i32 [ %3178, %3207 ], [ %57, %27 ]
  %3223 = phi i32 [ %3179, %3207 ], [ %59, %27 ]
  %3224 = phi i32 [ %3180, %3207 ], [ %61, %27 ]
  %3225 = phi i64 [ %3198, %3207 ], [ %41, %27 ]
  %3226 = phi i32 [ %3182, %3207 ], [ %69, %27 ]
  %3227 = phi i32 [ %3205, %3207 ], [ %38, %27 ]
  %3228 = phi i32 [ %3200, %3207 ], [ %40, %27 ]
  %3229 = icmp ult i32 %3227, 16777216
  br i1 %3229, label %3230, label %3241, !prof !351, !irr_loop !352

3230:                                             ; preds = %3212
  %3231 = icmp eq i64 %3225, %4
  br i1 %3231, label %3232, label %3233, !prof !353

3232:                                             ; preds = %3230
  store i32 55, ptr %78, align 8, !tbaa !108
  br label %4111

3233:                                             ; preds = %3230
  %3234 = shl nuw i32 %3227, 8
  %3235 = shl i32 %3228, 8
  %3236 = add i64 %3225, 1
  %3237 = getelementptr inbounds i8, ptr %2, i64 %3225
  %3238 = load i8, ptr %3237, align 1, !tbaa !72
  %3239 = zext i8 %3238 to i32
  %3240 = or disjoint i32 %3235, %3239
  br label %3241

3241:                                             ; preds = %3233, %3212
  %3242 = phi i64 [ %3236, %3233 ], [ %3225, %3212 ]
  %3243 = phi i32 [ %3234, %3233 ], [ %3227, %3212 ]
  %3244 = phi i32 [ %3240, %3233 ], [ %3228, %3212 ]
  %3245 = lshr i32 %3243, 11
  %3246 = zext i32 %3226 to i64
  %3247 = zext i32 %3222 to i64
  %3248 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 2, i64 %3246, i64 %3247
  %3249 = load i16, ptr %3248, align 2, !tbaa !115
  %3250 = zext i16 %3249 to i32
  %3251 = mul i32 %3245, %3250
  %3252 = icmp ult i32 %3244, %3251
  %3253 = shl i32 %3222, 1
  br i1 %3252, label %3254, label %3259, !prof !354

3254:                                             ; preds = %3241
  %3255 = sub nsw i32 2048, %3250
  %3256 = lshr i32 %3255, 5
  %3257 = trunc i32 %3256 to i16
  %3258 = add i16 %3249, %3257
  store i16 %3258, ptr %3248, align 2, !tbaa !115
  br label %3265

3259:                                             ; preds = %3241
  %3260 = sub i32 %3243, %3251
  %3261 = sub i32 %3244, %3251
  %3262 = lshr i16 %3249, 5
  %3263 = sub i16 %3249, %3262
  store i16 %3263, ptr %3248, align 2, !tbaa !115
  %3264 = or disjoint i32 %3253, 1
  br label %3265

3265:                                             ; preds = %3254, %3259, %27
  %3266 = phi i64 [ %3213, %3254 ], [ %3213, %3259 ], [ %33, %27 ]
  %3267 = phi i64 [ %3214, %3254 ], [ %3214, %3259 ], [ %31, %27 ]
  %3268 = phi i32 [ %3215, %3254 ], [ %3215, %3259 ], [ %63, %27 ]
  %3269 = phi i32 [ %3216, %3254 ], [ %3216, %3259 ], [ %45, %27 ]
  %3270 = phi i32 [ %3217, %3254 ], [ %3217, %3259 ], [ %47, %27 ]
  %3271 = phi i32 [ %3218, %3254 ], [ %3218, %3259 ], [ %49, %27 ]
  %3272 = phi i32 [ %3219, %3254 ], [ %3219, %3259 ], [ %51, %27 ]
  %3273 = phi i32 [ %3220, %3254 ], [ %3220, %3259 ], [ %43, %27 ]
  %3274 = phi ptr [ %3221, %3254 ], [ %3221, %3259 ], [ %55, %27 ]
  %3275 = phi i32 [ %3253, %3254 ], [ %3264, %3259 ], [ %57, %27 ]
  %3276 = phi i32 [ %3223, %3254 ], [ %3223, %3259 ], [ %59, %27 ]
  %3277 = phi i32 [ %3224, %3254 ], [ %3224, %3259 ], [ %61, %27 ]
  %3278 = phi i64 [ %3242, %3254 ], [ %3242, %3259 ], [ %41, %27 ]
  %3279 = phi i32 [ %3226, %3254 ], [ %3226, %3259 ], [ %69, %27 ]
  %3280 = phi i32 [ %3251, %3254 ], [ %3260, %3259 ], [ %38, %27 ]
  %3281 = phi i32 [ %3244, %3254 ], [ %3261, %3259 ], [ %40, %27 ]
  %3282 = icmp ult i32 %3280, 16777216
  br i1 %3282, label %3283, label %3294, !prof !355, !irr_loop !356

3283:                                             ; preds = %3265
  %3284 = icmp eq i64 %3278, %4
  br i1 %3284, label %3285, label %3286, !prof !357

3285:                                             ; preds = %3283
  store i32 56, ptr %78, align 8, !tbaa !108
  br label %4111

3286:                                             ; preds = %3283
  %3287 = shl nuw i32 %3280, 8
  %3288 = shl i32 %3281, 8
  %3289 = add i64 %3278, 1
  %3290 = getelementptr inbounds i8, ptr %2, i64 %3278
  %3291 = load i8, ptr %3290, align 1, !tbaa !72
  %3292 = zext i8 %3291 to i32
  %3293 = or disjoint i32 %3288, %3292
  br label %3294

3294:                                             ; preds = %3286, %3265
  %3295 = phi i64 [ %3289, %3286 ], [ %3278, %3265 ]
  %3296 = phi i32 [ %3287, %3286 ], [ %3280, %3265 ]
  %3297 = phi i32 [ %3293, %3286 ], [ %3281, %3265 ]
  %3298 = lshr i32 %3296, 11
  %3299 = zext i32 %3279 to i64
  %3300 = zext i32 %3275 to i64
  %3301 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 2, i64 %3299, i64 %3300
  %3302 = load i16, ptr %3301, align 2, !tbaa !115
  %3303 = zext i16 %3302 to i32
  %3304 = mul i32 %3298, %3303
  %3305 = icmp ult i32 %3297, %3304
  %3306 = shl i32 %3275, 1
  br i1 %3305, label %3307, label %3312, !prof !358

3307:                                             ; preds = %3294
  %3308 = sub nsw i32 2048, %3303
  %3309 = lshr i32 %3308, 5
  %3310 = trunc i32 %3309 to i16
  %3311 = add i16 %3302, %3310
  store i16 %3311, ptr %3301, align 2, !tbaa !115
  br label %3318

3312:                                             ; preds = %3294
  %3313 = sub i32 %3296, %3304
  %3314 = sub i32 %3297, %3304
  %3315 = lshr i16 %3302, 5
  %3316 = sub i16 %3302, %3315
  store i16 %3316, ptr %3301, align 2, !tbaa !115
  %3317 = or disjoint i32 %3306, 1
  br label %3318

3318:                                             ; preds = %3307, %3312, %27
  %3319 = phi i64 [ %3266, %3307 ], [ %3266, %3312 ], [ %33, %27 ]
  %3320 = phi i64 [ %3267, %3307 ], [ %3267, %3312 ], [ %31, %27 ]
  %3321 = phi i32 [ %3268, %3307 ], [ %3268, %3312 ], [ %63, %27 ]
  %3322 = phi i32 [ %3269, %3307 ], [ %3269, %3312 ], [ %45, %27 ]
  %3323 = phi i32 [ %3270, %3307 ], [ %3270, %3312 ], [ %47, %27 ]
  %3324 = phi i32 [ %3271, %3307 ], [ %3271, %3312 ], [ %49, %27 ]
  %3325 = phi i32 [ %3272, %3307 ], [ %3272, %3312 ], [ %51, %27 ]
  %3326 = phi i32 [ %3273, %3307 ], [ %3273, %3312 ], [ %43, %27 ]
  %3327 = phi ptr [ %3274, %3307 ], [ %3274, %3312 ], [ %55, %27 ]
  %3328 = phi i32 [ %3306, %3307 ], [ %3317, %3312 ], [ %57, %27 ]
  %3329 = phi i32 [ %3276, %3307 ], [ %3276, %3312 ], [ %59, %27 ]
  %3330 = phi i32 [ %3277, %3307 ], [ %3277, %3312 ], [ %61, %27 ]
  %3331 = phi i64 [ %3295, %3307 ], [ %3295, %3312 ], [ %41, %27 ]
  %3332 = phi i32 [ %3279, %3307 ], [ %3279, %3312 ], [ %69, %27 ]
  %3333 = phi i32 [ %3304, %3307 ], [ %3313, %3312 ], [ %38, %27 ]
  %3334 = phi i32 [ %3297, %3307 ], [ %3314, %3312 ], [ %40, %27 ]
  %3335 = icmp ult i32 %3333, 16777216
  br i1 %3335, label %3336, label %3347, !prof !359, !irr_loop !360

3336:                                             ; preds = %3318
  %3337 = icmp eq i64 %3331, %4
  br i1 %3337, label %3338, label %3339, !prof !361

3338:                                             ; preds = %3336
  store i32 57, ptr %78, align 8, !tbaa !108
  br label %4111

3339:                                             ; preds = %3336
  %3340 = shl nuw i32 %3333, 8
  %3341 = shl i32 %3334, 8
  %3342 = add i64 %3331, 1
  %3343 = getelementptr inbounds i8, ptr %2, i64 %3331
  %3344 = load i8, ptr %3343, align 1, !tbaa !72
  %3345 = zext i8 %3344 to i32
  %3346 = or disjoint i32 %3341, %3345
  br label %3347

3347:                                             ; preds = %3339, %3318
  %3348 = phi i64 [ %3342, %3339 ], [ %3331, %3318 ]
  %3349 = phi i32 [ %3340, %3339 ], [ %3333, %3318 ]
  %3350 = phi i32 [ %3346, %3339 ], [ %3334, %3318 ]
  %3351 = lshr i32 %3349, 11
  %3352 = zext i32 %3332 to i64
  %3353 = zext i32 %3328 to i64
  %3354 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 2, i64 %3352, i64 %3353
  %3355 = load i16, ptr %3354, align 2, !tbaa !115
  %3356 = zext i16 %3355 to i32
  %3357 = mul i32 %3351, %3356
  %3358 = icmp ult i32 %3350, %3357
  %3359 = shl i32 %3328, 1
  br i1 %3358, label %3360, label %3365, !prof !362

3360:                                             ; preds = %3347
  %3361 = sub nsw i32 2048, %3356
  %3362 = lshr i32 %3361, 5
  %3363 = trunc i32 %3362 to i16
  %3364 = add i16 %3355, %3363
  store i16 %3364, ptr %3354, align 2, !tbaa !115
  br label %3371

3365:                                             ; preds = %3347
  %3366 = sub i32 %3349, %3357
  %3367 = sub i32 %3350, %3357
  %3368 = lshr i16 %3355, 5
  %3369 = sub i16 %3355, %3368
  store i16 %3369, ptr %3354, align 2, !tbaa !115
  %3370 = or disjoint i32 %3359, 1
  br label %3371

3371:                                             ; preds = %3365, %3360
  %3372 = phi i32 [ %3359, %3360 ], [ %3370, %3365 ]
  %3373 = phi i32 [ %3357, %3360 ], [ %3366, %3365 ]
  %3374 = phi i32 [ %3350, %3360 ], [ %3367, %3365 ]
  %3375 = add i32 %3372, -6
  br label %4007

3376:                                             ; preds = %3197
  %3377 = sub i32 %3199, %3205
  %3378 = sub i32 %3200, %3205
  %3379 = lshr i16 %3203, 5
  %3380 = sub i16 %3203, %3379
  store i16 %3380, ptr %3202, align 8, !tbaa !349
  br label %3381

3381:                                             ; preds = %3376, %27
  %3382 = phi i64 [ %3169, %3376 ], [ %33, %27 ]
  %3383 = phi i64 [ %3170, %3376 ], [ %31, %27 ]
  %3384 = phi i32 [ %3171, %3376 ], [ %63, %27 ]
  %3385 = phi i32 [ %3172, %3376 ], [ %45, %27 ]
  %3386 = phi i32 [ %3173, %3376 ], [ %47, %27 ]
  %3387 = phi i32 [ %3174, %3376 ], [ %49, %27 ]
  %3388 = phi i32 [ %3175, %3376 ], [ %51, %27 ]
  %3389 = phi i32 [ %3176, %3376 ], [ %43, %27 ]
  %3390 = phi ptr [ %3177, %3376 ], [ %55, %27 ]
  %3391 = phi i32 [ %3178, %3376 ], [ %57, %27 ]
  %3392 = phi i32 [ %3179, %3376 ], [ %59, %27 ]
  %3393 = phi i32 [ %3180, %3376 ], [ %61, %27 ]
  %3394 = phi i64 [ %3198, %3376 ], [ %41, %27 ]
  %3395 = phi i32 [ %3182, %3376 ], [ %69, %27 ]
  %3396 = phi i32 [ %3377, %3376 ], [ %38, %27 ]
  %3397 = phi i32 [ %3378, %3376 ], [ %40, %27 ]
  %3398 = icmp ult i32 %3396, 16777216
  br i1 %3398, label %3399, label %3410, !prof !363, !irr_loop !364

3399:                                             ; preds = %3381
  %3400 = icmp eq i64 %3394, %4
  br i1 %3400, label %3401, label %3402, !prof !365

3401:                                             ; preds = %3399
  store i32 58, ptr %78, align 8, !tbaa !108
  br label %4111

3402:                                             ; preds = %3399
  %3403 = shl nuw i32 %3396, 8
  %3404 = shl i32 %3397, 8
  %3405 = add i64 %3394, 1
  %3406 = getelementptr inbounds i8, ptr %2, i64 %3394
  %3407 = load i8, ptr %3406, align 1, !tbaa !72
  %3408 = zext i8 %3407 to i32
  %3409 = or disjoint i32 %3404, %3408
  br label %3410

3410:                                             ; preds = %3402, %3381
  %3411 = phi i64 [ %3405, %3402 ], [ %3394, %3381 ]
  %3412 = phi i32 [ %3403, %3402 ], [ %3396, %3381 ]
  %3413 = phi i32 [ %3409, %3402 ], [ %3397, %3381 ]
  %3414 = lshr i32 %3412, 11
  %3415 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 1
  %3416 = load i16, ptr %3415, align 2, !tbaa !366
  %3417 = zext i16 %3416 to i32
  %3418 = mul i32 %3414, %3417
  %3419 = icmp ult i32 %3413, %3418
  br i1 %3419, label %3420, label %3589, !prof !367

3420:                                             ; preds = %3410
  %3421 = sub nsw i32 2048, %3417
  %3422 = lshr i32 %3421, 5
  %3423 = trunc i32 %3422 to i16
  %3424 = add i16 %3416, %3423
  store i16 %3424, ptr %3415, align 2, !tbaa !366
  br label %3425

3425:                                             ; preds = %27, %3420
  %3426 = phi i64 [ %3382, %3420 ], [ %33, %27 ]
  %3427 = phi i64 [ %3383, %3420 ], [ %31, %27 ]
  %3428 = phi i32 [ %3384, %3420 ], [ %63, %27 ]
  %3429 = phi i32 [ %3385, %3420 ], [ %45, %27 ]
  %3430 = phi i32 [ %3386, %3420 ], [ %47, %27 ]
  %3431 = phi i32 [ %3387, %3420 ], [ %49, %27 ]
  %3432 = phi i32 [ %3388, %3420 ], [ %51, %27 ]
  %3433 = phi i32 [ %3389, %3420 ], [ %43, %27 ]
  %3434 = phi ptr [ %3390, %3420 ], [ %55, %27 ]
  %3435 = phi i32 [ %3391, %3420 ], [ %57, %27 ]
  %3436 = phi i32 [ %3392, %3420 ], [ %59, %27 ]
  %3437 = phi i32 [ %3393, %3420 ], [ %61, %27 ]
  %3438 = phi i64 [ %3411, %3420 ], [ %41, %27 ]
  %3439 = phi i32 [ %3395, %3420 ], [ %69, %27 ]
  %3440 = phi i32 [ %3418, %3420 ], [ %38, %27 ]
  %3441 = phi i32 [ %3413, %3420 ], [ %40, %27 ]
  %3442 = icmp ult i32 %3440, 16777216
  br i1 %3442, label %3443, label %3454, !prof !368, !irr_loop !369

3443:                                             ; preds = %3425
  %3444 = icmp eq i64 %3438, %4
  br i1 %3444, label %3445, label %3446, !prof !370

3445:                                             ; preds = %3443
  store i32 59, ptr %78, align 8, !tbaa !108
  br label %4111

3446:                                             ; preds = %3443
  %3447 = shl nuw i32 %3440, 8
  %3448 = shl i32 %3441, 8
  %3449 = add i64 %3438, 1
  %3450 = getelementptr inbounds i8, ptr %2, i64 %3438
  %3451 = load i8, ptr %3450, align 1, !tbaa !72
  %3452 = zext i8 %3451 to i32
  %3453 = or disjoint i32 %3448, %3452
  br label %3454

3454:                                             ; preds = %3446, %3425
  %3455 = phi i64 [ %3449, %3446 ], [ %3438, %3425 ]
  %3456 = phi i32 [ %3447, %3446 ], [ %3440, %3425 ]
  %3457 = phi i32 [ %3453, %3446 ], [ %3441, %3425 ]
  %3458 = lshr i32 %3456, 11
  %3459 = zext i32 %3439 to i64
  %3460 = zext i32 %3435 to i64
  %3461 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 3, i64 %3459, i64 %3460
  %3462 = load i16, ptr %3461, align 2, !tbaa !115
  %3463 = zext i16 %3462 to i32
  %3464 = mul i32 %3458, %3463
  %3465 = icmp ult i32 %3457, %3464
  %3466 = shl i32 %3435, 1
  br i1 %3465, label %3467, label %3472, !prof !371

3467:                                             ; preds = %3454
  %3468 = sub nsw i32 2048, %3463
  %3469 = lshr i32 %3468, 5
  %3470 = trunc i32 %3469 to i16
  %3471 = add i16 %3462, %3470
  store i16 %3471, ptr %3461, align 2, !tbaa !115
  br label %3478

3472:                                             ; preds = %3454
  %3473 = sub i32 %3456, %3464
  %3474 = sub i32 %3457, %3464
  %3475 = lshr i16 %3462, 5
  %3476 = sub i16 %3462, %3475
  store i16 %3476, ptr %3461, align 2, !tbaa !115
  %3477 = or disjoint i32 %3466, 1
  br label %3478

3478:                                             ; preds = %3467, %3472, %27
  %3479 = phi i64 [ %3426, %3467 ], [ %3426, %3472 ], [ %33, %27 ]
  %3480 = phi i64 [ %3427, %3467 ], [ %3427, %3472 ], [ %31, %27 ]
  %3481 = phi i32 [ %3428, %3467 ], [ %3428, %3472 ], [ %63, %27 ]
  %3482 = phi i32 [ %3429, %3467 ], [ %3429, %3472 ], [ %45, %27 ]
  %3483 = phi i32 [ %3430, %3467 ], [ %3430, %3472 ], [ %47, %27 ]
  %3484 = phi i32 [ %3431, %3467 ], [ %3431, %3472 ], [ %49, %27 ]
  %3485 = phi i32 [ %3432, %3467 ], [ %3432, %3472 ], [ %51, %27 ]
  %3486 = phi i32 [ %3433, %3467 ], [ %3433, %3472 ], [ %43, %27 ]
  %3487 = phi ptr [ %3434, %3467 ], [ %3434, %3472 ], [ %55, %27 ]
  %3488 = phi i32 [ %3466, %3467 ], [ %3477, %3472 ], [ %57, %27 ]
  %3489 = phi i32 [ %3436, %3467 ], [ %3436, %3472 ], [ %59, %27 ]
  %3490 = phi i32 [ %3437, %3467 ], [ %3437, %3472 ], [ %61, %27 ]
  %3491 = phi i64 [ %3455, %3467 ], [ %3455, %3472 ], [ %41, %27 ]
  %3492 = phi i32 [ %3439, %3467 ], [ %3439, %3472 ], [ %69, %27 ]
  %3493 = phi i32 [ %3464, %3467 ], [ %3473, %3472 ], [ %38, %27 ]
  %3494 = phi i32 [ %3457, %3467 ], [ %3474, %3472 ], [ %40, %27 ]
  %3495 = icmp ult i32 %3493, 16777216
  br i1 %3495, label %3496, label %3507, !prof !372, !irr_loop !373

3496:                                             ; preds = %3478
  %3497 = icmp eq i64 %3491, %4
  br i1 %3497, label %3498, label %3499, !prof !374

3498:                                             ; preds = %3496
  store i32 60, ptr %78, align 8, !tbaa !108
  br label %4111

3499:                                             ; preds = %3496
  %3500 = shl nuw i32 %3493, 8
  %3501 = shl i32 %3494, 8
  %3502 = add i64 %3491, 1
  %3503 = getelementptr inbounds i8, ptr %2, i64 %3491
  %3504 = load i8, ptr %3503, align 1, !tbaa !72
  %3505 = zext i8 %3504 to i32
  %3506 = or disjoint i32 %3501, %3505
  br label %3507

3507:                                             ; preds = %3499, %3478
  %3508 = phi i64 [ %3502, %3499 ], [ %3491, %3478 ]
  %3509 = phi i32 [ %3500, %3499 ], [ %3493, %3478 ]
  %3510 = phi i32 [ %3506, %3499 ], [ %3494, %3478 ]
  %3511 = lshr i32 %3509, 11
  %3512 = zext i32 %3492 to i64
  %3513 = zext i32 %3488 to i64
  %3514 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 3, i64 %3512, i64 %3513
  %3515 = load i16, ptr %3514, align 2, !tbaa !115
  %3516 = zext i16 %3515 to i32
  %3517 = mul i32 %3511, %3516
  %3518 = icmp ult i32 %3510, %3517
  %3519 = shl i32 %3488, 1
  br i1 %3518, label %3520, label %3525, !prof !375

3520:                                             ; preds = %3507
  %3521 = sub nsw i32 2048, %3516
  %3522 = lshr i32 %3521, 5
  %3523 = trunc i32 %3522 to i16
  %3524 = add i16 %3515, %3523
  store i16 %3524, ptr %3514, align 2, !tbaa !115
  br label %3531

3525:                                             ; preds = %3507
  %3526 = sub i32 %3509, %3517
  %3527 = sub i32 %3510, %3517
  %3528 = lshr i16 %3515, 5
  %3529 = sub i16 %3515, %3528
  store i16 %3529, ptr %3514, align 2, !tbaa !115
  %3530 = or disjoint i32 %3519, 1
  br label %3531

3531:                                             ; preds = %3520, %3525, %27
  %3532 = phi i64 [ %3479, %3520 ], [ %3479, %3525 ], [ %33, %27 ]
  %3533 = phi i64 [ %3480, %3520 ], [ %3480, %3525 ], [ %31, %27 ]
  %3534 = phi i32 [ %3481, %3520 ], [ %3481, %3525 ], [ %63, %27 ]
  %3535 = phi i32 [ %3482, %3520 ], [ %3482, %3525 ], [ %45, %27 ]
  %3536 = phi i32 [ %3483, %3520 ], [ %3483, %3525 ], [ %47, %27 ]
  %3537 = phi i32 [ %3484, %3520 ], [ %3484, %3525 ], [ %49, %27 ]
  %3538 = phi i32 [ %3485, %3520 ], [ %3485, %3525 ], [ %51, %27 ]
  %3539 = phi i32 [ %3486, %3520 ], [ %3486, %3525 ], [ %43, %27 ]
  %3540 = phi ptr [ %3487, %3520 ], [ %3487, %3525 ], [ %55, %27 ]
  %3541 = phi i32 [ %3519, %3520 ], [ %3530, %3525 ], [ %57, %27 ]
  %3542 = phi i32 [ %3489, %3520 ], [ %3489, %3525 ], [ %59, %27 ]
  %3543 = phi i32 [ %3490, %3520 ], [ %3490, %3525 ], [ %61, %27 ]
  %3544 = phi i64 [ %3508, %3520 ], [ %3508, %3525 ], [ %41, %27 ]
  %3545 = phi i32 [ %3492, %3520 ], [ %3492, %3525 ], [ %69, %27 ]
  %3546 = phi i32 [ %3517, %3520 ], [ %3526, %3525 ], [ %38, %27 ]
  %3547 = phi i32 [ %3510, %3520 ], [ %3527, %3525 ], [ %40, %27 ]
  %3548 = icmp ult i32 %3546, 16777216
  br i1 %3548, label %3549, label %3560, !prof !376, !irr_loop !377

3549:                                             ; preds = %3531
  %3550 = icmp eq i64 %3544, %4
  br i1 %3550, label %3551, label %3552, !prof !378

3551:                                             ; preds = %3549
  store i32 61, ptr %78, align 8, !tbaa !108
  br label %4111

3552:                                             ; preds = %3549
  %3553 = shl nuw i32 %3546, 8
  %3554 = shl i32 %3547, 8
  %3555 = add i64 %3544, 1
  %3556 = getelementptr inbounds i8, ptr %2, i64 %3544
  %3557 = load i8, ptr %3556, align 1, !tbaa !72
  %3558 = zext i8 %3557 to i32
  %3559 = or disjoint i32 %3554, %3558
  br label %3560

3560:                                             ; preds = %3552, %3531
  %3561 = phi i64 [ %3555, %3552 ], [ %3544, %3531 ]
  %3562 = phi i32 [ %3553, %3552 ], [ %3546, %3531 ]
  %3563 = phi i32 [ %3559, %3552 ], [ %3547, %3531 ]
  %3564 = lshr i32 %3562, 11
  %3565 = zext i32 %3545 to i64
  %3566 = zext i32 %3541 to i64
  %3567 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 3, i64 %3565, i64 %3566
  %3568 = load i16, ptr %3567, align 2, !tbaa !115
  %3569 = zext i16 %3568 to i32
  %3570 = mul i32 %3564, %3569
  %3571 = icmp ult i32 %3563, %3570
  %3572 = shl i32 %3541, 1
  br i1 %3571, label %3573, label %3578, !prof !379

3573:                                             ; preds = %3560
  %3574 = sub nsw i32 2048, %3569
  %3575 = lshr i32 %3574, 5
  %3576 = trunc i32 %3575 to i16
  %3577 = add i16 %3568, %3576
  store i16 %3577, ptr %3567, align 2, !tbaa !115
  br label %3584

3578:                                             ; preds = %3560
  %3579 = sub i32 %3562, %3570
  %3580 = sub i32 %3563, %3570
  %3581 = lshr i16 %3568, 5
  %3582 = sub i16 %3568, %3581
  store i16 %3582, ptr %3567, align 2, !tbaa !115
  %3583 = or disjoint i32 %3572, 1
  br label %3584

3584:                                             ; preds = %3578, %3573
  %3585 = phi i32 [ %3572, %3573 ], [ %3583, %3578 ]
  %3586 = phi i32 [ %3570, %3573 ], [ %3579, %3578 ]
  %3587 = phi i32 [ %3563, %3573 ], [ %3580, %3578 ]
  %3588 = add i32 %3585, 2
  br label %4007

3589:                                             ; preds = %3410
  %3590 = sub i32 %3412, %3418
  %3591 = sub i32 %3413, %3418
  %3592 = lshr i16 %3416, 5
  %3593 = sub i16 %3416, %3592
  store i16 %3593, ptr %3415, align 2, !tbaa !366
  br label %3594

3594:                                             ; preds = %27, %3589
  %3595 = phi i64 [ %3382, %3589 ], [ %33, %27 ]
  %3596 = phi i64 [ %3383, %3589 ], [ %31, %27 ]
  %3597 = phi i32 [ %3384, %3589 ], [ %63, %27 ]
  %3598 = phi i32 [ %3385, %3589 ], [ %45, %27 ]
  %3599 = phi i32 [ %3386, %3589 ], [ %47, %27 ]
  %3600 = phi i32 [ %3387, %3589 ], [ %49, %27 ]
  %3601 = phi i32 [ %3388, %3589 ], [ %51, %27 ]
  %3602 = phi i32 [ %3389, %3589 ], [ %43, %27 ]
  %3603 = phi ptr [ %3390, %3589 ], [ %55, %27 ]
  %3604 = phi i32 [ %3391, %3589 ], [ %57, %27 ]
  %3605 = phi i32 [ %3392, %3589 ], [ %59, %27 ]
  %3606 = phi i32 [ %3393, %3589 ], [ %61, %27 ]
  %3607 = phi i64 [ %3411, %3589 ], [ %41, %27 ]
  %3608 = phi i32 [ %3590, %3589 ], [ %38, %27 ]
  %3609 = phi i32 [ %3591, %3589 ], [ %40, %27 ]
  %3610 = icmp ult i32 %3608, 16777216
  br i1 %3610, label %3611, label %3622, !prof !380, !irr_loop !381

3611:                                             ; preds = %3594
  %3612 = icmp eq i64 %3607, %4
  br i1 %3612, label %3613, label %3614, !prof !382

3613:                                             ; preds = %3611
  store i32 62, ptr %78, align 8, !tbaa !108
  br label %4111

3614:                                             ; preds = %3611
  %3615 = shl nuw i32 %3608, 8
  %3616 = shl i32 %3609, 8
  %3617 = add i64 %3607, 1
  %3618 = getelementptr inbounds i8, ptr %2, i64 %3607
  %3619 = load i8, ptr %3618, align 1, !tbaa !72
  %3620 = zext i8 %3619 to i32
  %3621 = or disjoint i32 %3616, %3620
  br label %3622

3622:                                             ; preds = %3614, %3594
  %3623 = phi i64 [ %3617, %3614 ], [ %3607, %3594 ]
  %3624 = phi i32 [ %3615, %3614 ], [ %3608, %3594 ]
  %3625 = phi i32 [ %3621, %3614 ], [ %3609, %3594 ]
  %3626 = lshr i32 %3624, 11
  %3627 = zext i32 %3604 to i64
  %3628 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3627
  %3629 = load i16, ptr %3628, align 2, !tbaa !115
  %3630 = zext i16 %3629 to i32
  %3631 = mul i32 %3626, %3630
  %3632 = icmp ult i32 %3625, %3631
  %3633 = shl i32 %3604, 1
  br i1 %3632, label %3634, label %3639, !prof !383

3634:                                             ; preds = %3622
  %3635 = sub nsw i32 2048, %3630
  %3636 = lshr i32 %3635, 5
  %3637 = trunc i32 %3636 to i16
  %3638 = add i16 %3629, %3637
  store i16 %3638, ptr %3628, align 2, !tbaa !115
  br label %3645

3639:                                             ; preds = %3622
  %3640 = sub i32 %3624, %3631
  %3641 = sub i32 %3625, %3631
  %3642 = lshr i16 %3629, 5
  %3643 = sub i16 %3629, %3642
  store i16 %3643, ptr %3628, align 2, !tbaa !115
  %3644 = or disjoint i32 %3633, 1
  br label %3645

3645:                                             ; preds = %3634, %3639, %27
  %3646 = phi i64 [ %3595, %3634 ], [ %3595, %3639 ], [ %33, %27 ]
  %3647 = phi i64 [ %3596, %3634 ], [ %3596, %3639 ], [ %31, %27 ]
  %3648 = phi i32 [ %3597, %3634 ], [ %3597, %3639 ], [ %63, %27 ]
  %3649 = phi i32 [ %3598, %3634 ], [ %3598, %3639 ], [ %45, %27 ]
  %3650 = phi i32 [ %3599, %3634 ], [ %3599, %3639 ], [ %47, %27 ]
  %3651 = phi i32 [ %3600, %3634 ], [ %3600, %3639 ], [ %49, %27 ]
  %3652 = phi i32 [ %3601, %3634 ], [ %3601, %3639 ], [ %51, %27 ]
  %3653 = phi i32 [ %3602, %3634 ], [ %3602, %3639 ], [ %43, %27 ]
  %3654 = phi ptr [ %3603, %3634 ], [ %3603, %3639 ], [ %55, %27 ]
  %3655 = phi i32 [ %3633, %3634 ], [ %3644, %3639 ], [ %57, %27 ]
  %3656 = phi i32 [ %3605, %3634 ], [ %3605, %3639 ], [ %59, %27 ]
  %3657 = phi i32 [ %3606, %3634 ], [ %3606, %3639 ], [ %61, %27 ]
  %3658 = phi i64 [ %3623, %3634 ], [ %3623, %3639 ], [ %41, %27 ]
  %3659 = phi i32 [ %3631, %3634 ], [ %3640, %3639 ], [ %38, %27 ]
  %3660 = phi i32 [ %3625, %3634 ], [ %3641, %3639 ], [ %40, %27 ]
  %3661 = icmp ult i32 %3659, 16777216
  br i1 %3661, label %3662, label %3673, !prof !384, !irr_loop !385

3662:                                             ; preds = %3645
  %3663 = icmp eq i64 %3658, %4
  br i1 %3663, label %3664, label %3665, !prof !386

3664:                                             ; preds = %3662
  store i32 63, ptr %78, align 8, !tbaa !108
  br label %4111

3665:                                             ; preds = %3662
  %3666 = shl nuw i32 %3659, 8
  %3667 = shl i32 %3660, 8
  %3668 = add i64 %3658, 1
  %3669 = getelementptr inbounds i8, ptr %2, i64 %3658
  %3670 = load i8, ptr %3669, align 1, !tbaa !72
  %3671 = zext i8 %3670 to i32
  %3672 = or disjoint i32 %3667, %3671
  br label %3673

3673:                                             ; preds = %3665, %3645
  %3674 = phi i64 [ %3668, %3665 ], [ %3658, %3645 ]
  %3675 = phi i32 [ %3666, %3665 ], [ %3659, %3645 ]
  %3676 = phi i32 [ %3672, %3665 ], [ %3660, %3645 ]
  %3677 = lshr i32 %3675, 11
  %3678 = zext i32 %3655 to i64
  %3679 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3678
  %3680 = load i16, ptr %3679, align 2, !tbaa !115
  %3681 = zext i16 %3680 to i32
  %3682 = mul i32 %3677, %3681
  %3683 = icmp ult i32 %3676, %3682
  %3684 = shl i32 %3655, 1
  br i1 %3683, label %3685, label %3690, !prof !387

3685:                                             ; preds = %3673
  %3686 = sub nsw i32 2048, %3681
  %3687 = lshr i32 %3686, 5
  %3688 = trunc i32 %3687 to i16
  %3689 = add i16 %3680, %3688
  store i16 %3689, ptr %3679, align 2, !tbaa !115
  br label %3696

3690:                                             ; preds = %3673
  %3691 = sub i32 %3675, %3682
  %3692 = sub i32 %3676, %3682
  %3693 = lshr i16 %3680, 5
  %3694 = sub i16 %3680, %3693
  store i16 %3694, ptr %3679, align 2, !tbaa !115
  %3695 = or disjoint i32 %3684, 1
  br label %3696

3696:                                             ; preds = %3685, %3690, %27
  %3697 = phi i64 [ %3646, %3685 ], [ %3646, %3690 ], [ %33, %27 ]
  %3698 = phi i64 [ %3647, %3685 ], [ %3647, %3690 ], [ %31, %27 ]
  %3699 = phi i32 [ %3648, %3685 ], [ %3648, %3690 ], [ %63, %27 ]
  %3700 = phi i32 [ %3649, %3685 ], [ %3649, %3690 ], [ %45, %27 ]
  %3701 = phi i32 [ %3650, %3685 ], [ %3650, %3690 ], [ %47, %27 ]
  %3702 = phi i32 [ %3651, %3685 ], [ %3651, %3690 ], [ %49, %27 ]
  %3703 = phi i32 [ %3652, %3685 ], [ %3652, %3690 ], [ %51, %27 ]
  %3704 = phi i32 [ %3653, %3685 ], [ %3653, %3690 ], [ %43, %27 ]
  %3705 = phi ptr [ %3654, %3685 ], [ %3654, %3690 ], [ %55, %27 ]
  %3706 = phi i32 [ %3684, %3685 ], [ %3695, %3690 ], [ %57, %27 ]
  %3707 = phi i32 [ %3656, %3685 ], [ %3656, %3690 ], [ %59, %27 ]
  %3708 = phi i32 [ %3657, %3685 ], [ %3657, %3690 ], [ %61, %27 ]
  %3709 = phi i64 [ %3674, %3685 ], [ %3674, %3690 ], [ %41, %27 ]
  %3710 = phi i32 [ %3682, %3685 ], [ %3691, %3690 ], [ %38, %27 ]
  %3711 = phi i32 [ %3676, %3685 ], [ %3692, %3690 ], [ %40, %27 ]
  %3712 = icmp ult i32 %3710, 16777216
  br i1 %3712, label %3713, label %3724, !prof !388, !irr_loop !389

3713:                                             ; preds = %3696
  %3714 = icmp eq i64 %3709, %4
  br i1 %3714, label %3715, label %3716, !prof !390

3715:                                             ; preds = %3713
  store i32 64, ptr %78, align 8, !tbaa !108
  br label %4111

3716:                                             ; preds = %3713
  %3717 = shl nuw i32 %3710, 8
  %3718 = shl i32 %3711, 8
  %3719 = add i64 %3709, 1
  %3720 = getelementptr inbounds i8, ptr %2, i64 %3709
  %3721 = load i8, ptr %3720, align 1, !tbaa !72
  %3722 = zext i8 %3721 to i32
  %3723 = or disjoint i32 %3718, %3722
  br label %3724

3724:                                             ; preds = %3716, %3696
  %3725 = phi i64 [ %3719, %3716 ], [ %3709, %3696 ]
  %3726 = phi i32 [ %3717, %3716 ], [ %3710, %3696 ]
  %3727 = phi i32 [ %3723, %3716 ], [ %3711, %3696 ]
  %3728 = lshr i32 %3726, 11
  %3729 = zext i32 %3706 to i64
  %3730 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3729
  %3731 = load i16, ptr %3730, align 2, !tbaa !115
  %3732 = zext i16 %3731 to i32
  %3733 = mul i32 %3728, %3732
  %3734 = icmp ult i32 %3727, %3733
  %3735 = shl i32 %3706, 1
  br i1 %3734, label %3736, label %3741, !prof !391

3736:                                             ; preds = %3724
  %3737 = sub nsw i32 2048, %3732
  %3738 = lshr i32 %3737, 5
  %3739 = trunc i32 %3738 to i16
  %3740 = add i16 %3731, %3739
  store i16 %3740, ptr %3730, align 2, !tbaa !115
  br label %3747

3741:                                             ; preds = %3724
  %3742 = sub i32 %3726, %3733
  %3743 = sub i32 %3727, %3733
  %3744 = lshr i16 %3731, 5
  %3745 = sub i16 %3731, %3744
  store i16 %3745, ptr %3730, align 2, !tbaa !115
  %3746 = or disjoint i32 %3735, 1
  br label %3747

3747:                                             ; preds = %3736, %3741, %27
  %3748 = phi i64 [ %3697, %3736 ], [ %3697, %3741 ], [ %33, %27 ]
  %3749 = phi i64 [ %3698, %3736 ], [ %3698, %3741 ], [ %31, %27 ]
  %3750 = phi i32 [ %3699, %3736 ], [ %3699, %3741 ], [ %63, %27 ]
  %3751 = phi i32 [ %3700, %3736 ], [ %3700, %3741 ], [ %45, %27 ]
  %3752 = phi i32 [ %3701, %3736 ], [ %3701, %3741 ], [ %47, %27 ]
  %3753 = phi i32 [ %3702, %3736 ], [ %3702, %3741 ], [ %49, %27 ]
  %3754 = phi i32 [ %3703, %3736 ], [ %3703, %3741 ], [ %51, %27 ]
  %3755 = phi i32 [ %3704, %3736 ], [ %3704, %3741 ], [ %43, %27 ]
  %3756 = phi ptr [ %3705, %3736 ], [ %3705, %3741 ], [ %55, %27 ]
  %3757 = phi i32 [ %3735, %3736 ], [ %3746, %3741 ], [ %57, %27 ]
  %3758 = phi i32 [ %3707, %3736 ], [ %3707, %3741 ], [ %59, %27 ]
  %3759 = phi i32 [ %3708, %3736 ], [ %3708, %3741 ], [ %61, %27 ]
  %3760 = phi i64 [ %3725, %3736 ], [ %3725, %3741 ], [ %41, %27 ]
  %3761 = phi i32 [ %3733, %3736 ], [ %3742, %3741 ], [ %38, %27 ]
  %3762 = phi i32 [ %3727, %3736 ], [ %3743, %3741 ], [ %40, %27 ]
  %3763 = icmp ult i32 %3761, 16777216
  br i1 %3763, label %3764, label %3775, !prof !392, !irr_loop !393

3764:                                             ; preds = %3747
  %3765 = icmp eq i64 %3760, %4
  br i1 %3765, label %3766, label %3767, !prof !394

3766:                                             ; preds = %3764
  store i32 65, ptr %78, align 8, !tbaa !108
  br label %4111

3767:                                             ; preds = %3764
  %3768 = shl nuw i32 %3761, 8
  %3769 = shl i32 %3762, 8
  %3770 = add i64 %3760, 1
  %3771 = getelementptr inbounds i8, ptr %2, i64 %3760
  %3772 = load i8, ptr %3771, align 1, !tbaa !72
  %3773 = zext i8 %3772 to i32
  %3774 = or disjoint i32 %3769, %3773
  br label %3775

3775:                                             ; preds = %3767, %3747
  %3776 = phi i64 [ %3770, %3767 ], [ %3760, %3747 ]
  %3777 = phi i32 [ %3768, %3767 ], [ %3761, %3747 ]
  %3778 = phi i32 [ %3774, %3767 ], [ %3762, %3747 ]
  %3779 = lshr i32 %3777, 11
  %3780 = zext i32 %3757 to i64
  %3781 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3780
  %3782 = load i16, ptr %3781, align 2, !tbaa !115
  %3783 = zext i16 %3782 to i32
  %3784 = mul i32 %3779, %3783
  %3785 = icmp ult i32 %3778, %3784
  %3786 = shl i32 %3757, 1
  br i1 %3785, label %3787, label %3792, !prof !395

3787:                                             ; preds = %3775
  %3788 = sub nsw i32 2048, %3783
  %3789 = lshr i32 %3788, 5
  %3790 = trunc i32 %3789 to i16
  %3791 = add i16 %3782, %3790
  store i16 %3791, ptr %3781, align 2, !tbaa !115
  br label %3798

3792:                                             ; preds = %3775
  %3793 = sub i32 %3777, %3784
  %3794 = sub i32 %3778, %3784
  %3795 = lshr i16 %3782, 5
  %3796 = sub i16 %3782, %3795
  store i16 %3796, ptr %3781, align 2, !tbaa !115
  %3797 = or disjoint i32 %3786, 1
  br label %3798

3798:                                             ; preds = %3787, %3792, %27
  %3799 = phi i64 [ %3748, %3787 ], [ %3748, %3792 ], [ %33, %27 ]
  %3800 = phi i64 [ %3749, %3787 ], [ %3749, %3792 ], [ %31, %27 ]
  %3801 = phi i32 [ %3750, %3787 ], [ %3750, %3792 ], [ %63, %27 ]
  %3802 = phi i32 [ %3751, %3787 ], [ %3751, %3792 ], [ %45, %27 ]
  %3803 = phi i32 [ %3752, %3787 ], [ %3752, %3792 ], [ %47, %27 ]
  %3804 = phi i32 [ %3753, %3787 ], [ %3753, %3792 ], [ %49, %27 ]
  %3805 = phi i32 [ %3754, %3787 ], [ %3754, %3792 ], [ %51, %27 ]
  %3806 = phi i32 [ %3755, %3787 ], [ %3755, %3792 ], [ %43, %27 ]
  %3807 = phi ptr [ %3756, %3787 ], [ %3756, %3792 ], [ %55, %27 ]
  %3808 = phi i32 [ %3786, %3787 ], [ %3797, %3792 ], [ %57, %27 ]
  %3809 = phi i32 [ %3758, %3787 ], [ %3758, %3792 ], [ %59, %27 ]
  %3810 = phi i32 [ %3759, %3787 ], [ %3759, %3792 ], [ %61, %27 ]
  %3811 = phi i64 [ %3776, %3787 ], [ %3776, %3792 ], [ %41, %27 ]
  %3812 = phi i32 [ %3784, %3787 ], [ %3793, %3792 ], [ %38, %27 ]
  %3813 = phi i32 [ %3778, %3787 ], [ %3794, %3792 ], [ %40, %27 ]
  %3814 = icmp ult i32 %3812, 16777216
  br i1 %3814, label %3815, label %3826, !prof !396, !irr_loop !397

3815:                                             ; preds = %3798
  %3816 = icmp eq i64 %3811, %4
  br i1 %3816, label %3817, label %3818, !prof !398

3817:                                             ; preds = %3815
  store i32 66, ptr %78, align 8, !tbaa !108
  br label %4111

3818:                                             ; preds = %3815
  %3819 = shl nuw i32 %3812, 8
  %3820 = shl i32 %3813, 8
  %3821 = add i64 %3811, 1
  %3822 = getelementptr inbounds i8, ptr %2, i64 %3811
  %3823 = load i8, ptr %3822, align 1, !tbaa !72
  %3824 = zext i8 %3823 to i32
  %3825 = or disjoint i32 %3820, %3824
  br label %3826

3826:                                             ; preds = %3818, %3798
  %3827 = phi i64 [ %3821, %3818 ], [ %3811, %3798 ]
  %3828 = phi i32 [ %3819, %3818 ], [ %3812, %3798 ]
  %3829 = phi i32 [ %3825, %3818 ], [ %3813, %3798 ]
  %3830 = lshr i32 %3828, 11
  %3831 = zext i32 %3808 to i64
  %3832 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3831
  %3833 = load i16, ptr %3832, align 2, !tbaa !115
  %3834 = zext i16 %3833 to i32
  %3835 = mul i32 %3830, %3834
  %3836 = icmp ult i32 %3829, %3835
  %3837 = shl i32 %3808, 1
  br i1 %3836, label %3838, label %3843, !prof !399

3838:                                             ; preds = %3826
  %3839 = sub nsw i32 2048, %3834
  %3840 = lshr i32 %3839, 5
  %3841 = trunc i32 %3840 to i16
  %3842 = add i16 %3833, %3841
  store i16 %3842, ptr %3832, align 2, !tbaa !115
  br label %3849

3843:                                             ; preds = %3826
  %3844 = sub i32 %3828, %3835
  %3845 = sub i32 %3829, %3835
  %3846 = lshr i16 %3833, 5
  %3847 = sub i16 %3833, %3846
  store i16 %3847, ptr %3832, align 2, !tbaa !115
  %3848 = or disjoint i32 %3837, 1
  br label %3849

3849:                                             ; preds = %3838, %3843, %27
  %3850 = phi i64 [ %3799, %3838 ], [ %3799, %3843 ], [ %33, %27 ]
  %3851 = phi i64 [ %3800, %3838 ], [ %3800, %3843 ], [ %31, %27 ]
  %3852 = phi i32 [ %3801, %3838 ], [ %3801, %3843 ], [ %63, %27 ]
  %3853 = phi i32 [ %3802, %3838 ], [ %3802, %3843 ], [ %45, %27 ]
  %3854 = phi i32 [ %3803, %3838 ], [ %3803, %3843 ], [ %47, %27 ]
  %3855 = phi i32 [ %3804, %3838 ], [ %3804, %3843 ], [ %49, %27 ]
  %3856 = phi i32 [ %3805, %3838 ], [ %3805, %3843 ], [ %51, %27 ]
  %3857 = phi i32 [ %3806, %3838 ], [ %3806, %3843 ], [ %43, %27 ]
  %3858 = phi ptr [ %3807, %3838 ], [ %3807, %3843 ], [ %55, %27 ]
  %3859 = phi i32 [ %3837, %3838 ], [ %3848, %3843 ], [ %57, %27 ]
  %3860 = phi i32 [ %3809, %3838 ], [ %3809, %3843 ], [ %59, %27 ]
  %3861 = phi i32 [ %3810, %3838 ], [ %3810, %3843 ], [ %61, %27 ]
  %3862 = phi i64 [ %3827, %3838 ], [ %3827, %3843 ], [ %41, %27 ]
  %3863 = phi i32 [ %3835, %3838 ], [ %3844, %3843 ], [ %38, %27 ]
  %3864 = phi i32 [ %3829, %3838 ], [ %3845, %3843 ], [ %40, %27 ]
  %3865 = icmp ult i32 %3863, 16777216
  br i1 %3865, label %3866, label %3877, !prof !400, !irr_loop !397

3866:                                             ; preds = %3849
  %3867 = icmp eq i64 %3862, %4
  br i1 %3867, label %3868, label %3869, !prof !401

3868:                                             ; preds = %3866
  store i32 67, ptr %78, align 8, !tbaa !108
  br label %4111

3869:                                             ; preds = %3866
  %3870 = shl nuw i32 %3863, 8
  %3871 = shl i32 %3864, 8
  %3872 = add i64 %3862, 1
  %3873 = getelementptr inbounds i8, ptr %2, i64 %3862
  %3874 = load i8, ptr %3873, align 1, !tbaa !72
  %3875 = zext i8 %3874 to i32
  %3876 = or disjoint i32 %3871, %3875
  br label %3877

3877:                                             ; preds = %3869, %3849
  %3878 = phi i64 [ %3872, %3869 ], [ %3862, %3849 ]
  %3879 = phi i32 [ %3870, %3869 ], [ %3863, %3849 ]
  %3880 = phi i32 [ %3876, %3869 ], [ %3864, %3849 ]
  %3881 = lshr i32 %3879, 11
  %3882 = zext i32 %3859 to i64
  %3883 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3882
  %3884 = load i16, ptr %3883, align 2, !tbaa !115
  %3885 = zext i16 %3884 to i32
  %3886 = mul i32 %3881, %3885
  %3887 = icmp ult i32 %3880, %3886
  %3888 = shl i32 %3859, 1
  br i1 %3887, label %3889, label %3894, !prof !402

3889:                                             ; preds = %3877
  %3890 = sub nsw i32 2048, %3885
  %3891 = lshr i32 %3890, 5
  %3892 = trunc i32 %3891 to i16
  %3893 = add i16 %3884, %3892
  store i16 %3893, ptr %3883, align 2, !tbaa !115
  br label %3900

3894:                                             ; preds = %3877
  %3895 = sub i32 %3879, %3886
  %3896 = sub i32 %3880, %3886
  %3897 = lshr i16 %3884, 5
  %3898 = sub i16 %3884, %3897
  store i16 %3898, ptr %3883, align 2, !tbaa !115
  %3899 = or disjoint i32 %3888, 1
  br label %3900

3900:                                             ; preds = %3889, %3894, %27
  %3901 = phi i64 [ %3850, %3889 ], [ %3850, %3894 ], [ %33, %27 ]
  %3902 = phi i64 [ %3851, %3889 ], [ %3851, %3894 ], [ %31, %27 ]
  %3903 = phi i32 [ %3852, %3889 ], [ %3852, %3894 ], [ %63, %27 ]
  %3904 = phi i32 [ %3853, %3889 ], [ %3853, %3894 ], [ %45, %27 ]
  %3905 = phi i32 [ %3854, %3889 ], [ %3854, %3894 ], [ %47, %27 ]
  %3906 = phi i32 [ %3855, %3889 ], [ %3855, %3894 ], [ %49, %27 ]
  %3907 = phi i32 [ %3856, %3889 ], [ %3856, %3894 ], [ %51, %27 ]
  %3908 = phi i32 [ %3857, %3889 ], [ %3857, %3894 ], [ %43, %27 ]
  %3909 = phi ptr [ %3858, %3889 ], [ %3858, %3894 ], [ %55, %27 ]
  %3910 = phi i32 [ %3888, %3889 ], [ %3899, %3894 ], [ %57, %27 ]
  %3911 = phi i32 [ %3860, %3889 ], [ %3860, %3894 ], [ %59, %27 ]
  %3912 = phi i32 [ %3861, %3889 ], [ %3861, %3894 ], [ %61, %27 ]
  %3913 = phi i64 [ %3878, %3889 ], [ %3878, %3894 ], [ %41, %27 ]
  %3914 = phi i32 [ %3886, %3889 ], [ %3895, %3894 ], [ %38, %27 ]
  %3915 = phi i32 [ %3880, %3889 ], [ %3896, %3894 ], [ %40, %27 ]
  %3916 = icmp ult i32 %3914, 16777216
  br i1 %3916, label %3917, label %3928, !prof !403, !irr_loop !404

3917:                                             ; preds = %3900
  %3918 = icmp eq i64 %3913, %4
  br i1 %3918, label %3919, label %3920, !prof !405

3919:                                             ; preds = %3917
  store i32 68, ptr %78, align 8, !tbaa !108
  br label %4111

3920:                                             ; preds = %3917
  %3921 = shl nuw i32 %3914, 8
  %3922 = shl i32 %3915, 8
  %3923 = add i64 %3913, 1
  %3924 = getelementptr inbounds i8, ptr %2, i64 %3913
  %3925 = load i8, ptr %3924, align 1, !tbaa !72
  %3926 = zext i8 %3925 to i32
  %3927 = or disjoint i32 %3922, %3926
  br label %3928

3928:                                             ; preds = %3920, %3900
  %3929 = phi i64 [ %3923, %3920 ], [ %3913, %3900 ]
  %3930 = phi i32 [ %3921, %3920 ], [ %3914, %3900 ]
  %3931 = phi i32 [ %3927, %3920 ], [ %3915, %3900 ]
  %3932 = lshr i32 %3930, 11
  %3933 = zext i32 %3910 to i64
  %3934 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3933
  %3935 = load i16, ptr %3934, align 2, !tbaa !115
  %3936 = zext i16 %3935 to i32
  %3937 = mul i32 %3932, %3936
  %3938 = icmp ult i32 %3931, %3937
  %3939 = shl i32 %3910, 1
  br i1 %3938, label %3940, label %3945, !prof !406

3940:                                             ; preds = %3928
  %3941 = sub nsw i32 2048, %3936
  %3942 = lshr i32 %3941, 5
  %3943 = trunc i32 %3942 to i16
  %3944 = add i16 %3935, %3943
  store i16 %3944, ptr %3934, align 2, !tbaa !115
  br label %3951

3945:                                             ; preds = %3928
  %3946 = sub i32 %3930, %3937
  %3947 = sub i32 %3931, %3937
  %3948 = lshr i16 %3935, 5
  %3949 = sub i16 %3935, %3948
  store i16 %3949, ptr %3934, align 2, !tbaa !115
  %3950 = or disjoint i32 %3939, 1
  br label %3951

3951:                                             ; preds = %3940, %3945, %27
  %3952 = phi i64 [ %3901, %3940 ], [ %3901, %3945 ], [ %33, %27 ]
  %3953 = phi i64 [ %3902, %3940 ], [ %3902, %3945 ], [ %31, %27 ]
  %3954 = phi i32 [ %3903, %3940 ], [ %3903, %3945 ], [ %63, %27 ]
  %3955 = phi i32 [ %3904, %3940 ], [ %3904, %3945 ], [ %45, %27 ]
  %3956 = phi i32 [ %3905, %3940 ], [ %3905, %3945 ], [ %47, %27 ]
  %3957 = phi i32 [ %3906, %3940 ], [ %3906, %3945 ], [ %49, %27 ]
  %3958 = phi i32 [ %3907, %3940 ], [ %3907, %3945 ], [ %51, %27 ]
  %3959 = phi i32 [ %3908, %3940 ], [ %3908, %3945 ], [ %43, %27 ]
  %3960 = phi ptr [ %3909, %3940 ], [ %3909, %3945 ], [ %55, %27 ]
  %3961 = phi i32 [ %3939, %3940 ], [ %3950, %3945 ], [ %57, %27 ]
  %3962 = phi i32 [ %3911, %3940 ], [ %3911, %3945 ], [ %59, %27 ]
  %3963 = phi i32 [ %3912, %3940 ], [ %3912, %3945 ], [ %61, %27 ]
  %3964 = phi i64 [ %3929, %3940 ], [ %3929, %3945 ], [ %41, %27 ]
  %3965 = phi i32 [ %3937, %3940 ], [ %3946, %3945 ], [ %38, %27 ]
  %3966 = phi i32 [ %3931, %3940 ], [ %3947, %3945 ], [ %40, %27 ]
  %3967 = icmp ult i32 %3965, 16777216
  br i1 %3967, label %3968, label %3979, !prof !407, !irr_loop !408

3968:                                             ; preds = %3951
  %3969 = icmp eq i64 %3964, %4
  br i1 %3969, label %3970, label %3971, !prof !409

3970:                                             ; preds = %3968
  store i32 69, ptr %78, align 8, !tbaa !108
  br label %4111

3971:                                             ; preds = %3968
  %3972 = shl nuw i32 %3965, 8
  %3973 = shl i32 %3966, 8
  %3974 = add i64 %3964, 1
  %3975 = getelementptr inbounds i8, ptr %2, i64 %3964
  %3976 = load i8, ptr %3975, align 1, !tbaa !72
  %3977 = zext i8 %3976 to i32
  %3978 = or disjoint i32 %3973, %3977
  br label %3979

3979:                                             ; preds = %3971, %3951
  %3980 = phi i64 [ %3974, %3971 ], [ %3964, %3951 ]
  %3981 = phi i32 [ %3972, %3971 ], [ %3965, %3951 ]
  %3982 = phi i32 [ %3978, %3971 ], [ %3966, %3951 ]
  %3983 = lshr i32 %3981, 11
  %3984 = zext i32 %3961 to i64
  %3985 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3984
  %3986 = load i16, ptr %3985, align 2, !tbaa !115
  %3987 = zext i16 %3986 to i32
  %3988 = mul i32 %3983, %3987
  %3989 = icmp ult i32 %3982, %3988
  %3990 = shl i32 %3961, 1
  br i1 %3989, label %3991, label %3996, !prof !410

3991:                                             ; preds = %3979
  %3992 = sub nsw i32 2048, %3987
  %3993 = lshr i32 %3992, 5
  %3994 = trunc i32 %3993 to i16
  %3995 = add i16 %3986, %3994
  store i16 %3995, ptr %3985, align 2, !tbaa !115
  br label %4002

3996:                                             ; preds = %3979
  %3997 = sub i32 %3981, %3988
  %3998 = sub i32 %3982, %3988
  %3999 = lshr i16 %3986, 5
  %4000 = sub i16 %3986, %3999
  store i16 %4000, ptr %3985, align 2, !tbaa !115
  %4001 = or disjoint i32 %3990, 1
  br label %4002

4002:                                             ; preds = %3996, %3991
  %4003 = phi i32 [ %3990, %3991 ], [ %4001, %3996 ]
  %4004 = phi i32 [ %3988, %3991 ], [ %3997, %3996 ]
  %4005 = phi i32 [ %3982, %3991 ], [ %3998, %3996 ]
  %4006 = add i32 %4003, -238
  br label %4007

4007:                                             ; preds = %27, %2891, %3584, %4002, %3371
  %4008 = phi i64 [ %2892, %2891 ], [ %3319, %3371 ], [ %3532, %3584 ], [ %3952, %4002 ], [ %33, %27 ]
  %4009 = phi i64 [ %2893, %2891 ], [ %3320, %3371 ], [ %3533, %3584 ], [ %3953, %4002 ], [ %31, %27 ]
  %4010 = phi i32 [ %2894, %2891 ], [ %3375, %3371 ], [ %3588, %3584 ], [ %4006, %4002 ], [ %63, %27 ]
  %4011 = phi i32 [ %2895, %2891 ], [ %3322, %3371 ], [ %3535, %3584 ], [ %3955, %4002 ], [ %45, %27 ]
  %4012 = phi i32 [ %2896, %2891 ], [ %3323, %3371 ], [ %3536, %3584 ], [ %3956, %4002 ], [ %47, %27 ]
  %4013 = phi i32 [ %2897, %2891 ], [ %3324, %3371 ], [ %3537, %3584 ], [ %3957, %4002 ], [ %49, %27 ]
  %4014 = phi i32 [ %2898, %2891 ], [ %3325, %3371 ], [ %3538, %3584 ], [ %3958, %4002 ], [ %51, %27 ]
  %4015 = phi i32 [ %2899, %2891 ], [ %3326, %3371 ], [ %3539, %3584 ], [ %3959, %4002 ], [ %43, %27 ]
  %4016 = phi ptr [ %2900, %2891 ], [ %3327, %3371 ], [ %3540, %3584 ], [ %3960, %4002 ], [ %55, %27 ]
  %4017 = phi i32 [ %2901, %2891 ], [ %3372, %3371 ], [ %3585, %3584 ], [ %4003, %4002 ], [ %57, %27 ]
  %4018 = phi i32 [ %2902, %2891 ], [ %3329, %3371 ], [ %3542, %3584 ], [ %3962, %4002 ], [ %59, %27 ]
  %4019 = phi i32 [ %2903, %2891 ], [ %3330, %3371 ], [ %3543, %3584 ], [ %3963, %4002 ], [ %61, %27 ]
  %4020 = phi i64 [ %2904, %2891 ], [ %3348, %3371 ], [ %3561, %3584 ], [ %3980, %4002 ], [ %41, %27 ]
  %4021 = phi i32 [ %2905, %2891 ], [ %3373, %3371 ], [ %3586, %3584 ], [ %4004, %4002 ], [ %38, %27 ]
  %4022 = phi i32 [ %2906, %2891 ], [ %3374, %3371 ], [ %3587, %3584 ], [ %4005, %4002 ], [ %40, %27 ]
  %4023 = sub i64 %77, %4009
  %4024 = zext i32 %4010 to i64
  %4025 = icmp ult i64 %4023, %4024
  %4026 = trunc i64 %4023 to i32
  %4027 = select i1 %4025, i32 %4026, i32 %4010, !prof !411
  %4028 = sub i32 %4010, %4027
  %4029 = icmp ugt i32 %4027, %4011
  %4030 = zext i32 %4011 to i64
  br i1 %4029, label %4031, label %4045, !prof !412, !irr_loop !413

4031:                                             ; preds = %4007
  %4032 = xor i64 %4030, -1
  br label %4033

4033:                                             ; preds = %4031, %4033
  %4034 = phi i64 [ %4042, %4033 ], [ %4009, %4031 ]
  %4035 = phi i32 [ %4043, %4033 ], [ %4027, %4031 ]
  %4036 = icmp ugt i64 %4034, %4030
  %4037 = select i1 %4036, i64 0, i64 %37, !prof !414
  %4038 = getelementptr i8, ptr %29, i64 %4034
  %4039 = getelementptr i8, ptr %4038, i64 %4032
  %4040 = getelementptr i8, ptr %4039, i64 %4037
  %4041 = load i8, ptr %4040, align 1, !tbaa !72
  store i8 %4041, ptr %4038, align 1, !tbaa !72
  %4042 = add i64 %4034, 1
  %4043 = add i32 %4035, -1
  %4044 = icmp eq i32 %4043, 0
  br i1 %4044, label %4074, label %4033, !prof !415, !llvm.loop !416

4045:                                             ; preds = %4007
  %4046 = icmp ugt i64 %4009, %4030
  br i1 %4046, label %4047, label %4054, !prof !417

4047:                                             ; preds = %4045
  %4048 = getelementptr inbounds i8, ptr %29, i64 %4009
  %4049 = sub nsw i64 0, %4030
  %4050 = getelementptr inbounds i8, ptr %4048, i64 %4049
  %4051 = getelementptr inbounds i8, ptr %4050, i64 -1
  %4052 = zext i32 %4027 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4048, ptr nonnull align 1 %4051, i64 %4052, i1 false), !prof !418
  %4053 = add i64 %4009, %4052
  br label %4074

4054:                                             ; preds = %4045
  %4055 = xor i64 %4030, -1
  %4056 = add i64 %4009, %4055
  %4057 = add i64 %4056, %37
  %4058 = and i64 %4057, 4294967295
  %4059 = trunc i64 %4056 to i32
  %4060 = sub i32 0, %4059
  %4061 = icmp ugt i32 %4027, %4060
  %4062 = getelementptr inbounds i8, ptr %29, i64 %4009
  %4063 = getelementptr inbounds i8, ptr %29, i64 %4058
  br i1 %4061, label %4064, label %4071, !prof !419

4064:                                             ; preds = %4054
  %4065 = zext i32 %4060 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %4062, ptr align 1 %4063, i64 %4065, i1 false), !prof !420
  %4066 = add i64 %4009, %4065
  %4067 = add i32 %4027, %4059
  %4068 = getelementptr inbounds i8, ptr %29, i64 %4066
  %4069 = zext i32 %4067 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4068, ptr align 1 %29, i64 %4069, i1 false), !prof !421
  %4070 = add i64 %4066, %4069
  br label %4074

4071:                                             ; preds = %4054
  %4072 = zext i32 %4027 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %4062, ptr align 1 %4063, i64 %4072, i1 false), !prof !422
  %4073 = add i64 %4009, %4072
  br label %4074

4074:                                             ; preds = %4033, %4064, %4071, %4047
  %4075 = phi i64 [ %4053, %4047 ], [ %4073, %4071 ], [ %4070, %4064 ], [ %4042, %4033 ]
  %4076 = tail call i64 @llvm.umax.i64(i64 %4008, i64 %4075)
  %4077 = icmp eq i32 %4028, 0
  br i1 %4077, label %80, label %4078, !prof !423, !llvm.loop !186

4078:                                             ; preds = %4074
  store i32 70, ptr %78, align 8, !tbaa !108
  br label %4111

4079:                                             ; preds = %27, %98
  %4080 = phi i64 [ %99, %98 ], [ %33, %27 ]
  %4081 = phi i64 [ %100, %98 ], [ %31, %27 ]
  %4082 = phi i32 [ %101, %98 ], [ %63, %27 ]
  %4083 = phi i32 [ %102, %98 ], [ %45, %27 ]
  %4084 = phi i32 [ %103, %98 ], [ %47, %27 ]
  %4085 = phi i32 [ %104, %98 ], [ %49, %27 ]
  %4086 = phi i32 [ %105, %98 ], [ %51, %27 ]
  %4087 = phi i32 [ %106, %98 ], [ %43, %27 ]
  %4088 = phi ptr [ %107, %98 ], [ %55, %27 ]
  %4089 = phi i32 [ %108, %98 ], [ %57, %27 ]
  %4090 = phi i32 [ %109, %98 ], [ %59, %27 ]
  %4091 = phi i32 [ %110, %98 ], [ %61, %27 ]
  %4092 = phi i64 [ %111, %98 ], [ %41, %27 ]
  %4093 = phi i32 [ %113, %98 ], [ %38, %27 ]
  %4094 = phi i32 [ %114, %98 ], [ %40, %27 ]
  %4095 = icmp ult i32 %4093, 16777216
  br i1 %4095, label %4096, label %4107, !prof !424

4096:                                             ; preds = %4079
  %4097 = icmp eq i64 %4092, %4
  br i1 %4097, label %4098, label %4099, !prof !425

4098:                                             ; preds = %4096
  store i32 0, ptr %78, align 8, !tbaa !108
  br label %4111

4099:                                             ; preds = %4096
  %4100 = shl nuw i32 %4093, 8
  %4101 = shl i32 %4094, 8
  %4102 = add i64 %4092, 1
  %4103 = getelementptr inbounds i8, ptr %2, i64 %4092
  %4104 = load i8, ptr %4103, align 1, !tbaa !72
  %4105 = zext i8 %4104 to i32
  %4106 = or disjoint i32 %4101, %4105
  br label %4107

4107:                                             ; preds = %4099, %4079
  %4108 = phi i64 [ %4102, %4099 ], [ %4092, %4079 ]
  %4109 = phi i32 [ %4100, %4099 ], [ %4093, %4079 ]
  %4110 = phi i32 [ %4106, %4099 ], [ %4094, %4079 ]
  store i32 1, ptr %78, align 8, !tbaa !108
  br label %4111

4111:                                             ; preds = %2909, %2863, %2891, %2883, %2860, %4107, %4098, %4078, %3970, %3919, %3868, %3817, %3766, %3715, %3664, %3613, %3551, %3498, %3445, %3401, %3338, %3285, %3232, %3188, %3120, %3070, %3039, %2980, %2935, %2882, %2824, %2772, %2720, %2668, %2624, %2565, %2515, %2465, %2415, %2366, %2293, %2242, %2191, %2140, %2089, %2038, %1963, %1912, %1861, %1810, %1759, %1708, %1657, %1606, %1544, %1491, %1438, %1394, %1331, %1278, %1225, %1181, %1134, %1108, %1031, %970, %909, %848, %787, %726, %665, %604, %540, %489, %438, %387, %336, %285, %234, %183, %121
  %4112 = phi i64 [ %4080, %4098 ], [ %4080, %4107 ], [ %4076, %4078 ], [ %99, %121 ], [ %165, %183 ], [ %216, %234 ], [ %267, %285 ], [ %318, %336 ], [ %369, %387 ], [ %420, %438 ], [ %471, %489 ], [ %522, %540 ], [ %1106, %1108 ], [ %583, %604 ], [ %644, %665 ], [ %705, %726 ], [ %766, %787 ], [ %827, %848 ], [ %888, %909 ], [ %949, %970 ], [ %1010, %1031 ], [ %1115, %1134 ], [ %1162, %1181 ], [ %1206, %1225 ], [ %1259, %1278 ], [ %1312, %1331 ], [ %2020, %2038 ], [ %2071, %2089 ], [ %2122, %2140 ], [ %2173, %2191 ], [ %2224, %2242 ], [ %2275, %2293 ], [ %2892, %2891 ], [ %2347, %2565 ], [ %2347, %2515 ], [ %2347, %2465 ], [ %2347, %2415 ], [ %2347, %2366 ], [ %2600, %2624 ], [ %2650, %2668 ], [ %2702, %2720 ], [ %2754, %2772 ], [ %2806, %2824 ], [ %2864, %2882 ], [ %2864, %2883 ], [ %2806, %2860 ], [ %1375, %1394 ], [ %1419, %1438 ], [ %1472, %1491 ], [ %1525, %1544 ], [ %1588, %1606 ], [ %1639, %1657 ], [ %1690, %1708 ], [ %1741, %1759 ], [ %1792, %1810 ], [ %1843, %1861 ], [ %1894, %1912 ], [ %1945, %1963 ], [ %2916, %2935 ], [ %2961, %2980 ], [ %3037, %3039 ], [ %3169, %3188 ], [ %3213, %3232 ], [ %3266, %3285 ], [ %3319, %3338 ], [ %3382, %3401 ], [ %3426, %3445 ], [ %3479, %3498 ], [ %3532, %3551 ], [ %3595, %3613 ], [ %3646, %3664 ], [ %3697, %3715 ], [ %3748, %3766 ], [ %3799, %3817 ], [ %3850, %3868 ], [ %3901, %3919 ], [ %3952, %3970 ], [ %3051, %3070 ], [ %3101, %3120 ], [ %2864, %2863 ], [ %1115, %2909 ]
  %4113 = phi i64 [ %4081, %4098 ], [ %4081, %4107 ], [ %4075, %4078 ], [ %100, %121 ], [ %166, %183 ], [ %217, %234 ], [ %268, %285 ], [ %319, %336 ], [ %370, %387 ], [ %421, %438 ], [ %472, %489 ], [ %523, %540 ], [ %1107, %1108 ], [ %584, %604 ], [ %645, %665 ], [ %706, %726 ], [ %767, %787 ], [ %828, %848 ], [ %889, %909 ], [ %950, %970 ], [ %1011, %1031 ], [ %1116, %1134 ], [ %1163, %1181 ], [ %1207, %1225 ], [ %1260, %1278 ], [ %1313, %1331 ], [ %2021, %2038 ], [ %2072, %2089 ], [ %2123, %2140 ], [ %2174, %2191 ], [ %2225, %2242 ], [ %2276, %2293 ], [ %2893, %2891 ], [ %2348, %2565 ], [ %2348, %2515 ], [ %2348, %2465 ], [ %2348, %2415 ], [ %2348, %2366 ], [ %2601, %2624 ], [ %2651, %2668 ], [ %2703, %2720 ], [ %2755, %2772 ], [ %2807, %2824 ], [ %2865, %2882 ], [ %2865, %2883 ], [ %2807, %2860 ], [ %1376, %1394 ], [ %1420, %1438 ], [ %1473, %1491 ], [ %1526, %1544 ], [ %1589, %1606 ], [ %1640, %1657 ], [ %1691, %1708 ], [ %1742, %1759 ], [ %1793, %1810 ], [ %1844, %1861 ], [ %1895, %1912 ], [ %1946, %1963 ], [ %2917, %2935 ], [ %2962, %2980 ], [ %3038, %3039 ], [ %3170, %3188 ], [ %3214, %3232 ], [ %3267, %3285 ], [ %3320, %3338 ], [ %3383, %3401 ], [ %3427, %3445 ], [ %3480, %3498 ], [ %3533, %3551 ], [ %3596, %3613 ], [ %3647, %3664 ], [ %3698, %3715 ], [ %3749, %3766 ], [ %3800, %3817 ], [ %3851, %3868 ], [ %3902, %3919 ], [ %3953, %3970 ], [ %3052, %3070 ], [ %3102, %3120 ], [ %2865, %2863 ], [ %1116, %2909 ]
  %4114 = phi i32 [ %4082, %4098 ], [ %4082, %4107 ], [ %4028, %4078 ], [ %101, %121 ], [ %167, %183 ], [ %218, %234 ], [ %269, %285 ], [ %320, %336 ], [ %371, %387 ], [ %422, %438 ], [ %473, %489 ], [ %524, %540 ], [ %1086, %1108 ], [ %585, %604 ], [ %646, %665 ], [ %707, %726 ], [ %768, %787 ], [ %829, %848 ], [ %890, %909 ], [ %951, %970 ], [ %1012, %1031 ], [ %1117, %1134 ], [ %1164, %1181 ], [ %1208, %1225 ], [ %1261, %1278 ], [ %1314, %1331 ], [ %2022, %2038 ], [ %2073, %2089 ], [ %2124, %2140 ], [ %2175, %2191 ], [ %2226, %2242 ], [ %2277, %2293 ], [ %2894, %2891 ], [ %2349, %2565 ], [ %2349, %2515 ], [ %2349, %2465 ], [ %2349, %2415 ], [ %2349, %2366 ], [ %2602, %2624 ], [ %2652, %2668 ], [ %2704, %2720 ], [ %2756, %2772 ], [ %2808, %2824 ], [ %2866, %2882 ], [ %2866, %2883 ], [ %2808, %2860 ], [ %1377, %1394 ], [ %1421, %1438 ], [ %1474, %1491 ], [ %1527, %1544 ], [ %1590, %1606 ], [ %1641, %1657 ], [ %1692, %1708 ], [ %1743, %1759 ], [ %1794, %1810 ], [ %1845, %1861 ], [ %1896, %1912 ], [ %1947, %1963 ], [ %2918, %2935 ], [ %2963, %2980 ], [ %3011, %3039 ], [ %3171, %3188 ], [ %3215, %3232 ], [ %3268, %3285 ], [ %3321, %3338 ], [ %3384, %3401 ], [ %3428, %3445 ], [ %3481, %3498 ], [ %3534, %3551 ], [ %3597, %3613 ], [ %3648, %3664 ], [ %3699, %3715 ], [ %3750, %3766 ], [ %3801, %3817 ], [ %3852, %3868 ], [ %3903, %3919 ], [ %3954, %3970 ], [ %3053, %3070 ], [ %3103, %3120 ], [ %2866, %2863 ], [ %1117, %2909 ]
  %4115 = phi i32 [ %4083, %4098 ], [ %4083, %4107 ], [ %4011, %4078 ], [ %102, %121 ], [ %168, %183 ], [ %219, %234 ], [ %270, %285 ], [ %321, %336 ], [ %372, %387 ], [ %423, %438 ], [ %474, %489 ], [ %525, %540 ], [ %1087, %1108 ], [ %586, %604 ], [ %647, %665 ], [ %708, %726 ], [ %769, %787 ], [ %830, %848 ], [ %891, %909 ], [ %952, %970 ], [ %1013, %1031 ], [ %1118, %1134 ], [ %1165, %1181 ], [ %1209, %1225 ], [ %1262, %1278 ], [ %1315, %1331 ], [ %2023, %2038 ], [ %2074, %2089 ], [ %2125, %2140 ], [ %2176, %2191 ], [ %2227, %2242 ], [ %2278, %2293 ], [ %2895, %2891 ], [ %2556, %2565 ], [ %2506, %2515 ], [ %2456, %2465 ], [ %2406, %2415 ], [ %2350, %2366 ], [ %2616, %2624 ], [ %2653, %2668 ], [ %2705, %2720 ], [ %2757, %2772 ], [ %2809, %2824 ], [ %2867, %2882 ], [ %2867, %2883 ], [ -1, %2860 ], [ %1378, %1394 ], [ %1422, %1438 ], [ %1475, %1491 ], [ %1528, %1544 ], [ %1591, %1606 ], [ %1642, %1657 ], [ %1693, %1708 ], [ %1744, %1759 ], [ %1795, %1810 ], [ %1846, %1861 ], [ %1897, %1912 ], [ %1948, %1963 ], [ %2919, %2935 ], [ %2964, %2980 ], [ %3012, %3039 ], [ %3172, %3188 ], [ %3216, %3232 ], [ %3269, %3285 ], [ %3322, %3338 ], [ %3385, %3401 ], [ %3429, %3445 ], [ %3482, %3498 ], [ %3535, %3551 ], [ %3598, %3613 ], [ %3649, %3664 ], [ %3700, %3715 ], [ %3751, %3766 ], [ %3802, %3817 ], [ %3853, %3868 ], [ %3904, %3919 ], [ %3955, %3970 ], [ %3054, %3070 ], [ %3104, %3120 ], [ %2867, %2863 ], [ %1118, %2909 ]
  %4116 = phi i32 [ %4084, %4098 ], [ %4084, %4107 ], [ %4012, %4078 ], [ %103, %121 ], [ %169, %183 ], [ %220, %234 ], [ %271, %285 ], [ %322, %336 ], [ %373, %387 ], [ %424, %438 ], [ %475, %489 ], [ %526, %540 ], [ %1088, %1108 ], [ %587, %604 ], [ %648, %665 ], [ %709, %726 ], [ %770, %787 ], [ %831, %848 ], [ %892, %909 ], [ %953, %970 ], [ %1014, %1031 ], [ %1119, %1134 ], [ %1166, %1181 ], [ %1210, %1225 ], [ %1263, %1278 ], [ %1316, %1331 ], [ %2024, %2038 ], [ %2075, %2089 ], [ %2126, %2140 ], [ %2177, %2191 ], [ %2228, %2242 ], [ %2279, %2293 ], [ %2896, %2891 ], [ %2351, %2565 ], [ %2351, %2515 ], [ %2351, %2465 ], [ %2351, %2415 ], [ %2351, %2366 ], [ %2604, %2624 ], [ %2654, %2668 ], [ %2706, %2720 ], [ %2758, %2772 ], [ %2810, %2824 ], [ %2868, %2882 ], [ %2868, %2883 ], [ %2810, %2860 ], [ %1379, %1394 ], [ %1423, %1438 ], [ %1476, %1491 ], [ %1529, %1544 ], [ %1592, %1606 ], [ %1643, %1657 ], [ %1694, %1708 ], [ %1745, %1759 ], [ %1796, %1810 ], [ %1847, %1861 ], [ %1898, %1912 ], [ %1949, %1963 ], [ %2920, %2935 ], [ %2965, %2980 ], [ %3013, %3039 ], [ %3173, %3188 ], [ %3217, %3232 ], [ %3270, %3285 ], [ %3323, %3338 ], [ %3386, %3401 ], [ %3430, %3445 ], [ %3483, %3498 ], [ %3536, %3551 ], [ %3599, %3613 ], [ %3650, %3664 ], [ %3701, %3715 ], [ %3752, %3766 ], [ %3803, %3817 ], [ %3854, %3868 ], [ %3905, %3919 ], [ %3956, %3970 ], [ %3055, %3070 ], [ %3105, %3120 ], [ %2868, %2863 ], [ %1119, %2909 ]
  %4117 = phi i32 [ %4085, %4098 ], [ %4085, %4107 ], [ %4013, %4078 ], [ %104, %121 ], [ %170, %183 ], [ %221, %234 ], [ %272, %285 ], [ %323, %336 ], [ %374, %387 ], [ %425, %438 ], [ %476, %489 ], [ %527, %540 ], [ %1089, %1108 ], [ %588, %604 ], [ %649, %665 ], [ %710, %726 ], [ %771, %787 ], [ %832, %848 ], [ %893, %909 ], [ %954, %970 ], [ %1015, %1031 ], [ %1120, %1134 ], [ %1167, %1181 ], [ %1211, %1225 ], [ %1264, %1278 ], [ %1317, %1331 ], [ %2025, %2038 ], [ %2076, %2089 ], [ %2127, %2140 ], [ %2178, %2191 ], [ %2229, %2242 ], [ %2280, %2293 ], [ %2897, %2891 ], [ %2352, %2565 ], [ %2352, %2515 ], [ %2352, %2465 ], [ %2352, %2415 ], [ %2352, %2366 ], [ %2605, %2624 ], [ %2655, %2668 ], [ %2707, %2720 ], [ %2759, %2772 ], [ %2811, %2824 ], [ %2869, %2882 ], [ %2869, %2883 ], [ %2811, %2860 ], [ %1380, %1394 ], [ %1424, %1438 ], [ %1477, %1491 ], [ %1530, %1544 ], [ %1593, %1606 ], [ %1644, %1657 ], [ %1695, %1708 ], [ %1746, %1759 ], [ %1797, %1810 ], [ %1848, %1861 ], [ %1899, %1912 ], [ %1950, %1963 ], [ %2921, %2935 ], [ %2966, %2980 ], [ %3014, %3039 ], [ %3174, %3188 ], [ %3218, %3232 ], [ %3271, %3285 ], [ %3324, %3338 ], [ %3387, %3401 ], [ %3431, %3445 ], [ %3484, %3498 ], [ %3537, %3551 ], [ %3600, %3613 ], [ %3651, %3664 ], [ %3702, %3715 ], [ %3753, %3766 ], [ %3804, %3817 ], [ %3855, %3868 ], [ %3906, %3919 ], [ %3957, %3970 ], [ %3056, %3070 ], [ %3106, %3120 ], [ %2869, %2863 ], [ %1120, %2909 ]
  %4118 = phi i32 [ %4086, %4098 ], [ %4086, %4107 ], [ %4014, %4078 ], [ %105, %121 ], [ %171, %183 ], [ %222, %234 ], [ %273, %285 ], [ %324, %336 ], [ %375, %387 ], [ %426, %438 ], [ %477, %489 ], [ %528, %540 ], [ %1090, %1108 ], [ %589, %604 ], [ %650, %665 ], [ %711, %726 ], [ %772, %787 ], [ %833, %848 ], [ %894, %909 ], [ %955, %970 ], [ %1016, %1031 ], [ %1121, %1134 ], [ %1168, %1181 ], [ %1212, %1225 ], [ %1265, %1278 ], [ %1318, %1331 ], [ %2026, %2038 ], [ %2077, %2089 ], [ %2128, %2140 ], [ %2179, %2191 ], [ %2230, %2242 ], [ %2281, %2293 ], [ %2898, %2891 ], [ %2353, %2565 ], [ %2353, %2515 ], [ %2353, %2465 ], [ %2353, %2415 ], [ %2353, %2366 ], [ %2606, %2624 ], [ %2656, %2668 ], [ %2708, %2720 ], [ %2760, %2772 ], [ %2812, %2824 ], [ %2870, %2882 ], [ %2870, %2883 ], [ %2812, %2860 ], [ %1381, %1394 ], [ %1425, %1438 ], [ %1478, %1491 ], [ %1531, %1544 ], [ %1594, %1606 ], [ %1645, %1657 ], [ %1696, %1708 ], [ %1747, %1759 ], [ %1798, %1810 ], [ %1849, %1861 ], [ %1900, %1912 ], [ %1951, %1963 ], [ %2922, %2935 ], [ %2967, %2980 ], [ %3015, %3039 ], [ %3175, %3188 ], [ %3219, %3232 ], [ %3272, %3285 ], [ %3325, %3338 ], [ %3388, %3401 ], [ %3432, %3445 ], [ %3485, %3498 ], [ %3538, %3551 ], [ %3601, %3613 ], [ %3652, %3664 ], [ %3703, %3715 ], [ %3754, %3766 ], [ %3805, %3817 ], [ %3856, %3868 ], [ %3907, %3919 ], [ %3958, %3970 ], [ %3057, %3070 ], [ %3107, %3120 ], [ %2870, %2863 ], [ %1121, %2909 ]
  %4119 = phi i32 [ %4087, %4098 ], [ %4087, %4107 ], [ %4015, %4078 ], [ %106, %121 ], [ %172, %183 ], [ %223, %234 ], [ %274, %285 ], [ %325, %336 ], [ %376, %387 ], [ %427, %438 ], [ %478, %489 ], [ %529, %540 ], [ %1091, %1108 ], [ %590, %604 ], [ %651, %665 ], [ %712, %726 ], [ %773, %787 ], [ %834, %848 ], [ %895, %909 ], [ %956, %970 ], [ %1017, %1031 ], [ %1122, %1134 ], [ %1169, %1181 ], [ %1213, %1225 ], [ %1266, %1278 ], [ %1319, %1331 ], [ %2027, %2038 ], [ %2078, %2089 ], [ %2129, %2140 ], [ %2180, %2191 ], [ %2231, %2242 ], [ %2282, %2293 ], [ %2899, %2891 ], [ %2354, %2565 ], [ %2354, %2515 ], [ %2354, %2465 ], [ %2354, %2415 ], [ %2354, %2366 ], [ %2607, %2624 ], [ %2657, %2668 ], [ %2709, %2720 ], [ %2761, %2772 ], [ %2813, %2824 ], [ %2871, %2882 ], [ %2871, %2883 ], [ %2813, %2860 ], [ %1382, %1394 ], [ %1426, %1438 ], [ %1479, %1491 ], [ %1532, %1544 ], [ %1595, %1606 ], [ %1646, %1657 ], [ %1697, %1708 ], [ %1748, %1759 ], [ %1799, %1810 ], [ %1850, %1861 ], [ %1901, %1912 ], [ %1952, %1963 ], [ %2923, %2935 ], [ %2968, %2980 ], [ %3016, %3039 ], [ %3176, %3188 ], [ %3220, %3232 ], [ %3273, %3285 ], [ %3326, %3338 ], [ %3389, %3401 ], [ %3433, %3445 ], [ %3486, %3498 ], [ %3539, %3551 ], [ %3602, %3613 ], [ %3653, %3664 ], [ %3704, %3715 ], [ %3755, %3766 ], [ %3806, %3817 ], [ %3857, %3868 ], [ %3908, %3919 ], [ %3959, %3970 ], [ %3058, %3070 ], [ %3108, %3120 ], [ %2871, %2863 ], [ %1122, %2909 ]
  %4120 = phi ptr [ %4088, %4098 ], [ %4088, %4107 ], [ %4016, %4078 ], [ %107, %121 ], [ %173, %183 ], [ %224, %234 ], [ %275, %285 ], [ %326, %336 ], [ %377, %387 ], [ %428, %438 ], [ %479, %489 ], [ %530, %540 ], [ %1092, %1108 ], [ %591, %604 ], [ %652, %665 ], [ %713, %726 ], [ %774, %787 ], [ %835, %848 ], [ %896, %909 ], [ %957, %970 ], [ %1018, %1031 ], [ %1123, %1134 ], [ %1170, %1181 ], [ %1214, %1225 ], [ %1267, %1278 ], [ %1320, %1331 ], [ %2028, %2038 ], [ %2079, %2089 ], [ %2130, %2140 ], [ %2181, %2191 ], [ %2232, %2242 ], [ %2283, %2293 ], [ %2900, %2891 ], [ %2355, %2565 ], [ %2355, %2515 ], [ %2355, %2465 ], [ %2355, %2415 ], [ %2355, %2366 ], [ %2608, %2624 ], [ %2658, %2668 ], [ %2710, %2720 ], [ %2762, %2772 ], [ %2814, %2824 ], [ %2872, %2882 ], [ %2872, %2883 ], [ %2814, %2860 ], [ %1383, %1394 ], [ %1427, %1438 ], [ %1480, %1491 ], [ %1533, %1544 ], [ %1596, %1606 ], [ %1647, %1657 ], [ %1698, %1708 ], [ %1749, %1759 ], [ %1800, %1810 ], [ %1851, %1861 ], [ %1902, %1912 ], [ %1953, %1963 ], [ %2924, %2935 ], [ %2969, %2980 ], [ %3017, %3039 ], [ %3177, %3188 ], [ %3221, %3232 ], [ %3274, %3285 ], [ %3327, %3338 ], [ %3390, %3401 ], [ %3434, %3445 ], [ %3487, %3498 ], [ %3540, %3551 ], [ %3603, %3613 ], [ %3654, %3664 ], [ %3705, %3715 ], [ %3756, %3766 ], [ %3807, %3817 ], [ %3858, %3868 ], [ %3909, %3919 ], [ %3960, %3970 ], [ %3059, %3070 ], [ %3109, %3120 ], [ %2872, %2863 ], [ %1123, %2909 ]
  %4121 = phi i32 [ %4089, %4098 ], [ %4089, %4107 ], [ %4017, %4078 ], [ %108, %121 ], [ %174, %183 ], [ %225, %234 ], [ %276, %285 ], [ %327, %336 ], [ %378, %387 ], [ %429, %438 ], [ %480, %489 ], [ %531, %540 ], [ %1093, %1108 ], [ %592, %604 ], [ %653, %665 ], [ %714, %726 ], [ %775, %787 ], [ %836, %848 ], [ %897, %909 ], [ %958, %970 ], [ %1019, %1031 ], [ %1124, %1134 ], [ %1171, %1181 ], [ %1215, %1225 ], [ %1268, %1278 ], [ %1321, %1331 ], [ %2029, %2038 ], [ %2080, %2089 ], [ %2131, %2140 ], [ %2182, %2191 ], [ %2233, %2242 ], [ %2284, %2293 ], [ %2901, %2891 ], [ %2557, %2565 ], [ %2507, %2515 ], [ %2457, %2465 ], [ %2407, %2415 ], [ %2356, %2366 ], [ %2609, %2624 ], [ %2659, %2668 ], [ %2711, %2720 ], [ %2763, %2772 ], [ %2815, %2824 ], [ %2873, %2882 ], [ %2873, %2883 ], [ %2815, %2860 ], [ %1384, %1394 ], [ %1428, %1438 ], [ %1481, %1491 ], [ %1534, %1544 ], [ %1597, %1606 ], [ %1648, %1657 ], [ %1699, %1708 ], [ %1750, %1759 ], [ %1801, %1810 ], [ %1852, %1861 ], [ %1903, %1912 ], [ %1954, %1963 ], [ %2925, %2935 ], [ %2970, %2980 ], [ %3018, %3039 ], [ %3178, %3188 ], [ %3222, %3232 ], [ %3275, %3285 ], [ %3328, %3338 ], [ %3391, %3401 ], [ %3435, %3445 ], [ %3488, %3498 ], [ %3541, %3551 ], [ %3604, %3613 ], [ %3655, %3664 ], [ %3706, %3715 ], [ %3757, %3766 ], [ %3808, %3817 ], [ %3859, %3868 ], [ %3910, %3919 ], [ %3961, %3970 ], [ %3060, %3070 ], [ %3110, %3120 ], [ %2873, %2863 ], [ %1124, %2909 ]
  %4122 = phi i32 [ %4090, %4098 ], [ %4090, %4107 ], [ %4018, %4078 ], [ %109, %121 ], [ %175, %183 ], [ %226, %234 ], [ %277, %285 ], [ %328, %336 ], [ %379, %387 ], [ %430, %438 ], [ %481, %489 ], [ %532, %540 ], [ %1094, %1108 ], [ %593, %604 ], [ %654, %665 ], [ %715, %726 ], [ %776, %787 ], [ %837, %848 ], [ %898, %909 ], [ %959, %970 ], [ %1020, %1031 ], [ %1125, %1134 ], [ %1172, %1181 ], [ %1216, %1225 ], [ %1269, %1278 ], [ %1322, %1331 ], [ %2030, %2038 ], [ %2081, %2089 ], [ %2132, %2140 ], [ %2183, %2191 ], [ %2234, %2242 ], [ %2285, %2293 ], [ %2902, %2891 ], [ 1, %2565 ], [ 2, %2515 ], [ 3, %2465 ], [ 4, %2415 ], [ 5, %2366 ], [ %2617, %2624 ], [ %2660, %2668 ], [ %2712, %2720 ], [ %2764, %2772 ], [ %2816, %2824 ], [ %2874, %2882 ], [ %2874, %2883 ], [ %2816, %2860 ], [ %1385, %1394 ], [ %1429, %1438 ], [ %1482, %1491 ], [ %1535, %1544 ], [ %1598, %1606 ], [ %1649, %1657 ], [ %1700, %1708 ], [ %1751, %1759 ], [ %1802, %1810 ], [ %1853, %1861 ], [ %1904, %1912 ], [ %1955, %1963 ], [ %2926, %2935 ], [ %2971, %2980 ], [ %3019, %3039 ], [ %3179, %3188 ], [ %3223, %3232 ], [ %3276, %3285 ], [ %3329, %3338 ], [ %3392, %3401 ], [ %3436, %3445 ], [ %3489, %3498 ], [ %3542, %3551 ], [ %3605, %3613 ], [ %3656, %3664 ], [ %3707, %3715 ], [ %3758, %3766 ], [ %3809, %3817 ], [ %3860, %3868 ], [ %3911, %3919 ], [ %3962, %3970 ], [ %3061, %3070 ], [ %3111, %3120 ], [ %2874, %2863 ], [ %1125, %2909 ]
  %4123 = phi i32 [ %4091, %4098 ], [ %4091, %4107 ], [ %4019, %4078 ], [ %110, %121 ], [ %176, %183 ], [ %227, %234 ], [ %278, %285 ], [ %329, %336 ], [ %380, %387 ], [ %431, %438 ], [ %482, %489 ], [ %533, %540 ], [ %1095, %1108 ], [ %594, %604 ], [ %655, %665 ], [ %716, %726 ], [ %777, %787 ], [ %838, %848 ], [ %899, %909 ], [ %960, %970 ], [ %1021, %1031 ], [ %1126, %1134 ], [ %1173, %1181 ], [ %1217, %1225 ], [ %1270, %1278 ], [ %1323, %1331 ], [ %2031, %2038 ], [ %2082, %2089 ], [ %2133, %2140 ], [ %2184, %2191 ], [ %2235, %2242 ], [ %2286, %2293 ], [ %2903, %2891 ], [ %2558, %2565 ], [ %2508, %2515 ], [ %2458, %2465 ], [ %2408, %2415 ], [ %2358, %2366 ], [ %2611, %2624 ], [ %2661, %2668 ], [ %2713, %2720 ], [ %2765, %2772 ], [ %2817, %2824 ], [ %2875, %2882 ], [ %2875, %2883 ], [ %2817, %2860 ], [ %1386, %1394 ], [ %1430, %1438 ], [ %1483, %1491 ], [ %1536, %1544 ], [ %1599, %1606 ], [ %1650, %1657 ], [ %1701, %1708 ], [ %1752, %1759 ], [ %1803, %1810 ], [ %1854, %1861 ], [ %1905, %1912 ], [ %1956, %1963 ], [ %2927, %2935 ], [ %2972, %2980 ], [ %3020, %3039 ], [ %3180, %3188 ], [ %3224, %3232 ], [ %3277, %3285 ], [ %3330, %3338 ], [ %3393, %3401 ], [ %3437, %3445 ], [ %3490, %3498 ], [ %3543, %3551 ], [ %3606, %3613 ], [ %3657, %3664 ], [ %3708, %3715 ], [ %3759, %3766 ], [ %3810, %3817 ], [ %3861, %3868 ], [ %3912, %3919 ], [ %3963, %3970 ], [ %3062, %3070 ], [ %3112, %3120 ], [ %2875, %2863 ], [ %1126, %2909 ]
  %4124 = phi i64 [ %4092, %4098 ], [ %4108, %4107 ], [ %4020, %4078 ], [ %111, %121 ], [ %177, %183 ], [ %228, %234 ], [ %279, %285 ], [ %330, %336 ], [ %381, %387 ], [ %432, %438 ], [ %483, %489 ], [ %534, %540 ], [ %1096, %1108 ], [ %595, %604 ], [ %656, %665 ], [ %717, %726 ], [ %778, %787 ], [ %839, %848 ], [ %900, %909 ], [ %961, %970 ], [ %1022, %1031 ], [ %1127, %1134 ], [ %1174, %1181 ], [ %1218, %1225 ], [ %1271, %1278 ], [ %1324, %1331 ], [ %2032, %2038 ], [ %2083, %2089 ], [ %2134, %2140 ], [ %2185, %2191 ], [ %2236, %2242 ], [ %2287, %2293 ], [ %2904, %2891 ], [ %2559, %2565 ], [ %2509, %2515 ], [ %2459, %2465 ], [ %2409, %2415 ], [ %2359, %2366 ], [ %2618, %2624 ], [ %2662, %2668 ], [ %2714, %2720 ], [ %2766, %2772 ], [ %2818, %2824 ], [ %2876, %2882 ], [ %2886, %2883 ], [ %2834, %2860 ], [ %1387, %1394 ], [ %1431, %1438 ], [ %1484, %1491 ], [ %1537, %1544 ], [ %1600, %1606 ], [ %1651, %1657 ], [ %1702, %1708 ], [ %1753, %1759 ], [ %1804, %1810 ], [ %1855, %1861 ], [ %1906, %1912 ], [ %1957, %1963 ], [ %2928, %2935 ], [ %2973, %2980 ], [ %3021, %3039 ], [ %3181, %3188 ], [ %3225, %3232 ], [ %3278, %3285 ], [ %3331, %3338 ], [ %3394, %3401 ], [ %3438, %3445 ], [ %3491, %3498 ], [ %3544, %3551 ], [ %3607, %3613 ], [ %3658, %3664 ], [ %3709, %3715 ], [ %3760, %3766 ], [ %3811, %3817 ], [ %3862, %3868 ], [ %3913, %3919 ], [ %3964, %3970 ], [ %3063, %3070 ], [ %3113, %3120 ], [ %2876, %2863 ], [ %1144, %2909 ]
  %4125 = phi i1 [ true, %4098 ], [ true, %4107 ], [ true, %4078 ], [ true, %121 ], [ true, %183 ], [ true, %234 ], [ true, %285 ], [ true, %336 ], [ true, %387 ], [ true, %438 ], [ true, %489 ], [ true, %540 ], [ true, %1108 ], [ true, %604 ], [ true, %665 ], [ true, %726 ], [ true, %787 ], [ true, %848 ], [ true, %909 ], [ true, %970 ], [ true, %1031 ], [ true, %1134 ], [ true, %1181 ], [ true, %1225 ], [ true, %1278 ], [ true, %1331 ], [ true, %2038 ], [ true, %2089 ], [ true, %2140 ], [ true, %2191 ], [ true, %2242 ], [ true, %2293 ], [ false, %2891 ], [ true, %2565 ], [ true, %2515 ], [ true, %2465 ], [ true, %2415 ], [ true, %2366 ], [ true, %2624 ], [ true, %2668 ], [ true, %2720 ], [ true, %2772 ], [ true, %2824 ], [ true, %2882 ], [ false, %2883 ], [ false, %2860 ], [ true, %1394 ], [ true, %1438 ], [ true, %1491 ], [ true, %1544 ], [ true, %1606 ], [ true, %1657 ], [ true, %1708 ], [ true, %1759 ], [ true, %1810 ], [ true, %1861 ], [ true, %1912 ], [ true, %1963 ], [ true, %2935 ], [ true, %2980 ], [ true, %3039 ], [ true, %3188 ], [ true, %3232 ], [ true, %3285 ], [ true, %3338 ], [ true, %3401 ], [ true, %3445 ], [ true, %3498 ], [ true, %3551 ], [ true, %3613 ], [ true, %3664 ], [ true, %3715 ], [ true, %3766 ], [ true, %3817 ], [ true, %3868 ], [ true, %3919 ], [ true, %3970 ], [ true, %3070 ], [ true, %3120 ], [ false, %2863 ], [ false, %2909 ]
  %4126 = phi i32 [ 0, %4098 ], [ 0, %4107 ], [ 0, %4078 ], [ 0, %121 ], [ 0, %183 ], [ 0, %234 ], [ 0, %285 ], [ 0, %336 ], [ 0, %387 ], [ 0, %438 ], [ 0, %489 ], [ 0, %540 ], [ 0, %1108 ], [ 0, %604 ], [ 0, %665 ], [ 0, %726 ], [ 0, %787 ], [ 0, %848 ], [ 0, %909 ], [ 0, %970 ], [ 0, %1031 ], [ 0, %1134 ], [ 0, %1181 ], [ 0, %1225 ], [ 0, %1278 ], [ 0, %1331 ], [ 0, %2038 ], [ 0, %2089 ], [ 0, %2140 ], [ 0, %2191 ], [ 0, %2242 ], [ 0, %2293 ], [ 9, %2891 ], [ 0, %2565 ], [ 0, %2515 ], [ 0, %2465 ], [ 0, %2415 ], [ 0, %2366 ], [ 0, %2624 ], [ 0, %2668 ], [ 0, %2720 ], [ 0, %2772 ], [ 0, %2824 ], [ 0, %2882 ], [ 1, %2883 ], [ 9, %2860 ], [ 0, %1394 ], [ 0, %1438 ], [ 0, %1491 ], [ 0, %1544 ], [ 0, %1606 ], [ 0, %1657 ], [ 0, %1708 ], [ 0, %1759 ], [ 0, %1810 ], [ 0, %1861 ], [ 0, %1912 ], [ 0, %1963 ], [ 0, %2935 ], [ 0, %2980 ], [ 0, %3039 ], [ 0, %3188 ], [ 0, %3232 ], [ 0, %3285 ], [ 0, %3338 ], [ 0, %3401 ], [ 0, %3445 ], [ 0, %3498 ], [ 0, %3551 ], [ 0, %3613 ], [ 0, %3664 ], [ 0, %3715 ], [ 0, %3766 ], [ 0, %3817 ], [ 0, %3868 ], [ 0, %3919 ], [ 0, %3970 ], [ 0, %3070 ], [ 0, %3120 ], [ 1, %2863 ], [ 9, %2909 ]
  %4127 = phi i32 [ %4093, %4098 ], [ %4109, %4107 ], [ %4021, %4078 ], [ %113, %121 ], [ %178, %183 ], [ %229, %234 ], [ %280, %285 ], [ %331, %336 ], [ %382, %387 ], [ %433, %438 ], [ %484, %489 ], [ %535, %540 ], [ %1097, %1108 ], [ %596, %604 ], [ %657, %665 ], [ %718, %726 ], [ %779, %787 ], [ %840, %848 ], [ %901, %909 ], [ %962, %970 ], [ %1023, %1031 ], [ %1129, %1134 ], [ %1176, %1181 ], [ %1220, %1225 ], [ %1273, %1278 ], [ %1326, %1331 ], [ %2033, %2038 ], [ %2084, %2089 ], [ %2135, %2140 ], [ %2186, %2191 ], [ %2237, %2242 ], [ %2288, %2293 ], [ %2905, %2891 ], [ %2560, %2565 ], [ %2510, %2515 ], [ %2460, %2465 ], [ %2410, %2415 ], [ %2360, %2366 ], [ %2619, %2624 ], [ %2663, %2668 ], [ %2715, %2720 ], [ %2767, %2772 ], [ %2819, %2824 ], [ %2877, %2882 ], [ %2884, %2883 ], [ %2857, %2860 ], [ %1389, %1394 ], [ %1433, %1438 ], [ %1486, %1491 ], [ %1539, %1544 ], [ %1601, %1606 ], [ %1652, %1657 ], [ %1703, %1708 ], [ %1754, %1759 ], [ %1805, %1810 ], [ %1856, %1861 ], [ %1907, %1912 ], [ %1958, %1963 ], [ %2930, %2935 ], [ %2975, %2980 ], [ %3022, %3039 ], [ %3183, %3188 ], [ %3227, %3232 ], [ %3280, %3285 ], [ %3333, %3338 ], [ %3396, %3401 ], [ %3440, %3445 ], [ %3493, %3498 ], [ %3546, %3551 ], [ %3608, %3613 ], [ %3659, %3664 ], [ %3710, %3715 ], [ %3761, %3766 ], [ %3812, %3817 ], [ %3863, %3868 ], [ %3914, %3919 ], [ %3965, %3970 ], [ %3065, %3070 ], [ %3115, %3120 ], [ %2877, %2863 ], [ %2910, %2909 ]
  %4128 = phi i32 [ %4094, %4098 ], [ %4110, %4107 ], [ %4022, %4078 ], [ %114, %121 ], [ %179, %183 ], [ %230, %234 ], [ %281, %285 ], [ %332, %336 ], [ %383, %387 ], [ %434, %438 ], [ %485, %489 ], [ %536, %540 ], [ %1098, %1108 ], [ %597, %604 ], [ %658, %665 ], [ %719, %726 ], [ %780, %787 ], [ %841, %848 ], [ %902, %909 ], [ %963, %970 ], [ %1024, %1031 ], [ %1130, %1134 ], [ %1177, %1181 ], [ %1221, %1225 ], [ %1274, %1278 ], [ %1327, %1331 ], [ %2034, %2038 ], [ %2085, %2089 ], [ %2136, %2140 ], [ %2187, %2191 ], [ %2238, %2242 ], [ %2289, %2293 ], [ %2906, %2891 ], [ %2561, %2565 ], [ %2511, %2515 ], [ %2461, %2465 ], [ %2411, %2415 ], [ %2361, %2366 ], [ %2620, %2624 ], [ %2664, %2668 ], [ %2716, %2720 ], [ %2768, %2772 ], [ %2820, %2824 ], [ %2878, %2882 ], [ %2890, %2883 ], [ %2858, %2860 ], [ %1390, %1394 ], [ %1434, %1438 ], [ %1487, %1491 ], [ %1540, %1544 ], [ %1602, %1606 ], [ %1653, %1657 ], [ %1704, %1708 ], [ %1755, %1759 ], [ %1806, %1810 ], [ %1857, %1861 ], [ %1908, %1912 ], [ %1959, %1963 ], [ %2931, %2935 ], [ %2976, %2980 ], [ %3023, %3039 ], [ %3184, %3188 ], [ %3228, %3232 ], [ %3281, %3285 ], [ %3334, %3338 ], [ %3397, %3401 ], [ %3441, %3445 ], [ %3494, %3498 ], [ %3547, %3551 ], [ %3609, %3613 ], [ %3660, %3664 ], [ %3711, %3715 ], [ %3762, %3766 ], [ %3813, %3817 ], [ %3864, %3868 ], [ %3915, %3919 ], [ %3966, %3970 ], [ %3066, %3070 ], [ %3116, %3120 ], [ %2878, %2863 ], [ %2911, %2909 ]
  store i64 %4113, ptr %30, align 8, !tbaa !426
  store i64 %4112, ptr %32, align 8, !tbaa !428
  store i32 %4127, ptr %6, align 4, !tbaa.struct !86
  store i32 %4128, ptr %39, align 4, !tbaa.struct !88
  store i32 %28, ptr %7, align 4, !tbaa.struct !429
  store i64 %4124, ptr %3, align 8, !tbaa !67
  store i32 %4119, ptr %42, align 8, !tbaa !89
  store i32 %4115, ptr %44, align 4, !tbaa !93
  store i32 %4116, ptr %46, align 8, !tbaa !94
  store i32 %4117, ptr %48, align 4, !tbaa !95
  store i32 %4118, ptr %50, align 8, !tbaa !96
  store ptr %4120, ptr %54, align 8, !tbaa !98
  store i32 %4121, ptr %56, align 8, !tbaa !99
  store i32 %4122, ptr %58, align 4, !tbaa !100
  store i32 %4123, ptr %60, align 8, !tbaa !101
  store i32 %4114, ptr %62, align 4, !tbaa !102
  %4129 = load i64, ptr %70, align 8, !tbaa !105
  %4130 = icmp eq i64 %4129, -1
  br i1 %4130, label %4142, label %4131, !prof !430

4131:                                             ; preds = %4111
  %4132 = sub i64 %31, %4113
  %4133 = add i64 %4129, %4132
  store i64 %4133, ptr %70, align 8, !tbaa !105
  %4134 = icmp eq i64 %4133, 0
  %4135 = and i1 %4125, %4134
  br i1 %4135, label %4136, label %4142, !prof !431

4136:                                             ; preds = %4131
  %4137 = load i32, ptr %78, align 8, !tbaa !108
  %4138 = icmp eq i32 %4137, 0
  br i1 %4138, label %4142, label %4139, !prof !432

4139:                                             ; preds = %4136
  %4140 = icmp eq i32 %4137, 1
  %4141 = select i1 %4140, i32 1, i32 9, !prof !433
  br label %4142

4142:                                             ; preds = %4131, %4136, %4139, %4111
  %4143 = phi i32 [ %4141, %4139 ], [ 0, %4136 ], [ %4126, %4131 ], [ %4126, %4111 ]
  %4144 = icmp eq i32 %4143, 1
  br i1 %4144, label %4145, label %4148, !prof !431

4145:                                             ; preds = %4142
  %4146 = icmp eq i32 %4128, 0
  %4147 = select i1 %4146, i32 1, i32 9, !prof !433
  store i32 -1, ptr %6, align 4, !tbaa !434
  store i32 0, ptr %39, align 4, !tbaa !435
  store i32 5, ptr %7, align 4, !tbaa !436
  br label %4148

4148:                                             ; preds = %12, %4142, %4145
  %4149 = phi i32 [ %4147, %4145 ], [ %4143, %4142 ], [ 0, %12 ]
  ret i32 %4149
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @lzma_decoder_reset(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #3 !prof !437 !PGOFuncName !438 {
  %3 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !439
  %5 = shl nsw i32 -1, %4
  %6 = xor i32 %5, -1
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18
  store i32 %6, ptr %7, align 4, !tbaa !97
  %8 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !440
  %10 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !441
  %12 = add i32 %11, %9
  br label %13

13:                                               ; preds = %2, %16
  %14 = phi i32 [ 0, %2 ], [ %17, %16 ]
  %15 = zext i32 %14 to i64
  br label %20

16:                                               ; preds = %20
  %17 = add i32 %14, 1
  %18 = lshr i32 %17, %12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %13, label %25, !prof !442, !llvm.loop !443

20:                                               ; preds = %13, %20
  %21 = phi i64 [ 0, %13 ], [ %23, %20 ]
  %22 = getelementptr inbounds [768 x i16], ptr %0, i64 %15, i64 %21
  store i16 1024, ptr %22, align 2, !tbaa !115
  %23 = add nuw nsw i64 %21, 1
  %24 = icmp eq i64 %23, 768
  br i1 %24, label %16, label %20, !prof !444, !llvm.loop !445

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 19
  store i32 %9, ptr %26, align 8, !tbaa !104
  %27 = shl nsw i32 -1, %11
  %28 = xor i32 %27, -1
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20
  store i32 %28, ptr %29, align 4, !tbaa !103
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %30, i8 0, i64 20, i1 false)
  store i32 %6, ptr %7, align 4, !tbaa !97
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  store i32 -1, ptr %31, align 4, !tbaa !434
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i32 1
  store i32 0, ptr %32, align 4, !tbaa !435
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i32 2
  store i32 5, ptr %33, align 4, !tbaa !436
  %34 = sub i32 0, %5
  %35 = zext i32 %34 to i64
  br label %36

36:                                               ; preds = %25, %38
  %37 = phi i64 [ 0, %25 ], [ %43, %38 ]
  br label %45

38:                                               ; preds = %45
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %37
  store i16 1024, ptr %39, align 2, !tbaa !115
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %37
  store i16 1024, ptr %40, align 2, !tbaa !115
  %41 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %37
  store i16 1024, ptr %41, align 2, !tbaa !115
  %42 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i64 %37
  store i16 1024, ptr %42, align 2, !tbaa !115
  %43 = add nuw nsw i64 %37, 1
  %44 = icmp eq i64 %43, 12
  br i1 %44, label %51, label %36, !prof !446, !llvm.loop !447

45:                                               ; preds = %36, %45
  %46 = phi i64 [ 0, %36 ], [ %49, %45 ]
  %47 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i64 %37, i64 %46
  store i16 1024, ptr %47, align 2, !tbaa !115
  %48 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6, i64 %37, i64 %46
  store i16 1024, ptr %48, align 2, !tbaa !115
  %49 = add nuw nsw i64 %46, 1
  %50 = icmp eq i64 %49, %35
  br i1 %50, label %38, label %45, !prof !448, !llvm.loop !449

51:                                               ; preds = %38, %53
  %52 = phi i64 [ %54, %53 ], [ 0, %38 ]
  br label %56

53:                                               ; preds = %56
  %54 = add nuw nsw i64 %52, 1
  %55 = icmp eq i64 %54, 4
  br i1 %55, label %61, label %51, !prof !450, !llvm.loop !451

56:                                               ; preds = %51, %56
  %57 = phi i64 [ 0, %51 ], [ %59, %56 ]
  %58 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7, i64 %52, i64 %57
  store i16 1024, ptr %58, align 2, !tbaa !115
  %59 = add nuw nsw i64 %57, 1
  %60 = icmp eq i64 %59, 64
  br i1 %60, label %53, label %56, !prof !452, !llvm.loop !453

61:                                               ; preds = %53, %61
  %62 = phi i64 [ %64, %61 ], [ 0, %53 ]
  %63 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8, i64 %62
  store i16 1024, ptr %63, align 2, !tbaa !115
  %64 = add nuw nsw i64 %62, 1
  %65 = icmp eq i64 %64, 114
  br i1 %65, label %71, label %61, !prof !454, !llvm.loop !455

66:                                               ; preds = %71
  %67 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  store i16 1024, ptr %67, align 4, !tbaa !195
  %68 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 1
  store i16 1024, ptr %68, align 2, !tbaa !212
  %69 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  store i16 1024, ptr %69, align 8, !tbaa !349
  %70 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 1
  store i16 1024, ptr %70, align 2, !tbaa !366
  br label %76

71:                                               ; preds = %61, %71
  %72 = phi i64 [ %74, %71 ], [ 0, %61 ]
  %73 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %72
  store i16 1024, ptr %73, align 2, !tbaa !115
  %74 = add nuw nsw i64 %72, 1
  %75 = icmp eq i64 %74, 16
  br i1 %75, label %66, label %71, !prof !456, !llvm.loop !457

76:                                               ; preds = %66, %100
  %77 = phi i32 [ 0, %66 ], [ %101, %100 ]
  %78 = zext i32 %77 to i64
  br label %81

79:                                               ; preds = %81
  %80 = zext i32 %77 to i64
  br label %88

81:                                               ; preds = %76, %81
  %82 = phi i64 [ 0, %76 ], [ %84, %81 ]
  %83 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 2, i64 %78, i64 %82
  store i16 1024, ptr %83, align 2, !tbaa !115
  %84 = add nuw nsw i64 %82, 1
  %85 = icmp eq i64 %84, 8
  br i1 %85, label %79, label %81, !prof !458, !llvm.loop !459

86:                                               ; preds = %88
  %87 = zext i32 %77 to i64
  br label %95

88:                                               ; preds = %79, %88
  %89 = phi i64 [ 0, %79 ], [ %91, %88 ]
  %90 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 3, i64 %80, i64 %89
  store i16 1024, ptr %90, align 2, !tbaa !115
  %91 = add nuw nsw i64 %89, 1
  %92 = icmp eq i64 %91, 8
  br i1 %92, label %86, label %88, !prof !458, !llvm.loop !460

93:                                               ; preds = %95
  %94 = zext i32 %77 to i64
  br label %104

95:                                               ; preds = %86, %95
  %96 = phi i64 [ 0, %86 ], [ %98, %95 ]
  %97 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 2, i64 %87, i64 %96
  store i16 1024, ptr %97, align 2, !tbaa !115
  %98 = add nuw nsw i64 %96, 1
  %99 = icmp eq i64 %98, 8
  br i1 %99, label %93, label %95, !prof !458, !llvm.loop !461

100:                                              ; preds = %104
  %101 = add i32 %77, 1
  %102 = lshr i32 %101, %4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %76, label %109, !prof !462, !llvm.loop !463

104:                                              ; preds = %93, %104
  %105 = phi i64 [ 0, %93 ], [ %107, %104 ]
  %106 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 3, i64 %94, i64 %105
  store i16 1024, ptr %106, align 2, !tbaa !115
  %107 = add nuw nsw i64 %105, 1
  %108 = icmp eq i64 %107, 8
  br i1 %108, label %100, label %104, !prof !458, !llvm.loop !464

109:                                              ; preds = %100, %109
  %110 = phi i64 [ %112, %109 ], [ 0, %100 ]
  %111 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %110
  store i16 1024, ptr %111, align 2, !tbaa !115
  %112 = add nuw nsw i64 %110, 1
  %113 = icmp eq i64 %112, 256
  br i1 %113, label %117, label %109, !prof !465, !llvm.loop !466

114:                                              ; preds = %117
  %115 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22
  store i32 1, ptr %115, align 8, !tbaa !108
  %116 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %116, i8 0, i64 24, i1 false)
  ret void

117:                                              ; preds = %109, %117
  %118 = phi i64 [ %120, %117 ], [ 0, %109 ]
  %119 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %118
  store i16 1024, ptr %119, align 2, !tbaa !115
  %120 = add nuw nsw i64 %118, 1
  %121 = icmp eq i64 %120, 256
  br i1 %121, label %114, label %117, !prof !465, !llvm.loop !467
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @lzma_decoder_uncompressed(ptr nocapture noundef writeonly %0, i64 noundef %1) #4 !prof !468 !PGOFuncName !469 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 21
  store i64 %1, ptr %3, align 8, !tbaa !105
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_lzma_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !470 {
  %4 = tail call i32 @lzma_lz_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @lzma_decoder_init) #9
  ret i32 %4
}

declare i32 @lzma_lz_decoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @lzma_decoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #0 !prof !470 {
  %5 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !440
  %7 = icmp ult i32 %6, 5
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !441
  %11 = icmp ult i32 %10, 5
  %12 = add nuw nsw i32 %10, %6
  %13 = icmp ult i32 %12, 5
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %46

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !439
  %18 = icmp ult i32 %17, 5
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load ptr, ptr %0, align 8, !tbaa !39
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = tail call ptr @lzma_alloc(i64 noundef 28352, ptr noundef %1) #9
  store ptr %23, ptr %0, align 8, !tbaa !39
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 1
  store ptr @lzma_decode, ptr %26, align 8, !tbaa !46
  %27 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 2
  store ptr @lzma_decoder_reset, ptr %27, align 8, !tbaa !47
  %28 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 3
  store ptr @lzma_decoder_uncompressed, ptr %28, align 8, !tbaa !48
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32, ptr %2, align 8, !tbaa !49
  %31 = zext i32 %30 to i64
  store i64 %31, ptr %3, align 8, !tbaa !52
  %32 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !56
  %35 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !57
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 2
  store i64 %37, ptr %38, align 8, !tbaa !58
  br label %39

39:                                               ; preds = %22, %29
  %40 = phi i1 [ true, %29 ], [ false, %22 ]
  %41 = phi i32 [ 0, %29 ], [ 5, %22 ]
  br i1 %40, label %42, label %46

42:                                               ; preds = %39
  %43 = load ptr, ptr %0, align 8, !tbaa !39
  tail call void @lzma_decoder_reset(ptr noundef %43, ptr noundef %2)
  %44 = load ptr, ptr %0, align 8, !tbaa !39
  %45 = getelementptr inbounds %struct.lzma_coder_s, ptr %44, i64 0, i32 21
  store i64 -1, ptr %45, align 8, !tbaa !105
  br label %46

46:                                               ; preds = %8, %4, %39, %15, %42
  %47 = phi i32 [ %41, %39 ], [ 0, %42 ], [ 11, %15 ], [ 11, %4 ], [ 11, %8 ]
  ret i32 %47
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local zeroext i1 @lzma_lzma_lclppb_decode(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #4 !prof !38 {
  %3 = icmp ugt i8 %1, -32
  br i1 %3, label %18, label %4, !prof !45

4:                                                ; preds = %2
  %5 = udiv i8 %1, 45
  %6 = zext nneg i8 %5 to i32
  %7 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  store i32 %6, ptr %7, align 4, !tbaa !439
  %8 = mul i8 %5, -45
  %9 = add i8 %8, %1
  %10 = zext i8 %9 to i32
  %11 = udiv i32 %10, 9
  %12 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  store i32 %11, ptr %12, align 8, !tbaa !441
  %13 = mul nsw i32 %11, -9
  %14 = add nsw i32 %13, %10
  %15 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 3
  store i32 %14, ptr %15, align 4, !tbaa !440
  %16 = add nsw i32 %14, %11
  %17 = icmp ugt i32 %16, 4
  br label %18

18:                                               ; preds = %2, %4
  %19 = phi i1 [ %17, %4 ], [ true, %2 ]
  ret i1 %19
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_lzma_decoder_memusage_nocheck(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = zext i32 %2 to i64
  %4 = tail call i64 @lzma_lz_decoder_memusage(i64 noundef %3) #9
  %5 = add i64 %4, 28352
  ret i64 %5
}

declare i64 @lzma_lz_decoder_memusage(i64 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i64 @lzma_lzma_decoder_memusage(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !470 {
  %2 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !440
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %5, label %21

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !441
  %8 = icmp ult i32 %7, 5
  %9 = add nuw nsw i32 %7, %3
  %10 = icmp ult i32 %9, 5
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %21

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !439
  %15 = icmp ult i32 %14, 5
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, ptr %0, align 8, !tbaa !49
  %18 = zext i32 %17 to i64
  %19 = tail call i64 @lzma_lz_decoder_memusage(i64 noundef %18) #9
  %20 = add i64 %19, 28352
  br label %21

21:                                               ; preds = %5, %1, %12, %16
  %22 = phi i64 [ %20, %16 ], [ -1, %12 ], [ -1, %1 ], [ -1, %5 ]
  ret i64 %22
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_lzma_props_decode(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 !prof !470 {
  %5 = icmp eq i64 %3, 5
  br i1 %5, label %6, label %48

6:                                                ; preds = %4
  %7 = tail call ptr @lzma_alloc(i64 noundef 112, ptr noundef %1) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %2, align 1, !tbaa !72
  %11 = icmp ugt i8 %10, -32
  br i1 %11, label %47, label %12

12:                                               ; preds = %9
  %13 = udiv i8 %10, 45
  %14 = zext nneg i8 %13 to i32
  %15 = getelementptr inbounds %struct.lzma_options_lzma, ptr %7, i64 0, i32 5
  store i32 %14, ptr %15, align 4, !tbaa !439
  %16 = mul i8 %13, -45
  %17 = add i8 %16, %10
  %18 = zext i8 %17 to i32
  %19 = udiv i32 %18, 9
  %20 = getelementptr inbounds %struct.lzma_options_lzma, ptr %7, i64 0, i32 4
  store i32 %19, ptr %20, align 8, !tbaa !441
  %21 = mul nsw i32 %19, -9
  %22 = add nsw i32 %21, %18
  %23 = getelementptr inbounds %struct.lzma_options_lzma, ptr %7, i64 0, i32 3
  store i32 %22, ptr %23, align 4, !tbaa !440
  %24 = add nsw i32 %22, %19
  %25 = icmp ugt i32 %24, 4
  br i1 %25, label %47, label %26

26:                                               ; preds = %12
  %27 = getelementptr inbounds i8, ptr %2, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !72
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds i8, ptr %2, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !72
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = or disjoint i32 %33, %29
  %35 = getelementptr inbounds i8, ptr %2, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !72
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 16
  %39 = or disjoint i32 %34, %38
  %40 = getelementptr inbounds i8, ptr %2, i64 4
  %41 = load i8, ptr %40, align 1, !tbaa !72
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 %42, 24
  %44 = or disjoint i32 %39, %43
  store i32 %44, ptr %7, align 8, !tbaa !49
  %45 = getelementptr inbounds %struct.lzma_options_lzma, ptr %7, i64 0, i32 1
  store ptr null, ptr %45, align 8, !tbaa !55
  %46 = getelementptr inbounds %struct.lzma_options_lzma, ptr %7, i64 0, i32 2
  store i32 0, ptr %46, align 8, !tbaa !57
  store ptr %7, ptr %0, align 8, !tbaa !79
  br label %48

47:                                               ; preds = %9, %12
  tail call void @lzma_free(ptr noundef nonnull %7, ptr noundef %1) #9
  br label %48

48:                                               ; preds = %26, %47, %6, %4
  %49 = phi i32 [ 8, %4 ], [ 8, %47 ], [ 0, %26 ], [ 5, %6 ]
  ret i32 %49
}

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @lzma_lzma_decoder_create, ptr @lzma_alloc, i64 2}
!36 = !{ptr @lzma_lzma_decoder_memusage_nocheck, ptr @lzma_lz_decoder_memusage, i64 2}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 2}
!39 = !{!40, !41, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"branch_weights", i32 2, i32 0}
!45 = !{!"branch_weights", i32 0, i32 2}
!46 = !{!40, !41, i64 8}
!47 = !{!40, !41, i64 16}
!48 = !{!40, !41, i64 24}
!49 = !{!50, !51, i64 0}
!50 = !{!"", !51, i64 0, !41, i64 8, !51, i64 16, !51, i64 20, !51, i64 24, !51, i64 28, !51, i64 32, !51, i64 36, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !51, i64 56, !51, i64 60, !51, i64 64, !51, i64 68, !51, i64 72, !51, i64 76, !51, i64 80, !51, i64 84, !51, i64 88, !51, i64 92, !41, i64 96, !41, i64 104}
!51 = !{!"int", !42, i64 0}
!52 = !{!53, !54, i64 0}
!53 = !{!"", !54, i64 0, !41, i64 8, !54, i64 16}
!54 = !{!"long", !42, i64 0}
!55 = !{!50, !41, i64 8}
!56 = !{!53, !41, i64 8}
!57 = !{!50, !51, i64 16}
!58 = !{!53, !54, i64 16}
!59 = !{!"function_entry_count", i64 44106}
!60 = !{!"liblzma/lzma/lzma_decoder.c;lzma_decode"}
!61 = !{!62}
!62 = distinct !{!62, !63, !"rc_read_init: argument 0"}
!63 = distinct !{!63, !"rc_read_init"}
!64 = !{!65}
!65 = distinct !{!65, !63, !"rc_read_init: argument 1"}
!66 = !{!"branch_weights", i32 40496, i32 3610}
!67 = !{!54, !54, i64 0}
!68 = !{!"branch_weights", i32 0, i32 3610}
!69 = !{!70, !51, i64 4}
!70 = !{!"", !51, i64 0, !51, i64 4, !51, i64 8}
!71 = !{!62, !65}
!72 = !{!42, !42, i64 0}
!73 = !{!70, !51, i64 8}
!74 = !{!"branch_weights", i32 3610, i32 0}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !{i64 0, i64 8, !79, i64 8, i64 8, !67, i64 16, i64 8, !67, i64 24, i64 8, !67, i64 32, i64 8, !67, i64 40, i64 1, !80}
!79 = !{!41, !41, i64 0}
!80 = !{!81, !81, i64 0}
!81 = !{!"_Bool", !42, i64 0}
!82 = !{i64 0, i64 8, !67, i64 8, i64 8, !67, i64 16, i64 8, !67, i64 24, i64 8, !67, i64 32, i64 1, !80}
!83 = !{i64 0, i64 8, !67, i64 8, i64 8, !67, i64 16, i64 8, !67, i64 24, i64 1, !80}
!84 = !{i64 0, i64 8, !67, i64 8, i64 8, !67, i64 16, i64 1, !80}
!85 = !{i64 0, i64 8, !67, i64 8, i64 1, !80}
!86 = !{i64 0, i64 4, !87, i64 4, i64 4, !87, i64 8, i64 4, !87}
!87 = !{!51, !51, i64 0}
!88 = !{i64 0, i64 4, !87, i64 4, i64 4, !87}
!89 = !{!90, !51, i64 28280}
!90 = !{!"lzma_coder_s", !42, i64 0, !42, i64 24576, !42, i64 24960, !42, i64 24984, !42, i64 25008, !42, i64 25032, !42, i64 25056, !42, i64 25440, !42, i64 25952, !42, i64 26180, !91, i64 26212, !91, i64 27240, !70, i64 28268, !51, i64 28280, !51, i64 28284, !51, i64 28288, !51, i64 28292, !51, i64 28296, !51, i64 28300, !51, i64 28304, !51, i64 28308, !54, i64 28312, !51, i64 28320, !41, i64 28328, !51, i64 28336, !51, i64 28340, !51, i64 28344, !51, i64 28348}
!91 = !{!"", !92, i64 0, !92, i64 2, !42, i64 4, !42, i64 260, !42, i64 516}
!92 = !{!"short", !42, i64 0}
!93 = !{!90, !51, i64 28284}
!94 = !{!90, !51, i64 28288}
!95 = !{!90, !51, i64 28292}
!96 = !{!90, !51, i64 28296}
!97 = !{!90, !51, i64 28300}
!98 = !{!90, !41, i64 28328}
!99 = !{!90, !51, i64 28336}
!100 = !{!90, !51, i64 28340}
!101 = !{!90, !51, i64 28344}
!102 = !{!90, !51, i64 28348}
!103 = !{!90, !51, i64 28308}
!104 = !{!90, !51, i64 28304}
!105 = !{!90, !54, i64 28312}
!106 = !{!"branch_weights", i32 44106, i32 0}
!107 = !{!"branch_weights", i32 773, i32 43333}
!108 = !{!90, !51, i64 28320}
!109 = !{!"branch_weights", i32 0, i32 1, i32 4463, i32 63, i32 11, i32 54, i32 28, i32 41, i32 51, i32 56, i32 43, i32 109, i32 6, i32 43, i32 22, i32 30, i32 51, i32 52, i32 49, i32 0, i32 105, i32 30, i32 86, i32 83, i32 88, i32 89, i32 32, i32 52, i32 68, i32 37, i32 4, i32 16, i32 22, i32 30, i32 39, i32 34, i32 26, i32 150, i32 151, i32 105, i32 157, i32 134, i32 137, i32 143, i32 1618, i32 147, i32 160, i32 160, i32 189, i32 0, i32 50, i32 15, i32 0, i32 14, i32 7, i32 18, i32 25, i32 11, i32 14, i32 24, i32 4, i32 7, i32 3, i32 8, i32 2, i32 4, i32 3, i32 5, i32 5, i32 10, i32 9, i32 34603}
!110 = !{!"branch_weights", i32 27928703, i32 0}
!111 = !{!"branch_weights", i32 4102, i32 27924601}
!112 = !{!"loop_header_weight", i64 27928703}
!113 = !{!"branch_weights", i32 2851280, i32 25073321}
!114 = !{!"branch_weights", i32 362, i32 2850918}
!115 = !{!92, !92, i64 0}
!116 = !{!"branch_weights", i32 10118620, i32 17805619}
!117 = !{!"branch_weights", i32 3, i32 10118617}
!118 = !{!"branch_weights", i32 4245570, i32 5873050}
!119 = !{!"branch_weights", i32 429867, i32 3815766}
!120 = !{!"loop_header_weight", i64 4245633}
!121 = !{!"branch_weights", i32 63, i32 429804}
!122 = !{!"branch_weights", i32 3483669, i32 761901}
!123 = !{!"branch_weights", i32 120757, i32 4124824}
!124 = !{!"loop_header_weight", i64 4245581}
!125 = !{!"branch_weights", i32 11, i32 120746}
!126 = !{!"branch_weights", i32 2567885, i32 1677685}
!127 = !{!"branch_weights", i32 349801, i32 3895823}
!128 = !{!"loop_header_weight", i64 4245624}
!129 = !{!"branch_weights", i32 54, i32 349747}
!130 = !{!"branch_weights", i32 1212214, i32 3033356}
!131 = !{!"branch_weights", i32 236350, i32 4009248}
!132 = !{!"loop_header_weight", i64 4245598}
!133 = !{!"branch_weights", i32 28, i32 236322}
!134 = !{!"branch_weights", i32 1938365, i32 2307205}
!135 = !{!"branch_weights", i32 347985, i32 3897626}
!136 = !{!"loop_header_weight", i64 4245611}
!137 = !{!"branch_weights", i32 41, i32 347944}
!138 = !{!"branch_weights", i32 2667472, i32 1578098}
!139 = !{!"branch_weights", i32 418681, i32 3826940}
!140 = !{!"loop_header_weight", i64 4245621}
!141 = !{!"branch_weights", i32 51, i32 418630}
!142 = !{!"branch_weights", i32 2382183, i32 1863387}
!143 = !{!"branch_weights", i32 454206, i32 3791420}
!144 = !{!"loop_header_weight", i64 4245626}
!145 = !{!"branch_weights", i32 56, i32 454150}
!146 = !{!"branch_weights", i32 2435738, i32 1809832}
!147 = !{!"branch_weights", i32 453229, i32 3792384}
!148 = !{!"loop_header_weight", i64 4245613}
!149 = !{!"branch_weights", i32 43, i32 453186}
!150 = !{!"branch_weights", i32 2199340, i32 2046230}
!151 = !{!"branch_weights", i32 5677947, i32 195103}
!152 = !{!"branch_weights", i32 829896, i32 5043263}
!153 = !{!"loop_header_weight", i64 5873159}
!154 = !{!"branch_weights", i32 109, i32 829787}
!155 = !{!"branch_weights", i32 5550135, i32 322915}
!156 = !{!"branch_weights", i32 18368, i32 5854688}
!157 = !{!"loop_header_weight", i64 5873056}
!158 = !{!"branch_weights", i32 6, i32 18362}
!159 = !{!"branch_weights", i32 3675556, i32 2197494}
!160 = !{!"branch_weights", i32 327716, i32 5545377}
!161 = !{!"loop_header_weight", i64 5873093}
!162 = !{!"branch_weights", i32 43, i32 327673}
!163 = !{!"branch_weights", i32 1821035, i32 4052015}
!164 = !{!"branch_weights", i32 186398, i32 5686674}
!165 = !{!"loop_header_weight", i64 5873072}
!166 = !{!"branch_weights", i32 22, i32 186376}
!167 = !{!"branch_weights", i32 2813699, i32 3059351}
!168 = !{!"branch_weights", i32 276606, i32 5596474}
!169 = !{!"loop_header_weight", i64 5873080}
!170 = !{!"branch_weights", i32 30, i32 276576}
!171 = !{!"branch_weights", i32 3955504, i32 1917546}
!172 = !{!"branch_weights", i32 394908, i32 5478193}
!173 = !{!"loop_header_weight", i64 5873101}
!174 = !{!"branch_weights", i32 51, i32 394857}
!175 = !{!"branch_weights", i32 3382122, i32 2490928}
!176 = !{!"branch_weights", i32 509190, i32 5363912}
!177 = !{!"loop_header_weight", i64 5873102}
!178 = !{!"branch_weights", i32 52, i32 509138}
!179 = !{!"branch_weights", i32 3207988, i32 2665062}
!180 = !{!"branch_weights", i32 511192, i32 5361907}
!181 = !{!"loop_header_weight", i64 5873099}
!182 = !{!"branch_weights", i32 49, i32 511143}
!183 = !{!"branch_weights", i32 2964571, i32 2908479}
!184 = !{!"branch_weights", i32 0, i32 10118620}
!185 = !{!"loop_header_weight", i64 10118620}
!186 = distinct !{!186, !77}
!187 = !{!"branch_weights", i32 935307, i32 16870417}
!188 = !{!"loop_header_weight", i64 17805724}
!189 = !{!"branch_weights", i32 105, i32 935202}
!190 = !{!"branch_weights", i32 12981442, i32 4824177}
!191 = !{!"branch_weights", i32 2418400, i32 10563042}
!192 = !{!"branch_weights", i32 286383, i32 12695089}
!193 = !{!"loop_header_weight", i64 12981472}
!194 = !{!"branch_weights", i32 30, i32 286353}
!195 = !{!90, !92, i64 26212}
!196 = !{!"branch_weights", i32 6108697, i32 6872745}
!197 = !{!"branch_weights", i32 755037, i32 5353746}
!198 = !{!"loop_header_weight", i64 6108783}
!199 = !{!"branch_weights", i32 86, i32 754951}
!200 = !{!"branch_weights", i32 2108587, i32 4000110}
!201 = !{!"branch_weights", i32 677916, i32 5430864}
!202 = !{!"loop_header_weight", i64 6108780}
!203 = !{!"branch_weights", i32 83, i32 677833}
!204 = !{!"branch_weights", i32 2387889, i32 3720808}
!205 = !{!"branch_weights", i32 667818, i32 5440967}
!206 = !{!"loop_header_weight", i64 6108785}
!207 = !{!"branch_weights", i32 88, i32 667730}
!208 = !{!"branch_weights", i32 2766124, i32 3342573}
!209 = !{!"branch_weights", i32 734979, i32 6137855}
!210 = !{!"loop_header_weight", i64 6872834}
!211 = !{!"branch_weights", i32 89, i32 734890}
!212 = !{!90, !92, i64 26214}
!213 = !{!"branch_weights", i32 4233102, i32 2639643}
!214 = !{!"branch_weights", i32 303437, i32 3929697}
!215 = !{!"loop_header_weight", i64 4233134}
!216 = !{!"branch_weights", i32 32, i32 303405}
!217 = !{!"branch_weights", i32 2575034, i32 1658068}
!218 = !{!"branch_weights", i32 474099, i32 3759055}
!219 = !{!"loop_header_weight", i64 4233154}
!220 = !{!"branch_weights", i32 52, i32 474047}
!221 = !{!"branch_weights", i32 2393692, i32 1839410}
!222 = !{!"branch_weights", i32 487437, i32 3745733}
!223 = !{!"loop_header_weight", i64 4233170}
!224 = !{!"branch_weights", i32 68, i32 487369}
!225 = !{!"branch_weights", i32 1324303, i32 2908799}
!226 = !{!"branch_weights", i32 371169, i32 2268511}
!227 = !{!"loop_header_weight", i64 2639680}
!228 = !{!"branch_weights", i32 37, i32 371132}
!229 = !{!"branch_weights", i32 2555313, i32 84330}
!230 = !{!"branch_weights", i32 55005, i32 2584642}
!231 = !{!"loop_header_weight", i64 2639647}
!232 = !{!"branch_weights", i32 4, i32 55001}
!233 = !{!"branch_weights", i32 2387993, i32 251650}
!234 = !{!"branch_weights", i32 109964, i32 2529695}
!235 = !{!"loop_header_weight", i64 2639659}
!236 = !{!"branch_weights", i32 16, i32 109948}
!237 = !{!"branch_weights", i32 2224357, i32 415286}
!238 = !{!"branch_weights", i32 163087, i32 2476578}
!239 = !{!"loop_header_weight", i64 2639665}
!240 = !{!"branch_weights", i32 22, i32 163065}
!241 = !{!"branch_weights", i32 1993506, i32 646137}
!242 = !{!"branch_weights", i32 222435, i32 2417238}
!243 = !{!"loop_header_weight", i64 2639673}
!244 = !{!"branch_weights", i32 30, i32 222405}
!245 = !{!"branch_weights", i32 1752574, i32 887069}
!246 = !{!"branch_weights", i32 260135, i32 2379547}
!247 = !{!"loop_header_weight", i64 2639682}
!248 = !{!"branch_weights", i32 39, i32 260096}
!249 = !{!"branch_weights", i32 1494216, i32 1145427}
!250 = !{!"branch_weights", i32 281522, i32 2358155}
!251 = !{!"loop_header_weight", i64 2639677}
!252 = !{!"branch_weights", i32 34, i32 281488}
!253 = !{!"branch_weights", i32 1342441, i32 1297202}
!254 = !{!"branch_weights", i32 268127, i32 2371542}
!255 = !{!"loop_header_weight", i64 2639669}
!256 = !{!"branch_weights", i32 26, i32 268101}
!257 = !{!"branch_weights", i32 1317068, i32 1322575}
!258 = !{!"branch_weights", i32 2108587, i32 10872855}
!259 = !{!"branch_weights", i32 1183401, i32 11798191}
!260 = !{!"loop_header_weight", i64 12981592}
!261 = !{!"branch_weights", i32 150, i32 1183251}
!262 = !{!"branch_weights", i32 7859188, i32 5122254}
!263 = !{!"branch_weights", i32 1268340, i32 11713253}
!264 = !{!"loop_header_weight", i64 12981593}
!265 = !{!"branch_weights", i32 151, i32 1268189}
!266 = !{!"branch_weights", i32 8388491, i32 4592951}
!267 = !{!"branch_weights", i32 891358, i32 12090189}
!268 = !{!"loop_header_weight", i64 12981547}
!269 = !{!"branch_weights", i32 105, i32 891253}
!270 = !{!"branch_weights", i32 5241554, i32 7739888}
!271 = !{!"branch_weights", i32 1181760, i32 11799839}
!272 = !{!"loop_header_weight", i64 12981599}
!273 = !{!"branch_weights", i32 157, i32 1181603}
!274 = !{!"branch_weights", i32 6274306, i32 6707136}
!275 = !{!"branch_weights", i32 1376042, i32 11605534}
!276 = !{!"loop_header_weight", i64 12981576}
!277 = !{!"branch_weights", i32 134, i32 1375908}
!278 = !{!"branch_weights", i32 6055064, i32 6926378}
!279 = !{!"branch_weights", i32 1384816, i32 11596763}
!280 = !{!"loop_header_weight", i64 12981579}
!281 = !{!"branch_weights", i32 137, i32 1384679}
!282 = !{!"branch_weights", i32 7417815, i32 5563627}
!283 = !{!"branch_weights", i32 54637, i32 12926805}
!284 = !{!"branch_weights", i32 2516555, i32 10410250}
!285 = !{!"branch_weights", i32 0, i32 841286, i32 906285, i32 484660, i32 210687, i32 73780}
!286 = !{!"loop_header_weight", i64 2516698}
!287 = !{!"branch_weights", i32 97266, i32 744020}
!288 = !{!"branch_weights", i32 14, i32 97252}
!289 = !{!"branch_weights", i32 421394, i32 419878}
!290 = !{!"branch_weights", i32 205433, i32 1542124}
!291 = !{!"branch_weights", i32 23, i32 205410}
!292 = !{!"branch_weights", i32 869247, i32 878287}
!293 = !{!"branch_weights", i32 274368, i32 1957826}
!294 = !{!"branch_weights", i32 26, i32 274342}
!295 = !{!"branch_weights", i32 1124755, i32 1107413}
!296 = !{!"branch_weights", i32 302810, i32 2140045}
!297 = !{!"branch_weights", i32 37, i32 302773}
!298 = !{!"branch_weights", i32 1256347, i32 1186471}
!299 = !{!"branch_weights", i32 311047, i32 2205551}
!300 = !{!"branch_weights", i32 43, i32 311004}
!301 = !{!"branch_weights", i32 1329917, i32 1186638}
!302 = !{!"loop_header_weight", i64 10411868}
!303 = !{!"branch_weights", i32 13030082, i32 92598543}
!304 = !{!"branch_weights", i32 1618, i32 13028464}
!305 = !{!"branch_weights", i32 10410250, i32 95216757}
!306 = distinct !{!306, !76, !77}
!307 = !{!"branch_weights", i32 1300805, i32 9109592}
!308 = !{!"loop_header_weight", i64 10410397}
!309 = !{!"branch_weights", i32 147, i32 1300658}
!310 = !{!"branch_weights", i32 5089662, i32 5320588}
!311 = !{!"branch_weights", i32 1270818, i32 9139592}
!312 = !{!"loop_header_weight", i64 10410410}
!313 = !{!"branch_weights", i32 160, i32 1270658}
!314 = !{!"branch_weights", i32 5119887, i32 5290363}
!315 = !{!"branch_weights", i32 1270060, i32 9140350}
!316 = !{!"branch_weights", i32 160, i32 1269900}
!317 = !{!"branch_weights", i32 5158150, i32 5252100}
!318 = !{!"branch_weights", i32 1300610, i32 9109829}
!319 = !{!"loop_header_weight", i64 10410439}
!320 = !{!"branch_weights", i32 189, i32 1300421}
!321 = !{!"branch_weights", i32 5176958, i32 5233292}
!322 = !{!"branch_weights", i32 0, i32 10410250}
!323 = !{!"branch_weights", i32 12981442, i32 0}
!324 = !{!"branch_weights", i32 0, i32 4824177}
!325 = !{!"branch_weights", i32 386525, i32 4437702}
!326 = !{!"loop_header_weight", i64 4824227}
!327 = !{!"branch_weights", i32 50, i32 386475}
!328 = !{!"branch_weights", i32 3327688, i32 1496489}
!329 = !{!"branch_weights", i32 63267, i32 3264436}
!330 = !{!"loop_header_weight", i64 3327703}
!331 = !{!"branch_weights", i32 15, i32 63252}
!332 = !{!"branch_weights", i32 555030, i32 2772658}
!333 = !{!"branch_weights", i32 552115, i32 2915}
!334 = !{!"branch_weights", i32 0, i32 555030}
!335 = !{!"loop_header_weight", i64 555030}
!336 = !{!"branch_weights", i32 548046, i32 6984}
!337 = !{!"branch_weights", i32 93452, i32 1403051}
!338 = !{!"loop_header_weight", i64 1496503}
!339 = !{!"branch_weights", i32 14, i32 93438}
!340 = !{!"branch_weights", i32 1288790, i32 207699}
!341 = !{!"branch_weights", i32 42484, i32 165222}
!342 = !{!"loop_header_weight", i64 207706}
!343 = !{!"branch_weights", i32 7, i32 42477}
!344 = !{!"branch_weights", i32 138412, i32 69287}
!345 = !{!"branch_weights", i32 2902538, i32 1366609}
!346 = !{!"branch_weights", i32 112072, i32 4157093}
!347 = !{!"loop_header_weight", i64 4269165}
!348 = !{!"branch_weights", i32 18, i32 112054}
!349 = !{!90, !92, i64 27240}
!350 = !{!"branch_weights", i32 2209902, i32 2059245}
!351 = !{!"branch_weights", i32 202386, i32 2007541}
!352 = !{!"loop_header_weight", i64 2209927}
!353 = !{!"branch_weights", i32 25, i32 202361}
!354 = !{!"branch_weights", i32 923924, i32 1285978}
!355 = !{!"branch_weights", i32 114844, i32 2095069}
!356 = !{!"loop_header_weight", i64 2209913}
!357 = !{!"branch_weights", i32 11, i32 114833}
!358 = !{!"branch_weights", i32 656392, i32 1553510}
!359 = !{!"branch_weights", i32 98751, i32 2111165}
!360 = !{!"loop_header_weight", i64 2209916}
!361 = !{!"branch_weights", i32 14, i32 98737}
!362 = !{!"branch_weights", i32 803730, i32 1406172}
!363 = !{!"branch_weights", i32 204161, i32 1855108}
!364 = !{!"loop_header_weight", i64 2059269}
!365 = !{!"branch_weights", i32 24, i32 204137}
!366 = !{!90, !92, i64 27242}
!367 = !{!"branch_weights", i32 672595, i32 1386650}
!368 = !{!"branch_weights", i32 63981, i32 608618}
!369 = !{!"loop_header_weight", i64 672599}
!370 = !{!"branch_weights", i32 4, i32 63977}
!371 = !{!"branch_weights", i32 432911, i32 239684}
!372 = !{!"branch_weights", i32 38210, i32 634392}
!373 = !{!"loop_header_weight", i64 672602}
!374 = !{!"branch_weights", i32 7, i32 38203}
!375 = !{!"branch_weights", i32 249061, i32 423534}
!376 = !{!"branch_weights", i32 40358, i32 632240}
!377 = !{!"loop_header_weight", i64 672598}
!378 = !{!"branch_weights", i32 3, i32 40355}
!379 = !{!"branch_weights", i32 355207, i32 317388}
!380 = !{!"branch_weights", i32 54283, i32 1332375}
!381 = !{!"loop_header_weight", i64 1386658}
!382 = !{!"branch_weights", i32 8, i32 54275}
!383 = !{!"branch_weights", i32 1285670, i32 100980}
!384 = !{!"branch_weights", i32 22773, i32 1363879}
!385 = !{!"loop_header_weight", i64 1386652}
!386 = !{!"branch_weights", i32 2, i32 22771}
!387 = !{!"branch_weights", i32 1255961, i32 130689}
!388 = !{!"branch_weights", i32 26227, i32 1360427}
!389 = !{!"loop_header_weight", i64 1386654}
!390 = !{!"branch_weights", i32 4, i32 26223}
!391 = !{!"branch_weights", i32 1195430, i32 191220}
!392 = !{!"branch_weights", i32 39304, i32 1347349}
!393 = !{!"loop_header_weight", i64 1386653}
!394 = !{!"branch_weights", i32 3, i32 39301}
!395 = !{!"branch_weights", i32 1099761, i32 286889}
!396 = !{!"branch_weights", i32 57515, i32 1329140}
!397 = !{!"loop_header_weight", i64 1386655}
!398 = !{!"branch_weights", i32 5, i32 57510}
!399 = !{!"branch_weights", i32 539352, i32 847298}
!400 = !{!"branch_weights", i32 66095, i32 1320560}
!401 = !{!"branch_weights", i32 5, i32 66090}
!402 = !{!"branch_weights", i32 609319, i32 777331}
!403 = !{!"branch_weights", i32 80064, i32 1306596}
!404 = !{!"loop_header_weight", i64 1386660}
!405 = !{!"branch_weights", i32 10, i32 80054}
!406 = !{!"branch_weights", i32 555219, i32 831431}
!407 = !{!"branch_weights", i32 79988, i32 1306671}
!408 = !{!"loop_header_weight", i64 1386659}
!409 = !{!"branch_weights", i32 9, i32 79979}
!410 = !{!"branch_weights", i32 514243, i32 872407}
!411 = !{!"branch_weights", i32 34603, i32 17250589}
!412 = !{!"branch_weights", i32 60539, i32 17224653}
!413 = !{!"loop_header_weight", i64 17285192}
!414 = !{!"branch_weights", i32 1673629, i32 0}
!415 = !{!"branch_weights", i32 60539, i32 1613090}
!416 = distinct !{!416, !76, !77}
!417 = !{!"branch_weights", i32 16239918, i32 984735}
!418 = !{!"VP", i32 1, i64 16239918, i64 9, i64 5949676, i64 17, i64 2672543, i64 4, i64 1273749, i64 33, i64 1044926}
!419 = !{!"branch_weights", i32 6, i32 984729}
!420 = !{!"VP", i32 1, i64 6, i64 1, i64 2, i64 17, i64 1, i64 2, i64 1, i64 5, i64 1}
!421 = !{!"VP", i32 1, i64 6, i64 5, i64 1, i64 6, i64 1, i64 3, i64 1, i64 33, i64 1}
!422 = !{!"VP", i32 1, i64 984729, i64 9, i64 480675, i64 17, i64 225902, i64 7, i64 59541, i64 8, i64 45191}
!423 = !{!"branch_weights", i32 17250589, i32 34603}
!424 = !{!"branch_weights", i32 423, i32 3679}
!425 = !{!"branch_weights", i32 1, i32 422}
!426 = !{!427, !54, i64 8}
!427 = !{!"", !41, i64 0, !54, i64 8, !54, i64 16, !54, i64 24, !54, i64 32, !81, i64 40}
!428 = !{!427, !54, i64 16}
!429 = !{i64 0, i64 4, !87}
!430 = !{!"branch_weights", i32 0, i32 44106}
!431 = !{!"branch_weights", i32 722, i32 43384}
!432 = !{!"branch_weights", i32 0, i32 722}
!433 = !{!"branch_weights", i32 722, i32 0}
!434 = !{!90, !51, i64 28268}
!435 = !{!90, !51, i64 28272}
!436 = !{!90, !51, i64 28276}
!437 = !{!"function_entry_count", i64 14}
!438 = !{!"liblzma/lzma/lzma_decoder.c;lzma_decoder_reset"}
!439 = !{!50, !51, i64 28}
!440 = !{!50, !51, i64 20}
!441 = !{!50, !51, i64 24}
!442 = !{!"branch_weights", i32 98, i32 14}
!443 = distinct !{!443, !76, !77}
!444 = !{!"branch_weights", i32 112, i32 85904}
!445 = distinct !{!445, !76, !77}
!446 = !{!"branch_weights", i32 14, i32 154}
!447 = distinct !{!447, !76, !77}
!448 = !{!"branch_weights", i32 168, i32 504}
!449 = distinct !{!449, !76, !77}
!450 = !{!"branch_weights", i32 14, i32 42}
!451 = distinct !{!451, !76, !77}
!452 = !{!"branch_weights", i32 56, i32 3528}
!453 = distinct !{!453, !76, !77}
!454 = !{!"branch_weights", i32 14, i32 1582}
!455 = distinct !{!455, !76, !77}
!456 = !{!"branch_weights", i32 14, i32 210}
!457 = distinct !{!457, !76, !77}
!458 = !{!"branch_weights", i32 56, i32 392}
!459 = distinct !{!459, !76, !77}
!460 = distinct !{!460, !76, !77}
!461 = distinct !{!461, !76, !77}
!462 = !{!"branch_weights", i32 42, i32 14}
!463 = distinct !{!463, !76, !77}
!464 = distinct !{!464, !76, !77}
!465 = !{!"branch_weights", i32 14, i32 3570}
!466 = distinct !{!466, !76, !77}
!467 = distinct !{!467, !76, !77}
!468 = !{!"function_entry_count", i64 722}
!469 = !{!"liblzma/lzma/lzma_decoder.c;lzma_decoder_uncompressed"}
!470 = !{!"function_entry_count", i64 0}
