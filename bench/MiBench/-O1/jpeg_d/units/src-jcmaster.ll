; ModuleID = 'src/jcmaster.c'
source_filename = "src/jcmaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_comp_master = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_component_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.my_comp_master = type { %struct.jpeg_comp_master, i32, i32, i32, i32 }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.jpeg_entropy_encoder = type { ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define dso_local void @jinit_c_master_control(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [10 x i32], align 16
  %4 = alloca [10 x [64 x i32]], align 16
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = tail call ptr %7(ptr noundef %0, i32 noundef 1, i64 noundef 48) #5
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  store ptr %8, ptr %9, align 8, !tbaa !16
  store ptr @prepare_for_pass, ptr %8, align 8, !tbaa !17
  %10 = getelementptr inbounds %struct.jpeg_comp_master, ptr %8, i64 0, i32 1
  store ptr @pass_startup, ptr %10, align 8, !tbaa !20
  %11 = getelementptr inbounds %struct.jpeg_comp_master, ptr %8, i64 0, i32 2
  store ptr @finish_pass_master, ptr %11, align 8, !tbaa !21
  %12 = getelementptr inbounds %struct.jpeg_comp_master, ptr %8, i64 0, i32 4
  store i32 0, ptr %12, align 4, !tbaa !22
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %14 = load i32, ptr %13, align 4, !tbaa !23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !24
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %22 = load i32, ptr %21, align 4, !tbaa !25
  %23 = icmp slt i32 %22, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !26
  %27 = icmp slt i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %20, %16, %2
  %29 = load ptr, ptr %0, align 8, !tbaa !27
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %29, i64 0, i32 5
  store i32 31, ptr %30, align 8, !tbaa !28
  %31 = load ptr, ptr %29, align 8, !tbaa !30
  tail call void %31(ptr noundef nonnull %0) #5
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, ptr %13, align 4, !tbaa !23
  %34 = icmp ugt i32 %33, 65500
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !24
  %38 = icmp ugt i32 %37, 65500
  br i1 %38, label %39, label %45

39:                                               ; preds = %35, %32
  %40 = load ptr, ptr %0, align 8, !tbaa !27
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 5
  store i32 40, ptr %41, align 8, !tbaa !28
  %42 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 6
  store i32 65500, ptr %42, align 4, !tbaa !31
  %43 = load ptr, ptr %0, align 8, !tbaa !27
  %44 = load ptr, ptr %43, align 8, !tbaa !30
  tail call void %44(ptr noundef nonnull %0) #5
  br label %45

45:                                               ; preds = %39, %35
  %46 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !24
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %50 = load i32, ptr %49, align 8, !tbaa !26
  %51 = sext i32 %50 to i64
  %52 = mul nsw i64 %51, %48
  %53 = icmp ult i64 %52, 4294967296
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = load ptr, ptr %0, align 8, !tbaa !27
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %55, i64 0, i32 5
  store i32 69, ptr %56, align 8, !tbaa !28
  %57 = load ptr, ptr %55, align 8, !tbaa !30
  tail call void %57(ptr noundef nonnull %0) #5
  br label %58

58:                                               ; preds = %54, %45
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  %60 = load i32, ptr %59, align 8, !tbaa !32
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %68, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %0, align 8, !tbaa !27
  %64 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i64 0, i32 5
  store i32 13, ptr %64, align 8, !tbaa !28
  %65 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %63, i64 0, i32 6
  store i32 %60, ptr %65, align 4, !tbaa !31
  %66 = load ptr, ptr %0, align 8, !tbaa !27
  %67 = load ptr, ptr %66, align 8, !tbaa !30
  tail call void %67(ptr noundef nonnull %0) #5
  br label %68

68:                                               ; preds = %62, %58
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %70 = load i32, ptr %69, align 4, !tbaa !25
  %71 = icmp sgt i32 %70, 10
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load ptr, ptr %0, align 8, !tbaa !27
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 24, ptr %74, align 8, !tbaa !28
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 6
  store i32 %70, ptr %75, align 4, !tbaa !31
  %76 = load ptr, ptr %0, align 8, !tbaa !27
  %77 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %76, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %77, align 4, !tbaa !31
  %78 = load ptr, ptr %0, align 8, !tbaa !27
  %79 = load ptr, ptr %78, align 8, !tbaa !30
  tail call void %79(ptr noundef nonnull %0) #5
  br label %80

80:                                               ; preds = %72, %68
  %81 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  store i32 1, ptr %81, align 8, !tbaa !33
  %82 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  store i32 1, ptr %82, align 4, !tbaa !34
  %83 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %84 = load i32, ptr %69, align 4, !tbaa !25
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %80
  %87 = load ptr, ptr %83, align 8, !tbaa !35
  br label %88

88:                                               ; preds = %104, %86
  %89 = phi i32 [ %112, %104 ], [ 0, %86 ]
  %90 = phi ptr [ %113, %104 ], [ %87, %86 ]
  %91 = getelementptr inbounds %struct.jpeg_component_info, ptr %90, i64 0, i32 2
  %92 = load i32, ptr %91, align 8, !tbaa !36
  %93 = add i32 %92, -5
  %94 = icmp ult i32 %93, -4
  br i1 %94, label %100, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.jpeg_component_info, ptr %90, i64 0, i32 3
  %97 = load i32, ptr %96, align 4, !tbaa !38
  %98 = add i32 %97, -5
  %99 = icmp ult i32 %98, -4
  br i1 %99, label %100, label %104

100:                                              ; preds = %95, %88
  %101 = load ptr, ptr %0, align 8, !tbaa !27
  %102 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %101, i64 0, i32 5
  store i32 16, ptr %102, align 8, !tbaa !28
  %103 = load ptr, ptr %101, align 8, !tbaa !30
  tail call void %103(ptr noundef nonnull %0) #5
  br label %104

104:                                              ; preds = %100, %95
  %105 = load i32, ptr %81, align 8, !tbaa !33
  %106 = load i32, ptr %91, align 8, !tbaa !36
  %107 = tail call i32 @llvm.smax.i32(i32 %105, i32 %106)
  store i32 %107, ptr %81, align 8, !tbaa !33
  %108 = load i32, ptr %82, align 4, !tbaa !34
  %109 = getelementptr inbounds %struct.jpeg_component_info, ptr %90, i64 0, i32 3
  %110 = load i32, ptr %109, align 4, !tbaa !38
  %111 = tail call i32 @llvm.smax.i32(i32 %108, i32 %110)
  store i32 %111, ptr %82, align 4, !tbaa !34
  %112 = add nuw nsw i32 %89, 1
  %113 = getelementptr inbounds %struct.jpeg_component_info, ptr %90, i64 1
  %114 = load i32, ptr %69, align 4, !tbaa !25
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %88, label %116, !llvm.loop !39

