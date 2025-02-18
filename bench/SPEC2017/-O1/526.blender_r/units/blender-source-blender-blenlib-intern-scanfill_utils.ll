; ModuleID = 'blender/source/blender/blenlib/intern/scanfill_utils.c'
source_filename = "blender/source/blender/blenlib/intern/scanfill_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.ScanFillContext = type { %struct.ListBase, %struct.ListBase, %struct.ListBase, i16, ptr }
%struct.PolyInfo = type { ptr, ptr, ptr }
%struct.ScanFillEdge = type { ptr, ptr, ptr, ptr, i16, i8, %union.anon }
%union.anon = type { i8 }
%struct.ScanFillVert = type { ptr, ptr, %union.anon.0, [3 x float], [2 x float], i32, i16, i8, i8 }
%union.anon.0 = type { ptr }
%struct.ScanFillIsect = type { ptr, ptr, [3 x float], ptr }
%struct.LinkData = type { ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BLI_scanfill_calc_self_isect = private unnamed_addr constant [29 x i8] c"BLI_scanfill_calc_self_isect\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@__func__.scanfill_preprocess_self_isect = private unnamed_addr constant [31 x i8] c"scanfill_preprocess_self_isect\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.edge_isect_ls_add = private unnamed_addr constant [18 x i8] c"edge_isect_ls_add\00", align 1
@__func__.edge_isect_ls_ensure = private unnamed_addr constant [21 x i8] c"edge_isect_ls_ensure\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @BLI_scanfill_calc_self_isect(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca [2 x float], align 4
  %6 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 3
  %7 = load i16, ptr %6, align 8, !tbaa !34
  %8 = icmp eq i16 %7, -1
  br i1 %8, label %433, label %9

9:                                                ; preds = %3
  %10 = zext i16 %7 to i64
  %11 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %12 = mul nuw nsw i64 %10, 24
  %13 = add nuw nsw i64 %12, 24
  %14 = tail call ptr %11(i64 noundef %13, ptr noundef nonnull @__func__.BLI_scanfill_calc_self_isect) #6
  %15 = load i16, ptr %6, align 8, !tbaa !34
  %16 = icmp eq i16 %15, 0
  %17 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  br i1 %16, label %19, label %23

19:                                               ; preds = %9
  store ptr %18, ptr %14, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.PolyInfo, ptr %14, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !45
  br label %61

23:                                               ; preds = %9
  %24 = icmp eq ptr %18, null
  br i1 %24, label %61, label %25

25:                                               ; preds = %23, %58
  %26 = phi ptr [ %59, %58 ], [ %18, %23 ]
  %27 = phi i16 [ %41, %58 ], [ 0, %23 ]
  %28 = zext i16 %27 to i64
  %29 = getelementptr inbounds %struct.PolyInfo, ptr %14, i64 %28, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !45
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.ScanFillEdge, ptr %30, i64 0, i32 4
  %34 = load i16, ptr %33, align 8, !tbaa !46
  %35 = getelementptr inbounds %struct.ScanFillEdge, ptr %26, i64 0, i32 4
  %36 = load i16, ptr %35, align 8, !tbaa !46
  %37 = icmp ne i16 %34, %36
  %38 = zext i1 %37 to i16
  %39 = add i16 %27, %38
  br label %40

40:                                               ; preds = %32, %25
  %41 = phi i16 [ %27, %25 ], [ %39, %32 ]
  %42 = zext i16 %41 to i64
  %43 = getelementptr inbounds %struct.PolyInfo, ptr %14, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !42
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  store ptr %26, ptr %43, align 8, !tbaa !42
  %47 = getelementptr inbounds %struct.PolyInfo, ptr %14, i64 %42, i32 1
  br label %56

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.PolyInfo, ptr %14, i64 %42, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !45
  %51 = getelementptr inbounds %struct.ScanFillEdge, ptr %50, i64 0, i32 4
  %52 = load i16, ptr %51, align 8, !tbaa !46
  %53 = getelementptr inbounds %struct.ScanFillEdge, ptr %26, i64 0, i32 4
  %54 = load i16, ptr %53, align 8, !tbaa !46
  %55 = icmp eq i16 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48, %46
  %57 = phi ptr [ %47, %46 ], [ %49, %48 ]
  store ptr %26, ptr %57, align 8, !tbaa !45
  br label %58

58:                                               ; preds = %56, %48
  %59 = load ptr, ptr %26, align 8, !tbaa !41
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %25, !llvm.loop !49

61:                                               ; preds = %58, %23, %19
  %62 = getelementptr inbounds float, ptr %5, i64 1
  %63 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  br label %64

64:                                               ; preds = %61, %364
  %65 = phi i16 [ 0, %61 ], [ %367, %364 ]
  %66 = phi i8 [ 0, %61 ], [ %366, %364 ]
  %67 = zext i16 %65 to i64
  %68 = getelementptr inbounds %struct.PolyInfo, ptr %14, i64 %67
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %69 = load ptr, ptr %68, align 8, !tbaa !42
  %70 = icmp eq ptr %69, null
  br i1 %70, label %178, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.PolyInfo, ptr %14, i64 %67, i32 1
  %73 = getelementptr inbounds %struct.PolyInfo, ptr %14, i64 %67, i32 1
  br label %74

74:                                               ; preds = %71, %175
  %75 = phi ptr [ null, %71 ], [ %170, %175 ]
  %76 = phi ptr [ %69, %71 ], [ %176, %175 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !52
  %78 = icmp eq ptr %77, null
  br i1 %78, label %169, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.ScanFillEdge, ptr %76, i64 0, i32 2
  %81 = getelementptr inbounds %struct.ScanFillEdge, ptr %76, i64 0, i32 3
  %82 = getelementptr inbounds %struct.ScanFillEdge, ptr %76, i64 0, i32 5
  br label %83

83:                                               ; preds = %79, %166
  %84 = phi ptr [ %75, %79 ], [ %161, %166 ]
  %85 = phi ptr [ %77, %79 ], [ %167, %166 ]
  %86 = load ptr, ptr %80, align 8, !tbaa !53
  %87 = getelementptr inbounds %struct.ScanFillEdge, ptr %85, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !53
  %89 = icmp eq ptr %86, %88
  br i1 %89, label %160, label %90

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.ScanFillEdge, ptr %85, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !54
  %93 = icmp eq ptr %86, %92
  br i1 %93, label %160, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %81, align 8, !tbaa !54
  %96 = icmp eq ptr %95, %88
  %97 = icmp eq ptr %95, %92
  %98 = or i1 %96, %97
  %99 = icmp eq ptr %76, %85
  %100 = or i1 %99, %98
  br i1 %100, label %160, label %101

101:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #6
  %102 = getelementptr inbounds %struct.ScanFillVert, ptr %86, i64 0, i32 3
  %103 = getelementptr inbounds %struct.ScanFillVert, ptr %95, i64 0, i32 3
  %104 = getelementptr inbounds %struct.ScanFillVert, ptr %88, i64 0, i32 3
  %105 = getelementptr inbounds %struct.ScanFillVert, ptr %92, i64 0, i32 3
  %106 = call i32 @isect_seg_seg_v2_point(ptr noundef nonnull %102, ptr noundef nonnull %103, ptr noundef nonnull %104, ptr noundef nonnull %105, ptr noundef nonnull %5) #6
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %158

108:                                              ; preds = %101
  %109 = icmp eq ptr %84, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %108
  %111 = call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.scanfill_preprocess_self_isect) #6
  br label %112

112:                                              ; preds = %110, %108
  %113 = phi ptr [ %111, %110 ], [ %84, %108 ]
  %114 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !41
  %115 = call ptr %114(i64 noundef 40, ptr noundef nonnull @__func__.scanfill_preprocess_self_isect) #6
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %115) #6
  %116 = getelementptr inbounds %struct.ScanFillIsect, ptr %115, i64 0, i32 2
  %117 = load float, ptr %5, align 4, !tbaa !55
  store float %117, ptr %116, align 4, !tbaa !55
  %118 = load float, ptr %62, align 4, !tbaa !55
  %119 = getelementptr inbounds %struct.ScanFillIsect, ptr %115, i64 0, i32 2, i64 1
  store float %118, ptr %119, align 4, !tbaa !55
  %120 = load ptr, ptr %80, align 8, !tbaa !53
  %121 = getelementptr inbounds %struct.ScanFillVert, ptr %120, i64 0, i32 3, i64 2
  %122 = load float, ptr %121, align 8, !tbaa !55
  %123 = getelementptr inbounds %struct.ScanFillIsect, ptr %115, i64 0, i32 2, i64 2
  store float %122, ptr %123, align 8, !tbaa !55
  %124 = call ptr @BLI_scanfill_vert_add(ptr noundef %0, ptr noundef nonnull %116) #6
  %125 = getelementptr inbounds %struct.ScanFillIsect, ptr %115, i64 0, i32 3
  store ptr %124, ptr %125, align 8, !tbaa !57
  %126 = load ptr, ptr %80, align 8, !tbaa !53
  %127 = getelementptr inbounds %struct.ScanFillVert, ptr %126, i64 0, i32 6
  %128 = load i16, ptr %127, align 8, !tbaa !59
  %129 = getelementptr inbounds %struct.ScanFillVert, ptr %124, i64 0, i32 6
  store i16 %128, ptr %129, align 8, !tbaa !59
  %130 = getelementptr inbounds %struct.ScanFillVert, ptr %124, i64 0, i32 8
  %131 = load i8, ptr %130, align 1
  %132 = or i8 %131, 16
  store i8 %132, ptr %130, align 1
  %133 = call ptr @BLI_ghash_lookup(ptr noundef %113, ptr noundef nonnull %76) #6
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %112
  %136 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %137 = call ptr %136(i64 noundef 16, ptr noundef nonnull @__func__.edge_isect_ls_ensure) #6
  call void @BLI_ghash_insert(ptr noundef %113, ptr noundef nonnull %76, ptr noundef %137) #6
  br label %138

