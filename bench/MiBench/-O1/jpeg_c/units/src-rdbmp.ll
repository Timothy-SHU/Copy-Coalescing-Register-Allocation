; ModuleID = 'src/rdbmp.c'
source_filename = "src/rdbmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct._bmp_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, ptr, i32, i32, i32 }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @jinit_read_bmp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 1, i64 noundef 88) #4
  %6 = getelementptr inbounds %struct._bmp_source_struct, ptr %5, i64 0, i32 1
  store ptr %0, ptr %6, align 8, !tbaa !16
  store ptr @start_input_bmp, ptr %5, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %5, i64 0, i32 2
  store ptr @finish_input_bmp, ptr %7, align 8, !tbaa !20
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @start_input_bmp(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [14 x i8], align 1
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #4
  %5 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 14, ptr noundef %6)
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 42, ptr %11, align 8, !tbaa !23
  %12 = load ptr, ptr %10, align 8, !tbaa !25
  tail call void %12(ptr noundef nonnull %0) #4
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i8, ptr %3, align 1, !tbaa !26
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !26
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 8
  %20 = or disjoint i32 %19, %15
  %21 = icmp eq i32 %20, 19778
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = load ptr, ptr %0, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i64 0, i32 5
  store i32 1007, ptr %24, align 8, !tbaa !23
  %25 = load ptr, ptr %23, align 8, !tbaa !25
  tail call void %25(ptr noundef %0) #4
  br label %26

26:                                               ; preds = %22, %13
  %27 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 10
  %28 = load i8, ptr %27, align 1, !tbaa !26
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 11
  %31 = load i8, ptr %30, align 1, !tbaa !26
  %32 = zext i8 %31 to i64
  %33 = shl nuw nsw i64 %32, 8
  %34 = or disjoint i64 %33, %29
  %35 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 12
  %36 = load i8, ptr %35, align 1, !tbaa !26
  %37 = zext i8 %36 to i64
  %38 = shl nuw nsw i64 %37, 16
  %39 = or disjoint i64 %34, %38
  %40 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 13
  %41 = load i8, ptr %40, align 1, !tbaa !26
  %42 = zext i8 %41 to i64
  %43 = shl nuw nsw i64 %42, 24
  %44 = or disjoint i64 %39, %43
  %45 = load ptr, ptr %5, align 8, !tbaa !21
  %46 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4, ptr noundef %45)
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %52, label %48

48:                                               ; preds = %26
  %49 = load ptr, ptr %0, align 8, !tbaa !22
  %50 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %49, i64 0, i32 5
  store i32 42, ptr %50, align 8, !tbaa !23
  %51 = load ptr, ptr %49, align 8, !tbaa !25
  tail call void %51(ptr noundef nonnull %0) #4
  br label %52

52:                                               ; preds = %48, %26
  %53 = load i8, ptr %4, align 16, !tbaa !26
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !26
  %57 = zext i8 %56 to i64
  %58 = shl nuw nsw i64 %57, 8
  %59 = or disjoint i64 %58, %54
  %60 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 2
  %61 = load i8, ptr %60, align 2, !tbaa !26
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 16
  %64 = or disjoint i64 %59, %63
  %65 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 3
  %66 = load i8, ptr %65, align 1, !tbaa !26
  %67 = zext i8 %66 to i64
  %68 = shl nuw nsw i64 %67, 24
  %69 = or disjoint i64 %64, %68
  %70 = add nsw i64 %69, -65
  %71 = icmp ult i64 %70, -53
  br i1 %71, label %72, label %76

72:                                               ; preds = %52
  %73 = load ptr, ptr %0, align 8, !tbaa !22
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 1003, ptr %74, align 8, !tbaa !23
  %75 = load ptr, ptr %73, align 8, !tbaa !25
  tail call void %75(ptr noundef nonnull %0) #4
  br label %76

76:                                               ; preds = %52, %72
  %77 = getelementptr inbounds i8, ptr %4, i64 4
  %78 = add nsw i64 %69, -4
  %79 = load ptr, ptr %5, align 8, !tbaa !21
  %80 = call i64 @fread(ptr noundef nonnull %77, i64 noundef 1, i64 noundef %78, ptr noundef %79)
  %81 = icmp eq i64 %80, %78
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr %0, align 8, !tbaa !22
  %84 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i64 0, i32 5
  store i32 42, ptr %84, align 8, !tbaa !23
  %85 = load ptr, ptr %83, align 8, !tbaa !25
  tail call void %85(ptr noundef nonnull %0) #4
  br label %86

86:                                               ; preds = %82, %76
  %87 = trunc i64 %69 to i32
  switch i32 %87, label %322 [
    i32 12, label %88
    i32 40, label %149
    i32 64, label %149
  ]