116:                                              ; preds = %104, %80
  %117 = load i32, ptr %69, align 4, !tbaa !25
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %175

119:                                              ; preds = %116
  %120 = load ptr, ptr %83, align 8, !tbaa !35
  br label %121

121:                                              ; preds = %121, %119
  %122 = phi i32 [ %171, %121 ], [ 0, %119 ]
  %123 = phi ptr [ %172, %121 ], [ %120, %119 ]
  %124 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, i64 0, i32 1
  store i32 %122, ptr %124, align 4, !tbaa !41
  %125 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, i64 0, i32 9
  store i32 8, ptr %125, align 4, !tbaa !42
  %126 = load i32, ptr %46, align 8, !tbaa !24
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, i64 0, i32 2
  %129 = load i32, ptr %128, align 8, !tbaa !36
  %130 = sext i32 %129 to i64
  %131 = mul nsw i64 %130, %127
  %132 = load i32, ptr %81, align 8, !tbaa !33
  %133 = shl nsw i32 %132, 3
  %134 = sext i32 %133 to i64
  %135 = tail call i64 @jdiv_round_up(i64 noundef %131, i64 noundef %134) #5
  %136 = trunc i64 %135 to i32
  %137 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, i64 0, i32 7
  store i32 %136, ptr %137, align 4, !tbaa !43
  %138 = load i32, ptr %13, align 4, !tbaa !23
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, i64 0, i32 3
  %141 = load i32, ptr %140, align 4, !tbaa !38
  %142 = sext i32 %141 to i64
  %143 = mul nsw i64 %142, %139
  %144 = load i32, ptr %82, align 4, !tbaa !34
  %145 = shl nsw i32 %144, 3
  %146 = sext i32 %145 to i64
  %147 = tail call i64 @jdiv_round_up(i64 noundef %143, i64 noundef %146) #5
  %148 = trunc i64 %147 to i32
  %149 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, i64 0, i32 8
  store i32 %148, ptr %149, align 8, !tbaa !44
  %150 = load i32, ptr %46, align 8, !tbaa !24
  %151 = zext i32 %150 to i64
  %152 = load i32, ptr %128, align 8, !tbaa !36
  %153 = sext i32 %152 to i64
  %154 = mul nsw i64 %153, %151
  %155 = load i32, ptr %81, align 8, !tbaa !33
  %156 = sext i32 %155 to i64
  %157 = tail call i64 @jdiv_round_up(i64 noundef %154, i64 noundef %156) #5
  %158 = trunc i64 %157 to i32
  %159 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, i64 0, i32 10
  store i32 %158, ptr %159, align 8, !tbaa !45
  %160 = load i32, ptr %13, align 4, !tbaa !23
  %161 = zext i32 %160 to i64
  %162 = load i32, ptr %140, align 4, !tbaa !38
  %163 = sext i32 %162 to i64
  %164 = mul nsw i64 %163, %161
  %165 = load i32, ptr %82, align 4, !tbaa !34
  %166 = sext i32 %165 to i64
  %167 = tail call i64 @jdiv_round_up(i64 noundef %164, i64 noundef %166) #5
  %168 = trunc i64 %167 to i32
  %169 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, i64 0, i32 11
  store i32 %168, ptr %169, align 4, !tbaa !46
  %170 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, i64 0, i32 12
  store i32 1, ptr %170, align 8, !tbaa !47
  %171 = add nuw nsw i32 %122, 1
  %172 = getelementptr inbounds %struct.jpeg_component_info, ptr %123, i64 1
  %173 = load i32, ptr %69, align 4, !tbaa !25
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %121, label %175, !llvm.loop !48

175:                                              ; preds = %121, %116
  %176 = load i32, ptr %13, align 4, !tbaa !23
  %177 = zext i32 %176 to i64
  %178 = load i32, ptr %82, align 4, !tbaa !34
  %179 = shl nsw i32 %178, 3
  %180 = sext i32 %179 to i64
  %181 = tail call i64 @jdiv_round_up(i64 noundef %177, i64 noundef %180) #5
  %182 = trunc i64 %181 to i32
  %183 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  store i32 %182, ptr %183, align 8, !tbaa !49
  %184 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 22
  %185 = load ptr, ptr %184, align 8, !tbaa !50
  %186 = icmp eq ptr %185, null
  %187 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  br i1 %186, label %439, label %188

188:                                              ; preds = %175
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 2560, ptr nonnull %4) #5
  %189 = load i32, ptr %187, align 8, !tbaa !51
  %190 = icmp slt i32 %189, 1
  br i1 %190, label %191, label %197

191:                                              ; preds = %188
  %192 = load ptr, ptr %0, align 8, !tbaa !27
  %193 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %192, i64 0, i32 5
  store i32 17, ptr %193, align 8, !tbaa !28
  %194 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %192, i64 0, i32 6
  store i32 0, ptr %194, align 4, !tbaa !31
  %195 = load ptr, ptr %0, align 8, !tbaa !27
  %196 = load ptr, ptr %195, align 8, !tbaa !30
  tail call void %196(ptr noundef nonnull %0) #5
  br label %197

197:                                              ; preds = %191, %188
  %198 = load ptr, ptr %184, align 8, !tbaa !50
  %199 = getelementptr inbounds %struct.jpeg_scan_info, ptr %198, i64 0, i32 2
  %200 = load i32, ptr %199, align 4, !tbaa !52
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.jpeg_scan_info, ptr %198, i64 0, i32 3
  %204 = load i32, ptr %203, align 4, !tbaa !54
  %205 = icmp eq i32 %204, 63
  br i1 %205, label %213, label %206

206:                                              ; preds = %202, %197
  %207 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  store i32 1, ptr %207, align 4, !tbaa !55
  %208 = load i32, ptr %69, align 4, !tbaa !25
  %209 = icmp sgt i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %206
  %211 = zext nneg i32 %208 to i64
  %212 = shl nuw nsw i64 %211, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %4, i8 -1, i64 %212, i1 false), !tbaa !56
  br label %220