138:                                              ; preds = %112, %135
  %139 = phi ptr [ %137, %135 ], [ %133, %112 ]
  %140 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %141 = call ptr %140(i64 noundef 24, ptr noundef nonnull @__func__.edge_isect_ls_add) #6
  %142 = getelementptr inbounds %struct.LinkData, ptr %141, i64 0, i32 2
  store ptr %115, ptr %142, align 8, !tbaa !61
  %143 = load i8, ptr %82, align 2
  %144 = or i8 %143, 16
  store i8 %144, ptr %82, align 2
  call void @BLI_addtail(ptr noundef %139, ptr noundef %141) #6
  %145 = call ptr @BLI_ghash_lookup(ptr noundef %113, ptr noundef nonnull %85) #6
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %149 = call ptr %148(i64 noundef 16, ptr noundef nonnull @__func__.edge_isect_ls_ensure) #6
  call void @BLI_ghash_insert(ptr noundef %113, ptr noundef nonnull %85, ptr noundef %149) #6
  br label %150

150:                                              ; preds = %138, %147
  %151 = phi ptr [ %149, %147 ], [ %145, %138 ]
  %152 = load ptr, ptr @MEM_callocN, align 8, !tbaa !41
  %153 = call ptr %152(i64 noundef 24, ptr noundef nonnull @__func__.edge_isect_ls_add) #6
  %154 = getelementptr inbounds %struct.LinkData, ptr %153, i64 0, i32 2
  store ptr %115, ptr %154, align 8, !tbaa !61
  %155 = getelementptr inbounds %struct.ScanFillEdge, ptr %85, i64 0, i32 5
  %156 = load i8, ptr %155, align 2
  %157 = or i8 %156, 16
  store i8 %157, ptr %155, align 2
  call void @BLI_addtail(ptr noundef %151, ptr noundef %153) #6
  br label %158