88:                                               ; preds = %86
  %89 = load i8, ptr %77, align 4, !tbaa !26
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 5
  %92 = load i8, ptr %91, align 1, !tbaa !26
  %93 = zext i8 %92 to i32
  %94 = shl nuw nsw i32 %93, 8
  %95 = or disjoint i32 %94, %90
  %96 = zext nneg i32 %95 to i64
  %97 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 6
  %98 = load i8, ptr %97, align 2, !tbaa !26
  %99 = zext i8 %98 to i32
  %100 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 7
  %101 = load i8, ptr %100, align 1, !tbaa !26
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 8
  %104 = or disjoint i32 %103, %99
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 8
  %107 = load i8, ptr %106, align 8, !tbaa !26
  %108 = zext i8 %107 to i32
  %109 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 9
  %110 = load i8, ptr %109, align 1, !tbaa !26
  %111 = zext i8 %110 to i32
  %112 = shl nuw nsw i32 %111, 8
  %113 = or disjoint i32 %112, %108
  %114 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 10
  %115 = load i8, ptr %114, align 2, !tbaa !26
  %116 = zext i8 %115 to i32
  %117 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 11
  %118 = load i8, ptr %117, align 1, !tbaa !26
  %119 = zext i8 %118 to i32
  %120 = shl nuw nsw i32 %119, 8
  %121 = or disjoint i32 %120, %116
  %122 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 6
  store i32 %121, ptr %122, align 8, !tbaa !27
  %123 = trunc i32 %121 to i16
  %124 = load ptr, ptr %0, align 8, !tbaa !22
  %125 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %124, i64 0, i32 5
  switch i16 %123, label %140 [
    i16 8, label %126
    i16 24, label %133
  ]

126:                                              ; preds = %88
  store i32 1011, ptr %125, align 8, !tbaa !23
  %127 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %124, i64 0, i32 6
  store i32 %95, ptr %127, align 4, !tbaa !26
  %128 = load ptr, ptr %0, align 8, !tbaa !22
  %129 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %128, i64 0, i32 6, i32 0, i64 1
  store i32 %104, ptr %129, align 4, !tbaa !26
  %130 = load ptr, ptr %0, align 8, !tbaa !22
  %131 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !28
  tail call void %132(ptr noundef nonnull %0, i32 noundef 1) #4
  br label %142

133:                                              ; preds = %88
  store i32 1010, ptr %125, align 8, !tbaa !23
  %134 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %124, i64 0, i32 6
  store i32 %95, ptr %134, align 4, !tbaa !26
  %135 = load ptr, ptr %0, align 8, !tbaa !22
  %136 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %135, i64 0, i32 6, i32 0, i64 1
  store i32 %104, ptr %136, align 4, !tbaa !26
  %137 = load ptr, ptr %0, align 8, !tbaa !22
  %138 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !28
  tail call void %139(ptr noundef nonnull %0, i32 noundef 1) #4
  br label %142

140:                                              ; preds = %88
  store i32 1002, ptr %125, align 8, !tbaa !23
  %141 = load ptr, ptr %124, align 8, !tbaa !25
  tail call void %141(ptr noundef nonnull %0) #4
  br label %142

142:                                              ; preds = %140, %133, %126
  %143 = phi i32 [ 0, %140 ], [ 0, %133 ], [ 3, %126 ]
  %144 = icmp eq i32 %113, 1
  br i1 %144, label %326, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %0, align 8, !tbaa !22
  %147 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %146, i64 0, i32 5
  store i32 1004, ptr %147, align 8, !tbaa !23
  %148 = load ptr, ptr %146, align 8, !tbaa !25
  tail call void %148(ptr noundef nonnull %0) #4
  br label %326