213:                                              ; preds = %202
  %214 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  store i32 0, ptr %214, align 4, !tbaa !55
  %215 = load i32, ptr %69, align 4, !tbaa !25
  %216 = icmp sgt i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = zext nneg i32 %215 to i64
  %219 = shl nuw nsw i64 %218, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %3, i8 0, i64 %219, i1 false), !tbaa !56
  br label %220

220:                                              ; preds = %210, %217, %213, %206
  %221 = load i32, ptr %187, align 8, !tbaa !51
  %222 = icmp slt i32 %221, 1
  br i1 %222, label %402, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  br label %225

225:                                              ; preds = %397, %223
  %226 = phi ptr [ %198, %223 ], [ %398, %397 ]
  %227 = phi i32 [ 1, %223 ], [ %399, %397 ]
  %228 = load i32, ptr %226, align 4, !tbaa !57
  %229 = add i32 %228, -5
  %230 = icmp ult i32 %229, -4
  br i1 %230, label %231, label %239

231:                                              ; preds = %225
  %232 = load ptr, ptr %0, align 8, !tbaa !27
  %233 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %232, i64 0, i32 5
  store i32 24, ptr %233, align 8, !tbaa !28
  %234 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %232, i64 0, i32 6
  store i32 %228, ptr %234, align 4, !tbaa !31
  %235 = load ptr, ptr %0, align 8, !tbaa !27
  %236 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %235, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %236, align 4, !tbaa !31
  %237 = load ptr, ptr %0, align 8, !tbaa !27
  %238 = load ptr, ptr %237, align 8, !tbaa !30
  tail call void %238(ptr noundef nonnull %0) #5
  br label %239

239:                                              ; preds = %231, %225
  %240 = icmp sgt i32 %228, 0
  br i1 %240, label %241, label %273

241:                                              ; preds = %239
  %242 = zext nneg i32 %228 to i64
  br label %243

243:                                              ; preds = %270, %241
  %244 = phi i64 [ 0, %241 ], [ %271, %270 ]
  %245 = getelementptr inbounds %struct.jpeg_scan_info, ptr %226, i64 0, i32 1, i64 %244
  %246 = load i32, ptr %245, align 4, !tbaa !56
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %243
  %249 = load i32, ptr %69, align 4, !tbaa !25
  %250 = icmp slt i32 %246, %249
  br i1 %250, label %257, label %251

251:                                              ; preds = %248, %243
  %252 = load ptr, ptr %0, align 8, !tbaa !27
  %253 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %252, i64 0, i32 5
  store i32 17, ptr %253, align 8, !tbaa !28
  %254 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %252, i64 0, i32 6
  store i32 %227, ptr %254, align 4, !tbaa !31
  %255 = load ptr, ptr %0, align 8, !tbaa !27
  %256 = load ptr, ptr %255, align 8, !tbaa !30
  tail call void %256(ptr noundef nonnull %0) #5
  br label %257

257:                                              ; preds = %251, %248
  %258 = icmp eq i64 %244, 0
  br i1 %258, label %270, label %259

259:                                              ; preds = %257
  %260 = add nsw i64 %244, -1
  %261 = getelementptr inbounds %struct.jpeg_scan_info, ptr %226, i64 0, i32 1, i64 %260
  %262 = load i32, ptr %261, align 4, !tbaa !56
  %263 = icmp sgt i32 %246, %262
  br i1 %263, label %270, label %264

264:                                              ; preds = %259
  %265 = load ptr, ptr %0, align 8, !tbaa !27
  %266 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %265, i64 0, i32 5
  store i32 17, ptr %266, align 8, !tbaa !28
  %267 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %265, i64 0, i32 6
  store i32 %227, ptr %267, align 4, !tbaa !31
  %268 = load ptr, ptr %0, align 8, !tbaa !27
  %269 = load ptr, ptr %268, align 8, !tbaa !30
  tail call void %269(ptr noundef nonnull %0) #5
  br label %270

270:                                              ; preds = %264, %259, %257
  %271 = add nuw nsw i64 %244, 1
  %272 = icmp eq i64 %271, %242
  br i1 %272, label %273, label %243, !llvm.loop !58

273:                                              ; preds = %270, %239
  %274 = getelementptr inbounds %struct.jpeg_scan_info, ptr %226, i64 0, i32 2
  %275 = load i32, ptr %274, align 4, !tbaa !52
  %276 = getelementptr inbounds %struct.jpeg_scan_info, ptr %226, i64 0, i32 3
  %277 = load i32, ptr %276, align 4, !tbaa !54
  %278 = getelementptr inbounds %struct.jpeg_scan_info, ptr %226, i64 0, i32 4
  %279 = load i32, ptr %278, align 4, !tbaa !59
  %280 = getelementptr inbounds %struct.jpeg_scan_info, ptr %226, i64 0, i32 5
  %281 = load i32, ptr %280, align 4, !tbaa !60
  %282 = load i32, ptr %224, align 4, !tbaa !55
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %363, label %284

284:                                              ; preds = %273
  %285 = icmp ugt i32 %275, 63
  br i1 %285, label %298, label %286

286:                                              ; preds = %284
  %287 = icmp slt i32 %277, %275
  %288 = icmp sgt i32 %277, 63
  %289 = or i1 %287, %288
  %290 = icmp slt i32 %279, 0
  %291 = select i1 %289, i1 true, i1 %290
  %292 = icmp sgt i32 %279, 13
  %293 = select i1 %291, i1 true, i1 %292
  %294 = icmp slt i32 %281, 0
  %295 = select i1 %293, i1 true, i1 %294
  %296 = icmp sgt i32 %281, 13
  %297 = select i1 %295, i1 true, i1 %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %286, %284
  %299 = load ptr, ptr %0, align 8, !tbaa !27
  %300 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %299, i64 0, i32 5
  store i32 15, ptr %300, align 8, !tbaa !28
  %301 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %299, i64 0, i32 6
  store i32 %227, ptr %301, align 4, !tbaa !31
  %302 = load ptr, ptr %0, align 8, !tbaa !27
  %303 = load ptr, ptr %302, align 8, !tbaa !30
  tail call void %303(ptr noundef nonnull %0) #5
  br label %304

304:                                              ; preds = %298, %286
  %305 = icmp eq i32 %275, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %304
  %307 = icmp eq i32 %277, 0
  br i1 %307, label %316, label %310

