; ModuleID = 'liblzma/lzma/lzma_decoder.c'
source_filename = "liblzma/lzma/lzma_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_lz_decoder = type { ptr, ptr, ptr, ptr, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_lz_options = type { i64, ptr, i64 }
%struct.lzma_dict = type { ptr, i64, i64, i64, i64, i8 }
%struct.lzma_coder_s = type { [16 x [768 x i16]], [12 x [16 x i16]], [12 x i16], [12 x i16], [12 x i16], [12 x i16], [12 x [16 x i16]], [4 x [64 x i16]], [114 x i16], [16 x i16], %struct.lzma_length_decoder, %struct.lzma_length_decoder, %struct.lzma_range_decoder, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, ptr, i32, i32, i32, i32 }
%struct.lzma_length_decoder = type { i16, i16, [16 x [8 x i16]], [16 x [8 x i16]], [256 x i16] }
%struct.lzma_range_decoder = type { i32, i32, i32 }

@lzma_decode.next_state = internal unnamed_addr constant [12 x i32] [i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 4, i32 5], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_lzma_decoder_create(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %0, align 8, !tbaa !5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = tail call ptr @lzma_alloc(i64 noundef 28352, ptr noundef %1) #12
  store ptr %8, ptr %0, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %24, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 1
  store ptr @lzma_decode, ptr %11, align 8, !tbaa !10
  %12 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 2
  store ptr @lzma_decoder_reset, ptr %12, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.lzma_lz_decoder, ptr %0, i64 0, i32 3
  store ptr @lzma_decoder_uncompressed, ptr %13, align 8, !tbaa !12
  br label %14

14:                                               ; preds = %10, %4
  %15 = load i32, ptr %2, align 8, !tbaa !13
  %16 = zext i32 %15 to i64
  store i64 %16, ptr %3, align 8, !tbaa !16
  %17 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !19
  %19 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 1
  store ptr %18, ptr %19, align 8, !tbaa !20
  %20 = getelementptr inbounds %struct.lzma_options_lzma, ptr %2, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !21
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.lzma_lz_options, ptr %3, i64 0, i32 2
  store i64 %22, ptr %23, align 8, !tbaa !22
  br label %24

24:                                               ; preds = %7, %14
  %25 = phi i32 [ 0, %14 ], [ 5, %7 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @lzma_decode(ptr noundef %0, ptr noalias nocapture noundef %1, ptr noalias noundef readonly %2, ptr noalias nocapture noundef %3, i64 noundef %4) #2 {
  %6 = alloca %struct.lzma_dict, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  %9 = tail call fastcc zeroext i1 @rc_read_init(ptr noundef nonnull %8, ptr noundef %2, ptr noundef %3, i64 noundef %4) #13
  br i1 %9, label %10, label %3846

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !tbaa.struct !23
  %11 = getelementptr inbounds %struct.lzma_dict, ptr %6, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !28
  %13 = load i32, ptr %8, align 4, !tbaa.struct !30
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa.struct !32
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa.struct !33
  %18 = load i64, ptr %3, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13
  %20 = load i32, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 14
  %22 = load i32, ptr %21, align 4, !tbaa !39
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 15
  %24 = load i32, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 16
  %26 = load i32, ptr %25, align 4, !tbaa !41
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 17
  %28 = load i32, ptr %27, align 8, !tbaa !42
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18
  %30 = load i32, ptr %29, align 4, !tbaa !43
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 24
  %34 = load i32, ptr %33, align 8, !tbaa !45
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 25
  %36 = load i32, ptr %35, align 4, !tbaa !46
  %37 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 26
  %38 = load i32, ptr %37, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 27
  %40 = load i32, ptr %39, align 4, !tbaa !48
  store i32 %40, ptr %7, align 4, !tbaa !31
  %41 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20
  %42 = load i32, ptr %41, align 4, !tbaa !49
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 19
  %44 = load i32, ptr %43, align 8, !tbaa !50
  %45 = trunc i64 %12 to i32
  %46 = and i32 %30, %45
  %47 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 21
  %48 = load i64, ptr %47, align 8, !tbaa !51
  %49 = icmp ne i64 %48, -1
  br i1 %49, label %50, label %57

50:                                               ; preds = %10
  %51 = getelementptr inbounds %struct.lzma_dict, ptr %6, i64 0, i32 3
  %52 = load i64, ptr %51, align 8, !tbaa !52
  %53 = sub i64 %52, %12
  %54 = icmp ult i64 %48, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = add i64 %48, %12
  store i64 %56, ptr %51, align 8, !tbaa !52
  br label %57

57:                                               ; preds = %55, %50, %10
  %58 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22
  %59 = load i32, ptr %58, align 8, !tbaa !53
  switch i32 %59, label %3781 [
    i32 0, label %76
    i32 1, label %76
    i32 2, label %137
    i32 3, label %185
    i32 4, label %233
    i32 5, label %281
    i32 6, label %329
    i32 7, label %377
    i32 8, label %425
    i32 9, label %473
    i32 10, label %525
    i32 11, label %585
    i32 12, label %645
    i32 13, label %705
    i32 14, label %765
    i32 15, label %825
    i32 16, label %885
    i32 17, label %945
    i32 18, label %1014
    i32 19, label %1035
    i32 20, label %1079
    i32 21, label %1120
    i32 22, label %1170
    i32 23, label %1220
    i32 24, label %1281
    i32 25, label %1322
    i32 26, label %1372
    i32 27, label %1422
    i32 28, label %1483
    i32 29, label %1531
    i32 30, label %1579
    i32 31, label %1627
    i32 32, label %1675
    i32 33, label %1723
    i32 34, label %1771
    i32 35, label %1819
    i32 36, label %1890
    i32 37, label %1938
    i32 38, label %1986
    i32 39, label %2034
    i32 40, label %2082
    i32 41, label %2130
    i32 42, label %2200
    i32 43, label %2454
    i32 44, label %2501
    i32 45, label %2550
    i32 46, label %2599
    i32 47, label %2648
    i32 48, label %2704
    i32 49, label %2750
    i32 51, label %2792
    i32 50, label %2837
    i32 52, label %2863
    i32 53, label %2910
    i32 54, label %2972
    i32 55, label %3013
    i32 56, label %3063
    i32 57, label %3113
    i32 58, label %3174
    i32 59, label %3215
    i32 60, label %3265
    i32 61, label %3315
    i32 62, label %3376
    i32 63, label %3424
    i32 64, label %3472
    i32 65, label %3520
    i32 66, label %3568
    i32 67, label %3616
    i32 68, label %3664
    i32 69, label %3712
    i32 70, label %3766
  ]

60:                                               ; preds = %3766, %2837, %1014
  %61 = phi i32 [ %3767, %3766 ], [ %1015, %1014 ], [ %2838, %2837 ]
  %62 = phi i32 [ %3768, %3766 ], [ %1016, %1014 ], [ %2839, %2837 ]
  %63 = phi i32 [ %3769, %3766 ], [ %1017, %1014 ], [ %2840, %2837 ]
  %64 = phi i32 [ %3770, %3766 ], [ %1018, %1014 ], [ %2841, %2837 ]
  %65 = phi i32 [ %3771, %3766 ], [ %1019, %1014 ], [ %2842, %2837 ]
  %66 = phi ptr [ %3772, %3766 ], [ %1020, %1014 ], [ %2843, %2837 ]
  %67 = phi i32 [ %3773, %3766 ], [ %1021, %1014 ], [ %2844, %2837 ]
  %68 = phi i32 [ %3774, %3766 ], [ %1022, %1014 ], [ %2845, %2837 ]
  %69 = phi i32 [ %3775, %3766 ], [ %1023, %1014 ], [ %2846, %2837 ]
  %70 = phi i64 [ %3776, %3766 ], [ %1024, %1014 ], [ %2847, %2837 ]
  %71 = phi i32 [ %3777, %3766 ], [ %1025, %1014 ], [ %2848, %2837 ]
  %72 = phi i32 [ %3778, %3766 ], [ %1026, %1014 ], [ %2849, %2837 ]
  %73 = load i64, ptr %11, align 8, !tbaa !28
  %74 = trunc i64 %73 to i32
  %75 = and i32 %30, %74
  br label %76

76:                                               ; preds = %57, %57, %60
  %77 = phi i64 [ %73, %60 ], [ %12, %57 ], [ %12, %57 ]
  %78 = phi i32 [ %61, %60 ], [ %22, %57 ], [ %22, %57 ]
  %79 = phi i32 [ %62, %60 ], [ %24, %57 ], [ %24, %57 ]
  %80 = phi i32 [ %63, %60 ], [ %26, %57 ], [ %26, %57 ]
  %81 = phi i32 [ %64, %60 ], [ %28, %57 ], [ %28, %57 ]
  %82 = phi i32 [ %65, %60 ], [ %20, %57 ], [ %20, %57 ]
  %83 = phi ptr [ %66, %60 ], [ %32, %57 ], [ %32, %57 ]
  %84 = phi i32 [ %67, %60 ], [ %34, %57 ], [ %34, %57 ]
  %85 = phi i32 [ %68, %60 ], [ %36, %57 ], [ %36, %57 ]
  %86 = phi i32 [ %69, %60 ], [ %38, %57 ], [ %38, %57 ]
  %87 = phi i64 [ %70, %60 ], [ %18, %57 ], [ %18, %57 ]
  %88 = phi i32 [ %75, %60 ], [ %46, %57 ], [ %46, %57 ]
  %89 = phi i32 [ %71, %60 ], [ %13, %57 ], [ %13, %57 ]
  %90 = phi i32 [ %72, %60 ], [ %15, %57 ], [ %15, %57 ]
  %91 = getelementptr inbounds %struct.lzma_dict, ptr %6, i64 0, i32 3
  %92 = load i64, ptr %91, align 8
  %93 = icmp eq i64 %77, %92
  %94 = select i1 %49, i1 %93, i1 false
  br i1 %94, label %3781, label %95

95:                                               ; preds = %76
  %96 = icmp ult i32 %89, 16777216
  br i1 %96, label %97, label %108

97:                                               ; preds = %95
  %98 = icmp eq i64 %87, %4
  br i1 %98, label %99, label %100

99:                                               ; preds = %97
  store i32 1, ptr %58, align 8, !tbaa !53
  br label %3810

100:                                              ; preds = %97
  %101 = shl nuw i32 %89, 8
  %102 = shl i32 %90, 8
  %103 = add i64 %87, 1
  %104 = getelementptr inbounds i8, ptr %2, i64 %87
  %105 = load i8, ptr %104, align 1, !tbaa !54
  %106 = zext i8 %105 to i32
  %107 = or disjoint i32 %102, %106
  br label %108

108:                                              ; preds = %100, %95
  %109 = phi i64 [ %103, %100 ], [ %87, %95 ]
  %110 = phi i32 [ %101, %100 ], [ %89, %95 ]
  %111 = phi i32 [ %107, %100 ], [ %90, %95 ]
  %112 = lshr i32 %110, 11
  %113 = zext i32 %82 to i64
  %114 = zext i32 %88 to i64
  %115 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i64 %113, i64 %114
  %116 = load i16, ptr %115, align 2, !tbaa !55
  %117 = zext i16 %116 to i32
  %118 = mul i32 %112, %117
  %119 = icmp ult i32 %111, %118
  br i1 %119, label %120, label %1030

120:                                              ; preds = %108
  %121 = sub nsw i32 2048, %117
  %122 = lshr i32 %121, 5
  %123 = trunc i32 %122 to i16
  %124 = add i16 %116, %123
  store i16 %124, ptr %115, align 2, !tbaa !55
  %125 = zext i32 %42 to i64
  %126 = and i64 %77, %125
  %127 = zext nneg i32 %44 to i64
  %128 = shl i64 %126, %127
  %129 = call fastcc zeroext i8 @dict_get(ptr noundef nonnull %6, i32 noundef 0) #13
  %130 = zext i8 %129 to i32
  %131 = sub i32 8, %44
  %132 = lshr i32 %130, %131
  %133 = zext nneg i32 %132 to i64
  %134 = add i64 %128, %133
  %135 = getelementptr inbounds [16 x [768 x i16]], ptr %0, i64 0, i64 %134
  %136 = icmp ult i32 %82, 7
  br i1 %136, label %137, label %521

137:                                              ; preds = %120, %57
  %138 = phi i32 [ %78, %120 ], [ %22, %57 ]
  %139 = phi i32 [ %79, %120 ], [ %24, %57 ]
  %140 = phi i32 [ %80, %120 ], [ %26, %57 ]
  %141 = phi i32 [ %81, %120 ], [ %28, %57 ]
  %142 = phi i32 [ %82, %120 ], [ %20, %57 ]
  %143 = phi ptr [ %135, %120 ], [ %32, %57 ]
  %144 = phi i32 [ 1, %120 ], [ %34, %57 ]
  %145 = phi i32 [ %85, %120 ], [ %36, %57 ]
  %146 = phi i32 [ %86, %120 ], [ %38, %57 ]
  %147 = phi i64 [ %109, %120 ], [ %18, %57 ]
  %148 = phi i32 [ %118, %120 ], [ %13, %57 ]
  %149 = phi i32 [ %111, %120 ], [ %15, %57 ]
  %150 = icmp ult i32 %148, 16777216
  br i1 %150, label %151, label %162

151:                                              ; preds = %137
  %152 = icmp eq i64 %147, %4
  br i1 %152, label %153, label %154

153:                                              ; preds = %151
  store i32 2, ptr %58, align 8, !tbaa !53
  br label %3810

154:                                              ; preds = %151
  %155 = shl nuw i32 %148, 8
  %156 = shl i32 %149, 8
  %157 = add i64 %147, 1
  %158 = getelementptr inbounds i8, ptr %2, i64 %147
  %159 = load i8, ptr %158, align 1, !tbaa !54
  %160 = zext i8 %159 to i32
  %161 = or disjoint i32 %156, %160
  br label %162

162:                                              ; preds = %154, %137
  %163 = phi i64 [ %157, %154 ], [ %147, %137 ]
  %164 = phi i32 [ %155, %154 ], [ %148, %137 ]
  %165 = phi i32 [ %161, %154 ], [ %149, %137 ]
  %166 = lshr i32 %164, 11
  %167 = zext i32 %144 to i64
  %168 = getelementptr inbounds i16, ptr %143, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !55
  %170 = zext i16 %169 to i32
  %171 = mul i32 %166, %170
  %172 = icmp ult i32 %165, %171
  %173 = shl i32 %144, 1
  br i1 %172, label %174, label %179

174:                                              ; preds = %162
  %175 = sub nsw i32 2048, %170
  %176 = lshr i32 %175, 5
  %177 = trunc i32 %176 to i16
  %178 = add i16 %169, %177
  store i16 %178, ptr %168, align 2, !tbaa !55
  br label %185

179:                                              ; preds = %162
  %180 = sub i32 %164, %171
  %181 = sub i32 %165, %171
  %182 = lshr i16 %169, 5
  %183 = sub i16 %169, %182
  store i16 %183, ptr %168, align 2, !tbaa !55
  %184 = or disjoint i32 %173, 1
  br label %185

185:                                              ; preds = %174, %179, %57
  %186 = phi i32 [ %138, %174 ], [ %138, %179 ], [ %22, %57 ]
  %187 = phi i32 [ %139, %174 ], [ %139, %179 ], [ %24, %57 ]
  %188 = phi i32 [ %140, %174 ], [ %140, %179 ], [ %26, %57 ]
  %189 = phi i32 [ %141, %174 ], [ %141, %179 ], [ %28, %57 ]
  %190 = phi i32 [ %142, %174 ], [ %142, %179 ], [ %20, %57 ]
  %191 = phi ptr [ %143, %174 ], [ %143, %179 ], [ %32, %57 ]
  %192 = phi i32 [ %173, %174 ], [ %184, %179 ], [ %34, %57 ]
  %193 = phi i32 [ %145, %174 ], [ %145, %179 ], [ %36, %57 ]
  %194 = phi i32 [ %146, %174 ], [ %146, %179 ], [ %38, %57 ]
  %195 = phi i64 [ %163, %174 ], [ %163, %179 ], [ %18, %57 ]
  %196 = phi i32 [ %171, %174 ], [ %180, %179 ], [ %13, %57 ]
  %197 = phi i32 [ %165, %174 ], [ %181, %179 ], [ %15, %57 ]
  %198 = icmp ult i32 %196, 16777216
  br i1 %198, label %199, label %210

199:                                              ; preds = %185
  %200 = icmp eq i64 %195, %4
  br i1 %200, label %201, label %202

201:                                              ; preds = %199
  store i32 3, ptr %58, align 8, !tbaa !53
  br label %3810

202:                                              ; preds = %199
  %203 = shl nuw i32 %196, 8
  %204 = shl i32 %197, 8
  %205 = add i64 %195, 1
  %206 = getelementptr inbounds i8, ptr %2, i64 %195
  %207 = load i8, ptr %206, align 1, !tbaa !54
  %208 = zext i8 %207 to i32
  %209 = or disjoint i32 %204, %208
  br label %210

210:                                              ; preds = %202, %185
  %211 = phi i64 [ %205, %202 ], [ %195, %185 ]
  %212 = phi i32 [ %203, %202 ], [ %196, %185 ]
  %213 = phi i32 [ %209, %202 ], [ %197, %185 ]
  %214 = lshr i32 %212, 11
  %215 = zext i32 %192 to i64
  %216 = getelementptr inbounds i16, ptr %191, i64 %215
  %217 = load i16, ptr %216, align 2, !tbaa !55
  %218 = zext i16 %217 to i32
  %219 = mul i32 %214, %218
  %220 = icmp ult i32 %213, %219
  %221 = shl i32 %192, 1
  br i1 %220, label %222, label %227

222:                                              ; preds = %210
  %223 = sub nsw i32 2048, %218
  %224 = lshr i32 %223, 5
  %225 = trunc i32 %224 to i16
  %226 = add i16 %217, %225
  store i16 %226, ptr %216, align 2, !tbaa !55
  br label %233

227:                                              ; preds = %210
  %228 = sub i32 %212, %219
  %229 = sub i32 %213, %219
  %230 = lshr i16 %217, 5
  %231 = sub i16 %217, %230
  store i16 %231, ptr %216, align 2, !tbaa !55
  %232 = or disjoint i32 %221, 1
  br label %233

233:                                              ; preds = %222, %227, %57
  %234 = phi i32 [ %186, %222 ], [ %186, %227 ], [ %22, %57 ]
  %235 = phi i32 [ %187, %222 ], [ %187, %227 ], [ %24, %57 ]
  %236 = phi i32 [ %188, %222 ], [ %188, %227 ], [ %26, %57 ]
  %237 = phi i32 [ %189, %222 ], [ %189, %227 ], [ %28, %57 ]
  %238 = phi i32 [ %190, %222 ], [ %190, %227 ], [ %20, %57 ]
  %239 = phi ptr [ %191, %222 ], [ %191, %227 ], [ %32, %57 ]
  %240 = phi i32 [ %221, %222 ], [ %232, %227 ], [ %34, %57 ]
  %241 = phi i32 [ %193, %222 ], [ %193, %227 ], [ %36, %57 ]
  %242 = phi i32 [ %194, %222 ], [ %194, %227 ], [ %38, %57 ]
  %243 = phi i64 [ %211, %222 ], [ %211, %227 ], [ %18, %57 ]
  %244 = phi i32 [ %219, %222 ], [ %228, %227 ], [ %13, %57 ]
  %245 = phi i32 [ %213, %222 ], [ %229, %227 ], [ %15, %57 ]
  %246 = icmp ult i32 %244, 16777216
  br i1 %246, label %247, label %258

247:                                              ; preds = %233
  %248 = icmp eq i64 %243, %4
  br i1 %248, label %249, label %250

249:                                              ; preds = %247
  store i32 4, ptr %58, align 8, !tbaa !53
  br label %3810

250:                                              ; preds = %247
  %251 = shl nuw i32 %244, 8
  %252 = shl i32 %245, 8
  %253 = add i64 %243, 1
  %254 = getelementptr inbounds i8, ptr %2, i64 %243
  %255 = load i8, ptr %254, align 1, !tbaa !54
  %256 = zext i8 %255 to i32
  %257 = or disjoint i32 %252, %256
  br label %258

258:                                              ; preds = %250, %233
  %259 = phi i64 [ %253, %250 ], [ %243, %233 ]
  %260 = phi i32 [ %251, %250 ], [ %244, %233 ]
  %261 = phi i32 [ %257, %250 ], [ %245, %233 ]
  %262 = lshr i32 %260, 11
  %263 = zext i32 %240 to i64
  %264 = getelementptr inbounds i16, ptr %239, i64 %263
  %265 = load i16, ptr %264, align 2, !tbaa !55
  %266 = zext i16 %265 to i32
  %267 = mul i32 %262, %266
  %268 = icmp ult i32 %261, %267
  %269 = shl i32 %240, 1
  br i1 %268, label %270, label %275

270:                                              ; preds = %258
  %271 = sub nsw i32 2048, %266
  %272 = lshr i32 %271, 5
  %273 = trunc i32 %272 to i16
  %274 = add i16 %265, %273
  store i16 %274, ptr %264, align 2, !tbaa !55
  br label %281

275:                                              ; preds = %258
  %276 = sub i32 %260, %267
  %277 = sub i32 %261, %267
  %278 = lshr i16 %265, 5
  %279 = sub i16 %265, %278
  store i16 %279, ptr %264, align 2, !tbaa !55
  %280 = or disjoint i32 %269, 1
  br label %281

281:                                              ; preds = %270, %275, %57
  %282 = phi i32 [ %234, %270 ], [ %234, %275 ], [ %22, %57 ]
  %283 = phi i32 [ %235, %270 ], [ %235, %275 ], [ %24, %57 ]
  %284 = phi i32 [ %236, %270 ], [ %236, %275 ], [ %26, %57 ]
  %285 = phi i32 [ %237, %270 ], [ %237, %275 ], [ %28, %57 ]
  %286 = phi i32 [ %238, %270 ], [ %238, %275 ], [ %20, %57 ]
  %287 = phi ptr [ %239, %270 ], [ %239, %275 ], [ %32, %57 ]
  %288 = phi i32 [ %269, %270 ], [ %280, %275 ], [ %34, %57 ]
  %289 = phi i32 [ %241, %270 ], [ %241, %275 ], [ %36, %57 ]
  %290 = phi i32 [ %242, %270 ], [ %242, %275 ], [ %38, %57 ]
  %291 = phi i64 [ %259, %270 ], [ %259, %275 ], [ %18, %57 ]
  %292 = phi i32 [ %267, %270 ], [ %276, %275 ], [ %13, %57 ]
  %293 = phi i32 [ %261, %270 ], [ %277, %275 ], [ %15, %57 ]
  %294 = icmp ult i32 %292, 16777216
  br i1 %294, label %295, label %306

295:                                              ; preds = %281
  %296 = icmp eq i64 %291, %4
  br i1 %296, label %297, label %298

297:                                              ; preds = %295
  store i32 5, ptr %58, align 8, !tbaa !53
  br label %3810

298:                                              ; preds = %295
  %299 = shl nuw i32 %292, 8
  %300 = shl i32 %293, 8
  %301 = add i64 %291, 1
  %302 = getelementptr inbounds i8, ptr %2, i64 %291
  %303 = load i8, ptr %302, align 1, !tbaa !54
  %304 = zext i8 %303 to i32
  %305 = or disjoint i32 %300, %304
  br label %306

306:                                              ; preds = %298, %281
  %307 = phi i64 [ %301, %298 ], [ %291, %281 ]
  %308 = phi i32 [ %299, %298 ], [ %292, %281 ]
  %309 = phi i32 [ %305, %298 ], [ %293, %281 ]
  %310 = lshr i32 %308, 11
  %311 = zext i32 %288 to i64
  %312 = getelementptr inbounds i16, ptr %287, i64 %311
  %313 = load i16, ptr %312, align 2, !tbaa !55
  %314 = zext i16 %313 to i32
  %315 = mul i32 %310, %314
  %316 = icmp ult i32 %309, %315
  %317 = shl i32 %288, 1
  br i1 %316, label %318, label %323

318:                                              ; preds = %306
  %319 = sub nsw i32 2048, %314
  %320 = lshr i32 %319, 5
  %321 = trunc i32 %320 to i16
  %322 = add i16 %313, %321
  store i16 %322, ptr %312, align 2, !tbaa !55
  br label %329

323:                                              ; preds = %306
  %324 = sub i32 %308, %315
  %325 = sub i32 %309, %315
  %326 = lshr i16 %313, 5
  %327 = sub i16 %313, %326
  store i16 %327, ptr %312, align 2, !tbaa !55
  %328 = or disjoint i32 %317, 1
  br label %329

329:                                              ; preds = %318, %323, %57
  %330 = phi i32 [ %282, %318 ], [ %282, %323 ], [ %22, %57 ]
  %331 = phi i32 [ %283, %318 ], [ %283, %323 ], [ %24, %57 ]
  %332 = phi i32 [ %284, %318 ], [ %284, %323 ], [ %26, %57 ]
  %333 = phi i32 [ %285, %318 ], [ %285, %323 ], [ %28, %57 ]
  %334 = phi i32 [ %286, %318 ], [ %286, %323 ], [ %20, %57 ]
  %335 = phi ptr [ %287, %318 ], [ %287, %323 ], [ %32, %57 ]
  %336 = phi i32 [ %317, %318 ], [ %328, %323 ], [ %34, %57 ]
  %337 = phi i32 [ %289, %318 ], [ %289, %323 ], [ %36, %57 ]
  %338 = phi i32 [ %290, %318 ], [ %290, %323 ], [ %38, %57 ]
  %339 = phi i64 [ %307, %318 ], [ %307, %323 ], [ %18, %57 ]
  %340 = phi i32 [ %315, %318 ], [ %324, %323 ], [ %13, %57 ]
  %341 = phi i32 [ %309, %318 ], [ %325, %323 ], [ %15, %57 ]
  %342 = icmp ult i32 %340, 16777216
  br i1 %342, label %343, label %354

343:                                              ; preds = %329
  %344 = icmp eq i64 %339, %4
  br i1 %344, label %345, label %346

345:                                              ; preds = %343
  store i32 6, ptr %58, align 8, !tbaa !53
  br label %3810

346:                                              ; preds = %343
  %347 = shl nuw i32 %340, 8
  %348 = shl i32 %341, 8
  %349 = add i64 %339, 1
  %350 = getelementptr inbounds i8, ptr %2, i64 %339
  %351 = load i8, ptr %350, align 1, !tbaa !54
  %352 = zext i8 %351 to i32
  %353 = or disjoint i32 %348, %352
  br label %354

354:                                              ; preds = %346, %329
  %355 = phi i64 [ %349, %346 ], [ %339, %329 ]
  %356 = phi i32 [ %347, %346 ], [ %340, %329 ]
  %357 = phi i32 [ %353, %346 ], [ %341, %329 ]
  %358 = lshr i32 %356, 11
  %359 = zext i32 %336 to i64
  %360 = getelementptr inbounds i16, ptr %335, i64 %359
  %361 = load i16, ptr %360, align 2, !tbaa !55
  %362 = zext i16 %361 to i32
  %363 = mul i32 %358, %362
  %364 = icmp ult i32 %357, %363
  %365 = shl i32 %336, 1
  br i1 %364, label %366, label %371

366:                                              ; preds = %354
  %367 = sub nsw i32 2048, %362
  %368 = lshr i32 %367, 5
  %369 = trunc i32 %368 to i16
  %370 = add i16 %361, %369
  store i16 %370, ptr %360, align 2, !tbaa !55
  br label %377

371:                                              ; preds = %354
  %372 = sub i32 %356, %363
  %373 = sub i32 %357, %363
  %374 = lshr i16 %361, 5
  %375 = sub i16 %361, %374
  store i16 %375, ptr %360, align 2, !tbaa !55
  %376 = or disjoint i32 %365, 1
  br label %377

377:                                              ; preds = %366, %371, %57
  %378 = phi i32 [ %330, %366 ], [ %330, %371 ], [ %22, %57 ]
  %379 = phi i32 [ %331, %366 ], [ %331, %371 ], [ %24, %57 ]
  %380 = phi i32 [ %332, %366 ], [ %332, %371 ], [ %26, %57 ]
  %381 = phi i32 [ %333, %366 ], [ %333, %371 ], [ %28, %57 ]
  %382 = phi i32 [ %334, %366 ], [ %334, %371 ], [ %20, %57 ]
  %383 = phi ptr [ %335, %366 ], [ %335, %371 ], [ %32, %57 ]
  %384 = phi i32 [ %365, %366 ], [ %376, %371 ], [ %34, %57 ]
  %385 = phi i32 [ %337, %366 ], [ %337, %371 ], [ %36, %57 ]
  %386 = phi i32 [ %338, %366 ], [ %338, %371 ], [ %38, %57 ]
  %387 = phi i64 [ %355, %366 ], [ %355, %371 ], [ %18, %57 ]
  %388 = phi i32 [ %363, %366 ], [ %372, %371 ], [ %13, %57 ]
  %389 = phi i32 [ %357, %366 ], [ %373, %371 ], [ %15, %57 ]
  %390 = icmp ult i32 %388, 16777216
  br i1 %390, label %391, label %402

391:                                              ; preds = %377
  %392 = icmp eq i64 %387, %4
  br i1 %392, label %393, label %394

393:                                              ; preds = %391
  store i32 7, ptr %58, align 8, !tbaa !53
  br label %3810

394:                                              ; preds = %391
  %395 = shl nuw i32 %388, 8
  %396 = shl i32 %389, 8
  %397 = add i64 %387, 1
  %398 = getelementptr inbounds i8, ptr %2, i64 %387
  %399 = load i8, ptr %398, align 1, !tbaa !54
  %400 = zext i8 %399 to i32
  %401 = or disjoint i32 %396, %400
  br label %402

402:                                              ; preds = %394, %377
  %403 = phi i64 [ %397, %394 ], [ %387, %377 ]
  %404 = phi i32 [ %395, %394 ], [ %388, %377 ]
  %405 = phi i32 [ %401, %394 ], [ %389, %377 ]
  %406 = lshr i32 %404, 11
  %407 = zext i32 %384 to i64
  %408 = getelementptr inbounds i16, ptr %383, i64 %407
  %409 = load i16, ptr %408, align 2, !tbaa !55
  %410 = zext i16 %409 to i32
  %411 = mul i32 %406, %410
  %412 = icmp ult i32 %405, %411
  %413 = shl i32 %384, 1
  br i1 %412, label %414, label %419

414:                                              ; preds = %402
  %415 = sub nsw i32 2048, %410
  %416 = lshr i32 %415, 5
  %417 = trunc i32 %416 to i16
  %418 = add i16 %409, %417
  store i16 %418, ptr %408, align 2, !tbaa !55
  br label %425

419:                                              ; preds = %402
  %420 = sub i32 %404, %411
  %421 = sub i32 %405, %411
  %422 = lshr i16 %409, 5
  %423 = sub i16 %409, %422
  store i16 %423, ptr %408, align 2, !tbaa !55
  %424 = or disjoint i32 %413, 1
  br label %425

425:                                              ; preds = %414, %419, %57
  %426 = phi i32 [ %378, %414 ], [ %378, %419 ], [ %22, %57 ]
  %427 = phi i32 [ %379, %414 ], [ %379, %419 ], [ %24, %57 ]
  %428 = phi i32 [ %380, %414 ], [ %380, %419 ], [ %26, %57 ]
  %429 = phi i32 [ %381, %414 ], [ %381, %419 ], [ %28, %57 ]
  %430 = phi i32 [ %382, %414 ], [ %382, %419 ], [ %20, %57 ]
  %431 = phi ptr [ %383, %414 ], [ %383, %419 ], [ %32, %57 ]
  %432 = phi i32 [ %413, %414 ], [ %424, %419 ], [ %34, %57 ]
  %433 = phi i32 [ %385, %414 ], [ %385, %419 ], [ %36, %57 ]
  %434 = phi i32 [ %386, %414 ], [ %386, %419 ], [ %38, %57 ]
  %435 = phi i64 [ %403, %414 ], [ %403, %419 ], [ %18, %57 ]
  %436 = phi i32 [ %411, %414 ], [ %420, %419 ], [ %13, %57 ]
  %437 = phi i32 [ %405, %414 ], [ %421, %419 ], [ %15, %57 ]
  %438 = icmp ult i32 %436, 16777216
  br i1 %438, label %439, label %450

439:                                              ; preds = %425
  %440 = icmp eq i64 %435, %4
  br i1 %440, label %441, label %442

441:                                              ; preds = %439
  store i32 8, ptr %58, align 8, !tbaa !53
  br label %3810

442:                                              ; preds = %439
  %443 = shl nuw i32 %436, 8
  %444 = shl i32 %437, 8
  %445 = add i64 %435, 1
  %446 = getelementptr inbounds i8, ptr %2, i64 %435
  %447 = load i8, ptr %446, align 1, !tbaa !54
  %448 = zext i8 %447 to i32
  %449 = or disjoint i32 %444, %448
  br label %450

450:                                              ; preds = %442, %425
  %451 = phi i64 [ %445, %442 ], [ %435, %425 ]
  %452 = phi i32 [ %443, %442 ], [ %436, %425 ]
  %453 = phi i32 [ %449, %442 ], [ %437, %425 ]
  %454 = lshr i32 %452, 11
  %455 = zext i32 %432 to i64
  %456 = getelementptr inbounds i16, ptr %431, i64 %455
  %457 = load i16, ptr %456, align 2, !tbaa !55
  %458 = zext i16 %457 to i32
  %459 = mul i32 %454, %458
  %460 = icmp ult i32 %453, %459
  %461 = shl i32 %432, 1
  br i1 %460, label %462, label %467

462:                                              ; preds = %450
  %463 = sub nsw i32 2048, %458
  %464 = lshr i32 %463, 5
  %465 = trunc i32 %464 to i16
  %466 = add i16 %457, %465
  store i16 %466, ptr %456, align 2, !tbaa !55
  br label %473

467:                                              ; preds = %450
  %468 = sub i32 %452, %459
  %469 = sub i32 %453, %459
  %470 = lshr i16 %457, 5
  %471 = sub i16 %457, %470
  store i16 %471, ptr %456, align 2, !tbaa !55
  %472 = or disjoint i32 %461, 1
  br label %473

473:                                              ; preds = %462, %467, %57
  %474 = phi i32 [ %426, %462 ], [ %426, %467 ], [ %22, %57 ]
  %475 = phi i32 [ %427, %462 ], [ %427, %467 ], [ %24, %57 ]
  %476 = phi i32 [ %428, %462 ], [ %428, %467 ], [ %26, %57 ]
  %477 = phi i32 [ %429, %462 ], [ %429, %467 ], [ %28, %57 ]
  %478 = phi i32 [ %430, %462 ], [ %430, %467 ], [ %20, %57 ]
  %479 = phi ptr [ %431, %462 ], [ %431, %467 ], [ %32, %57 ]
  %480 = phi i32 [ %461, %462 ], [ %472, %467 ], [ %34, %57 ]
  %481 = phi i32 [ %433, %462 ], [ %433, %467 ], [ %36, %57 ]
  %482 = phi i32 [ %434, %462 ], [ %434, %467 ], [ %38, %57 ]
  %483 = phi i64 [ %451, %462 ], [ %451, %467 ], [ %18, %57 ]
  %484 = phi i32 [ %459, %462 ], [ %468, %467 ], [ %13, %57 ]
  %485 = phi i32 [ %453, %462 ], [ %469, %467 ], [ %15, %57 ]
  %486 = icmp ult i32 %484, 16777216
  br i1 %486, label %487, label %498

487:                                              ; preds = %473
  %488 = icmp eq i64 %483, %4
  br i1 %488, label %489, label %490

489:                                              ; preds = %487
  store i32 9, ptr %58, align 8, !tbaa !53
  br label %3810

490:                                              ; preds = %487
  %491 = shl nuw i32 %484, 8
  %492 = shl i32 %485, 8
  %493 = add i64 %483, 1
  %494 = getelementptr inbounds i8, ptr %2, i64 %483
  %495 = load i8, ptr %494, align 1, !tbaa !54
  %496 = zext i8 %495 to i32
  %497 = or disjoint i32 %492, %496
  br label %498

498:                                              ; preds = %490, %473
  %499 = phi i64 [ %493, %490 ], [ %483, %473 ]
  %500 = phi i32 [ %491, %490 ], [ %484, %473 ]
  %501 = phi i32 [ %497, %490 ], [ %485, %473 ]
  %502 = lshr i32 %500, 11
  %503 = zext i32 %480 to i64
  %504 = getelementptr inbounds i16, ptr %479, i64 %503
  %505 = load i16, ptr %504, align 2, !tbaa !55
  %506 = zext i16 %505 to i32
  %507 = mul i32 %502, %506
  %508 = icmp ult i32 %501, %507
  %509 = shl i32 %480, 1
  br i1 %508, label %510, label %515

510:                                              ; preds = %498
  %511 = sub nsw i32 2048, %506
  %512 = lshr i32 %511, 5
  %513 = trunc i32 %512 to i16
  %514 = add i16 %505, %513
  store i16 %514, ptr %504, align 2, !tbaa !55
  br label %998

515:                                              ; preds = %498
  %516 = sub i32 %500, %507
  %517 = sub i32 %501, %507
  %518 = lshr i16 %505, 5
  %519 = sub i16 %505, %518
  store i16 %519, ptr %504, align 2, !tbaa !55
  %520 = or disjoint i32 %509, 1
  br label %998

521:                                              ; preds = %120
  %522 = call fastcc zeroext i8 @dict_get(ptr noundef nonnull %6, i32 noundef %78) #13
  %523 = zext i8 %522 to i32
  %524 = shl nuw nsw i32 %523, 1
  store i32 %524, ptr %7, align 4, !tbaa !31
  br label %525

525:                                              ; preds = %57, %521
  %526 = phi i32 [ %524, %521 ], [ %40, %57 ]
  %527 = phi i32 [ %78, %521 ], [ %22, %57 ]
  %528 = phi i32 [ %79, %521 ], [ %24, %57 ]
  %529 = phi i32 [ %80, %521 ], [ %26, %57 ]
  %530 = phi i32 [ %81, %521 ], [ %28, %57 ]
  %531 = phi i32 [ %82, %521 ], [ %20, %57 ]
  %532 = phi ptr [ %135, %521 ], [ %32, %57 ]
  %533 = phi i32 [ 1, %521 ], [ %34, %57 ]
  %534 = phi i32 [ %85, %521 ], [ %36, %57 ]
  %535 = phi i32 [ 256, %521 ], [ %38, %57 ]
  %536 = phi i64 [ %109, %521 ], [ %18, %57 ]
  %537 = phi i32 [ %118, %521 ], [ %13, %57 ]
  %538 = phi i32 [ %111, %521 ], [ %15, %57 ]
  %539 = and i32 %526, %535
  %540 = add i32 %535, %533
  %541 = add i32 %540, %539
  %542 = icmp ult i32 %537, 16777216
  br i1 %542, label %543, label %554

543:                                              ; preds = %525
  %544 = icmp eq i64 %536, %4
  br i1 %544, label %545, label %546

545:                                              ; preds = %543
  store i32 10, ptr %58, align 8, !tbaa !53
  br label %3810

546:                                              ; preds = %543
  %547 = shl nuw i32 %537, 8
  %548 = shl i32 %538, 8
  %549 = add i64 %536, 1
  %550 = getelementptr inbounds i8, ptr %2, i64 %536
  %551 = load i8, ptr %550, align 1, !tbaa !54
  %552 = zext i8 %551 to i32
  %553 = or disjoint i32 %548, %552
  br label %554

554:                                              ; preds = %546, %525
  %555 = phi i64 [ %549, %546 ], [ %536, %525 ]
  %556 = phi i32 [ %547, %546 ], [ %537, %525 ]
  %557 = phi i32 [ %553, %546 ], [ %538, %525 ]
  %558 = lshr i32 %556, 11
  %559 = zext i32 %541 to i64
  %560 = getelementptr inbounds i16, ptr %532, i64 %559
  %561 = load i16, ptr %560, align 2, !tbaa !55
  %562 = zext i16 %561 to i32
  %563 = mul i32 %558, %562
  %564 = icmp ult i32 %557, %563
  %565 = shl i32 %533, 1
  br i1 %564, label %566, label %572

566:                                              ; preds = %554
  %567 = sub nsw i32 2048, %562
  %568 = lshr i32 %567, 5
  %569 = trunc i32 %568 to i16
  %570 = add i16 %561, %569
  %571 = xor i32 %539, %535
  br label %578

572:                                              ; preds = %554
  %573 = sub i32 %556, %563
  %574 = sub i32 %557, %563
  %575 = lshr i16 %561, 5
  %576 = sub i16 %561, %575
  %577 = or disjoint i32 %565, 1
  br label %578

578:                                              ; preds = %572, %566
  %579 = phi i16 [ %570, %566 ], [ %576, %572 ]
  %580 = phi i32 [ %565, %566 ], [ %577, %572 ]
  %581 = phi i32 [ %571, %566 ], [ %539, %572 ]
  %582 = phi i32 [ %563, %566 ], [ %573, %572 ]
  %583 = phi i32 [ %557, %566 ], [ %574, %572 ]
  store i16 %579, ptr %560, align 2
  %584 = shl i32 %526, 1
  store i32 %584, ptr %7, align 4, !tbaa !31
  br label %585

585:                                              ; preds = %57, %578
  %586 = phi i32 [ %584, %578 ], [ %40, %57 ]
  %587 = phi i32 [ %527, %578 ], [ %22, %57 ]
  %588 = phi i32 [ %528, %578 ], [ %24, %57 ]
  %589 = phi i32 [ %529, %578 ], [ %26, %57 ]
  %590 = phi i32 [ %530, %578 ], [ %28, %57 ]
  %591 = phi i32 [ %531, %578 ], [ %20, %57 ]
  %592 = phi ptr [ %532, %578 ], [ %32, %57 ]
  %593 = phi i32 [ %580, %578 ], [ %34, %57 ]
  %594 = phi i32 [ %534, %578 ], [ %36, %57 ]
  %595 = phi i32 [ %581, %578 ], [ %38, %57 ]
  %596 = phi i64 [ %555, %578 ], [ %18, %57 ]
  %597 = phi i32 [ %582, %578 ], [ %13, %57 ]
  %598 = phi i32 [ %583, %578 ], [ %15, %57 ]
  %599 = and i32 %586, %595
  %600 = add i32 %595, %593
  %601 = add i32 %600, %599
  %602 = icmp ult i32 %597, 16777216
  br i1 %602, label %603, label %614

603:                                              ; preds = %585
  %604 = icmp eq i64 %596, %4
  br i1 %604, label %605, label %606

605:                                              ; preds = %603
  store i32 11, ptr %58, align 8, !tbaa !53
  br label %3810

606:                                              ; preds = %603
  %607 = shl nuw i32 %597, 8
  %608 = shl i32 %598, 8
  %609 = add i64 %596, 1
  %610 = getelementptr inbounds i8, ptr %2, i64 %596
  %611 = load i8, ptr %610, align 1, !tbaa !54
  %612 = zext i8 %611 to i32
  %613 = or disjoint i32 %608, %612
  br label %614

614:                                              ; preds = %606, %585
  %615 = phi i64 [ %609, %606 ], [ %596, %585 ]
  %616 = phi i32 [ %607, %606 ], [ %597, %585 ]
  %617 = phi i32 [ %613, %606 ], [ %598, %585 ]
  %618 = lshr i32 %616, 11
  %619 = zext i32 %601 to i64
  %620 = getelementptr inbounds i16, ptr %592, i64 %619
  %621 = load i16, ptr %620, align 2, !tbaa !55
  %622 = zext i16 %621 to i32
  %623 = mul i32 %618, %622
  %624 = icmp ult i32 %617, %623
  %625 = shl i32 %593, 1
  br i1 %624, label %626, label %632

626:                                              ; preds = %614
  %627 = sub nsw i32 2048, %622
  %628 = lshr i32 %627, 5
  %629 = trunc i32 %628 to i16
  %630 = add i16 %621, %629
  %631 = xor i32 %599, %595
  br label %638

632:                                              ; preds = %614
  %633 = sub i32 %616, %623
  %634 = sub i32 %617, %623
  %635 = lshr i16 %621, 5
  %636 = sub i16 %621, %635
  %637 = or disjoint i32 %625, 1
  br label %638

638:                                              ; preds = %632, %626
  %639 = phi i16 [ %630, %626 ], [ %636, %632 ]
  %640 = phi i32 [ %625, %626 ], [ %637, %632 ]
  %641 = phi i32 [ %631, %626 ], [ %599, %632 ]
  %642 = phi i32 [ %623, %626 ], [ %633, %632 ]
  %643 = phi i32 [ %617, %626 ], [ %634, %632 ]
  store i16 %639, ptr %620, align 2
  %644 = shl i32 %586, 1
  store i32 %644, ptr %7, align 4, !tbaa !31
  br label %645

645:                                              ; preds = %57, %638
  %646 = phi i32 [ %644, %638 ], [ %40, %57 ]
  %647 = phi i32 [ %587, %638 ], [ %22, %57 ]
  %648 = phi i32 [ %588, %638 ], [ %24, %57 ]
  %649 = phi i32 [ %589, %638 ], [ %26, %57 ]
  %650 = phi i32 [ %590, %638 ], [ %28, %57 ]
  %651 = phi i32 [ %591, %638 ], [ %20, %57 ]
  %652 = phi ptr [ %592, %638 ], [ %32, %57 ]
  %653 = phi i32 [ %640, %638 ], [ %34, %57 ]
  %654 = phi i32 [ %594, %638 ], [ %36, %57 ]
  %655 = phi i32 [ %641, %638 ], [ %38, %57 ]
  %656 = phi i64 [ %615, %638 ], [ %18, %57 ]
  %657 = phi i32 [ %642, %638 ], [ %13, %57 ]
  %658 = phi i32 [ %643, %638 ], [ %15, %57 ]
  %659 = and i32 %646, %655
  %660 = add i32 %655, %653
  %661 = add i32 %660, %659
  %662 = icmp ult i32 %657, 16777216
  br i1 %662, label %663, label %674

663:                                              ; preds = %645
  %664 = icmp eq i64 %656, %4
  br i1 %664, label %665, label %666

665:                                              ; preds = %663
  store i32 12, ptr %58, align 8, !tbaa !53
  br label %3810

666:                                              ; preds = %663
  %667 = shl nuw i32 %657, 8
  %668 = shl i32 %658, 8
  %669 = add i64 %656, 1
  %670 = getelementptr inbounds i8, ptr %2, i64 %656
  %671 = load i8, ptr %670, align 1, !tbaa !54
  %672 = zext i8 %671 to i32
  %673 = or disjoint i32 %668, %672
  br label %674

674:                                              ; preds = %666, %645
  %675 = phi i64 [ %669, %666 ], [ %656, %645 ]
  %676 = phi i32 [ %667, %666 ], [ %657, %645 ]
  %677 = phi i32 [ %673, %666 ], [ %658, %645 ]
  %678 = lshr i32 %676, 11
  %679 = zext i32 %661 to i64
  %680 = getelementptr inbounds i16, ptr %652, i64 %679
  %681 = load i16, ptr %680, align 2, !tbaa !55
  %682 = zext i16 %681 to i32
  %683 = mul i32 %678, %682
  %684 = icmp ult i32 %677, %683
  %685 = shl i32 %653, 1
  br i1 %684, label %686, label %692

686:                                              ; preds = %674
  %687 = sub nsw i32 2048, %682
  %688 = lshr i32 %687, 5
  %689 = trunc i32 %688 to i16
  %690 = add i16 %681, %689
  %691 = xor i32 %659, %655
  br label %698

692:                                              ; preds = %674
  %693 = sub i32 %676, %683
  %694 = sub i32 %677, %683
  %695 = lshr i16 %681, 5
  %696 = sub i16 %681, %695
  %697 = or disjoint i32 %685, 1
  br label %698

698:                                              ; preds = %692, %686
  %699 = phi i16 [ %690, %686 ], [ %696, %692 ]
  %700 = phi i32 [ %685, %686 ], [ %697, %692 ]
  %701 = phi i32 [ %691, %686 ], [ %659, %692 ]
  %702 = phi i32 [ %683, %686 ], [ %693, %692 ]
  %703 = phi i32 [ %677, %686 ], [ %694, %692 ]
  store i16 %699, ptr %680, align 2
  %704 = shl i32 %646, 1
  store i32 %704, ptr %7, align 4, !tbaa !31
  br label %705

705:                                              ; preds = %57, %698
  %706 = phi i32 [ %704, %698 ], [ %40, %57 ]
  %707 = phi i32 [ %647, %698 ], [ %22, %57 ]
  %708 = phi i32 [ %648, %698 ], [ %24, %57 ]
  %709 = phi i32 [ %649, %698 ], [ %26, %57 ]
  %710 = phi i32 [ %650, %698 ], [ %28, %57 ]
  %711 = phi i32 [ %651, %698 ], [ %20, %57 ]
  %712 = phi ptr [ %652, %698 ], [ %32, %57 ]
  %713 = phi i32 [ %700, %698 ], [ %34, %57 ]
  %714 = phi i32 [ %654, %698 ], [ %36, %57 ]
  %715 = phi i32 [ %701, %698 ], [ %38, %57 ]
  %716 = phi i64 [ %675, %698 ], [ %18, %57 ]
  %717 = phi i32 [ %702, %698 ], [ %13, %57 ]
  %718 = phi i32 [ %703, %698 ], [ %15, %57 ]
  %719 = and i32 %706, %715
  %720 = add i32 %715, %713
  %721 = add i32 %720, %719
  %722 = icmp ult i32 %717, 16777216
  br i1 %722, label %723, label %734

723:                                              ; preds = %705
  %724 = icmp eq i64 %716, %4
  br i1 %724, label %725, label %726

725:                                              ; preds = %723
  store i32 13, ptr %58, align 8, !tbaa !53
  br label %3810

726:                                              ; preds = %723
  %727 = shl nuw i32 %717, 8
  %728 = shl i32 %718, 8
  %729 = add i64 %716, 1
  %730 = getelementptr inbounds i8, ptr %2, i64 %716
  %731 = load i8, ptr %730, align 1, !tbaa !54
  %732 = zext i8 %731 to i32
  %733 = or disjoint i32 %728, %732
  br label %734

734:                                              ; preds = %726, %705
  %735 = phi i64 [ %729, %726 ], [ %716, %705 ]
  %736 = phi i32 [ %727, %726 ], [ %717, %705 ]
  %737 = phi i32 [ %733, %726 ], [ %718, %705 ]
  %738 = lshr i32 %736, 11
  %739 = zext i32 %721 to i64
  %740 = getelementptr inbounds i16, ptr %712, i64 %739
  %741 = load i16, ptr %740, align 2, !tbaa !55
  %742 = zext i16 %741 to i32
  %743 = mul i32 %738, %742
  %744 = icmp ult i32 %737, %743
  %745 = shl i32 %713, 1
  br i1 %744, label %746, label %752

746:                                              ; preds = %734
  %747 = sub nsw i32 2048, %742
  %748 = lshr i32 %747, 5
  %749 = trunc i32 %748 to i16
  %750 = add i16 %741, %749
  %751 = xor i32 %719, %715
  br label %758

752:                                              ; preds = %734
  %753 = sub i32 %736, %743
  %754 = sub i32 %737, %743
  %755 = lshr i16 %741, 5
  %756 = sub i16 %741, %755
  %757 = or disjoint i32 %745, 1
  br label %758

758:                                              ; preds = %752, %746
  %759 = phi i16 [ %750, %746 ], [ %756, %752 ]
  %760 = phi i32 [ %745, %746 ], [ %757, %752 ]
  %761 = phi i32 [ %751, %746 ], [ %719, %752 ]
  %762 = phi i32 [ %743, %746 ], [ %753, %752 ]
  %763 = phi i32 [ %737, %746 ], [ %754, %752 ]
  store i16 %759, ptr %740, align 2
  %764 = shl i32 %706, 1
  store i32 %764, ptr %7, align 4, !tbaa !31
  br label %765

765:                                              ; preds = %57, %758
  %766 = phi i32 [ %764, %758 ], [ %40, %57 ]
  %767 = phi i32 [ %707, %758 ], [ %22, %57 ]
  %768 = phi i32 [ %708, %758 ], [ %24, %57 ]
  %769 = phi i32 [ %709, %758 ], [ %26, %57 ]
  %770 = phi i32 [ %710, %758 ], [ %28, %57 ]
  %771 = phi i32 [ %711, %758 ], [ %20, %57 ]
  %772 = phi ptr [ %712, %758 ], [ %32, %57 ]
  %773 = phi i32 [ %760, %758 ], [ %34, %57 ]
  %774 = phi i32 [ %714, %758 ], [ %36, %57 ]
  %775 = phi i32 [ %761, %758 ], [ %38, %57 ]
  %776 = phi i64 [ %735, %758 ], [ %18, %57 ]
  %777 = phi i32 [ %762, %758 ], [ %13, %57 ]
  %778 = phi i32 [ %763, %758 ], [ %15, %57 ]
  %779 = and i32 %766, %775
  %780 = add i32 %775, %773
  %781 = add i32 %780, %779
  %782 = icmp ult i32 %777, 16777216
  br i1 %782, label %783, label %794

783:                                              ; preds = %765
  %784 = icmp eq i64 %776, %4
  br i1 %784, label %785, label %786

785:                                              ; preds = %783
  store i32 14, ptr %58, align 8, !tbaa !53
  br label %3810

786:                                              ; preds = %783
  %787 = shl nuw i32 %777, 8
  %788 = shl i32 %778, 8
  %789 = add i64 %776, 1
  %790 = getelementptr inbounds i8, ptr %2, i64 %776
  %791 = load i8, ptr %790, align 1, !tbaa !54
  %792 = zext i8 %791 to i32
  %793 = or disjoint i32 %788, %792
  br label %794

794:                                              ; preds = %786, %765
  %795 = phi i64 [ %789, %786 ], [ %776, %765 ]
  %796 = phi i32 [ %787, %786 ], [ %777, %765 ]
  %797 = phi i32 [ %793, %786 ], [ %778, %765 ]
  %798 = lshr i32 %796, 11
  %799 = zext i32 %781 to i64
  %800 = getelementptr inbounds i16, ptr %772, i64 %799
  %801 = load i16, ptr %800, align 2, !tbaa !55
  %802 = zext i16 %801 to i32
  %803 = mul i32 %798, %802
  %804 = icmp ult i32 %797, %803
  %805 = shl i32 %773, 1
  br i1 %804, label %806, label %812

806:                                              ; preds = %794
  %807 = sub nsw i32 2048, %802
  %808 = lshr i32 %807, 5
  %809 = trunc i32 %808 to i16
  %810 = add i16 %801, %809
  %811 = xor i32 %779, %775
  br label %818

812:                                              ; preds = %794
  %813 = sub i32 %796, %803
  %814 = sub i32 %797, %803
  %815 = lshr i16 %801, 5
  %816 = sub i16 %801, %815
  %817 = or disjoint i32 %805, 1
  br label %818

818:                                              ; preds = %812, %806
  %819 = phi i16 [ %810, %806 ], [ %816, %812 ]
  %820 = phi i32 [ %805, %806 ], [ %817, %812 ]
  %821 = phi i32 [ %811, %806 ], [ %779, %812 ]
  %822 = phi i32 [ %803, %806 ], [ %813, %812 ]
  %823 = phi i32 [ %797, %806 ], [ %814, %812 ]
  store i16 %819, ptr %800, align 2
  %824 = shl i32 %766, 1
  store i32 %824, ptr %7, align 4, !tbaa !31
  br label %825

825:                                              ; preds = %57, %818
  %826 = phi i32 [ %824, %818 ], [ %40, %57 ]
  %827 = phi i32 [ %767, %818 ], [ %22, %57 ]
  %828 = phi i32 [ %768, %818 ], [ %24, %57 ]
  %829 = phi i32 [ %769, %818 ], [ %26, %57 ]
  %830 = phi i32 [ %770, %818 ], [ %28, %57 ]
  %831 = phi i32 [ %771, %818 ], [ %20, %57 ]
  %832 = phi ptr [ %772, %818 ], [ %32, %57 ]
  %833 = phi i32 [ %820, %818 ], [ %34, %57 ]
  %834 = phi i32 [ %774, %818 ], [ %36, %57 ]
  %835 = phi i32 [ %821, %818 ], [ %38, %57 ]
  %836 = phi i64 [ %795, %818 ], [ %18, %57 ]
  %837 = phi i32 [ %822, %818 ], [ %13, %57 ]
  %838 = phi i32 [ %823, %818 ], [ %15, %57 ]
  %839 = and i32 %826, %835
  %840 = add i32 %835, %833
  %841 = add i32 %840, %839
  %842 = icmp ult i32 %837, 16777216
  br i1 %842, label %843, label %854

843:                                              ; preds = %825
  %844 = icmp eq i64 %836, %4
  br i1 %844, label %845, label %846

845:                                              ; preds = %843
  store i32 15, ptr %58, align 8, !tbaa !53
  br label %3810

846:                                              ; preds = %843
  %847 = shl nuw i32 %837, 8
  %848 = shl i32 %838, 8
  %849 = add i64 %836, 1
  %850 = getelementptr inbounds i8, ptr %2, i64 %836
  %851 = load i8, ptr %850, align 1, !tbaa !54
  %852 = zext i8 %851 to i32
  %853 = or disjoint i32 %848, %852
  br label %854

854:                                              ; preds = %846, %825
  %855 = phi i64 [ %849, %846 ], [ %836, %825 ]
  %856 = phi i32 [ %847, %846 ], [ %837, %825 ]
  %857 = phi i32 [ %853, %846 ], [ %838, %825 ]
  %858 = lshr i32 %856, 11
  %859 = zext i32 %841 to i64
  %860 = getelementptr inbounds i16, ptr %832, i64 %859
  %861 = load i16, ptr %860, align 2, !tbaa !55
  %862 = zext i16 %861 to i32
  %863 = mul i32 %858, %862
  %864 = icmp ult i32 %857, %863
  %865 = shl i32 %833, 1
  br i1 %864, label %866, label %872

866:                                              ; preds = %854
  %867 = sub nsw i32 2048, %862
  %868 = lshr i32 %867, 5
  %869 = trunc i32 %868 to i16
  %870 = add i16 %861, %869
  %871 = xor i32 %839, %835
  br label %878

872:                                              ; preds = %854
  %873 = sub i32 %856, %863
  %874 = sub i32 %857, %863
  %875 = lshr i16 %861, 5
  %876 = sub i16 %861, %875
  %877 = or disjoint i32 %865, 1
  br label %878

878:                                              ; preds = %872, %866
  %879 = phi i16 [ %870, %866 ], [ %876, %872 ]
  %880 = phi i32 [ %865, %866 ], [ %877, %872 ]
  %881 = phi i32 [ %871, %866 ], [ %839, %872 ]
  %882 = phi i32 [ %863, %866 ], [ %873, %872 ]
  %883 = phi i32 [ %857, %866 ], [ %874, %872 ]
  store i16 %879, ptr %860, align 2
  %884 = shl i32 %826, 1
  store i32 %884, ptr %7, align 4, !tbaa !31
  br label %885

885:                                              ; preds = %57, %878
  %886 = phi i32 [ %884, %878 ], [ %40, %57 ]
  %887 = phi i32 [ %827, %878 ], [ %22, %57 ]
  %888 = phi i32 [ %828, %878 ], [ %24, %57 ]
  %889 = phi i32 [ %829, %878 ], [ %26, %57 ]
  %890 = phi i32 [ %830, %878 ], [ %28, %57 ]
  %891 = phi i32 [ %831, %878 ], [ %20, %57 ]
  %892 = phi ptr [ %832, %878 ], [ %32, %57 ]
  %893 = phi i32 [ %880, %878 ], [ %34, %57 ]
  %894 = phi i32 [ %834, %878 ], [ %36, %57 ]
  %895 = phi i32 [ %881, %878 ], [ %38, %57 ]
  %896 = phi i64 [ %855, %878 ], [ %18, %57 ]
  %897 = phi i32 [ %882, %878 ], [ %13, %57 ]
  %898 = phi i32 [ %883, %878 ], [ %15, %57 ]
  %899 = and i32 %886, %895
  %900 = add i32 %895, %893
  %901 = add i32 %900, %899
  %902 = icmp ult i32 %897, 16777216
  br i1 %902, label %903, label %914

903:                                              ; preds = %885
  %904 = icmp eq i64 %896, %4
  br i1 %904, label %905, label %906

905:                                              ; preds = %903
  store i32 16, ptr %58, align 8, !tbaa !53
  br label %3810

906:                                              ; preds = %903
  %907 = shl nuw i32 %897, 8
  %908 = shl i32 %898, 8
  %909 = add i64 %896, 1
  %910 = getelementptr inbounds i8, ptr %2, i64 %896
  %911 = load i8, ptr %910, align 1, !tbaa !54
  %912 = zext i8 %911 to i32
  %913 = or disjoint i32 %908, %912
  br label %914

914:                                              ; preds = %906, %885
  %915 = phi i64 [ %909, %906 ], [ %896, %885 ]
  %916 = phi i32 [ %907, %906 ], [ %897, %885 ]
  %917 = phi i32 [ %913, %906 ], [ %898, %885 ]
  %918 = lshr i32 %916, 11
  %919 = zext i32 %901 to i64
  %920 = getelementptr inbounds i16, ptr %892, i64 %919
  %921 = load i16, ptr %920, align 2, !tbaa !55
  %922 = zext i16 %921 to i32
  %923 = mul i32 %918, %922
  %924 = icmp ult i32 %917, %923
  %925 = shl i32 %893, 1
  br i1 %924, label %926, label %932

926:                                              ; preds = %914
  %927 = sub nsw i32 2048, %922
  %928 = lshr i32 %927, 5
  %929 = trunc i32 %928 to i16
  %930 = add i16 %921, %929
  %931 = xor i32 %899, %895
  br label %938

932:                                              ; preds = %914
  %933 = sub i32 %916, %923
  %934 = sub i32 %917, %923
  %935 = lshr i16 %921, 5
  %936 = sub i16 %921, %935
  %937 = or disjoint i32 %925, 1
  br label %938

938:                                              ; preds = %932, %926
  %939 = phi i16 [ %930, %926 ], [ %936, %932 ]
  %940 = phi i32 [ %925, %926 ], [ %937, %932 ]
  %941 = phi i32 [ %931, %926 ], [ %899, %932 ]
  %942 = phi i32 [ %923, %926 ], [ %933, %932 ]
  %943 = phi i32 [ %917, %926 ], [ %934, %932 ]
  store i16 %939, ptr %920, align 2
  %944 = shl i32 %886, 1
  store i32 %944, ptr %7, align 4, !tbaa !31
  br label %945

945:                                              ; preds = %57, %938
  %946 = phi i32 [ %944, %938 ], [ %40, %57 ]
  %947 = phi i32 [ %887, %938 ], [ %22, %57 ]
  %948 = phi i32 [ %888, %938 ], [ %24, %57 ]
  %949 = phi i32 [ %889, %938 ], [ %26, %57 ]
  %950 = phi i32 [ %890, %938 ], [ %28, %57 ]
  %951 = phi i32 [ %891, %938 ], [ %20, %57 ]
  %952 = phi ptr [ %892, %938 ], [ %32, %57 ]
  %953 = phi i32 [ %940, %938 ], [ %34, %57 ]
  %954 = phi i32 [ %894, %938 ], [ %36, %57 ]
  %955 = phi i32 [ %941, %938 ], [ %38, %57 ]
  %956 = phi i64 [ %915, %938 ], [ %18, %57 ]
  %957 = phi i32 [ %942, %938 ], [ %13, %57 ]
  %958 = phi i32 [ %943, %938 ], [ %15, %57 ]
  %959 = and i32 %946, %955
  %960 = add i32 %955, %953
  %961 = add i32 %960, %959
  %962 = icmp ult i32 %957, 16777216
  br i1 %962, label %963, label %974

963:                                              ; preds = %945
  %964 = icmp eq i64 %956, %4
  br i1 %964, label %965, label %966

965:                                              ; preds = %963
  store i32 17, ptr %58, align 8, !tbaa !53
  br label %3810

966:                                              ; preds = %963
  %967 = shl nuw i32 %957, 8
  %968 = shl i32 %958, 8
  %969 = add i64 %956, 1
  %970 = getelementptr inbounds i8, ptr %2, i64 %956
  %971 = load i8, ptr %970, align 1, !tbaa !54
  %972 = zext i8 %971 to i32
  %973 = or disjoint i32 %968, %972
  br label %974

974:                                              ; preds = %966, %945
  %975 = phi i64 [ %969, %966 ], [ %956, %945 ]
  %976 = phi i32 [ %967, %966 ], [ %957, %945 ]
  %977 = phi i32 [ %973, %966 ], [ %958, %945 ]
  %978 = lshr i32 %976, 11
  %979 = zext i32 %961 to i64
  %980 = getelementptr inbounds i16, ptr %952, i64 %979
  %981 = load i16, ptr %980, align 2, !tbaa !55
  %982 = zext i16 %981 to i32
  %983 = mul i32 %978, %982
  %984 = icmp ult i32 %977, %983
  %985 = shl i32 %953, 1
  br i1 %984, label %986, label %992

986:                                              ; preds = %974
  %987 = sub nsw i32 2048, %982
  %988 = lshr i32 %987, 5
  %989 = trunc i32 %988 to i16
  %990 = add i16 %981, %989
  store i16 %990, ptr %980, align 2, !tbaa !55
  %991 = xor i32 %959, %955
  br label %998

992:                                              ; preds = %974
  %993 = sub i32 %976, %983
  %994 = sub i32 %977, %983
  %995 = lshr i16 %981, 5
  %996 = sub i16 %981, %995
  store i16 %996, ptr %980, align 2, !tbaa !55
  %997 = or disjoint i32 %985, 1
  br label %998

998:                                              ; preds = %986, %992, %510, %515
  %999 = phi i32 [ %474, %510 ], [ %474, %515 ], [ %947, %986 ], [ %947, %992 ]
  %1000 = phi i32 [ %475, %510 ], [ %475, %515 ], [ %948, %986 ], [ %948, %992 ]
  %1001 = phi i32 [ %476, %510 ], [ %476, %515 ], [ %949, %986 ], [ %949, %992 ]
  %1002 = phi i32 [ %477, %510 ], [ %477, %515 ], [ %950, %986 ], [ %950, %992 ]
  %1003 = phi i32 [ %478, %510 ], [ %478, %515 ], [ %951, %986 ], [ %951, %992 ]
  %1004 = phi ptr [ %479, %510 ], [ %479, %515 ], [ %952, %986 ], [ %952, %992 ]
  %1005 = phi i32 [ %509, %510 ], [ %520, %515 ], [ %985, %986 ], [ %997, %992 ]
  %1006 = phi i32 [ %481, %510 ], [ %481, %515 ], [ %954, %986 ], [ %954, %992 ]
  %1007 = phi i32 [ %482, %510 ], [ %482, %515 ], [ %991, %986 ], [ %959, %992 ]
  %1008 = phi i64 [ %499, %510 ], [ %499, %515 ], [ %975, %986 ], [ %975, %992 ]
  %1009 = phi i32 [ %507, %510 ], [ %516, %515 ], [ %983, %986 ], [ %993, %992 ]
  %1010 = phi i32 [ %501, %510 ], [ %517, %515 ], [ %977, %986 ], [ %994, %992 ]
  %1011 = zext i32 %1003 to i64
  %1012 = getelementptr inbounds [12 x i32], ptr @lzma_decode.next_state, i64 0, i64 %1011
  %1013 = load i32, ptr %1012, align 4, !tbaa !31
  br label %1014

1014:                                             ; preds = %57, %998
  %1015 = phi i32 [ %999, %998 ], [ %22, %57 ]
  %1016 = phi i32 [ %1000, %998 ], [ %24, %57 ]
  %1017 = phi i32 [ %1001, %998 ], [ %26, %57 ]
  %1018 = phi i32 [ %1002, %998 ], [ %28, %57 ]
  %1019 = phi i32 [ %1013, %998 ], [ %20, %57 ]
  %1020 = phi ptr [ %1004, %998 ], [ %32, %57 ]
  %1021 = phi i32 [ %1005, %998 ], [ %34, %57 ]
  %1022 = phi i32 [ %1006, %998 ], [ %36, %57 ]
  %1023 = phi i32 [ %1007, %998 ], [ %38, %57 ]
  %1024 = phi i64 [ %1008, %998 ], [ %18, %57 ]
  %1025 = phi i32 [ %1009, %998 ], [ %13, %57 ]
  %1026 = phi i32 [ %1010, %998 ], [ %15, %57 ]
  %1027 = trunc i32 %1021 to i8
  %1028 = call fastcc zeroext i1 @dict_put(ptr noundef nonnull %6, i8 noundef zeroext %1027) #13
  br i1 %1028, label %1029, label %60

1029:                                             ; preds = %1014
  store i32 18, ptr %58, align 8, !tbaa !53
  br label %3810

1030:                                             ; preds = %108
  %1031 = sub i32 %110, %118
  %1032 = sub i32 %111, %118
  %1033 = lshr i16 %116, 5
  %1034 = sub i16 %116, %1033
  store i16 %1034, ptr %115, align 2, !tbaa !55
  br label %1035

1035:                                             ; preds = %1030, %57
  %1036 = phi i32 [ %78, %1030 ], [ %22, %57 ]
  %1037 = phi i32 [ %79, %1030 ], [ %24, %57 ]
  %1038 = phi i32 [ %80, %1030 ], [ %26, %57 ]
  %1039 = phi i32 [ %81, %1030 ], [ %28, %57 ]
  %1040 = phi i32 [ %82, %1030 ], [ %20, %57 ]
  %1041 = phi ptr [ %83, %1030 ], [ %32, %57 ]
  %1042 = phi i32 [ %84, %1030 ], [ %34, %57 ]
  %1043 = phi i32 [ %85, %1030 ], [ %36, %57 ]
  %1044 = phi i32 [ %86, %1030 ], [ %38, %57 ]
  %1045 = phi i64 [ %109, %1030 ], [ %18, %57 ]
  %1046 = phi i32 [ %88, %1030 ], [ %46, %57 ]
  %1047 = phi i32 [ %1031, %1030 ], [ %13, %57 ]
  %1048 = phi i32 [ %1032, %1030 ], [ %15, %57 ]
  %1049 = icmp ult i32 %1047, 16777216
  br i1 %1049, label %1050, label %1061

1050:                                             ; preds = %1035
  %1051 = icmp eq i64 %1045, %4
  br i1 %1051, label %1052, label %1053

1052:                                             ; preds = %1050
  store i32 19, ptr %58, align 8, !tbaa !53
  br label %3810

1053:                                             ; preds = %1050
  %1054 = shl nuw i32 %1047, 8
  %1055 = shl i32 %1048, 8
  %1056 = add i64 %1045, 1
  %1057 = getelementptr inbounds i8, ptr %2, i64 %1045
  %1058 = load i8, ptr %1057, align 1, !tbaa !54
  %1059 = zext i8 %1058 to i32
  %1060 = or disjoint i32 %1055, %1059
  br label %1061

1061:                                             ; preds = %1053, %1035
  %1062 = phi i64 [ %1056, %1053 ], [ %1045, %1035 ]
  %1063 = phi i32 [ %1054, %1053 ], [ %1047, %1035 ]
  %1064 = phi i32 [ %1060, %1053 ], [ %1048, %1035 ]
  %1065 = lshr i32 %1063, 11
  %1066 = zext i32 %1040 to i64
  %1067 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %1066
  %1068 = load i16, ptr %1067, align 2, !tbaa !55
  %1069 = zext i16 %1068 to i32
  %1070 = mul i32 %1065, %1069
  %1071 = icmp ult i32 %1064, %1070
  br i1 %1071, label %1072, label %2744

1072:                                             ; preds = %1061
  %1073 = sub nsw i32 2048, %1069
  %1074 = lshr i32 %1073, 5
  %1075 = trunc i32 %1074 to i16
  %1076 = add i16 %1068, %1075
  store i16 %1076, ptr %1067, align 2, !tbaa !55
  %1077 = icmp ult i32 %1040, 7
  %1078 = select i1 %1077, i32 7, i32 10
  br label %1079

1079:                                             ; preds = %1072, %57
  %1080 = phi i32 [ %1036, %1072 ], [ %22, %57 ]
  %1081 = phi i32 [ %1036, %1072 ], [ %24, %57 ]
  %1082 = phi i32 [ %1037, %1072 ], [ %26, %57 ]
  %1083 = phi i32 [ %1038, %1072 ], [ %28, %57 ]
  %1084 = phi i32 [ %1078, %1072 ], [ %20, %57 ]
  %1085 = phi ptr [ %1041, %1072 ], [ %32, %57 ]
  %1086 = phi i32 [ 1, %1072 ], [ %34, %57 ]
  %1087 = phi i32 [ %1043, %1072 ], [ %36, %57 ]
  %1088 = phi i32 [ %1044, %1072 ], [ %38, %57 ]
  %1089 = phi i64 [ %1062, %1072 ], [ %18, %57 ]
  %1090 = phi i32 [ %1046, %1072 ], [ %46, %57 ]
  %1091 = phi i32 [ %1070, %1072 ], [ %13, %57 ]
  %1092 = phi i32 [ %1064, %1072 ], [ %15, %57 ]
  %1093 = icmp ult i32 %1091, 16777216
  br i1 %1093, label %1094, label %1105

1094:                                             ; preds = %1079
  %1095 = icmp eq i64 %1089, %4
  br i1 %1095, label %1096, label %1097

1096:                                             ; preds = %1094
  store i32 20, ptr %58, align 8, !tbaa !53
  br label %3810

1097:                                             ; preds = %1094
  %1098 = shl nuw i32 %1091, 8
  %1099 = shl i32 %1092, 8
  %1100 = add i64 %1089, 1
  %1101 = getelementptr inbounds i8, ptr %2, i64 %1089
  %1102 = load i8, ptr %1101, align 1, !tbaa !54
  %1103 = zext i8 %1102 to i32
  %1104 = or disjoint i32 %1099, %1103
  br label %1105

1105:                                             ; preds = %1097, %1079
  %1106 = phi i64 [ %1100, %1097 ], [ %1089, %1079 ]
  %1107 = phi i32 [ %1098, %1097 ], [ %1091, %1079 ]
  %1108 = phi i32 [ %1104, %1097 ], [ %1092, %1079 ]
  %1109 = lshr i32 %1107, 11
  %1110 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %1111 = load i16, ptr %1110, align 4, !tbaa !56
  %1112 = zext i16 %1111 to i32
  %1113 = mul i32 %1109, %1112
  %1114 = icmp ult i32 %1108, %1113
  br i1 %1114, label %1115, label %1276

1115:                                             ; preds = %1105
  %1116 = sub nsw i32 2048, %1112
  %1117 = lshr i32 %1116, 5
  %1118 = trunc i32 %1117 to i16
  %1119 = add i16 %1111, %1118
  store i16 %1119, ptr %1110, align 4, !tbaa !56
  br label %1120

1120:                                             ; preds = %57, %1115
  %1121 = phi i32 [ %1080, %1115 ], [ %22, %57 ]
  %1122 = phi i32 [ %1081, %1115 ], [ %24, %57 ]
  %1123 = phi i32 [ %1082, %1115 ], [ %26, %57 ]
  %1124 = phi i32 [ %1083, %1115 ], [ %28, %57 ]
  %1125 = phi i32 [ %1084, %1115 ], [ %20, %57 ]
  %1126 = phi ptr [ %1085, %1115 ], [ %32, %57 ]
  %1127 = phi i32 [ %1086, %1115 ], [ %34, %57 ]
  %1128 = phi i32 [ %1087, %1115 ], [ %36, %57 ]
  %1129 = phi i32 [ %1088, %1115 ], [ %38, %57 ]
  %1130 = phi i64 [ %1106, %1115 ], [ %18, %57 ]
  %1131 = phi i32 [ %1090, %1115 ], [ %46, %57 ]
  %1132 = phi i32 [ %1113, %1115 ], [ %13, %57 ]
  %1133 = phi i32 [ %1108, %1115 ], [ %15, %57 ]
  %1134 = icmp ult i32 %1132, 16777216
  br i1 %1134, label %1135, label %1146

1135:                                             ; preds = %1120
  %1136 = icmp eq i64 %1130, %4
  br i1 %1136, label %1137, label %1138

1137:                                             ; preds = %1135
  store i32 21, ptr %58, align 8, !tbaa !53
  br label %3810

1138:                                             ; preds = %1135
  %1139 = shl nuw i32 %1132, 8
  %1140 = shl i32 %1133, 8
  %1141 = add i64 %1130, 1
  %1142 = getelementptr inbounds i8, ptr %2, i64 %1130
  %1143 = load i8, ptr %1142, align 1, !tbaa !54
  %1144 = zext i8 %1143 to i32
  %1145 = or disjoint i32 %1140, %1144
  br label %1146

1146:                                             ; preds = %1138, %1120
  %1147 = phi i64 [ %1141, %1138 ], [ %1130, %1120 ]
  %1148 = phi i32 [ %1139, %1138 ], [ %1132, %1120 ]
  %1149 = phi i32 [ %1145, %1138 ], [ %1133, %1120 ]
  %1150 = lshr i32 %1148, 11
  %1151 = zext i32 %1131 to i64
  %1152 = zext i32 %1127 to i64
  %1153 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 2, i64 %1151, i64 %1152
  %1154 = load i16, ptr %1153, align 2, !tbaa !55
  %1155 = zext i16 %1154 to i32
  %1156 = mul i32 %1150, %1155
  %1157 = icmp ult i32 %1149, %1156
  %1158 = shl i32 %1127, 1
  br i1 %1157, label %1159, label %1164

1159:                                             ; preds = %1146
  %1160 = sub nsw i32 2048, %1155
  %1161 = lshr i32 %1160, 5
  %1162 = trunc i32 %1161 to i16
  %1163 = add i16 %1154, %1162
  store i16 %1163, ptr %1153, align 2, !tbaa !55
  br label %1170

1164:                                             ; preds = %1146
  %1165 = sub i32 %1148, %1156
  %1166 = sub i32 %1149, %1156
  %1167 = lshr i16 %1154, 5
  %1168 = sub i16 %1154, %1167
  store i16 %1168, ptr %1153, align 2, !tbaa !55
  %1169 = or disjoint i32 %1158, 1
  br label %1170

1170:                                             ; preds = %1159, %1164, %57
  %1171 = phi i32 [ %1121, %1159 ], [ %1121, %1164 ], [ %22, %57 ]
  %1172 = phi i32 [ %1122, %1159 ], [ %1122, %1164 ], [ %24, %57 ]
  %1173 = phi i32 [ %1123, %1159 ], [ %1123, %1164 ], [ %26, %57 ]
  %1174 = phi i32 [ %1124, %1159 ], [ %1124, %1164 ], [ %28, %57 ]
  %1175 = phi i32 [ %1125, %1159 ], [ %1125, %1164 ], [ %20, %57 ]
  %1176 = phi ptr [ %1126, %1159 ], [ %1126, %1164 ], [ %32, %57 ]
  %1177 = phi i32 [ %1158, %1159 ], [ %1169, %1164 ], [ %34, %57 ]
  %1178 = phi i32 [ %1128, %1159 ], [ %1128, %1164 ], [ %36, %57 ]
  %1179 = phi i32 [ %1129, %1159 ], [ %1129, %1164 ], [ %38, %57 ]
  %1180 = phi i64 [ %1147, %1159 ], [ %1147, %1164 ], [ %18, %57 ]
  %1181 = phi i32 [ %1131, %1159 ], [ %1131, %1164 ], [ %46, %57 ]
  %1182 = phi i32 [ %1156, %1159 ], [ %1165, %1164 ], [ %13, %57 ]
  %1183 = phi i32 [ %1149, %1159 ], [ %1166, %1164 ], [ %15, %57 ]
  %1184 = icmp ult i32 %1182, 16777216
  br i1 %1184, label %1185, label %1196

1185:                                             ; preds = %1170
  %1186 = icmp eq i64 %1180, %4
  br i1 %1186, label %1187, label %1188

1187:                                             ; preds = %1185
  store i32 22, ptr %58, align 8, !tbaa !53
  br label %3810

1188:                                             ; preds = %1185
  %1189 = shl nuw i32 %1182, 8
  %1190 = shl i32 %1183, 8
  %1191 = add i64 %1180, 1
  %1192 = getelementptr inbounds i8, ptr %2, i64 %1180
  %1193 = load i8, ptr %1192, align 1, !tbaa !54
  %1194 = zext i8 %1193 to i32
  %1195 = or disjoint i32 %1190, %1194
  br label %1196

1196:                                             ; preds = %1188, %1170
  %1197 = phi i64 [ %1191, %1188 ], [ %1180, %1170 ]
  %1198 = phi i32 [ %1189, %1188 ], [ %1182, %1170 ]
  %1199 = phi i32 [ %1195, %1188 ], [ %1183, %1170 ]
  %1200 = lshr i32 %1198, 11
  %1201 = zext i32 %1181 to i64
  %1202 = zext i32 %1177 to i64
  %1203 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 2, i64 %1201, i64 %1202
  %1204 = load i16, ptr %1203, align 2, !tbaa !55
  %1205 = zext i16 %1204 to i32
  %1206 = mul i32 %1200, %1205
  %1207 = icmp ult i32 %1199, %1206
  %1208 = shl i32 %1177, 1
  br i1 %1207, label %1209, label %1214

1209:                                             ; preds = %1196
  %1210 = sub nsw i32 2048, %1205
  %1211 = lshr i32 %1210, 5
  %1212 = trunc i32 %1211 to i16
  %1213 = add i16 %1204, %1212
  store i16 %1213, ptr %1203, align 2, !tbaa !55
  br label %1220

1214:                                             ; preds = %1196
  %1215 = sub i32 %1198, %1206
  %1216 = sub i32 %1199, %1206
  %1217 = lshr i16 %1204, 5
  %1218 = sub i16 %1204, %1217
  store i16 %1218, ptr %1203, align 2, !tbaa !55
  %1219 = or disjoint i32 %1208, 1
  br label %1220

1220:                                             ; preds = %1209, %1214, %57
  %1221 = phi i32 [ %1171, %1209 ], [ %1171, %1214 ], [ %22, %57 ]
  %1222 = phi i32 [ %1172, %1209 ], [ %1172, %1214 ], [ %24, %57 ]
  %1223 = phi i32 [ %1173, %1209 ], [ %1173, %1214 ], [ %26, %57 ]
  %1224 = phi i32 [ %1174, %1209 ], [ %1174, %1214 ], [ %28, %57 ]
  %1225 = phi i32 [ %1175, %1209 ], [ %1175, %1214 ], [ %20, %57 ]
  %1226 = phi ptr [ %1176, %1209 ], [ %1176, %1214 ], [ %32, %57 ]
  %1227 = phi i32 [ %1208, %1209 ], [ %1219, %1214 ], [ %34, %57 ]
  %1228 = phi i32 [ %1178, %1209 ], [ %1178, %1214 ], [ %36, %57 ]
  %1229 = phi i32 [ %1179, %1209 ], [ %1179, %1214 ], [ %38, %57 ]
  %1230 = phi i64 [ %1197, %1209 ], [ %1197, %1214 ], [ %18, %57 ]
  %1231 = phi i32 [ %1181, %1209 ], [ %1181, %1214 ], [ %46, %57 ]
  %1232 = phi i32 [ %1206, %1209 ], [ %1215, %1214 ], [ %13, %57 ]
  %1233 = phi i32 [ %1199, %1209 ], [ %1216, %1214 ], [ %15, %57 ]
  %1234 = icmp ult i32 %1232, 16777216
  br i1 %1234, label %1235, label %1246

1235:                                             ; preds = %1220
  %1236 = icmp eq i64 %1230, %4
  br i1 %1236, label %1237, label %1238

1237:                                             ; preds = %1235
  store i32 23, ptr %58, align 8, !tbaa !53
  br label %3810

1238:                                             ; preds = %1235
  %1239 = shl nuw i32 %1232, 8
  %1240 = shl i32 %1233, 8
  %1241 = add i64 %1230, 1
  %1242 = getelementptr inbounds i8, ptr %2, i64 %1230
  %1243 = load i8, ptr %1242, align 1, !tbaa !54
  %1244 = zext i8 %1243 to i32
  %1245 = or disjoint i32 %1240, %1244
  br label %1246

1246:                                             ; preds = %1238, %1220
  %1247 = phi i64 [ %1241, %1238 ], [ %1230, %1220 ]
  %1248 = phi i32 [ %1239, %1238 ], [ %1232, %1220 ]
  %1249 = phi i32 [ %1245, %1238 ], [ %1233, %1220 ]
  %1250 = lshr i32 %1248, 11
  %1251 = zext i32 %1231 to i64
  %1252 = zext i32 %1227 to i64
  %1253 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 2, i64 %1251, i64 %1252
  %1254 = load i16, ptr %1253, align 2, !tbaa !55
  %1255 = zext i16 %1254 to i32
  %1256 = mul i32 %1250, %1255
  %1257 = icmp ult i32 %1249, %1256
  %1258 = shl i32 %1227, 1
  br i1 %1257, label %1259, label %1264

1259:                                             ; preds = %1246
  %1260 = sub nsw i32 2048, %1255
  %1261 = lshr i32 %1260, 5
  %1262 = trunc i32 %1261 to i16
  %1263 = add i16 %1254, %1262
  br label %1270

1264:                                             ; preds = %1246
  %1265 = sub i32 %1248, %1256
  %1266 = sub i32 %1249, %1256
  %1267 = lshr i16 %1254, 5
  %1268 = sub i16 %1254, %1267
  %1269 = or disjoint i32 %1258, 1
  br label %1270

1270:                                             ; preds = %1264, %1259
  %1271 = phi i16 [ %1263, %1259 ], [ %1268, %1264 ]
  %1272 = phi i32 [ %1258, %1259 ], [ %1269, %1264 ]
  %1273 = phi i32 [ %1256, %1259 ], [ %1265, %1264 ]
  %1274 = phi i32 [ %1249, %1259 ], [ %1266, %1264 ]
  store i16 %1271, ptr %1253, align 2
  %1275 = add i32 %1272, -6
  store i32 %1275, ptr %7, align 4, !tbaa !31
  br label %1873

1276:                                             ; preds = %1105
  %1277 = sub i32 %1107, %1113
  %1278 = sub i32 %1108, %1113
  %1279 = lshr i16 %1111, 5
  %1280 = sub i16 %1111, %1279
  store i16 %1280, ptr %1110, align 4, !tbaa !56
  br label %1281

1281:                                             ; preds = %1276, %57
  %1282 = phi i32 [ %1080, %1276 ], [ %22, %57 ]
  %1283 = phi i32 [ %1081, %1276 ], [ %24, %57 ]
  %1284 = phi i32 [ %1082, %1276 ], [ %26, %57 ]
  %1285 = phi i32 [ %1083, %1276 ], [ %28, %57 ]
  %1286 = phi i32 [ %1084, %1276 ], [ %20, %57 ]
  %1287 = phi ptr [ %1085, %1276 ], [ %32, %57 ]
  %1288 = phi i32 [ %1086, %1276 ], [ %34, %57 ]
  %1289 = phi i32 [ %1087, %1276 ], [ %36, %57 ]
  %1290 = phi i32 [ %1088, %1276 ], [ %38, %57 ]
  %1291 = phi i64 [ %1106, %1276 ], [ %18, %57 ]
  %1292 = phi i32 [ %1090, %1276 ], [ %46, %57 ]
  %1293 = phi i32 [ %1277, %1276 ], [ %13, %57 ]
  %1294 = phi i32 [ %1278, %1276 ], [ %15, %57 ]
  %1295 = icmp ult i32 %1293, 16777216
  br i1 %1295, label %1296, label %1307

1296:                                             ; preds = %1281
  %1297 = icmp eq i64 %1291, %4
  br i1 %1297, label %1298, label %1299

1298:                                             ; preds = %1296
  store i32 24, ptr %58, align 8, !tbaa !53
  br label %3810

1299:                                             ; preds = %1296
  %1300 = shl nuw i32 %1293, 8
  %1301 = shl i32 %1294, 8
  %1302 = add i64 %1291, 1
  %1303 = getelementptr inbounds i8, ptr %2, i64 %1291
  %1304 = load i8, ptr %1303, align 1, !tbaa !54
  %1305 = zext i8 %1304 to i32
  %1306 = or disjoint i32 %1301, %1305
  br label %1307

1307:                                             ; preds = %1299, %1281
  %1308 = phi i64 [ %1302, %1299 ], [ %1291, %1281 ]
  %1309 = phi i32 [ %1300, %1299 ], [ %1293, %1281 ]
  %1310 = phi i32 [ %1306, %1299 ], [ %1294, %1281 ]
  %1311 = lshr i32 %1309, 11
  %1312 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 1
  %1313 = load i16, ptr %1312, align 2, !tbaa !57
  %1314 = zext i16 %1313 to i32
  %1315 = mul i32 %1311, %1314
  %1316 = icmp ult i32 %1310, %1315
  br i1 %1316, label %1317, label %1478

1317:                                             ; preds = %1307
  %1318 = sub nsw i32 2048, %1314
  %1319 = lshr i32 %1318, 5
  %1320 = trunc i32 %1319 to i16
  %1321 = add i16 %1313, %1320
  store i16 %1321, ptr %1312, align 2, !tbaa !57
  br label %1322

1322:                                             ; preds = %57, %1317
  %1323 = phi i32 [ %1282, %1317 ], [ %22, %57 ]
  %1324 = phi i32 [ %1283, %1317 ], [ %24, %57 ]
  %1325 = phi i32 [ %1284, %1317 ], [ %26, %57 ]
  %1326 = phi i32 [ %1285, %1317 ], [ %28, %57 ]
  %1327 = phi i32 [ %1286, %1317 ], [ %20, %57 ]
  %1328 = phi ptr [ %1287, %1317 ], [ %32, %57 ]
  %1329 = phi i32 [ %1288, %1317 ], [ %34, %57 ]
  %1330 = phi i32 [ %1289, %1317 ], [ %36, %57 ]
  %1331 = phi i32 [ %1290, %1317 ], [ %38, %57 ]
  %1332 = phi i64 [ %1308, %1317 ], [ %18, %57 ]
  %1333 = phi i32 [ %1292, %1317 ], [ %46, %57 ]
  %1334 = phi i32 [ %1315, %1317 ], [ %13, %57 ]
  %1335 = phi i32 [ %1310, %1317 ], [ %15, %57 ]
  %1336 = icmp ult i32 %1334, 16777216
  br i1 %1336, label %1337, label %1348

1337:                                             ; preds = %1322
  %1338 = icmp eq i64 %1332, %4
  br i1 %1338, label %1339, label %1340

1339:                                             ; preds = %1337
  store i32 25, ptr %58, align 8, !tbaa !53
  br label %3810

1340:                                             ; preds = %1337
  %1341 = shl nuw i32 %1334, 8
  %1342 = shl i32 %1335, 8
  %1343 = add i64 %1332, 1
  %1344 = getelementptr inbounds i8, ptr %2, i64 %1332
  %1345 = load i8, ptr %1344, align 1, !tbaa !54
  %1346 = zext i8 %1345 to i32
  %1347 = or disjoint i32 %1342, %1346
  br label %1348

1348:                                             ; preds = %1340, %1322
  %1349 = phi i64 [ %1343, %1340 ], [ %1332, %1322 ]
  %1350 = phi i32 [ %1341, %1340 ], [ %1334, %1322 ]
  %1351 = phi i32 [ %1347, %1340 ], [ %1335, %1322 ]
  %1352 = lshr i32 %1350, 11
  %1353 = zext i32 %1333 to i64
  %1354 = zext i32 %1329 to i64
  %1355 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 3, i64 %1353, i64 %1354
  %1356 = load i16, ptr %1355, align 2, !tbaa !55
  %1357 = zext i16 %1356 to i32
  %1358 = mul i32 %1352, %1357
  %1359 = icmp ult i32 %1351, %1358
  %1360 = shl i32 %1329, 1
  br i1 %1359, label %1361, label %1366

1361:                                             ; preds = %1348
  %1362 = sub nsw i32 2048, %1357
  %1363 = lshr i32 %1362, 5
  %1364 = trunc i32 %1363 to i16
  %1365 = add i16 %1356, %1364
  store i16 %1365, ptr %1355, align 2, !tbaa !55
  br label %1372

1366:                                             ; preds = %1348
  %1367 = sub i32 %1350, %1358
  %1368 = sub i32 %1351, %1358
  %1369 = lshr i16 %1356, 5
  %1370 = sub i16 %1356, %1369
  store i16 %1370, ptr %1355, align 2, !tbaa !55
  %1371 = or disjoint i32 %1360, 1
  br label %1372

1372:                                             ; preds = %1361, %1366, %57
  %1373 = phi i32 [ %1323, %1361 ], [ %1323, %1366 ], [ %22, %57 ]
  %1374 = phi i32 [ %1324, %1361 ], [ %1324, %1366 ], [ %24, %57 ]
  %1375 = phi i32 [ %1325, %1361 ], [ %1325, %1366 ], [ %26, %57 ]
  %1376 = phi i32 [ %1326, %1361 ], [ %1326, %1366 ], [ %28, %57 ]
  %1377 = phi i32 [ %1327, %1361 ], [ %1327, %1366 ], [ %20, %57 ]
  %1378 = phi ptr [ %1328, %1361 ], [ %1328, %1366 ], [ %32, %57 ]
  %1379 = phi i32 [ %1360, %1361 ], [ %1371, %1366 ], [ %34, %57 ]
  %1380 = phi i32 [ %1330, %1361 ], [ %1330, %1366 ], [ %36, %57 ]
  %1381 = phi i32 [ %1331, %1361 ], [ %1331, %1366 ], [ %38, %57 ]
  %1382 = phi i64 [ %1349, %1361 ], [ %1349, %1366 ], [ %18, %57 ]
  %1383 = phi i32 [ %1333, %1361 ], [ %1333, %1366 ], [ %46, %57 ]
  %1384 = phi i32 [ %1358, %1361 ], [ %1367, %1366 ], [ %13, %57 ]
  %1385 = phi i32 [ %1351, %1361 ], [ %1368, %1366 ], [ %15, %57 ]
  %1386 = icmp ult i32 %1384, 16777216
  br i1 %1386, label %1387, label %1398

1387:                                             ; preds = %1372
  %1388 = icmp eq i64 %1382, %4
  br i1 %1388, label %1389, label %1390

1389:                                             ; preds = %1387
  store i32 26, ptr %58, align 8, !tbaa !53
  br label %3810

1390:                                             ; preds = %1387
  %1391 = shl nuw i32 %1384, 8
  %1392 = shl i32 %1385, 8
  %1393 = add i64 %1382, 1
  %1394 = getelementptr inbounds i8, ptr %2, i64 %1382
  %1395 = load i8, ptr %1394, align 1, !tbaa !54
  %1396 = zext i8 %1395 to i32
  %1397 = or disjoint i32 %1392, %1396
  br label %1398

1398:                                             ; preds = %1390, %1372
  %1399 = phi i64 [ %1393, %1390 ], [ %1382, %1372 ]
  %1400 = phi i32 [ %1391, %1390 ], [ %1384, %1372 ]
  %1401 = phi i32 [ %1397, %1390 ], [ %1385, %1372 ]
  %1402 = lshr i32 %1400, 11
  %1403 = zext i32 %1383 to i64
  %1404 = zext i32 %1379 to i64
  %1405 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 3, i64 %1403, i64 %1404
  %1406 = load i16, ptr %1405, align 2, !tbaa !55
  %1407 = zext i16 %1406 to i32
  %1408 = mul i32 %1402, %1407
  %1409 = icmp ult i32 %1401, %1408
  %1410 = shl i32 %1379, 1
  br i1 %1409, label %1411, label %1416

1411:                                             ; preds = %1398
  %1412 = sub nsw i32 2048, %1407
  %1413 = lshr i32 %1412, 5
  %1414 = trunc i32 %1413 to i16
  %1415 = add i16 %1406, %1414
  store i16 %1415, ptr %1405, align 2, !tbaa !55
  br label %1422

1416:                                             ; preds = %1398
  %1417 = sub i32 %1400, %1408
  %1418 = sub i32 %1401, %1408
  %1419 = lshr i16 %1406, 5
  %1420 = sub i16 %1406, %1419
  store i16 %1420, ptr %1405, align 2, !tbaa !55
  %1421 = or disjoint i32 %1410, 1
  br label %1422

1422:                                             ; preds = %1411, %1416, %57
  %1423 = phi i32 [ %1373, %1411 ], [ %1373, %1416 ], [ %22, %57 ]
  %1424 = phi i32 [ %1374, %1411 ], [ %1374, %1416 ], [ %24, %57 ]
  %1425 = phi i32 [ %1375, %1411 ], [ %1375, %1416 ], [ %26, %57 ]
  %1426 = phi i32 [ %1376, %1411 ], [ %1376, %1416 ], [ %28, %57 ]
  %1427 = phi i32 [ %1377, %1411 ], [ %1377, %1416 ], [ %20, %57 ]
  %1428 = phi ptr [ %1378, %1411 ], [ %1378, %1416 ], [ %32, %57 ]
  %1429 = phi i32 [ %1410, %1411 ], [ %1421, %1416 ], [ %34, %57 ]
  %1430 = phi i32 [ %1380, %1411 ], [ %1380, %1416 ], [ %36, %57 ]
  %1431 = phi i32 [ %1381, %1411 ], [ %1381, %1416 ], [ %38, %57 ]
  %1432 = phi i64 [ %1399, %1411 ], [ %1399, %1416 ], [ %18, %57 ]
  %1433 = phi i32 [ %1383, %1411 ], [ %1383, %1416 ], [ %46, %57 ]
  %1434 = phi i32 [ %1408, %1411 ], [ %1417, %1416 ], [ %13, %57 ]
  %1435 = phi i32 [ %1401, %1411 ], [ %1418, %1416 ], [ %15, %57 ]
  %1436 = icmp ult i32 %1434, 16777216
  br i1 %1436, label %1437, label %1448

1437:                                             ; preds = %1422
  %1438 = icmp eq i64 %1432, %4
  br i1 %1438, label %1439, label %1440

1439:                                             ; preds = %1437
  store i32 27, ptr %58, align 8, !tbaa !53
  br label %3810

1440:                                             ; preds = %1437
  %1441 = shl nuw i32 %1434, 8
  %1442 = shl i32 %1435, 8
  %1443 = add i64 %1432, 1
  %1444 = getelementptr inbounds i8, ptr %2, i64 %1432
  %1445 = load i8, ptr %1444, align 1, !tbaa !54
  %1446 = zext i8 %1445 to i32
  %1447 = or disjoint i32 %1442, %1446
  br label %1448

1448:                                             ; preds = %1440, %1422
  %1449 = phi i64 [ %1443, %1440 ], [ %1432, %1422 ]
  %1450 = phi i32 [ %1441, %1440 ], [ %1434, %1422 ]
  %1451 = phi i32 [ %1447, %1440 ], [ %1435, %1422 ]
  %1452 = lshr i32 %1450, 11
  %1453 = zext i32 %1433 to i64
  %1454 = zext i32 %1429 to i64
  %1455 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 3, i64 %1453, i64 %1454
  %1456 = load i16, ptr %1455, align 2, !tbaa !55
  %1457 = zext i16 %1456 to i32
  %1458 = mul i32 %1452, %1457
  %1459 = icmp ult i32 %1451, %1458
  %1460 = shl i32 %1429, 1
  br i1 %1459, label %1461, label %1466

1461:                                             ; preds = %1448
  %1462 = sub nsw i32 2048, %1457
  %1463 = lshr i32 %1462, 5
  %1464 = trunc i32 %1463 to i16
  %1465 = add i16 %1456, %1464
  br label %1472

1466:                                             ; preds = %1448
  %1467 = sub i32 %1450, %1458
  %1468 = sub i32 %1451, %1458
  %1469 = lshr i16 %1456, 5
  %1470 = sub i16 %1456, %1469
  %1471 = or disjoint i32 %1460, 1
  br label %1472

1472:                                             ; preds = %1466, %1461
  %1473 = phi i16 [ %1465, %1461 ], [ %1470, %1466 ]
  %1474 = phi i32 [ %1460, %1461 ], [ %1471, %1466 ]
  %1475 = phi i32 [ %1458, %1461 ], [ %1467, %1466 ]
  %1476 = phi i32 [ %1451, %1461 ], [ %1468, %1466 ]
  store i16 %1473, ptr %1455, align 2
  %1477 = add i32 %1474, 2
  store i32 %1477, ptr %7, align 4, !tbaa !31
  br label %1873

1478:                                             ; preds = %1307
  %1479 = sub i32 %1309, %1315
  %1480 = sub i32 %1310, %1315
  %1481 = lshr i16 %1313, 5
  %1482 = sub i16 %1313, %1481
  store i16 %1482, ptr %1312, align 2, !tbaa !57
  br label %1483

1483:                                             ; preds = %57, %1478
  %1484 = phi i32 [ %1282, %1478 ], [ %22, %57 ]
  %1485 = phi i32 [ %1283, %1478 ], [ %24, %57 ]
  %1486 = phi i32 [ %1284, %1478 ], [ %26, %57 ]
  %1487 = phi i32 [ %1285, %1478 ], [ %28, %57 ]
  %1488 = phi i32 [ %1286, %1478 ], [ %20, %57 ]
  %1489 = phi ptr [ %1287, %1478 ], [ %32, %57 ]
  %1490 = phi i32 [ %1288, %1478 ], [ %34, %57 ]
  %1491 = phi i32 [ %1289, %1478 ], [ %36, %57 ]
  %1492 = phi i32 [ %1290, %1478 ], [ %38, %57 ]
  %1493 = phi i64 [ %1308, %1478 ], [ %18, %57 ]
  %1494 = phi i32 [ %1479, %1478 ], [ %13, %57 ]
  %1495 = phi i32 [ %1480, %1478 ], [ %15, %57 ]
  %1496 = icmp ult i32 %1494, 16777216
  br i1 %1496, label %1497, label %1508

1497:                                             ; preds = %1483
  %1498 = icmp eq i64 %1493, %4
  br i1 %1498, label %1499, label %1500

1499:                                             ; preds = %1497
  store i32 28, ptr %58, align 8, !tbaa !53
  br label %3810

1500:                                             ; preds = %1497
  %1501 = shl nuw i32 %1494, 8
  %1502 = shl i32 %1495, 8
  %1503 = add i64 %1493, 1
  %1504 = getelementptr inbounds i8, ptr %2, i64 %1493
  %1505 = load i8, ptr %1504, align 1, !tbaa !54
  %1506 = zext i8 %1505 to i32
  %1507 = or disjoint i32 %1502, %1506
  br label %1508

1508:                                             ; preds = %1500, %1483
  %1509 = phi i64 [ %1503, %1500 ], [ %1493, %1483 ]
  %1510 = phi i32 [ %1501, %1500 ], [ %1494, %1483 ]
  %1511 = phi i32 [ %1507, %1500 ], [ %1495, %1483 ]
  %1512 = lshr i32 %1510, 11
  %1513 = zext i32 %1490 to i64
  %1514 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1513
  %1515 = load i16, ptr %1514, align 2, !tbaa !55
  %1516 = zext i16 %1515 to i32
  %1517 = mul i32 %1512, %1516
  %1518 = icmp ult i32 %1511, %1517
  %1519 = shl i32 %1490, 1
  br i1 %1518, label %1520, label %1525

1520:                                             ; preds = %1508
  %1521 = sub nsw i32 2048, %1516
  %1522 = lshr i32 %1521, 5
  %1523 = trunc i32 %1522 to i16
  %1524 = add i16 %1515, %1523
  store i16 %1524, ptr %1514, align 2, !tbaa !55
  br label %1531

1525:                                             ; preds = %1508
  %1526 = sub i32 %1510, %1517
  %1527 = sub i32 %1511, %1517
  %1528 = lshr i16 %1515, 5
  %1529 = sub i16 %1515, %1528
  store i16 %1529, ptr %1514, align 2, !tbaa !55
  %1530 = or disjoint i32 %1519, 1
  br label %1531

1531:                                             ; preds = %1520, %1525, %57
  %1532 = phi i32 [ %1484, %1520 ], [ %1484, %1525 ], [ %22, %57 ]
  %1533 = phi i32 [ %1485, %1520 ], [ %1485, %1525 ], [ %24, %57 ]
  %1534 = phi i32 [ %1486, %1520 ], [ %1486, %1525 ], [ %26, %57 ]
  %1535 = phi i32 [ %1487, %1520 ], [ %1487, %1525 ], [ %28, %57 ]
  %1536 = phi i32 [ %1488, %1520 ], [ %1488, %1525 ], [ %20, %57 ]
  %1537 = phi ptr [ %1489, %1520 ], [ %1489, %1525 ], [ %32, %57 ]
  %1538 = phi i32 [ %1519, %1520 ], [ %1530, %1525 ], [ %34, %57 ]
  %1539 = phi i32 [ %1491, %1520 ], [ %1491, %1525 ], [ %36, %57 ]
  %1540 = phi i32 [ %1492, %1520 ], [ %1492, %1525 ], [ %38, %57 ]
  %1541 = phi i64 [ %1509, %1520 ], [ %1509, %1525 ], [ %18, %57 ]
  %1542 = phi i32 [ %1517, %1520 ], [ %1526, %1525 ], [ %13, %57 ]
  %1543 = phi i32 [ %1511, %1520 ], [ %1527, %1525 ], [ %15, %57 ]
  %1544 = icmp ult i32 %1542, 16777216
  br i1 %1544, label %1545, label %1556

1545:                                             ; preds = %1531
  %1546 = icmp eq i64 %1541, %4
  br i1 %1546, label %1547, label %1548

1547:                                             ; preds = %1545
  store i32 29, ptr %58, align 8, !tbaa !53
  br label %3810

1548:                                             ; preds = %1545
  %1549 = shl nuw i32 %1542, 8
  %1550 = shl i32 %1543, 8
  %1551 = add i64 %1541, 1
  %1552 = getelementptr inbounds i8, ptr %2, i64 %1541
  %1553 = load i8, ptr %1552, align 1, !tbaa !54
  %1554 = zext i8 %1553 to i32
  %1555 = or disjoint i32 %1550, %1554
  br label %1556

1556:                                             ; preds = %1548, %1531
  %1557 = phi i64 [ %1551, %1548 ], [ %1541, %1531 ]
  %1558 = phi i32 [ %1549, %1548 ], [ %1542, %1531 ]
  %1559 = phi i32 [ %1555, %1548 ], [ %1543, %1531 ]
  %1560 = lshr i32 %1558, 11
  %1561 = zext i32 %1538 to i64
  %1562 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1561
  %1563 = load i16, ptr %1562, align 2, !tbaa !55
  %1564 = zext i16 %1563 to i32
  %1565 = mul i32 %1560, %1564
  %1566 = icmp ult i32 %1559, %1565
  %1567 = shl i32 %1538, 1
  br i1 %1566, label %1568, label %1573

1568:                                             ; preds = %1556
  %1569 = sub nsw i32 2048, %1564
  %1570 = lshr i32 %1569, 5
  %1571 = trunc i32 %1570 to i16
  %1572 = add i16 %1563, %1571
  store i16 %1572, ptr %1562, align 2, !tbaa !55
  br label %1579

1573:                                             ; preds = %1556
  %1574 = sub i32 %1558, %1565
  %1575 = sub i32 %1559, %1565
  %1576 = lshr i16 %1563, 5
  %1577 = sub i16 %1563, %1576
  store i16 %1577, ptr %1562, align 2, !tbaa !55
  %1578 = or disjoint i32 %1567, 1
  br label %1579

1579:                                             ; preds = %1568, %1573, %57
  %1580 = phi i32 [ %1532, %1568 ], [ %1532, %1573 ], [ %22, %57 ]
  %1581 = phi i32 [ %1533, %1568 ], [ %1533, %1573 ], [ %24, %57 ]
  %1582 = phi i32 [ %1534, %1568 ], [ %1534, %1573 ], [ %26, %57 ]
  %1583 = phi i32 [ %1535, %1568 ], [ %1535, %1573 ], [ %28, %57 ]
  %1584 = phi i32 [ %1536, %1568 ], [ %1536, %1573 ], [ %20, %57 ]
  %1585 = phi ptr [ %1537, %1568 ], [ %1537, %1573 ], [ %32, %57 ]
  %1586 = phi i32 [ %1567, %1568 ], [ %1578, %1573 ], [ %34, %57 ]
  %1587 = phi i32 [ %1539, %1568 ], [ %1539, %1573 ], [ %36, %57 ]
  %1588 = phi i32 [ %1540, %1568 ], [ %1540, %1573 ], [ %38, %57 ]
  %1589 = phi i64 [ %1557, %1568 ], [ %1557, %1573 ], [ %18, %57 ]
  %1590 = phi i32 [ %1565, %1568 ], [ %1574, %1573 ], [ %13, %57 ]
  %1591 = phi i32 [ %1559, %1568 ], [ %1575, %1573 ], [ %15, %57 ]
  %1592 = icmp ult i32 %1590, 16777216
  br i1 %1592, label %1593, label %1604

1593:                                             ; preds = %1579
  %1594 = icmp eq i64 %1589, %4
  br i1 %1594, label %1595, label %1596

1595:                                             ; preds = %1593
  store i32 30, ptr %58, align 8, !tbaa !53
  br label %3810

1596:                                             ; preds = %1593
  %1597 = shl nuw i32 %1590, 8
  %1598 = shl i32 %1591, 8
  %1599 = add i64 %1589, 1
  %1600 = getelementptr inbounds i8, ptr %2, i64 %1589
  %1601 = load i8, ptr %1600, align 1, !tbaa !54
  %1602 = zext i8 %1601 to i32
  %1603 = or disjoint i32 %1598, %1602
  br label %1604

1604:                                             ; preds = %1596, %1579
  %1605 = phi i64 [ %1599, %1596 ], [ %1589, %1579 ]
  %1606 = phi i32 [ %1597, %1596 ], [ %1590, %1579 ]
  %1607 = phi i32 [ %1603, %1596 ], [ %1591, %1579 ]
  %1608 = lshr i32 %1606, 11
  %1609 = zext i32 %1586 to i64
  %1610 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1609
  %1611 = load i16, ptr %1610, align 2, !tbaa !55
  %1612 = zext i16 %1611 to i32
  %1613 = mul i32 %1608, %1612
  %1614 = icmp ult i32 %1607, %1613
  %1615 = shl i32 %1586, 1
  br i1 %1614, label %1616, label %1621

1616:                                             ; preds = %1604
  %1617 = sub nsw i32 2048, %1612
  %1618 = lshr i32 %1617, 5
  %1619 = trunc i32 %1618 to i16
  %1620 = add i16 %1611, %1619
  store i16 %1620, ptr %1610, align 2, !tbaa !55
  br label %1627

1621:                                             ; preds = %1604
  %1622 = sub i32 %1606, %1613
  %1623 = sub i32 %1607, %1613
  %1624 = lshr i16 %1611, 5
  %1625 = sub i16 %1611, %1624
  store i16 %1625, ptr %1610, align 2, !tbaa !55
  %1626 = or disjoint i32 %1615, 1
  br label %1627

1627:                                             ; preds = %1616, %1621, %57
  %1628 = phi i32 [ %1580, %1616 ], [ %1580, %1621 ], [ %22, %57 ]
  %1629 = phi i32 [ %1581, %1616 ], [ %1581, %1621 ], [ %24, %57 ]
  %1630 = phi i32 [ %1582, %1616 ], [ %1582, %1621 ], [ %26, %57 ]
  %1631 = phi i32 [ %1583, %1616 ], [ %1583, %1621 ], [ %28, %57 ]
  %1632 = phi i32 [ %1584, %1616 ], [ %1584, %1621 ], [ %20, %57 ]
  %1633 = phi ptr [ %1585, %1616 ], [ %1585, %1621 ], [ %32, %57 ]
  %1634 = phi i32 [ %1615, %1616 ], [ %1626, %1621 ], [ %34, %57 ]
  %1635 = phi i32 [ %1587, %1616 ], [ %1587, %1621 ], [ %36, %57 ]
  %1636 = phi i32 [ %1588, %1616 ], [ %1588, %1621 ], [ %38, %57 ]
  %1637 = phi i64 [ %1605, %1616 ], [ %1605, %1621 ], [ %18, %57 ]
  %1638 = phi i32 [ %1613, %1616 ], [ %1622, %1621 ], [ %13, %57 ]
  %1639 = phi i32 [ %1607, %1616 ], [ %1623, %1621 ], [ %15, %57 ]
  %1640 = icmp ult i32 %1638, 16777216
  br i1 %1640, label %1641, label %1652

1641:                                             ; preds = %1627
  %1642 = icmp eq i64 %1637, %4
  br i1 %1642, label %1643, label %1644

1643:                                             ; preds = %1641
  store i32 31, ptr %58, align 8, !tbaa !53
  br label %3810

1644:                                             ; preds = %1641
  %1645 = shl nuw i32 %1638, 8
  %1646 = shl i32 %1639, 8
  %1647 = add i64 %1637, 1
  %1648 = getelementptr inbounds i8, ptr %2, i64 %1637
  %1649 = load i8, ptr %1648, align 1, !tbaa !54
  %1650 = zext i8 %1649 to i32
  %1651 = or disjoint i32 %1646, %1650
  br label %1652

1652:                                             ; preds = %1644, %1627
  %1653 = phi i64 [ %1647, %1644 ], [ %1637, %1627 ]
  %1654 = phi i32 [ %1645, %1644 ], [ %1638, %1627 ]
  %1655 = phi i32 [ %1651, %1644 ], [ %1639, %1627 ]
  %1656 = lshr i32 %1654, 11
  %1657 = zext i32 %1634 to i64
  %1658 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1657
  %1659 = load i16, ptr %1658, align 2, !tbaa !55
  %1660 = zext i16 %1659 to i32
  %1661 = mul i32 %1656, %1660
  %1662 = icmp ult i32 %1655, %1661
  %1663 = shl i32 %1634, 1
  br i1 %1662, label %1664, label %1669

1664:                                             ; preds = %1652
  %1665 = sub nsw i32 2048, %1660
  %1666 = lshr i32 %1665, 5
  %1667 = trunc i32 %1666 to i16
  %1668 = add i16 %1659, %1667
  store i16 %1668, ptr %1658, align 2, !tbaa !55
  br label %1675

1669:                                             ; preds = %1652
  %1670 = sub i32 %1654, %1661
  %1671 = sub i32 %1655, %1661
  %1672 = lshr i16 %1659, 5
  %1673 = sub i16 %1659, %1672
  store i16 %1673, ptr %1658, align 2, !tbaa !55
  %1674 = or disjoint i32 %1663, 1
  br label %1675

1675:                                             ; preds = %1664, %1669, %57
  %1676 = phi i32 [ %1628, %1664 ], [ %1628, %1669 ], [ %22, %57 ]
  %1677 = phi i32 [ %1629, %1664 ], [ %1629, %1669 ], [ %24, %57 ]
  %1678 = phi i32 [ %1630, %1664 ], [ %1630, %1669 ], [ %26, %57 ]
  %1679 = phi i32 [ %1631, %1664 ], [ %1631, %1669 ], [ %28, %57 ]
  %1680 = phi i32 [ %1632, %1664 ], [ %1632, %1669 ], [ %20, %57 ]
  %1681 = phi ptr [ %1633, %1664 ], [ %1633, %1669 ], [ %32, %57 ]
  %1682 = phi i32 [ %1663, %1664 ], [ %1674, %1669 ], [ %34, %57 ]
  %1683 = phi i32 [ %1635, %1664 ], [ %1635, %1669 ], [ %36, %57 ]
  %1684 = phi i32 [ %1636, %1664 ], [ %1636, %1669 ], [ %38, %57 ]
  %1685 = phi i64 [ %1653, %1664 ], [ %1653, %1669 ], [ %18, %57 ]
  %1686 = phi i32 [ %1661, %1664 ], [ %1670, %1669 ], [ %13, %57 ]
  %1687 = phi i32 [ %1655, %1664 ], [ %1671, %1669 ], [ %15, %57 ]
  %1688 = icmp ult i32 %1686, 16777216
  br i1 %1688, label %1689, label %1700

1689:                                             ; preds = %1675
  %1690 = icmp eq i64 %1685, %4
  br i1 %1690, label %1691, label %1692

1691:                                             ; preds = %1689
  store i32 32, ptr %58, align 8, !tbaa !53
  br label %3810

1692:                                             ; preds = %1689
  %1693 = shl nuw i32 %1686, 8
  %1694 = shl i32 %1687, 8
  %1695 = add i64 %1685, 1
  %1696 = getelementptr inbounds i8, ptr %2, i64 %1685
  %1697 = load i8, ptr %1696, align 1, !tbaa !54
  %1698 = zext i8 %1697 to i32
  %1699 = or disjoint i32 %1694, %1698
  br label %1700

1700:                                             ; preds = %1692, %1675
  %1701 = phi i64 [ %1695, %1692 ], [ %1685, %1675 ]
  %1702 = phi i32 [ %1693, %1692 ], [ %1686, %1675 ]
  %1703 = phi i32 [ %1699, %1692 ], [ %1687, %1675 ]
  %1704 = lshr i32 %1702, 11
  %1705 = zext i32 %1682 to i64
  %1706 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1705
  %1707 = load i16, ptr %1706, align 2, !tbaa !55
  %1708 = zext i16 %1707 to i32
  %1709 = mul i32 %1704, %1708
  %1710 = icmp ult i32 %1703, %1709
  %1711 = shl i32 %1682, 1
  br i1 %1710, label %1712, label %1717

1712:                                             ; preds = %1700
  %1713 = sub nsw i32 2048, %1708
  %1714 = lshr i32 %1713, 5
  %1715 = trunc i32 %1714 to i16
  %1716 = add i16 %1707, %1715
  store i16 %1716, ptr %1706, align 2, !tbaa !55
  br label %1723

1717:                                             ; preds = %1700
  %1718 = sub i32 %1702, %1709
  %1719 = sub i32 %1703, %1709
  %1720 = lshr i16 %1707, 5
  %1721 = sub i16 %1707, %1720
  store i16 %1721, ptr %1706, align 2, !tbaa !55
  %1722 = or disjoint i32 %1711, 1
  br label %1723

1723:                                             ; preds = %1712, %1717, %57
  %1724 = phi i32 [ %1676, %1712 ], [ %1676, %1717 ], [ %22, %57 ]
  %1725 = phi i32 [ %1677, %1712 ], [ %1677, %1717 ], [ %24, %57 ]
  %1726 = phi i32 [ %1678, %1712 ], [ %1678, %1717 ], [ %26, %57 ]
  %1727 = phi i32 [ %1679, %1712 ], [ %1679, %1717 ], [ %28, %57 ]
  %1728 = phi i32 [ %1680, %1712 ], [ %1680, %1717 ], [ %20, %57 ]
  %1729 = phi ptr [ %1681, %1712 ], [ %1681, %1717 ], [ %32, %57 ]
  %1730 = phi i32 [ %1711, %1712 ], [ %1722, %1717 ], [ %34, %57 ]
  %1731 = phi i32 [ %1683, %1712 ], [ %1683, %1717 ], [ %36, %57 ]
  %1732 = phi i32 [ %1684, %1712 ], [ %1684, %1717 ], [ %38, %57 ]
  %1733 = phi i64 [ %1701, %1712 ], [ %1701, %1717 ], [ %18, %57 ]
  %1734 = phi i32 [ %1709, %1712 ], [ %1718, %1717 ], [ %13, %57 ]
  %1735 = phi i32 [ %1703, %1712 ], [ %1719, %1717 ], [ %15, %57 ]
  %1736 = icmp ult i32 %1734, 16777216
  br i1 %1736, label %1737, label %1748

1737:                                             ; preds = %1723
  %1738 = icmp eq i64 %1733, %4
  br i1 %1738, label %1739, label %1740

1739:                                             ; preds = %1737
  store i32 33, ptr %58, align 8, !tbaa !53
  br label %3810

1740:                                             ; preds = %1737
  %1741 = shl nuw i32 %1734, 8
  %1742 = shl i32 %1735, 8
  %1743 = add i64 %1733, 1
  %1744 = getelementptr inbounds i8, ptr %2, i64 %1733
  %1745 = load i8, ptr %1744, align 1, !tbaa !54
  %1746 = zext i8 %1745 to i32
  %1747 = or disjoint i32 %1742, %1746
  br label %1748

1748:                                             ; preds = %1740, %1723
  %1749 = phi i64 [ %1743, %1740 ], [ %1733, %1723 ]
  %1750 = phi i32 [ %1741, %1740 ], [ %1734, %1723 ]
  %1751 = phi i32 [ %1747, %1740 ], [ %1735, %1723 ]
  %1752 = lshr i32 %1750, 11
  %1753 = zext i32 %1730 to i64
  %1754 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1753
  %1755 = load i16, ptr %1754, align 2, !tbaa !55
  %1756 = zext i16 %1755 to i32
  %1757 = mul i32 %1752, %1756
  %1758 = icmp ult i32 %1751, %1757
  %1759 = shl i32 %1730, 1
  br i1 %1758, label %1760, label %1765

1760:                                             ; preds = %1748
  %1761 = sub nsw i32 2048, %1756
  %1762 = lshr i32 %1761, 5
  %1763 = trunc i32 %1762 to i16
  %1764 = add i16 %1755, %1763
  store i16 %1764, ptr %1754, align 2, !tbaa !55
  br label %1771

1765:                                             ; preds = %1748
  %1766 = sub i32 %1750, %1757
  %1767 = sub i32 %1751, %1757
  %1768 = lshr i16 %1755, 5
  %1769 = sub i16 %1755, %1768
  store i16 %1769, ptr %1754, align 2, !tbaa !55
  %1770 = or disjoint i32 %1759, 1
  br label %1771

1771:                                             ; preds = %1760, %1765, %57
  %1772 = phi i32 [ %1724, %1760 ], [ %1724, %1765 ], [ %22, %57 ]
  %1773 = phi i32 [ %1725, %1760 ], [ %1725, %1765 ], [ %24, %57 ]
  %1774 = phi i32 [ %1726, %1760 ], [ %1726, %1765 ], [ %26, %57 ]
  %1775 = phi i32 [ %1727, %1760 ], [ %1727, %1765 ], [ %28, %57 ]
  %1776 = phi i32 [ %1728, %1760 ], [ %1728, %1765 ], [ %20, %57 ]
  %1777 = phi ptr [ %1729, %1760 ], [ %1729, %1765 ], [ %32, %57 ]
  %1778 = phi i32 [ %1759, %1760 ], [ %1770, %1765 ], [ %34, %57 ]
  %1779 = phi i32 [ %1731, %1760 ], [ %1731, %1765 ], [ %36, %57 ]
  %1780 = phi i32 [ %1732, %1760 ], [ %1732, %1765 ], [ %38, %57 ]
  %1781 = phi i64 [ %1749, %1760 ], [ %1749, %1765 ], [ %18, %57 ]
  %1782 = phi i32 [ %1757, %1760 ], [ %1766, %1765 ], [ %13, %57 ]
  %1783 = phi i32 [ %1751, %1760 ], [ %1767, %1765 ], [ %15, %57 ]
  %1784 = icmp ult i32 %1782, 16777216
  br i1 %1784, label %1785, label %1796

1785:                                             ; preds = %1771
  %1786 = icmp eq i64 %1781, %4
  br i1 %1786, label %1787, label %1788

1787:                                             ; preds = %1785
  store i32 34, ptr %58, align 8, !tbaa !53
  br label %3810

1788:                                             ; preds = %1785
  %1789 = shl nuw i32 %1782, 8
  %1790 = shl i32 %1783, 8
  %1791 = add i64 %1781, 1
  %1792 = getelementptr inbounds i8, ptr %2, i64 %1781
  %1793 = load i8, ptr %1792, align 1, !tbaa !54
  %1794 = zext i8 %1793 to i32
  %1795 = or disjoint i32 %1790, %1794
  br label %1796

1796:                                             ; preds = %1788, %1771
  %1797 = phi i64 [ %1791, %1788 ], [ %1781, %1771 ]
  %1798 = phi i32 [ %1789, %1788 ], [ %1782, %1771 ]
  %1799 = phi i32 [ %1795, %1788 ], [ %1783, %1771 ]
  %1800 = lshr i32 %1798, 11
  %1801 = zext i32 %1778 to i64
  %1802 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1801
  %1803 = load i16, ptr %1802, align 2, !tbaa !55
  %1804 = zext i16 %1803 to i32
  %1805 = mul i32 %1800, %1804
  %1806 = icmp ult i32 %1799, %1805
  %1807 = shl i32 %1778, 1
  br i1 %1806, label %1808, label %1813

1808:                                             ; preds = %1796
  %1809 = sub nsw i32 2048, %1804
  %1810 = lshr i32 %1809, 5
  %1811 = trunc i32 %1810 to i16
  %1812 = add i16 %1803, %1811
  store i16 %1812, ptr %1802, align 2, !tbaa !55
  br label %1819

1813:                                             ; preds = %1796
  %1814 = sub i32 %1798, %1805
  %1815 = sub i32 %1799, %1805
  %1816 = lshr i16 %1803, 5
  %1817 = sub i16 %1803, %1816
  store i16 %1817, ptr %1802, align 2, !tbaa !55
  %1818 = or disjoint i32 %1807, 1
  br label %1819

1819:                                             ; preds = %1808, %1813, %57
  %1820 = phi i32 [ %1772, %1808 ], [ %1772, %1813 ], [ %22, %57 ]
  %1821 = phi i32 [ %1773, %1808 ], [ %1773, %1813 ], [ %24, %57 ]
  %1822 = phi i32 [ %1774, %1808 ], [ %1774, %1813 ], [ %26, %57 ]
  %1823 = phi i32 [ %1775, %1808 ], [ %1775, %1813 ], [ %28, %57 ]
  %1824 = phi i32 [ %1776, %1808 ], [ %1776, %1813 ], [ %20, %57 ]
  %1825 = phi ptr [ %1777, %1808 ], [ %1777, %1813 ], [ %32, %57 ]
  %1826 = phi i32 [ %1807, %1808 ], [ %1818, %1813 ], [ %34, %57 ]
  %1827 = phi i32 [ %1779, %1808 ], [ %1779, %1813 ], [ %36, %57 ]
  %1828 = phi i32 [ %1780, %1808 ], [ %1780, %1813 ], [ %38, %57 ]
  %1829 = phi i64 [ %1797, %1808 ], [ %1797, %1813 ], [ %18, %57 ]
  %1830 = phi i32 [ %1805, %1808 ], [ %1814, %1813 ], [ %13, %57 ]
  %1831 = phi i32 [ %1799, %1808 ], [ %1815, %1813 ], [ %15, %57 ]
  %1832 = icmp ult i32 %1830, 16777216
  br i1 %1832, label %1833, label %1844

1833:                                             ; preds = %1819
  %1834 = icmp eq i64 %1829, %4
  br i1 %1834, label %1835, label %1836

1835:                                             ; preds = %1833
  store i32 35, ptr %58, align 8, !tbaa !53
  br label %3810

1836:                                             ; preds = %1833
  %1837 = shl nuw i32 %1830, 8
  %1838 = shl i32 %1831, 8
  %1839 = add i64 %1829, 1
  %1840 = getelementptr inbounds i8, ptr %2, i64 %1829
  %1841 = load i8, ptr %1840, align 1, !tbaa !54
  %1842 = zext i8 %1841 to i32
  %1843 = or disjoint i32 %1838, %1842
  br label %1844

1844:                                             ; preds = %1836, %1819
  %1845 = phi i64 [ %1839, %1836 ], [ %1829, %1819 ]
  %1846 = phi i32 [ %1837, %1836 ], [ %1830, %1819 ]
  %1847 = phi i32 [ %1843, %1836 ], [ %1831, %1819 ]
  %1848 = lshr i32 %1846, 11
  %1849 = zext i32 %1826 to i64
  %1850 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %1849
  %1851 = load i16, ptr %1850, align 2, !tbaa !55
  %1852 = zext i16 %1851 to i32
  %1853 = mul i32 %1848, %1852
  %1854 = icmp ult i32 %1847, %1853
  %1855 = shl i32 %1826, 1
  br i1 %1854, label %1856, label %1861

1856:                                             ; preds = %1844
  %1857 = sub nsw i32 2048, %1852
  %1858 = lshr i32 %1857, 5
  %1859 = trunc i32 %1858 to i16
  %1860 = add i16 %1851, %1859
  br label %1867

1861:                                             ; preds = %1844
  %1862 = sub i32 %1846, %1853
  %1863 = sub i32 %1847, %1853
  %1864 = lshr i16 %1851, 5
  %1865 = sub i16 %1851, %1864
  %1866 = or disjoint i32 %1855, 1
  br label %1867

1867:                                             ; preds = %1861, %1856
  %1868 = phi i16 [ %1860, %1856 ], [ %1865, %1861 ]
  %1869 = phi i32 [ %1855, %1856 ], [ %1866, %1861 ]
  %1870 = phi i32 [ %1853, %1856 ], [ %1862, %1861 ]
  %1871 = phi i32 [ %1847, %1856 ], [ %1863, %1861 ]
  store i16 %1868, ptr %1850, align 2
  %1872 = add i32 %1869, -238
  store i32 %1872, ptr %7, align 4, !tbaa !31
  br label %1873

1873:                                             ; preds = %1472, %1867, %1270
  %1874 = phi i32 [ %1275, %1270 ], [ %1477, %1472 ], [ %1872, %1867 ]
  %1875 = phi i32 [ %1221, %1270 ], [ %1423, %1472 ], [ %1820, %1867 ]
  %1876 = phi i32 [ %1222, %1270 ], [ %1424, %1472 ], [ %1821, %1867 ]
  %1877 = phi i32 [ %1223, %1270 ], [ %1425, %1472 ], [ %1822, %1867 ]
  %1878 = phi i32 [ %1224, %1270 ], [ %1426, %1472 ], [ %1823, %1867 ]
  %1879 = phi i32 [ %1225, %1270 ], [ %1427, %1472 ], [ %1824, %1867 ]
  %1880 = phi i32 [ %1228, %1270 ], [ %1430, %1472 ], [ %1827, %1867 ]
  %1881 = phi i32 [ %1229, %1270 ], [ %1431, %1472 ], [ %1828, %1867 ]
  %1882 = phi i64 [ %1247, %1270 ], [ %1449, %1472 ], [ %1845, %1867 ]
  %1883 = phi i32 [ %1273, %1270 ], [ %1475, %1472 ], [ %1870, %1867 ]
  %1884 = phi i32 [ %1274, %1270 ], [ %1476, %1472 ], [ %1871, %1867 ]
  %1885 = icmp ult i32 %1874, 6
  %1886 = add i32 %1874, -2
  %1887 = select i1 %1885, i32 %1886, i32 3
  %1888 = zext i32 %1887 to i64
  %1889 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7, i64 %1888
  br label %1890

1890:                                             ; preds = %57, %1873
  %1891 = phi i32 [ %1875, %1873 ], [ %22, %57 ]
  %1892 = phi i32 [ %1876, %1873 ], [ %24, %57 ]
  %1893 = phi i32 [ %1877, %1873 ], [ %26, %57 ]
  %1894 = phi i32 [ %1878, %1873 ], [ %28, %57 ]
  %1895 = phi i32 [ %1879, %1873 ], [ %20, %57 ]
  %1896 = phi ptr [ %1889, %1873 ], [ %32, %57 ]
  %1897 = phi i32 [ 1, %1873 ], [ %34, %57 ]
  %1898 = phi i32 [ %1880, %1873 ], [ %36, %57 ]
  %1899 = phi i32 [ %1881, %1873 ], [ %38, %57 ]
  %1900 = phi i64 [ %1882, %1873 ], [ %18, %57 ]
  %1901 = phi i32 [ %1883, %1873 ], [ %13, %57 ]
  %1902 = phi i32 [ %1884, %1873 ], [ %15, %57 ]
  %1903 = icmp ult i32 %1901, 16777216
  br i1 %1903, label %1904, label %1915

1904:                                             ; preds = %1890
  %1905 = icmp eq i64 %1900, %4
  br i1 %1905, label %1906, label %1907

1906:                                             ; preds = %1904
  store i32 36, ptr %58, align 8, !tbaa !53
  br label %3810

1907:                                             ; preds = %1904
  %1908 = shl nuw i32 %1901, 8
  %1909 = shl i32 %1902, 8
  %1910 = add i64 %1900, 1
  %1911 = getelementptr inbounds i8, ptr %2, i64 %1900
  %1912 = load i8, ptr %1911, align 1, !tbaa !54
  %1913 = zext i8 %1912 to i32
  %1914 = or disjoint i32 %1909, %1913
  br label %1915

1915:                                             ; preds = %1907, %1890
  %1916 = phi i64 [ %1910, %1907 ], [ %1900, %1890 ]
  %1917 = phi i32 [ %1908, %1907 ], [ %1901, %1890 ]
  %1918 = phi i32 [ %1914, %1907 ], [ %1902, %1890 ]
  %1919 = lshr i32 %1917, 11
  %1920 = zext i32 %1897 to i64
  %1921 = getelementptr inbounds i16, ptr %1896, i64 %1920
  %1922 = load i16, ptr %1921, align 2, !tbaa !55
  %1923 = zext i16 %1922 to i32
  %1924 = mul i32 %1919, %1923
  %1925 = icmp ult i32 %1918, %1924
  %1926 = shl i32 %1897, 1
  br i1 %1925, label %1927, label %1932

1927:                                             ; preds = %1915
  %1928 = sub nsw i32 2048, %1923
  %1929 = lshr i32 %1928, 5
  %1930 = trunc i32 %1929 to i16
  %1931 = add i16 %1922, %1930
  store i16 %1931, ptr %1921, align 2, !tbaa !55
  br label %1938

1932:                                             ; preds = %1915
  %1933 = sub i32 %1917, %1924
  %1934 = sub i32 %1918, %1924
  %1935 = lshr i16 %1922, 5
  %1936 = sub i16 %1922, %1935
  store i16 %1936, ptr %1921, align 2, !tbaa !55
  %1937 = or disjoint i32 %1926, 1
  br label %1938

1938:                                             ; preds = %1927, %1932, %57
  %1939 = phi i32 [ %1891, %1927 ], [ %1891, %1932 ], [ %22, %57 ]
  %1940 = phi i32 [ %1892, %1927 ], [ %1892, %1932 ], [ %24, %57 ]
  %1941 = phi i32 [ %1893, %1927 ], [ %1893, %1932 ], [ %26, %57 ]
  %1942 = phi i32 [ %1894, %1927 ], [ %1894, %1932 ], [ %28, %57 ]
  %1943 = phi i32 [ %1895, %1927 ], [ %1895, %1932 ], [ %20, %57 ]
  %1944 = phi ptr [ %1896, %1927 ], [ %1896, %1932 ], [ %32, %57 ]
  %1945 = phi i32 [ %1926, %1927 ], [ %1937, %1932 ], [ %34, %57 ]
  %1946 = phi i32 [ %1898, %1927 ], [ %1898, %1932 ], [ %36, %57 ]
  %1947 = phi i32 [ %1899, %1927 ], [ %1899, %1932 ], [ %38, %57 ]
  %1948 = phi i64 [ %1916, %1927 ], [ %1916, %1932 ], [ %18, %57 ]
  %1949 = phi i32 [ %1924, %1927 ], [ %1933, %1932 ], [ %13, %57 ]
  %1950 = phi i32 [ %1918, %1927 ], [ %1934, %1932 ], [ %15, %57 ]
  %1951 = icmp ult i32 %1949, 16777216
  br i1 %1951, label %1952, label %1963

1952:                                             ; preds = %1938
  %1953 = icmp eq i64 %1948, %4
  br i1 %1953, label %1954, label %1955

1954:                                             ; preds = %1952
  store i32 37, ptr %58, align 8, !tbaa !53
  br label %3810

1955:                                             ; preds = %1952
  %1956 = shl nuw i32 %1949, 8
  %1957 = shl i32 %1950, 8
  %1958 = add i64 %1948, 1
  %1959 = getelementptr inbounds i8, ptr %2, i64 %1948
  %1960 = load i8, ptr %1959, align 1, !tbaa !54
  %1961 = zext i8 %1960 to i32
  %1962 = or disjoint i32 %1957, %1961
  br label %1963

1963:                                             ; preds = %1955, %1938
  %1964 = phi i64 [ %1958, %1955 ], [ %1948, %1938 ]
  %1965 = phi i32 [ %1956, %1955 ], [ %1949, %1938 ]
  %1966 = phi i32 [ %1962, %1955 ], [ %1950, %1938 ]
  %1967 = lshr i32 %1965, 11
  %1968 = zext i32 %1945 to i64
  %1969 = getelementptr inbounds i16, ptr %1944, i64 %1968
  %1970 = load i16, ptr %1969, align 2, !tbaa !55
  %1971 = zext i16 %1970 to i32
  %1972 = mul i32 %1967, %1971
  %1973 = icmp ult i32 %1966, %1972
  %1974 = shl i32 %1945, 1
  br i1 %1973, label %1975, label %1980

1975:                                             ; preds = %1963
  %1976 = sub nsw i32 2048, %1971
  %1977 = lshr i32 %1976, 5
  %1978 = trunc i32 %1977 to i16
  %1979 = add i16 %1970, %1978
  store i16 %1979, ptr %1969, align 2, !tbaa !55
  br label %1986

1980:                                             ; preds = %1963
  %1981 = sub i32 %1965, %1972
  %1982 = sub i32 %1966, %1972
  %1983 = lshr i16 %1970, 5
  %1984 = sub i16 %1970, %1983
  store i16 %1984, ptr %1969, align 2, !tbaa !55
  %1985 = or disjoint i32 %1974, 1
  br label %1986

1986:                                             ; preds = %1975, %1980, %57
  %1987 = phi i32 [ %1939, %1975 ], [ %1939, %1980 ], [ %22, %57 ]
  %1988 = phi i32 [ %1940, %1975 ], [ %1940, %1980 ], [ %24, %57 ]
  %1989 = phi i32 [ %1941, %1975 ], [ %1941, %1980 ], [ %26, %57 ]
  %1990 = phi i32 [ %1942, %1975 ], [ %1942, %1980 ], [ %28, %57 ]
  %1991 = phi i32 [ %1943, %1975 ], [ %1943, %1980 ], [ %20, %57 ]
  %1992 = phi ptr [ %1944, %1975 ], [ %1944, %1980 ], [ %32, %57 ]
  %1993 = phi i32 [ %1974, %1975 ], [ %1985, %1980 ], [ %34, %57 ]
  %1994 = phi i32 [ %1946, %1975 ], [ %1946, %1980 ], [ %36, %57 ]
  %1995 = phi i32 [ %1947, %1975 ], [ %1947, %1980 ], [ %38, %57 ]
  %1996 = phi i64 [ %1964, %1975 ], [ %1964, %1980 ], [ %18, %57 ]
  %1997 = phi i32 [ %1972, %1975 ], [ %1981, %1980 ], [ %13, %57 ]
  %1998 = phi i32 [ %1966, %1975 ], [ %1982, %1980 ], [ %15, %57 ]
  %1999 = icmp ult i32 %1997, 16777216
  br i1 %1999, label %2000, label %2011

2000:                                             ; preds = %1986
  %2001 = icmp eq i64 %1996, %4
  br i1 %2001, label %2002, label %2003

2002:                                             ; preds = %2000
  store i32 38, ptr %58, align 8, !tbaa !53
  br label %3810

2003:                                             ; preds = %2000
  %2004 = shl nuw i32 %1997, 8
  %2005 = shl i32 %1998, 8
  %2006 = add i64 %1996, 1
  %2007 = getelementptr inbounds i8, ptr %2, i64 %1996
  %2008 = load i8, ptr %2007, align 1, !tbaa !54
  %2009 = zext i8 %2008 to i32
  %2010 = or disjoint i32 %2005, %2009
  br label %2011

2011:                                             ; preds = %2003, %1986
  %2012 = phi i64 [ %2006, %2003 ], [ %1996, %1986 ]
  %2013 = phi i32 [ %2004, %2003 ], [ %1997, %1986 ]
  %2014 = phi i32 [ %2010, %2003 ], [ %1998, %1986 ]
  %2015 = lshr i32 %2013, 11
  %2016 = zext i32 %1993 to i64
  %2017 = getelementptr inbounds i16, ptr %1992, i64 %2016
  %2018 = load i16, ptr %2017, align 2, !tbaa !55
  %2019 = zext i16 %2018 to i32
  %2020 = mul i32 %2015, %2019
  %2021 = icmp ult i32 %2014, %2020
  %2022 = shl i32 %1993, 1
  br i1 %2021, label %2023, label %2028

2023:                                             ; preds = %2011
  %2024 = sub nsw i32 2048, %2019
  %2025 = lshr i32 %2024, 5
  %2026 = trunc i32 %2025 to i16
  %2027 = add i16 %2018, %2026
  store i16 %2027, ptr %2017, align 2, !tbaa !55
  br label %2034

2028:                                             ; preds = %2011
  %2029 = sub i32 %2013, %2020
  %2030 = sub i32 %2014, %2020
  %2031 = lshr i16 %2018, 5
  %2032 = sub i16 %2018, %2031
  store i16 %2032, ptr %2017, align 2, !tbaa !55
  %2033 = or disjoint i32 %2022, 1
  br label %2034

2034:                                             ; preds = %2023, %2028, %57
  %2035 = phi i32 [ %1987, %2023 ], [ %1987, %2028 ], [ %22, %57 ]
  %2036 = phi i32 [ %1988, %2023 ], [ %1988, %2028 ], [ %24, %57 ]
  %2037 = phi i32 [ %1989, %2023 ], [ %1989, %2028 ], [ %26, %57 ]
  %2038 = phi i32 [ %1990, %2023 ], [ %1990, %2028 ], [ %28, %57 ]
  %2039 = phi i32 [ %1991, %2023 ], [ %1991, %2028 ], [ %20, %57 ]
  %2040 = phi ptr [ %1992, %2023 ], [ %1992, %2028 ], [ %32, %57 ]
  %2041 = phi i32 [ %2022, %2023 ], [ %2033, %2028 ], [ %34, %57 ]
  %2042 = phi i32 [ %1994, %2023 ], [ %1994, %2028 ], [ %36, %57 ]
  %2043 = phi i32 [ %1995, %2023 ], [ %1995, %2028 ], [ %38, %57 ]
  %2044 = phi i64 [ %2012, %2023 ], [ %2012, %2028 ], [ %18, %57 ]
  %2045 = phi i32 [ %2020, %2023 ], [ %2029, %2028 ], [ %13, %57 ]
  %2046 = phi i32 [ %2014, %2023 ], [ %2030, %2028 ], [ %15, %57 ]
  %2047 = icmp ult i32 %2045, 16777216
  br i1 %2047, label %2048, label %2059

2048:                                             ; preds = %2034
  %2049 = icmp eq i64 %2044, %4
  br i1 %2049, label %2050, label %2051

2050:                                             ; preds = %2048
  store i32 39, ptr %58, align 8, !tbaa !53
  br label %3810

2051:                                             ; preds = %2048
  %2052 = shl nuw i32 %2045, 8
  %2053 = shl i32 %2046, 8
  %2054 = add i64 %2044, 1
  %2055 = getelementptr inbounds i8, ptr %2, i64 %2044
  %2056 = load i8, ptr %2055, align 1, !tbaa !54
  %2057 = zext i8 %2056 to i32
  %2058 = or disjoint i32 %2053, %2057
  br label %2059

2059:                                             ; preds = %2051, %2034
  %2060 = phi i64 [ %2054, %2051 ], [ %2044, %2034 ]
  %2061 = phi i32 [ %2052, %2051 ], [ %2045, %2034 ]
  %2062 = phi i32 [ %2058, %2051 ], [ %2046, %2034 ]
  %2063 = lshr i32 %2061, 11
  %2064 = zext i32 %2041 to i64
  %2065 = getelementptr inbounds i16, ptr %2040, i64 %2064
  %2066 = load i16, ptr %2065, align 2, !tbaa !55
  %2067 = zext i16 %2066 to i32
  %2068 = mul i32 %2063, %2067
  %2069 = icmp ult i32 %2062, %2068
  %2070 = shl i32 %2041, 1
  br i1 %2069, label %2071, label %2076

2071:                                             ; preds = %2059
  %2072 = sub nsw i32 2048, %2067
  %2073 = lshr i32 %2072, 5
  %2074 = trunc i32 %2073 to i16
  %2075 = add i16 %2066, %2074
  store i16 %2075, ptr %2065, align 2, !tbaa !55
  br label %2082

2076:                                             ; preds = %2059
  %2077 = sub i32 %2061, %2068
  %2078 = sub i32 %2062, %2068
  %2079 = lshr i16 %2066, 5
  %2080 = sub i16 %2066, %2079
  store i16 %2080, ptr %2065, align 2, !tbaa !55
  %2081 = or disjoint i32 %2070, 1
  br label %2082

2082:                                             ; preds = %2071, %2076, %57
  %2083 = phi i32 [ %2035, %2071 ], [ %2035, %2076 ], [ %22, %57 ]
  %2084 = phi i32 [ %2036, %2071 ], [ %2036, %2076 ], [ %24, %57 ]
  %2085 = phi i32 [ %2037, %2071 ], [ %2037, %2076 ], [ %26, %57 ]
  %2086 = phi i32 [ %2038, %2071 ], [ %2038, %2076 ], [ %28, %57 ]
  %2087 = phi i32 [ %2039, %2071 ], [ %2039, %2076 ], [ %20, %57 ]
  %2088 = phi ptr [ %2040, %2071 ], [ %2040, %2076 ], [ %32, %57 ]
  %2089 = phi i32 [ %2070, %2071 ], [ %2081, %2076 ], [ %34, %57 ]
  %2090 = phi i32 [ %2042, %2071 ], [ %2042, %2076 ], [ %36, %57 ]
  %2091 = phi i32 [ %2043, %2071 ], [ %2043, %2076 ], [ %38, %57 ]
  %2092 = phi i64 [ %2060, %2071 ], [ %2060, %2076 ], [ %18, %57 ]
  %2093 = phi i32 [ %2068, %2071 ], [ %2077, %2076 ], [ %13, %57 ]
  %2094 = phi i32 [ %2062, %2071 ], [ %2078, %2076 ], [ %15, %57 ]
  %2095 = icmp ult i32 %2093, 16777216
  br i1 %2095, label %2096, label %2107

2096:                                             ; preds = %2082
  %2097 = icmp eq i64 %2092, %4
  br i1 %2097, label %2098, label %2099

2098:                                             ; preds = %2096
  store i32 40, ptr %58, align 8, !tbaa !53
  br label %3810

2099:                                             ; preds = %2096
  %2100 = shl nuw i32 %2093, 8
  %2101 = shl i32 %2094, 8
  %2102 = add i64 %2092, 1
  %2103 = getelementptr inbounds i8, ptr %2, i64 %2092
  %2104 = load i8, ptr %2103, align 1, !tbaa !54
  %2105 = zext i8 %2104 to i32
  %2106 = or disjoint i32 %2101, %2105
  br label %2107

2107:                                             ; preds = %2099, %2082
  %2108 = phi i64 [ %2102, %2099 ], [ %2092, %2082 ]
  %2109 = phi i32 [ %2100, %2099 ], [ %2093, %2082 ]
  %2110 = phi i32 [ %2106, %2099 ], [ %2094, %2082 ]
  %2111 = lshr i32 %2109, 11
  %2112 = zext i32 %2089 to i64
  %2113 = getelementptr inbounds i16, ptr %2088, i64 %2112
  %2114 = load i16, ptr %2113, align 2, !tbaa !55
  %2115 = zext i16 %2114 to i32
  %2116 = mul i32 %2111, %2115
  %2117 = icmp ult i32 %2110, %2116
  %2118 = shl i32 %2089, 1
  br i1 %2117, label %2119, label %2124

2119:                                             ; preds = %2107
  %2120 = sub nsw i32 2048, %2115
  %2121 = lshr i32 %2120, 5
  %2122 = trunc i32 %2121 to i16
  %2123 = add i16 %2114, %2122
  store i16 %2123, ptr %2113, align 2, !tbaa !55
  br label %2130

2124:                                             ; preds = %2107
  %2125 = sub i32 %2109, %2116
  %2126 = sub i32 %2110, %2116
  %2127 = lshr i16 %2114, 5
  %2128 = sub i16 %2114, %2127
  store i16 %2128, ptr %2113, align 2, !tbaa !55
  %2129 = or disjoint i32 %2118, 1
  br label %2130

2130:                                             ; preds = %2119, %2124, %57
  %2131 = phi i32 [ %2083, %2119 ], [ %2083, %2124 ], [ %22, %57 ]
  %2132 = phi i32 [ %2084, %2119 ], [ %2084, %2124 ], [ %24, %57 ]
  %2133 = phi i32 [ %2085, %2119 ], [ %2085, %2124 ], [ %26, %57 ]
  %2134 = phi i32 [ %2086, %2119 ], [ %2086, %2124 ], [ %28, %57 ]
  %2135 = phi i32 [ %2087, %2119 ], [ %2087, %2124 ], [ %20, %57 ]
  %2136 = phi ptr [ %2088, %2119 ], [ %2088, %2124 ], [ %32, %57 ]
  %2137 = phi i32 [ %2118, %2119 ], [ %2129, %2124 ], [ %34, %57 ]
  %2138 = phi i32 [ %2090, %2119 ], [ %2090, %2124 ], [ %36, %57 ]
  %2139 = phi i32 [ %2091, %2119 ], [ %2091, %2124 ], [ %38, %57 ]
  %2140 = phi i64 [ %2108, %2119 ], [ %2108, %2124 ], [ %18, %57 ]
  %2141 = phi i32 [ %2116, %2119 ], [ %2125, %2124 ], [ %13, %57 ]
  %2142 = phi i32 [ %2110, %2119 ], [ %2126, %2124 ], [ %15, %57 ]
  %2143 = icmp ult i32 %2141, 16777216
  br i1 %2143, label %2144, label %2155

2144:                                             ; preds = %2130
  %2145 = icmp eq i64 %2140, %4
  br i1 %2145, label %2146, label %2147

2146:                                             ; preds = %2144
  store i32 41, ptr %58, align 8, !tbaa !53
  br label %3810

2147:                                             ; preds = %2144
  %2148 = shl nuw i32 %2141, 8
  %2149 = shl i32 %2142, 8
  %2150 = add i64 %2140, 1
  %2151 = getelementptr inbounds i8, ptr %2, i64 %2140
  %2152 = load i8, ptr %2151, align 1, !tbaa !54
  %2153 = zext i8 %2152 to i32
  %2154 = or disjoint i32 %2149, %2153
  br label %2155

2155:                                             ; preds = %2147, %2130
  %2156 = phi i64 [ %2150, %2147 ], [ %2140, %2130 ]
  %2157 = phi i32 [ %2148, %2147 ], [ %2141, %2130 ]
  %2158 = phi i32 [ %2154, %2147 ], [ %2142, %2130 ]
  %2159 = lshr i32 %2157, 11
  %2160 = zext i32 %2137 to i64
  %2161 = getelementptr inbounds i16, ptr %2136, i64 %2160
  %2162 = load i16, ptr %2161, align 2, !tbaa !55
  %2163 = zext i16 %2162 to i32
  %2164 = mul i32 %2159, %2163
  %2165 = icmp ult i32 %2158, %2164
  %2166 = shl i32 %2137, 1
  br i1 %2165, label %2167, label %2172

2167:                                             ; preds = %2155
  %2168 = sub nsw i32 2048, %2163
  %2169 = lshr i32 %2168, 5
  %2170 = trunc i32 %2169 to i16
  %2171 = add i16 %2162, %2170
  br label %2178

2172:                                             ; preds = %2155
  %2173 = sub i32 %2157, %2164
  %2174 = sub i32 %2158, %2164
  %2175 = lshr i16 %2162, 5
  %2176 = sub i16 %2162, %2175
  %2177 = or disjoint i32 %2166, 1
  br label %2178

2178:                                             ; preds = %2172, %2167
  %2179 = phi i16 [ %2171, %2167 ], [ %2176, %2172 ]
  %2180 = phi i32 [ %2166, %2167 ], [ %2177, %2172 ]
  %2181 = phi i32 [ %2164, %2167 ], [ %2173, %2172 ]
  %2182 = phi i32 [ %2158, %2167 ], [ %2174, %2172 ]
  store i16 %2179, ptr %2161, align 2
  %2183 = add i32 %2180, -64
  %2184 = icmp ult i32 %2183, 4
  br i1 %2184, label %2729, label %2185

2185:                                             ; preds = %2178
  %2186 = lshr i32 %2183, 1
  %2187 = and i32 %2180, 1
  %2188 = or disjoint i32 %2187, 2
  %2189 = icmp ult i32 %2183, 14
  br i1 %2189, label %2190, label %2452

2190:                                             ; preds = %2185
  %2191 = add nsw i32 %2186, -1
  %2192 = shl i32 %2188, %2191
  %2193 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %2194 = zext i32 %2192 to i64
  %2195 = getelementptr inbounds i16, ptr %2193, i64 %2194
  %2196 = zext nneg i32 %2183 to i64
  %2197 = sub nsw i64 0, %2196
  %2198 = getelementptr inbounds i16, ptr %2195, i64 %2197
  %2199 = getelementptr inbounds i16, ptr %2198, i64 -1
  br label %2200

2200:                                             ; preds = %57, %2190
  %2201 = phi i32 [ %2192, %2190 ], [ %22, %57 ]
  %2202 = phi i32 [ %2132, %2190 ], [ %24, %57 ]
  %2203 = phi i32 [ %2133, %2190 ], [ %26, %57 ]
  %2204 = phi i32 [ %2134, %2190 ], [ %28, %57 ]
  %2205 = phi i32 [ %2135, %2190 ], [ %20, %57 ]
  %2206 = phi ptr [ %2199, %2190 ], [ %32, %57 ]
  %2207 = phi i32 [ 1, %2190 ], [ %34, %57 ]
  %2208 = phi i32 [ %2191, %2190 ], [ %36, %57 ]
  %2209 = phi i32 [ 0, %2190 ], [ %38, %57 ]
  %2210 = phi i64 [ %2156, %2190 ], [ %18, %57 ]
  %2211 = phi i32 [ %2181, %2190 ], [ %13, %57 ]
  %2212 = phi i32 [ %2182, %2190 ], [ %15, %57 ]
  switch i32 %2208, label %2729 [
    i32 5, label %2213
    i32 4, label %2257
    i32 3, label %2308
    i32 2, label %2359
    i32 1, label %2410
  ]

2213:                                             ; preds = %2200
  %2214 = icmp ult i32 %2211, 16777216
  br i1 %2214, label %2215, label %2226

2215:                                             ; preds = %2213
  %2216 = icmp eq i64 %2210, %4
  br i1 %2216, label %2217, label %2218

2217:                                             ; preds = %2215
  store i32 42, ptr %58, align 8, !tbaa !53
  br label %3810

2218:                                             ; preds = %2215
  %2219 = shl nuw i32 %2211, 8
  %2220 = shl i32 %2212, 8
  %2221 = add i64 %2210, 1
  %2222 = getelementptr inbounds i8, ptr %2, i64 %2210
  %2223 = load i8, ptr %2222, align 1, !tbaa !54
  %2224 = zext i8 %2223 to i32
  %2225 = or disjoint i32 %2220, %2224
  br label %2226

2226:                                             ; preds = %2218, %2213
  %2227 = phi i64 [ %2221, %2218 ], [ %2210, %2213 ]
  %2228 = phi i32 [ %2219, %2218 ], [ %2211, %2213 ]
  %2229 = phi i32 [ %2225, %2218 ], [ %2212, %2213 ]
  %2230 = lshr i32 %2228, 11
  %2231 = zext i32 %2207 to i64
  %2232 = getelementptr inbounds i16, ptr %2206, i64 %2231
  %2233 = load i16, ptr %2232, align 2, !tbaa !55
  %2234 = zext i16 %2233 to i32
  %2235 = mul i32 %2230, %2234
  %2236 = icmp ult i32 %2229, %2235
  %2237 = shl i32 %2207, 1
  br i1 %2236, label %2238, label %2243

2238:                                             ; preds = %2226
  %2239 = sub nsw i32 2048, %2234
  %2240 = lshr i32 %2239, 5
  %2241 = trunc i32 %2240 to i16
  %2242 = add i16 %2233, %2241
  br label %2250

2243:                                             ; preds = %2226
  %2244 = sub i32 %2228, %2235
  %2245 = sub i32 %2229, %2235
  %2246 = lshr i16 %2233, 5
  %2247 = sub i16 %2233, %2246
  %2248 = or disjoint i32 %2237, 1
  %2249 = add i32 %2201, 1
  br label %2250

2250:                                             ; preds = %2243, %2238
  %2251 = phi i16 [ %2242, %2238 ], [ %2247, %2243 ]
  %2252 = phi i32 [ %2201, %2238 ], [ %2249, %2243 ]
  %2253 = phi i32 [ %2237, %2238 ], [ %2248, %2243 ]
  %2254 = phi i32 [ %2235, %2238 ], [ %2244, %2243 ]
  %2255 = phi i32 [ %2229, %2238 ], [ %2245, %2243 ]
  store i16 %2251, ptr %2232, align 2
  %2256 = add i32 %2209, 1
  br label %2257

2257:                                             ; preds = %2200, %2250
  %2258 = phi i32 [ %2201, %2200 ], [ %2252, %2250 ]
  %2259 = phi i32 [ %2207, %2200 ], [ %2253, %2250 ]
  %2260 = phi i32 [ %2209, %2200 ], [ %2256, %2250 ]
  %2261 = phi i64 [ %2210, %2200 ], [ %2227, %2250 ]
  %2262 = phi i32 [ %2211, %2200 ], [ %2254, %2250 ]
  %2263 = phi i32 [ %2212, %2200 ], [ %2255, %2250 ]
  %2264 = icmp ult i32 %2262, 16777216
  br i1 %2264, label %2265, label %2276

2265:                                             ; preds = %2257
  %2266 = icmp eq i64 %2261, %4
  br i1 %2266, label %2267, label %2268

2267:                                             ; preds = %2265
  store i32 42, ptr %58, align 8, !tbaa !53
  br label %3810

2268:                                             ; preds = %2265
  %2269 = shl nuw i32 %2262, 8
  %2270 = shl i32 %2263, 8
  %2271 = add i64 %2261, 1
  %2272 = getelementptr inbounds i8, ptr %2, i64 %2261
  %2273 = load i8, ptr %2272, align 1, !tbaa !54
  %2274 = zext i8 %2273 to i32
  %2275 = or disjoint i32 %2270, %2274
  br label %2276

2276:                                             ; preds = %2268, %2257
  %2277 = phi i64 [ %2271, %2268 ], [ %2261, %2257 ]
  %2278 = phi i32 [ %2269, %2268 ], [ %2262, %2257 ]
  %2279 = phi i32 [ %2275, %2268 ], [ %2263, %2257 ]
  %2280 = lshr i32 %2278, 11
  %2281 = zext i32 %2259 to i64
  %2282 = getelementptr inbounds i16, ptr %2206, i64 %2281
  %2283 = load i16, ptr %2282, align 2, !tbaa !55
  %2284 = zext i16 %2283 to i32
  %2285 = mul i32 %2280, %2284
  %2286 = icmp ult i32 %2279, %2285
  %2287 = shl i32 %2259, 1
  br i1 %2286, label %2288, label %2293

2288:                                             ; preds = %2276
  %2289 = sub nsw i32 2048, %2284
  %2290 = lshr i32 %2289, 5
  %2291 = trunc i32 %2290 to i16
  %2292 = add i16 %2283, %2291
  br label %2301

2293:                                             ; preds = %2276
  %2294 = sub i32 %2278, %2285
  %2295 = sub i32 %2279, %2285
  %2296 = lshr i16 %2283, 5
  %2297 = sub i16 %2283, %2296
  %2298 = or disjoint i32 %2287, 1
  %2299 = shl nuw i32 1, %2260
  %2300 = add i32 %2299, %2258
  br label %2301

2301:                                             ; preds = %2293, %2288
  %2302 = phi i16 [ %2292, %2288 ], [ %2297, %2293 ]
  %2303 = phi i32 [ %2258, %2288 ], [ %2300, %2293 ]
  %2304 = phi i32 [ %2287, %2288 ], [ %2298, %2293 ]
  %2305 = phi i32 [ %2285, %2288 ], [ %2294, %2293 ]
  %2306 = phi i32 [ %2279, %2288 ], [ %2295, %2293 ]
  store i16 %2302, ptr %2282, align 2
  %2307 = add i32 %2260, 1
  br label %2308

2308:                                             ; preds = %2200, %2301
  %2309 = phi i32 [ %2201, %2200 ], [ %2303, %2301 ]
  %2310 = phi i32 [ %2207, %2200 ], [ %2304, %2301 ]
  %2311 = phi i32 [ %2209, %2200 ], [ %2307, %2301 ]
  %2312 = phi i64 [ %2210, %2200 ], [ %2277, %2301 ]
  %2313 = phi i32 [ %2211, %2200 ], [ %2305, %2301 ]
  %2314 = phi i32 [ %2212, %2200 ], [ %2306, %2301 ]
  %2315 = icmp ult i32 %2313, 16777216
  br i1 %2315, label %2316, label %2327

2316:                                             ; preds = %2308
  %2317 = icmp eq i64 %2312, %4
  br i1 %2317, label %2318, label %2319

2318:                                             ; preds = %2316
  store i32 42, ptr %58, align 8, !tbaa !53
  br label %3810

2319:                                             ; preds = %2316
  %2320 = shl nuw i32 %2313, 8
  %2321 = shl i32 %2314, 8
  %2322 = add i64 %2312, 1
  %2323 = getelementptr inbounds i8, ptr %2, i64 %2312
  %2324 = load i8, ptr %2323, align 1, !tbaa !54
  %2325 = zext i8 %2324 to i32
  %2326 = or disjoint i32 %2321, %2325
  br label %2327

2327:                                             ; preds = %2319, %2308
  %2328 = phi i64 [ %2322, %2319 ], [ %2312, %2308 ]
  %2329 = phi i32 [ %2320, %2319 ], [ %2313, %2308 ]
  %2330 = phi i32 [ %2326, %2319 ], [ %2314, %2308 ]
  %2331 = lshr i32 %2329, 11
  %2332 = zext i32 %2310 to i64
  %2333 = getelementptr inbounds i16, ptr %2206, i64 %2332
  %2334 = load i16, ptr %2333, align 2, !tbaa !55
  %2335 = zext i16 %2334 to i32
  %2336 = mul i32 %2331, %2335
  %2337 = icmp ult i32 %2330, %2336
  %2338 = shl i32 %2310, 1
  br i1 %2337, label %2339, label %2344

2339:                                             ; preds = %2327
  %2340 = sub nsw i32 2048, %2335
  %2341 = lshr i32 %2340, 5
  %2342 = trunc i32 %2341 to i16
  %2343 = add i16 %2334, %2342
  br label %2352

2344:                                             ; preds = %2327
  %2345 = sub i32 %2329, %2336
  %2346 = sub i32 %2330, %2336
  %2347 = lshr i16 %2334, 5
  %2348 = sub i16 %2334, %2347
  %2349 = or disjoint i32 %2338, 1
  %2350 = shl nuw i32 1, %2311
  %2351 = add i32 %2350, %2309
  br label %2352

2352:                                             ; preds = %2344, %2339
  %2353 = phi i16 [ %2343, %2339 ], [ %2348, %2344 ]
  %2354 = phi i32 [ %2309, %2339 ], [ %2351, %2344 ]
  %2355 = phi i32 [ %2338, %2339 ], [ %2349, %2344 ]
  %2356 = phi i32 [ %2336, %2339 ], [ %2345, %2344 ]
  %2357 = phi i32 [ %2330, %2339 ], [ %2346, %2344 ]
  store i16 %2353, ptr %2333, align 2
  %2358 = add i32 %2311, 1
  br label %2359

2359:                                             ; preds = %2200, %2352
  %2360 = phi i32 [ %2201, %2200 ], [ %2354, %2352 ]
  %2361 = phi i32 [ %2207, %2200 ], [ %2355, %2352 ]
  %2362 = phi i32 [ %2209, %2200 ], [ %2358, %2352 ]
  %2363 = phi i64 [ %2210, %2200 ], [ %2328, %2352 ]
  %2364 = phi i32 [ %2211, %2200 ], [ %2356, %2352 ]
  %2365 = phi i32 [ %2212, %2200 ], [ %2357, %2352 ]
  %2366 = icmp ult i32 %2364, 16777216
  br i1 %2366, label %2367, label %2378

2367:                                             ; preds = %2359
  %2368 = icmp eq i64 %2363, %4
  br i1 %2368, label %2369, label %2370

2369:                                             ; preds = %2367
  store i32 42, ptr %58, align 8, !tbaa !53
  br label %3810

2370:                                             ; preds = %2367
  %2371 = shl nuw i32 %2364, 8
  %2372 = shl i32 %2365, 8
  %2373 = add i64 %2363, 1
  %2374 = getelementptr inbounds i8, ptr %2, i64 %2363
  %2375 = load i8, ptr %2374, align 1, !tbaa !54
  %2376 = zext i8 %2375 to i32
  %2377 = or disjoint i32 %2372, %2376
  br label %2378

2378:                                             ; preds = %2370, %2359
  %2379 = phi i64 [ %2373, %2370 ], [ %2363, %2359 ]
  %2380 = phi i32 [ %2371, %2370 ], [ %2364, %2359 ]
  %2381 = phi i32 [ %2377, %2370 ], [ %2365, %2359 ]
  %2382 = lshr i32 %2380, 11
  %2383 = zext i32 %2361 to i64
  %2384 = getelementptr inbounds i16, ptr %2206, i64 %2383
  %2385 = load i16, ptr %2384, align 2, !tbaa !55
  %2386 = zext i16 %2385 to i32
  %2387 = mul i32 %2382, %2386
  %2388 = icmp ult i32 %2381, %2387
  %2389 = shl i32 %2361, 1
  br i1 %2388, label %2390, label %2395

2390:                                             ; preds = %2378
  %2391 = sub nsw i32 2048, %2386
  %2392 = lshr i32 %2391, 5
  %2393 = trunc i32 %2392 to i16
  %2394 = add i16 %2385, %2393
  br label %2403

2395:                                             ; preds = %2378
  %2396 = sub i32 %2380, %2387
  %2397 = sub i32 %2381, %2387
  %2398 = lshr i16 %2385, 5
  %2399 = sub i16 %2385, %2398
  %2400 = or disjoint i32 %2389, 1
  %2401 = shl nuw i32 1, %2362
  %2402 = add i32 %2401, %2360
  br label %2403

2403:                                             ; preds = %2395, %2390
  %2404 = phi i16 [ %2394, %2390 ], [ %2399, %2395 ]
  %2405 = phi i32 [ %2360, %2390 ], [ %2402, %2395 ]
  %2406 = phi i32 [ %2389, %2390 ], [ %2400, %2395 ]
  %2407 = phi i32 [ %2387, %2390 ], [ %2396, %2395 ]
  %2408 = phi i32 [ %2381, %2390 ], [ %2397, %2395 ]
  store i16 %2404, ptr %2384, align 2
  %2409 = add i32 %2362, 1
  br label %2410

2410:                                             ; preds = %2200, %2403
  %2411 = phi i32 [ %2201, %2200 ], [ %2405, %2403 ]
  %2412 = phi i32 [ %2207, %2200 ], [ %2406, %2403 ]
  %2413 = phi i32 [ %2209, %2200 ], [ %2409, %2403 ]
  %2414 = phi i64 [ %2210, %2200 ], [ %2379, %2403 ]
  %2415 = phi i32 [ %2211, %2200 ], [ %2407, %2403 ]
  %2416 = phi i32 [ %2212, %2200 ], [ %2408, %2403 ]
  %2417 = icmp ult i32 %2415, 16777216
  br i1 %2417, label %2418, label %2429

2418:                                             ; preds = %2410
  %2419 = icmp eq i64 %2414, %4
  br i1 %2419, label %2420, label %2421

2420:                                             ; preds = %2418
  store i32 42, ptr %58, align 8, !tbaa !53
  br label %3810

2421:                                             ; preds = %2418
  %2422 = shl nuw i32 %2415, 8
  %2423 = shl i32 %2416, 8
  %2424 = add i64 %2414, 1
  %2425 = getelementptr inbounds i8, ptr %2, i64 %2414
  %2426 = load i8, ptr %2425, align 1, !tbaa !54
  %2427 = zext i8 %2426 to i32
  %2428 = or disjoint i32 %2423, %2427
  br label %2429

2429:                                             ; preds = %2421, %2410
  %2430 = phi i64 [ %2424, %2421 ], [ %2414, %2410 ]
  %2431 = phi i32 [ %2422, %2421 ], [ %2415, %2410 ]
  %2432 = phi i32 [ %2428, %2421 ], [ %2416, %2410 ]
  %2433 = lshr i32 %2431, 11
  %2434 = zext i32 %2412 to i64
  %2435 = getelementptr inbounds i16, ptr %2206, i64 %2434
  %2436 = load i16, ptr %2435, align 2, !tbaa !55
  %2437 = zext i16 %2436 to i32
  %2438 = mul i32 %2433, %2437
  %2439 = icmp ult i32 %2432, %2438
  br i1 %2439, label %2440, label %2445

2440:                                             ; preds = %2429
  %2441 = sub nsw i32 2048, %2437
  %2442 = lshr i32 %2441, 5
  %2443 = trunc i32 %2442 to i16
  %2444 = add i16 %2436, %2443
  store i16 %2444, ptr %2435, align 2, !tbaa !55
  br label %2729

2445:                                             ; preds = %2429
  %2446 = sub i32 %2431, %2438
  %2447 = sub i32 %2432, %2438
  %2448 = lshr i16 %2436, 5
  %2449 = sub i16 %2436, %2448
  store i16 %2449, ptr %2435, align 2, !tbaa !55
  %2450 = shl nuw i32 1, %2413
  %2451 = add i32 %2450, %2411
  br label %2729

2452:                                             ; preds = %2185
  %2453 = add nsw i32 %2186, -5
  br label %2454

2454:                                             ; preds = %57, %2452
  %2455 = phi i32 [ %2188, %2452 ], [ %22, %57 ]
  %2456 = phi i32 [ %2132, %2452 ], [ %24, %57 ]
  %2457 = phi i32 [ %2133, %2452 ], [ %26, %57 ]
  %2458 = phi i32 [ %2134, %2452 ], [ %28, %57 ]
  %2459 = phi i32 [ %2135, %2452 ], [ %20, %57 ]
  %2460 = phi ptr [ %2136, %2452 ], [ %32, %57 ]
  %2461 = phi i32 [ %2183, %2452 ], [ %34, %57 ]
  %2462 = phi i32 [ %2453, %2452 ], [ %36, %57 ]
  %2463 = phi i32 [ %2139, %2452 ], [ %38, %57 ]
  %2464 = phi i64 [ %2156, %2452 ], [ %18, %57 ]
  %2465 = phi i32 [ %2181, %2452 ], [ %13, %57 ]
  %2466 = phi i32 [ %2182, %2452 ], [ %15, %57 ]
  br label %2467

2467:                                             ; preds = %2485, %2454
  %2468 = phi i32 [ %2455, %2454 ], [ %2496, %2485 ]
  %2469 = phi i32 [ %2462, %2454 ], [ %2497, %2485 ]
  %2470 = phi i64 [ %2464, %2454 ], [ %2486, %2485 ]
  %2471 = phi i32 [ %2465, %2454 ], [ %2489, %2485 ]
  %2472 = phi i32 [ %2466, %2454 ], [ %2493, %2485 ]
  %2473 = icmp ult i32 %2471, 16777216
  br i1 %2473, label %2474, label %2485

2474:                                             ; preds = %2467
  %2475 = icmp eq i64 %2470, %4
  br i1 %2475, label %2476, label %2477

2476:                                             ; preds = %2474
  store i32 43, ptr %58, align 8, !tbaa !53
  br label %3810

2477:                                             ; preds = %2474
  %2478 = shl nuw i32 %2471, 8
  %2479 = shl i32 %2472, 8
  %2480 = add i64 %2470, 1
  %2481 = getelementptr inbounds i8, ptr %2, i64 %2470
  %2482 = load i8, ptr %2481, align 1, !tbaa !54
  %2483 = zext i8 %2482 to i32
  %2484 = or disjoint i32 %2479, %2483
  br label %2485

2485:                                             ; preds = %2477, %2467
  %2486 = phi i64 [ %2480, %2477 ], [ %2470, %2467 ]
  %2487 = phi i32 [ %2478, %2477 ], [ %2471, %2467 ]
  %2488 = phi i32 [ %2484, %2477 ], [ %2472, %2467 ]
  %2489 = lshr i32 %2487, 1
  %2490 = sub i32 %2488, %2489
  %2491 = ashr i32 %2490, 31
  %2492 = and i32 %2491, %2489
  %2493 = add i32 %2492, %2490
  %2494 = shl i32 %2468, 1
  %2495 = or disjoint i32 %2494, 1
  %2496 = add nsw i32 %2495, %2491
  %2497 = add i32 %2469, -1
  %2498 = icmp eq i32 %2497, 0
  br i1 %2498, label %2499, label %2467, !llvm.loop !58

2499:                                             ; preds = %2485
  %2500 = shl i32 %2496, 4
  br label %2501

2501:                                             ; preds = %57, %2499
  %2502 = phi i32 [ %2500, %2499 ], [ %22, %57 ]
  %2503 = phi i32 [ %2456, %2499 ], [ %24, %57 ]
  %2504 = phi i32 [ %2457, %2499 ], [ %26, %57 ]
  %2505 = phi i32 [ %2458, %2499 ], [ %28, %57 ]
  %2506 = phi i32 [ %2459, %2499 ], [ %20, %57 ]
  %2507 = phi ptr [ %2460, %2499 ], [ %32, %57 ]
  %2508 = phi i32 [ 1, %2499 ], [ %34, %57 ]
  %2509 = phi i32 [ 0, %2499 ], [ %36, %57 ]
  %2510 = phi i32 [ %2463, %2499 ], [ %38, %57 ]
  %2511 = phi i64 [ %2486, %2499 ], [ %18, %57 ]
  %2512 = phi i32 [ %2489, %2499 ], [ %13, %57 ]
  %2513 = phi i32 [ %2493, %2499 ], [ %15, %57 ]
  %2514 = icmp ult i32 %2512, 16777216
  br i1 %2514, label %2515, label %2526

2515:                                             ; preds = %2501
  %2516 = icmp eq i64 %2511, %4
  br i1 %2516, label %2517, label %2518

2517:                                             ; preds = %2515
  store i32 44, ptr %58, align 8, !tbaa !53
  br label %3810

2518:                                             ; preds = %2515
  %2519 = shl nuw i32 %2512, 8
  %2520 = shl i32 %2513, 8
  %2521 = add i64 %2511, 1
  %2522 = getelementptr inbounds i8, ptr %2, i64 %2511
  %2523 = load i8, ptr %2522, align 1, !tbaa !54
  %2524 = zext i8 %2523 to i32
  %2525 = or disjoint i32 %2520, %2524
  br label %2526

2526:                                             ; preds = %2518, %2501
  %2527 = phi i64 [ %2521, %2518 ], [ %2511, %2501 ]
  %2528 = phi i32 [ %2519, %2518 ], [ %2512, %2501 ]
  %2529 = phi i32 [ %2525, %2518 ], [ %2513, %2501 ]
  %2530 = lshr i32 %2528, 11
  %2531 = zext i32 %2508 to i64
  %2532 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %2531
  %2533 = load i16, ptr %2532, align 2, !tbaa !55
  %2534 = zext i16 %2533 to i32
  %2535 = mul i32 %2530, %2534
  %2536 = icmp ult i32 %2529, %2535
  %2537 = shl i32 %2508, 1
  br i1 %2536, label %2538, label %2543

2538:                                             ; preds = %2526
  %2539 = sub nsw i32 2048, %2534
  %2540 = lshr i32 %2539, 5
  %2541 = trunc i32 %2540 to i16
  %2542 = add i16 %2533, %2541
  store i16 %2542, ptr %2532, align 2, !tbaa !55
  br label %2550

2543:                                             ; preds = %2526
  %2544 = sub i32 %2528, %2535
  %2545 = sub i32 %2529, %2535
  %2546 = lshr i16 %2533, 5
  %2547 = sub i16 %2533, %2546
  store i16 %2547, ptr %2532, align 2, !tbaa !55
  %2548 = or disjoint i32 %2537, 1
  %2549 = add i32 %2502, 1
  br label %2550

2550:                                             ; preds = %2538, %2543, %57
  %2551 = phi i32 [ %2502, %2538 ], [ %2549, %2543 ], [ %22, %57 ]
  %2552 = phi i32 [ %2503, %2538 ], [ %2503, %2543 ], [ %24, %57 ]
  %2553 = phi i32 [ %2504, %2538 ], [ %2504, %2543 ], [ %26, %57 ]
  %2554 = phi i32 [ %2505, %2538 ], [ %2505, %2543 ], [ %28, %57 ]
  %2555 = phi i32 [ %2506, %2538 ], [ %2506, %2543 ], [ %20, %57 ]
  %2556 = phi ptr [ %2507, %2538 ], [ %2507, %2543 ], [ %32, %57 ]
  %2557 = phi i32 [ %2537, %2538 ], [ %2548, %2543 ], [ %34, %57 ]
  %2558 = phi i32 [ %2509, %2538 ], [ %2509, %2543 ], [ %36, %57 ]
  %2559 = phi i32 [ %2510, %2538 ], [ %2510, %2543 ], [ %38, %57 ]
  %2560 = phi i64 [ %2527, %2538 ], [ %2527, %2543 ], [ %18, %57 ]
  %2561 = phi i32 [ %2535, %2538 ], [ %2544, %2543 ], [ %13, %57 ]
  %2562 = phi i32 [ %2529, %2538 ], [ %2545, %2543 ], [ %15, %57 ]
  %2563 = icmp ult i32 %2561, 16777216
  br i1 %2563, label %2564, label %2575

2564:                                             ; preds = %2550
  %2565 = icmp eq i64 %2560, %4
  br i1 %2565, label %2566, label %2567

2566:                                             ; preds = %2564
  store i32 45, ptr %58, align 8, !tbaa !53
  br label %3810

2567:                                             ; preds = %2564
  %2568 = shl nuw i32 %2561, 8
  %2569 = shl i32 %2562, 8
  %2570 = add i64 %2560, 1
  %2571 = getelementptr inbounds i8, ptr %2, i64 %2560
  %2572 = load i8, ptr %2571, align 1, !tbaa !54
  %2573 = zext i8 %2572 to i32
  %2574 = or disjoint i32 %2569, %2573
  br label %2575

2575:                                             ; preds = %2567, %2550
  %2576 = phi i64 [ %2570, %2567 ], [ %2560, %2550 ]
  %2577 = phi i32 [ %2568, %2567 ], [ %2561, %2550 ]
  %2578 = phi i32 [ %2574, %2567 ], [ %2562, %2550 ]
  %2579 = lshr i32 %2577, 11
  %2580 = zext i32 %2557 to i64
  %2581 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %2580
  %2582 = load i16, ptr %2581, align 2, !tbaa !55
  %2583 = zext i16 %2582 to i32
  %2584 = mul i32 %2579, %2583
  %2585 = icmp ult i32 %2578, %2584
  %2586 = shl i32 %2557, 1
  br i1 %2585, label %2587, label %2592

2587:                                             ; preds = %2575
  %2588 = sub nsw i32 2048, %2583
  %2589 = lshr i32 %2588, 5
  %2590 = trunc i32 %2589 to i16
  %2591 = add i16 %2582, %2590
  store i16 %2591, ptr %2581, align 2, !tbaa !55
  br label %2599

2592:                                             ; preds = %2575
  %2593 = sub i32 %2577, %2584
  %2594 = sub i32 %2578, %2584
  %2595 = lshr i16 %2582, 5
  %2596 = sub i16 %2582, %2595
  store i16 %2596, ptr %2581, align 2, !tbaa !55
  %2597 = or disjoint i32 %2586, 1
  %2598 = add i32 %2551, 2
  br label %2599

2599:                                             ; preds = %2587, %2592, %57
  %2600 = phi i32 [ %2551, %2587 ], [ %2598, %2592 ], [ %22, %57 ]
  %2601 = phi i32 [ %2552, %2587 ], [ %2552, %2592 ], [ %24, %57 ]
  %2602 = phi i32 [ %2553, %2587 ], [ %2553, %2592 ], [ %26, %57 ]
  %2603 = phi i32 [ %2554, %2587 ], [ %2554, %2592 ], [ %28, %57 ]
  %2604 = phi i32 [ %2555, %2587 ], [ %2555, %2592 ], [ %20, %57 ]
  %2605 = phi ptr [ %2556, %2587 ], [ %2556, %2592 ], [ %32, %57 ]
  %2606 = phi i32 [ %2586, %2587 ], [ %2597, %2592 ], [ %34, %57 ]
  %2607 = phi i32 [ %2558, %2587 ], [ %2558, %2592 ], [ %36, %57 ]
  %2608 = phi i32 [ %2559, %2587 ], [ %2559, %2592 ], [ %38, %57 ]
  %2609 = phi i64 [ %2576, %2587 ], [ %2576, %2592 ], [ %18, %57 ]
  %2610 = phi i32 [ %2584, %2587 ], [ %2593, %2592 ], [ %13, %57 ]
  %2611 = phi i32 [ %2578, %2587 ], [ %2594, %2592 ], [ %15, %57 ]
  %2612 = icmp ult i32 %2610, 16777216
  br i1 %2612, label %2613, label %2624

2613:                                             ; preds = %2599
  %2614 = icmp eq i64 %2609, %4
  br i1 %2614, label %2615, label %2616

2615:                                             ; preds = %2613
  store i32 46, ptr %58, align 8, !tbaa !53
  br label %3810

2616:                                             ; preds = %2613
  %2617 = shl nuw i32 %2610, 8
  %2618 = shl i32 %2611, 8
  %2619 = add i64 %2609, 1
  %2620 = getelementptr inbounds i8, ptr %2, i64 %2609
  %2621 = load i8, ptr %2620, align 1, !tbaa !54
  %2622 = zext i8 %2621 to i32
  %2623 = or disjoint i32 %2618, %2622
  br label %2624

2624:                                             ; preds = %2616, %2599
  %2625 = phi i64 [ %2619, %2616 ], [ %2609, %2599 ]
  %2626 = phi i32 [ %2617, %2616 ], [ %2610, %2599 ]
  %2627 = phi i32 [ %2623, %2616 ], [ %2611, %2599 ]
  %2628 = lshr i32 %2626, 11
  %2629 = zext i32 %2606 to i64
  %2630 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %2629
  %2631 = load i16, ptr %2630, align 2, !tbaa !55
  %2632 = zext i16 %2631 to i32
  %2633 = mul i32 %2628, %2632
  %2634 = icmp ult i32 %2627, %2633
  %2635 = shl i32 %2606, 1
  br i1 %2634, label %2636, label %2641

2636:                                             ; preds = %2624
  %2637 = sub nsw i32 2048, %2632
  %2638 = lshr i32 %2637, 5
  %2639 = trunc i32 %2638 to i16
  %2640 = add i16 %2631, %2639
  store i16 %2640, ptr %2630, align 2, !tbaa !55
  br label %2648

2641:                                             ; preds = %2624
  %2642 = sub i32 %2626, %2633
  %2643 = sub i32 %2627, %2633
  %2644 = lshr i16 %2631, 5
  %2645 = sub i16 %2631, %2644
  store i16 %2645, ptr %2630, align 2, !tbaa !55
  %2646 = or disjoint i32 %2635, 1
  %2647 = add i32 %2600, 4
  br label %2648

2648:                                             ; preds = %2636, %2641, %57
  %2649 = phi i32 [ %2600, %2636 ], [ %2647, %2641 ], [ %22, %57 ]
  %2650 = phi i32 [ %2601, %2636 ], [ %2601, %2641 ], [ %24, %57 ]
  %2651 = phi i32 [ %2602, %2636 ], [ %2602, %2641 ], [ %26, %57 ]
  %2652 = phi i32 [ %2603, %2636 ], [ %2603, %2641 ], [ %28, %57 ]
  %2653 = phi i32 [ %2604, %2636 ], [ %2604, %2641 ], [ %20, %57 ]
  %2654 = phi ptr [ %2605, %2636 ], [ %2605, %2641 ], [ %32, %57 ]
  %2655 = phi i32 [ %2635, %2636 ], [ %2646, %2641 ], [ %34, %57 ]
  %2656 = phi i32 [ %2607, %2636 ], [ %2607, %2641 ], [ %36, %57 ]
  %2657 = phi i32 [ %2608, %2636 ], [ %2608, %2641 ], [ %38, %57 ]
  %2658 = phi i64 [ %2625, %2636 ], [ %2625, %2641 ], [ %18, %57 ]
  %2659 = phi i32 [ %2633, %2636 ], [ %2642, %2641 ], [ %13, %57 ]
  %2660 = phi i32 [ %2627, %2636 ], [ %2643, %2641 ], [ %15, %57 ]
  %2661 = icmp ult i32 %2659, 16777216
  br i1 %2661, label %2662, label %2673

2662:                                             ; preds = %2648
  %2663 = icmp eq i64 %2658, %4
  br i1 %2663, label %2664, label %2665

2664:                                             ; preds = %2662
  store i32 47, ptr %58, align 8, !tbaa !53
  br label %3810

2665:                                             ; preds = %2662
  %2666 = shl nuw i32 %2659, 8
  %2667 = shl i32 %2660, 8
  %2668 = add i64 %2658, 1
  %2669 = getelementptr inbounds i8, ptr %2, i64 %2658
  %2670 = load i8, ptr %2669, align 1, !tbaa !54
  %2671 = zext i8 %2670 to i32
  %2672 = or disjoint i32 %2667, %2671
  br label %2673

2673:                                             ; preds = %2665, %2648
  %2674 = phi i64 [ %2668, %2665 ], [ %2658, %2648 ]
  %2675 = phi i32 [ %2666, %2665 ], [ %2659, %2648 ]
  %2676 = phi i32 [ %2672, %2665 ], [ %2660, %2648 ]
  %2677 = lshr i32 %2675, 11
  %2678 = zext i32 %2655 to i64
  %2679 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 %2678
  %2680 = load i16, ptr %2679, align 2, !tbaa !55
  %2681 = zext i16 %2680 to i32
  %2682 = mul i32 %2677, %2681
  %2683 = icmp ult i32 %2676, %2682
  br i1 %2683, label %2684, label %2689

2684:                                             ; preds = %2673
  %2685 = sub nsw i32 2048, %2681
  %2686 = lshr i32 %2685, 5
  %2687 = trunc i32 %2686 to i16
  %2688 = add i16 %2680, %2687
  br label %2695

2689:                                             ; preds = %2673
  %2690 = sub i32 %2675, %2682
  %2691 = sub i32 %2676, %2682
  %2692 = lshr i16 %2680, 5
  %2693 = sub i16 %2680, %2692
  %2694 = add i32 %2649, 8
  br label %2695

2695:                                             ; preds = %2689, %2684
  %2696 = phi i16 [ %2688, %2684 ], [ %2693, %2689 ]
  %2697 = phi i32 [ %2649, %2684 ], [ %2694, %2689 ]
  %2698 = phi i32 [ %2682, %2684 ], [ %2690, %2689 ]
  %2699 = phi i32 [ %2676, %2684 ], [ %2691, %2689 ]
  store i16 %2696, ptr %2679, align 2
  %2700 = icmp eq i32 %2697, -1
  br i1 %2700, label %2701, label %2729

2701:                                             ; preds = %2695
  %2702 = load i64, ptr %47, align 8, !tbaa !51
  %2703 = icmp eq i64 %2702, -1
  br i1 %2703, label %2704, label %3810

2704:                                             ; preds = %57, %2701
  %2705 = phi i32 [ -1, %2701 ], [ %22, %57 ]
  %2706 = phi i32 [ %2650, %2701 ], [ %24, %57 ]
  %2707 = phi i32 [ %2651, %2701 ], [ %26, %57 ]
  %2708 = phi i32 [ %2652, %2701 ], [ %28, %57 ]
  %2709 = phi i32 [ %2653, %2701 ], [ %20, %57 ]
  %2710 = phi ptr [ %2654, %2701 ], [ %32, %57 ]
  %2711 = phi i32 [ %2655, %2701 ], [ %34, %57 ]
  %2712 = phi i32 [ %2656, %2701 ], [ %36, %57 ]
  %2713 = phi i32 [ %2657, %2701 ], [ %38, %57 ]
  %2714 = phi i64 [ %2674, %2701 ], [ %18, %57 ]
  %2715 = phi i32 [ %2698, %2701 ], [ %13, %57 ]
  %2716 = phi i32 [ %2699, %2701 ], [ %15, %57 ]
  %2717 = icmp ult i32 %2715, 16777216
  br i1 %2717, label %2718, label %3810

2718:                                             ; preds = %2704
  %2719 = icmp eq i64 %2714, %4
  br i1 %2719, label %2720, label %2721

2720:                                             ; preds = %2718
  store i32 48, ptr %58, align 8, !tbaa !53
  br label %3810

2721:                                             ; preds = %2718
  %2722 = shl nuw i32 %2715, 8
  %2723 = shl i32 %2716, 8
  %2724 = add i64 %2714, 1
  %2725 = getelementptr inbounds i8, ptr %2, i64 %2714
  %2726 = load i8, ptr %2725, align 1, !tbaa !54
  %2727 = zext i8 %2726 to i32
  %2728 = or disjoint i32 %2723, %2727
  br label %3810

2729:                                             ; preds = %2178, %2440, %2445, %2200, %2695
  %2730 = phi i32 [ %2201, %2200 ], [ %2411, %2440 ], [ %2451, %2445 ], [ %2697, %2695 ], [ %2183, %2178 ]
  %2731 = phi i32 [ %2202, %2200 ], [ %2202, %2440 ], [ %2202, %2445 ], [ %2650, %2695 ], [ %2132, %2178 ]
  %2732 = phi i32 [ %2203, %2200 ], [ %2203, %2440 ], [ %2203, %2445 ], [ %2651, %2695 ], [ %2133, %2178 ]
  %2733 = phi i32 [ %2204, %2200 ], [ %2204, %2440 ], [ %2204, %2445 ], [ %2652, %2695 ], [ %2134, %2178 ]
  %2734 = phi i32 [ %2205, %2200 ], [ %2205, %2440 ], [ %2205, %2445 ], [ %2653, %2695 ], [ %2135, %2178 ]
  %2735 = phi ptr [ %2206, %2200 ], [ %2206, %2440 ], [ %2206, %2445 ], [ %2654, %2695 ], [ %2136, %2178 ]
  %2736 = phi i32 [ %2207, %2200 ], [ %2412, %2440 ], [ %2412, %2445 ], [ %2655, %2695 ], [ %2183, %2178 ]
  %2737 = phi i32 [ %2208, %2200 ], [ 1, %2440 ], [ 1, %2445 ], [ %2656, %2695 ], [ %2138, %2178 ]
  %2738 = phi i32 [ %2209, %2200 ], [ %2413, %2440 ], [ %2413, %2445 ], [ %2657, %2695 ], [ %2139, %2178 ]
  %2739 = phi i64 [ %2210, %2200 ], [ %2430, %2440 ], [ %2430, %2445 ], [ %2674, %2695 ], [ %2156, %2178 ]
  %2740 = phi i32 [ %2211, %2200 ], [ %2438, %2440 ], [ %2446, %2445 ], [ %2698, %2695 ], [ %2181, %2178 ]
  %2741 = phi i32 [ %2212, %2200 ], [ %2432, %2440 ], [ %2447, %2445 ], [ %2699, %2695 ], [ %2182, %2178 ]
  %2742 = zext i32 %2730 to i64
  %2743 = call fastcc zeroext i1 @dict_is_distance_valid(ptr noundef nonnull %6, i64 noundef %2742) #13
  br i1 %2743, label %3766, label %3810

2744:                                             ; preds = %1061
  %2745 = sub i32 %1063, %1070
  %2746 = sub i32 %1064, %1070
  %2747 = lshr i16 %1068, 5
  %2748 = sub i16 %1068, %2747
  store i16 %2748, ptr %1067, align 2, !tbaa !55
  %2749 = call fastcc zeroext i1 @dict_is_distance_valid(ptr noundef nonnull %6, i64 noundef 0) #13
  br i1 %2749, label %2750, label %3810

2750:                                             ; preds = %57, %2744
  %2751 = phi i32 [ %1036, %2744 ], [ %22, %57 ]
  %2752 = phi i32 [ %1037, %2744 ], [ %24, %57 ]
  %2753 = phi i32 [ %1038, %2744 ], [ %26, %57 ]
  %2754 = phi i32 [ %1039, %2744 ], [ %28, %57 ]
  %2755 = phi i32 [ %1040, %2744 ], [ %20, %57 ]
  %2756 = phi ptr [ %1041, %2744 ], [ %32, %57 ]
  %2757 = phi i32 [ %1042, %2744 ], [ %34, %57 ]
  %2758 = phi i32 [ %1043, %2744 ], [ %36, %57 ]
  %2759 = phi i32 [ %1044, %2744 ], [ %38, %57 ]
  %2760 = phi i64 [ %1062, %2744 ], [ %18, %57 ]
  %2761 = phi i32 [ %1046, %2744 ], [ %46, %57 ]
  %2762 = phi i32 [ %2745, %2744 ], [ %13, %57 ]
  %2763 = phi i32 [ %2746, %2744 ], [ %15, %57 ]
  %2764 = icmp ult i32 %2762, 16777216
  br i1 %2764, label %2765, label %2776

2765:                                             ; preds = %2750
  %2766 = icmp eq i64 %2760, %4
  br i1 %2766, label %2767, label %2768

2767:                                             ; preds = %2765
  store i32 49, ptr %58, align 8, !tbaa !53
  br label %3810

2768:                                             ; preds = %2765
  %2769 = shl nuw i32 %2762, 8
  %2770 = shl i32 %2763, 8
  %2771 = add i64 %2760, 1
  %2772 = getelementptr inbounds i8, ptr %2, i64 %2760
  %2773 = load i8, ptr %2772, align 1, !tbaa !54
  %2774 = zext i8 %2773 to i32
  %2775 = or disjoint i32 %2770, %2774
  br label %2776

2776:                                             ; preds = %2768, %2750
  %2777 = phi i64 [ %2771, %2768 ], [ %2760, %2750 ]
  %2778 = phi i32 [ %2769, %2768 ], [ %2762, %2750 ]
  %2779 = phi i32 [ %2775, %2768 ], [ %2763, %2750 ]
  %2780 = lshr i32 %2778, 11
  %2781 = zext i32 %2755 to i64
  %2782 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %2781
  %2783 = load i16, ptr %2782, align 2, !tbaa !55
  %2784 = zext i16 %2783 to i32
  %2785 = mul i32 %2780, %2784
  %2786 = icmp ult i32 %2779, %2785
  br i1 %2786, label %2787, label %2858

2787:                                             ; preds = %2776
  %2788 = sub nsw i32 2048, %2784
  %2789 = lshr i32 %2788, 5
  %2790 = trunc i32 %2789 to i16
  %2791 = add i16 %2783, %2790
  store i16 %2791, ptr %2782, align 2, !tbaa !55
  br label %2792

2792:                                             ; preds = %2787, %57
  %2793 = phi i32 [ %2751, %2787 ], [ %22, %57 ]
  %2794 = phi i32 [ %2752, %2787 ], [ %24, %57 ]
  %2795 = phi i32 [ %2753, %2787 ], [ %26, %57 ]
  %2796 = phi i32 [ %2754, %2787 ], [ %28, %57 ]
  %2797 = phi i32 [ %2755, %2787 ], [ %20, %57 ]
  %2798 = phi ptr [ %2756, %2787 ], [ %32, %57 ]
  %2799 = phi i32 [ %2757, %2787 ], [ %34, %57 ]
  %2800 = phi i32 [ %2758, %2787 ], [ %36, %57 ]
  %2801 = phi i32 [ %2759, %2787 ], [ %38, %57 ]
  %2802 = phi i64 [ %2777, %2787 ], [ %18, %57 ]
  %2803 = phi i32 [ %2761, %2787 ], [ %46, %57 ]
  %2804 = phi i32 [ %2785, %2787 ], [ %13, %57 ]
  %2805 = phi i32 [ %2779, %2787 ], [ %15, %57 ]
  %2806 = icmp ult i32 %2804, 16777216
  br i1 %2806, label %2807, label %2818

2807:                                             ; preds = %2792
  %2808 = icmp eq i64 %2802, %4
  br i1 %2808, label %2809, label %2810

2809:                                             ; preds = %2807
  store i32 51, ptr %58, align 8, !tbaa !53
  br label %3810

2810:                                             ; preds = %2807
  %2811 = shl nuw i32 %2804, 8
  %2812 = shl i32 %2805, 8
  %2813 = add i64 %2802, 1
  %2814 = getelementptr inbounds i8, ptr %2, i64 %2802
  %2815 = load i8, ptr %2814, align 1, !tbaa !54
  %2816 = zext i8 %2815 to i32
  %2817 = or disjoint i32 %2812, %2816
  br label %2818

2818:                                             ; preds = %2810, %2792
  %2819 = phi i64 [ %2813, %2810 ], [ %2802, %2792 ]
  %2820 = phi i32 [ %2811, %2810 ], [ %2804, %2792 ]
  %2821 = phi i32 [ %2817, %2810 ], [ %2805, %2792 ]
  %2822 = lshr i32 %2820, 11
  %2823 = zext i32 %2797 to i64
  %2824 = zext i32 %2803 to i64
  %2825 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6, i64 %2823, i64 %2824
  %2826 = load i16, ptr %2825, align 2, !tbaa !55
  %2827 = zext i16 %2826 to i32
  %2828 = mul i32 %2822, %2827
  %2829 = icmp ult i32 %2821, %2828
  br i1 %2829, label %2830, label %2853

2830:                                             ; preds = %2818
  %2831 = sub nsw i32 2048, %2827
  %2832 = lshr i32 %2831, 5
  %2833 = trunc i32 %2832 to i16
  %2834 = add i16 %2826, %2833
  store i16 %2834, ptr %2825, align 2, !tbaa !55
  %2835 = icmp ult i32 %2797, 7
  %2836 = select i1 %2835, i32 9, i32 11
  br label %2837

2837:                                             ; preds = %57, %2830
  %2838 = phi i32 [ %2793, %2830 ], [ %22, %57 ]
  %2839 = phi i32 [ %2794, %2830 ], [ %24, %57 ]
  %2840 = phi i32 [ %2795, %2830 ], [ %26, %57 ]
  %2841 = phi i32 [ %2796, %2830 ], [ %28, %57 ]
  %2842 = phi i32 [ %2836, %2830 ], [ %20, %57 ]
  %2843 = phi ptr [ %2798, %2830 ], [ %32, %57 ]
  %2844 = phi i32 [ %2799, %2830 ], [ %34, %57 ]
  %2845 = phi i32 [ %2800, %2830 ], [ %36, %57 ]
  %2846 = phi i32 [ %2801, %2830 ], [ %38, %57 ]
  %2847 = phi i64 [ %2819, %2830 ], [ %18, %57 ]
  %2848 = phi i32 [ %2828, %2830 ], [ %13, %57 ]
  %2849 = phi i32 [ %2821, %2830 ], [ %15, %57 ]
  %2850 = call fastcc zeroext i8 @dict_get(ptr noundef nonnull %6, i32 noundef %2838) #13
  %2851 = call fastcc zeroext i1 @dict_put(ptr noundef nonnull %6, i8 noundef zeroext %2850) #13
  br i1 %2851, label %2852, label %60

2852:                                             ; preds = %2837
  store i32 50, ptr %58, align 8, !tbaa !53
  br label %3810

2853:                                             ; preds = %2818
  %2854 = sub i32 %2820, %2828
  %2855 = sub i32 %2821, %2828
  %2856 = lshr i16 %2826, 5
  %2857 = sub i16 %2826, %2856
  store i16 %2857, ptr %2825, align 2, !tbaa !55
  br label %2957

2858:                                             ; preds = %2776
  %2859 = sub i32 %2778, %2785
  %2860 = sub i32 %2779, %2785
  %2861 = lshr i16 %2783, 5
  %2862 = sub i16 %2783, %2861
  store i16 %2862, ptr %2782, align 2, !tbaa !55
  br label %2863

2863:                                             ; preds = %2858, %57
  %2864 = phi i32 [ %2751, %2858 ], [ %22, %57 ]
  %2865 = phi i32 [ %2752, %2858 ], [ %24, %57 ]
  %2866 = phi i32 [ %2753, %2858 ], [ %26, %57 ]
  %2867 = phi i32 [ %2754, %2858 ], [ %28, %57 ]
  %2868 = phi i32 [ %2755, %2858 ], [ %20, %57 ]
  %2869 = phi ptr [ %2756, %2858 ], [ %32, %57 ]
  %2870 = phi i32 [ %2757, %2858 ], [ %34, %57 ]
  %2871 = phi i32 [ %2758, %2858 ], [ %36, %57 ]
  %2872 = phi i32 [ %2759, %2858 ], [ %38, %57 ]
  %2873 = phi i64 [ %2777, %2858 ], [ %18, %57 ]
  %2874 = phi i32 [ %2761, %2858 ], [ %46, %57 ]
  %2875 = phi i32 [ %2859, %2858 ], [ %13, %57 ]
  %2876 = phi i32 [ %2860, %2858 ], [ %15, %57 ]
  %2877 = icmp ult i32 %2875, 16777216
  br i1 %2877, label %2878, label %2889

2878:                                             ; preds = %2863
  %2879 = icmp eq i64 %2873, %4
  br i1 %2879, label %2880, label %2881

2880:                                             ; preds = %2878
  store i32 52, ptr %58, align 8, !tbaa !53
  br label %3810

2881:                                             ; preds = %2878
  %2882 = shl nuw i32 %2875, 8
  %2883 = shl i32 %2876, 8
  %2884 = add i64 %2873, 1
  %2885 = getelementptr inbounds i8, ptr %2, i64 %2873
  %2886 = load i8, ptr %2885, align 1, !tbaa !54
  %2887 = zext i8 %2886 to i32
  %2888 = or disjoint i32 %2883, %2887
  br label %2889

2889:                                             ; preds = %2881, %2863
  %2890 = phi i64 [ %2884, %2881 ], [ %2873, %2863 ]
  %2891 = phi i32 [ %2882, %2881 ], [ %2875, %2863 ]
  %2892 = phi i32 [ %2888, %2881 ], [ %2876, %2863 ]
  %2893 = lshr i32 %2891, 11
  %2894 = zext i32 %2868 to i64
  %2895 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %2894
  %2896 = load i16, ptr %2895, align 2, !tbaa !55
  %2897 = zext i16 %2896 to i32
  %2898 = mul i32 %2893, %2897
  %2899 = icmp ult i32 %2892, %2898
  br i1 %2899, label %2900, label %2905

2900:                                             ; preds = %2889
  %2901 = sub nsw i32 2048, %2897
  %2902 = lshr i32 %2901, 5
  %2903 = trunc i32 %2902 to i16
  %2904 = add i16 %2896, %2903
  store i16 %2904, ptr %2895, align 2, !tbaa !55
  br label %2957

2905:                                             ; preds = %2889
  %2906 = sub i32 %2891, %2898
  %2907 = sub i32 %2892, %2898
  %2908 = lshr i16 %2896, 5
  %2909 = sub i16 %2896, %2908
  store i16 %2909, ptr %2895, align 2, !tbaa !55
  br label %2910

2910:                                             ; preds = %2905, %57
  %2911 = phi i32 [ %2864, %2905 ], [ %22, %57 ]
  %2912 = phi i32 [ %2865, %2905 ], [ %24, %57 ]
  %2913 = phi i32 [ %2866, %2905 ], [ %26, %57 ]
  %2914 = phi i32 [ %2867, %2905 ], [ %28, %57 ]
  %2915 = phi i32 [ %2868, %2905 ], [ %20, %57 ]
  %2916 = phi ptr [ %2869, %2905 ], [ %32, %57 ]
  %2917 = phi i32 [ %2870, %2905 ], [ %34, %57 ]
  %2918 = phi i32 [ %2871, %2905 ], [ %36, %57 ]
  %2919 = phi i32 [ %2872, %2905 ], [ %38, %57 ]
  %2920 = phi i64 [ %2890, %2905 ], [ %18, %57 ]
  %2921 = phi i32 [ %2874, %2905 ], [ %46, %57 ]
  %2922 = phi i32 [ %2906, %2905 ], [ %13, %57 ]
  %2923 = phi i32 [ %2907, %2905 ], [ %15, %57 ]
  %2924 = icmp ult i32 %2922, 16777216
  br i1 %2924, label %2925, label %2936

2925:                                             ; preds = %2910
  %2926 = icmp eq i64 %2920, %4
  br i1 %2926, label %2927, label %2928

2927:                                             ; preds = %2925
  store i32 53, ptr %58, align 8, !tbaa !53
  br label %3810

2928:                                             ; preds = %2925
  %2929 = shl nuw i32 %2922, 8
  %2930 = shl i32 %2923, 8
  %2931 = add i64 %2920, 1
  %2932 = getelementptr inbounds i8, ptr %2, i64 %2920
  %2933 = load i8, ptr %2932, align 1, !tbaa !54
  %2934 = zext i8 %2933 to i32
  %2935 = or disjoint i32 %2930, %2934
  br label %2936

2936:                                             ; preds = %2928, %2910
  %2937 = phi i64 [ %2931, %2928 ], [ %2920, %2910 ]
  %2938 = phi i32 [ %2929, %2928 ], [ %2922, %2910 ]
  %2939 = phi i32 [ %2935, %2928 ], [ %2923, %2910 ]
  %2940 = lshr i32 %2938, 11
  %2941 = zext i32 %2915 to i64
  %2942 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i64 %2941
  %2943 = load i16, ptr %2942, align 2, !tbaa !55
  %2944 = zext i16 %2943 to i32
  %2945 = mul i32 %2940, %2944
  %2946 = icmp ult i32 %2939, %2945
  br i1 %2946, label %2947, label %2952

2947:                                             ; preds = %2936
  %2948 = sub nsw i32 2048, %2944
  %2949 = lshr i32 %2948, 5
  %2950 = trunc i32 %2949 to i16
  %2951 = add i16 %2943, %2950
  store i16 %2951, ptr %2942, align 2, !tbaa !55
  br label %2957

2952:                                             ; preds = %2936
  %2953 = sub i32 %2938, %2945
  %2954 = sub i32 %2939, %2945
  %2955 = lshr i16 %2943, 5
  %2956 = sub i16 %2943, %2955
  store i16 %2956, ptr %2942, align 2, !tbaa !55
  br label %2957

2957:                                             ; preds = %2900, %2952, %2947, %2853
  %2958 = phi i32 [ %2793, %2853 ], [ %2865, %2900 ], [ %2913, %2947 ], [ %2914, %2952 ]
  %2959 = phi i32 [ %2794, %2853 ], [ %2864, %2900 ], [ %2911, %2947 ], [ %2911, %2952 ]
  %2960 = phi i32 [ %2795, %2853 ], [ %2866, %2900 ], [ %2912, %2947 ], [ %2912, %2952 ]
  %2961 = phi i32 [ %2796, %2853 ], [ %2867, %2900 ], [ %2914, %2947 ], [ %2913, %2952 ]
  %2962 = phi i32 [ %2797, %2853 ], [ %2868, %2900 ], [ %2915, %2947 ], [ %2915, %2952 ]
  %2963 = phi ptr [ %2798, %2853 ], [ %2869, %2900 ], [ %2916, %2947 ], [ %2916, %2952 ]
  %2964 = phi i32 [ %2800, %2853 ], [ %2871, %2900 ], [ %2918, %2947 ], [ %2918, %2952 ]
  %2965 = phi i32 [ %2801, %2853 ], [ %2872, %2900 ], [ %2919, %2947 ], [ %2919, %2952 ]
  %2966 = phi i64 [ %2819, %2853 ], [ %2890, %2900 ], [ %2937, %2947 ], [ %2937, %2952 ]
  %2967 = phi i32 [ %2803, %2853 ], [ %2874, %2900 ], [ %2921, %2947 ], [ %2921, %2952 ]
  %2968 = phi i32 [ %2854, %2853 ], [ %2898, %2900 ], [ %2945, %2947 ], [ %2953, %2952 ]
  %2969 = phi i32 [ %2855, %2853 ], [ %2892, %2900 ], [ %2939, %2947 ], [ %2954, %2952 ]
  %2970 = icmp ult i32 %2962, 7
  %2971 = select i1 %2970, i32 8, i32 11
  br label %2972

2972:                                             ; preds = %2957, %57
  %2973 = phi i32 [ %2958, %2957 ], [ %22, %57 ]
  %2974 = phi i32 [ %2959, %2957 ], [ %24, %57 ]
  %2975 = phi i32 [ %2960, %2957 ], [ %26, %57 ]
  %2976 = phi i32 [ %2961, %2957 ], [ %28, %57 ]
  %2977 = phi i32 [ %2971, %2957 ], [ %20, %57 ]
  %2978 = phi ptr [ %2963, %2957 ], [ %32, %57 ]
  %2979 = phi i32 [ 1, %2957 ], [ %34, %57 ]
  %2980 = phi i32 [ %2964, %2957 ], [ %36, %57 ]
  %2981 = phi i32 [ %2965, %2957 ], [ %38, %57 ]
  %2982 = phi i64 [ %2966, %2957 ], [ %18, %57 ]
  %2983 = phi i32 [ %2967, %2957 ], [ %46, %57 ]
  %2984 = phi i32 [ %2968, %2957 ], [ %13, %57 ]
  %2985 = phi i32 [ %2969, %2957 ], [ %15, %57 ]
  %2986 = icmp ult i32 %2984, 16777216
  br i1 %2986, label %2987, label %2998

2987:                                             ; preds = %2972
  %2988 = icmp eq i64 %2982, %4
  br i1 %2988, label %2989, label %2990

2989:                                             ; preds = %2987
  store i32 54, ptr %58, align 8, !tbaa !53
  br label %3810

2990:                                             ; preds = %2987
  %2991 = shl nuw i32 %2984, 8
  %2992 = shl i32 %2985, 8
  %2993 = add i64 %2982, 1
  %2994 = getelementptr inbounds i8, ptr %2, i64 %2982
  %2995 = load i8, ptr %2994, align 1, !tbaa !54
  %2996 = zext i8 %2995 to i32
  %2997 = or disjoint i32 %2992, %2996
  br label %2998

2998:                                             ; preds = %2990, %2972
  %2999 = phi i64 [ %2993, %2990 ], [ %2982, %2972 ]
  %3000 = phi i32 [ %2991, %2990 ], [ %2984, %2972 ]
  %3001 = phi i32 [ %2997, %2990 ], [ %2985, %2972 ]
  %3002 = lshr i32 %3000, 11
  %3003 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  %3004 = load i16, ptr %3003, align 8, !tbaa !60
  %3005 = zext i16 %3004 to i32
  %3006 = mul i32 %3002, %3005
  %3007 = icmp ult i32 %3001, %3006
  br i1 %3007, label %3008, label %3169

3008:                                             ; preds = %2998
  %3009 = sub nsw i32 2048, %3005
  %3010 = lshr i32 %3009, 5
  %3011 = trunc i32 %3010 to i16
  %3012 = add i16 %3004, %3011
  store i16 %3012, ptr %3003, align 8, !tbaa !60
  br label %3013

3013:                                             ; preds = %57, %3008
  %3014 = phi i32 [ %2973, %3008 ], [ %22, %57 ]
  %3015 = phi i32 [ %2974, %3008 ], [ %24, %57 ]
  %3016 = phi i32 [ %2975, %3008 ], [ %26, %57 ]
  %3017 = phi i32 [ %2976, %3008 ], [ %28, %57 ]
  %3018 = phi i32 [ %2977, %3008 ], [ %20, %57 ]
  %3019 = phi ptr [ %2978, %3008 ], [ %32, %57 ]
  %3020 = phi i32 [ %2979, %3008 ], [ %34, %57 ]
  %3021 = phi i32 [ %2980, %3008 ], [ %36, %57 ]
  %3022 = phi i32 [ %2981, %3008 ], [ %38, %57 ]
  %3023 = phi i64 [ %2999, %3008 ], [ %18, %57 ]
  %3024 = phi i32 [ %2983, %3008 ], [ %46, %57 ]
  %3025 = phi i32 [ %3006, %3008 ], [ %13, %57 ]
  %3026 = phi i32 [ %3001, %3008 ], [ %15, %57 ]
  %3027 = icmp ult i32 %3025, 16777216
  br i1 %3027, label %3028, label %3039

3028:                                             ; preds = %3013
  %3029 = icmp eq i64 %3023, %4
  br i1 %3029, label %3030, label %3031

3030:                                             ; preds = %3028
  store i32 55, ptr %58, align 8, !tbaa !53
  br label %3810

3031:                                             ; preds = %3028
  %3032 = shl nuw i32 %3025, 8
  %3033 = shl i32 %3026, 8
  %3034 = add i64 %3023, 1
  %3035 = getelementptr inbounds i8, ptr %2, i64 %3023
  %3036 = load i8, ptr %3035, align 1, !tbaa !54
  %3037 = zext i8 %3036 to i32
  %3038 = or disjoint i32 %3033, %3037
  br label %3039

3039:                                             ; preds = %3031, %3013
  %3040 = phi i64 [ %3034, %3031 ], [ %3023, %3013 ]
  %3041 = phi i32 [ %3032, %3031 ], [ %3025, %3013 ]
  %3042 = phi i32 [ %3038, %3031 ], [ %3026, %3013 ]
  %3043 = lshr i32 %3041, 11
  %3044 = zext i32 %3024 to i64
  %3045 = zext i32 %3020 to i64
  %3046 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 2, i64 %3044, i64 %3045
  %3047 = load i16, ptr %3046, align 2, !tbaa !55
  %3048 = zext i16 %3047 to i32
  %3049 = mul i32 %3043, %3048
  %3050 = icmp ult i32 %3042, %3049
  %3051 = shl i32 %3020, 1
  br i1 %3050, label %3052, label %3057

3052:                                             ; preds = %3039
  %3053 = sub nsw i32 2048, %3048
  %3054 = lshr i32 %3053, 5
  %3055 = trunc i32 %3054 to i16
  %3056 = add i16 %3047, %3055
  store i16 %3056, ptr %3046, align 2, !tbaa !55
  br label %3063

3057:                                             ; preds = %3039
  %3058 = sub i32 %3041, %3049
  %3059 = sub i32 %3042, %3049
  %3060 = lshr i16 %3047, 5
  %3061 = sub i16 %3047, %3060
  store i16 %3061, ptr %3046, align 2, !tbaa !55
  %3062 = or disjoint i32 %3051, 1
  br label %3063

3063:                                             ; preds = %3052, %3057, %57
  %3064 = phi i32 [ %3014, %3052 ], [ %3014, %3057 ], [ %22, %57 ]
  %3065 = phi i32 [ %3015, %3052 ], [ %3015, %3057 ], [ %24, %57 ]
  %3066 = phi i32 [ %3016, %3052 ], [ %3016, %3057 ], [ %26, %57 ]
  %3067 = phi i32 [ %3017, %3052 ], [ %3017, %3057 ], [ %28, %57 ]
  %3068 = phi i32 [ %3018, %3052 ], [ %3018, %3057 ], [ %20, %57 ]
  %3069 = phi ptr [ %3019, %3052 ], [ %3019, %3057 ], [ %32, %57 ]
  %3070 = phi i32 [ %3051, %3052 ], [ %3062, %3057 ], [ %34, %57 ]
  %3071 = phi i32 [ %3021, %3052 ], [ %3021, %3057 ], [ %36, %57 ]
  %3072 = phi i32 [ %3022, %3052 ], [ %3022, %3057 ], [ %38, %57 ]
  %3073 = phi i64 [ %3040, %3052 ], [ %3040, %3057 ], [ %18, %57 ]
  %3074 = phi i32 [ %3024, %3052 ], [ %3024, %3057 ], [ %46, %57 ]
  %3075 = phi i32 [ %3049, %3052 ], [ %3058, %3057 ], [ %13, %57 ]
  %3076 = phi i32 [ %3042, %3052 ], [ %3059, %3057 ], [ %15, %57 ]
  %3077 = icmp ult i32 %3075, 16777216
  br i1 %3077, label %3078, label %3089

3078:                                             ; preds = %3063
  %3079 = icmp eq i64 %3073, %4
  br i1 %3079, label %3080, label %3081

3080:                                             ; preds = %3078
  store i32 56, ptr %58, align 8, !tbaa !53
  br label %3810

3081:                                             ; preds = %3078
  %3082 = shl nuw i32 %3075, 8
  %3083 = shl i32 %3076, 8
  %3084 = add i64 %3073, 1
  %3085 = getelementptr inbounds i8, ptr %2, i64 %3073
  %3086 = load i8, ptr %3085, align 1, !tbaa !54
  %3087 = zext i8 %3086 to i32
  %3088 = or disjoint i32 %3083, %3087
  br label %3089

3089:                                             ; preds = %3081, %3063
  %3090 = phi i64 [ %3084, %3081 ], [ %3073, %3063 ]
  %3091 = phi i32 [ %3082, %3081 ], [ %3075, %3063 ]
  %3092 = phi i32 [ %3088, %3081 ], [ %3076, %3063 ]
  %3093 = lshr i32 %3091, 11
  %3094 = zext i32 %3074 to i64
  %3095 = zext i32 %3070 to i64
  %3096 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 2, i64 %3094, i64 %3095
  %3097 = load i16, ptr %3096, align 2, !tbaa !55
  %3098 = zext i16 %3097 to i32
  %3099 = mul i32 %3093, %3098
  %3100 = icmp ult i32 %3092, %3099
  %3101 = shl i32 %3070, 1
  br i1 %3100, label %3102, label %3107

3102:                                             ; preds = %3089
  %3103 = sub nsw i32 2048, %3098
  %3104 = lshr i32 %3103, 5
  %3105 = trunc i32 %3104 to i16
  %3106 = add i16 %3097, %3105
  store i16 %3106, ptr %3096, align 2, !tbaa !55
  br label %3113

3107:                                             ; preds = %3089
  %3108 = sub i32 %3091, %3099
  %3109 = sub i32 %3092, %3099
  %3110 = lshr i16 %3097, 5
  %3111 = sub i16 %3097, %3110
  store i16 %3111, ptr %3096, align 2, !tbaa !55
  %3112 = or disjoint i32 %3101, 1
  br label %3113

3113:                                             ; preds = %3102, %3107, %57
  %3114 = phi i32 [ %3064, %3102 ], [ %3064, %3107 ], [ %22, %57 ]
  %3115 = phi i32 [ %3065, %3102 ], [ %3065, %3107 ], [ %24, %57 ]
  %3116 = phi i32 [ %3066, %3102 ], [ %3066, %3107 ], [ %26, %57 ]
  %3117 = phi i32 [ %3067, %3102 ], [ %3067, %3107 ], [ %28, %57 ]
  %3118 = phi i32 [ %3068, %3102 ], [ %3068, %3107 ], [ %20, %57 ]
  %3119 = phi ptr [ %3069, %3102 ], [ %3069, %3107 ], [ %32, %57 ]
  %3120 = phi i32 [ %3101, %3102 ], [ %3112, %3107 ], [ %34, %57 ]
  %3121 = phi i32 [ %3071, %3102 ], [ %3071, %3107 ], [ %36, %57 ]
  %3122 = phi i32 [ %3072, %3102 ], [ %3072, %3107 ], [ %38, %57 ]
  %3123 = phi i64 [ %3090, %3102 ], [ %3090, %3107 ], [ %18, %57 ]
  %3124 = phi i32 [ %3074, %3102 ], [ %3074, %3107 ], [ %46, %57 ]
  %3125 = phi i32 [ %3099, %3102 ], [ %3108, %3107 ], [ %13, %57 ]
  %3126 = phi i32 [ %3092, %3102 ], [ %3109, %3107 ], [ %15, %57 ]
  %3127 = icmp ult i32 %3125, 16777216
  br i1 %3127, label %3128, label %3139

3128:                                             ; preds = %3113
  %3129 = icmp eq i64 %3123, %4
  br i1 %3129, label %3130, label %3131

3130:                                             ; preds = %3128
  store i32 57, ptr %58, align 8, !tbaa !53
  br label %3810

3131:                                             ; preds = %3128
  %3132 = shl nuw i32 %3125, 8
  %3133 = shl i32 %3126, 8
  %3134 = add i64 %3123, 1
  %3135 = getelementptr inbounds i8, ptr %2, i64 %3123
  %3136 = load i8, ptr %3135, align 1, !tbaa !54
  %3137 = zext i8 %3136 to i32
  %3138 = or disjoint i32 %3133, %3137
  br label %3139

3139:                                             ; preds = %3131, %3113
  %3140 = phi i64 [ %3134, %3131 ], [ %3123, %3113 ]
  %3141 = phi i32 [ %3132, %3131 ], [ %3125, %3113 ]
  %3142 = phi i32 [ %3138, %3131 ], [ %3126, %3113 ]
  %3143 = lshr i32 %3141, 11
  %3144 = zext i32 %3124 to i64
  %3145 = zext i32 %3120 to i64
  %3146 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 2, i64 %3144, i64 %3145
  %3147 = load i16, ptr %3146, align 2, !tbaa !55
  %3148 = zext i16 %3147 to i32
  %3149 = mul i32 %3143, %3148
  %3150 = icmp ult i32 %3142, %3149
  %3151 = shl i32 %3120, 1
  br i1 %3150, label %3152, label %3157

3152:                                             ; preds = %3139
  %3153 = sub nsw i32 2048, %3148
  %3154 = lshr i32 %3153, 5
  %3155 = trunc i32 %3154 to i16
  %3156 = add i16 %3147, %3155
  br label %3163

3157:                                             ; preds = %3139
  %3158 = sub i32 %3141, %3149
  %3159 = sub i32 %3142, %3149
  %3160 = lshr i16 %3147, 5
  %3161 = sub i16 %3147, %3160
  %3162 = or disjoint i32 %3151, 1
  br label %3163

3163:                                             ; preds = %3157, %3152
  %3164 = phi i16 [ %3156, %3152 ], [ %3161, %3157 ]
  %3165 = phi i32 [ %3151, %3152 ], [ %3162, %3157 ]
  %3166 = phi i32 [ %3149, %3152 ], [ %3158, %3157 ]
  %3167 = phi i32 [ %3142, %3152 ], [ %3159, %3157 ]
  store i16 %3164, ptr %3146, align 2
  %3168 = add i32 %3165, -6
  store i32 %3168, ptr %7, align 4, !tbaa !31
  br label %3766

3169:                                             ; preds = %2998
  %3170 = sub i32 %3000, %3006
  %3171 = sub i32 %3001, %3006
  %3172 = lshr i16 %3004, 5
  %3173 = sub i16 %3004, %3172
  store i16 %3173, ptr %3003, align 8, !tbaa !60
  br label %3174

3174:                                             ; preds = %3169, %57
  %3175 = phi i32 [ %2973, %3169 ], [ %22, %57 ]
  %3176 = phi i32 [ %2974, %3169 ], [ %24, %57 ]
  %3177 = phi i32 [ %2975, %3169 ], [ %26, %57 ]
  %3178 = phi i32 [ %2976, %3169 ], [ %28, %57 ]
  %3179 = phi i32 [ %2977, %3169 ], [ %20, %57 ]
  %3180 = phi ptr [ %2978, %3169 ], [ %32, %57 ]
  %3181 = phi i32 [ %2979, %3169 ], [ %34, %57 ]
  %3182 = phi i32 [ %2980, %3169 ], [ %36, %57 ]
  %3183 = phi i32 [ %2981, %3169 ], [ %38, %57 ]
  %3184 = phi i64 [ %2999, %3169 ], [ %18, %57 ]
  %3185 = phi i32 [ %2983, %3169 ], [ %46, %57 ]
  %3186 = phi i32 [ %3170, %3169 ], [ %13, %57 ]
  %3187 = phi i32 [ %3171, %3169 ], [ %15, %57 ]
  %3188 = icmp ult i32 %3186, 16777216
  br i1 %3188, label %3189, label %3200

3189:                                             ; preds = %3174
  %3190 = icmp eq i64 %3184, %4
  br i1 %3190, label %3191, label %3192

3191:                                             ; preds = %3189
  store i32 58, ptr %58, align 8, !tbaa !53
  br label %3810

3192:                                             ; preds = %3189
  %3193 = shl nuw i32 %3186, 8
  %3194 = shl i32 %3187, 8
  %3195 = add i64 %3184, 1
  %3196 = getelementptr inbounds i8, ptr %2, i64 %3184
  %3197 = load i8, ptr %3196, align 1, !tbaa !54
  %3198 = zext i8 %3197 to i32
  %3199 = or disjoint i32 %3194, %3198
  br label %3200

3200:                                             ; preds = %3192, %3174
  %3201 = phi i64 [ %3195, %3192 ], [ %3184, %3174 ]
  %3202 = phi i32 [ %3193, %3192 ], [ %3186, %3174 ]
  %3203 = phi i32 [ %3199, %3192 ], [ %3187, %3174 ]
  %3204 = lshr i32 %3202, 11
  %3205 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 1
  %3206 = load i16, ptr %3205, align 2, !tbaa !61
  %3207 = zext i16 %3206 to i32
  %3208 = mul i32 %3204, %3207
  %3209 = icmp ult i32 %3203, %3208
  br i1 %3209, label %3210, label %3371

3210:                                             ; preds = %3200
  %3211 = sub nsw i32 2048, %3207
  %3212 = lshr i32 %3211, 5
  %3213 = trunc i32 %3212 to i16
  %3214 = add i16 %3206, %3213
  store i16 %3214, ptr %3205, align 2, !tbaa !61
  br label %3215

3215:                                             ; preds = %57, %3210
  %3216 = phi i32 [ %3175, %3210 ], [ %22, %57 ]
  %3217 = phi i32 [ %3176, %3210 ], [ %24, %57 ]
  %3218 = phi i32 [ %3177, %3210 ], [ %26, %57 ]
  %3219 = phi i32 [ %3178, %3210 ], [ %28, %57 ]
  %3220 = phi i32 [ %3179, %3210 ], [ %20, %57 ]
  %3221 = phi ptr [ %3180, %3210 ], [ %32, %57 ]
  %3222 = phi i32 [ %3181, %3210 ], [ %34, %57 ]
  %3223 = phi i32 [ %3182, %3210 ], [ %36, %57 ]
  %3224 = phi i32 [ %3183, %3210 ], [ %38, %57 ]
  %3225 = phi i64 [ %3201, %3210 ], [ %18, %57 ]
  %3226 = phi i32 [ %3185, %3210 ], [ %46, %57 ]
  %3227 = phi i32 [ %3208, %3210 ], [ %13, %57 ]
  %3228 = phi i32 [ %3203, %3210 ], [ %15, %57 ]
  %3229 = icmp ult i32 %3227, 16777216
  br i1 %3229, label %3230, label %3241

3230:                                             ; preds = %3215
  %3231 = icmp eq i64 %3225, %4
  br i1 %3231, label %3232, label %3233

3232:                                             ; preds = %3230
  store i32 59, ptr %58, align 8, !tbaa !53
  br label %3810

3233:                                             ; preds = %3230
  %3234 = shl nuw i32 %3227, 8
  %3235 = shl i32 %3228, 8
  %3236 = add i64 %3225, 1
  %3237 = getelementptr inbounds i8, ptr %2, i64 %3225
  %3238 = load i8, ptr %3237, align 1, !tbaa !54
  %3239 = zext i8 %3238 to i32
  %3240 = or disjoint i32 %3235, %3239
  br label %3241

3241:                                             ; preds = %3233, %3215
  %3242 = phi i64 [ %3236, %3233 ], [ %3225, %3215 ]
  %3243 = phi i32 [ %3234, %3233 ], [ %3227, %3215 ]
  %3244 = phi i32 [ %3240, %3233 ], [ %3228, %3215 ]
  %3245 = lshr i32 %3243, 11
  %3246 = zext i32 %3226 to i64
  %3247 = zext i32 %3222 to i64
  %3248 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 3, i64 %3246, i64 %3247
  %3249 = load i16, ptr %3248, align 2, !tbaa !55
  %3250 = zext i16 %3249 to i32
  %3251 = mul i32 %3245, %3250
  %3252 = icmp ult i32 %3244, %3251
  %3253 = shl i32 %3222, 1
  br i1 %3252, label %3254, label %3259

3254:                                             ; preds = %3241
  %3255 = sub nsw i32 2048, %3250
  %3256 = lshr i32 %3255, 5
  %3257 = trunc i32 %3256 to i16
  %3258 = add i16 %3249, %3257
  store i16 %3258, ptr %3248, align 2, !tbaa !55
  br label %3265

3259:                                             ; preds = %3241
  %3260 = sub i32 %3243, %3251
  %3261 = sub i32 %3244, %3251
  %3262 = lshr i16 %3249, 5
  %3263 = sub i16 %3249, %3262
  store i16 %3263, ptr %3248, align 2, !tbaa !55
  %3264 = or disjoint i32 %3253, 1
  br label %3265

3265:                                             ; preds = %3254, %3259, %57
  %3266 = phi i32 [ %3216, %3254 ], [ %3216, %3259 ], [ %22, %57 ]
  %3267 = phi i32 [ %3217, %3254 ], [ %3217, %3259 ], [ %24, %57 ]
  %3268 = phi i32 [ %3218, %3254 ], [ %3218, %3259 ], [ %26, %57 ]
  %3269 = phi i32 [ %3219, %3254 ], [ %3219, %3259 ], [ %28, %57 ]
  %3270 = phi i32 [ %3220, %3254 ], [ %3220, %3259 ], [ %20, %57 ]
  %3271 = phi ptr [ %3221, %3254 ], [ %3221, %3259 ], [ %32, %57 ]
  %3272 = phi i32 [ %3253, %3254 ], [ %3264, %3259 ], [ %34, %57 ]
  %3273 = phi i32 [ %3223, %3254 ], [ %3223, %3259 ], [ %36, %57 ]
  %3274 = phi i32 [ %3224, %3254 ], [ %3224, %3259 ], [ %38, %57 ]
  %3275 = phi i64 [ %3242, %3254 ], [ %3242, %3259 ], [ %18, %57 ]
  %3276 = phi i32 [ %3226, %3254 ], [ %3226, %3259 ], [ %46, %57 ]
  %3277 = phi i32 [ %3251, %3254 ], [ %3260, %3259 ], [ %13, %57 ]
  %3278 = phi i32 [ %3244, %3254 ], [ %3261, %3259 ], [ %15, %57 ]
  %3279 = icmp ult i32 %3277, 16777216
  br i1 %3279, label %3280, label %3291

3280:                                             ; preds = %3265
  %3281 = icmp eq i64 %3275, %4
  br i1 %3281, label %3282, label %3283

3282:                                             ; preds = %3280
  store i32 60, ptr %58, align 8, !tbaa !53
  br label %3810

3283:                                             ; preds = %3280
  %3284 = shl nuw i32 %3277, 8
  %3285 = shl i32 %3278, 8
  %3286 = add i64 %3275, 1
  %3287 = getelementptr inbounds i8, ptr %2, i64 %3275
  %3288 = load i8, ptr %3287, align 1, !tbaa !54
  %3289 = zext i8 %3288 to i32
  %3290 = or disjoint i32 %3285, %3289
  br label %3291

3291:                                             ; preds = %3283, %3265
  %3292 = phi i64 [ %3286, %3283 ], [ %3275, %3265 ]
  %3293 = phi i32 [ %3284, %3283 ], [ %3277, %3265 ]
  %3294 = phi i32 [ %3290, %3283 ], [ %3278, %3265 ]
  %3295 = lshr i32 %3293, 11
  %3296 = zext i32 %3276 to i64
  %3297 = zext i32 %3272 to i64
  %3298 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 3, i64 %3296, i64 %3297
  %3299 = load i16, ptr %3298, align 2, !tbaa !55
  %3300 = zext i16 %3299 to i32
  %3301 = mul i32 %3295, %3300
  %3302 = icmp ult i32 %3294, %3301
  %3303 = shl i32 %3272, 1
  br i1 %3302, label %3304, label %3309

3304:                                             ; preds = %3291
  %3305 = sub nsw i32 2048, %3300
  %3306 = lshr i32 %3305, 5
  %3307 = trunc i32 %3306 to i16
  %3308 = add i16 %3299, %3307
  store i16 %3308, ptr %3298, align 2, !tbaa !55
  br label %3315

3309:                                             ; preds = %3291
  %3310 = sub i32 %3293, %3301
  %3311 = sub i32 %3294, %3301
  %3312 = lshr i16 %3299, 5
  %3313 = sub i16 %3299, %3312
  store i16 %3313, ptr %3298, align 2, !tbaa !55
  %3314 = or disjoint i32 %3303, 1
  br label %3315

3315:                                             ; preds = %3304, %3309, %57
  %3316 = phi i32 [ %3266, %3304 ], [ %3266, %3309 ], [ %22, %57 ]
  %3317 = phi i32 [ %3267, %3304 ], [ %3267, %3309 ], [ %24, %57 ]
  %3318 = phi i32 [ %3268, %3304 ], [ %3268, %3309 ], [ %26, %57 ]
  %3319 = phi i32 [ %3269, %3304 ], [ %3269, %3309 ], [ %28, %57 ]
  %3320 = phi i32 [ %3270, %3304 ], [ %3270, %3309 ], [ %20, %57 ]
  %3321 = phi ptr [ %3271, %3304 ], [ %3271, %3309 ], [ %32, %57 ]
  %3322 = phi i32 [ %3303, %3304 ], [ %3314, %3309 ], [ %34, %57 ]
  %3323 = phi i32 [ %3273, %3304 ], [ %3273, %3309 ], [ %36, %57 ]
  %3324 = phi i32 [ %3274, %3304 ], [ %3274, %3309 ], [ %38, %57 ]
  %3325 = phi i64 [ %3292, %3304 ], [ %3292, %3309 ], [ %18, %57 ]
  %3326 = phi i32 [ %3276, %3304 ], [ %3276, %3309 ], [ %46, %57 ]
  %3327 = phi i32 [ %3301, %3304 ], [ %3310, %3309 ], [ %13, %57 ]
  %3328 = phi i32 [ %3294, %3304 ], [ %3311, %3309 ], [ %15, %57 ]
  %3329 = icmp ult i32 %3327, 16777216
  br i1 %3329, label %3330, label %3341

3330:                                             ; preds = %3315
  %3331 = icmp eq i64 %3325, %4
  br i1 %3331, label %3332, label %3333

3332:                                             ; preds = %3330
  store i32 61, ptr %58, align 8, !tbaa !53
  br label %3810

3333:                                             ; preds = %3330
  %3334 = shl nuw i32 %3327, 8
  %3335 = shl i32 %3328, 8
  %3336 = add i64 %3325, 1
  %3337 = getelementptr inbounds i8, ptr %2, i64 %3325
  %3338 = load i8, ptr %3337, align 1, !tbaa !54
  %3339 = zext i8 %3338 to i32
  %3340 = or disjoint i32 %3335, %3339
  br label %3341

3341:                                             ; preds = %3333, %3315
  %3342 = phi i64 [ %3336, %3333 ], [ %3325, %3315 ]
  %3343 = phi i32 [ %3334, %3333 ], [ %3327, %3315 ]
  %3344 = phi i32 [ %3340, %3333 ], [ %3328, %3315 ]
  %3345 = lshr i32 %3343, 11
  %3346 = zext i32 %3326 to i64
  %3347 = zext i32 %3322 to i64
  %3348 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 3, i64 %3346, i64 %3347
  %3349 = load i16, ptr %3348, align 2, !tbaa !55
  %3350 = zext i16 %3349 to i32
  %3351 = mul i32 %3345, %3350
  %3352 = icmp ult i32 %3344, %3351
  %3353 = shl i32 %3322, 1
  br i1 %3352, label %3354, label %3359

3354:                                             ; preds = %3341
  %3355 = sub nsw i32 2048, %3350
  %3356 = lshr i32 %3355, 5
  %3357 = trunc i32 %3356 to i16
  %3358 = add i16 %3349, %3357
  br label %3365

3359:                                             ; preds = %3341
  %3360 = sub i32 %3343, %3351
  %3361 = sub i32 %3344, %3351
  %3362 = lshr i16 %3349, 5
  %3363 = sub i16 %3349, %3362
  %3364 = or disjoint i32 %3353, 1
  br label %3365

3365:                                             ; preds = %3359, %3354
  %3366 = phi i16 [ %3358, %3354 ], [ %3363, %3359 ]
  %3367 = phi i32 [ %3353, %3354 ], [ %3364, %3359 ]
  %3368 = phi i32 [ %3351, %3354 ], [ %3360, %3359 ]
  %3369 = phi i32 [ %3344, %3354 ], [ %3361, %3359 ]
  store i16 %3366, ptr %3348, align 2
  %3370 = add i32 %3367, 2
  store i32 %3370, ptr %7, align 4, !tbaa !31
  br label %3766

3371:                                             ; preds = %3200
  %3372 = sub i32 %3202, %3208
  %3373 = sub i32 %3203, %3208
  %3374 = lshr i16 %3206, 5
  %3375 = sub i16 %3206, %3374
  store i16 %3375, ptr %3205, align 2, !tbaa !61
  br label %3376

3376:                                             ; preds = %57, %3371
  %3377 = phi i32 [ %3175, %3371 ], [ %22, %57 ]
  %3378 = phi i32 [ %3176, %3371 ], [ %24, %57 ]
  %3379 = phi i32 [ %3177, %3371 ], [ %26, %57 ]
  %3380 = phi i32 [ %3178, %3371 ], [ %28, %57 ]
  %3381 = phi i32 [ %3179, %3371 ], [ %20, %57 ]
  %3382 = phi ptr [ %3180, %3371 ], [ %32, %57 ]
  %3383 = phi i32 [ %3181, %3371 ], [ %34, %57 ]
  %3384 = phi i32 [ %3182, %3371 ], [ %36, %57 ]
  %3385 = phi i32 [ %3183, %3371 ], [ %38, %57 ]
  %3386 = phi i64 [ %3201, %3371 ], [ %18, %57 ]
  %3387 = phi i32 [ %3372, %3371 ], [ %13, %57 ]
  %3388 = phi i32 [ %3373, %3371 ], [ %15, %57 ]
  %3389 = icmp ult i32 %3387, 16777216
  br i1 %3389, label %3390, label %3401

3390:                                             ; preds = %3376
  %3391 = icmp eq i64 %3386, %4
  br i1 %3391, label %3392, label %3393

3392:                                             ; preds = %3390
  store i32 62, ptr %58, align 8, !tbaa !53
  br label %3810

3393:                                             ; preds = %3390
  %3394 = shl nuw i32 %3387, 8
  %3395 = shl i32 %3388, 8
  %3396 = add i64 %3386, 1
  %3397 = getelementptr inbounds i8, ptr %2, i64 %3386
  %3398 = load i8, ptr %3397, align 1, !tbaa !54
  %3399 = zext i8 %3398 to i32
  %3400 = or disjoint i32 %3395, %3399
  br label %3401

3401:                                             ; preds = %3393, %3376
  %3402 = phi i64 [ %3396, %3393 ], [ %3386, %3376 ]
  %3403 = phi i32 [ %3394, %3393 ], [ %3387, %3376 ]
  %3404 = phi i32 [ %3400, %3393 ], [ %3388, %3376 ]
  %3405 = lshr i32 %3403, 11
  %3406 = zext i32 %3383 to i64
  %3407 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3406
  %3408 = load i16, ptr %3407, align 2, !tbaa !55
  %3409 = zext i16 %3408 to i32
  %3410 = mul i32 %3405, %3409
  %3411 = icmp ult i32 %3404, %3410
  %3412 = shl i32 %3383, 1
  br i1 %3411, label %3413, label %3418

3413:                                             ; preds = %3401
  %3414 = sub nsw i32 2048, %3409
  %3415 = lshr i32 %3414, 5
  %3416 = trunc i32 %3415 to i16
  %3417 = add i16 %3408, %3416
  store i16 %3417, ptr %3407, align 2, !tbaa !55
  br label %3424

3418:                                             ; preds = %3401
  %3419 = sub i32 %3403, %3410
  %3420 = sub i32 %3404, %3410
  %3421 = lshr i16 %3408, 5
  %3422 = sub i16 %3408, %3421
  store i16 %3422, ptr %3407, align 2, !tbaa !55
  %3423 = or disjoint i32 %3412, 1
  br label %3424

3424:                                             ; preds = %3413, %3418, %57
  %3425 = phi i32 [ %3377, %3413 ], [ %3377, %3418 ], [ %22, %57 ]
  %3426 = phi i32 [ %3378, %3413 ], [ %3378, %3418 ], [ %24, %57 ]
  %3427 = phi i32 [ %3379, %3413 ], [ %3379, %3418 ], [ %26, %57 ]
  %3428 = phi i32 [ %3380, %3413 ], [ %3380, %3418 ], [ %28, %57 ]
  %3429 = phi i32 [ %3381, %3413 ], [ %3381, %3418 ], [ %20, %57 ]
  %3430 = phi ptr [ %3382, %3413 ], [ %3382, %3418 ], [ %32, %57 ]
  %3431 = phi i32 [ %3412, %3413 ], [ %3423, %3418 ], [ %34, %57 ]
  %3432 = phi i32 [ %3384, %3413 ], [ %3384, %3418 ], [ %36, %57 ]
  %3433 = phi i32 [ %3385, %3413 ], [ %3385, %3418 ], [ %38, %57 ]
  %3434 = phi i64 [ %3402, %3413 ], [ %3402, %3418 ], [ %18, %57 ]
  %3435 = phi i32 [ %3410, %3413 ], [ %3419, %3418 ], [ %13, %57 ]
  %3436 = phi i32 [ %3404, %3413 ], [ %3420, %3418 ], [ %15, %57 ]
  %3437 = icmp ult i32 %3435, 16777216
  br i1 %3437, label %3438, label %3449

3438:                                             ; preds = %3424
  %3439 = icmp eq i64 %3434, %4
  br i1 %3439, label %3440, label %3441

3440:                                             ; preds = %3438
  store i32 63, ptr %58, align 8, !tbaa !53
  br label %3810

3441:                                             ; preds = %3438
  %3442 = shl nuw i32 %3435, 8
  %3443 = shl i32 %3436, 8
  %3444 = add i64 %3434, 1
  %3445 = getelementptr inbounds i8, ptr %2, i64 %3434
  %3446 = load i8, ptr %3445, align 1, !tbaa !54
  %3447 = zext i8 %3446 to i32
  %3448 = or disjoint i32 %3443, %3447
  br label %3449

3449:                                             ; preds = %3441, %3424
  %3450 = phi i64 [ %3444, %3441 ], [ %3434, %3424 ]
  %3451 = phi i32 [ %3442, %3441 ], [ %3435, %3424 ]
  %3452 = phi i32 [ %3448, %3441 ], [ %3436, %3424 ]
  %3453 = lshr i32 %3451, 11
  %3454 = zext i32 %3431 to i64
  %3455 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3454
  %3456 = load i16, ptr %3455, align 2, !tbaa !55
  %3457 = zext i16 %3456 to i32
  %3458 = mul i32 %3453, %3457
  %3459 = icmp ult i32 %3452, %3458
  %3460 = shl i32 %3431, 1
  br i1 %3459, label %3461, label %3466

3461:                                             ; preds = %3449
  %3462 = sub nsw i32 2048, %3457
  %3463 = lshr i32 %3462, 5
  %3464 = trunc i32 %3463 to i16
  %3465 = add i16 %3456, %3464
  store i16 %3465, ptr %3455, align 2, !tbaa !55
  br label %3472

3466:                                             ; preds = %3449
  %3467 = sub i32 %3451, %3458
  %3468 = sub i32 %3452, %3458
  %3469 = lshr i16 %3456, 5
  %3470 = sub i16 %3456, %3469
  store i16 %3470, ptr %3455, align 2, !tbaa !55
  %3471 = or disjoint i32 %3460, 1
  br label %3472

3472:                                             ; preds = %3461, %3466, %57
  %3473 = phi i32 [ %3425, %3461 ], [ %3425, %3466 ], [ %22, %57 ]
  %3474 = phi i32 [ %3426, %3461 ], [ %3426, %3466 ], [ %24, %57 ]
  %3475 = phi i32 [ %3427, %3461 ], [ %3427, %3466 ], [ %26, %57 ]
  %3476 = phi i32 [ %3428, %3461 ], [ %3428, %3466 ], [ %28, %57 ]
  %3477 = phi i32 [ %3429, %3461 ], [ %3429, %3466 ], [ %20, %57 ]
  %3478 = phi ptr [ %3430, %3461 ], [ %3430, %3466 ], [ %32, %57 ]
  %3479 = phi i32 [ %3460, %3461 ], [ %3471, %3466 ], [ %34, %57 ]
  %3480 = phi i32 [ %3432, %3461 ], [ %3432, %3466 ], [ %36, %57 ]
  %3481 = phi i32 [ %3433, %3461 ], [ %3433, %3466 ], [ %38, %57 ]
  %3482 = phi i64 [ %3450, %3461 ], [ %3450, %3466 ], [ %18, %57 ]
  %3483 = phi i32 [ %3458, %3461 ], [ %3467, %3466 ], [ %13, %57 ]
  %3484 = phi i32 [ %3452, %3461 ], [ %3468, %3466 ], [ %15, %57 ]
  %3485 = icmp ult i32 %3483, 16777216
  br i1 %3485, label %3486, label %3497

3486:                                             ; preds = %3472
  %3487 = icmp eq i64 %3482, %4
  br i1 %3487, label %3488, label %3489

3488:                                             ; preds = %3486
  store i32 64, ptr %58, align 8, !tbaa !53
  br label %3810

3489:                                             ; preds = %3486
  %3490 = shl nuw i32 %3483, 8
  %3491 = shl i32 %3484, 8
  %3492 = add i64 %3482, 1
  %3493 = getelementptr inbounds i8, ptr %2, i64 %3482
  %3494 = load i8, ptr %3493, align 1, !tbaa !54
  %3495 = zext i8 %3494 to i32
  %3496 = or disjoint i32 %3491, %3495
  br label %3497

3497:                                             ; preds = %3489, %3472
  %3498 = phi i64 [ %3492, %3489 ], [ %3482, %3472 ]
  %3499 = phi i32 [ %3490, %3489 ], [ %3483, %3472 ]
  %3500 = phi i32 [ %3496, %3489 ], [ %3484, %3472 ]
  %3501 = lshr i32 %3499, 11
  %3502 = zext i32 %3479 to i64
  %3503 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3502
  %3504 = load i16, ptr %3503, align 2, !tbaa !55
  %3505 = zext i16 %3504 to i32
  %3506 = mul i32 %3501, %3505
  %3507 = icmp ult i32 %3500, %3506
  %3508 = shl i32 %3479, 1
  br i1 %3507, label %3509, label %3514

3509:                                             ; preds = %3497
  %3510 = sub nsw i32 2048, %3505
  %3511 = lshr i32 %3510, 5
  %3512 = trunc i32 %3511 to i16
  %3513 = add i16 %3504, %3512
  store i16 %3513, ptr %3503, align 2, !tbaa !55
  br label %3520

3514:                                             ; preds = %3497
  %3515 = sub i32 %3499, %3506
  %3516 = sub i32 %3500, %3506
  %3517 = lshr i16 %3504, 5
  %3518 = sub i16 %3504, %3517
  store i16 %3518, ptr %3503, align 2, !tbaa !55
  %3519 = or disjoint i32 %3508, 1
  br label %3520

3520:                                             ; preds = %3509, %3514, %57
  %3521 = phi i32 [ %3473, %3509 ], [ %3473, %3514 ], [ %22, %57 ]
  %3522 = phi i32 [ %3474, %3509 ], [ %3474, %3514 ], [ %24, %57 ]
  %3523 = phi i32 [ %3475, %3509 ], [ %3475, %3514 ], [ %26, %57 ]
  %3524 = phi i32 [ %3476, %3509 ], [ %3476, %3514 ], [ %28, %57 ]
  %3525 = phi i32 [ %3477, %3509 ], [ %3477, %3514 ], [ %20, %57 ]
  %3526 = phi ptr [ %3478, %3509 ], [ %3478, %3514 ], [ %32, %57 ]
  %3527 = phi i32 [ %3508, %3509 ], [ %3519, %3514 ], [ %34, %57 ]
  %3528 = phi i32 [ %3480, %3509 ], [ %3480, %3514 ], [ %36, %57 ]
  %3529 = phi i32 [ %3481, %3509 ], [ %3481, %3514 ], [ %38, %57 ]
  %3530 = phi i64 [ %3498, %3509 ], [ %3498, %3514 ], [ %18, %57 ]
  %3531 = phi i32 [ %3506, %3509 ], [ %3515, %3514 ], [ %13, %57 ]
  %3532 = phi i32 [ %3500, %3509 ], [ %3516, %3514 ], [ %15, %57 ]
  %3533 = icmp ult i32 %3531, 16777216
  br i1 %3533, label %3534, label %3545

3534:                                             ; preds = %3520
  %3535 = icmp eq i64 %3530, %4
  br i1 %3535, label %3536, label %3537

3536:                                             ; preds = %3534
  store i32 65, ptr %58, align 8, !tbaa !53
  br label %3810

3537:                                             ; preds = %3534
  %3538 = shl nuw i32 %3531, 8
  %3539 = shl i32 %3532, 8
  %3540 = add i64 %3530, 1
  %3541 = getelementptr inbounds i8, ptr %2, i64 %3530
  %3542 = load i8, ptr %3541, align 1, !tbaa !54
  %3543 = zext i8 %3542 to i32
  %3544 = or disjoint i32 %3539, %3543
  br label %3545

3545:                                             ; preds = %3537, %3520
  %3546 = phi i64 [ %3540, %3537 ], [ %3530, %3520 ]
  %3547 = phi i32 [ %3538, %3537 ], [ %3531, %3520 ]
  %3548 = phi i32 [ %3544, %3537 ], [ %3532, %3520 ]
  %3549 = lshr i32 %3547, 11
  %3550 = zext i32 %3527 to i64
  %3551 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3550
  %3552 = load i16, ptr %3551, align 2, !tbaa !55
  %3553 = zext i16 %3552 to i32
  %3554 = mul i32 %3549, %3553
  %3555 = icmp ult i32 %3548, %3554
  %3556 = shl i32 %3527, 1
  br i1 %3555, label %3557, label %3562

3557:                                             ; preds = %3545
  %3558 = sub nsw i32 2048, %3553
  %3559 = lshr i32 %3558, 5
  %3560 = trunc i32 %3559 to i16
  %3561 = add i16 %3552, %3560
  store i16 %3561, ptr %3551, align 2, !tbaa !55
  br label %3568

3562:                                             ; preds = %3545
  %3563 = sub i32 %3547, %3554
  %3564 = sub i32 %3548, %3554
  %3565 = lshr i16 %3552, 5
  %3566 = sub i16 %3552, %3565
  store i16 %3566, ptr %3551, align 2, !tbaa !55
  %3567 = or disjoint i32 %3556, 1
  br label %3568

3568:                                             ; preds = %3557, %3562, %57
  %3569 = phi i32 [ %3521, %3557 ], [ %3521, %3562 ], [ %22, %57 ]
  %3570 = phi i32 [ %3522, %3557 ], [ %3522, %3562 ], [ %24, %57 ]
  %3571 = phi i32 [ %3523, %3557 ], [ %3523, %3562 ], [ %26, %57 ]
  %3572 = phi i32 [ %3524, %3557 ], [ %3524, %3562 ], [ %28, %57 ]
  %3573 = phi i32 [ %3525, %3557 ], [ %3525, %3562 ], [ %20, %57 ]
  %3574 = phi ptr [ %3526, %3557 ], [ %3526, %3562 ], [ %32, %57 ]
  %3575 = phi i32 [ %3556, %3557 ], [ %3567, %3562 ], [ %34, %57 ]
  %3576 = phi i32 [ %3528, %3557 ], [ %3528, %3562 ], [ %36, %57 ]
  %3577 = phi i32 [ %3529, %3557 ], [ %3529, %3562 ], [ %38, %57 ]
  %3578 = phi i64 [ %3546, %3557 ], [ %3546, %3562 ], [ %18, %57 ]
  %3579 = phi i32 [ %3554, %3557 ], [ %3563, %3562 ], [ %13, %57 ]
  %3580 = phi i32 [ %3548, %3557 ], [ %3564, %3562 ], [ %15, %57 ]
  %3581 = icmp ult i32 %3579, 16777216
  br i1 %3581, label %3582, label %3593

3582:                                             ; preds = %3568
  %3583 = icmp eq i64 %3578, %4
  br i1 %3583, label %3584, label %3585

3584:                                             ; preds = %3582
  store i32 66, ptr %58, align 8, !tbaa !53
  br label %3810

3585:                                             ; preds = %3582
  %3586 = shl nuw i32 %3579, 8
  %3587 = shl i32 %3580, 8
  %3588 = add i64 %3578, 1
  %3589 = getelementptr inbounds i8, ptr %2, i64 %3578
  %3590 = load i8, ptr %3589, align 1, !tbaa !54
  %3591 = zext i8 %3590 to i32
  %3592 = or disjoint i32 %3587, %3591
  br label %3593

3593:                                             ; preds = %3585, %3568
  %3594 = phi i64 [ %3588, %3585 ], [ %3578, %3568 ]
  %3595 = phi i32 [ %3586, %3585 ], [ %3579, %3568 ]
  %3596 = phi i32 [ %3592, %3585 ], [ %3580, %3568 ]
  %3597 = lshr i32 %3595, 11
  %3598 = zext i32 %3575 to i64
  %3599 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3598
  %3600 = load i16, ptr %3599, align 2, !tbaa !55
  %3601 = zext i16 %3600 to i32
  %3602 = mul i32 %3597, %3601
  %3603 = icmp ult i32 %3596, %3602
  %3604 = shl i32 %3575, 1
  br i1 %3603, label %3605, label %3610

3605:                                             ; preds = %3593
  %3606 = sub nsw i32 2048, %3601
  %3607 = lshr i32 %3606, 5
  %3608 = trunc i32 %3607 to i16
  %3609 = add i16 %3600, %3608
  store i16 %3609, ptr %3599, align 2, !tbaa !55
  br label %3616

3610:                                             ; preds = %3593
  %3611 = sub i32 %3595, %3602
  %3612 = sub i32 %3596, %3602
  %3613 = lshr i16 %3600, 5
  %3614 = sub i16 %3600, %3613
  store i16 %3614, ptr %3599, align 2, !tbaa !55
  %3615 = or disjoint i32 %3604, 1
  br label %3616

3616:                                             ; preds = %3605, %3610, %57
  %3617 = phi i32 [ %3569, %3605 ], [ %3569, %3610 ], [ %22, %57 ]
  %3618 = phi i32 [ %3570, %3605 ], [ %3570, %3610 ], [ %24, %57 ]
  %3619 = phi i32 [ %3571, %3605 ], [ %3571, %3610 ], [ %26, %57 ]
  %3620 = phi i32 [ %3572, %3605 ], [ %3572, %3610 ], [ %28, %57 ]
  %3621 = phi i32 [ %3573, %3605 ], [ %3573, %3610 ], [ %20, %57 ]
  %3622 = phi ptr [ %3574, %3605 ], [ %3574, %3610 ], [ %32, %57 ]
  %3623 = phi i32 [ %3604, %3605 ], [ %3615, %3610 ], [ %34, %57 ]
  %3624 = phi i32 [ %3576, %3605 ], [ %3576, %3610 ], [ %36, %57 ]
  %3625 = phi i32 [ %3577, %3605 ], [ %3577, %3610 ], [ %38, %57 ]
  %3626 = phi i64 [ %3594, %3605 ], [ %3594, %3610 ], [ %18, %57 ]
  %3627 = phi i32 [ %3602, %3605 ], [ %3611, %3610 ], [ %13, %57 ]
  %3628 = phi i32 [ %3596, %3605 ], [ %3612, %3610 ], [ %15, %57 ]
  %3629 = icmp ult i32 %3627, 16777216
  br i1 %3629, label %3630, label %3641

3630:                                             ; preds = %3616
  %3631 = icmp eq i64 %3626, %4
  br i1 %3631, label %3632, label %3633

3632:                                             ; preds = %3630
  store i32 67, ptr %58, align 8, !tbaa !53
  br label %3810

3633:                                             ; preds = %3630
  %3634 = shl nuw i32 %3627, 8
  %3635 = shl i32 %3628, 8
  %3636 = add i64 %3626, 1
  %3637 = getelementptr inbounds i8, ptr %2, i64 %3626
  %3638 = load i8, ptr %3637, align 1, !tbaa !54
  %3639 = zext i8 %3638 to i32
  %3640 = or disjoint i32 %3635, %3639
  br label %3641

3641:                                             ; preds = %3633, %3616
  %3642 = phi i64 [ %3636, %3633 ], [ %3626, %3616 ]
  %3643 = phi i32 [ %3634, %3633 ], [ %3627, %3616 ]
  %3644 = phi i32 [ %3640, %3633 ], [ %3628, %3616 ]
  %3645 = lshr i32 %3643, 11
  %3646 = zext i32 %3623 to i64
  %3647 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3646
  %3648 = load i16, ptr %3647, align 2, !tbaa !55
  %3649 = zext i16 %3648 to i32
  %3650 = mul i32 %3645, %3649
  %3651 = icmp ult i32 %3644, %3650
  %3652 = shl i32 %3623, 1
  br i1 %3651, label %3653, label %3658

3653:                                             ; preds = %3641
  %3654 = sub nsw i32 2048, %3649
  %3655 = lshr i32 %3654, 5
  %3656 = trunc i32 %3655 to i16
  %3657 = add i16 %3648, %3656
  store i16 %3657, ptr %3647, align 2, !tbaa !55
  br label %3664

3658:                                             ; preds = %3641
  %3659 = sub i32 %3643, %3650
  %3660 = sub i32 %3644, %3650
  %3661 = lshr i16 %3648, 5
  %3662 = sub i16 %3648, %3661
  store i16 %3662, ptr %3647, align 2, !tbaa !55
  %3663 = or disjoint i32 %3652, 1
  br label %3664

3664:                                             ; preds = %3653, %3658, %57
  %3665 = phi i32 [ %3617, %3653 ], [ %3617, %3658 ], [ %22, %57 ]
  %3666 = phi i32 [ %3618, %3653 ], [ %3618, %3658 ], [ %24, %57 ]
  %3667 = phi i32 [ %3619, %3653 ], [ %3619, %3658 ], [ %26, %57 ]
  %3668 = phi i32 [ %3620, %3653 ], [ %3620, %3658 ], [ %28, %57 ]
  %3669 = phi i32 [ %3621, %3653 ], [ %3621, %3658 ], [ %20, %57 ]
  %3670 = phi ptr [ %3622, %3653 ], [ %3622, %3658 ], [ %32, %57 ]
  %3671 = phi i32 [ %3652, %3653 ], [ %3663, %3658 ], [ %34, %57 ]
  %3672 = phi i32 [ %3624, %3653 ], [ %3624, %3658 ], [ %36, %57 ]
  %3673 = phi i32 [ %3625, %3653 ], [ %3625, %3658 ], [ %38, %57 ]
  %3674 = phi i64 [ %3642, %3653 ], [ %3642, %3658 ], [ %18, %57 ]
  %3675 = phi i32 [ %3650, %3653 ], [ %3659, %3658 ], [ %13, %57 ]
  %3676 = phi i32 [ %3644, %3653 ], [ %3660, %3658 ], [ %15, %57 ]
  %3677 = icmp ult i32 %3675, 16777216
  br i1 %3677, label %3678, label %3689

3678:                                             ; preds = %3664
  %3679 = icmp eq i64 %3674, %4
  br i1 %3679, label %3680, label %3681

3680:                                             ; preds = %3678
  store i32 68, ptr %58, align 8, !tbaa !53
  br label %3810

3681:                                             ; preds = %3678
  %3682 = shl nuw i32 %3675, 8
  %3683 = shl i32 %3676, 8
  %3684 = add i64 %3674, 1
  %3685 = getelementptr inbounds i8, ptr %2, i64 %3674
  %3686 = load i8, ptr %3685, align 1, !tbaa !54
  %3687 = zext i8 %3686 to i32
  %3688 = or disjoint i32 %3683, %3687
  br label %3689

3689:                                             ; preds = %3681, %3664
  %3690 = phi i64 [ %3684, %3681 ], [ %3674, %3664 ]
  %3691 = phi i32 [ %3682, %3681 ], [ %3675, %3664 ]
  %3692 = phi i32 [ %3688, %3681 ], [ %3676, %3664 ]
  %3693 = lshr i32 %3691, 11
  %3694 = zext i32 %3671 to i64
  %3695 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3694
  %3696 = load i16, ptr %3695, align 2, !tbaa !55
  %3697 = zext i16 %3696 to i32
  %3698 = mul i32 %3693, %3697
  %3699 = icmp ult i32 %3692, %3698
  %3700 = shl i32 %3671, 1
  br i1 %3699, label %3701, label %3706

3701:                                             ; preds = %3689
  %3702 = sub nsw i32 2048, %3697
  %3703 = lshr i32 %3702, 5
  %3704 = trunc i32 %3703 to i16
  %3705 = add i16 %3696, %3704
  store i16 %3705, ptr %3695, align 2, !tbaa !55
  br label %3712

3706:                                             ; preds = %3689
  %3707 = sub i32 %3691, %3698
  %3708 = sub i32 %3692, %3698
  %3709 = lshr i16 %3696, 5
  %3710 = sub i16 %3696, %3709
  store i16 %3710, ptr %3695, align 2, !tbaa !55
  %3711 = or disjoint i32 %3700, 1
  br label %3712

3712:                                             ; preds = %3701, %3706, %57
  %3713 = phi i32 [ %3665, %3701 ], [ %3665, %3706 ], [ %22, %57 ]
  %3714 = phi i32 [ %3666, %3701 ], [ %3666, %3706 ], [ %24, %57 ]
  %3715 = phi i32 [ %3667, %3701 ], [ %3667, %3706 ], [ %26, %57 ]
  %3716 = phi i32 [ %3668, %3701 ], [ %3668, %3706 ], [ %28, %57 ]
  %3717 = phi i32 [ %3669, %3701 ], [ %3669, %3706 ], [ %20, %57 ]
  %3718 = phi ptr [ %3670, %3701 ], [ %3670, %3706 ], [ %32, %57 ]
  %3719 = phi i32 [ %3700, %3701 ], [ %3711, %3706 ], [ %34, %57 ]
  %3720 = phi i32 [ %3672, %3701 ], [ %3672, %3706 ], [ %36, %57 ]
  %3721 = phi i32 [ %3673, %3701 ], [ %3673, %3706 ], [ %38, %57 ]
  %3722 = phi i64 [ %3690, %3701 ], [ %3690, %3706 ], [ %18, %57 ]
  %3723 = phi i32 [ %3698, %3701 ], [ %3707, %3706 ], [ %13, %57 ]
  %3724 = phi i32 [ %3692, %3701 ], [ %3708, %3706 ], [ %15, %57 ]
  %3725 = icmp ult i32 %3723, 16777216
  br i1 %3725, label %3726, label %3737

3726:                                             ; preds = %3712
  %3727 = icmp eq i64 %3722, %4
  br i1 %3727, label %3728, label %3729

3728:                                             ; preds = %3726
  store i32 69, ptr %58, align 8, !tbaa !53
  br label %3810

3729:                                             ; preds = %3726
  %3730 = shl nuw i32 %3723, 8
  %3731 = shl i32 %3724, 8
  %3732 = add i64 %3722, 1
  %3733 = getelementptr inbounds i8, ptr %2, i64 %3722
  %3734 = load i8, ptr %3733, align 1, !tbaa !54
  %3735 = zext i8 %3734 to i32
  %3736 = or disjoint i32 %3731, %3735
  br label %3737

3737:                                             ; preds = %3729, %3712
  %3738 = phi i64 [ %3732, %3729 ], [ %3722, %3712 ]
  %3739 = phi i32 [ %3730, %3729 ], [ %3723, %3712 ]
  %3740 = phi i32 [ %3736, %3729 ], [ %3724, %3712 ]
  %3741 = lshr i32 %3739, 11
  %3742 = zext i32 %3719 to i64
  %3743 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %3742
  %3744 = load i16, ptr %3743, align 2, !tbaa !55
  %3745 = zext i16 %3744 to i32
  %3746 = mul i32 %3741, %3745
  %3747 = icmp ult i32 %3740, %3746
  %3748 = shl i32 %3719, 1
  br i1 %3747, label %3749, label %3754

3749:                                             ; preds = %3737
  %3750 = sub nsw i32 2048, %3745
  %3751 = lshr i32 %3750, 5
  %3752 = trunc i32 %3751 to i16
  %3753 = add i16 %3744, %3752
  br label %3760

3754:                                             ; preds = %3737
  %3755 = sub i32 %3739, %3746
  %3756 = sub i32 %3740, %3746
  %3757 = lshr i16 %3744, 5
  %3758 = sub i16 %3744, %3757
  %3759 = or disjoint i32 %3748, 1
  br label %3760

3760:                                             ; preds = %3754, %3749
  %3761 = phi i16 [ %3753, %3749 ], [ %3758, %3754 ]
  %3762 = phi i32 [ %3748, %3749 ], [ %3759, %3754 ]
  %3763 = phi i32 [ %3746, %3749 ], [ %3755, %3754 ]
  %3764 = phi i32 [ %3740, %3749 ], [ %3756, %3754 ]
  store i16 %3761, ptr %3743, align 2
  %3765 = add i32 %3762, -238
  store i32 %3765, ptr %7, align 4, !tbaa !31
  br label %3766

3766:                                             ; preds = %2729, %3365, %3760, %3163, %57
  %3767 = phi i32 [ %22, %57 ], [ %2730, %2729 ], [ %3114, %3163 ], [ %3316, %3365 ], [ %3713, %3760 ]
  %3768 = phi i32 [ %24, %57 ], [ %2731, %2729 ], [ %3115, %3163 ], [ %3317, %3365 ], [ %3714, %3760 ]
  %3769 = phi i32 [ %26, %57 ], [ %2732, %2729 ], [ %3116, %3163 ], [ %3318, %3365 ], [ %3715, %3760 ]
  %3770 = phi i32 [ %28, %57 ], [ %2733, %2729 ], [ %3117, %3163 ], [ %3319, %3365 ], [ %3716, %3760 ]
  %3771 = phi i32 [ %20, %57 ], [ %2734, %2729 ], [ %3118, %3163 ], [ %3320, %3365 ], [ %3717, %3760 ]
  %3772 = phi ptr [ %32, %57 ], [ %2735, %2729 ], [ %3119, %3163 ], [ %3321, %3365 ], [ %3718, %3760 ]
  %3773 = phi i32 [ %34, %57 ], [ %2736, %2729 ], [ %3165, %3163 ], [ %3367, %3365 ], [ %3762, %3760 ]
  %3774 = phi i32 [ %36, %57 ], [ %2737, %2729 ], [ %3121, %3163 ], [ %3323, %3365 ], [ %3720, %3760 ]
  %3775 = phi i32 [ %38, %57 ], [ %2738, %2729 ], [ %3122, %3163 ], [ %3324, %3365 ], [ %3721, %3760 ]
  %3776 = phi i64 [ %18, %57 ], [ %2739, %2729 ], [ %3140, %3163 ], [ %3342, %3365 ], [ %3738, %3760 ]
  %3777 = phi i32 [ %13, %57 ], [ %2740, %2729 ], [ %3166, %3163 ], [ %3368, %3365 ], [ %3763, %3760 ]
  %3778 = phi i32 [ %15, %57 ], [ %2741, %2729 ], [ %3167, %3163 ], [ %3369, %3365 ], [ %3764, %3760 ]
  %3779 = call fastcc zeroext i1 @dict_repeat(ptr noundef nonnull %6, i32 noundef %3767, ptr noundef nonnull %7) #13
  br i1 %3779, label %3780, label %60

3780:                                             ; preds = %3766
  store i32 70, ptr %58, align 8, !tbaa !53
  br label %3810

3781:                                             ; preds = %76, %57
  %3782 = phi i32 [ %22, %57 ], [ %78, %76 ]
  %3783 = phi i32 [ %24, %57 ], [ %79, %76 ]
  %3784 = phi i32 [ %26, %57 ], [ %80, %76 ]
  %3785 = phi i32 [ %28, %57 ], [ %81, %76 ]
  %3786 = phi i32 [ %20, %57 ], [ %82, %76 ]
  %3787 = phi ptr [ %32, %57 ], [ %83, %76 ]
  %3788 = phi i32 [ %34, %57 ], [ %84, %76 ]
  %3789 = phi i32 [ %36, %57 ], [ %85, %76 ]
  %3790 = phi i32 [ %38, %57 ], [ %86, %76 ]
  %3791 = phi i64 [ %18, %57 ], [ %87, %76 ]
  %3792 = phi i32 [ %13, %57 ], [ %89, %76 ]
  %3793 = phi i32 [ %15, %57 ], [ %90, %76 ]
  %3794 = icmp ult i32 %3792, 16777216
  br i1 %3794, label %3795, label %3806

3795:                                             ; preds = %3781
  %3796 = icmp eq i64 %3791, %4
  br i1 %3796, label %3797, label %3798

3797:                                             ; preds = %3795
  store i32 0, ptr %58, align 8, !tbaa !53
  br label %3810

3798:                                             ; preds = %3795
  %3799 = shl nuw i32 %3792, 8
  %3800 = shl i32 %3793, 8
  %3801 = add i64 %3791, 1
  %3802 = getelementptr inbounds i8, ptr %2, i64 %3791
  %3803 = load i8, ptr %3802, align 1, !tbaa !54
  %3804 = zext i8 %3803 to i32
  %3805 = or disjoint i32 %3800, %3804
  br label %3806

3806:                                             ; preds = %3798, %3781
  %3807 = phi i64 [ %3801, %3798 ], [ %3791, %3781 ]
  %3808 = phi i32 [ %3799, %3798 ], [ %3792, %3781 ]
  %3809 = phi i32 [ %3805, %3798 ], [ %3793, %3781 ]
  store i32 1, ptr %58, align 8, !tbaa !53
  br label %3810

3810:                                             ; preds = %2744, %2729, %2704, %2721, %2701, %3806, %3797, %3780, %3728, %3680, %3632, %3584, %3536, %3488, %3440, %3392, %3332, %3282, %3232, %3191, %3130, %3080, %3030, %2989, %2927, %2880, %2852, %2809, %2767, %2720, %2664, %2615, %2566, %2517, %2476, %2420, %2369, %2318, %2267, %2217, %2146, %2098, %2050, %2002, %1954, %1906, %1835, %1787, %1739, %1691, %1643, %1595, %1547, %1499, %1439, %1389, %1339, %1298, %1237, %1187, %1137, %1096, %1052, %1029, %965, %905, %845, %785, %725, %665, %605, %545, %489, %441, %393, %345, %297, %249, %201, %153, %99
  %3811 = phi i32 [ %3782, %3797 ], [ %3782, %3806 ], [ %3767, %3780 ], [ %78, %99 ], [ %138, %153 ], [ %186, %201 ], [ %234, %249 ], [ %282, %297 ], [ %330, %345 ], [ %378, %393 ], [ %426, %441 ], [ %474, %489 ], [ %1015, %1029 ], [ %527, %545 ], [ %587, %605 ], [ %647, %665 ], [ %707, %725 ], [ %767, %785 ], [ %827, %845 ], [ %887, %905 ], [ %947, %965 ], [ %1036, %1052 ], [ %1080, %1096 ], [ %1121, %1137 ], [ %1171, %1187 ], [ %1221, %1237 ], [ %1891, %1906 ], [ %1939, %1954 ], [ %1987, %2002 ], [ %2035, %2050 ], [ %2083, %2098 ], [ %2131, %2146 ], [ %2411, %2420 ], [ %2360, %2369 ], [ %2309, %2318 ], [ %2258, %2267 ], [ %2201, %2217 ], [ %2468, %2476 ], [ %2502, %2517 ], [ %2551, %2566 ], [ %2600, %2615 ], [ %2649, %2664 ], [ %2705, %2720 ], [ %1282, %1298 ], [ %1323, %1339 ], [ %1373, %1389 ], [ %1423, %1439 ], [ %1484, %1499 ], [ %1532, %1547 ], [ %1580, %1595 ], [ %1628, %1643 ], [ %1676, %1691 ], [ %1724, %1739 ], [ %1772, %1787 ], [ %1820, %1835 ], [ %2751, %2767 ], [ %2793, %2809 ], [ %2838, %2852 ], [ %2973, %2989 ], [ %3014, %3030 ], [ %3064, %3080 ], [ %3114, %3130 ], [ %3175, %3191 ], [ %3216, %3232 ], [ %3266, %3282 ], [ %3316, %3332 ], [ %3377, %3392 ], [ %3425, %3440 ], [ %3473, %3488 ], [ %3521, %3536 ], [ %3569, %3584 ], [ %3617, %3632 ], [ %3665, %3680 ], [ %3713, %3728 ], [ %2864, %2880 ], [ %2911, %2927 ], [ -1, %2701 ], [ %2705, %2721 ], [ %2705, %2704 ], [ %2730, %2729 ], [ %1036, %2744 ]
  %3812 = phi i32 [ %3783, %3797 ], [ %3783, %3806 ], [ %3768, %3780 ], [ %79, %99 ], [ %139, %153 ], [ %187, %201 ], [ %235, %249 ], [ %283, %297 ], [ %331, %345 ], [ %379, %393 ], [ %427, %441 ], [ %475, %489 ], [ %1016, %1029 ], [ %528, %545 ], [ %588, %605 ], [ %648, %665 ], [ %708, %725 ], [ %768, %785 ], [ %828, %845 ], [ %888, %905 ], [ %948, %965 ], [ %1037, %1052 ], [ %1081, %1096 ], [ %1122, %1137 ], [ %1172, %1187 ], [ %1222, %1237 ], [ %1892, %1906 ], [ %1940, %1954 ], [ %1988, %2002 ], [ %2036, %2050 ], [ %2084, %2098 ], [ %2132, %2146 ], [ %2202, %2420 ], [ %2202, %2369 ], [ %2202, %2318 ], [ %2202, %2267 ], [ %2202, %2217 ], [ %2456, %2476 ], [ %2503, %2517 ], [ %2552, %2566 ], [ %2601, %2615 ], [ %2650, %2664 ], [ %2706, %2720 ], [ %1283, %1298 ], [ %1324, %1339 ], [ %1374, %1389 ], [ %1424, %1439 ], [ %1485, %1499 ], [ %1533, %1547 ], [ %1581, %1595 ], [ %1629, %1643 ], [ %1677, %1691 ], [ %1725, %1739 ], [ %1773, %1787 ], [ %1821, %1835 ], [ %2752, %2767 ], [ %2794, %2809 ], [ %2839, %2852 ], [ %2974, %2989 ], [ %3015, %3030 ], [ %3065, %3080 ], [ %3115, %3130 ], [ %3176, %3191 ], [ %3217, %3232 ], [ %3267, %3282 ], [ %3317, %3332 ], [ %3378, %3392 ], [ %3426, %3440 ], [ %3474, %3488 ], [ %3522, %3536 ], [ %3570, %3584 ], [ %3618, %3632 ], [ %3666, %3680 ], [ %3714, %3728 ], [ %2865, %2880 ], [ %2912, %2927 ], [ %2650, %2701 ], [ %2706, %2721 ], [ %2706, %2704 ], [ %2731, %2729 ], [ %1037, %2744 ]
  %3813 = phi i32 [ %3784, %3797 ], [ %3784, %3806 ], [ %3769, %3780 ], [ %80, %99 ], [ %140, %153 ], [ %188, %201 ], [ %236, %249 ], [ %284, %297 ], [ %332, %345 ], [ %380, %393 ], [ %428, %441 ], [ %476, %489 ], [ %1017, %1029 ], [ %529, %545 ], [ %589, %605 ], [ %649, %665 ], [ %709, %725 ], [ %769, %785 ], [ %829, %845 ], [ %889, %905 ], [ %949, %965 ], [ %1038, %1052 ], [ %1082, %1096 ], [ %1123, %1137 ], [ %1173, %1187 ], [ %1223, %1237 ], [ %1893, %1906 ], [ %1941, %1954 ], [ %1989, %2002 ], [ %2037, %2050 ], [ %2085, %2098 ], [ %2133, %2146 ], [ %2203, %2420 ], [ %2203, %2369 ], [ %2203, %2318 ], [ %2203, %2267 ], [ %2203, %2217 ], [ %2457, %2476 ], [ %2504, %2517 ], [ %2553, %2566 ], [ %2602, %2615 ], [ %2651, %2664 ], [ %2707, %2720 ], [ %1284, %1298 ], [ %1325, %1339 ], [ %1375, %1389 ], [ %1425, %1439 ], [ %1486, %1499 ], [ %1534, %1547 ], [ %1582, %1595 ], [ %1630, %1643 ], [ %1678, %1691 ], [ %1726, %1739 ], [ %1774, %1787 ], [ %1822, %1835 ], [ %2753, %2767 ], [ %2795, %2809 ], [ %2840, %2852 ], [ %2975, %2989 ], [ %3016, %3030 ], [ %3066, %3080 ], [ %3116, %3130 ], [ %3177, %3191 ], [ %3218, %3232 ], [ %3268, %3282 ], [ %3318, %3332 ], [ %3379, %3392 ], [ %3427, %3440 ], [ %3475, %3488 ], [ %3523, %3536 ], [ %3571, %3584 ], [ %3619, %3632 ], [ %3667, %3680 ], [ %3715, %3728 ], [ %2866, %2880 ], [ %2913, %2927 ], [ %2651, %2701 ], [ %2707, %2721 ], [ %2707, %2704 ], [ %2732, %2729 ], [ %1038, %2744 ]
  %3814 = phi i32 [ %3785, %3797 ], [ %3785, %3806 ], [ %3770, %3780 ], [ %81, %99 ], [ %141, %153 ], [ %189, %201 ], [ %237, %249 ], [ %285, %297 ], [ %333, %345 ], [ %381, %393 ], [ %429, %441 ], [ %477, %489 ], [ %1018, %1029 ], [ %530, %545 ], [ %590, %605 ], [ %650, %665 ], [ %710, %725 ], [ %770, %785 ], [ %830, %845 ], [ %890, %905 ], [ %950, %965 ], [ %1039, %1052 ], [ %1083, %1096 ], [ %1124, %1137 ], [ %1174, %1187 ], [ %1224, %1237 ], [ %1894, %1906 ], [ %1942, %1954 ], [ %1990, %2002 ], [ %2038, %2050 ], [ %2086, %2098 ], [ %2134, %2146 ], [ %2204, %2420 ], [ %2204, %2369 ], [ %2204, %2318 ], [ %2204, %2267 ], [ %2204, %2217 ], [ %2458, %2476 ], [ %2505, %2517 ], [ %2554, %2566 ], [ %2603, %2615 ], [ %2652, %2664 ], [ %2708, %2720 ], [ %1285, %1298 ], [ %1326, %1339 ], [ %1376, %1389 ], [ %1426, %1439 ], [ %1487, %1499 ], [ %1535, %1547 ], [ %1583, %1595 ], [ %1631, %1643 ], [ %1679, %1691 ], [ %1727, %1739 ], [ %1775, %1787 ], [ %1823, %1835 ], [ %2754, %2767 ], [ %2796, %2809 ], [ %2841, %2852 ], [ %2976, %2989 ], [ %3017, %3030 ], [ %3067, %3080 ], [ %3117, %3130 ], [ %3178, %3191 ], [ %3219, %3232 ], [ %3269, %3282 ], [ %3319, %3332 ], [ %3380, %3392 ], [ %3428, %3440 ], [ %3476, %3488 ], [ %3524, %3536 ], [ %3572, %3584 ], [ %3620, %3632 ], [ %3668, %3680 ], [ %3716, %3728 ], [ %2867, %2880 ], [ %2914, %2927 ], [ %2652, %2701 ], [ %2708, %2721 ], [ %2708, %2704 ], [ %2733, %2729 ], [ %1039, %2744 ]
  %3815 = phi i32 [ %3786, %3797 ], [ %3786, %3806 ], [ %3771, %3780 ], [ %82, %99 ], [ %142, %153 ], [ %190, %201 ], [ %238, %249 ], [ %286, %297 ], [ %334, %345 ], [ %382, %393 ], [ %430, %441 ], [ %478, %489 ], [ %1019, %1029 ], [ %531, %545 ], [ %591, %605 ], [ %651, %665 ], [ %711, %725 ], [ %771, %785 ], [ %831, %845 ], [ %891, %905 ], [ %951, %965 ], [ %1040, %1052 ], [ %1084, %1096 ], [ %1125, %1137 ], [ %1175, %1187 ], [ %1225, %1237 ], [ %1895, %1906 ], [ %1943, %1954 ], [ %1991, %2002 ], [ %2039, %2050 ], [ %2087, %2098 ], [ %2135, %2146 ], [ %2205, %2420 ], [ %2205, %2369 ], [ %2205, %2318 ], [ %2205, %2267 ], [ %2205, %2217 ], [ %2459, %2476 ], [ %2506, %2517 ], [ %2555, %2566 ], [ %2604, %2615 ], [ %2653, %2664 ], [ %2709, %2720 ], [ %1286, %1298 ], [ %1327, %1339 ], [ %1377, %1389 ], [ %1427, %1439 ], [ %1488, %1499 ], [ %1536, %1547 ], [ %1584, %1595 ], [ %1632, %1643 ], [ %1680, %1691 ], [ %1728, %1739 ], [ %1776, %1787 ], [ %1824, %1835 ], [ %2755, %2767 ], [ %2797, %2809 ], [ %2842, %2852 ], [ %2977, %2989 ], [ %3018, %3030 ], [ %3068, %3080 ], [ %3118, %3130 ], [ %3179, %3191 ], [ %3220, %3232 ], [ %3270, %3282 ], [ %3320, %3332 ], [ %3381, %3392 ], [ %3429, %3440 ], [ %3477, %3488 ], [ %3525, %3536 ], [ %3573, %3584 ], [ %3621, %3632 ], [ %3669, %3680 ], [ %3717, %3728 ], [ %2868, %2880 ], [ %2915, %2927 ], [ %2653, %2701 ], [ %2709, %2721 ], [ %2709, %2704 ], [ %2734, %2729 ], [ %1040, %2744 ]
  %3816 = phi ptr [ %3787, %3797 ], [ %3787, %3806 ], [ %3772, %3780 ], [ %83, %99 ], [ %143, %153 ], [ %191, %201 ], [ %239, %249 ], [ %287, %297 ], [ %335, %345 ], [ %383, %393 ], [ %431, %441 ], [ %479, %489 ], [ %1020, %1029 ], [ %532, %545 ], [ %592, %605 ], [ %652, %665 ], [ %712, %725 ], [ %772, %785 ], [ %832, %845 ], [ %892, %905 ], [ %952, %965 ], [ %1041, %1052 ], [ %1085, %1096 ], [ %1126, %1137 ], [ %1176, %1187 ], [ %1226, %1237 ], [ %1896, %1906 ], [ %1944, %1954 ], [ %1992, %2002 ], [ %2040, %2050 ], [ %2088, %2098 ], [ %2136, %2146 ], [ %2206, %2420 ], [ %2206, %2369 ], [ %2206, %2318 ], [ %2206, %2267 ], [ %2206, %2217 ], [ %2460, %2476 ], [ %2507, %2517 ], [ %2556, %2566 ], [ %2605, %2615 ], [ %2654, %2664 ], [ %2710, %2720 ], [ %1287, %1298 ], [ %1328, %1339 ], [ %1378, %1389 ], [ %1428, %1439 ], [ %1489, %1499 ], [ %1537, %1547 ], [ %1585, %1595 ], [ %1633, %1643 ], [ %1681, %1691 ], [ %1729, %1739 ], [ %1777, %1787 ], [ %1825, %1835 ], [ %2756, %2767 ], [ %2798, %2809 ], [ %2843, %2852 ], [ %2978, %2989 ], [ %3019, %3030 ], [ %3069, %3080 ], [ %3119, %3130 ], [ %3180, %3191 ], [ %3221, %3232 ], [ %3271, %3282 ], [ %3321, %3332 ], [ %3382, %3392 ], [ %3430, %3440 ], [ %3478, %3488 ], [ %3526, %3536 ], [ %3574, %3584 ], [ %3622, %3632 ], [ %3670, %3680 ], [ %3718, %3728 ], [ %2869, %2880 ], [ %2916, %2927 ], [ %2654, %2701 ], [ %2710, %2721 ], [ %2710, %2704 ], [ %2735, %2729 ], [ %1041, %2744 ]
  %3817 = phi i32 [ %3788, %3797 ], [ %3788, %3806 ], [ %3773, %3780 ], [ %84, %99 ], [ %144, %153 ], [ %192, %201 ], [ %240, %249 ], [ %288, %297 ], [ %336, %345 ], [ %384, %393 ], [ %432, %441 ], [ %480, %489 ], [ %1021, %1029 ], [ %533, %545 ], [ %593, %605 ], [ %653, %665 ], [ %713, %725 ], [ %773, %785 ], [ %833, %845 ], [ %893, %905 ], [ %953, %965 ], [ %1042, %1052 ], [ %1086, %1096 ], [ %1127, %1137 ], [ %1177, %1187 ], [ %1227, %1237 ], [ %1897, %1906 ], [ %1945, %1954 ], [ %1993, %2002 ], [ %2041, %2050 ], [ %2089, %2098 ], [ %2137, %2146 ], [ %2412, %2420 ], [ %2361, %2369 ], [ %2310, %2318 ], [ %2259, %2267 ], [ %2207, %2217 ], [ %2461, %2476 ], [ %2508, %2517 ], [ %2557, %2566 ], [ %2606, %2615 ], [ %2655, %2664 ], [ %2711, %2720 ], [ %1288, %1298 ], [ %1329, %1339 ], [ %1379, %1389 ], [ %1429, %1439 ], [ %1490, %1499 ], [ %1538, %1547 ], [ %1586, %1595 ], [ %1634, %1643 ], [ %1682, %1691 ], [ %1730, %1739 ], [ %1778, %1787 ], [ %1826, %1835 ], [ %2757, %2767 ], [ %2799, %2809 ], [ %2844, %2852 ], [ %2979, %2989 ], [ %3020, %3030 ], [ %3070, %3080 ], [ %3120, %3130 ], [ %3181, %3191 ], [ %3222, %3232 ], [ %3272, %3282 ], [ %3322, %3332 ], [ %3383, %3392 ], [ %3431, %3440 ], [ %3479, %3488 ], [ %3527, %3536 ], [ %3575, %3584 ], [ %3623, %3632 ], [ %3671, %3680 ], [ %3719, %3728 ], [ %2870, %2880 ], [ %2917, %2927 ], [ %2655, %2701 ], [ %2711, %2721 ], [ %2711, %2704 ], [ %2736, %2729 ], [ %1042, %2744 ]
  %3818 = phi i32 [ %3789, %3797 ], [ %3789, %3806 ], [ %3774, %3780 ], [ %85, %99 ], [ %145, %153 ], [ %193, %201 ], [ %241, %249 ], [ %289, %297 ], [ %337, %345 ], [ %385, %393 ], [ %433, %441 ], [ %481, %489 ], [ %1022, %1029 ], [ %534, %545 ], [ %594, %605 ], [ %654, %665 ], [ %714, %725 ], [ %774, %785 ], [ %834, %845 ], [ %894, %905 ], [ %954, %965 ], [ %1043, %1052 ], [ %1087, %1096 ], [ %1128, %1137 ], [ %1178, %1187 ], [ %1228, %1237 ], [ %1898, %1906 ], [ %1946, %1954 ], [ %1994, %2002 ], [ %2042, %2050 ], [ %2090, %2098 ], [ %2138, %2146 ], [ 1, %2420 ], [ 2, %2369 ], [ 3, %2318 ], [ 4, %2267 ], [ 5, %2217 ], [ %2469, %2476 ], [ %2509, %2517 ], [ %2558, %2566 ], [ %2607, %2615 ], [ %2656, %2664 ], [ %2712, %2720 ], [ %1289, %1298 ], [ %1330, %1339 ], [ %1380, %1389 ], [ %1430, %1439 ], [ %1491, %1499 ], [ %1539, %1547 ], [ %1587, %1595 ], [ %1635, %1643 ], [ %1683, %1691 ], [ %1731, %1739 ], [ %1779, %1787 ], [ %1827, %1835 ], [ %2758, %2767 ], [ %2800, %2809 ], [ %2845, %2852 ], [ %2980, %2989 ], [ %3021, %3030 ], [ %3071, %3080 ], [ %3121, %3130 ], [ %3182, %3191 ], [ %3223, %3232 ], [ %3273, %3282 ], [ %3323, %3332 ], [ %3384, %3392 ], [ %3432, %3440 ], [ %3480, %3488 ], [ %3528, %3536 ], [ %3576, %3584 ], [ %3624, %3632 ], [ %3672, %3680 ], [ %3720, %3728 ], [ %2871, %2880 ], [ %2918, %2927 ], [ %2656, %2701 ], [ %2712, %2721 ], [ %2712, %2704 ], [ %2737, %2729 ], [ %1043, %2744 ]
  %3819 = phi i32 [ %3790, %3797 ], [ %3790, %3806 ], [ %3775, %3780 ], [ %86, %99 ], [ %146, %153 ], [ %194, %201 ], [ %242, %249 ], [ %290, %297 ], [ %338, %345 ], [ %386, %393 ], [ %434, %441 ], [ %482, %489 ], [ %1023, %1029 ], [ %535, %545 ], [ %595, %605 ], [ %655, %665 ], [ %715, %725 ], [ %775, %785 ], [ %835, %845 ], [ %895, %905 ], [ %955, %965 ], [ %1044, %1052 ], [ %1088, %1096 ], [ %1129, %1137 ], [ %1179, %1187 ], [ %1229, %1237 ], [ %1899, %1906 ], [ %1947, %1954 ], [ %1995, %2002 ], [ %2043, %2050 ], [ %2091, %2098 ], [ %2139, %2146 ], [ %2413, %2420 ], [ %2362, %2369 ], [ %2311, %2318 ], [ %2260, %2267 ], [ %2209, %2217 ], [ %2463, %2476 ], [ %2510, %2517 ], [ %2559, %2566 ], [ %2608, %2615 ], [ %2657, %2664 ], [ %2713, %2720 ], [ %1290, %1298 ], [ %1331, %1339 ], [ %1381, %1389 ], [ %1431, %1439 ], [ %1492, %1499 ], [ %1540, %1547 ], [ %1588, %1595 ], [ %1636, %1643 ], [ %1684, %1691 ], [ %1732, %1739 ], [ %1780, %1787 ], [ %1828, %1835 ], [ %2759, %2767 ], [ %2801, %2809 ], [ %2846, %2852 ], [ %2981, %2989 ], [ %3022, %3030 ], [ %3072, %3080 ], [ %3122, %3130 ], [ %3183, %3191 ], [ %3224, %3232 ], [ %3274, %3282 ], [ %3324, %3332 ], [ %3385, %3392 ], [ %3433, %3440 ], [ %3481, %3488 ], [ %3529, %3536 ], [ %3577, %3584 ], [ %3625, %3632 ], [ %3673, %3680 ], [ %3721, %3728 ], [ %2872, %2880 ], [ %2919, %2927 ], [ %2657, %2701 ], [ %2713, %2721 ], [ %2713, %2704 ], [ %2738, %2729 ], [ %1044, %2744 ]
  %3820 = phi i64 [ %4, %3797 ], [ %3807, %3806 ], [ %3776, %3780 ], [ %4, %99 ], [ %4, %153 ], [ %4, %201 ], [ %4, %249 ], [ %4, %297 ], [ %4, %345 ], [ %4, %393 ], [ %4, %441 ], [ %4, %489 ], [ %1024, %1029 ], [ %4, %545 ], [ %4, %605 ], [ %4, %665 ], [ %4, %725 ], [ %4, %785 ], [ %4, %845 ], [ %4, %905 ], [ %4, %965 ], [ %4, %1052 ], [ %4, %1096 ], [ %4, %1137 ], [ %4, %1187 ], [ %4, %1237 ], [ %4, %1906 ], [ %4, %1954 ], [ %4, %2002 ], [ %4, %2050 ], [ %4, %2098 ], [ %4, %2146 ], [ %4, %2420 ], [ %4, %2369 ], [ %4, %2318 ], [ %4, %2267 ], [ %4, %2217 ], [ %4, %2476 ], [ %4, %2517 ], [ %4, %2566 ], [ %4, %2615 ], [ %4, %2664 ], [ %4, %2720 ], [ %4, %1298 ], [ %4, %1339 ], [ %4, %1389 ], [ %4, %1439 ], [ %4, %1499 ], [ %4, %1547 ], [ %4, %1595 ], [ %4, %1643 ], [ %4, %1691 ], [ %4, %1739 ], [ %4, %1787 ], [ %4, %1835 ], [ %4, %2767 ], [ %4, %2809 ], [ %2847, %2852 ], [ %4, %2989 ], [ %4, %3030 ], [ %4, %3080 ], [ %4, %3130 ], [ %4, %3191 ], [ %4, %3232 ], [ %4, %3282 ], [ %4, %3332 ], [ %4, %3392 ], [ %4, %3440 ], [ %4, %3488 ], [ %4, %3536 ], [ %4, %3584 ], [ %4, %3632 ], [ %4, %3680 ], [ %4, %3728 ], [ %4, %2880 ], [ %4, %2927 ], [ %2674, %2701 ], [ %2724, %2721 ], [ %2714, %2704 ], [ %2739, %2729 ], [ %1062, %2744 ]
  %3821 = phi i1 [ true, %3797 ], [ true, %3806 ], [ true, %3780 ], [ true, %99 ], [ true, %153 ], [ true, %201 ], [ true, %249 ], [ true, %297 ], [ true, %345 ], [ true, %393 ], [ true, %441 ], [ true, %489 ], [ true, %1029 ], [ true, %545 ], [ true, %605 ], [ true, %665 ], [ true, %725 ], [ true, %785 ], [ true, %845 ], [ true, %905 ], [ true, %965 ], [ true, %1052 ], [ true, %1096 ], [ true, %1137 ], [ true, %1187 ], [ true, %1237 ], [ true, %1906 ], [ true, %1954 ], [ true, %2002 ], [ true, %2050 ], [ true, %2098 ], [ true, %2146 ], [ true, %2420 ], [ true, %2369 ], [ true, %2318 ], [ true, %2267 ], [ true, %2217 ], [ true, %2476 ], [ true, %2517 ], [ true, %2566 ], [ true, %2615 ], [ true, %2664 ], [ true, %2720 ], [ true, %1298 ], [ true, %1339 ], [ true, %1389 ], [ true, %1439 ], [ true, %1499 ], [ true, %1547 ], [ true, %1595 ], [ true, %1643 ], [ true, %1691 ], [ true, %1739 ], [ true, %1787 ], [ true, %1835 ], [ true, %2767 ], [ true, %2809 ], [ true, %2852 ], [ true, %2989 ], [ true, %3030 ], [ true, %3080 ], [ true, %3130 ], [ true, %3191 ], [ true, %3232 ], [ true, %3282 ], [ true, %3332 ], [ true, %3392 ], [ true, %3440 ], [ true, %3488 ], [ true, %3536 ], [ true, %3584 ], [ true, %3632 ], [ true, %3680 ], [ true, %3728 ], [ true, %2880 ], [ true, %2927 ], [ false, %2701 ], [ false, %2721 ], [ false, %2704 ], [ false, %2729 ], [ false, %2744 ]
  %3822 = phi i1 [ false, %3797 ], [ false, %3806 ], [ false, %3780 ], [ false, %99 ], [ false, %153 ], [ false, %201 ], [ false, %249 ], [ false, %297 ], [ false, %345 ], [ false, %393 ], [ false, %441 ], [ false, %489 ], [ false, %1029 ], [ false, %545 ], [ false, %605 ], [ false, %665 ], [ false, %725 ], [ false, %785 ], [ false, %845 ], [ false, %905 ], [ false, %965 ], [ false, %1052 ], [ false, %1096 ], [ false, %1137 ], [ false, %1187 ], [ false, %1237 ], [ false, %1906 ], [ false, %1954 ], [ false, %2002 ], [ false, %2050 ], [ false, %2098 ], [ false, %2146 ], [ false, %2420 ], [ false, %2369 ], [ false, %2318 ], [ false, %2267 ], [ false, %2217 ], [ false, %2476 ], [ false, %2517 ], [ false, %2566 ], [ false, %2615 ], [ false, %2664 ], [ false, %2720 ], [ false, %1298 ], [ false, %1339 ], [ false, %1389 ], [ false, %1439 ], [ false, %1499 ], [ false, %1547 ], [ false, %1595 ], [ false, %1643 ], [ false, %1691 ], [ false, %1739 ], [ false, %1787 ], [ false, %1835 ], [ false, %2767 ], [ false, %2809 ], [ false, %2852 ], [ false, %2989 ], [ false, %3030 ], [ false, %3080 ], [ false, %3130 ], [ false, %3191 ], [ false, %3232 ], [ false, %3282 ], [ false, %3332 ], [ false, %3392 ], [ false, %3440 ], [ false, %3488 ], [ false, %3536 ], [ false, %3584 ], [ false, %3632 ], [ false, %3680 ], [ false, %3728 ], [ false, %2880 ], [ false, %2927 ], [ false, %2701 ], [ true, %2721 ], [ true, %2704 ], [ false, %2729 ], [ false, %2744 ]
  %3823 = phi i32 [ 0, %3797 ], [ 0, %3806 ], [ 0, %3780 ], [ 0, %99 ], [ 0, %153 ], [ 0, %201 ], [ 0, %249 ], [ 0, %297 ], [ 0, %345 ], [ 0, %393 ], [ 0, %441 ], [ 0, %489 ], [ 0, %1029 ], [ 0, %545 ], [ 0, %605 ], [ 0, %665 ], [ 0, %725 ], [ 0, %785 ], [ 0, %845 ], [ 0, %905 ], [ 0, %965 ], [ 0, %1052 ], [ 0, %1096 ], [ 0, %1137 ], [ 0, %1187 ], [ 0, %1237 ], [ 0, %1906 ], [ 0, %1954 ], [ 0, %2002 ], [ 0, %2050 ], [ 0, %2098 ], [ 0, %2146 ], [ 0, %2420 ], [ 0, %2369 ], [ 0, %2318 ], [ 0, %2267 ], [ 0, %2217 ], [ 0, %2476 ], [ 0, %2517 ], [ 0, %2566 ], [ 0, %2615 ], [ 0, %2664 ], [ 0, %2720 ], [ 0, %1298 ], [ 0, %1339 ], [ 0, %1389 ], [ 0, %1439 ], [ 0, %1499 ], [ 0, %1547 ], [ 0, %1595 ], [ 0, %1643 ], [ 0, %1691 ], [ 0, %1739 ], [ 0, %1787 ], [ 0, %1835 ], [ 0, %2767 ], [ 0, %2809 ], [ 0, %2852 ], [ 0, %2989 ], [ 0, %3030 ], [ 0, %3080 ], [ 0, %3130 ], [ 0, %3191 ], [ 0, %3232 ], [ 0, %3282 ], [ 0, %3332 ], [ 0, %3392 ], [ 0, %3440 ], [ 0, %3488 ], [ 0, %3536 ], [ 0, %3584 ], [ 0, %3632 ], [ 0, %3680 ], [ 0, %3728 ], [ 0, %2880 ], [ 0, %2927 ], [ 9, %2701 ], [ 1, %2721 ], [ 1, %2704 ], [ 9, %2729 ], [ 9, %2744 ]
  %3824 = phi i32 [ %3792, %3797 ], [ %3808, %3806 ], [ %3777, %3780 ], [ %89, %99 ], [ %148, %153 ], [ %196, %201 ], [ %244, %249 ], [ %292, %297 ], [ %340, %345 ], [ %388, %393 ], [ %436, %441 ], [ %484, %489 ], [ %1025, %1029 ], [ %537, %545 ], [ %597, %605 ], [ %657, %665 ], [ %717, %725 ], [ %777, %785 ], [ %837, %845 ], [ %897, %905 ], [ %957, %965 ], [ %1047, %1052 ], [ %1091, %1096 ], [ %1132, %1137 ], [ %1182, %1187 ], [ %1232, %1237 ], [ %1901, %1906 ], [ %1949, %1954 ], [ %1997, %2002 ], [ %2045, %2050 ], [ %2093, %2098 ], [ %2141, %2146 ], [ %2415, %2420 ], [ %2364, %2369 ], [ %2313, %2318 ], [ %2262, %2267 ], [ %2211, %2217 ], [ %2471, %2476 ], [ %2512, %2517 ], [ %2561, %2566 ], [ %2610, %2615 ], [ %2659, %2664 ], [ %2715, %2720 ], [ %1293, %1298 ], [ %1334, %1339 ], [ %1384, %1389 ], [ %1434, %1439 ], [ %1494, %1499 ], [ %1542, %1547 ], [ %1590, %1595 ], [ %1638, %1643 ], [ %1686, %1691 ], [ %1734, %1739 ], [ %1782, %1787 ], [ %1830, %1835 ], [ %2762, %2767 ], [ %2804, %2809 ], [ %2848, %2852 ], [ %2984, %2989 ], [ %3025, %3030 ], [ %3075, %3080 ], [ %3125, %3130 ], [ %3186, %3191 ], [ %3227, %3232 ], [ %3277, %3282 ], [ %3327, %3332 ], [ %3387, %3392 ], [ %3435, %3440 ], [ %3483, %3488 ], [ %3531, %3536 ], [ %3579, %3584 ], [ %3627, %3632 ], [ %3675, %3680 ], [ %3723, %3728 ], [ %2875, %2880 ], [ %2922, %2927 ], [ %2698, %2701 ], [ %2722, %2721 ], [ %2715, %2704 ], [ %2740, %2729 ], [ %2745, %2744 ]
  %3825 = phi i32 [ %3793, %3797 ], [ %3809, %3806 ], [ %3778, %3780 ], [ %90, %99 ], [ %149, %153 ], [ %197, %201 ], [ %245, %249 ], [ %293, %297 ], [ %341, %345 ], [ %389, %393 ], [ %437, %441 ], [ %485, %489 ], [ %1026, %1029 ], [ %538, %545 ], [ %598, %605 ], [ %658, %665 ], [ %718, %725 ], [ %778, %785 ], [ %838, %845 ], [ %898, %905 ], [ %958, %965 ], [ %1048, %1052 ], [ %1092, %1096 ], [ %1133, %1137 ], [ %1183, %1187 ], [ %1233, %1237 ], [ %1902, %1906 ], [ %1950, %1954 ], [ %1998, %2002 ], [ %2046, %2050 ], [ %2094, %2098 ], [ %2142, %2146 ], [ %2416, %2420 ], [ %2365, %2369 ], [ %2314, %2318 ], [ %2263, %2267 ], [ %2212, %2217 ], [ %2472, %2476 ], [ %2513, %2517 ], [ %2562, %2566 ], [ %2611, %2615 ], [ %2660, %2664 ], [ %2716, %2720 ], [ %1294, %1298 ], [ %1335, %1339 ], [ %1385, %1389 ], [ %1435, %1439 ], [ %1495, %1499 ], [ %1543, %1547 ], [ %1591, %1595 ], [ %1639, %1643 ], [ %1687, %1691 ], [ %1735, %1739 ], [ %1783, %1787 ], [ %1831, %1835 ], [ %2763, %2767 ], [ %2805, %2809 ], [ %2849, %2852 ], [ %2985, %2989 ], [ %3026, %3030 ], [ %3076, %3080 ], [ %3126, %3130 ], [ %3187, %3191 ], [ %3228, %3232 ], [ %3278, %3282 ], [ %3328, %3332 ], [ %3388, %3392 ], [ %3436, %3440 ], [ %3484, %3488 ], [ %3532, %3536 ], [ %3580, %3584 ], [ %3628, %3632 ], [ %3676, %3680 ], [ %3724, %3728 ], [ %2876, %2880 ], [ %2923, %2927 ], [ %2699, %2701 ], [ %2728, %2721 ], [ %2716, %2704 ], [ %2741, %2729 ], [ %2746, %2744 ]
  %3826 = getelementptr inbounds %struct.lzma_dict, ptr %1, i64 0, i32 1
  %3827 = load <2 x i64>, ptr %11, align 8, !tbaa !25
  store <2 x i64> %3827, ptr %3826, align 8, !tbaa !25
  store i32 %3824, ptr %8, align 4, !tbaa.struct !30
  store i32 %3825, ptr %14, align 4, !tbaa.struct !32
  store i32 %17, ptr %16, align 4, !tbaa.struct !33
  store i64 %3820, ptr %3, align 8, !tbaa !25
  store i32 %3815, ptr %19, align 8, !tbaa !34
  store i32 %3811, ptr %21, align 4, !tbaa !39
  store i32 %3812, ptr %23, align 8, !tbaa !40
  store i32 %3813, ptr %25, align 4, !tbaa !41
  store i32 %3814, ptr %27, align 8, !tbaa !42
  store ptr %3816, ptr %31, align 8, !tbaa !44
  store i32 %3817, ptr %33, align 8, !tbaa !45
  store i32 %3818, ptr %35, align 4, !tbaa !46
  store i32 %3819, ptr %37, align 8, !tbaa !47
  %3828 = load i32, ptr %7, align 4, !tbaa !31
  store i32 %3828, ptr %39, align 4, !tbaa !48
  %3829 = load i64, ptr %47, align 8, !tbaa !51
  %3830 = icmp eq i64 %3829, -1
  br i1 %3830, label %3839, label %3831

3831:                                             ; preds = %3810
  %3832 = extractelement <2 x i64> %3827, i64 0
  %3833 = sub i64 %12, %3832
  %3834 = add i64 %3829, %3833
  store i64 %3834, ptr %47, align 8, !tbaa !51
  %3835 = icmp eq i64 %3834, 0
  %3836 = and i1 %3821, %3835
  br i1 %3836, label %3837, label %3839

3837:                                             ; preds = %3831
  %3838 = load i32, ptr %58, align 8, !tbaa !53
  switch i32 %3838, label %3843 [
    i32 0, label %3844
    i32 1, label %3840
  ]

3839:                                             ; preds = %3831, %3810
  br i1 %3822, label %3840, label %3844

3840:                                             ; preds = %3837, %3839
  %3841 = icmp eq i32 %3825, 0
  %3842 = select i1 %3841, i32 1, i32 9
  store i32 -1, ptr %8, align 4, !tbaa !62
  store i32 0, ptr %14, align 4, !tbaa !63
  store i32 5, ptr %16, align 4, !tbaa !64
  br label %3844

3843:                                             ; preds = %3837
  br label %3844

3844:                                             ; preds = %3837, %3843, %3840, %3839
  %3845 = phi i32 [ %3842, %3840 ], [ %3823, %3839 ], [ %3838, %3837 ], [ 9, %3843 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  br label %3846

3846:                                             ; preds = %5, %3844
  %3847 = phi i32 [ %3845, %3844 ], [ 0, %5 ]
  ret i32 %3847
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @lzma_decoder_reset(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 18
  %5 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !65
  %7 = getelementptr inbounds %struct.lzma_options_lzma, ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !66
  tail call fastcc void @literal_init(ptr noundef %0, i32 noundef %6, i32 noundef %8) #13
  %9 = load i32, ptr %5, align 4, !tbaa !65
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 19
  store i32 %9, ptr %10, align 8, !tbaa !50
  %11 = load i32, ptr %7, align 8, !tbaa !66
  %12 = shl nsw i32 -1, %11
  %13 = xor i32 %12, -1
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 20
  store i32 %13, ptr %14, align 4, !tbaa !49
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %15, i8 0, i64 20, i1 false)
  %16 = load i32, ptr %3, align 4, !tbaa !67
  %17 = shl nsw i32 -1, %16
  %18 = xor i32 %17, -1
  store i32 %18, ptr %4, align 4, !tbaa !43
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  store i32 -1, ptr %19, align 4, !tbaa !62
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i32 1
  store i32 0, ptr %20, align 4, !tbaa !63
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12, i32 2
  store i32 5, ptr %21, align 4, !tbaa !64
  %22 = sub i32 0, %17
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %2, %26
  %25 = phi i64 [ 0, %2 ], [ %31, %26 ]
  br label %33

26:                                               ; preds = %33
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i64 %25
  store i16 1024, ptr %27, align 2, !tbaa !55
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i64 %25
  store i16 1024, ptr %28, align 2, !tbaa !55
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %25
  store i16 1024, ptr %29, align 2, !tbaa !55
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i64 %25
  store i16 1024, ptr %30, align 2, !tbaa !55
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, 12
  br i1 %32, label %39, label %24, !llvm.loop !68

33:                                               ; preds = %24, %33
  %34 = phi i64 [ 0, %24 ], [ %37, %33 ]
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i64 %25, i64 %34
  store i16 1024, ptr %35, align 2, !tbaa !55
  %36 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6, i64 %25, i64 %34
  store i16 1024, ptr %36, align 2, !tbaa !55
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, %23
  br i1 %38, label %26, label %33, !llvm.loop !69

39:                                               ; preds = %26, %46
  %40 = phi i64 [ %47, %46 ], [ 0, %26 ]
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i64 [ 0, %39 ], [ %44, %41 ]
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7, i64 %40, i64 %42
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %43, align 2, !tbaa !55
  %44 = add nuw i64 %42, 8
  %45 = icmp eq i64 %44, 64
  br i1 %45, label %46, label %41, !llvm.loop !70

46:                                               ; preds = %41
  %47 = add nuw nsw i64 %40, 1
  %48 = icmp eq i64 %47, 4
  br i1 %48, label %49, label %39, !llvm.loop !73

49:                                               ; preds = %46, %91
  %50 = phi i64 [ %92, %91 ], [ 0, %46 ]
  %51 = phi <8 x i64> [ %93, %91 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %46 ]
  %52 = icmp ult <8 x i64> %51, <i64 114, i64 114, i64 114, i64 114, i64 114, i64 114, i64 114, i64 114>
  %53 = extractelement <8 x i1> %52, i64 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8, i64 %50
  store i16 1024, ptr %55, align 2, !tbaa !55
  br label %56

56:                                               ; preds = %54, %49
  %57 = extractelement <8 x i1> %52, i64 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = or disjoint i64 %50, 1
  %60 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8, i64 %59
  store i16 1024, ptr %60, align 2, !tbaa !55
  br label %61

61:                                               ; preds = %58, %56
  %62 = extractelement <8 x i1> %52, i64 2
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  %64 = or disjoint i64 %50, 2
  %65 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8, i64 %64
  store i16 1024, ptr %65, align 2, !tbaa !55
  br label %66

66:                                               ; preds = %63, %61
  %67 = extractelement <8 x i1> %52, i64 3
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = or disjoint i64 %50, 3
  %70 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8, i64 %69
  store i16 1024, ptr %70, align 2, !tbaa !55
  br label %71

71:                                               ; preds = %68, %66
  %72 = extractelement <8 x i1> %52, i64 4
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = or disjoint i64 %50, 4
  %75 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8, i64 %74
  store i16 1024, ptr %75, align 2, !tbaa !55
  br label %76

76:                                               ; preds = %73, %71
  %77 = extractelement <8 x i1> %52, i64 5
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = or disjoint i64 %50, 5
  %80 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8, i64 %79
  store i16 1024, ptr %80, align 2, !tbaa !55
  br label %81

81:                                               ; preds = %78, %76
  %82 = extractelement <8 x i1> %52, i64 6
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = or disjoint i64 %50, 6
  %85 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8, i64 %84
  store i16 1024, ptr %85, align 2, !tbaa !55
  br label %86

86:                                               ; preds = %83, %81
  %87 = extractelement <8 x i1> %52, i64 7
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = or disjoint i64 %50, 7
  %90 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8, i64 %89
  store i16 1024, ptr %90, align 2, !tbaa !55
  br label %91

91:                                               ; preds = %88, %86
  %92 = add i64 %50, 8
  %93 = add <8 x i64> %51, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %94 = icmp eq i64 %92, 120
  br i1 %94, label %95, label %49, !llvm.loop !74

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %96, align 2, !tbaa !55
  %97 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9, i64 8
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %97, align 2, !tbaa !55
  %98 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  store i16 1024, ptr %98, align 4, !tbaa !56
  %99 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 1
  store i16 1024, ptr %99, align 2, !tbaa !57
  %100 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  store i16 1024, ptr %100, align 8, !tbaa !60
  %101 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 1
  store i16 1024, ptr %101, align 2, !tbaa !61
  br label %102

102:                                              ; preds = %95, %102
  %103 = phi i32 [ 0, %95 ], [ %109, %102 ]
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 2, i64 %104, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %105, align 2, !tbaa !55
  %106 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 3, i64 %104, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %106, align 2, !tbaa !55
  %107 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 2, i64 %104, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %107, align 2, !tbaa !55
  %108 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 3, i64 %104, i64 0
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %108, align 2, !tbaa !55
  %109 = add i32 %103, 1
  %110 = lshr i32 %109, %16
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %102, label %112, !llvm.loop !75

112:                                              ; preds = %102, %112
  %113 = phi i64 [ %115, %112 ], [ 0, %102 ]
  %114 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10, i32 4, i64 %113
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %114, align 2, !tbaa !55
  %115 = add nuw i64 %113, 8
  %116 = icmp eq i64 %115, 256
  br i1 %116, label %117, label %112, !llvm.loop !76

117:                                              ; preds = %112, %117
  %118 = phi i64 [ %120, %117 ], [ 0, %112 ]
  %119 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11, i32 4, i64 %118
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %119, align 2, !tbaa !55
  %120 = add nuw i64 %118, 8
  %121 = icmp eq i64 %120, 256
  br i1 %121, label %122, label %117, !llvm.loop !77

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 22
  store i32 1, ptr %123, align 8, !tbaa !53
  %124 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %124, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @lzma_decoder_uncompressed(ptr nocapture noundef writeonly %0, i64 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 21
  store i64 %1, ptr %3, align 8, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_lzma_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @lzma_lz_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @lzma_decoder_init) #12
  ret i32 %4
}

; Function Attrs: optsize
declare i32 @lzma_lz_decoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @lzma_decoder_init(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call fastcc zeroext i1 @is_lclppb_valid(ptr noundef %2) #13
  br i1 %5, label %6, label %12

6:                                                ; preds = %4
  %7 = tail call i32 @lzma_lzma_decoder_create(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13, !range !78
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load ptr, ptr %0, align 8, !tbaa !5
  tail call void @lzma_decoder_reset(ptr noundef %10, ptr noundef %2) #13
  %11 = load ptr, ptr %0, align 8, !tbaa !5
  tail call void @lzma_decoder_uncompressed(ptr noundef %11, i64 noundef -1) #13
  br label %12

12:                                               ; preds = %6, %4, %9
  %13 = phi i32 [ %7, %6 ], [ 0, %9 ], [ 11, %4 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local zeroext i1 @lzma_lzma_lclppb_decode(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #4 {
  %3 = icmp ugt i8 %1, -32
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = udiv i8 %1, 45
  %6 = zext nneg i8 %5 to i32
  %7 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  store i32 %6, ptr %7, align 4, !tbaa !67
  %8 = mul i8 %5, -45
  %9 = add i8 %8, %1
  %10 = zext i8 %9 to i32
  %11 = udiv i8 %9, 9
  %12 = zext nneg i8 %11 to i32
  %13 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  store i32 %12, ptr %13, align 8, !tbaa !66
  %14 = mul nsw i32 %12, -9
  %15 = add nsw i32 %14, %10
  %16 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 3
  store i32 %15, ptr %16, align 4, !tbaa !65
  %17 = add nsw i32 %15, %12
  %18 = icmp ugt i32 %17, 4
  br label %19

19:                                               ; preds = %2, %4
  %20 = phi i1 [ %18, %4 ], [ true, %2 ]
  ret i1 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_lzma_decoder_memusage_nocheck(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !13
  %3 = zext i32 %2 to i64
  %4 = tail call i64 @lzma_lz_decoder_memusage(i64 noundef %3) #12
  %5 = add i64 %4, 28352
  ret i64 %5
}

; Function Attrs: optsize
declare i64 @lzma_lz_decoder_memusage(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_lzma_decoder_memusage(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i1 @is_lclppb_valid(ptr noundef %0) #13
  br i1 %2, label %3, label %5

3:                                                ; preds = %1
  %4 = tail call i64 @lzma_lzma_decoder_memusage_nocheck(ptr noundef %0) #13
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i64 [ %4, %3 ], [ -1, %1 ]
  ret i64 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i1 @is_lclppb_valid(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !65
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !66
  %8 = icmp ult i32 %7, 5
  %9 = add nuw nsw i32 %7, %3
  %10 = icmp ult i32 %9, 5
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.lzma_options_lzma, ptr %0, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !67
  %15 = icmp ult i32 %14, 5
  br label %16

16:                                               ; preds = %12, %5, %1
  %17 = phi i1 [ false, %5 ], [ false, %1 ], [ %15, %12 ]
  ret i1 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_lzma_props_decode(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i64 %3, 5
  br i1 %5, label %6, label %18

6:                                                ; preds = %4
  %7 = tail call ptr @lzma_alloc(i64 noundef 112, ptr noundef %1) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %2, align 1, !tbaa !54
  %11 = tail call zeroext i1 @lzma_lzma_lclppb_decode(ptr noundef nonnull %7, i8 noundef zeroext %10) #13
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds i8, ptr %2, i64 1
  %14 = tail call fastcc i32 @unaligned_read32le(ptr noundef nonnull %13) #13
  store i32 %14, ptr %7, align 8, !tbaa !13
  %15 = getelementptr inbounds %struct.lzma_options_lzma, ptr %7, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !19
  %16 = getelementptr inbounds %struct.lzma_options_lzma, ptr %7, i64 0, i32 2
  store i32 0, ptr %16, align 8, !tbaa !21
  store ptr %7, ptr %0, align 8, !tbaa !24
  br label %18

17:                                               ; preds = %9
  tail call void @lzma_free(ptr noundef nonnull %7, ptr noundef %1) #12
  br label %18

18:                                               ; preds = %12, %17, %6, %4
  %19 = phi i32 [ 8, %4 ], [ 8, %17 ], [ 0, %12 ], [ 5, %6 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @unaligned_read32le(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 1
  ret i32 %2
}

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @rc_read_init(ptr nocapture noundef %0, ptr noalias nocapture noundef readonly %1, ptr noalias nocapture noundef %2, i64 noundef %3) unnamed_addr #3 {
  %5 = getelementptr inbounds %struct.lzma_range_decoder, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !79
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.lzma_range_decoder, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %2, align 8, !tbaa !25
  br label %11

11:                                               ; preds = %8, %15
  %12 = phi i64 [ %10, %8 ], [ %22, %15 ]
  %13 = phi i32 [ %6, %8 ], [ %23, %15 ]
  %14 = icmp ne i64 %12, %3
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, ptr %9, align 4, !tbaa !80
  %17 = shl i32 %16, 8
  %18 = getelementptr inbounds i8, ptr %1, i64 %12
  %19 = load i8, ptr %18, align 1, !tbaa !54
  %20 = zext i8 %19 to i32
  %21 = or disjoint i32 %17, %20
  store i32 %21, ptr %9, align 4, !tbaa !80
  %22 = add i64 %12, 1
  store i64 %22, ptr %2, align 8, !tbaa !25
  %23 = add i32 %13, -1
  store i32 %23, ptr %5, align 4, !tbaa !79
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %11, !llvm.loop !81

25:                                               ; preds = %11, %15, %4
  %26 = phi i1 [ true, %4 ], [ %14, %15 ], [ %14, %11 ]
  ret i1 %26
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @dict_get(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = load ptr, ptr %0, align 8, !tbaa !82
  %4 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !28
  %6 = zext i32 %1 to i64
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !83
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i64 [ %10, %8 ], [ 0, %2 ]
  %13 = xor i64 %6, -1
  %14 = getelementptr i8, ptr %3, i64 %5
  %15 = getelementptr i8, ptr %14, i64 %13
  %16 = getelementptr i8, ptr %15, i64 %12
  %17 = load i8, ptr %16, align 1, !tbaa !54
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i1 @dict_put(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !52
  %7 = icmp eq i64 %4, %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !82
  %10 = add i64 %4, 1
  store i64 %10, ptr %3, align 8, !tbaa !28
  %11 = getelementptr inbounds i8, ptr %9, i64 %4
  store i8 %1, ptr %11, align 1, !tbaa !54
  %12 = load i64, ptr %3, align 8, !tbaa !28
  %13 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !84
  %15 = icmp ugt i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i64 %12, ptr %13, align 8, !tbaa !84
  br label %17

17:                                               ; preds = %8, %16, %2
  ret i1 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i1 @dict_is_distance_valid(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !84
  %5 = icmp ugt i64 %4, %1
  ret i1 %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i1 @dict_repeat(ptr nocapture noundef %0, i32 noundef %1, ptr nocapture noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !28
  %8 = sub i64 %5, %7
  %9 = load i32, ptr %2, align 4, !tbaa !31
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %8, %10
  %12 = trunc i64 %8 to i32
  %13 = select i1 %11, i32 %12, i32 %9
  %14 = sub i32 %9, %13
  store i32 %14, ptr %2, align 4, !tbaa !31
  %15 = icmp ugt i32 %13, %1
  br i1 %15, label %16, label %26

16:                                               ; preds = %3, %16
  %17 = phi i64 [ %23, %16 ], [ %7, %3 ]
  %18 = phi i32 [ %24, %16 ], [ %13, %3 ]
  %19 = tail call fastcc zeroext i8 @dict_get(ptr noundef nonnull %0, i32 noundef %1) #13
  %20 = load ptr, ptr %0, align 8, !tbaa !82
  %21 = getelementptr inbounds i8, ptr %20, i64 %17
  store i8 %19, ptr %21, align 1, !tbaa !54
  %22 = load i64, ptr %6, align 8, !tbaa !28
  %23 = add i64 %22, 1
  store i64 %23, ptr %6, align 8, !tbaa !28
  %24 = add i32 %18, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %63, label %16, !llvm.loop !85

26:                                               ; preds = %3
  %27 = zext i32 %1 to i64
  %28 = icmp ugt i64 %7, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8, !tbaa !82
  %31 = getelementptr inbounds i8, ptr %30, i64 %7
  %32 = sub nsw i64 0, %27
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = getelementptr inbounds i8, ptr %33, i64 -1
  %35 = zext i32 %13 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %31, ptr nonnull align 1 %34, i64 %35, i1 false)
  br label %59

36:                                               ; preds = %26
  %37 = xor i64 %27, -1
  %38 = add nsw i64 %7, %37
  %39 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 4
  %40 = load i64, ptr %39, align 8, !tbaa !83
  %41 = add i64 %40, %38
  %42 = and i64 %41, 4294967295
  %43 = trunc i64 %38 to i32
  %44 = sub i32 0, %43
  %45 = icmp ugt i32 %13, %44
  %46 = load ptr, ptr %0, align 8, !tbaa !82
  %47 = getelementptr inbounds i8, ptr %46, i64 %7
  %48 = getelementptr inbounds i8, ptr %46, i64 %42
  br i1 %45, label %49, label %57

49:                                               ; preds = %36
  %50 = zext i32 %44 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %47, ptr align 1 %48, i64 %50, i1 false)
  %51 = load i64, ptr %6, align 8, !tbaa !28
  %52 = add i64 %51, %50
  store i64 %52, ptr %6, align 8, !tbaa !28
  %53 = add i32 %13, %43
  %54 = load ptr, ptr %0, align 8, !tbaa !82
  %55 = getelementptr inbounds i8, ptr %54, i64 %52
  %56 = zext i32 %53 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %55, ptr align 1 %54, i64 %56, i1 false)
  br label %59

57:                                               ; preds = %36
  %58 = zext i32 %13 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %47, ptr align 1 %48, i64 %58, i1 false)
  br label %59

59:                                               ; preds = %49, %57, %29
  %60 = phi i64 [ %35, %29 ], [ %58, %57 ], [ %56, %49 ]
  %61 = load i64, ptr %6, align 8, !tbaa !28
  %62 = add i64 %61, %60
  store i64 %62, ptr %6, align 8, !tbaa !28
  br label %63

63:                                               ; preds = %16, %59
  %64 = phi i64 [ %62, %59 ], [ %23, %16 ]
  %65 = getelementptr inbounds %struct.lzma_dict, ptr %0, i64 0, i32 2
  %66 = load i64, ptr %65, align 8, !tbaa !84
  %67 = icmp ult i64 %66, %64
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i64 %64, ptr %65, align 8, !tbaa !84
  br label %69

69:                                               ; preds = %68, %63
  %70 = load i32, ptr %2, align 4, !tbaa !31
  %71 = icmp ne i32 %70, 0
  ret i1 %71
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable
define internal fastcc void @literal_init(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
  %4 = add i32 %2, %1
  br label %5

5:                                                ; preds = %3, %14
  %6 = phi i32 [ 0, %3 ], [ %15, %14 ]
  %7 = zext i32 %6 to i64
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi i64 [ 0, %5 ], [ %11, %8 ]
  %10 = getelementptr inbounds [768 x i16], ptr %0, i64 %7, i64 %9
  store <8 x i16> <i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024, i16 1024>, ptr %10, align 2, !tbaa !55
  %11 = add nuw i64 %9, 8
  %12 = icmp eq i64 %11, 768
  br i1 %12, label %14, label %8, !llvm.loop !86

13:                                               ; preds = %14
  ret void

14:                                               ; preds = %8
  %15 = add i32 %6, 1
  %16 = lshr i32 %15, %4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %5, label %13, !llvm.loop !87
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!6, !7, i64 16}
!12 = !{!6, !7, i64 24}
!13 = !{!14, !15, i64 0}
!14 = !{!"", !15, i64 0, !7, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !15, i64 80, !15, i64 84, !15, i64 88, !15, i64 92, !7, i64 96, !7, i64 104}
!15 = !{!"int", !8, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"", !18, i64 0, !7, i64 8, !18, i64 16}
!18 = !{!"long", !8, i64 0}
!19 = !{!14, !7, i64 8}
!20 = !{!17, !7, i64 8}
!21 = !{!14, !15, i64 16}
!22 = !{!17, !18, i64 16}
!23 = !{i64 0, i64 8, !24, i64 8, i64 8, !25, i64 16, i64 8, !25, i64 24, i64 8, !25, i64 32, i64 8, !25, i64 40, i64 1, !26}
!24 = !{!7, !7, i64 0}
!25 = !{!18, !18, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"_Bool", !8, i64 0}
!28 = !{!29, !18, i64 8}
!29 = !{!"", !7, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !27, i64 40}
!30 = !{i64 0, i64 4, !31, i64 4, i64 4, !31, i64 8, i64 4, !31}
!31 = !{!15, !15, i64 0}
!32 = !{i64 0, i64 4, !31, i64 4, i64 4, !31}
!33 = !{i64 0, i64 4, !31}
!34 = !{!35, !15, i64 28280}
!35 = !{!"lzma_coder_s", !8, i64 0, !8, i64 24576, !8, i64 24960, !8, i64 24984, !8, i64 25008, !8, i64 25032, !8, i64 25056, !8, i64 25440, !8, i64 25952, !8, i64 26180, !36, i64 26212, !36, i64 27240, !38, i64 28268, !15, i64 28280, !15, i64 28284, !15, i64 28288, !15, i64 28292, !15, i64 28296, !15, i64 28300, !15, i64 28304, !15, i64 28308, !18, i64 28312, !15, i64 28320, !7, i64 28328, !15, i64 28336, !15, i64 28340, !15, i64 28344, !15, i64 28348}
!36 = !{!"", !37, i64 0, !37, i64 2, !8, i64 4, !8, i64 260, !8, i64 516}
!37 = !{!"short", !8, i64 0}
!38 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8}
!39 = !{!35, !15, i64 28284}
!40 = !{!35, !15, i64 28288}
!41 = !{!35, !15, i64 28292}
!42 = !{!35, !15, i64 28296}
!43 = !{!35, !15, i64 28300}
!44 = !{!35, !7, i64 28328}
!45 = !{!35, !15, i64 28336}
!46 = !{!35, !15, i64 28340}
!47 = !{!35, !15, i64 28344}
!48 = !{!35, !15, i64 28348}
!49 = !{!35, !15, i64 28308}
!50 = !{!35, !15, i64 28304}
!51 = !{!35, !18, i64 28312}
!52 = !{!29, !18, i64 24}
!53 = !{!35, !15, i64 28320}
!54 = !{!8, !8, i64 0}
!55 = !{!37, !37, i64 0}
!56 = !{!35, !37, i64 26212}
!57 = !{!35, !37, i64 26214}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!35, !37, i64 27240}
!61 = !{!35, !37, i64 27242}
!62 = !{!35, !15, i64 28268}
!63 = !{!35, !15, i64 28272}
!64 = !{!35, !15, i64 28276}
!65 = !{!14, !15, i64 20}
!66 = !{!14, !15, i64 24}
!67 = !{!14, !15, i64 28}
!68 = distinct !{!68, !59}
!69 = distinct !{!69, !59}
!70 = distinct !{!70, !59, !71, !72}
!71 = !{!"llvm.loop.isvectorized", i32 1}
!72 = !{!"llvm.loop.unroll.runtime.disable"}
!73 = distinct !{!73, !59}
!74 = distinct !{!74, !59, !71, !72}
!75 = distinct !{!75, !59}
!76 = distinct !{!76, !59, !71, !72}
!77 = distinct !{!77, !59, !71, !72}
!78 = !{i32 0, i32 6}
!79 = !{!38, !15, i64 8}
!80 = !{!38, !15, i64 4}
!81 = distinct !{!81, !59}
!82 = !{!29, !7, i64 0}
!83 = !{!29, !18, i64 32}
!84 = !{!29, !18, i64 16}
!85 = distinct !{!85, !59}
!86 = distinct !{!86, !59, !71, !72}
!87 = distinct !{!87, !59}