149:                                              ; preds = %86, %86
  %150 = load i8, ptr %77, align 4, !tbaa !26
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 5
  %153 = load i8, ptr %152, align 1, !tbaa !26
  %154 = zext i8 %153 to i64
  %155 = shl nuw nsw i64 %154, 8
  %156 = or disjoint i64 %155, %151
  %157 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 6
  %158 = load i8, ptr %157, align 2, !tbaa !26
  %159 = zext i8 %158 to i64
  %160 = shl nuw nsw i64 %159, 16
  %161 = or disjoint i64 %156, %160
  %162 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 7
  %163 = load i8, ptr %162, align 1, !tbaa !26
  %164 = zext i8 %163 to i64
  %165 = shl nuw nsw i64 %164, 24
  %166 = or disjoint i64 %161, %165
  %167 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 8
  %168 = load i8, ptr %167, align 8, !tbaa !26
  %169 = zext i8 %168 to i64
  %170 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 9
  %171 = load i8, ptr %170, align 1, !tbaa !26
  %172 = zext i8 %171 to i64
  %173 = shl nuw nsw i64 %172, 8
  %174 = or disjoint i64 %173, %169
  %175 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 10
  %176 = load i8, ptr %175, align 2, !tbaa !26
  %177 = zext i8 %176 to i64
  %178 = shl nuw nsw i64 %177, 16
  %179 = or disjoint i64 %174, %178
  %180 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 11
  %181 = load i8, ptr %180, align 1, !tbaa !26
  %182 = zext i8 %181 to i64
  %183 = shl nuw nsw i64 %182, 24
  %184 = or disjoint i64 %179, %183
  %185 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 12
  %186 = load i8, ptr %185, align 4, !tbaa !26
  %187 = zext i8 %186 to i32
  %188 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 13
  %189 = load i8, ptr %188, align 1, !tbaa !26
  %190 = zext i8 %189 to i32
  %191 = shl nuw nsw i32 %190, 8
  %192 = or disjoint i32 %191, %187
  %193 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 14
  %194 = load i8, ptr %193, align 2, !tbaa !26
  %195 = zext i8 %194 to i32
  %196 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 15
  %197 = load i8, ptr %196, align 1, !tbaa !26
  %198 = zext i8 %197 to i32
  %199 = shl nuw nsw i32 %198, 8
  %200 = or disjoint i32 %199, %195
  %201 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 6
  store i32 %200, ptr %201, align 8, !tbaa !27
  %202 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 16
  %203 = load i8, ptr %202, align 16, !tbaa !26
  %204 = zext i8 %203 to i64
  %205 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 17
  %206 = load i8, ptr %205, align 1, !tbaa !26
  %207 = zext i8 %206 to i64
  %208 = shl nuw nsw i64 %207, 8
  %209 = or disjoint i64 %208, %204
  %210 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 18
  %211 = load i8, ptr %210, align 2, !tbaa !26
  %212 = zext i8 %211 to i64
  %213 = shl nuw nsw i64 %212, 16
  %214 = or disjoint i64 %209, %213
  %215 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 19
  %216 = load i8, ptr %215, align 1, !tbaa !26
  %217 = zext i8 %216 to i64
  %218 = shl nuw nsw i64 %217, 24
  %219 = or disjoint i64 %214, %218
  %220 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 24
  %221 = load i8, ptr %220, align 8, !tbaa !26
  %222 = zext i8 %221 to i64
  %223 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 25
  %224 = load i8, ptr %223, align 1, !tbaa !26
  %225 = zext i8 %224 to i64
  %226 = shl nuw nsw i64 %225, 8
  %227 = or disjoint i64 %226, %222
  %228 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 26
  %229 = load i8, ptr %228, align 2, !tbaa !26
  %230 = zext i8 %229 to i64
  %231 = shl nuw nsw i64 %230, 16
  %232 = or disjoint i64 %227, %231
  %233 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 27
  %234 = load i8, ptr %233, align 1, !tbaa !26
  %235 = zext i8 %234 to i64
  %236 = shl nuw nsw i64 %235, 24
  %237 = or disjoint i64 %232, %236
  %238 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 28
  %239 = load i8, ptr %238, align 4, !tbaa !26
  %240 = zext i8 %239 to i64
  %241 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 29
  %242 = load i8, ptr %241, align 1, !tbaa !26
  %243 = zext i8 %242 to i64
  %244 = shl nuw nsw i64 %243, 8
  %245 = or disjoint i64 %244, %240
  %246 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 30
  %247 = load i8, ptr %246, align 2, !tbaa !26
  %248 = zext i8 %247 to i64
  %249 = shl nuw nsw i64 %248, 16
  %250 = or disjoint i64 %245, %249
  %251 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 31
  %252 = load i8, ptr %251, align 1, !tbaa !26
  %253 = zext i8 %252 to i64
  %254 = shl nuw nsw i64 %253, 24
  %255 = or disjoint i64 %250, %254
  %256 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 32
  %257 = load i8, ptr %256, align 16, !tbaa !26
  %258 = zext i8 %257 to i64
  %259 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 33
  %260 = load i8, ptr %259, align 1, !tbaa !26
  %261 = zext i8 %260 to i64
  %262 = shl nuw nsw i64 %261, 8
  %263 = or disjoint i64 %262, %258
  %264 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 34
  %265 = load i8, ptr %264, align 2, !tbaa !26
  %266 = zext i8 %265 to i64
  %267 = shl nuw nsw i64 %266, 16
  %268 = or disjoint i64 %263, %267
  %269 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 35
  %270 = load i8, ptr %269, align 1, !tbaa !26
  %271 = zext i8 %270 to i64
  %272 = shl nuw nsw i64 %271, 24
  %273 = or disjoint i64 %268, %272
  %274 = trunc i32 %200 to i16
  %275 = load ptr, ptr %0, align 8, !tbaa !22
  %276 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %275, i64 0, i32 5
  switch i16 %274, label %295 [
    i16 8, label %277
    i16 24, label %286
  ]

277:                                              ; preds = %149
  store i32 1009, ptr %276, align 8, !tbaa !23
  %278 = trunc i64 %166 to i32
  %279 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %275, i64 0, i32 6
  store i32 %278, ptr %279, align 4, !tbaa !26
  %280 = trunc i64 %184 to i32
  %281 = load ptr, ptr %0, align 8, !tbaa !22
  %282 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %281, i64 0, i32 6, i32 0, i64 1
  store i32 %280, ptr %282, align 4, !tbaa !26
  %283 = load ptr, ptr %0, align 8, !tbaa !22
  %284 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %283, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !28
  tail call void %285(ptr noundef nonnull %0, i32 noundef 1) #4
  br label %297

286:                                              ; preds = %149
  store i32 1008, ptr %276, align 8, !tbaa !23
  %287 = trunc i64 %166 to i32
  %288 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %275, i64 0, i32 6
  store i32 %287, ptr %288, align 4, !tbaa !26
  %289 = trunc i64 %184 to i32
  %290 = load ptr, ptr %0, align 8, !tbaa !22
  %291 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %290, i64 0, i32 6, i32 0, i64 1
  store i32 %289, ptr %291, align 4, !tbaa !26
  %292 = load ptr, ptr %0, align 8, !tbaa !22
  %293 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %292, i64 0, i32 1
  %294 = load ptr, ptr %293, align 8, !tbaa !28
  tail call void %294(ptr noundef nonnull %0, i32 noundef 1) #4
  br label %297

295:                                              ; preds = %149
  store i32 1002, ptr %276, align 8, !tbaa !23
  %296 = load ptr, ptr %275, align 8, !tbaa !25
  tail call void %296(ptr noundef nonnull %0) #4
  br label %297

