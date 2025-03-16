; ModuleID = 'src/jquant1.c'
source_filename = "src/jquant1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_color_quantizer = type { ptr, ptr, ptr, ptr }
%struct.my_cquantizer = type { %struct.jpeg_color_quantizer, ptr, i32, ptr, i32, [4 x i32], i32, [4 x ptr], [4 x ptr], i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@base_dither_matrix = internal unnamed_addr constant [16 x [16 x i8]] [[16 x i8] c"\00\C00\F0\0C\CC<\FC\03\C33\F3\0F\CF?\FF", [16 x i8] c"\80@\B0p\8CL\BC|\83C\B3s\8FO\BF\7F", [16 x i8] c" \E0\10\D0,\EC\1C\DC#\E3\13\D3/\EF\1F\DF", [16 x i8] c"\A0`\90P\ACl\9C\\\A3c\93S\AFo\9F_", [16 x i8] c"\08\C88\F8\04\C44\F4\0B\CB;\FB\07\C77\F7", [16 x i8] c"\88H\B8x\84D\B4t\8BK\BB{\87G\B7w", [16 x i8] c"(\E8\18\D8$\E4\14\D4+\EB\1B\DB'\E7\17\D7", [16 x i8] c"\A8h\98X\A4d\94T\ABk\9B[\A7g\97W", [16 x i8] c"\02\C22\F2\0E\CE>\FE\01\C11\F1\0D\CD=\FD", [16 x i8] c"\82B\B2r\8EN\BE~\81A\B1q\8DM\BD}", [16 x i8] c"\22\E2\12\D2.\EE\1E\DE!\E1\11\D1-\ED\1D\DD", [16 x i8] c"\A2b\92R\AEn\9E^\A1a\91Q\ADm\9D]", [16 x i8] c"\0A\CA:\FA\06\C66\F6\09\C99\F9\05\C55\F5", [16 x i8] c"\8AJ\BAz\86F\B6v\89I\B9y\85E\B5u", [16 x i8] c"*\EA\1A\DA&\E6\16\D6)\E9\19\D9%\E5\15\D5", [16 x i8] c"\AAj\9AZ\A6f\96V\A9i\99Y\A5e\95U"], align 16
@select_ncolors.RGB_order = internal unnamed_addr constant [3 x i32] [i32 1, i32 0, i32 2], align 4

; Function Attrs: nounwind uwtable
define dso_local void @jinit_1pass_quantizer(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 152) #4
  %6 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  store ptr %5, ptr %6, align 8, !tbaa !16
  store ptr @start_pass_1_quant, ptr %5, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %5, i64 0, i32 2
  store ptr @finish_pass_1_quant, ptr %7, align 8, !tbaa !20
  %8 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %5, i64 0, i32 3
  store ptr @new_color_map_1_quant, ptr %8, align 8, !tbaa !21
  %9 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i64 0, i32 8
  store ptr null, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.my_cquantizer, ptr %5, i64 0, i32 7
  store ptr null, ptr %10, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %12 = load i32, ptr %11, align 8, !tbaa !23
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load ptr, ptr %0, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 54, ptr %16, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 6
  store i32 4, ptr %17, align 4, !tbaa !27
  %18 = load ptr, ptr %0, align 8, !tbaa !24
  %19 = load ptr, ptr %18, align 8, !tbaa !28
  tail call void %19(ptr noundef nonnull %0) #4
  br label %20

20:                                               ; preds = %14, %1
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 22
  %22 = load i32, ptr %21, align 8, !tbaa !29
  %23 = icmp sgt i32 %22, 256
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load ptr, ptr %0, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 5
  store i32 56, ptr %26, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %25, i64 0, i32 6
  store i32 256, ptr %27, align 4, !tbaa !27
  %28 = load ptr, ptr %0, align 8, !tbaa !24
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  tail call void %29(ptr noundef nonnull %0) #4
  br label %30

30:                                               ; preds = %24, %20
  %31 = load ptr, ptr %6, align 8, !tbaa !16
  %32 = load i32, ptr %11, align 8, !tbaa !23
  %33 = load i32, ptr %21, align 8, !tbaa !29
  %34 = sext i32 %33 to i64
  %35 = icmp sgt i32 %32, 1
  br label %36

36:                                               ; preds = %45, %30
  %37 = phi i64 [ %38, %45 ], [ 1, %30 ]
  %38 = add nuw i64 %37, 1
  br i1 %35, label %39, label %45

39:                                               ; preds = %36, %39
  %40 = phi i64 [ %42, %39 ], [ %38, %36 ]
  %41 = phi i32 [ %43, %39 ], [ 1, %36 ]
  %42 = mul nsw i64 %40, %38
  %43 = add nuw nsw i32 %41, 1
  %44 = icmp eq i32 %43, %32
  br i1 %44, label %45, label %39, !llvm.loop !30

45:                                               ; preds = %39, %36
  %46 = phi i64 [ %38, %36 ], [ %42, %39 ]
  %47 = icmp sgt i64 %46, %34
  br i1 %47, label %48, label %36, !llvm.loop !32

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.my_cquantizer, ptr %31, i64 0, i32 5
  %50 = trunc i64 %37 to i32
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 8, !tbaa !24
  %54 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 5
  store i32 55, ptr %54, align 8, !tbaa !25
  %55 = trunc i64 %46 to i32
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %53, i64 0, i32 6
  store i32 %55, ptr %56, align 4, !tbaa !27
  %57 = load ptr, ptr %0, align 8, !tbaa !24
  %58 = load ptr, ptr %57, align 8, !tbaa !28
  tail call void %58(ptr noundef nonnull %0) #4
  br label %59

59:                                               ; preds = %52, %48
  %60 = icmp sgt i32 %32, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = zext nneg i32 %32 to i64
  br label %67

63:                                               ; preds = %67, %59
  %64 = phi i32 [ 1, %59 ], [ %71, %67 ]
  %65 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 10
  %66 = zext nneg i32 %32 to i64
  br label %74

67:                                               ; preds = %67, %61
  %68 = phi i64 [ 0, %61 ], [ %72, %67 ]
  %69 = phi i32 [ 1, %61 ], [ %71, %67 ]
  %70 = getelementptr inbounds i32, ptr %49, i64 %68
  store i32 %50, ptr %70, align 4, !tbaa !33
  %71 = mul nsw i32 %69, %50
  %72 = add nuw nsw i64 %68, 1
  %73 = icmp eq i64 %72, %62
  br i1 %73, label %63, label %67, !llvm.loop !34

74:                                               ; preds = %101, %63
  %75 = phi i32 [ %102, %101 ], [ %64, %63 ]
  br i1 %60, label %76, label %101

76:                                               ; preds = %74, %97
  %77 = phi i64 [ %99, %97 ], [ 0, %74 ]
  %78 = phi i1 [ false, %97 ], [ true, %74 ]
  %79 = phi i32 [ %98, %97 ], [ %75, %74 ]
  %80 = load i32, ptr %65, align 8, !tbaa !35
  %81 = icmp eq i32 %80, 2
  %82 = trunc i64 %77 to i32
  br i1 %81, label %83, label %86

83:                                               ; preds = %76
  %84 = getelementptr inbounds [3 x i32], ptr @select_ncolors.RGB_order, i64 0, i64 %77
  %85 = load i32, ptr %84, align 4, !tbaa !33
  br label %86

86:                                               ; preds = %83, %76
  %87 = phi i32 [ %85, %83 ], [ %82, %76 ]
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, ptr %49, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !33
  %91 = sdiv i32 %79, %90
  %92 = sext i32 %91 to i64
  %93 = add nsw i32 %90, 1
  %94 = sext i32 %93 to i64
  %95 = mul nsw i64 %92, %94
  %96 = icmp sgt i64 %95, %34
  br i1 %96, label %101, label %97

97:                                               ; preds = %86
  store i32 %93, ptr %89, align 4, !tbaa !33
  %98 = trunc i64 %95 to i32
  %99 = add nuw nsw i64 %77, 1
  %100 = icmp eq i64 %99, %66
  br i1 %100, label %101, label %76, !llvm.loop !36

101:                                              ; preds = %97, %86, %74
  %102 = phi i32 [ %75, %74 ], [ %79, %86 ], [ %98, %97 ]
  %103 = phi i1 [ true, %74 ], [ %78, %86 ], [ false, %97 ]
  br i1 %103, label %104, label %74, !llvm.loop !37

104:                                              ; preds = %101
  %105 = load i32, ptr %11, align 8, !tbaa !23
  %106 = icmp eq i32 %105, 3
  %107 = load ptr, ptr %0, align 8, !tbaa !24
  br i1 %106, label %108, label %119

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %107, i64 0, i32 6
  store i32 %102, ptr %109, align 4, !tbaa !33
  %110 = load i32, ptr %49, align 4, !tbaa !33
  %111 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %107, i64 0, i32 6, i32 0, i64 1
  store i32 %110, ptr %111, align 4, !tbaa !33
  %112 = getelementptr inbounds %struct.my_cquantizer, ptr %31, i64 0, i32 5, i64 1
  %113 = load i32, ptr %112, align 4, !tbaa !33
  %114 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %107, i64 0, i32 6, i32 0, i64 2
  store i32 %113, ptr %114, align 4, !tbaa !33
  %115 = getelementptr inbounds %struct.my_cquantizer, ptr %31, i64 0, i32 5, i64 2
  %116 = load i32, ptr %115, align 4, !tbaa !33
  %117 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %107, i64 0, i32 6, i32 0, i64 3
  store i32 %116, ptr %117, align 4, !tbaa !33
  %118 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %107, i64 0, i32 5
  store i32 93, ptr %118, align 8, !tbaa !25
  br label %123

119:                                              ; preds = %104
  %120 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %107, i64 0, i32 5
  store i32 94, ptr %120, align 8, !tbaa !25
  %121 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %107, i64 0, i32 6
  store i32 %102, ptr %121, align 4, !tbaa !27
  %122 = load ptr, ptr %0, align 8, !tbaa !24
  br label %123

123:                                              ; preds = %119, %108
  %124 = phi ptr [ %122, %119 ], [ %107, %108 ]
  %125 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !38
  tail call void %126(ptr noundef nonnull %0, i32 noundef 1) #4
  %127 = load ptr, ptr %2, align 8, !tbaa !5
  %128 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %127, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !39
  %130 = load i32, ptr %11, align 8, !tbaa !23
  %131 = tail call ptr %129(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %102, i32 noundef %130) #4
  %132 = load i32, ptr %11, align 8, !tbaa !23
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %185

134:                                              ; preds = %123
  %135 = sext i32 %102 to i64
  br label %136

136:                                              ; preds = %180, %134
  %137 = phi i64 [ 0, %134 ], [ %181, %180 ]
  %138 = phi i32 [ %102, %134 ], [ %141, %180 ]
  %139 = getelementptr inbounds %struct.my_cquantizer, ptr %31, i64 0, i32 5, i64 %137
  %140 = load i32, ptr %139, align 4, !tbaa !33
  %141 = sdiv i32 %138, %140
  %142 = icmp sgt i32 %140, 0
  br i1 %142, label %143, label %180

143:                                              ; preds = %136
  %144 = add nsw i32 %140, -1
  %145 = sdiv i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = sext i32 %144 to i64
  %148 = icmp sgt i32 %141, 0
  %149 = getelementptr inbounds ptr, ptr %131, i64 %137
  %150 = sext i32 %141 to i64
  %151 = sext i32 %138 to i64
  %152 = zext nneg i32 %140 to i64
  %153 = zext nneg i32 %141 to i64
  br label %154

154:                                              ; preds = %176, %143
  %155 = phi i64 [ 0, %143 ], [ %177, %176 ]
  %156 = phi i64 [ 0, %143 ], [ %178, %176 ]
  %157 = mul nsw i64 %155, %150
  %158 = icmp slt i64 %157, %135
  br i1 %158, label %159, label %176

159:                                              ; preds = %154
  %160 = mul nuw nsw i64 %155, 255
  %161 = add nsw i64 %160, %146
  %162 = sdiv i64 %161, %147
  %163 = trunc i64 %162 to i8
  br label %164

164:                                              ; preds = %173, %159
  %165 = phi i64 [ %156, %159 ], [ %174, %173 ]
  br i1 %148, label %166, label %173

166:                                              ; preds = %164, %166
  %167 = phi i64 [ %171, %166 ], [ 0, %164 ]
  %168 = load ptr, ptr %149, align 8, !tbaa !22
  %169 = getelementptr i8, ptr %168, i64 %167
  %170 = getelementptr i8, ptr %169, i64 %165
  store i8 %163, ptr %170, align 1, !tbaa !27
  %171 = add nuw nsw i64 %167, 1
  %172 = icmp eq i64 %171, %153
  br i1 %172, label %173, label %166, !llvm.loop !40

173:                                              ; preds = %166, %164
  %174 = add i64 %165, %151
  %175 = icmp slt i64 %174, %135
  br i1 %175, label %164, label %176, !llvm.loop !41

176:                                              ; preds = %173, %154
  %177 = add nuw nsw i64 %155, 1
  %178 = add i64 %156, %150
  %179 = icmp eq i64 %177, %152
  br i1 %179, label %180, label %154, !llvm.loop !42

180:                                              ; preds = %176, %136
  %181 = add nuw nsw i64 %137, 1
  %182 = load i32, ptr %11, align 8, !tbaa !23
  %183 = sext i32 %182 to i64
  %184 = icmp slt i64 %181, %183
  br i1 %184, label %136, label %185, !llvm.loop !43

185:                                              ; preds = %180, %123
  %186 = getelementptr inbounds %struct.my_cquantizer, ptr %31, i64 0, i32 1
  store ptr %131, ptr %186, align 8, !tbaa !44
  %187 = getelementptr inbounds %struct.my_cquantizer, ptr %31, i64 0, i32 2
  store i32 %102, ptr %187, align 8, !tbaa !45
  tail call fastcc void @create_colorindex(ptr noundef nonnull %0)
  %188 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 20
  %189 = load i32, ptr %188, align 8, !tbaa !46
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %211

191:                                              ; preds = %185
  %192 = load ptr, ptr %6, align 8, !tbaa !16
  %193 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %194 = load i32, ptr %193, align 8, !tbaa !47
  %195 = add i32 %194, 2
  %196 = zext i32 %195 to i64
  %197 = shl nuw nsw i64 %196, 1
  %198 = load i32, ptr %11, align 8, !tbaa !23
  %199 = icmp sgt i32 %198, 0
  br i1 %199, label %200, label %211

200:                                              ; preds = %191, %200
  %201 = phi i64 [ %207, %200 ], [ 0, %191 ]
  %202 = load ptr, ptr %2, align 8, !tbaa !5
  %203 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %202, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !48
  %205 = tail call ptr %204(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %197) #4
  %206 = getelementptr inbounds %struct.my_cquantizer, ptr %192, i64 0, i32 8, i64 %201
  store ptr %205, ptr %206, align 8, !tbaa !22
  %207 = add nuw nsw i64 %201, 1
  %208 = load i32, ptr %11, align 8, !tbaa !23
  %209 = sext i32 %208 to i64
  %210 = icmp slt i64 %207, %209
  br i1 %210, label %200, label %211, !llvm.loop !49

211:                                              ; preds = %200, %191, %185
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @start_pass_1_quant(ptr noundef %0, i32 %1) #0 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 32
  store ptr %6, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 31
  store i32 %9, ptr %10, align 4, !tbaa !51
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 20
  %12 = load i32, ptr %11, align 8, !tbaa !46
  switch i32 %12, label %138 [
    i32 0, label %13
    i32 1, label %20
    i32 2, label %93
  ]

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %15 = load i32, ptr %14, align 8, !tbaa !23
  %16 = icmp eq i32 %15, 3
  %17 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %4, i64 0, i32 1
  br i1 %16, label %18, label %19

18:                                               ; preds = %13
  store ptr @color_quantize3, ptr %17, align 8, !tbaa !52
  br label %142

19:                                               ; preds = %13
  store ptr @color_quantize, ptr %17, align 8, !tbaa !52
  br label %142

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %22 = load i32, ptr %21, align 8, !tbaa !23
  %23 = icmp eq i32 %22, 3
  %24 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %4, i64 0, i32 1
  %25 = select i1 %23, ptr @quantize3_ord_dither, ptr @quantize_ord_dither
  store ptr %25, ptr %24, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 6
  store i32 0, ptr %26, align 4, !tbaa !53
  %27 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 4
  %28 = load i32, ptr %27, align 8, !tbaa !54
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  tail call fastcc void @create_colorindex(ptr noundef %0)
  br label %31

31:                                               ; preds = %30, %20
  %32 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %142

35:                                               ; preds = %31
  %36 = load ptr, ptr %3, align 8, !tbaa !16
  %37 = load i32, ptr %21, align 8, !tbaa !23
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %142

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  br label %41

41:                                               ; preds = %86, %39
  %42 = phi i64 [ 0, %39 ], [ %89, %86 ]
  %43 = getelementptr inbounds %struct.my_cquantizer, ptr %36, i64 0, i32 5, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !33
  %45 = icmp eq i64 %42, 0
  br i1 %45, label %57, label %49

46:                                               ; preds = %49
  %47 = add nuw nsw i64 %50, 1
  %48 = icmp eq i64 %47, %42
  br i1 %48, label %57, label %49, !llvm.loop !55

49:                                               ; preds = %41, %46
  %50 = phi i64 [ %47, %46 ], [ 0, %41 ]
  %51 = getelementptr inbounds %struct.my_cquantizer, ptr %36, i64 0, i32 5, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !33
  %53 = icmp eq i32 %44, %52
  br i1 %53, label %54, label %46

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.my_cquantizer, ptr %36, i64 0, i32 7, i64 %50
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  br label %57

57:                                               ; preds = %46, %54, %41
  %58 = phi ptr [ %56, %54 ], [ null, %41 ], [ null, %46 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = load ptr, ptr %40, align 8, !tbaa !5
  %62 = load ptr, ptr %61, align 8, !tbaa !13
  %63 = tail call ptr %62(ptr noundef %0, i32 noundef 1, i64 noundef 1024) #4
  %64 = add nsw i32 %44, -1
  %65 = sext i32 %64 to i64
  %66 = shl nsw i64 %65, 9
  br label %67

67:                                               ; preds = %83, %60
  %68 = phi i64 [ 0, %60 ], [ %84, %83 ]
  br label %69

69:                                               ; preds = %69, %67
  %70 = phi i64 [ 0, %67 ], [ %81, %69 ]
  %71 = getelementptr inbounds [16 x [16 x i8]], ptr @base_dither_matrix, i64 0, i64 %68, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !27
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 1
  %75 = sub nsw i32 255, %74
  %76 = mul nsw i32 %75, 255
  %77 = sext i32 %76 to i64
  %78 = sdiv i64 %77, %66
  %79 = trunc i64 %78 to i32
  %80 = getelementptr inbounds [16 x i32], ptr %63, i64 %68, i64 %70
  store i32 %79, ptr %80, align 4, !tbaa !33
  %81 = add nuw nsw i64 %70, 1
  %82 = icmp eq i64 %81, 16
  br i1 %82, label %83, label %69, !llvm.loop !56

83:                                               ; preds = %69
  %84 = add nuw nsw i64 %68, 1
  %85 = icmp eq i64 %84, 16
  br i1 %85, label %86, label %67, !llvm.loop !57

86:                                               ; preds = %83, %57
  %87 = phi ptr [ %58, %57 ], [ %63, %83 ]
  %88 = getelementptr inbounds %struct.my_cquantizer, ptr %36, i64 0, i32 7, i64 %42
  store ptr %87, ptr %88, align 8, !tbaa !22
  %89 = add nuw nsw i64 %42, 1
  %90 = load i32, ptr %21, align 8, !tbaa !23
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %41, label %142, !llvm.loop !58

93:                                               ; preds = %2
  %94 = getelementptr inbounds %struct.jpeg_color_quantizer, ptr %4, i64 0, i32 1
  store ptr @quantize_fs_dither, ptr %94, align 8, !tbaa !52
  %95 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 9
  store i32 0, ptr %95, align 8, !tbaa !59
  %96 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 8
  %97 = load ptr, ptr %96, align 8, !tbaa !22
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %121

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %101 = load i32, ptr %100, align 8, !tbaa !47
  %102 = add i32 %101, 2
  %103 = zext i32 %102 to i64
  %104 = shl nuw nsw i64 %103, 1
  %105 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %106 = load i32, ptr %105, align 8, !tbaa !23
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %99
  %109 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  br label %110

110:                                              ; preds = %110, %108
  %111 = phi i64 [ 0, %108 ], [ %117, %110 ]
  %112 = load ptr, ptr %109, align 8, !tbaa !5
  %113 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !48
  %115 = tail call ptr %114(ptr noundef %0, i32 noundef 1, i64 noundef %104) #4
  %116 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 8, i64 %111
  store ptr %115, ptr %116, align 8, !tbaa !22
  %117 = add nuw nsw i64 %111, 1
  %118 = load i32, ptr %105, align 8, !tbaa !23
  %119 = sext i32 %118 to i64
  %120 = icmp slt i64 %117, %119
  br i1 %120, label %110, label %121, !llvm.loop !49

121:                                              ; preds = %110, %99, %93
  %122 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %123 = load i32, ptr %122, align 8, !tbaa !47
  %124 = add i32 %123, 2
  %125 = zext i32 %124 to i64
  %126 = shl nuw nsw i64 %125, 1
  %127 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %128 = load i32, ptr %127, align 8, !tbaa !23
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %121, %130
  %131 = phi i64 [ %134, %130 ], [ 0, %121 ]
  %132 = getelementptr inbounds %struct.my_cquantizer, ptr %4, i64 0, i32 8, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !22
  tail call void @jzero_far(ptr noundef %133, i64 noundef %126) #4
  %134 = add nuw nsw i64 %131, 1
  %135 = load i32, ptr %127, align 8, !tbaa !23
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %134, %136
  br i1 %137, label %130, label %142, !llvm.loop !60

138:                                              ; preds = %2
  %139 = load ptr, ptr %0, align 8, !tbaa !24
  %140 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %139, i64 0, i32 5
  store i32 47, ptr %140, align 8, !tbaa !25
  %141 = load ptr, ptr %139, align 8, !tbaa !28
  tail call void %141(ptr noundef nonnull %0) #4
  br label %142

142:                                              ; preds = %130, %86, %121, %35, %31, %18, %19, %138
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @finish_pass_1_quant(ptr nocapture readnone %0) #1 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @new_color_map_1_quant(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 45, ptr %3, align 8, !tbaa !25
  %4 = load ptr, ptr %2, align 8, !tbaa !28
  tail call void %4(ptr noundef nonnull %0) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @create_colorindex(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 20
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = icmp eq i32 %5, 1
  %7 = getelementptr inbounds %struct.my_cquantizer, ptr %3, i64 0, i32 4
  %8 = zext i1 %6 to i32
  %9 = select i1 %6, i32 766, i32 256
  store i32 %8, ptr %7, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %15 = load i32, ptr %14, align 8, !tbaa !23
  %16 = tail call ptr %13(ptr noundef %0, i32 noundef 1, i32 noundef %9, i32 noundef %15) #4
  %17 = getelementptr inbounds %struct.my_cquantizer, ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !61
  %18 = load i32, ptr %14, align 8, !tbaa !23
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %95

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.my_cquantizer, ptr %3, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !45
  br label %23

23:                                               ; preds = %20, %90
  %24 = phi i64 [ 0, %20 ], [ %91, %90 ]
  %25 = phi i32 [ %22, %20 ], [ %28, %90 ]
  %26 = getelementptr inbounds %struct.my_cquantizer, ptr %3, i64 0, i32 5, i64 %24
  %27 = load i32, ptr %26, align 4, !tbaa !33
  %28 = sdiv i32 %25, %27
  br i1 %6, label %29, label %34

29:                                               ; preds = %23
  %30 = load ptr, ptr %17, align 8, !tbaa !61
  %31 = getelementptr inbounds ptr, ptr %30, i64 %24
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = getelementptr inbounds i8, ptr %32, i64 255
  store ptr %33, ptr %31, align 8, !tbaa !22
  br label %34

34:                                               ; preds = %29, %23
  %35 = load ptr, ptr %17, align 8, !tbaa !61
  %36 = getelementptr inbounds ptr, ptr %35, i64 %24
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = add nsw i32 %27, -1
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, 255
  %41 = shl nsw i32 %38, 1
  %42 = sext i32 %41 to i64
  %43 = sdiv i64 %40, %42
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %34, %69
  %46 = phi i64 [ 0, %34 ], [ %75, %69 ]
  %47 = phi i32 [ 0, %34 ], [ %71, %69 ]
  %48 = phi i32 [ %44, %34 ], [ %70, %69 ]
  %49 = sext i32 %48 to i64
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = zext i32 %47 to i64
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi i64 [ %52, %51 ], [ %55, %53 ]
  %55 = add i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = shl nsw i32 %56, 1
  %58 = or disjoint i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %59, 255
  %61 = add nsw i64 %60, %39
  %62 = sdiv i64 %61, %42
  %63 = shl i64 %62, 32
  %64 = ashr exact i64 %63, 32
  %65 = icmp sgt i64 %46, %64
  br i1 %65, label %53, label %66, !llvm.loop !62

66:                                               ; preds = %53
  %67 = trunc i64 %62 to i32
  %68 = trunc i64 %55 to i32
  br label %69

69:                                               ; preds = %66, %45
  %70 = phi i32 [ %48, %45 ], [ %67, %66 ]
  %71 = phi i32 [ %47, %45 ], [ %68, %66 ]
  %72 = mul nsw i32 %71, %28
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds i8, ptr %37, i64 %46
  store i8 %73, ptr %74, align 1, !tbaa !27
  %75 = add nuw nsw i64 %46, 1
  %76 = icmp eq i64 %75, 256
  br i1 %76, label %77, label %45, !llvm.loop !63

77:                                               ; preds = %69
  br i1 %6, label %78, label %90

78:                                               ; preds = %77
  %79 = getelementptr inbounds i8, ptr %37, i64 255
  %80 = getelementptr i8, ptr %37, i64 255
  br label %81

81:                                               ; preds = %78, %81
  %82 = phi i64 [ 1, %78 ], [ %88, %81 ]
  %83 = load i8, ptr %37, align 1, !tbaa !27
  %84 = sub nsw i64 0, %82
  %85 = getelementptr inbounds i8, ptr %37, i64 %84
  store i8 %83, ptr %85, align 1, !tbaa !27
  %86 = load i8, ptr %79, align 1, !tbaa !27
  %87 = getelementptr i8, ptr %80, i64 %82
  store i8 %86, ptr %87, align 1, !tbaa !27
  %88 = add nuw nsw i64 %82, 1
  %89 = icmp eq i64 %88, 256
  br i1 %89, label %90, label %81, !llvm.loop !64

90:                                               ; preds = %81, %77
  %91 = add nuw nsw i64 %24, 1
  %92 = load i32, ptr %14, align 8, !tbaa !23
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %23, label %95, !llvm.loop !65

95:                                               ; preds = %90, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @color_quantize3(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds ptr, ptr %8, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = getelementptr inbounds ptr, ptr %8, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = icmp sgt i32 %3, 0
  br i1 %16, label %17, label %54

17:                                               ; preds = %4
  %18 = icmp eq i32 %15, 0
  %19 = zext nneg i32 %3 to i64
  br label %20

20:                                               ; preds = %17, %51
  %21 = phi i64 [ 0, %17 ], [ %52, %51 ]
  br i1 %18, label %51, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds ptr, ptr %2, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = getelementptr inbounds ptr, ptr %1, i64 %21
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  br label %27

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %42, %27 ], [ %26, %22 ]
  %29 = phi i32 [ %49, %27 ], [ %15, %22 ]
  %30 = phi ptr [ %48, %27 ], [ %24, %22 ]
  %31 = getelementptr inbounds i8, ptr %28, i64 1
  %32 = load i8, ptr %28, align 1, !tbaa !27
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %9, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !27
  %36 = getelementptr inbounds i8, ptr %28, i64 2
  %37 = load i8, ptr %31, align 1, !tbaa !27
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds i8, ptr %11, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !27
  %41 = add i8 %40, %35
  %42 = getelementptr inbounds i8, ptr %28, i64 3
  %43 = load i8, ptr %36, align 1, !tbaa !27
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds i8, ptr %13, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !27
  %47 = add i8 %41, %46
  %48 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %47, ptr %30, align 1, !tbaa !27
  %49 = add i32 %29, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %27, !llvm.loop !66

51:                                               ; preds = %27, %20
  %52 = add nuw nsw i64 %21, 1
  %53 = icmp eq i64 %52, %19
  br i1 %53, label %54, label %20, !llvm.loop !67

54:                                               ; preds = %51, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @color_quantize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %12 = load i32, ptr %11, align 8, !tbaa !23
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %60

14:                                               ; preds = %4
  %15 = icmp eq i32 %10, 0
  %16 = icmp sgt i32 %12, 0
  %17 = add i32 %12, -1
  %18 = zext i32 %17 to i64
  %19 = add nuw nsw i64 %18, 1
  %20 = zext nneg i32 %3 to i64
  %21 = zext nneg i32 %12 to i64
  br label %22

22:                                               ; preds = %14, %57
  %23 = phi i64 [ 0, %14 ], [ %58, %57 ]
  br i1 %15, label %57, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds ptr, ptr %2, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = getelementptr inbounds ptr, ptr %1, i64 %23
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  br label %29

29:                                               ; preds = %24, %50
  %30 = phi i32 [ %55, %50 ], [ %10, %24 ]
  %31 = phi ptr [ %54, %50 ], [ %26, %24 ]
  %32 = phi ptr [ %51, %50 ], [ %28, %24 ]
  br i1 %16, label %33, label %50

33:                                               ; preds = %29, %33
  %34 = phi i64 [ %46, %33 ], [ 0, %29 ]
  %35 = phi i32 [ %45, %33 ], [ 0, %29 ]
  %36 = phi ptr [ %39, %33 ], [ %32, %29 ]
  %37 = getelementptr inbounds ptr, ptr %8, i64 %34
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = getelementptr inbounds i8, ptr %36, i64 1
  %40 = load i8, ptr %36, align 1, !tbaa !27
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds i8, ptr %38, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !27
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %35, %44
  %46 = add nuw nsw i64 %34, 1
  %47 = icmp eq i64 %46, %21
  br i1 %47, label %48, label %33, !llvm.loop !68

48:                                               ; preds = %33
  %49 = getelementptr i8, ptr %32, i64 %19
  br label %50

50:                                               ; preds = %48, %29
  %51 = phi ptr [ %32, %29 ], [ %49, %48 ]
  %52 = phi i32 [ 0, %29 ], [ %45, %48 ]
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds i8, ptr %31, i64 1
  store i8 %53, ptr %31, align 1, !tbaa !27
  %55 = add i32 %30, -1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %29, !llvm.loop !69

57:                                               ; preds = %50, %22
  %58 = add nuw nsw i64 %23, 1
  %59 = icmp eq i64 %58, %20
  br i1 %59, label %60, label %22, !llvm.loop !70

60:                                               ; preds = %57, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal void @quantize3_ord_dither(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !61
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds ptr, ptr %8, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = getelementptr inbounds ptr, ptr %8, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %15 = load i32, ptr %14, align 8, !tbaa !47
  %16 = icmp sgt i32 %3, 0
  br i1 %16, label %17, label %84

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 6
  %19 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 7
  %20 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 7, i64 1
  %21 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 7, i64 2
  %22 = icmp eq i32 %15, 0
  %23 = zext nneg i32 %3 to i64
  br label %24

24:                                               ; preds = %17, %79
  %25 = phi i64 [ 0, %17 ], [ %82, %79 ]
  %26 = load i32, ptr %18, align 4, !tbaa !53
  %27 = load ptr, ptr %19, align 8, !tbaa !22
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds [16 x i32], ptr %27, i64 %28
  %30 = load ptr, ptr %20, align 8, !tbaa !22
  %31 = getelementptr inbounds [16 x i32], ptr %30, i64 %28
  %32 = load ptr, ptr %21, align 8, !tbaa !22
  %33 = getelementptr inbounds [16 x i32], ptr %32, i64 %28
  br i1 %22, label %79, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds ptr, ptr %2, i64 %25
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = getelementptr inbounds ptr, ptr %1, i64 %25
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  br label %39

39:                                               ; preds = %34, %39
  %40 = phi ptr [ %64, %39 ], [ %38, %34 ]
  %41 = phi i32 [ %77, %39 ], [ %15, %34 ]
  %42 = phi i32 [ %76, %39 ], [ 0, %34 ]
  %43 = phi ptr [ %74, %39 ], [ %36, %34 ]
  %44 = getelementptr inbounds i8, ptr %40, i64 1
  %45 = load i8, ptr %40, align 1, !tbaa !27
  %46 = zext i8 %45 to i32
  %47 = zext nneg i32 %42 to i64
  %48 = getelementptr inbounds i32, ptr %29, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !33
  %50 = add nsw i32 %49, %46
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %9, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !27
  %54 = getelementptr inbounds i8, ptr %40, i64 2
  %55 = load i8, ptr %44, align 1, !tbaa !27
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds i32, ptr %31, i64 %47
  %58 = load i32, ptr %57, align 4, !tbaa !33
  %59 = add nsw i32 %58, %56
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %11, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !27
  %63 = add i8 %62, %53
  %64 = getelementptr inbounds i8, ptr %40, i64 3
  %65 = load i8, ptr %54, align 1, !tbaa !27
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds i32, ptr %33, i64 %47
  %68 = load i32, ptr %67, align 4, !tbaa !33
  %69 = add nsw i32 %68, %66
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, ptr %13, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !27
  %73 = add i8 %63, %72
  %74 = getelementptr inbounds i8, ptr %43, i64 1
  store i8 %73, ptr %43, align 1, !tbaa !27
  %75 = add nuw nsw i32 %42, 1
  %76 = and i32 %75, 15
  %77 = add i32 %41, -1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %39, !llvm.loop !71

79:                                               ; preds = %39, %24
  %80 = add nsw i32 %26, 1
  %81 = and i32 %80, 15
  store i32 %81, ptr %18, align 4, !tbaa !53
  %82 = add nuw nsw i64 %25, 1
  %83 = icmp eq i64 %82, %23
  br i1 %83, label %84, label %24, !llvm.loop !72

84:                                               ; preds = %79, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_ord_dither(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %8 = load i32, ptr %7, align 8, !tbaa !23
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %71

12:                                               ; preds = %4
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 6
  %15 = icmp sgt i32 %8, 0
  %16 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 3
  %17 = icmp eq i32 %10, 0
  %18 = sext i32 %8 to i64
  %19 = zext nneg i32 %3 to i64
  %20 = zext nneg i32 %8 to i64
  br label %21

21:                                               ; preds = %12, %66
  %22 = phi i64 [ 0, %12 ], [ %69, %66 ]
  %23 = getelementptr inbounds ptr, ptr %2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  tail call void @jzero_far(ptr noundef %24, i64 noundef %13) #4
  %25 = load i32, ptr %14, align 4, !tbaa !53
  br i1 %15, label %26, label %66

26:                                               ; preds = %21
  %27 = getelementptr inbounds ptr, ptr %1, i64 %22
  %28 = sext i32 %25 to i64
  br label %29

29:                                               ; preds = %26, %63
  %30 = phi i64 [ 0, %26 ], [ %64, %63 ]
  %31 = load ptr, ptr %16, align 8, !tbaa !61
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 7, i64 %30
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = getelementptr inbounds [16 x i32], ptr %35, i64 %28
  br i1 %17, label %63, label %37

37:                                               ; preds = %29
  %38 = load ptr, ptr %23, align 8, !tbaa !22
  %39 = load ptr, ptr %27, align 8, !tbaa !22
  %40 = getelementptr inbounds i8, ptr %39, i64 %30
  br label %41

41:                                               ; preds = %37, %41
  %42 = phi ptr [ %57, %41 ], [ %40, %37 ]
  %43 = phi i32 [ %61, %41 ], [ %10, %37 ]
  %44 = phi ptr [ %58, %41 ], [ %38, %37 ]
  %45 = phi i32 [ %60, %41 ], [ 0, %37 ]
  %46 = load i8, ptr %42, align 1, !tbaa !27
  %47 = zext i8 %46 to i32
  %48 = zext nneg i32 %45 to i64
  %49 = getelementptr inbounds i32, ptr %36, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !33
  %51 = add nsw i32 %50, %47
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, ptr %33, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !27
  %55 = load i8, ptr %44, align 1, !tbaa !27
  %56 = add i8 %55, %54
  store i8 %56, ptr %44, align 1, !tbaa !27
  %57 = getelementptr inbounds i8, ptr %42, i64 %18
  %58 = getelementptr inbounds i8, ptr %44, i64 1
  %59 = add nuw nsw i32 %45, 1
  %60 = and i32 %59, 15
  %61 = add i32 %43, -1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %41, !llvm.loop !73

63:                                               ; preds = %41, %29
  %64 = add nuw nsw i64 %30, 1
  %65 = icmp eq i64 %64, %20
  br i1 %65, label %66, label %29, !llvm.loop !74

66:                                               ; preds = %63, %21
  %67 = add nsw i32 %25, 1
  %68 = and i32 %67, 15
  store i32 %68, ptr %14, align 4, !tbaa !53
  %69 = add nuw nsw i64 %22, 1
  %70 = icmp eq i64 %69, %19
  br i1 %70, label %71, label %21, !llvm.loop !75

71:                                               ; preds = %66, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quantize_fs_dither(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 83
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 28
  %8 = load i32, ptr %7, align 8, !tbaa !23
  %9 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 26
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 61
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = icmp sgt i32 %3, 0
  br i1 %13, label %14, label %120

14:                                               ; preds = %4
  %15 = zext i32 %10 to i64
  %16 = icmp sgt i32 %8, 0
  %17 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 9
  %18 = add i32 %10, -1
  %19 = mul i32 %18, %8
  %20 = zext i32 %19 to i64
  %21 = zext i32 %18 to i64
  %22 = sub nsw i32 0, %8
  %23 = add i32 %10, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 3
  %26 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 1
  %27 = icmp eq i32 %10, 0
  %28 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 9
  %29 = zext nneg i32 %3 to i64
  %30 = zext nneg i32 %8 to i64
  br label %31

31:                                               ; preds = %14, %114
  %32 = phi i64 [ 0, %14 ], [ %118, %114 ]
  %33 = getelementptr inbounds ptr, ptr %2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  tail call void @jzero_far(ptr noundef %34, i64 noundef %15) #4
  br i1 %16, label %35, label %114

35:                                               ; preds = %31
  %36 = getelementptr inbounds ptr, ptr %1, i64 %32
  br label %37

37:                                               ; preds = %35, %108
  %38 = phi i64 [ 0, %35 ], [ %112, %108 ]
  %39 = load ptr, ptr %36, align 8, !tbaa !22
  %40 = getelementptr inbounds i8, ptr %39, i64 %38
  %41 = load ptr, ptr %33, align 8, !tbaa !22
  %42 = load i32, ptr %17, align 8, !tbaa !59
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = getelementptr inbounds i8, ptr %40, i64 %20
  %46 = getelementptr inbounds i8, ptr %41, i64 %21
  %47 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 8, i64 %38
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = getelementptr inbounds i16, ptr %48, i64 %24
  br label %53

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.my_cquantizer, ptr %6, i64 0, i32 8, i64 %38
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  br label %53

53:                                               ; preds = %50, %44
  %54 = phi ptr [ %46, %44 ], [ %41, %50 ]
  %55 = phi ptr [ %45, %44 ], [ %40, %50 ]
  %56 = phi ptr [ %49, %44 ], [ %52, %50 ]
  %57 = phi i64 [ -1, %44 ], [ 1, %50 ]
  %58 = phi i32 [ %22, %44 ], [ %8, %50 ]
  %59 = load ptr, ptr %25, align 8, !tbaa !61
  %60 = getelementptr inbounds ptr, ptr %59, i64 %38
  %61 = load ptr, ptr %60, align 8, !tbaa !22
  %62 = load ptr, ptr %26, align 8, !tbaa !44
  %63 = getelementptr inbounds ptr, ptr %62, i64 %38
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  br i1 %27, label %108, label %65

65:                                               ; preds = %53
  %66 = sext i32 %58 to i64
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi i32 [ 0, %65 ], [ %103, %67 ]
  %69 = phi i32 [ 0, %65 ], [ %97, %67 ]
  %70 = phi i32 [ %10, %65 ], [ %106, %67 ]
  %71 = phi i32 [ 0, %65 ], [ %102, %67 ]
  %72 = phi ptr [ %56, %65 ], [ %75, %67 ]
  %73 = phi ptr [ %55, %65 ], [ %104, %67 ]
  %74 = phi ptr [ %54, %65 ], [ %105, %67 ]
  %75 = getelementptr inbounds i16, ptr %72, i64 %57
  %76 = load i16, ptr %75, align 2, !tbaa !77
  %77 = sext i16 %76 to i32
  %78 = add nsw i32 %68, 8
  %79 = add nsw i32 %78, %77
  %80 = ashr i32 %79, 4
  %81 = load i8, ptr %73, align 1, !tbaa !27
  %82 = zext i8 %81 to i32
  %83 = add nsw i32 %80, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %12, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !27
  %87 = zext i8 %86 to i32
  %88 = zext i8 %86 to i64
  %89 = getelementptr inbounds i8, ptr %61, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !27
  %91 = load i8, ptr %74, align 1, !tbaa !27
  %92 = add i8 %91, %90
  store i8 %92, ptr %74, align 1, !tbaa !27
  %93 = zext i8 %90 to i64
  %94 = getelementptr inbounds i8, ptr %64, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !27
  %96 = zext i8 %95 to i32
  %97 = sub nsw i32 %87, %96
  %98 = mul nsw i32 %97, 3
  %99 = add nsw i32 %98, %71
  %100 = trunc i32 %99 to i16
  store i16 %100, ptr %72, align 2, !tbaa !77
  %101 = mul nsw i32 %97, 5
  %102 = add nsw i32 %101, %69
  %103 = mul nsw i32 %97, 7
  %104 = getelementptr inbounds i8, ptr %73, i64 %66
  %105 = getelementptr inbounds i8, ptr %74, i64 %57
  %106 = add i32 %70, -1
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %67, !llvm.loop !78

108:                                              ; preds = %67, %53
  %109 = phi ptr [ %56, %53 ], [ %75, %67 ]
  %110 = phi i32 [ 0, %53 ], [ %102, %67 ]
  %111 = trunc i32 %110 to i16
  store i16 %111, ptr %109, align 2, !tbaa !77
  %112 = add nuw nsw i64 %38, 1
  %113 = icmp eq i64 %112, %30
  br i1 %113, label %114, label %37, !llvm.loop !79

114:                                              ; preds = %108, %31
  %115 = load i32, ptr %28, align 8, !tbaa !59
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  store i32 %117, ptr %28, align 8, !tbaa !59
  %118 = add nuw nsw i64 %32, 1
  %119 = icmp eq i64 %118, %29
  br i1 %119, label %120, label %31, !llvm.loop !80

120:                                              ; preds = %114, %4
  ret void
}

declare void @jzero_far(ptr noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_decompress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !11, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !10, i64 128, !10, i64 132, !10, i64 136, !10, i64 140, !10, i64 144, !10, i64 148, !7, i64 152, !10, i64 160, !10, i64 164, !10, i64 168, !10, i64 172, !10, i64 176, !7, i64 184, !8, i64 192, !8, i64 224, !8, i64 256, !10, i64 288, !7, i64 296, !10, i64 304, !10, i64 308, !8, i64 312, !8, i64 328, !8, i64 344, !10, i64 360, !10, i64 364, !8, i64 368, !12, i64 370, !12, i64 372, !10, i64 376, !8, i64 380, !10, i64 384, !10, i64 388, !10, i64 392, !10, i64 396, !10, i64 400, !7, i64 408, !10, i64 416, !8, i64 424, !10, i64 456, !10, i64 460, !10, i64 464, !8, i64 468, !10, i64 508, !10, i64 512, !10, i64 516, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !7, i64 552, !7, i64 560, !7, i64 568, !7, i64 576, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!6, !7, i64 608}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !7, i64 32, !10, i64 40, !7, i64 48, !10, i64 56, !8, i64 60, !10, i64 76, !8, i64 80, !8, i64 112, !10, i64 144}
!19 = !{!"jpeg_color_quantizer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!20 = !{!18, !7, i64 16}
!21 = !{!18, !7, i64 24}
!22 = !{!7, !7, i64 0}
!23 = !{!6, !10, i64 136}
!24 = !{!6, !7, i64 0}
!25 = !{!26, !10, i64 40}
!26 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!27 = !{!8, !8, i64 0}
!28 = !{!26, !7, i64 0}
!29 = !{!6, !10, i64 112}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !31}
!33 = !{!10, !10, i64 0}
!34 = distinct !{!34, !31}
!35 = !{!6, !10, i64 56}
!36 = distinct !{!36, !31}
!37 = distinct !{!37, !31}
!38 = !{!26, !7, i64 8}
!39 = !{!14, !7, i64 16}
!40 = distinct !{!40, !31}
!41 = distinct !{!41, !31}
!42 = distinct !{!42, !31}
!43 = distinct !{!43, !31}
!44 = !{!18, !7, i64 32}
!45 = !{!18, !10, i64 40}
!46 = !{!6, !10, i64 104}
!47 = !{!6, !10, i64 128}
!48 = !{!14, !7, i64 8}
!49 = distinct !{!49, !31}
!50 = !{!6, !7, i64 152}
!51 = !{!6, !10, i64 148}
!52 = !{!18, !7, i64 8}
!53 = !{!18, !10, i64 76}
!54 = !{!18, !10, i64 56}
!55 = distinct !{!55, !31}
!56 = distinct !{!56, !31}
!57 = distinct !{!57, !31}
!58 = distinct !{!58, !31}
!59 = !{!18, !10, i64 144}
!60 = distinct !{!60, !31}
!61 = !{!18, !7, i64 48}
!62 = distinct !{!62, !31}
!63 = distinct !{!63, !31}
!64 = distinct !{!64, !31}
!65 = distinct !{!65, !31}
!66 = distinct !{!66, !31}
!67 = distinct !{!67, !31}
!68 = distinct !{!68, !31}
!69 = distinct !{!69, !31}
!70 = distinct !{!70, !31}
!71 = distinct !{!71, !31}
!72 = distinct !{!72, !31}
!73 = distinct !{!73, !31}
!74 = distinct !{!74, !31}
!75 = distinct !{!75, !31}
!76 = !{!6, !7, i64 408}
!77 = !{!12, !12, i64 0}
!78 = distinct !{!78, !31}
!79 = distinct !{!79, !31}
!80 = distinct !{!80, !31}