158:                                              ; preds = %150, %101
  %159 = phi ptr [ %113, %150 ], [ %84, %101 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #6
  br label %160

160:                                              ; preds = %158, %94, %90, %83
  %161 = phi ptr [ %84, %83 ], [ %84, %90 ], [ %84, %94 ], [ %159, %158 ]
  %162 = load ptr, ptr %72, align 8, !tbaa !45
  %163 = icmp eq ptr %85, %162
  br i1 %163, label %166, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %85, align 8, !tbaa !52
  br label %166

166:                                              ; preds = %164, %160
  %167 = phi ptr [ %165, %164 ], [ null, %160 ]
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %83, !llvm.loop !63

169:                                              ; preds = %166, %74
  %170 = phi ptr [ %75, %74 ], [ %161, %166 ]
  %171 = load ptr, ptr %73, align 8, !tbaa !45
  %172 = icmp eq ptr %76, %171
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = load ptr, ptr %76, align 8, !tbaa !52
  br label %175

175:                                              ; preds = %173, %169
  %176 = phi ptr [ %174, %173 ], [ null, %169 ]
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %74, !llvm.loop !64

178:                                              ; preds = %175, %64
  %179 = phi ptr [ null, %64 ], [ %170, %175 ]
  %180 = icmp eq ptr %179, null
  br i1 %180, label %364, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr %68, align 8, !tbaa !42
  %183 = icmp eq ptr %182, null
  br i1 %183, label %256, label %184

184:                                              ; preds = %181
  %185 = getelementptr inbounds %struct.PolyInfo, ptr %14, i64 %67, i32 1
  %186 = getelementptr inbounds %struct.PolyInfo, ptr %14, i64 %67, i32 1
  br label %187

187:                                              ; preds = %184, %253
  %188 = phi ptr [ %182, %184 ], [ %254, %253 ]
  %189 = getelementptr inbounds %struct.ScanFillEdge, ptr %188, i64 0, i32 5
  %190 = load i8, ptr %189, align 2
  %191 = and i8 %190, 16
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %247, label %193

193:                                              ; preds = %187
  %194 = call ptr @BLI_ghash_lookup(ptr noundef nonnull %179, ptr noundef nonnull %188) #6
  %195 = icmp eq ptr %194, null
  br i1 %195, label %247, label %196

196:                                              ; preds = %193
  %197 = load ptr, ptr %185, align 8, !tbaa !45
  %198 = icmp eq ptr %197, %188
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  store ptr null, ptr %185, align 8, !tbaa !45
  br label %200

200:                                              ; preds = %199, %196
  %201 = load ptr, ptr %194, align 8, !tbaa !65
  %202 = icmp eq ptr %201, null
  br i1 %202, label %208, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.ListBase, ptr %194, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !66
  %206 = icmp eq ptr %201, %205
  %207 = zext i1 %206 to i8
  br label %208

208:                                              ; preds = %203, %200
  %209 = phi i8 [ 0, %200 ], [ %207, %203 ]
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.ScanFillEdge, ptr %188, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !54
  %214 = getelementptr inbounds %struct.ScanFillVert, ptr %213, i64 0, i32 3
  call void @BLI_sortlist_r(ptr noundef nonnull %194, ptr noundef nonnull %214, ptr noundef nonnull @edge_isect_ls_sort_cb) #6
  br label %215

215:                                              ; preds = %211, %208
  %216 = getelementptr inbounds %struct.ScanFillEdge, ptr %188, i64 0, i32 2
  %217 = load ptr, ptr %216, align 8, !tbaa !53
  %218 = getelementptr inbounds %struct.ScanFillEdge, ptr %188, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !54
  %220 = call ptr @BLI_scanfill_edge_add(ptr noundef %0, ptr noundef %217, ptr noundef %219) #6
  call void @BLI_remlink(ptr noundef nonnull %63, ptr noundef %220) #6
  call void @BLI_insertlinkafter(ptr noundef nonnull %63, ptr noundef nonnull %188, ptr noundef %220) #6
  call void @BLI_remlink(ptr noundef nonnull %63, ptr noundef nonnull %188) #6
  call void @BLI_addtail(ptr noundef %2, ptr noundef nonnull %188) #6
  %221 = load ptr, ptr %68, align 8, !tbaa !42
  %222 = icmp eq ptr %221, %188
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  store ptr %220, ptr %68, align 8, !tbaa !42
  br label %224

224:                                              ; preds = %223, %215
  %225 = load ptr, ptr %194, align 8, !tbaa !41
  %226 = icmp eq ptr %225, null
  br i1 %226, label %241, label %227

227:                                              ; preds = %224, %227
  %228 = phi ptr [ %239, %227 ], [ %225, %224 ]
  %229 = phi ptr [ %236, %227 ], [ %220, %224 ]
  %230 = getelementptr inbounds %struct.LinkData, ptr %228, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !61
  %232 = getelementptr inbounds %struct.ScanFillIsect, ptr %231, i64 0, i32 3
  %233 = load ptr, ptr %232, align 8, !tbaa !57
  %234 = getelementptr inbounds %struct.ScanFillEdge, ptr %229, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !54
  %236 = call ptr @BLI_scanfill_edge_add(ptr noundef %0, ptr noundef %233, ptr noundef %235) #6
  %237 = getelementptr inbounds %struct.ScanFillEdge, ptr %236, i64 0, i32 4
  store i16 %65, ptr %237, align 8, !tbaa !46
  %238 = load ptr, ptr %232, align 8, !tbaa !57
  store ptr %238, ptr %234, align 8, !tbaa !54
  call void @BLI_remlink(ptr noundef nonnull %63, ptr noundef %236) #6
  call void @BLI_insertlinkafter(ptr noundef nonnull %63, ptr noundef %229, ptr noundef %236) #6
  %239 = load ptr, ptr %228, align 8, !tbaa !41
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %227, !llvm.loop !67

241:                                              ; preds = %227, %224
  %242 = phi ptr [ %220, %224 ], [ %236, %227 ]
  call void @BLI_freelistN(ptr noundef nonnull %194) #6
  %243 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %243(ptr noundef nonnull %194) #6
  %244 = load ptr, ptr %185, align 8, !tbaa !45
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  store ptr %242, ptr %185, align 8, !tbaa !45
  br label %247

247:                                              ; preds = %246, %241, %193, %187
  %248 = phi ptr [ %188, %187 ], [ %188, %193 ], [ %242, %246 ], [ %242, %241 ]
  %249 = load ptr, ptr %186, align 8, !tbaa !45
  %250 = icmp eq ptr %248, %249
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = load ptr, ptr %248, align 8, !tbaa !52
  br label %253

253:                                              ; preds = %251, %247
  %254 = phi ptr [ %252, %251 ], [ null, %247 ]
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %187, !llvm.loop !68

256:                                              ; preds = %253, %181
  call void @BLI_freelistN(ptr noundef nonnull %4) #6
  call void @BLI_ghash_free(ptr noundef nonnull %179, ptr noundef null, ptr noundef null) #6
  %257 = getelementptr inbounds %struct.PolyInfo, ptr %14, i64 %67, i32 1
  %258 = load ptr, ptr %257, align 8, !tbaa !45
  %259 = load ptr, ptr %68, align 8, !tbaa !42
  %260 = icmp eq ptr %259, null
  br i1 %260, label %281, label %261

261:                                              ; preds = %256, %278
  %262 = phi float [ %274, %278 ], [ 0x47EFFFFFE0000000, %256 ]
  %263 = phi ptr [ %264, %278 ], [ %258, %256 ]
  %264 = phi ptr [ %279, %278 ], [ %259, %256 ]
  %265 = phi ptr [ %273, %278 ], [ %259, %256 ]
  %266 = phi ptr [ %272, %278 ], [ %258, %256 ]
  %267 = getelementptr inbounds %struct.ScanFillEdge, ptr %264, i64 0, i32 3
  %268 = load ptr, ptr %267, align 8, !tbaa !54
  %269 = getelementptr inbounds %struct.ScanFillVert, ptr %268, i64 0, i32 3
  %270 = load float, ptr %269, align 8, !tbaa !55
  %271 = fcmp olt float %270, %262
  %272 = select i1 %271, ptr %263, ptr %266
  %273 = select i1 %271, ptr %264, ptr %265
  %274 = select i1 %271, float %270, float %262
  %275 = icmp eq ptr %264, %258
  br i1 %275, label %278, label %276

276:                                              ; preds = %261
  %277 = load ptr, ptr %264, align 8, !tbaa !52
  br label %278

278:                                              ; preds = %276, %261
  %279 = phi ptr [ %277, %276 ], [ null, %261 ]
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %261, !llvm.loop !69

281:                                              ; preds = %278, %256
  %282 = phi ptr [ %258, %256 ], [ %272, %278 ]
  %283 = phi ptr [ %259, %256 ], [ %273, %278 ]
  %284 = getelementptr inbounds %struct.ScanFillEdge, ptr %282, i64 0, i32 3
  %285 = load ptr, ptr %284, align 8, !tbaa !54
  br label %286

286:                                              ; preds = %361, %281
  %287 = phi ptr [ %283, %281 ], [ %362, %361 ]
  %288 = phi ptr [ %285, %281 ], [ %297, %361 ]
  %289 = phi i8 [ 0, %281 ], [ %309, %361 ]
  %290 = getelementptr inbounds %struct.ScanFillEdge, ptr %287, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !53
  %292 = icmp eq ptr %291, %288
  br i1 %292, label %293, label %296

293:                                              ; preds = %286
  %294 = getelementptr inbounds %struct.ScanFillEdge, ptr %287, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !54
  br label %296

296:                                              ; preds = %293, %286
  %297 = phi ptr [ %295, %293 ], [ %291, %286 ]
  %298 = icmp eq i8 %289, 0
  br i1 %298, label %303, label %299

299:                                              ; preds = %296
  %300 = getelementptr inbounds %struct.ScanFillEdge, ptr %287, i64 0, i32 5
  %301 = load i8, ptr %300, align 2
  %302 = or i8 %301, 32
  store i8 %302, ptr %300, align 2
  br label %303

303:                                              ; preds = %299, %296
  %304 = getelementptr inbounds %struct.ScanFillVert, ptr %297, i64 0, i32 8
  %305 = load i8, ptr %304, align 1
  %306 = and i8 %305, 16
  %307 = icmp eq i8 %306, 0
  %308 = zext i1 %298 to i8
  %309 = select i1 %307, i8 %289, i8 %308
  %310 = load ptr, ptr %287, align 8, !tbaa !52
  %311 = icmp eq ptr %310, null
  br i1 %311, label %315, label %312

312:                                              ; preds = %303
  %313 = load ptr, ptr %257, align 8, !tbaa !45
  %314 = icmp eq ptr %313, %287
  br i1 %314, label %315, label %317

315:                                              ; preds = %312, %303
  %316 = load ptr, ptr %68, align 8, !tbaa !42
  br label %317

317:                                              ; preds = %315, %312
  %318 = phi ptr [ %316, %315 ], [ %310, %312 ]
  %319 = getelementptr inbounds %struct.ScanFillEdge, ptr %318, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !53
  %321 = icmp eq ptr %320, %297
  br i1 %321, label %328, label %322

322:                                              ; preds = %317
  %323 = getelementptr inbounds %struct.ScanFillEdge, ptr %318, i64 0, i32 3
  %324 = load ptr, ptr %323, align 8, !tbaa !54
  %325 = icmp ne ptr %324, %297
  %326 = icmp eq ptr %320, %288
  %327 = or i1 %326, %325
  br i1 %327, label %334, label %330

328:                                              ; preds = %317
  %329 = icmp eq ptr %320, %288
  br i1 %329, label %334, label %330

330:                                              ; preds = %322, %328
  %331 = getelementptr inbounds %struct.ScanFillEdge, ptr %318, i64 0, i32 3
  %332 = load ptr, ptr %331, align 8, !tbaa !54
  %333 = icmp eq ptr %332, %288
  br i1 %333, label %334, label %361

334:                                              ; preds = %330, %328, %322
  %335 = getelementptr inbounds %struct.ScanFillEdge, ptr %287, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !70
  %337 = icmp eq ptr %336, null
  br i1 %337, label %341, label %338

338:                                              ; preds = %334
  %339 = load ptr, ptr %68, align 8, !tbaa !42
  %340 = icmp eq ptr %339, %287
  br i1 %340, label %341, label %343

341:                                              ; preds = %338, %334
  %342 = load ptr, ptr %257, align 8, !tbaa !45
  br label %343

343:                                              ; preds = %341, %338
  %344 = phi ptr [ %342, %341 ], [ %336, %338 ]
  %345 = getelementptr inbounds %struct.ScanFillEdge, ptr %344, i64 0, i32 2
  %346 = load ptr, ptr %345, align 8, !tbaa !53
  %347 = icmp eq ptr %346, %297
  br i1 %347, label %354, label %348

348:                                              ; preds = %343
  %349 = getelementptr inbounds %struct.ScanFillEdge, ptr %344, i64 0, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !54
  %351 = icmp ne ptr %350, %297
  %352 = icmp eq ptr %346, %288
  %353 = or i1 %352, %351
  br i1 %353, label %360, label %356

354:                                              ; preds = %343
  %355 = icmp eq ptr %346, %288
  br i1 %355, label %360, label %356

356:                                              ; preds = %348, %354
  %357 = getelementptr inbounds %struct.ScanFillEdge, ptr %344, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8, !tbaa !54
  %359 = icmp eq ptr %358, %288
  br i1 %359, label %360, label %361

360:                                              ; preds = %356, %354, %348
  br label %361

361:                                              ; preds = %360, %356, %330
  %362 = phi ptr [ null, %360 ], [ %318, %330 ], [ %344, %356 ]
  %363 = icmp eq ptr %287, %282
  br i1 %363, label %364, label %286, !llvm.loop !71

364:                                              ; preds = %361, %178
  %365 = phi i8 [ 0, %178 ], [ 1, %361 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  %366 = or i8 %365, %66
  %367 = add i16 %65, 1
  %368 = icmp ult i16 %7, %367
  br i1 %368, label %369, label %64, !llvm.loop !72

369:                                              ; preds = %364
  %370 = load ptr, ptr @MEM_freeN, align 8, !tbaa !41
  call void %370(ptr noundef %14) #6
  %371 = icmp eq i8 %366, 0
  br i1 %371, label %433, label %372

372:                                              ; preds = %369
  %373 = getelementptr inbounds %struct.ScanFillContext, ptr %0, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !73
  %375 = icmp eq ptr %374, null
  br i1 %375, label %376, label %379

376:                                              ; preds = %387, %372
  %377 = load ptr, ptr %0, align 8, !tbaa !41
  %378 = icmp eq ptr %377, null
  br i1 %378, label %389, label %392

379:                                              ; preds = %372, %387
  %380 = phi ptr [ %381, %387 ], [ %374, %372 ]
  %381 = load ptr, ptr %380, align 8, !tbaa !52
  %382 = getelementptr inbounds %struct.ScanFillEdge, ptr %380, i64 0, i32 5
  %383 = load i8, ptr %382, align 2
  %384 = and i8 %383, 32
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %387, label %386

386:                                              ; preds = %379
  call void @BLI_remlink(ptr noundef nonnull %373, ptr noundef nonnull %380) #6
  call void @BLI_addtail(ptr noundef %2, ptr noundef nonnull %380) #6
  br label %387

387:                                              ; preds = %379, %386
  %388 = icmp eq ptr %381, null
  br i1 %388, label %376, label %379, !llvm.loop !74

389:                                              ; preds = %392, %376
  %390 = load ptr, ptr %373, align 8, !tbaa !41
  %391 = icmp eq ptr %390, null
  br i1 %391, label %417, label %400

392:                                              ; preds = %376, %392
  %393 = phi ptr [ %398, %392 ], [ %377, %376 ]
  %394 = getelementptr inbounds %struct.ScanFillVert, ptr %393, i64 0, i32 8
  %395 = load i8, ptr %394, align 1
  %396 = and i8 %395, 15
  store i8 %396, ptr %394, align 1
  %397 = getelementptr inbounds %struct.ScanFillVert, ptr %393, i64 0, i32 6
  store i16 -1, ptr %397, align 8, !tbaa !59
  %398 = load ptr, ptr %393, align 8, !tbaa !41
  %399 = icmp eq ptr %398, null
  br i1 %399, label %389, label %392, !llvm.loop !75

400:                                              ; preds = %389, %400
  %401 = phi ptr [ %415, %400 ], [ %390, %389 ]
  %402 = getelementptr inbounds %struct.ScanFillEdge, ptr %401, i64 0, i32 2
  %403 = load ptr, ptr %402, align 8, !tbaa !53
  %404 = getelementptr inbounds %struct.ScanFillVert, ptr %403, i64 0, i32 8
  %405 = load i8, ptr %404, align 1
  %406 = and i8 %405, 15
  %407 = or disjoint i8 %406, 16
  store i8 %407, ptr %404, align 1
  %408 = getelementptr inbounds %struct.ScanFillEdge, ptr %401, i64 0, i32 3
  %409 = load ptr, ptr %408, align 8, !tbaa !54
  %410 = getelementptr inbounds %struct.ScanFillVert, ptr %409, i64 0, i32 8
  %411 = load i8, ptr %410, align 1
  %412 = and i8 %411, 15
  %413 = or disjoint i8 %412, 16
  store i8 %413, ptr %410, align 1
  %414 = getelementptr inbounds %struct.ScanFillEdge, ptr %401, i64 0, i32 4
  store i16 -1, ptr %414, align 8, !tbaa !46
  %415 = load ptr, ptr %401, align 8, !tbaa !41
  %416 = icmp eq ptr %415, null
  br i1 %416, label %417, label %400, !llvm.loop !76

417:                                              ; preds = %400, %389
  %418 = load ptr, ptr %0, align 8, !tbaa !77
  %419 = icmp eq ptr %418, null
  br i1 %419, label %432, label %420

420:                                              ; preds = %417, %430
  %421 = phi ptr [ %422, %430 ], [ %418, %417 ]
  %422 = load ptr, ptr %421, align 8, !tbaa !78
  %423 = getelementptr inbounds %struct.ScanFillVert, ptr %421, i64 0, i32 8
  %424 = load i8, ptr %423, align 1
  %425 = and i8 %424, -16
  %426 = icmp eq i8 %425, 16
  br i1 %426, label %428, label %427

427:                                              ; preds = %420
  call void @BLI_remlink(ptr noundef nonnull %0, ptr noundef nonnull %421) #6
  call void @BLI_addtail(ptr noundef %1, ptr noundef nonnull %421) #6
  br label %430

428:                                              ; preds = %420
  %429 = and i8 %424, 15
  store i8 %429, ptr %423, align 1
  br label %430

430:                                              ; preds = %427, %428
  %431 = icmp eq ptr %422, null
  br i1 %431, label %432, label %420, !llvm.loop !79

432:                                              ; preds = %430, %417
  store i16 -1, ptr %6, align 8, !tbaa !34
  br label %433

433:                                              ; preds = %369, %3, %432
  %434 = phi i8 [ %366, %432 ], [ 0, %3 ], [ 0, %369 ]
  ret i8 %434
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare i32 @isect_seg_seg_v2_point(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

declare ptr @BLI_scanfill_vert_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_sortlist_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @edge_isect_ls_sort_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.LinkData, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.LinkData, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.ScanFillIsect, ptr %5, i64 0, i32 2
  %9 = load float, ptr %8, align 4, !tbaa !55
  %10 = load float, ptr %0, align 4, !tbaa !55
  %11 = fsub float %9, %10
  %12 = getelementptr inbounds %struct.ScanFillIsect, ptr %5, i64 0, i32 2, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !55
  %14 = getelementptr inbounds float, ptr %0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !55
  %16 = fsub float %13, %15
  %17 = fmul float %16, %16
  %18 = tail call float @llvm.fmuladd.f32(float %11, float %11, float %17)
  %19 = getelementptr inbounds %struct.ScanFillIsect, ptr %7, i64 0, i32 2
  %20 = load float, ptr %19, align 4, !tbaa !55
  %21 = fsub float %20, %10
  %22 = getelementptr inbounds %struct.ScanFillIsect, ptr %7, i64 0, i32 2, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !55
  %24 = fsub float %23, %15
  %25 = fmul float %24, %24
  %26 = tail call float @llvm.fmuladd.f32(float %21, float %21, float %25)
  %27 = fcmp ogt float %18, %26
  %28 = fcmp olt float %18, %26
  %29 = zext i1 %28 to i32
  %30 = select i1 %27, i32 -1, i32 %29
  ret i32 %30
}

declare ptr @BLI_scanfill_edge_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!34 = !{!35, !40, i64 48}
!35 = !{!"ScanFillContext", !36, i64 0, !36, i64 16, !36, i64 32, !40, i64 48, !37, i64 56}
!36 = !{!"ListBase", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!37, !37, i64 0}
!42 = !{!43, !37, i64 0}
!43 = !{!"PolyInfo", !37, i64 0, !37, i64 8, !37, i64 16}
!44 = !{!35, !37, i64 24}
!45 = !{!43, !37, i64 8}
!46 = !{!47, !40, i64 32}
!47 = !{!"ScanFillEdge", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !48, i64 34, !48, i64 34, !38, i64 35}
!48 = !{!"int", !38, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!47, !37, i64 0}
!53 = !{!47, !37, i64 16}
!54 = !{!47, !37, i64 24}
!55 = !{!56, !56, i64 0}
!56 = !{!"float", !38, i64 0}
!57 = !{!58, !37, i64 32}
!58 = !{!"ScanFillIsect", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 32}
!59 = !{!60, !40, i64 48}
!60 = !{!"ScanFillVert", !37, i64 0, !37, i64 8, !38, i64 16, !38, i64 24, !38, i64 36, !48, i64 44, !40, i64 48, !38, i64 50, !48, i64 51, !48, i64 51}
!61 = !{!62, !37, i64 16}
!62 = !{!"LinkData", !37, i64 0, !37, i64 8, !37, i64 16}
!63 = distinct !{!63, !50, !51}
!64 = distinct !{!64, !50, !51}
!65 = !{!36, !37, i64 0}
!66 = !{!36, !37, i64 8}
!67 = distinct !{!67, !50, !51}
!68 = distinct !{!68, !50, !51}
!69 = distinct !{!69, !50, !51}
!70 = !{!47, !37, i64 8}
!71 = distinct !{!71, !50, !51}
!72 = distinct !{!72, !50, !51}
!73 = !{!35, !37, i64 16}
!74 = distinct !{!74, !50, !51}
!75 = distinct !{!75, !50, !51}
!76 = distinct !{!76, !50, !51}
!77 = !{!35, !37, i64 0}
!78 = !{!60, !37, i64 0}
!79 = distinct !{!79, !50, !51}