297:                                              ; preds = %295, %286, %277
  %298 = phi i32 [ 0, %295 ], [ 0, %286 ], [ 4, %277 ]
  %299 = icmp eq i32 %192, 1
  br i1 %299, label %304, label %300

300:                                              ; preds = %297
  %301 = load ptr, ptr %0, align 8, !tbaa !22
  %302 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %301, i64 0, i32 5
  store i32 1004, ptr %302, align 8, !tbaa !23
  %303 = load ptr, ptr %301, align 8, !tbaa !25
  tail call void %303(ptr noundef nonnull %0) #4
  br label %304

304:                                              ; preds = %300, %297
  %305 = icmp eq i64 %219, 0
  br i1 %305, label %310, label %306

306:                                              ; preds = %304
  %307 = load ptr, ptr %0, align 8, !tbaa !22
  %308 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %307, i64 0, i32 5
  store i32 1006, ptr %308, align 8, !tbaa !23
  %309 = load ptr, ptr %307, align 8, !tbaa !25
  tail call void %309(ptr noundef nonnull %0) #4
  br label %310

310:                                              ; preds = %306, %304
  %311 = icmp ne i64 %237, 0
  %312 = icmp ne i64 %255, 0
  %313 = select i1 %311, i1 %312, i1 false
  br i1 %313, label %314, label %326

314:                                              ; preds = %310
  %315 = udiv i64 %237, 100
  %316 = trunc i64 %315 to i16
  %317 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 33
  store i16 %316, ptr %317, align 2, !tbaa !29
  %318 = udiv i64 %255, 100
  %319 = trunc i64 %318 to i16
  %320 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 34
  store i16 %319, ptr %320, align 8, !tbaa !30
  %321 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 32
  store i8 2, ptr %321, align 4, !tbaa !31
  br label %326

322:                                              ; preds = %86
  %323 = load ptr, ptr %0, align 8, !tbaa !22
  %324 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %323, i64 0, i32 5
  store i32 1003, ptr %324, align 8, !tbaa !23
  %325 = load ptr, ptr %323, align 8, !tbaa !25
  tail call void %325(ptr noundef nonnull %0) #4
  br label %326

326:                                              ; preds = %310, %314, %142, %145, %322
  %327 = phi i64 [ 0, %322 ], [ %184, %314 ], [ %184, %310 ], [ %105, %145 ], [ %105, %142 ]
  %328 = phi i64 [ 0, %322 ], [ %273, %314 ], [ %273, %310 ], [ 0, %145 ], [ 0, %142 ]
  %329 = phi i32 [ 0, %322 ], [ %298, %314 ], [ %298, %310 ], [ %143, %145 ], [ %143, %142 ]
  %330 = phi i64 [ 0, %322 ], [ %166, %314 ], [ %166, %310 ], [ %96, %145 ], [ %96, %142 ]
  %331 = add nsw i64 %44, -14
  %332 = sub nsw i64 %331, %69
  %333 = icmp sgt i32 %329, 0
  br i1 %333, label %334, label %470

334:                                              ; preds = %326
  %335 = icmp slt i64 %328, 1
  br i1 %335, label %342, label %336

336:                                              ; preds = %334
  %337 = icmp sgt i64 %328, 256
  br i1 %337, label %338, label %342

338:                                              ; preds = %336
  %339 = load ptr, ptr %0, align 8, !tbaa !22
  %340 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %339, i64 0, i32 5
  store i32 1001, ptr %340, align 8, !tbaa !23
  %341 = load ptr, ptr %339, align 8, !tbaa !25
  tail call void %341(ptr noundef nonnull %0) #4
  br label %342

342:                                              ; preds = %334, %336, %338
  %343 = phi i64 [ %328, %338 ], [ %328, %336 ], [ 256, %334 ]
  %344 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !5
  %346 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %345, i64 0, i32 2
  %347 = load ptr, ptr %346, align 8, !tbaa !32
  %348 = trunc i64 %343 to i32
  %349 = tail call ptr %347(ptr noundef %0, i32 noundef 1, i32 noundef %348, i32 noundef 3) #4
  %350 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 2
  store ptr %349, ptr %350, align 8, !tbaa !33
  switch i32 %329, label %460 [
    i32 3, label %356
    i32 4, label %351
  ]

351:                                              ; preds = %342
  %352 = icmp sgt i32 %348, 0
  br i1 %352, label %353, label %466

353:                                              ; preds = %351
  %354 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 1
  %355 = and i64 %343, 4294967295
  br label %406

356:                                              ; preds = %342
  %357 = icmp sgt i32 %348, 0
  br i1 %357, label %358, label %466

358:                                              ; preds = %356
  %359 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 1
  %360 = and i64 %343, 4294967295
  br label %361

361:                                              ; preds = %399, %358
  %362 = phi i64 [ 0, %358 ], [ %404, %399 ]
  %363 = load ptr, ptr %5, align 8, !tbaa !21
  %364 = tail call i32 @getc(ptr noundef %363)
  %365 = icmp eq i32 %364, -1
  br i1 %365, label %366, label %371

366:                                              ; preds = %361
  %367 = load ptr, ptr %359, align 8, !tbaa !16
  %368 = load ptr, ptr %367, align 8, !tbaa !22
  %369 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %368, i64 0, i32 5
  store i32 42, ptr %369, align 8, !tbaa !23
  %370 = load ptr, ptr %368, align 8, !tbaa !25
  tail call void %370(ptr noundef nonnull %367) #4
  br label %371