308:                                              ; preds = %304
  %309 = icmp eq i32 %228, 1
  br i1 %309, label %316, label %310

310:                                              ; preds = %308, %306
  %311 = load ptr, ptr %0, align 8, !tbaa !27
  %312 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %311, i64 0, i32 5
  store i32 15, ptr %312, align 8, !tbaa !28
  %313 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %311, i64 0, i32 6
  store i32 %227, ptr %313, align 4, !tbaa !31
  %314 = load ptr, ptr %0, align 8, !tbaa !27
  %315 = load ptr, ptr %314, align 8, !tbaa !30
  tail call void %315(ptr noundef nonnull %0) #5
  br label %316

316:                                              ; preds = %310, %308, %306
  br i1 %240, label %317, label %397

317:                                              ; preds = %316
  %318 = icmp sgt i32 %275, %277
  %319 = add nsw i32 %279, -1
  %320 = icmp eq i32 %281, %319
  %321 = icmp eq i32 %279, 0
  %322 = sext i32 %275 to i64
  %323 = add i32 %277, 1
  %324 = zext nneg i32 %228 to i64
  br label %325

325:                                              ; preds = %360, %317
  %326 = phi i64 [ 0, %317 ], [ %361, %360 ]
  %327 = getelementptr inbounds %struct.jpeg_scan_info, ptr %226, i64 0, i32 1, i64 %326
  %328 = load i32, ptr %327, align 4, !tbaa !56
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [10 x [64 x i32]], ptr %4, i64 0, i64 %329
  br i1 %305, label %340, label %331

331:                                              ; preds = %325
  %332 = load i32, ptr %330, align 16, !tbaa !56
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %331
  %335 = load ptr, ptr %0, align 8, !tbaa !27
  %336 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %335, i64 0, i32 5
  store i32 15, ptr %336, align 8, !tbaa !28
  %337 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %335, i64 0, i32 6
  store i32 %227, ptr %337, align 4, !tbaa !31
  %338 = load ptr, ptr %0, align 8, !tbaa !27
  %339 = load ptr, ptr %338, align 8, !tbaa !30
  tail call void %339(ptr noundef nonnull %0) #5
  br label %340

340:                                              ; preds = %334, %331, %325
  br i1 %318, label %360, label %341

341:                                              ; preds = %340, %356
  %342 = phi i64 [ %357, %356 ], [ %322, %340 ]
  %343 = getelementptr inbounds i32, ptr %330, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !56
  %345 = icmp slt i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %341
  br i1 %321, label %356, label %350

347:                                              ; preds = %341
  %348 = icmp eq i32 %279, %344
  %349 = select i1 %348, i1 %320, i1 false
  br i1 %349, label %356, label %350

350:                                              ; preds = %347, %346
  %351 = load ptr, ptr %0, align 8, !tbaa !27
  %352 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %351, i64 0, i32 5
  store i32 15, ptr %352, align 8, !tbaa !28
  %353 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %351, i64 0, i32 6
  store i32 %227, ptr %353, align 4, !tbaa !31
  %354 = load ptr, ptr %0, align 8, !tbaa !27
  %355 = load ptr, ptr %354, align 8, !tbaa !30
  tail call void %355(ptr noundef nonnull %0) #5
  br label %356

356:                                              ; preds = %350, %347, %346
  store i32 %281, ptr %343, align 4, !tbaa !56
  %357 = add nsw i64 %342, 1
  %358 = trunc i64 %357 to i32
  %359 = icmp eq i32 %323, %358
  br i1 %359, label %360, label %341, !llvm.loop !61

360:                                              ; preds = %356, %340
  %361 = add nuw nsw i64 %326, 1
  %362 = icmp eq i64 %361, %324
  br i1 %362, label %397, label %325, !llvm.loop !62

363:                                              ; preds = %273
  %364 = icmp ne i32 %275, 0
  %365 = icmp ne i32 %277, 63
  %366 = select i1 %364, i1 true, i1 %365
  %367 = icmp ne i32 %279, 0
  %368 = select i1 %366, i1 true, i1 %367
  %369 = icmp ne i32 %281, 0
  %370 = select i1 %368, i1 true, i1 %369
  br i1 %370, label %371, label %377

371:                                              ; preds = %363
  %372 = load ptr, ptr %0, align 8, !tbaa !27
  %373 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %372, i64 0, i32 5
  store i32 15, ptr %373, align 8, !tbaa !28
  %374 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %372, i64 0, i32 6
  store i32 %227, ptr %374, align 4, !tbaa !31
  %375 = load ptr, ptr %0, align 8, !tbaa !27
  %376 = load ptr, ptr %375, align 8, !tbaa !30
  tail call void %376(ptr noundef nonnull %0) #5
  br label %377

377:                                              ; preds = %371, %363
  br i1 %240, label %378, label %397

378:                                              ; preds = %377
  %379 = zext nneg i32 %228 to i64
  br label %380

380:                                              ; preds = %394, %378
  %381 = phi i64 [ 0, %378 ], [ %395, %394 ]
  %382 = getelementptr inbounds %struct.jpeg_scan_info, ptr %226, i64 0, i32 1, i64 %381
  %383 = load i32, ptr %382, align 4, !tbaa !56
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [10 x i32], ptr %3, i64 0, i64 %384
  %386 = load i32, ptr %385, align 4, !tbaa !56
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %394, label %388

388:                                              ; preds = %380
  %389 = load ptr, ptr %0, align 8, !tbaa !27
  %390 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %389, i64 0, i32 5
  store i32 17, ptr %390, align 8, !tbaa !28
  %391 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %389, i64 0, i32 6
  store i32 %227, ptr %391, align 4, !tbaa !31
  %392 = load ptr, ptr %0, align 8, !tbaa !27
  %393 = load ptr, ptr %392, align 8, !tbaa !30
  tail call void %393(ptr noundef nonnull %0) #5
  br label %394

394:                                              ; preds = %388, %380
  store i32 1, ptr %385, align 4, !tbaa !56
  %395 = add nuw nsw i64 %381, 1
  %396 = icmp eq i64 %395, %379
  br i1 %396, label %397, label %380, !llvm.loop !63

397:                                              ; preds = %360, %394, %377, %316
  %398 = getelementptr inbounds %struct.jpeg_scan_info, ptr %226, i64 1
  %399 = add nuw nsw i32 %227, 1
  %400 = load i32, ptr %187, align 8, !tbaa !51
  %401 = icmp slt i32 %227, %400
  br i1 %401, label %225, label %402, !llvm.loop !64

402:                                              ; preds = %397, %220
  %403 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  %404 = load i32, ptr %403, align 4, !tbaa !55
  %405 = icmp eq i32 %404, 0
  %406 = load i32, ptr %69, align 4, !tbaa !25
  %407 = icmp sgt i32 %406, 0
  br i1 %405, label %409, label %408

408:                                              ; preds = %402
  br i1 %407, label %410, label %438

409:                                              ; preds = %402
  br i1 %407, label %424, label %438

410:                                              ; preds = %408, %419
  %411 = phi i64 [ %420, %419 ], [ 0, %408 ]
  %412 = getelementptr inbounds [10 x [64 x i32]], ptr %4, i64 0, i64 %411
  %413 = load i32, ptr %412, align 16, !tbaa !56
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %415, label %419

415:                                              ; preds = %410
  %416 = load ptr, ptr %0, align 8, !tbaa !27
  %417 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %416, i64 0, i32 5
  store i32 44, ptr %417, align 8, !tbaa !28
  %418 = load ptr, ptr %416, align 8, !tbaa !30
  tail call void %418(ptr noundef nonnull %0) #5
  br label %419

419:                                              ; preds = %415, %410
  %420 = add nuw nsw i64 %411, 1
  %421 = load i32, ptr %69, align 4, !tbaa !25
  %422 = sext i32 %421 to i64
  %423 = icmp slt i64 %420, %422
  br i1 %423, label %410, label %438, !llvm.loop !65

424:                                              ; preds = %409, %433
  %425 = phi i64 [ %434, %433 ], [ 0, %409 ]
  %426 = getelementptr inbounds [10 x i32], ptr %3, i64 0, i64 %425
  %427 = load i32, ptr %426, align 4, !tbaa !56
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %424
  %430 = load ptr, ptr %0, align 8, !tbaa !27
  %431 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %430, i64 0, i32 5
  store i32 44, ptr %431, align 8, !tbaa !28
  %432 = load ptr, ptr %430, align 8, !tbaa !30
  tail call void %432(ptr noundef nonnull %0) #5
  br label %433

433:                                              ; preds = %429, %424
  %434 = add nuw nsw i64 %425, 1
  %435 = load i32, ptr %69, align 4, !tbaa !25
  %436 = sext i32 %435 to i64
  %437 = icmp slt i64 %434, %436
  br i1 %437, label %424, label %438, !llvm.loop !66