371:                                              ; preds = %366, %361
  %372 = trunc i32 %364 to i8
  %373 = load ptr, ptr %350, align 8, !tbaa !33
  %374 = getelementptr inbounds ptr, ptr %373, i64 2
  %375 = load ptr, ptr %374, align 8, !tbaa !34
  %376 = getelementptr inbounds i8, ptr %375, i64 %362
  store i8 %372, ptr %376, align 1, !tbaa !26
  %377 = load ptr, ptr %5, align 8, !tbaa !21
  %378 = tail call i32 @getc(ptr noundef %377)
  %379 = icmp eq i32 %378, -1
  br i1 %379, label %380, label %385

380:                                              ; preds = %371
  %381 = load ptr, ptr %359, align 8, !tbaa !16
  %382 = load ptr, ptr %381, align 8, !tbaa !22
  %383 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %382, i64 0, i32 5
  store i32 42, ptr %383, align 8, !tbaa !23
  %384 = load ptr, ptr %382, align 8, !tbaa !25
  tail call void %384(ptr noundef nonnull %381) #4
  br label %385

385:                                              ; preds = %380, %371
  %386 = trunc i32 %378 to i8
  %387 = load ptr, ptr %350, align 8, !tbaa !33
  %388 = getelementptr inbounds ptr, ptr %387, i64 1
  %389 = load ptr, ptr %388, align 8, !tbaa !34
  %390 = getelementptr inbounds i8, ptr %389, i64 %362
  store i8 %386, ptr %390, align 1, !tbaa !26
  %391 = load ptr, ptr %5, align 8, !tbaa !21
  %392 = tail call i32 @getc(ptr noundef %391)
  %393 = icmp eq i32 %392, -1
  br i1 %393, label %394, label %399

394:                                              ; preds = %385
  %395 = load ptr, ptr %359, align 8, !tbaa !16
  %396 = load ptr, ptr %395, align 8, !tbaa !22
  %397 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %396, i64 0, i32 5
  store i32 42, ptr %397, align 8, !tbaa !23
  %398 = load ptr, ptr %396, align 8, !tbaa !25
  tail call void %398(ptr noundef nonnull %395) #4
  br label %399

399:                                              ; preds = %394, %385
  %400 = trunc i32 %392 to i8
  %401 = load ptr, ptr %350, align 8, !tbaa !33
  %402 = load ptr, ptr %401, align 8, !tbaa !34
  %403 = getelementptr inbounds i8, ptr %402, i64 %362
  store i8 %400, ptr %403, align 1, !tbaa !26
  %404 = add nuw nsw i64 %362, 1
  %405 = icmp eq i64 %404, %360
  br i1 %405, label %466, label %361, !llvm.loop !35

406:                                              ; preds = %457, %353
  %407 = phi i64 [ 0, %353 ], [ %458, %457 ]
  %408 = load ptr, ptr %5, align 8, !tbaa !21
  %409 = tail call i32 @getc(ptr noundef %408)
  %410 = icmp eq i32 %409, -1
  br i1 %410, label %411, label %416

411:                                              ; preds = %406
  %412 = load ptr, ptr %354, align 8, !tbaa !16
  %413 = load ptr, ptr %412, align 8, !tbaa !22
  %414 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %413, i64 0, i32 5
  store i32 42, ptr %414, align 8, !tbaa !23
  %415 = load ptr, ptr %413, align 8, !tbaa !25
  tail call void %415(ptr noundef nonnull %412) #4
  br label %416

416:                                              ; preds = %411, %406
  %417 = trunc i32 %409 to i8
  %418 = load ptr, ptr %350, align 8, !tbaa !33
  %419 = getelementptr inbounds ptr, ptr %418, i64 2
  %420 = load ptr, ptr %419, align 8, !tbaa !34
  %421 = getelementptr inbounds i8, ptr %420, i64 %407
  store i8 %417, ptr %421, align 1, !tbaa !26
  %422 = load ptr, ptr %5, align 8, !tbaa !21
  %423 = tail call i32 @getc(ptr noundef %422)
  %424 = icmp eq i32 %423, -1
  br i1 %424, label %425, label %430

425:                                              ; preds = %416
  %426 = load ptr, ptr %354, align 8, !tbaa !16
  %427 = load ptr, ptr %426, align 8, !tbaa !22
  %428 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %427, i64 0, i32 5
  store i32 42, ptr %428, align 8, !tbaa !23
  %429 = load ptr, ptr %427, align 8, !tbaa !25
  tail call void %429(ptr noundef nonnull %426) #4
  br label %430

430:                                              ; preds = %425, %416
  %431 = trunc i32 %423 to i8
  %432 = load ptr, ptr %350, align 8, !tbaa !33
  %433 = getelementptr inbounds ptr, ptr %432, i64 1
  %434 = load ptr, ptr %433, align 8, !tbaa !34
  %435 = getelementptr inbounds i8, ptr %434, i64 %407
  store i8 %431, ptr %435, align 1, !tbaa !26
  %436 = load ptr, ptr %5, align 8, !tbaa !21
  %437 = tail call i32 @getc(ptr noundef %436)
  %438 = icmp eq i32 %437, -1
  br i1 %438, label %439, label %444