438:                                              ; preds = %419, %433, %408, %409
  call void @llvm.lifetime.end.p0(i64 2560, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #5
  br label %441

439:                                              ; preds = %175
  %440 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  store i32 0, ptr %440, align 4, !tbaa !55
  store i32 1, ptr %187, align 8, !tbaa !51
  br label %441

441:                                              ; preds = %439, %438
  %442 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  %443 = load i32, ptr %442, align 4, !tbaa !55
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %447, label %445

445:                                              ; preds = %441
  %446 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  store i32 1, ptr %446, align 8, !tbaa !67
  br label %447

447:                                              ; preds = %445, %441
  %448 = icmp eq i32 %1, 0
  br i1 %448, label %456, label %449

449:                                              ; preds = %447
  %450 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %451 = load i32, ptr %450, align 8, !tbaa !67
  %452 = icmp eq i32 %451, 0
  %453 = getelementptr inbounds %struct.my_comp_master, ptr %8, i64 0, i32 1
  br i1 %452, label %455, label %454

454:                                              ; preds = %449
  store i32 1, ptr %453, align 8, !tbaa !68
  br label %458

455:                                              ; preds = %449
  store i32 2, ptr %453, align 8, !tbaa !68
  br label %458

456:                                              ; preds = %447
  %457 = getelementptr inbounds %struct.my_comp_master, ptr %8, i64 0, i32 1
  store i32 0, ptr %457, align 8, !tbaa !68
  br label %458

458:                                              ; preds = %454, %455, %456
  %459 = getelementptr inbounds %struct.my_comp_master, ptr %8, i64 0, i32 4
  store i32 0, ptr %459, align 4, !tbaa !69
  %460 = getelementptr inbounds %struct.my_comp_master, ptr %8, i64 0, i32 2
  store i32 0, ptr %460, align 4, !tbaa !70
  %461 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %462 = load i32, ptr %461, align 8, !tbaa !67
  %463 = icmp ne i32 %462, 0
  %464 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  %465 = load i32, ptr %464, align 8, !tbaa !51
  %466 = zext i1 %463 to i32
  %467 = shl nsw i32 %465, %466
  %468 = getelementptr inbounds %struct.my_comp_master, ptr %8, i64 0, i32 3
  store i32 %467, ptr %468, align 8, !tbaa !71
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @prepare_for_pass(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !68
  switch i32 %5, label %94 [
    i32 0, label %6
    i32 1, label %44
    i32 2, label %68
  ]

6:                                                ; preds = %1
  tail call fastcc void @select_scan_parameters(ptr noundef %0)
  tail call fastcc void @per_scan_setup(ptr noundef %0)
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 23
  %8 = load i32, ptr %7, align 8, !tbaa !72
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %12 = load ptr, ptr %11, align 8, !tbaa !73
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  tail call void %13(ptr noundef %0) #5
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  %15 = load ptr, ptr %14, align 8, !tbaa !76
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  tail call void %16(ptr noundef %0) #5
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %18 = load ptr, ptr %17, align 8, !tbaa !79
  %19 = load ptr, ptr %18, align 8, !tbaa !80
  tail call void %19(ptr noundef %0, i32 noundef 0) #5
  br label %20

20:                                               ; preds = %10, %6
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  %23 = load ptr, ptr %22, align 8, !tbaa !83
  tail call void %23(ptr noundef %0) #5
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %25 = load ptr, ptr %24, align 8, !tbaa !85
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %28 = load i32, ptr %27, align 8, !tbaa !67
  tail call void %26(ptr noundef %0, i32 noundef %28) #5
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %30 = load ptr, ptr %29, align 8, !tbaa !88
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  %32 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !71
  %34 = icmp sgt i32 %33, 1
  %35 = select i1 %34, i32 3, i32 0
  tail call void %31(ptr noundef %0, i32 noundef %35) #5
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 52
  %37 = load ptr, ptr %36, align 8, !tbaa !91
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  tail call void %38(ptr noundef %0, i32 noundef 0) #5
  %39 = load i32, ptr %27, align 8, !tbaa !67
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  br i1 %40, label %43, label %42

42:                                               ; preds = %20
  store i32 0, ptr %41, align 8, !tbaa !94
  br label %98

43:                                               ; preds = %20
  store i32 1, ptr %41, align 8, !tbaa !94
  br label %98

44:                                               ; preds = %1
  tail call fastcc void @select_scan_parameters(ptr noundef %0)
  tail call fastcc void @per_scan_setup(ptr noundef %0)
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %46 = load i32, ptr %45, align 4, !tbaa !95
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  %50 = load i32, ptr %49, align 4, !tbaa !96
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 24
  %54 = load i32, ptr %53, align 4, !tbaa !97
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52, %48, %44
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %58 = load ptr, ptr %57, align 8, !tbaa !85
  %59 = load ptr, ptr %58, align 8, !tbaa !86
  tail call void %59(ptr noundef %0, i32 noundef 1) #5
  %60 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %61 = load ptr, ptr %60, align 8, !tbaa !88
  %62 = load ptr, ptr %61, align 8, !tbaa !89
  tail call void %62(ptr noundef %0, i32 noundef 2) #5
  %63 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  store i32 0, ptr %63, align 8, !tbaa !94
  br label %98

64:                                               ; preds = %52
  store i32 2, ptr %4, align 8, !tbaa !68
  %65 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !70
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %65, align 4, !tbaa !70
  br label %68

68:                                               ; preds = %1, %64
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %70 = load i32, ptr %69, align 8, !tbaa !67
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  tail call fastcc void @select_scan_parameters(ptr noundef %0)
  tail call fastcc void @per_scan_setup(ptr noundef %0)
  br label %73

73:                                               ; preds = %72, %68
  %74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %75 = load ptr, ptr %74, align 8, !tbaa !85
  %76 = load ptr, ptr %75, align 8, !tbaa !86
  tail call void %76(ptr noundef %0, i32 noundef 0) #5
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %78 = load ptr, ptr %77, align 8, !tbaa !88
  %79 = load ptr, ptr %78, align 8, !tbaa !89
  tail call void %79(ptr noundef %0, i32 noundef 2) #5
  %80 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 4
  %81 = load i32, ptr %80, align 4, !tbaa !69
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %85 = load ptr, ptr %84, align 8, !tbaa !98
  %86 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !99
  tail call void %87(ptr noundef %0) #5
  br label %88

88:                                               ; preds = %83, %73
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %90 = load ptr, ptr %89, align 8, !tbaa !98
  %91 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !101
  tail call void %92(ptr noundef %0) #5
  %93 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  store i32 0, ptr %93, align 8, !tbaa !94
  br label %98

94:                                               ; preds = %1
  %95 = load ptr, ptr %0, align 8, !tbaa !27
  %96 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i64 0, i32 5
  store i32 47, ptr %96, align 8, !tbaa !28
  %97 = load ptr, ptr %95, align 8, !tbaa !30
  tail call void %97(ptr noundef nonnull %0) #5
  br label %98

98:                                               ; preds = %42, %43, %94, %88, %56
  %99 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !70
  %101 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !71
  %103 = add nsw i32 %102, -1
  %104 = icmp eq i32 %100, %103
  %105 = zext i1 %104 to i32
  %106 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 4
  store i32 %105, ptr %106, align 4, !tbaa !22
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !102
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %98
  %111 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %108, i64 0, i32 3
  store i32 %100, ptr %111, align 8, !tbaa !103
  %112 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %108, i64 0, i32 4
  store i32 %102, ptr %112, align 4, !tbaa !105
  br label %113

113:                                              ; preds = %110, %98
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pass_startup(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !99
  tail call void %8(ptr noundef %0) #5
  %9 = load ptr, ptr %5, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  tail call void %11(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @finish_pass_master(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds %struct.jpeg_entropy_encoder, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  tail call void %7(ptr noundef %0) #5
  %8 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !68
  switch i32 %9, label %28 [
    i32 0, label %10
    i32 1, label %18
    i32 2, label %19
  ]

10:                                               ; preds = %1
  store i32 2, ptr %8, align 8, !tbaa !68
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %12 = load i32, ptr %11, align 8, !tbaa !67
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !69
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !69
  br label %28

18:                                               ; preds = %1
  store i32 2, ptr %8, align 8, !tbaa !68
  br label %28

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %21 = load i32, ptr %20, align 8, !tbaa !67
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 1, ptr %8, align 8, !tbaa !68
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !69
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4, !tbaa !69
  br label %28

28:                                               ; preds = %10, %14, %1, %24, %18
  %29 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !70
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !70
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @select_scan_parameters(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = icmp eq ptr %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %7 = load ptr, ptr %6, align 8, !tbaa !16
  %8 = getelementptr inbounds %struct.my_comp_master, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !69
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !57
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  store i32 %12, ptr %13, align 4, !tbaa !108
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = zext nneg i32 %12 to i64
  br label %19

19:                                               ; preds = %15, %19
  %20 = phi i64 [ 0, %15 ], [ %26, %19 ]
  %21 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10, i32 1, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !56
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.jpeg_component_info, ptr %17, i64 %23
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %20
  store ptr %24, ptr %25, align 8, !tbaa !109
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !110

28:                                               ; preds = %19, %5
  %29 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !52
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  store i32 %30, ptr %31, align 4, !tbaa !95
  %32 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10, i32 3
  %33 = load i32, ptr %32, align 4, !tbaa !54
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  store i32 %33, ptr %34, align 8, !tbaa !111
  %35 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !59
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  store i32 %36, ptr %37, align 4, !tbaa !96
  %38 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !60
  br label %70

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %42 = load i32, ptr %41, align 4, !tbaa !25
  %43 = icmp sgt i32 %42, 4
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load ptr, ptr %0, align 8, !tbaa !27
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 5
  store i32 24, ptr %46, align 8, !tbaa !28
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 6
  store i32 %42, ptr %47, align 4, !tbaa !31
  %48 = load ptr, ptr %0, align 8, !tbaa !27
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %48, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %49, align 4, !tbaa !31
  %50 = load ptr, ptr %0, align 8, !tbaa !27
  %51 = load ptr, ptr %50, align 8, !tbaa !30
  tail call void %51(ptr noundef nonnull %0) #5
  br label %52

52:                                               ; preds = %44, %40
  %53 = load i32, ptr %41, align 4, !tbaa !25
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  store i32 %53, ptr %54, align 4, !tbaa !108
  %55 = icmp sgt i32 %53, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = zext nneg i32 %53 to i64
  br label %60

60:                                               ; preds = %56, %60
  %61 = phi i64 [ 0, %56 ], [ %64, %60 ]
  %62 = getelementptr inbounds %struct.jpeg_component_info, ptr %58, i64 %61
  %63 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %61
  store ptr %62, ptr %63, align 8, !tbaa !109
  %64 = add nuw nsw i64 %61, 1
  %65 = icmp eq i64 %64, %59
  br i1 %65, label %66, label %60, !llvm.loop !112

66:                                               ; preds = %60, %52
  %67 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  store i32 0, ptr %67, align 4, !tbaa !95
  %68 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  store i32 63, ptr %68, align 8, !tbaa !111
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  store i32 0, ptr %69, align 4, !tbaa !96
  br label %70

70:                                               ; preds = %66, %28
  %71 = phi i32 [ 0, %66 ], [ %39, %28 ]
  %72 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  store i32 %71, ptr %72, align 8, !tbaa !113
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @per_scan_setup(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  %8 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !43
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  store i32 %9, ptr %10, align 8, !tbaa !114
  %11 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 44
  store i32 %12, ptr %13, align 4, !tbaa !115
  %14 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 13
  store i32 1, ptr %14, align 4, !tbaa !116
  %15 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 14
  store i32 1, ptr %15, align 8, !tbaa !117
  %16 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 15
  store i32 1, ptr %16, align 4, !tbaa !118
  %17 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 16
  store i32 8, ptr %17, align 8, !tbaa !119
  %18 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 17
  store i32 1, ptr %18, align 4, !tbaa !120
  %19 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !38
  %21 = urem i32 %12, %20
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 %20, i32 %21
  %24 = getelementptr inbounds %struct.jpeg_component_info, ptr %7, i64 0, i32 18
  store i32 %23, ptr %24, align 8, !tbaa !121
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  store i32 1, ptr %25, align 8, !tbaa !122
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46
  store i32 0, ptr %26, align 4, !tbaa !56
  br label %112

27:                                               ; preds = %1
  %28 = add i32 %3, -5
  %29 = icmp ult i32 %28, -4
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 8, !tbaa !27
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 24, ptr %32, align 8, !tbaa !28
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 6
  store i32 %3, ptr %33, align 4, !tbaa !31
  %34 = load ptr, ptr %0, align 8, !tbaa !27
  %35 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %34, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %35, align 4, !tbaa !31
  %36 = load ptr, ptr %0, align 8, !tbaa !27
  %37 = load ptr, ptr %36, align 8, !tbaa !30
  tail call void %37(ptr noundef nonnull %0) #5
  br label %38

38:                                               ; preds = %27, %30
  %39 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %40 = load i32, ptr %39, align 8, !tbaa !24
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %43 = load i32, ptr %42, align 8, !tbaa !33
  %44 = shl nsw i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = tail call i64 @jdiv_round_up(i64 noundef %41, i64 noundef %45) #5
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  store i32 %47, ptr %48, align 8, !tbaa !114
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %50 = load i32, ptr %49, align 4, !tbaa !23
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %53 = load i32, ptr %52, align 4, !tbaa !34
  %54 = shl nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = tail call i64 @jdiv_round_up(i64 noundef %51, i64 noundef %55) #5
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 44
  store i32 %57, ptr %58, align 4, !tbaa !115
  %59 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  store i32 0, ptr %59, align 8, !tbaa !122
  %60 = load i32, ptr %2, align 4, !tbaa !108
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %112

62:                                               ; preds = %38, %107
  %63 = phi i64 [ %108, %107 ], [ 0, %38 ]
  %64 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !109
  %66 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !36
  %68 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 13
  store i32 %67, ptr %68, align 4, !tbaa !116
  %69 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 3
  %70 = load i32, ptr %69, align 4, !tbaa !38
  %71 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 14
  store i32 %70, ptr %71, align 8, !tbaa !117
  %72 = mul nsw i32 %70, %67
  %73 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 15
  store i32 %72, ptr %73, align 4, !tbaa !118
  %74 = shl nsw i32 %67, 3
  %75 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 16
  store i32 %74, ptr %75, align 8, !tbaa !119
  %76 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 7
  %77 = load i32, ptr %76, align 4, !tbaa !43
  %78 = urem i32 %77, %67
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 %67, i32 %78
  %81 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 17
  store i32 %80, ptr %81, align 4, !tbaa !120
  %82 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 8
  %83 = load i32, ptr %82, align 8, !tbaa !44
  %84 = urem i32 %83, %70
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %85, i32 %70, i32 %84
  %87 = getelementptr inbounds %struct.jpeg_component_info, ptr %65, i64 0, i32 18
  store i32 %86, ptr %87, align 8, !tbaa !121
  %88 = load i32, ptr %59, align 8, !tbaa !122
  %89 = add nsw i32 %88, %72
  %90 = icmp sgt i32 %89, 10
  br i1 %90, label %91, label %95

91:                                               ; preds = %62
  %92 = load ptr, ptr %0, align 8, !tbaa !27
  %93 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 5
  store i32 11, ptr %93, align 8, !tbaa !28
  %94 = load ptr, ptr %92, align 8, !tbaa !30
  tail call void %94(ptr noundef nonnull %0) #5
  br label %95

95:                                               ; preds = %91, %62
  %96 = icmp sgt i32 %72, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %95
  %98 = trunc i64 %63 to i32
  br label %99

99:                                               ; preds = %97, %99
  %100 = phi i32 [ %101, %99 ], [ %72, %97 ]
  %101 = add nsw i32 %100, -1
  %102 = load i32, ptr %59, align 8, !tbaa !122
  %103 = add nsw i32 %102, 1
  store i32 %103, ptr %59, align 8, !tbaa !122
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46, i64 %104
  store i32 %98, ptr %105, align 4, !tbaa !56
  %106 = icmp sgt i32 %100, 1
  br i1 %106, label %99, label %107, !llvm.loop !123

107:                                              ; preds = %99, %95
  %108 = add nuw nsw i64 %63, 1
  %109 = load i32, ptr %2, align 4, !tbaa !108
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %62, label %112, !llvm.loop !124

112:                                              ; preds = %107, %38, %5
  %113 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 30
  %114 = load i32, ptr %113, align 4, !tbaa !125
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = zext nneg i32 %114 to i64
  %118 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  %119 = load i32, ptr %118, align 8, !tbaa !114
  %120 = zext i32 %119 to i64
  %121 = mul nuw nsw i64 %120, %117
  %122 = tail call i64 @llvm.umin.i64(i64 %121, i64 65535)
  %123 = trunc i64 %122 to i32
  %124 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  store i32 %123, ptr %124, align 8, !tbaa !126
  br label %125

125:                                              ; preds = %116, %112
  ret void
}

declare i64 @jdiv_round_up(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

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
!16 = !{!6, !7, i64 424}
!17 = !{!18, !7, i64 0}
!18 = !{!"", !19, i64 0, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44}
!19 = !{!"jpeg_comp_master", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !10, i64 28}
!20 = !{!18, !7, i64 8}
!21 = !{!18, !7, i64 16}
!22 = !{!18, !10, i64 28}
!23 = !{!6, !10, i64 44}
!24 = !{!6, !10, i64 40}
!25 = !{!6, !10, i64 68}
!26 = !{!6, !10, i64 48}
!27 = !{!6, !7, i64 0}
!28 = !{!29, !10, i64 40}
!29 = !{!"jpeg_error_mgr", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !8, i64 44, !10, i64 124, !15, i64 128, !7, i64 136, !10, i64 144, !7, i64 152, !10, i64 160, !10, i64 164}
!30 = !{!29, !7, i64 0}
!31 = !{!8, !8, i64 0}
!32 = !{!6, !10, i64 64}
!33 = !{!6, !10, i64 304}
!34 = !{!6, !10, i64 308}
!35 = !{!6, !7, i64 80}
!36 = !{!37, !10, i64 8}
!37 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !7, i64 80, !7, i64 88}
!38 = !{!37, !10, i64 12}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!37, !10, i64 4}
!42 = !{!37, !10, i64 36}
!43 = !{!37, !10, i64 28}
!44 = !{!37, !10, i64 32}
!45 = !{!37, !10, i64 40}
!46 = !{!37, !10, i64 44}
!47 = !{!37, !10, i64 48}
!48 = distinct !{!48, !40}
!49 = !{!6, !10, i64 312}
!50 = !{!6, !7, i64 240}
!51 = !{!6, !10, i64 232}
!52 = !{!53, !10, i64 20}
!53 = !{!"", !10, i64 0, !8, i64 4, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32}
!54 = !{!53, !10, i64 24}
!55 = !{!6, !10, i64 300}
!56 = !{!10, !10, i64 0}
!57 = !{!53, !10, i64 0}
!58 = distinct !{!58, !40}
!59 = !{!53, !10, i64 28}
!60 = !{!53, !10, i64 32}
!61 = distinct !{!61, !40}
!62 = distinct !{!62, !40}
!63 = distinct !{!63, !40}
!64 = distinct !{!64, !40}
!65 = distinct !{!65, !40}
!66 = distinct !{!66, !40}
!67 = !{!6, !10, i64 256}
!68 = !{!18, !10, i64 32}
!69 = !{!18, !10, i64 44}
!70 = !{!18, !10, i64 36}
!71 = !{!18, !10, i64 40}
!72 = !{!6, !10, i64 248}
!73 = !{!6, !7, i64 464}
!74 = !{!75, !7, i64 0}
!75 = !{!"jpeg_color_converter", !7, i64 0, !7, i64 8}
!76 = !{!6, !7, i64 472}
!77 = !{!78, !7, i64 0}
!78 = !{!"jpeg_downsampler", !7, i64 0, !7, i64 8, !10, i64 16}
!79 = !{!6, !7, i64 440}
!80 = !{!81, !7, i64 0}
!81 = !{!"jpeg_c_prep_controller", !7, i64 0, !7, i64 8}
!82 = !{!6, !7, i64 480}
!83 = !{!84, !7, i64 0}
!84 = !{!"jpeg_forward_dct", !7, i64 0, !7, i64 8}
!85 = !{!6, !7, i64 488}
!86 = !{!87, !7, i64 0}
!87 = !{!"jpeg_entropy_encoder", !7, i64 0, !7, i64 8, !7, i64 16}
!88 = !{!6, !7, i64 448}
!89 = !{!90, !7, i64 0}
!90 = !{!"jpeg_c_coef_controller", !7, i64 0, !7, i64 8}
!91 = !{!6, !7, i64 432}
!92 = !{!93, !7, i64 0}
!93 = !{!"jpeg_c_main_controller", !7, i64 0, !7, i64 8}
!94 = !{!18, !10, i64 24}
!95 = !{!6, !10, i64 404}
!96 = !{!6, !10, i64 412}
!97 = !{!6, !10, i64 252}
!98 = !{!6, !7, i64 456}
!99 = !{!100, !7, i64 16}
!100 = !{!"jpeg_marker_writer", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!101 = !{!100, !7, i64 24}
!102 = !{!6, !7, i64 16}
!103 = !{!104, !10, i64 24}
!104 = !{!"jpeg_progress_mgr", !7, i64 0, !15, i64 8, !15, i64 16, !10, i64 24, !10, i64 28}
!105 = !{!104, !10, i64 28}
!106 = !{!19, !10, i64 24}
!107 = !{!87, !7, i64 16}
!108 = !{!6, !10, i64 316}
!109 = !{!7, !7, i64 0}
!110 = distinct !{!110, !40}
!111 = !{!6, !10, i64 408}
!112 = distinct !{!112, !40}
!113 = !{!6, !10, i64 416}
!114 = !{!6, !10, i64 352}
!115 = !{!6, !10, i64 356}
!116 = !{!37, !10, i64 52}
!117 = !{!37, !10, i64 56}
!118 = !{!37, !10, i64 60}
!119 = !{!37, !10, i64 64}
!120 = !{!37, !10, i64 68}
!121 = !{!37, !10, i64 72}
!122 = !{!6, !10, i64 360}
!123 = distinct !{!123, !40}
!124 = distinct !{!124, !40}
!125 = !{!6, !10, i64 276}
!126 = !{!6, !10, i64 272}