439:                                              ; preds = %430
  %440 = load ptr, ptr %354, align 8, !tbaa !16
  %441 = load ptr, ptr %440, align 8, !tbaa !22
  %442 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %441, i64 0, i32 5
  store i32 42, ptr %442, align 8, !tbaa !23
  %443 = load ptr, ptr %441, align 8, !tbaa !25
  tail call void %443(ptr noundef nonnull %440) #4
  br label %444

444:                                              ; preds = %439, %430
  %445 = trunc i32 %437 to i8
  %446 = load ptr, ptr %350, align 8, !tbaa !33
  %447 = load ptr, ptr %446, align 8, !tbaa !34
  %448 = getelementptr inbounds i8, ptr %447, i64 %407
  store i8 %445, ptr %448, align 1, !tbaa !26
  %449 = load ptr, ptr %5, align 8, !tbaa !21
  %450 = tail call i32 @getc(ptr noundef %449)
  %451 = icmp eq i32 %450, -1
  br i1 %451, label %452, label %457

452:                                              ; preds = %444
  %453 = load ptr, ptr %354, align 8, !tbaa !16
  %454 = load ptr, ptr %453, align 8, !tbaa !22
  %455 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %454, i64 0, i32 5
  store i32 42, ptr %455, align 8, !tbaa !23
  %456 = load ptr, ptr %454, align 8, !tbaa !25
  tail call void %456(ptr noundef nonnull %453) #4
  br label %457

457:                                              ; preds = %452, %444
  %458 = add nuw nsw i64 %407, 1
  %459 = icmp eq i64 %458, %355
  br i1 %459, label %466, label %406, !llvm.loop !37

460:                                              ; preds = %342
  %461 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 1
  %462 = load ptr, ptr %461, align 8, !tbaa !16
  %463 = load ptr, ptr %462, align 8, !tbaa !22
  %464 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %463, i64 0, i32 5
  store i32 1001, ptr %464, align 8, !tbaa !23
  %465 = load ptr, ptr %463, align 8, !tbaa !25
  tail call void %465(ptr noundef nonnull %462) #4
  br label %466

466:                                              ; preds = %457, %399, %351, %356, %460
  %467 = zext nneg i32 %329 to i64
  %468 = mul nuw nsw i64 %343, %467
  %469 = sub nsw i64 %332, %468
  br label %470

470:                                              ; preds = %466, %326
  %471 = phi i64 [ %469, %466 ], [ %332, %326 ]
  %472 = icmp slt i64 %471, 0
  br i1 %472, label %473, label %477

473:                                              ; preds = %470
  %474 = load ptr, ptr %0, align 8, !tbaa !22
  %475 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %474, i64 0, i32 5
  store i32 1003, ptr %475, align 8, !tbaa !23
  %476 = load ptr, ptr %474, align 8, !tbaa !25
  tail call void %476(ptr noundef nonnull %0) #4
  br label %477

477:                                              ; preds = %473, %470
  %478 = icmp sgt i64 %471, 0
  br i1 %478, label %479, label %494

479:                                              ; preds = %477
  %480 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 1
  br label %481

481:                                              ; preds = %479, %492
  %482 = phi i64 [ %471, %479 ], [ %483, %492 ]
  %483 = add nsw i64 %482, -1
  %484 = load ptr, ptr %5, align 8, !tbaa !21
  %485 = tail call i32 @getc(ptr noundef %484)
  %486 = icmp eq i32 %485, -1
  br i1 %486, label %487, label %492

487:                                              ; preds = %481
  %488 = load ptr, ptr %480, align 8, !tbaa !16
  %489 = load ptr, ptr %488, align 8, !tbaa !22
  %490 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %489, i64 0, i32 5
  store i32 42, ptr %490, align 8, !tbaa !23
  %491 = load ptr, ptr %489, align 8, !tbaa !25
  tail call void %491(ptr noundef nonnull %488) #4
  br label %492

492:                                              ; preds = %481, %487
  %493 = icmp sgt i64 %482, 1
  br i1 %493, label %481, label %494, !llvm.loop !38

494:                                              ; preds = %492, %477
  %495 = trunc i64 %330 to i32
  %496 = mul i32 %495, 3
  %497 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 6
  %498 = load i32, ptr %497, align 8, !tbaa !27
  %499 = icmp eq i32 %498, 24
  %500 = select i1 %499, i32 %496, i32 %495
  %501 = sub i32 0, %500
  %502 = and i32 %501, 3
  %503 = add i32 %500, %502
  %504 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 5
  store i32 %503, ptr %504, align 4, !tbaa !39
  %505 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %506 = load ptr, ptr %505, align 8, !tbaa !5
  %507 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %506, i64 0, i32 4
  %508 = load ptr, ptr %507, align 8, !tbaa !40
  %509 = trunc i64 %327 to i32
  %510 = tail call ptr %508(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef %503, i32 noundef %509, i32 noundef 1) #4
  %511 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 3
  store ptr %510, ptr %511, align 8, !tbaa !41
  %512 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @preload_image, ptr %512, align 8, !tbaa !42
  %513 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %514 = load ptr, ptr %513, align 8, !tbaa !43
  %515 = icmp eq ptr %514, null
  br i1 %515, label %520, label %516

516:                                              ; preds = %494
  %517 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %514, i64 0, i32 2
  %518 = load i32, ptr %517, align 4, !tbaa !44
  %519 = add nsw i32 %518, 1
  store i32 %519, ptr %517, align 4, !tbaa !44
  br label %520

520:                                              ; preds = %516, %494
  %521 = load ptr, ptr %505, align 8, !tbaa !5
  %522 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %521, i64 0, i32 2
  %523 = load ptr, ptr %522, align 8, !tbaa !32
  %524 = tail call ptr %523(ptr noundef %0, i32 noundef 1, i32 noundef %496, i32 noundef 1) #4
  %525 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %524, ptr %525, align 8, !tbaa !47
  %526 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %526, align 8, !tbaa !48
  %527 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 2, ptr %527, align 4, !tbaa !49
  %528 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 3, ptr %528, align 8, !tbaa !50
  %529 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %529, align 8, !tbaa !51
  %530 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  store i32 %495, ptr %530, align 8, !tbaa !52
  %531 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  store i32 %509, ptr %531, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @finish_input_bmp(ptr nocapture readnone %0, ptr nocapture readnone %1) #2 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i32 @preload_image(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !21
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !53
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %6, null
  %12 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %6, i64 0, i32 1
  %13 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %6, i64 0, i32 2
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 3
  %16 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 5
  br label %17

17:                                               ; preds = %10, %48
  %18 = phi i64 [ 0, %10 ], [ %49, %48 ]
  %19 = phi i32 [ %8, %10 ], [ %50, %48 ]
  br i1 %11, label %23, label %20

20:                                               ; preds = %17
  store i64 %18, ptr %12, align 8, !tbaa !54
  %21 = zext i32 %19 to i64
  store i64 %21, ptr %13, align 8, !tbaa !55
  %22 = load ptr, ptr %6, align 8, !tbaa !56
  tail call void %22(ptr noundef %0) #4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load ptr, ptr %14, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = load ptr, ptr %15, align 8, !tbaa !41
  %28 = trunc i64 %18 to i32
  %29 = tail call ptr %26(ptr noundef %0, ptr noundef %27, i32 noundef %28, i32 noundef 1, i32 noundef 1) #4
  %30 = load i32, ptr %16, align 4, !tbaa !39
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %23
  %33 = load ptr, ptr %29, align 8, !tbaa !34
  br label %34

34:                                               ; preds = %32, %43
  %35 = phi ptr [ %45, %43 ], [ %33, %32 ]
  %36 = phi i32 [ %46, %43 ], [ %30, %32 ]
  %37 = tail call i32 @getc(ptr noundef %4)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 8, !tbaa !22
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 5
  store i32 42, ptr %41, align 8, !tbaa !23
  %42 = load ptr, ptr %40, align 8, !tbaa !25
  tail call void %42(ptr noundef nonnull %0) #4
  br label %43

43:                                               ; preds = %39, %34
  %44 = trunc i32 %37 to i8
  %45 = getelementptr inbounds i8, ptr %35, i64 1
  store i8 %44, ptr %35, align 1, !tbaa !26
  %46 = add i32 %36, -1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %34, !llvm.loop !58

48:                                               ; preds = %43, %23
  %49 = add nuw nsw i64 %18, 1
  %50 = load i32, ptr %7, align 4, !tbaa !53
  %51 = zext i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %17, label %53, !llvm.loop !59

53:                                               ; preds = %48, %2
  %54 = icmp eq ptr %6, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %6, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !60
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !60
  br label %59

59:                                               ; preds = %55, %53
  %60 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 6
  %61 = load i32, ptr %60, align 8, !tbaa !27
  switch i32 %61, label %66 [
    i32 8, label %62
    i32 24, label %64
  ]

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_8bit_row, ptr %63, align 8, !tbaa !42
  br label %70

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_24bit_row, ptr %65, align 8, !tbaa !42
  br label %70

66:                                               ; preds = %59
  %67 = load ptr, ptr %0, align 8, !tbaa !22
  %68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i64 0, i32 5
  store i32 1002, ptr %68, align 8, !tbaa !23
  %69 = load ptr, ptr %67, align 8, !tbaa !25
  tail call void %69(ptr noundef nonnull %0) #4
  br label %70

70:                                               ; preds = %66, %64, %62
  %71 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %72 = load i32, ptr %71, align 4, !tbaa !53
  %73 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 4
  store i32 %72, ptr %73, align 8, !tbaa !61
  %74 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !42
  %76 = tail call i32 %75(ptr noundef %0, ptr noundef %1) #4
  ret i32 %76
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_8bit_row(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !33
  %5 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !61
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !41
  %14 = tail call ptr %11(ptr noundef %0, ptr noundef %13, i32 noundef %7, i32 noundef 1, i32 noundef 0) #4
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !52
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = load ptr, ptr %14, align 8, !tbaa !34
  %23 = getelementptr inbounds ptr, ptr %4, i64 1
  %24 = getelementptr inbounds ptr, ptr %4, i64 2
  br label %25

25:                                               ; preds = %18, %25
  %26 = phi i32 [ %16, %18 ], [ %44, %25 ]
  %27 = phi ptr [ %21, %18 ], [ %43, %25 ]
  %28 = phi ptr [ %22, %18 ], [ %29, %25 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = load i8, ptr %28, align 1, !tbaa !26
  %31 = load ptr, ptr %4, align 8, !tbaa !34
  %32 = zext i8 %30 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !26
  %35 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %34, ptr %27, align 1, !tbaa !26
  %36 = load ptr, ptr %23, align 8, !tbaa !34
  %37 = getelementptr inbounds i8, ptr %36, i64 %32
  %38 = load i8, ptr %37, align 1, !tbaa !26
  %39 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 %38, ptr %35, align 1, !tbaa !26
  %40 = load ptr, ptr %24, align 8, !tbaa !34
  %41 = getelementptr inbounds i8, ptr %40, i64 %32
  %42 = load i8, ptr %41, align 1, !tbaa !26
  %43 = getelementptr inbounds i8, ptr %27, i64 3
  store i8 %42, ptr %39, align 1, !tbaa !26
  %44 = add i32 %26, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %25, !llvm.loop !62

46:                                               ; preds = %25, %2
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @get_24bit_row(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !61
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.jpeg_memory_mgr, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = tail call ptr %9(ptr noundef %0, ptr noundef %11, i32 noundef %5, i32 noundef 1, i32 noundef 0) #4
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !52
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !47
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = load ptr, ptr %12, align 8, !tbaa !34
  br label %21

21:                                               ; preds = %16, %21
  %22 = phi i32 [ %34, %21 ], [ %14, %16 ]
  %23 = phi ptr [ %33, %21 ], [ %19, %16 ]
  %24 = phi ptr [ %31, %21 ], [ %20, %16 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %24, align 1, !tbaa !26
  %27 = getelementptr inbounds i8, ptr %23, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !26
  %28 = getelementptr inbounds i8, ptr %24, i64 2
  %29 = load i8, ptr %25, align 1, !tbaa !26
  %30 = getelementptr inbounds i8, ptr %23, i64 1
  store i8 %29, ptr %30, align 1, !tbaa !26
  %31 = getelementptr inbounds i8, ptr %24, i64 3
  %32 = load i8, ptr %28, align 1, !tbaa !26
  store i8 %32, ptr %23, align 1, !tbaa !26
  %33 = getelementptr inbounds i8, ptr %23, i64 3
  %34 = add i32 %22, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %21, !llvm.loop !63

36:                                               ; preds = %21, %2
  ret i32 1
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"jpeg_compress_struct", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28, !7, i64 32, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !11, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !8, i64 88, !8, i64 120, !8, i64 152, !8, i64 184, !8, i64 200, !8, i64 216, !10, i64 232, !7, i64 240, !10, i64 248, !10, i64 252, !10, i64 256, !10, i64 260, !10, i64 264, !10, i64 268, !10, i64 272, !10, i64 276, !10, i64 280, !8, i64 284, !12, i64 286, !12, i64 288, !10, i64 292, !10, i64 296, !10, i64 300, !10, i64 304, !10, i64 308, !10, i64 312, !10, i64 316, !8, i64 320, !10, i64 352, !10, i64 356, !10, i64 360, !8, i64 364, !10, i64 404, !10, i64 408, !10, i64 412, !10, i64 416, !7, i64 424, !7, i64 432, !7, i64 440, !7, i64 448, !7, i64 456, !7, i64 464, !7, i64 472, !7, i64 480, !7, i64 488}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"double", !8, i64 0}
!12 = !{!"short", !8, i64 0}
!13 = !{!14, !7, i64 0}
!14 = !{!"jpeg_memory_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !15, i64 88}
!15 = !{!"long", !8, i64 0}
!16 = !{!17, !7, i64 48}
!17 = !{!"_bmp_source_struct", !18, i64 0, !7, i64 48, !7, i64 56, !7, i64 64, !10, i64 72, !10, i64 76, !10, i64 80}
!18 = !{!"cjpeg_source_struct", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40}
!19 = !{!17, !7, i64 0}
!20 = !{!17, !7, i64 16}
!21 = !{!17, !7, i64 24}
!22 = !{!6, !7, i64 0}
!23 = !{!24, !10, i64 40}
!24 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!25 = !{!24, !7, i64 0}
!26 = !{!8, !8, i64 0}
!27 = !{!17, !10, i64 80}
!28 = !{!24, !7, i64 8}
!29 = !{!6, !12, i64 286}
!30 = !{!6, !12, i64 288}
!31 = !{!6, !8, i64 284}
!32 = !{!14, !7, i64 16}
!33 = !{!17, !7, i64 56}
!34 = !{!7, !7, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = distinct !{!37, !36}
!38 = distinct !{!38, !36}
!39 = !{!17, !10, i64 76}
!40 = !{!14, !7, i64 32}
!41 = !{!17, !7, i64 64}
!42 = !{!17, !7, i64 8}
!43 = !{!6, !7, i64 16}
!44 = !{!45, !10, i64 36}
!45 = !{!"cdjpeg_progress_mgr", !46, i64 0, !10, i64 32, !10, i64 36, !10, i64 40}
!46 = !{!"jpeg_progress_mgr", !7, i64 0, !15, i64 8, !15, i64 16, !10, i64 24, !10, i64 28}
!47 = !{!17, !7, i64 32}
!48 = !{!17, !10, i64 40}
!49 = !{!6, !10, i64 52}
!50 = !{!6, !10, i64 48}
!51 = !{!6, !10, i64 64}
!52 = !{!6, !10, i64 40}
!53 = !{!6, !10, i64 44}
!54 = !{!45, !15, i64 8}
!55 = !{!45, !15, i64 16}
!56 = !{!45, !7, i64 0}
!57 = !{!14, !7, i64 56}
!58 = distinct !{!58, !36}
!59 = distinct !{!59, !36}
!60 = !{!45, !10, i64 32}
!61 = !{!17, !10, i64 72}
!62 = distinct !{!62, !36}
!63 = distinct !{!63, !36}
