; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_bevel.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_bevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.EdgeHalf = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, float, float, float, float, i8, i8, i8 }
%struct.BevelParams = type { ptr, ptr, %struct.ProfileSpacing, float, i32, i32, float, i8, i8, i8, i8, ptr, i32, i32 }
%struct.ProfileSpacing = type { ptr, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BevVert = type { ptr, i32, i32, i32, float, i8, i8, ptr, ptr, ptr }
%struct.VMesh = type { ptr, ptr, i32, i32, i32 }
%struct.MDeformVert = type { ptr, i32, i32 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.CustomDataLayer = type { i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr }
%struct._gh_Entry = type { ptr, ptr, ptr }
%struct.BoundVert = type { ptr, ptr, %struct.NewVert, ptr, ptr, ptr, i32, %struct.Profile, i8 }
%struct.NewVert = type { ptr, [3 x float] }
%struct.Profile = type { float, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], ptr, ptr }

@__func__.BM_mesh_bevel = private unnamed_addr constant [14 x i8] c"BM_mesh_bevel\00", align 1
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"BLI_array.vv\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"BLI_array.vf\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"BLI_array.ee\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"BLI_array.vv_fix\00", align 1
@switch.table.cubic_subdiv = private unnamed_addr constant [4 x float] [float 0x3FB0B410C0000000, float 2.500000e-01, float 0x3FD9BA18C0000000, float 0x3FE0BFE220000000], align 4

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_bevel(ptr noundef %0, float noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7, ptr noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
  %12 = alloca %struct.BMIter, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca [32 x ptr], align 16
  %17 = alloca [32 x ptr], align 16
  %18 = alloca [32 x ptr], align 16
  %19 = alloca [16 x ptr], align 16
  %20 = alloca i32, align 4
  %21 = alloca [4 x ptr], align 16
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca [4 x ptr], align 16
  %25 = alloca [4 x ptr], align 16
  %26 = alloca [3 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = alloca [4 x [4 x float]], align 16
  %30 = alloca [4 x float], align 16
  %31 = alloca [3 x float], align 4
  %32 = alloca [3 x float], align 4
  %33 = alloca [3 x float], align 4
  %34 = alloca [3 x float], align 4
  %35 = alloca [3 x float], align 4
  %36 = alloca [3 x float], align 4
  %37 = alloca [4 x float], align 16
  %38 = alloca [4 x [4 x float]], align 16
  %39 = alloca [4 x [4 x float]], align 16
  %40 = alloca [3 x float], align 4
  %41 = alloca [3 x float], align 4
  %42 = alloca [3 x float], align 4
  %43 = alloca [3 x float], align 4
  %44 = alloca ptr, align 8
  %45 = alloca ptr, align 8
  %46 = alloca [32 x ptr], align 16
  %47 = alloca [32 x ptr], align 16
  %48 = alloca [3 x float], align 4
  %49 = alloca ptr, align 8
  %50 = alloca ptr, align 8
  %51 = alloca ptr, align 8
  %52 = alloca %struct.GHashIterator, align 8
  %53 = alloca ptr, align 8
  %54 = alloca ptr, align 8
  %55 = alloca %struct.BMIter, align 8
  %56 = alloca %struct.BMIter, align 8
  %57 = alloca %struct.EdgeHalf, align 8
  %58 = alloca %struct.BMIter, align 8
  %59 = alloca %struct.BMIter, align 8
  %60 = alloca %struct.BMIter, align 8
  %61 = alloca %struct.BevelParams, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %60) #13
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %61) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %61, i8 0, i64 80, i1 false)
  %62 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 3
  store float %1, ptr %62, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 4
  store i32 %2, ptr %63, align 4, !tbaa !42
  %64 = fptosi float %3 to i32
  %65 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 5
  store i32 %64, ptr %65, align 8, !tbaa !43
  %66 = fmul float %4, 4.000000e+00
  %67 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 6
  store float %66, ptr %67, align 4, !tbaa !44
  %68 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 7
  store i8 %5, ptr %68, align 8, !tbaa !45
  %69 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 8
  store i8 %6, ptr %69, align 1, !tbaa !46
  %70 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 9
  store i8 0, ptr %70, align 2, !tbaa !47
  %71 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 10
  store i8 %7, ptr %71, align 1, !tbaa !48
  %72 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 11
  store ptr %8, ptr %72, align 8, !tbaa !49
  %73 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 12
  store i32 %9, ptr %73, align 8, !tbaa !50
  %74 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 13
  store i32 %10, ptr %74, align 4, !tbaa !51
  %75 = fcmp olt float %66, 0x3FE3333340000000
  br i1 %75, label %76, label %77

76:                                               ; preds = %11
  store float 0x3FE3333340000000, ptr %67, align 4, !tbaa !44
  br label %77

77:                                               ; preds = %76, %11
  %78 = fcmp ogt float %1, 0.000000e+00
  br i1 %78, label %79, label %3978

79:                                               ; preds = %77
  %80 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.BM_mesh_bevel) #13
  store ptr %80, ptr %61, align 8, !tbaa !52
  %81 = tail call ptr @BLI_memarena_new(i64 noundef 65528, ptr noundef nonnull @__func__.BM_mesh_bevel) #13
  %82 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 1
  store ptr %81, ptr %82, align 8, !tbaa !53
  tail call void @BLI_memarena_use_calloc(ptr noundef %81) #13
  %83 = load i32, ptr %65, align 8, !tbaa !43
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %121

85:                                               ; preds = %79
  %86 = load ptr, ptr %82, align 8, !tbaa !53
  %87 = add nuw nsw i32 %83, 1
  %88 = zext nneg i32 %87 to i64
  %89 = shl nuw nsw i64 %88, 2
  %90 = tail call ptr @BLI_memarena_alloc(ptr noundef %86, i64 noundef %89) #13
  %91 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 2
  store ptr %90, ptr %91, align 8, !tbaa !54
  %92 = load float, ptr %67, align 4, !tbaa !44
  tail call fastcc void @find_even_superellipse_params(i32 noundef %83, float noundef %92, ptr noundef %90)
  %93 = load i32, ptr %65, align 8, !tbaa !43
  %94 = tail call i32 @llvm.ctpop.i32(i32 %93), !range !55
  %95 = icmp ugt i32 %94, 1
  br i1 %95, label %96, label %104

96:                                               ; preds = %85, %96
  %97 = phi i32 [ %99, %96 ], [ %93, %85 ]
  %98 = add nsw i32 %97, -1
  %99 = and i32 %98, %97
  %100 = tail call i32 @llvm.ctpop.i32(i32 %99), !range !55
  %101 = icmp ugt i32 %100, 1
  br i1 %101, label %96, label %102, !llvm.loop !56

102:                                              ; preds = %96
  %103 = shl nsw i32 %99, 1
  br label %104

104:                                              ; preds = %102, %85
  %105 = phi i32 [ %103, %102 ], [ %93, %85 ]
  %106 = icmp eq i32 %105, 2
  %107 = select i1 %106, i32 4, i32 %105
  %108 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 2, i32 2
  store i32 %107, ptr %108, align 8, !tbaa !59
  %109 = icmp eq i32 %107, %83
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load ptr, ptr %91, align 8, !tbaa !54
  %112 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 2, i32 1
  store ptr %111, ptr %112, align 8, !tbaa !60
  br label %123

113:                                              ; preds = %104
  %114 = load ptr, ptr %82, align 8, !tbaa !53
  %115 = add nsw i32 %107, 1
  %116 = sext i32 %115 to i64
  %117 = shl nsw i64 %116, 2
  %118 = tail call ptr @BLI_memarena_alloc(ptr noundef %114, i64 noundef %117) #13
  %119 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 2, i32 1
  store ptr %118, ptr %119, align 8, !tbaa !60
  %120 = load float, ptr %67, align 4, !tbaa !44
  tail call fastcc void @find_even_superellipse_params(i32 noundef %107, float noundef %120, ptr noundef %118)
  br label %123

121:                                              ; preds = %79
  %122 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %122, i8 0, i64 20, i1 false)
  br label %123

123:                                              ; preds = %110, %113, %121
  %124 = icmp eq i8 %7, 0
  br i1 %124, label %201, label %125

125:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %58) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %59) #13
  %126 = load float, ptr %62, align 8, !tbaa !34
  %127 = load i32, ptr %63, align 4, !tbaa !42
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = fcmp ogt float %126, 5.000000e+01
  %131 = select i1 %130, float 5.000000e+01, float %126
  br label %199

132:                                              ; preds = %125
  %133 = getelementptr inbounds %struct.BMIter, ptr %58, i64 0, i32 4
  store i8 1, ptr %133, align 4, !tbaa !61
  %134 = getelementptr inbounds %struct.BMIter, ptr %58, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %134, align 8, !tbaa !63
  %135 = getelementptr inbounds %struct.BMIter, ptr %58, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %135, align 8, !tbaa !64
  %136 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %137 = load ptr, ptr %136, align 8, !tbaa !65
  store ptr %137, ptr %58, align 8, !tbaa !70
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %58) #13
  %138 = load ptr, ptr %135, align 8, !tbaa !64
  %139 = call ptr %138(ptr noundef nonnull %58) #13
  %140 = icmp eq ptr %139, null
  br i1 %140, label %199, label %141

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.BMIter, ptr %59, i64 0, i32 4
  %143 = getelementptr inbounds %struct.BMIter, ptr %59, i64 0, i32 1
  %144 = getelementptr inbounds %struct.BMIter, ptr %59, i64 0, i32 2
  %145 = getelementptr inbounds %struct.BMIter, ptr %59, i64 0, i32 4
  %146 = getelementptr inbounds %struct.BMIter, ptr %59, i64 0, i32 1
  %147 = getelementptr inbounds %struct.BMIter, ptr %59, i64 0, i32 2
  br label %148

148:                                              ; preds = %141, %194
  %149 = phi float [ %126, %141 ], [ %195, %194 ]
  %150 = phi ptr [ %139, %141 ], [ %197, %194 ]
  %151 = getelementptr inbounds %struct.BMHeader, ptr %150, i64 0, i32 3
  %152 = load i8, ptr %151, align 1, !tbaa !71
  %153 = and i8 %152, 16
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %194, label %155

155:                                              ; preds = %148
  %156 = load i8, ptr %68, align 8, !tbaa !45
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %180

158:                                              ; preds = %155
  store i8 4, ptr %142, align 4, !tbaa !61
  store ptr @bmiter__edge_of_vert_begin, ptr %143, align 8, !tbaa !63
  store ptr @bmiter__edge_of_vert_step, ptr %144, align 8, !tbaa !64
  store ptr %150, ptr %59, align 8, !tbaa !70
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %59) #13
  %159 = load ptr, ptr %144, align 8, !tbaa !64
  %160 = call ptr %159(ptr noundef nonnull %59) #13
  %161 = icmp eq ptr %160, null
  br i1 %161, label %194, label %162

162:                                              ; preds = %158, %176
  %163 = phi ptr [ %178, %176 ], [ %160, %158 ]
  %164 = getelementptr inbounds %struct.BMEdge, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !73
  %166 = icmp eq ptr %165, %150
  %167 = getelementptr inbounds %struct.BMEdge, ptr %163, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !76
  %169 = icmp eq ptr %168, %150
  %170 = select i1 %169, ptr %165, ptr null
  %171 = select i1 %166, ptr %168, ptr %170
  %172 = getelementptr inbounds %struct.BMHeader, ptr %171, i64 0, i32 3
  %173 = load i8, ptr %172, align 1, !tbaa !71
  %174 = and i8 %173, 16
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %162
  %177 = load ptr, ptr %144, align 8, !tbaa !64
  %178 = call ptr %177(ptr noundef nonnull %59) #13
  %179 = icmp eq ptr %178, null
  br i1 %179, label %194, label %162, !llvm.loop !77

180:                                              ; preds = %162, %155
  store i8 4, ptr %145, align 4, !tbaa !61
  store ptr @bmiter__edge_of_vert_begin, ptr %146, align 8, !tbaa !63
  store ptr @bmiter__edge_of_vert_step, ptr %147, align 8, !tbaa !64
  store ptr %150, ptr %59, align 8, !tbaa !70
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %59) #13
  %181 = load ptr, ptr %147, align 8, !tbaa !64
  %182 = call ptr %181(ptr noundef nonnull %59) #13
  %183 = icmp eq ptr %182, null
  br i1 %183, label %194, label %184

184:                                              ; preds = %180, %184
  %185 = phi float [ %190, %184 ], [ %149, %180 ]
  %186 = phi ptr [ %192, %184 ], [ %182, %180 ]
  %187 = call float @BM_edge_calc_length(ptr noundef nonnull %186) #13
  %188 = fmul float %187, 5.000000e-01
  %189 = fcmp olt float %188, %185
  %190 = select i1 %189, float %188, float %185
  %191 = load ptr, ptr %147, align 8, !tbaa !64
  %192 = call ptr %191(ptr noundef nonnull %59) #13
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %184, !llvm.loop !78

194:                                              ; preds = %176, %184, %158, %180, %148
  %195 = phi float [ %149, %148 ], [ %149, %180 ], [ %149, %158 ], [ %190, %184 ], [ %149, %176 ]
  %196 = load ptr, ptr %135, align 8, !tbaa !64
  %197 = call ptr %196(ptr noundef nonnull %58) #13
  %198 = icmp eq ptr %197, null
  br i1 %198, label %199, label %148, !llvm.loop !79

199:                                              ; preds = %194, %132, %129
  %200 = phi float [ %131, %129 ], [ %126, %132 ], [ %195, %194 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %59) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %58) #13
  store float %200, ptr %62, align 8, !tbaa !34
  br label %201

201:                                              ; preds = %199, %123
  %202 = getelementptr inbounds %struct.BMIter, ptr %60, i64 0, i32 4
  store i8 1, ptr %202, align 4, !tbaa !61
  %203 = getelementptr inbounds %struct.BMIter, ptr %60, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %203, align 8, !tbaa !63
  %204 = getelementptr inbounds %struct.BMIter, ptr %60, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %204, align 8, !tbaa !64
  %205 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %206 = load ptr, ptr %205, align 8, !tbaa !65
  store ptr %206, ptr %60, align 8, !tbaa !70
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %60) #13
  %207 = load ptr, ptr %204, align 8, !tbaa !64
  %208 = call ptr %207(ptr noundef nonnull %60) #13
  %209 = icmp eq ptr %208, null
  br i1 %209, label %857, label %210

210:                                              ; preds = %201
  %211 = getelementptr inbounds %struct.BMIter, ptr %55, i64 0, i32 4
  %212 = getelementptr inbounds %struct.BMIter, ptr %55, i64 0, i32 1
  %213 = getelementptr inbounds %struct.BMIter, ptr %55, i64 0, i32 2
  %214 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %215 = getelementptr inbounds %struct.BMIter, ptr %56, i64 0, i32 4
  %216 = getelementptr inbounds %struct.BMIter, ptr %56, i64 0, i32 1
  %217 = getelementptr inbounds %struct.BMIter, ptr %56, i64 0, i32 2
  %218 = getelementptr inbounds %struct.BMIter, ptr %56, i64 0, i32 4
  %219 = getelementptr inbounds %struct.BMIter, ptr %56, i64 0, i32 1
  %220 = getelementptr inbounds %struct.BMIter, ptr %56, i64 0, i32 2
  %221 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %222 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %223 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26, i32 2
  br label %224

224:                                              ; preds = %210, %853
  %225 = phi ptr [ %208, %210 ], [ %855, %853 ]
  %226 = getelementptr inbounds %struct.BMHeader, ptr %225, i64 0, i32 3
  %227 = load i8, ptr %226, align 1, !tbaa !71
  %228 = and i8 %227, 16
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %853, label %230

230:                                              ; preds = %224
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %55) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %56) #13
  store i8 4, ptr %211, align 4, !tbaa !61
  store ptr @bmiter__edge_of_vert_begin, ptr %212, align 8, !tbaa !63
  store ptr @bmiter__edge_of_vert_step, ptr %213, align 8, !tbaa !64
  store ptr %225, ptr %55, align 8, !tbaa !70
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %55) #13
  %231 = load ptr, ptr %213, align 8, !tbaa !64
  %232 = call ptr %231(ptr noundef nonnull %55) #13
  %233 = icmp eq ptr %232, null
  br i1 %233, label %275, label %234

234:                                              ; preds = %230, %270
  %235 = phi ptr [ %273, %270 ], [ %232, %230 ]
  %236 = phi i32 [ %271, %270 ], [ 0, %230 ]
  %237 = phi i32 [ %262, %270 ], [ 0, %230 ]
  %238 = phi i32 [ %254, %270 ], [ 0, %230 ]
  %239 = phi ptr [ %257, %270 ], [ null, %230 ]
  %240 = call i32 @BM_edge_face_count(ptr noundef nonnull %235) #13
  %241 = getelementptr inbounds %struct.BMHeader, ptr %235, i64 0, i32 4
  %242 = load i8, ptr %241, align 2, !tbaa !80
  %243 = and i8 %242, -5
  store i8 %243, ptr %241, align 2, !tbaa !80
  %244 = getelementptr inbounds %struct.BMHeader, ptr %235, i64 0, i32 3
  %245 = load i8, ptr %244, align 1, !tbaa !71
  %246 = and i8 %245, 16
  %247 = icmp ne i8 %246, 0
  %248 = load i8, ptr %68, align 8
  %249 = icmp eq i8 %248, 0
  %250 = select i1 %247, i1 %249, i1 false
  %251 = icmp eq ptr %239, null
  %252 = select i1 %250, i1 %251, i1 false
  %253 = zext i1 %250 to i32
  %254 = add nuw nsw i32 %238, %253
  %255 = icmp eq i32 %240, 1
  %256 = select i1 %255, i1 true, i1 %252
  %257 = select i1 %256, ptr %235, ptr %239
  %258 = icmp sgt i32 %240, 0
  %259 = icmp ne i8 %248, 0
  %260 = select i1 %258, i1 true, i1 %259
  %261 = zext i1 %260 to i32
  %262 = add nuw nsw i32 %237, %261
  %263 = getelementptr inbounds %struct.BMEdge, ptr %235, i64 0, i32 4
  %264 = load ptr, ptr %263, align 8, !tbaa !81
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %270

266:                                              ; preds = %234
  %267 = add nsw i32 %236, 1
  br i1 %249, label %268, label %270

268:                                              ; preds = %266
  %269 = or i8 %242, 4
  store i8 %269, ptr %241, align 2, !tbaa !80
  br label %270

270:                                              ; preds = %268, %266, %234
  %271 = phi i32 [ %267, %266 ], [ %267, %268 ], [ %236, %234 ]
  %272 = load ptr, ptr %213, align 8, !tbaa !64
  %273 = call ptr %272(ptr noundef nonnull %55) #13
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %234, !llvm.loop !82

275:                                              ; preds = %270, %230
  %276 = phi ptr [ null, %230 ], [ %257, %270 ]
  %277 = phi i32 [ 0, %230 ], [ %254, %270 ]
  %278 = phi i32 [ 0, %230 ], [ %262, %270 ]
  %279 = phi i32 [ 0, %230 ], [ %271, %270 ]
  %280 = icmp eq ptr %276, null
  br i1 %280, label %281, label %284

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.BMVert, ptr %225, i64 0, i32 4
  %283 = load ptr, ptr %282, align 8, !tbaa !83
  br label %284

284:                                              ; preds = %281, %275
  %285 = phi ptr [ %276, %275 ], [ %283, %281 ]
  %286 = icmp eq i32 %277, 0
  %287 = load i8, ptr %68, align 8
  %288 = icmp eq i8 %287, 0
  %289 = select i1 %286, i1 %288, i1 false
  br i1 %289, label %846, label %290

290:                                              ; preds = %284
  %291 = icmp ugt i32 %278, 1
  %292 = select i1 %291, i1 true, i1 %288
  br i1 %292, label %293, label %846

293:                                              ; preds = %290
  %294 = load ptr, ptr %82, align 8, !tbaa !53
  %295 = call ptr @BLI_memarena_alloc(ptr noundef %294, i64 noundef 56) #13
  store ptr %225, ptr %295, align 8, !tbaa !85
  %296 = getelementptr inbounds %struct.BevVert, ptr %295, i64 0, i32 1
  store i32 %278, ptr %296, align 8, !tbaa !87
  %297 = getelementptr inbounds %struct.BevVert, ptr %295, i64 0, i32 2
  store i32 %277, ptr %297, align 4, !tbaa !88
  %298 = getelementptr inbounds %struct.BevVert, ptr %295, i64 0, i32 3
  store i32 %279, ptr %298, align 8, !tbaa !89
  %299 = load float, ptr %62, align 8, !tbaa !34
  %300 = getelementptr inbounds %struct.BevVert, ptr %295, i64 0, i32 4
  store float %299, ptr %300, align 4, !tbaa !90
  %301 = load ptr, ptr %82, align 8, !tbaa !53
  %302 = zext nneg i32 %278 to i64
  %303 = mul nuw nsw i64 %302, 80
  %304 = call ptr @BLI_memarena_alloc(ptr noundef %301, i64 noundef %303) #13
  %305 = getelementptr inbounds %struct.BevVert, ptr %295, i64 0, i32 7
  store ptr %304, ptr %305, align 8, !tbaa !91
  %306 = icmp eq i32 %279, 0
  br i1 %306, label %312, label %307

307:                                              ; preds = %293
  %308 = load ptr, ptr %82, align 8, !tbaa !53
  %309 = sext i32 %279 to i64
  %310 = shl nsw i64 %309, 3
  %311 = call ptr @BLI_memarena_alloc(ptr noundef %308, i64 noundef %310) #13
  br label %312

312:                                              ; preds = %293, %307
  %313 = phi ptr [ %311, %307 ], [ null, %293 ]
  %314 = getelementptr inbounds %struct.BevVert, ptr %295, i64 0, i32 8
  store ptr %313, ptr %314, align 8, !tbaa !92
  %315 = load ptr, ptr %82, align 8, !tbaa !53
  %316 = call ptr @BLI_memarena_alloc(ptr noundef %315, i64 noundef 32) #13
  %317 = getelementptr inbounds %struct.BevVert, ptr %295, i64 0, i32 9
  store ptr %316, ptr %317, align 8, !tbaa !93
  %318 = load i32, ptr %65, align 8, !tbaa !43
  %319 = getelementptr inbounds %struct.VMesh, ptr %316, i64 0, i32 3
  store i32 %318, ptr %319, align 4, !tbaa !94
  %320 = load i8, ptr %68, align 8, !tbaa !45
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %344, label %322

322:                                              ; preds = %312
  %323 = load ptr, ptr %72, align 8, !tbaa !49
  %324 = icmp eq ptr %323, null
  br i1 %324, label %335, label %325

325:                                              ; preds = %322
  %326 = load i32, ptr %73, align 8, !tbaa !50
  %327 = icmp eq i32 %326, -1
  br i1 %327, label %335, label %328

328:                                              ; preds = %325
  %329 = getelementptr inbounds %struct.BMHeader, ptr %225, i64 0, i32 1
  %330 = load i32, ptr %329, align 8, !tbaa !96
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.MDeformVert, ptr %323, i64 %331
  %333 = call float @defvert_find_weight(ptr noundef nonnull %332, i32 noundef %326) #13
  %334 = fcmp ugt float %333, 0.000000e+00
  br i1 %334, label %340, label %846

335:                                              ; preds = %325, %322
  %336 = load i8, ptr %69, align 1, !tbaa !46
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %344, label %338

338:                                              ; preds = %335
  %339 = call float @BM_elem_float_data_get(ptr noundef nonnull %214, ptr noundef nonnull %225, i32 noundef 29) #13
  br label %340

340:                                              ; preds = %328, %338
  %341 = phi float [ %339, %338 ], [ %333, %328 ]
  %342 = load float, ptr %300, align 4, !tbaa !90
  %343 = fmul float %341, %342
  store float %343, ptr %300, align 4, !tbaa !90
  br label %344

344:                                              ; preds = %340, %335, %312
  %345 = load ptr, ptr %61, align 8, !tbaa !52
  call void @BLI_ghash_insert(ptr noundef %345, ptr noundef nonnull %225, ptr noundef nonnull %295) #13
  %346 = getelementptr inbounds %struct.BMHeader, ptr %285, i64 0, i32 4
  %347 = load i8, ptr %346, align 2, !tbaa !80
  %348 = or i8 %347, 4
  store i8 %348, ptr %346, align 2, !tbaa !80
  %349 = load ptr, ptr %305, align 8, !tbaa !91
  %350 = getelementptr inbounds %struct.EdgeHalf, ptr %349, i64 0, i32 2
  store ptr %285, ptr %350, align 8, !tbaa !97
  %351 = icmp eq i32 %278, 0
  br i1 %351, label %439, label %352

352:                                              ; preds = %344
  %353 = zext i32 %278 to i64
  br label %354

354:                                              ; preds = %352, %429
  %355 = phi i64 [ 0, %352 ], [ %437, %429 ]
  %356 = phi ptr [ %285, %352 ], [ %414, %429 ]
  %357 = phi ptr [ %349, %352 ], [ %412, %429 ]
  %358 = phi ptr [ undef, %352 ], [ %411, %429 ]
  %359 = icmp eq i64 %355, 0
  br i1 %359, label %410, label %360

360:                                              ; preds = %354
  store i8 4, ptr %211, align 4, !tbaa !61
  store ptr @bmiter__edge_of_vert_begin, ptr %212, align 8, !tbaa !63
  store ptr @bmiter__edge_of_vert_step, ptr %213, align 8, !tbaa !64
  store ptr %225, ptr %55, align 8, !tbaa !70
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %55) #13
  %361 = load ptr, ptr %213, align 8, !tbaa !64
  %362 = call ptr %361(ptr noundef nonnull %55) #13
  %363 = icmp eq ptr %362, null
  br i1 %363, label %398, label %364

364:                                              ; preds = %360
  %365 = getelementptr inbounds %struct.BMEdge, ptr %356, i64 0, i32 4
  br label %366

366:                                              ; preds = %364, %392
  %367 = phi i1 [ %363, %364 ], [ %397, %392 ]
  %368 = phi ptr [ %362, %364 ], [ %396, %392 ]
  %369 = phi ptr [ null, %364 ], [ %394, %392 ]
  %370 = phi ptr [ %358, %364 ], [ %393, %392 ]
  %371 = getelementptr inbounds %struct.BMHeader, ptr %368, i64 0, i32 4
  %372 = load i8, ptr %371, align 2, !tbaa !80
  %373 = and i8 %372, 4
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %375, label %392

375:                                              ; preds = %366
  %376 = icmp eq ptr %369, null
  %377 = select i1 %376, ptr %368, ptr %369
  %378 = load ptr, ptr %365, align 8, !tbaa !81
  %379 = icmp eq ptr %378, null
  br i1 %379, label %392, label %380

380:                                              ; preds = %375
  store i8 8, ptr %215, align 4, !tbaa !61
  store ptr @bmiter__face_of_edge_begin, ptr %216, align 8, !tbaa !63
  store ptr @bmiter__face_of_edge_step, ptr %217, align 8, !tbaa !64
  store ptr %368, ptr %56, align 8, !tbaa !70
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %56) #13
  %381 = load ptr, ptr %217, align 8, !tbaa !64
  %382 = call ptr %381(ptr noundef nonnull %56) #13
  %383 = icmp eq ptr %382, null
  br i1 %383, label %392, label %384

384:                                              ; preds = %380, %388
  %385 = phi ptr [ %390, %388 ], [ %382, %380 ]
  %386 = call ptr @BM_face_edge_share_loop(ptr noundef nonnull %385, ptr noundef %356) #13
  %387 = icmp eq ptr %386, null
  br i1 %387, label %388, label %398

388:                                              ; preds = %384
  %389 = load ptr, ptr %217, align 8, !tbaa !64
  %390 = call ptr %389(ptr noundef nonnull %56) #13
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %384, !llvm.loop !99

392:                                              ; preds = %388, %380, %375, %366
  %393 = phi ptr [ %370, %366 ], [ %370, %375 ], [ %382, %380 ], [ %390, %388 ]
  %394 = phi ptr [ %369, %366 ], [ %377, %375 ], [ %377, %380 ], [ %377, %388 ]
  %395 = load ptr, ptr %213, align 8, !tbaa !64
  %396 = call ptr %395(ptr noundef nonnull %55) #13
  %397 = icmp eq ptr %396, null
  br i1 %397, label %398, label %366, !llvm.loop !100

398:                                              ; preds = %392, %384, %360
  %399 = phi ptr [ %362, %360 ], [ %368, %384 ], [ %396, %392 ]
  %400 = phi i1 [ %363, %360 ], [ %367, %384 ], [ %397, %392 ]
  %401 = phi ptr [ %358, %360 ], [ %385, %384 ], [ %393, %392 ]
  %402 = phi ptr [ null, %360 ], [ %377, %384 ], [ %394, %392 ]
  %403 = load ptr, ptr %305, align 8, !tbaa !91
  %404 = getelementptr %struct.EdgeHalf, ptr %403, i64 %355
  %405 = getelementptr inbounds %struct.EdgeHalf, ptr %403, i64 %355, i32 2
  br i1 %400, label %409, label %406

406:                                              ; preds = %398
  store ptr %399, ptr %405, align 8, !tbaa !97
  %407 = getelementptr inbounds %struct.EdgeHalf, ptr %403, i64 %355, i32 3
  store ptr %401, ptr %407, align 8, !tbaa !101
  %408 = getelementptr %struct.EdgeHalf, ptr %404, i64 -1, i32 4
  store ptr %401, ptr %408, align 8, !tbaa !102
  br label %410

409:                                              ; preds = %398
  store ptr %402, ptr %405, align 8, !tbaa !97
  br label %410

410:                                              ; preds = %409, %406, %354
  %411 = phi ptr [ %401, %406 ], [ %401, %409 ], [ %358, %354 ]
  %412 = phi ptr [ %404, %406 ], [ %404, %409 ], [ %357, %354 ]
  %413 = getelementptr inbounds %struct.EdgeHalf, ptr %412, i64 0, i32 2
  %414 = load ptr, ptr %413, align 8, !tbaa !97
  %415 = getelementptr inbounds %struct.BMHeader, ptr %414, i64 0, i32 4
  %416 = load i8, ptr %415, align 2, !tbaa !80
  %417 = or i8 %416, 4
  store i8 %417, ptr %415, align 2, !tbaa !80
  %418 = getelementptr inbounds %struct.BMHeader, ptr %414, i64 0, i32 3
  %419 = load i8, ptr %418, align 1, !tbaa !71
  %420 = and i8 %419, 16
  %421 = icmp ne i8 %420, 0
  %422 = load i8, ptr %68, align 8
  %423 = icmp eq i8 %422, 0
  %424 = select i1 %421, i1 %423, i1 false
  %425 = getelementptr inbounds %struct.EdgeHalf, ptr %412, i64 0, i32 12
  br i1 %424, label %426, label %428

426:                                              ; preds = %410
  store i8 1, ptr %425, align 4, !tbaa !103
  %427 = load i32, ptr %65, align 8, !tbaa !43
  br label %429

428:                                              ; preds = %410
  store i8 0, ptr %425, align 4, !tbaa !103
  br label %429

429:                                              ; preds = %428, %426
  %430 = phi i32 [ 0, %428 ], [ %427, %426 ]
  %431 = getelementptr inbounds %struct.EdgeHalf, ptr %412, i64 0, i32 7
  store i32 %430, ptr %431, align 8, !tbaa !104
  %432 = getelementptr inbounds %struct.BMEdge, ptr %414, i64 0, i32 3
  %433 = load ptr, ptr %432, align 8, !tbaa !76
  %434 = icmp eq ptr %433, %225
  %435 = zext i1 %434 to i8
  %436 = getelementptr inbounds %struct.EdgeHalf, ptr %412, i64 0, i32 13
  store i8 %435, ptr %436, align 1, !tbaa !105
  %437 = add nuw nsw i64 %355, 1
  %438 = icmp eq i64 %437, %353
  br i1 %438, label %439, label %354, !llvm.loop !106

439:                                              ; preds = %429, %344
  %440 = phi ptr [ %285, %344 ], [ %414, %429 ]
  store i8 8, ptr %218, align 4, !tbaa !61
  store ptr @bmiter__face_of_edge_begin, ptr %219, align 8, !tbaa !63
  store ptr @bmiter__face_of_edge_step, ptr %220, align 8, !tbaa !64
  store ptr %440, ptr %56, align 8, !tbaa !70
  call void @bmiter__face_of_edge_begin(ptr noundef nonnull %56) #13
  %441 = load ptr, ptr %220, align 8, !tbaa !64
  %442 = call ptr %441(ptr noundef nonnull %56) #13
  %443 = icmp eq ptr %442, null
  br i1 %443, label %468, label %444

444:                                              ; preds = %439, %464
  %445 = phi ptr [ %466, %464 ], [ %442, %439 ]
  %446 = load ptr, ptr %305, align 8, !tbaa !91
  %447 = getelementptr inbounds %struct.EdgeHalf, ptr %446, i64 0, i32 2
  %448 = load ptr, ptr %447, align 8, !tbaa !97
  %449 = getelementptr inbounds %struct.BMEdge, ptr %448, i64 0, i32 4
  %450 = load ptr, ptr %449, align 8, !tbaa !81
  %451 = icmp eq ptr %450, null
  br i1 %451, label %464, label %452

452:                                              ; preds = %444
  %453 = call ptr @BM_face_edge_share_loop(ptr noundef nonnull %445, ptr noundef %448) #13
  %454 = icmp eq ptr %453, null
  br i1 %454, label %464, label %455

455:                                              ; preds = %452
  %456 = load ptr, ptr %305, align 8, !tbaa !91
  %457 = getelementptr inbounds %struct.EdgeHalf, ptr %456, i64 0, i32 4
  %458 = load ptr, ptr %457, align 8, !tbaa !102
  %459 = icmp eq ptr %458, %445
  br i1 %459, label %464, label %460

460:                                              ; preds = %455
  %461 = getelementptr %struct.EdgeHalf, ptr %456, i64 %302
  %462 = getelementptr %struct.EdgeHalf, ptr %461, i64 -1, i32 4
  store ptr %445, ptr %462, align 8, !tbaa !102
  %463 = getelementptr inbounds %struct.EdgeHalf, ptr %456, i64 0, i32 3
  store ptr %445, ptr %463, align 8, !tbaa !101
  br label %468

464:                                              ; preds = %455, %452, %444
  %465 = load ptr, ptr %220, align 8, !tbaa !64
  %466 = call ptr %465(ptr noundef nonnull %56) #13
  %467 = icmp eq ptr %466, null
  br i1 %467, label %468, label %444, !llvm.loop !107

468:                                              ; preds = %464, %439, %460
  store i8 4, ptr %211, align 4, !tbaa !61
  store ptr @bmiter__edge_of_vert_begin, ptr %212, align 8, !tbaa !63
  store ptr @bmiter__edge_of_vert_step, ptr %213, align 8, !tbaa !64
  store ptr %225, ptr %55, align 8, !tbaa !70
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %55) #13
  %469 = load ptr, ptr %213, align 8, !tbaa !64
  %470 = call ptr %469(ptr noundef nonnull %55) #13
  %471 = icmp eq ptr %470, null
  br i1 %471, label %480, label %472

472:                                              ; preds = %468, %472
  %473 = phi ptr [ %478, %472 ], [ %470, %468 ]
  %474 = getelementptr inbounds %struct.BMHeader, ptr %473, i64 0, i32 4
  %475 = load i8, ptr %474, align 2, !tbaa !80
  %476 = and i8 %475, -5
  store i8 %476, ptr %474, align 2, !tbaa !80
  %477 = load ptr, ptr %213, align 8, !tbaa !64
  %478 = call ptr %477(ptr noundef nonnull %55) #13
  %479 = icmp eq ptr %478, null
  br i1 %479, label %480, label %472, !llvm.loop !108

480:                                              ; preds = %472, %468
  br i1 %291, label %481, label %550

481:                                              ; preds = %480
  %482 = zext i32 %278 to i64
  %483 = zext i32 %278 to i64
  br label %484

484:                                              ; preds = %481, %510
  %485 = phi i64 [ 0, %481 ], [ %488, %510 ]
  %486 = phi i32 [ 0, %481 ], [ %512, %510 ]
  %487 = load ptr, ptr %305, align 8, !tbaa !91
  %488 = add nuw nsw i64 %485, 1
  %489 = getelementptr inbounds %struct.EdgeHalf, ptr %487, i64 %485, i32 4
  %490 = load ptr, ptr %489, align 8, !tbaa !102
  %491 = icmp eq ptr %490, null
  br i1 %491, label %510, label %492

492:                                              ; preds = %484
  %493 = icmp eq i64 %488, %482
  %494 = and i64 %488, 4294967295
  %495 = select i1 %493, i64 0, i64 %494
  %496 = getelementptr inbounds %struct.EdgeHalf, ptr %487, i64 %495, i32 2
  %497 = load ptr, ptr %496, align 8, !tbaa !97
  %498 = getelementptr inbounds %struct.EdgeHalf, ptr %487, i64 %485, i32 2
  %499 = load ptr, ptr %498, align 8, !tbaa !97
  %500 = call ptr @BM_face_edge_share_loop(ptr noundef nonnull %490, ptr noundef %499) #13
  %501 = call ptr @BM_face_edge_share_loop(ptr noundef nonnull %490, ptr noundef %497) #13
  %502 = icmp ne ptr %500, null
  %503 = icmp ne ptr %501, null
  %504 = select i1 %502, i1 %503, i1 false
  br i1 %504, label %505, label %510

505:                                              ; preds = %492
  %506 = getelementptr inbounds %struct.BMLoop, ptr %501, i64 0, i32 6
  %507 = load ptr, ptr %506, align 8, !tbaa !109
  %508 = icmp eq ptr %507, %500
  %509 = select i1 %508, i32 1, i32 -1
  br label %510

510:                                              ; preds = %505, %492, %484
  %511 = phi i32 [ %509, %505 ], [ 0, %484 ], [ 0, %492 ]
  %512 = add nsw i32 %511, %486
  %513 = icmp eq i64 %488, %483
  br i1 %513, label %514, label %484, !llvm.loop !111

514:                                              ; preds = %510
  %515 = icmp slt i32 %512, 0
  br i1 %515, label %516, label %550

516:                                              ; preds = %514
  %517 = lshr i32 %278, 1
  %518 = sext i32 %278 to i64
  %519 = zext nneg i32 %517 to i64
  br label %520

520:                                              ; preds = %516, %520
  %521 = phi i64 [ 0, %516 ], [ %538, %520 ]
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %57)
  %522 = load ptr, ptr %305, align 8, !tbaa !91
  %523 = getelementptr inbounds %struct.EdgeHalf, ptr %522, i64 %521
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %57, ptr noundef nonnull align 8 dereferenceable(80) %523, i64 80, i1 false), !tbaa.struct !112
  %524 = xor i64 %521, -1
  %525 = add nsw i64 %518, %524
  %526 = getelementptr inbounds %struct.EdgeHalf, ptr %522, i64 %525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %523, ptr noundef nonnull align 8 dereferenceable(80) %526, i64 80, i1 false), !tbaa.struct !112
  %527 = load ptr, ptr %305, align 8, !tbaa !91
  %528 = getelementptr inbounds %struct.EdgeHalf, ptr %527, i64 %525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %528, ptr noundef nonnull align 8 dereferenceable(80) %57, i64 80, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %57)
  %529 = load ptr, ptr %305, align 8, !tbaa !91
  %530 = getelementptr inbounds %struct.EdgeHalf, ptr %529, i64 %521, i32 3
  %531 = load ptr, ptr %530, align 8, !tbaa !101
  %532 = getelementptr inbounds %struct.EdgeHalf, ptr %529, i64 %521, i32 4
  %533 = load ptr, ptr %532, align 8, !tbaa !102
  store ptr %533, ptr %530, align 8, !tbaa !101
  store ptr %531, ptr %532, align 8, !tbaa !102
  %534 = getelementptr inbounds %struct.EdgeHalf, ptr %529, i64 %525, i32 3
  %535 = load ptr, ptr %534, align 8, !tbaa !101
  %536 = getelementptr inbounds %struct.EdgeHalf, ptr %529, i64 %525, i32 4
  %537 = load ptr, ptr %536, align 8, !tbaa !102
  store ptr %537, ptr %534, align 8, !tbaa !101
  store ptr %535, ptr %536, align 8, !tbaa !102
  %538 = add nuw nsw i64 %521, 1
  %539 = icmp eq i64 %538, %519
  br i1 %539, label %540, label %520, !llvm.loop !116

540:                                              ; preds = %520
  %541 = and i32 %278, 1
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %550, label %543

543:                                              ; preds = %540
  %544 = load ptr, ptr %305, align 8, !tbaa !91
  %545 = zext nneg i32 %517 to i64
  %546 = getelementptr inbounds %struct.EdgeHalf, ptr %544, i64 %545, i32 3
  %547 = load ptr, ptr %546, align 8, !tbaa !101
  %548 = getelementptr inbounds %struct.EdgeHalf, ptr %544, i64 %545, i32 4
  %549 = load ptr, ptr %548, align 8, !tbaa !102
  store ptr %549, ptr %546, align 8, !tbaa !101
  store ptr %547, ptr %548, align 8, !tbaa !102
  br label %550

550:                                              ; preds = %543, %540, %514, %480
  %551 = icmp eq i32 %278, 0
  br i1 %551, label %823, label %552

552:                                              ; preds = %550
  %553 = load ptr, ptr %305, align 8, !tbaa !91
  %554 = add i32 %278, -1
  %555 = getelementptr inbounds %struct.BMVert, ptr %225, i64 0, i32 2
  br label %556

556:                                              ; preds = %552, %818
  %557 = phi i32 [ 0, %552 ], [ %560, %818 ]
  %558 = phi ptr [ %553, %552 ], [ %821, %818 ]
  %559 = load ptr, ptr %305, align 8, !tbaa !91
  %560 = add nuw i32 %557, 1
  %561 = icmp eq i32 %560, %278
  %562 = select i1 %561, i32 0, i32 %560
  %563 = zext nneg i32 %562 to i64
  %564 = getelementptr inbounds %struct.EdgeHalf, ptr %559, i64 %563
  store ptr %564, ptr %558, align 8, !tbaa !117
  %565 = add i32 %554, %557
  %566 = srem i32 %565, %278
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds %struct.EdgeHalf, ptr %559, i64 %567
  %569 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 1
  store ptr %568, ptr %569, align 8, !tbaa !118
  %570 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 12
  %571 = load i8, ptr %570, align 4, !tbaa !103
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %719, label %573

573:                                              ; preds = %556
  %574 = load i32, ptr %63, align 4, !tbaa !42
  switch i32 %574, label %696 [
    i32 0, label %575
    i32 1, label %578
    i32 2, label %604
    i32 3, label %629
  ]

575:                                              ; preds = %573
  %576 = load float, ptr %62, align 8, !tbaa !34
  %577 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 10
  store float %576, ptr %577, align 4, !tbaa !119
  br label %699

578:                                              ; preds = %573
  %579 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 3
  %580 = load ptr, ptr %579, align 8, !tbaa !101
  %581 = icmp eq ptr %580, null
  br i1 %581, label %591, label %582

582:                                              ; preds = %578
  %583 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 4
  %584 = load ptr, ptr %583, align 8, !tbaa !102
  %585 = icmp eq ptr %584, null
  br i1 %585, label %591, label %586

586:                                              ; preds = %582
  %587 = getelementptr inbounds %struct.BMFace, ptr %580, i64 0, i32 4
  %588 = getelementptr inbounds %struct.BMFace, ptr %584, i64 0, i32 4
  %589 = call float @angle_normalized_v3v3(ptr noundef nonnull %587, ptr noundef nonnull %588) #13
  %590 = fsub float 0x400921FB60000000, %589
  br label %591

591:                                              ; preds = %586, %582, %578
  %592 = phi float [ %590, %586 ], [ 0.000000e+00, %582 ], [ 0.000000e+00, %578 ]
  %593 = fmul float %592, 5.000000e-01
  %594 = call float @sinf(float noundef %593) #13
  %595 = fmul float %594, 2.000000e+00
  %596 = call float @llvm.fabs.f32(float %595)
  %597 = fcmp olt float %596, 0x3EB0C6F7A0000000
  %598 = load float, ptr %62, align 8, !tbaa !34
  %599 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 10
  br i1 %597, label %600, label %602

600:                                              ; preds = %591
  %601 = fmul float %598, 0x3F847AE140000000
  store float %601, ptr %599, align 4, !tbaa !119
  br label %699

602:                                              ; preds = %591
  %603 = fdiv float %598, %596
  store float %603, ptr %599, align 4, !tbaa !119
  br label %699

604:                                              ; preds = %573
  %605 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 3
  %606 = load ptr, ptr %605, align 8, !tbaa !101
  %607 = icmp eq ptr %606, null
  br i1 %607, label %617, label %608

608:                                              ; preds = %604
  %609 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 4
  %610 = load ptr, ptr %609, align 8, !tbaa !102
  %611 = icmp eq ptr %610, null
  br i1 %611, label %617, label %612

612:                                              ; preds = %608
  %613 = getelementptr inbounds %struct.BMFace, ptr %606, i64 0, i32 4
  %614 = getelementptr inbounds %struct.BMFace, ptr %610, i64 0, i32 4
  %615 = call float @angle_normalized_v3v3(ptr noundef nonnull %613, ptr noundef nonnull %614) #13
  %616 = fsub float 0x400921FB60000000, %615
  br label %617

617:                                              ; preds = %612, %608, %604
  %618 = phi float [ %616, %612 ], [ 0.000000e+00, %608 ], [ 0.000000e+00, %604 ]
  %619 = fmul float %618, 5.000000e-01
  %620 = call float @cosf(float noundef %619) #13
  %621 = call float @llvm.fabs.f32(float %620)
  %622 = fcmp olt float %621, 0x3EB0C6F7A0000000
  %623 = load float, ptr %62, align 8, !tbaa !34
  %624 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 10
  br i1 %622, label %625, label %627

625:                                              ; preds = %617
  %626 = fmul float %623, 0x3F847AE140000000
  store float %626, ptr %624, align 4, !tbaa !119
  br label %699

627:                                              ; preds = %617
  %628 = fdiv float %623, %621
  store float %628, ptr %624, align 4, !tbaa !119
  br label %699

629:                                              ; preds = %573
  %630 = getelementptr inbounds %struct.EdgeHalf, ptr %559, i64 %567, i32 2
  %631 = load ptr, ptr %630, align 8, !tbaa !97
  %632 = getelementptr inbounds %struct.BMEdge, ptr %631, i64 0, i32 2
  %633 = load ptr, ptr %632, align 8, !tbaa !73
  %634 = icmp eq ptr %633, %225
  %635 = getelementptr inbounds %struct.BMEdge, ptr %631, i64 0, i32 3
  %636 = load ptr, ptr %635, align 8, !tbaa !76
  %637 = icmp eq ptr %636, %225
  %638 = select i1 %637, ptr %633, ptr null
  %639 = select i1 %634, ptr %636, ptr %638
  %640 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 2
  %641 = load ptr, ptr %640, align 8, !tbaa !97
  %642 = getelementptr inbounds %struct.BMEdge, ptr %641, i64 0, i32 2
  %643 = load ptr, ptr %642, align 8, !tbaa !73
  %644 = icmp eq ptr %643, %225
  %645 = getelementptr inbounds %struct.BMEdge, ptr %641, i64 0, i32 3
  %646 = load ptr, ptr %645, align 8, !tbaa !76
  %647 = icmp eq ptr %646, %225
  %648 = select i1 %647, ptr %643, ptr null
  %649 = select i1 %644, ptr %646, ptr %648
  %650 = getelementptr inbounds %struct.BMVert, ptr %639, i64 0, i32 2
  %651 = getelementptr inbounds %struct.BMVert, ptr %649, i64 0, i32 2
  %652 = call float @angle_v3v3v3(ptr noundef nonnull %650, ptr noundef nonnull %555, ptr noundef nonnull %651) #13
  %653 = call float @sinf(float noundef %652) #13
  %654 = load ptr, ptr %569, align 8, !tbaa !118
  %655 = getelementptr inbounds %struct.EdgeHalf, ptr %654, i64 0, i32 2
  %656 = load ptr, ptr %655, align 8, !tbaa !97
  %657 = call float @BM_edge_calc_length(ptr noundef %656) #13
  %658 = load float, ptr %62, align 8, !tbaa !34
  %659 = fmul float %657, %658
  %660 = fmul float %653, %659
  %661 = fdiv float %660, 1.000000e+02
  %662 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 10
  store float %661, ptr %662, align 4, !tbaa !119
  %663 = load ptr, ptr %640, align 8, !tbaa !97
  %664 = getelementptr inbounds %struct.BMEdge, ptr %663, i64 0, i32 2
  %665 = load ptr, ptr %664, align 8, !tbaa !73
  %666 = icmp eq ptr %665, %225
  %667 = getelementptr inbounds %struct.BMEdge, ptr %663, i64 0, i32 3
  %668 = load ptr, ptr %667, align 8, !tbaa !76
  %669 = icmp eq ptr %668, %225
  %670 = select i1 %669, ptr %665, ptr null
  %671 = select i1 %666, ptr %668, ptr %670
  %672 = load ptr, ptr %558, align 8, !tbaa !117
  %673 = getelementptr inbounds %struct.EdgeHalf, ptr %672, i64 0, i32 2
  %674 = load ptr, ptr %673, align 8, !tbaa !97
  %675 = getelementptr inbounds %struct.BMEdge, ptr %674, i64 0, i32 2
  %676 = load ptr, ptr %675, align 8, !tbaa !73
  %677 = icmp eq ptr %676, %225
  %678 = getelementptr inbounds %struct.BMEdge, ptr %674, i64 0, i32 3
  %679 = load ptr, ptr %678, align 8, !tbaa !76
  %680 = icmp eq ptr %679, %225
  %681 = select i1 %680, ptr %676, ptr null
  %682 = select i1 %677, ptr %679, ptr %681
  %683 = getelementptr inbounds %struct.BMVert, ptr %671, i64 0, i32 2
  %684 = getelementptr inbounds %struct.BMVert, ptr %682, i64 0, i32 2
  %685 = call float @angle_v3v3v3(ptr noundef nonnull %683, ptr noundef nonnull %555, ptr noundef nonnull %684) #13
  %686 = call float @sinf(float noundef %685) #13
  %687 = load ptr, ptr %558, align 8, !tbaa !117
  %688 = getelementptr inbounds %struct.EdgeHalf, ptr %687, i64 0, i32 2
  %689 = load ptr, ptr %688, align 8, !tbaa !97
  %690 = call float @BM_edge_calc_length(ptr noundef %689) #13
  %691 = load float, ptr %62, align 8, !tbaa !34
  %692 = fmul float %690, %691
  %693 = fmul float %686, %692
  %694 = fdiv float %693, 1.000000e+02
  %695 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 11
  store float %694, ptr %695, align 8, !tbaa !120
  br label %699

696:                                              ; preds = %573
  %697 = load float, ptr %62, align 8, !tbaa !34
  %698 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 10
  store float %697, ptr %698, align 4, !tbaa !119
  br label %699

699:                                              ; preds = %696, %629, %627, %625, %602, %600, %575
  %700 = load i32, ptr %63, align 4, !tbaa !42
  %701 = icmp eq i32 %700, 3
  br i1 %701, label %706, label %702

702:                                              ; preds = %699
  %703 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 10
  %704 = load float, ptr %703, align 4, !tbaa !119
  %705 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 11
  store float %704, ptr %705, align 8, !tbaa !120
  br label %706

706:                                              ; preds = %702, %699
  %707 = load i8, ptr %69, align 1, !tbaa !46
  %708 = icmp eq i8 %707, 0
  br i1 %708, label %722, label %709

709:                                              ; preds = %706
  %710 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 2
  %711 = load ptr, ptr %710, align 8, !tbaa !97
  %712 = call float @BM_elem_float_data_get(ptr noundef nonnull %221, ptr noundef %711, i32 noundef 29) #13
  %713 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 10
  %714 = load float, ptr %713, align 4, !tbaa !119
  %715 = fmul float %712, %714
  store float %715, ptr %713, align 4, !tbaa !119
  %716 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 11
  %717 = load float, ptr %716, align 8, !tbaa !120
  %718 = fmul float %712, %717
  store float %718, ptr %716, align 8, !tbaa !120
  br label %722

719:                                              ; preds = %556
  %720 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 11
  store float 0.000000e+00, ptr %720, align 8, !tbaa !120
  %721 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 10
  store float 0.000000e+00, ptr %721, align 4, !tbaa !119
  br label %722

722:                                              ; preds = %719, %709, %706
  %723 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 10
  %724 = load float, ptr %723, align 4, !tbaa !119
  %725 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 8
  store float %724, ptr %725, align 4, !tbaa !121
  %726 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 11
  %727 = load float, ptr %726, align 8, !tbaa !120
  %728 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 9
  store float %727, ptr %728, align 8, !tbaa !122
  %729 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 3
  %730 = load ptr, ptr %729, align 8, !tbaa !101
  %731 = icmp eq ptr %730, null
  br i1 %731, label %818, label %732

732:                                              ; preds = %722
  %733 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 4
  %734 = load ptr, ptr %733, align 8, !tbaa !102
  %735 = icmp eq ptr %734, null
  br i1 %735, label %818, label %736

736:                                              ; preds = %732
  %737 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 2
  %738 = load ptr, ptr %737, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %53) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %54) #13
  %739 = load i32, ptr %223, align 4, !tbaa !123
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %816, label %741

741:                                              ; preds = %736
  %742 = getelementptr inbounds %struct.BMEdge, ptr %738, i64 0, i32 2
  %743 = load ptr, ptr %742, align 8, !tbaa !73
  %744 = getelementptr inbounds %struct.BMEdge, ptr %738, i64 0, i32 3
  %745 = load ptr, ptr %744, align 8, !tbaa !76
  %746 = call zeroext i8 @BM_edge_loop_pair(ptr noundef %738, ptr noundef nonnull %53, ptr noundef nonnull %54) #13
  %747 = icmp eq i8 %746, 0
  br i1 %747, label %816, label %748

748:                                              ; preds = %741
  %749 = load ptr, ptr %53, align 8, !tbaa !113
  %750 = getelementptr inbounds %struct.BMLoop, ptr %749, i64 0, i32 3
  %751 = load ptr, ptr %750, align 8, !tbaa !124
  %752 = icmp eq ptr %751, %734
  br i1 %752, label %753, label %755

753:                                              ; preds = %748
  %754 = load ptr, ptr %54, align 8, !tbaa !113
  store ptr %754, ptr %53, align 8, !tbaa !113
  store ptr %749, ptr %54, align 8, !tbaa !113
  br label %755

755:                                              ; preds = %753, %748
  %756 = load ptr, ptr %53, align 8, !tbaa !113
  %757 = getelementptr inbounds %struct.BMLoop, ptr %756, i64 0, i32 1
  %758 = load ptr, ptr %757, align 8, !tbaa !125
  %759 = icmp eq ptr %758, %743
  br i1 %759, label %760, label %762

760:                                              ; preds = %755
  %761 = call ptr @BM_face_other_edge_loop(ptr noundef nonnull %730, ptr noundef %738, ptr noundef %745) #13
  br label %764

762:                                              ; preds = %755
  %763 = call ptr @BM_face_other_edge_loop(ptr noundef nonnull %730, ptr noundef %738, ptr noundef %743) #13
  br label %764

764:                                              ; preds = %762, %760
  %765 = phi ptr [ %761, %760 ], [ %756, %762 ]
  %766 = phi ptr [ %756, %760 ], [ %763, %762 ]
  %767 = load ptr, ptr %54, align 8, !tbaa !113
  %768 = getelementptr inbounds %struct.BMLoop, ptr %767, i64 0, i32 1
  %769 = load ptr, ptr %768, align 8, !tbaa !125
  %770 = icmp eq ptr %769, %743
  br i1 %770, label %771, label %773

771:                                              ; preds = %764
  %772 = call ptr @BM_face_other_edge_loop(ptr noundef nonnull %734, ptr noundef %738, ptr noundef %745) #13
  br label %775

773:                                              ; preds = %764
  %774 = call ptr @BM_face_other_edge_loop(ptr noundef nonnull %734, ptr noundef %738, ptr noundef %743) #13
  br label %775

775:                                              ; preds = %773, %771
  %776 = phi ptr [ %772, %771 ], [ %767, %773 ]
  %777 = phi ptr [ %767, %771 ], [ %774, %773 ]
  %778 = load i32, ptr %223, align 4, !tbaa !123
  %779 = icmp sgt i32 %778, 0
  br i1 %779, label %780, label %816

780:                                              ; preds = %775, %811
  %781 = phi i64 [ %812, %811 ], [ 0, %775 ]
  %782 = trunc i64 %781 to i32
  %783 = call zeroext i8 @CustomData_layer_has_math(ptr noundef nonnull %222, i32 noundef %782) #13
  %784 = icmp eq i8 %783, 0
  br i1 %784, label %811, label %785

785:                                              ; preds = %780
  %786 = load ptr, ptr %222, align 8, !tbaa !126
  %787 = getelementptr inbounds %struct.CustomDataLayer, ptr %786, i64 %781
  %788 = getelementptr inbounds %struct.CustomDataLayer, ptr %786, i64 %781, i32 1
  %789 = load i32, ptr %788, align 4, !tbaa !127
  %790 = load i32, ptr %787, align 8, !tbaa !129
  %791 = load ptr, ptr %766, align 8, !tbaa !130
  %792 = sext i32 %789 to i64
  %793 = getelementptr inbounds i8, ptr %791, i64 %792
  %794 = load ptr, ptr %777, align 8, !tbaa !130
  %795 = getelementptr inbounds i8, ptr %794, i64 %792
  %796 = call zeroext i8 @CustomData_data_equals(i32 noundef %790, ptr noundef %793, ptr noundef %795) #13
  %797 = icmp eq i8 %796, 0
  br i1 %797, label %816, label %798

798:                                              ; preds = %785
  %799 = load ptr, ptr %222, align 8, !tbaa !126
  %800 = getelementptr inbounds %struct.CustomDataLayer, ptr %799, i64 %781
  %801 = getelementptr inbounds %struct.CustomDataLayer, ptr %799, i64 %781, i32 1
  %802 = load i32, ptr %801, align 4, !tbaa !127
  %803 = load i32, ptr %800, align 8, !tbaa !129
  %804 = load ptr, ptr %765, align 8, !tbaa !130
  %805 = sext i32 %802 to i64
  %806 = getelementptr inbounds i8, ptr %804, i64 %805
  %807 = load ptr, ptr %776, align 8, !tbaa !130
  %808 = getelementptr inbounds i8, ptr %807, i64 %805
  %809 = call zeroext i8 @CustomData_data_equals(i32 noundef %803, ptr noundef %806, ptr noundef %808) #13
  %810 = icmp eq i8 %809, 0
  br i1 %810, label %816, label %811

811:                                              ; preds = %798, %780
  %812 = add nuw nsw i64 %781, 1
  %813 = load i32, ptr %223, align 4, !tbaa !123
  %814 = sext i32 %813 to i64
  %815 = icmp slt i64 %812, %814
  br i1 %815, label %780, label %816, !llvm.loop !131

816:                                              ; preds = %811, %785, %798, %775, %741, %736
  %817 = phi i8 [ 0, %736 ], [ 1, %741 ], [ 0, %775 ], [ 1, %798 ], [ 1, %785 ], [ 0, %811 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %54) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %53) #13
  br label %818

818:                                              ; preds = %722, %732, %816
  %819 = phi i8 [ %817, %816 ], [ 1, %732 ], [ 1, %722 ]
  %820 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 0, i32 14
  store i8 %819, ptr %820, align 2, !tbaa !132
  %821 = getelementptr inbounds %struct.EdgeHalf, ptr %558, i64 1
  %822 = icmp eq i32 %560, %278
  br i1 %822, label %823, label %556, !llvm.loop !133

823:                                              ; preds = %818, %550
  br i1 %306, label %849, label %824

824:                                              ; preds = %823
  store i8 4, ptr %211, align 4, !tbaa !61
  store ptr @bmiter__edge_of_vert_begin, ptr %212, align 8, !tbaa !63
  store ptr @bmiter__edge_of_vert_step, ptr %213, align 8, !tbaa !64
  store ptr %225, ptr %55, align 8, !tbaa !70
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %55) #13
  %825 = load ptr, ptr %213, align 8, !tbaa !64
  %826 = call ptr %825(ptr noundef nonnull %55) #13
  %827 = icmp eq ptr %826, null
  br i1 %827, label %849, label %828

828:                                              ; preds = %824
  %829 = getelementptr inbounds %struct.BevVert, ptr %295, i64 0, i32 8
  br label %830

830:                                              ; preds = %828, %841
  %831 = phi ptr [ %826, %828 ], [ %844, %841 ]
  %832 = phi i32 [ 0, %828 ], [ %842, %841 ]
  %833 = getelementptr inbounds %struct.BMEdge, ptr %831, i64 0, i32 4
  %834 = load ptr, ptr %833, align 8, !tbaa !81
  %835 = icmp eq ptr %834, null
  br i1 %835, label %836, label %841

836:                                              ; preds = %830
  %837 = load ptr, ptr %829, align 8, !tbaa !92
  %838 = add nsw i32 %832, 1
  %839 = sext i32 %832 to i64
  %840 = getelementptr inbounds ptr, ptr %837, i64 %839
  store ptr %831, ptr %840, align 8, !tbaa !113
  br label %841

841:                                              ; preds = %836, %830
  %842 = phi i32 [ %838, %836 ], [ %832, %830 ]
  %843 = load ptr, ptr %213, align 8, !tbaa !64
  %844 = call ptr %843(ptr noundef nonnull %55) #13
  %845 = icmp eq ptr %844, null
  br i1 %845, label %849, label %830, !llvm.loop !134

846:                                              ; preds = %328, %284, %290
  %847 = load i8, ptr %226, align 1, !tbaa !71
  %848 = and i8 %847, -17
  store i8 %848, ptr %226, align 1, !tbaa !71
  br label %849

849:                                              ; preds = %841, %846, %824, %823
  %850 = phi ptr [ %295, %823 ], [ %295, %824 ], [ null, %846 ], [ %295, %841 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %56) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %55) #13
  %851 = icmp eq ptr %850, null
  br i1 %851, label %853, label %852

852:                                              ; preds = %849
  call fastcc void @build_boundary(ptr noundef nonnull %61, ptr noundef nonnull %850, i8 noundef zeroext 1)
  br label %853

853:                                              ; preds = %224, %852, %849
  %854 = load ptr, ptr %204, align 8, !tbaa !64
  %855 = call ptr %854(ptr noundef nonnull %60) #13
  %856 = icmp eq ptr %855, null
  br i1 %856, label %857, label %224, !llvm.loop !135

857:                                              ; preds = %853, %201
  %858 = load i8, ptr %68, align 8, !tbaa !45
  %859 = icmp eq i8 %858, 0
  br i1 %859, label %860, label %1011

860:                                              ; preds = %857
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %49) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %50) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %51) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %52) #13
  %861 = load ptr, ptr %61, align 8, !tbaa !52
  call void @BLI_ghashIterator_init(ptr noundef nonnull %52, ptr noundef %861) #13
  %862 = getelementptr inbounds %struct.GHashIterator, ptr %52, i64 0, i32 1
  %863 = load ptr, ptr %862, align 8, !tbaa !136
  %864 = icmp eq ptr %863, null
  br i1 %864, label %872, label %865

865:                                              ; preds = %860, %865
  %866 = phi ptr [ %870, %865 ], [ %863, %860 ]
  %867 = getelementptr inbounds %struct._gh_Entry, ptr %866, i64 0, i32 2
  %868 = load ptr, ptr %867, align 8, !tbaa !138
  store ptr %868, ptr %49, align 8, !tbaa !113
  %869 = getelementptr inbounds %struct.BevVert, ptr %868, i64 0, i32 6
  store i8 0, ptr %869, align 1, !tbaa !140
  call void @BLI_ghashIterator_step(ptr noundef nonnull %52) #13
  %870 = load ptr, ptr %862, align 8, !tbaa !136
  %871 = icmp eq ptr %870, null
  br i1 %871, label %872, label %865, !llvm.loop !141

872:                                              ; preds = %865, %860
  %873 = getelementptr inbounds %struct.GHashIterator, ptr %52, i64 0, i32 1
  %874 = call ptr @BLI_gsqueue_new(i64 noundef 8) #13
  br label %876

875:                                              ; preds = %940, %932
  br label %876, !llvm.loop !142

876:                                              ; preds = %875, %872
  store ptr null, ptr %50, align 8, !tbaa !113
  %877 = load ptr, ptr %61, align 8, !tbaa !52
  call void @BLI_ghashIterator_init(ptr noundef nonnull %52, ptr noundef %877) #13
  %878 = load ptr, ptr %873, align 8, !tbaa !136
  %879 = icmp eq ptr %878, null
  br i1 %879, label %929, label %880

880:                                              ; preds = %876, %925
  %881 = phi ptr [ %927, %925 ], [ %878, %876 ]
  %882 = phi i32 [ %926, %925 ], [ -1, %876 ]
  %883 = getelementptr inbounds %struct._gh_Entry, ptr %881, i64 0, i32 2
  %884 = load ptr, ptr %883, align 8, !tbaa !138
  store ptr %884, ptr %49, align 8, !tbaa !113
  %885 = getelementptr inbounds %struct.BevVert, ptr %884, i64 0, i32 6
  %886 = load i8, ptr %885, align 1, !tbaa !140
  %887 = icmp eq i8 %886, 0
  br i1 %887, label %888, label %925

888:                                              ; preds = %880
  %889 = getelementptr inbounds %struct.BevVert, ptr %884, i64 0, i32 1
  %890 = load i32, ptr %889, align 8, !tbaa !87
  %891 = icmp sgt i32 %890, 0
  br i1 %891, label %892, label %925

892:                                              ; preds = %888
  %893 = getelementptr inbounds %struct.BevVert, ptr %884, i64 0, i32 7
  %894 = load ptr, ptr %893, align 8, !tbaa !91
  %895 = zext nneg i32 %890 to i64
  br label %899

896:                                              ; preds = %913
  %897 = add nuw nsw i64 %900, 1
  %898 = icmp eq i64 %897, %895
  br i1 %898, label %925, label %899, !llvm.loop !143

899:                                              ; preds = %892, %896
  %900 = phi i64 [ 0, %892 ], [ %897, %896 ]
  %901 = getelementptr inbounds %struct.EdgeHalf, ptr %894, i64 %900, i32 8
  %902 = load float, ptr %901, align 4, !tbaa !121
  %903 = getelementptr inbounds %struct.EdgeHalf, ptr %894, i64 %900, i32 10
  %904 = load float, ptr %903, align 4, !tbaa !119
  %905 = fcmp une float %902, %904
  br i1 %905, label %913, label %906

906:                                              ; preds = %899
  %907 = getelementptr inbounds %struct.EdgeHalf, ptr %894, i64 %900, i32 9
  %908 = load float, ptr %907, align 8, !tbaa !122
  %909 = getelementptr inbounds %struct.EdgeHalf, ptr %894, i64 %900, i32 11
  %910 = load float, ptr %909, align 8, !tbaa !120
  %911 = fcmp une float %908, %910
  %912 = zext i1 %911 to i8
  br label %913

913:                                              ; preds = %906, %899
  %914 = phi i8 [ 1, %899 ], [ %912, %906 ]
  %915 = icmp eq i8 %914, 0
  br i1 %915, label %896, label %916

916:                                              ; preds = %913
  %917 = load ptr, ptr %884, align 8, !tbaa !85
  %918 = getelementptr inbounds %struct.BMHeader, ptr %917, i64 0, i32 1
  %919 = load i32, ptr %918, align 8, !tbaa !96
  %920 = load ptr, ptr %50, align 8, !tbaa !113
  %921 = icmp eq ptr %920, null
  %922 = icmp slt i32 %919, %882
  %923 = select i1 %921, i1 true, i1 %922
  br i1 %923, label %924, label %925

924:                                              ; preds = %916
  store ptr %884, ptr %50, align 8, !tbaa !113
  br label %925

925:                                              ; preds = %896, %888, %924, %916, %880
  %926 = phi i32 [ %882, %880 ], [ %919, %924 ], [ %882, %916 ], [ %882, %888 ], [ %882, %896 ]
  call void @BLI_ghashIterator_step(ptr noundef nonnull %52) #13
  %927 = load ptr, ptr %873, align 8, !tbaa !136
  %928 = icmp eq ptr %927, null
  br i1 %928, label %929, label %880, !llvm.loop !144

929:                                              ; preds = %925, %876
  %930 = load ptr, ptr %50, align 8, !tbaa !113
  %931 = icmp eq ptr %930, null
  br i1 %931, label %1010, label %932

932:                                              ; preds = %929
  call void @BLI_gsqueue_push(ptr noundef %874, ptr noundef nonnull %50) #13
  %933 = call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %874) #13
  %934 = icmp eq i8 %933, 0
  br i1 %934, label %935, label %875

935:                                              ; preds = %932, %940
  call void @BLI_gsqueue_pop(ptr noundef %874, ptr noundef nonnull %49) #13
  %936 = load ptr, ptr %49, align 8, !tbaa !113
  %937 = getelementptr inbounds %struct.BevVert, ptr %936, i64 0, i32 6
  %938 = load i8, ptr %937, align 1, !tbaa !140
  %939 = icmp eq i8 %938, 0
  br i1 %939, label %943, label %940

940:                                              ; preds = %1007, %935
  %941 = call zeroext i8 @BLI_gsqueue_is_empty(ptr noundef %874) #13
  %942 = icmp eq i8 %941, 0
  br i1 %942, label %935, label %875, !llvm.loop !145

943:                                              ; preds = %935
  store i8 1, ptr %937, align 1, !tbaa !140
  call fastcc void @build_boundary(ptr noundef nonnull %61, ptr noundef %936, i8 noundef zeroext 0)
  %944 = load ptr, ptr %49, align 8, !tbaa !113
  %945 = getelementptr inbounds %struct.BevVert, ptr %944, i64 0, i32 7
  %946 = load ptr, ptr %945, align 8, !tbaa !91
  br label %947

947:                                              ; preds = %1007, %943
  %948 = phi ptr [ %946, %943 ], [ %1008, %1007 ]
  %949 = getelementptr inbounds %struct.EdgeHalf, ptr %948, i64 0, i32 13
  %950 = load i8, ptr %949, align 1, !tbaa !105
  %951 = icmp eq i8 %950, 0
  %952 = getelementptr inbounds %struct.EdgeHalf, ptr %948, i64 0, i32 2
  %953 = load ptr, ptr %952, align 8, !tbaa !97
  %954 = getelementptr inbounds %struct.BMEdge, ptr %953, i64 0, i32 2
  %955 = getelementptr inbounds %struct.BMEdge, ptr %953, i64 0, i32 3
  %956 = select i1 %951, ptr %955, ptr %954
  %957 = load ptr, ptr %956, align 8, !tbaa !113
  %958 = load ptr, ptr %61, align 8, !tbaa !52
  %959 = call ptr @BLI_ghash_lookup(ptr noundef %958, ptr noundef %957) #13
  %960 = icmp eq ptr %959, null
  br i1 %960, label %981, label %961

961:                                              ; preds = %947
  store ptr %959, ptr %51, align 8, !tbaa !113
  %962 = getelementptr inbounds %struct.EdgeHalf, ptr %948, i64 0, i32 2
  %963 = load ptr, ptr %962, align 8, !tbaa !97
  %964 = getelementptr inbounds %struct.BevVert, ptr %959, i64 0, i32 1
  %965 = load i32, ptr %964, align 8, !tbaa !87
  %966 = icmp sgt i32 %965, 0
  br i1 %966, label %967, label %982

967:                                              ; preds = %961
  %968 = getelementptr inbounds %struct.BevVert, ptr %959, i64 0, i32 7
  %969 = load ptr, ptr %968, align 8, !tbaa !91
  %970 = zext nneg i32 %965 to i64
  br label %974

971:                                              ; preds = %974
  %972 = add nuw nsw i64 %975, 1
  %973 = icmp eq i64 %972, %970
  br i1 %973, label %982, label %974, !llvm.loop !146

974:                                              ; preds = %971, %967
  %975 = phi i64 [ 0, %967 ], [ %972, %971 ]
  %976 = getelementptr inbounds %struct.EdgeHalf, ptr %969, i64 %975, i32 2
  %977 = load ptr, ptr %976, align 8, !tbaa !97
  %978 = icmp eq ptr %977, %963
  br i1 %978, label %979, label %971

979:                                              ; preds = %974
  %980 = getelementptr inbounds %struct.EdgeHalf, ptr %969, i64 %975
  br label %982

981:                                              ; preds = %947
  store ptr null, ptr %51, align 8, !tbaa !113
  br label %982

982:                                              ; preds = %971, %961, %979, %981
  %983 = phi ptr [ null, %981 ], [ %980, %979 ], [ null, %961 ], [ null, %971 ]
  %984 = icmp eq ptr %983, null
  br i1 %984, label %1007, label %985

985:                                              ; preds = %982
  %986 = load ptr, ptr %51, align 8, !tbaa !113
  %987 = getelementptr inbounds %struct.BevVert, ptr %986, i64 0, i32 6
  %988 = load i8, ptr %987, align 1, !tbaa !140
  %989 = icmp eq i8 %988, 0
  br i1 %989, label %990, label %1007

990:                                              ; preds = %985
  %991 = getelementptr inbounds %struct.EdgeHalf, ptr %948, i64 0, i32 8
  %992 = load float, ptr %991, align 4, !tbaa !121
  %993 = getelementptr inbounds %struct.EdgeHalf, ptr %948, i64 0, i32 10
  %994 = load float, ptr %993, align 4, !tbaa !119
  %995 = fcmp une float %992, %994
  br i1 %995, label %1003, label %996

996:                                              ; preds = %990
  %997 = getelementptr inbounds %struct.EdgeHalf, ptr %948, i64 0, i32 9
  %998 = load float, ptr %997, align 8, !tbaa !122
  %999 = getelementptr inbounds %struct.EdgeHalf, ptr %948, i64 0, i32 11
  %1000 = load float, ptr %999, align 8, !tbaa !120
  %1001 = fcmp une float %998, %1000
  %1002 = zext i1 %1001 to i8
  br label %1003

1003:                                             ; preds = %996, %990
  %1004 = phi i8 [ 1, %990 ], [ %1002, %996 ]
  %1005 = icmp eq i8 %1004, 0
  br i1 %1005, label %1007, label %1006

1006:                                             ; preds = %1003
  call void @BLI_gsqueue_push(ptr noundef %874, ptr noundef nonnull %51) #13
  br label %1007

1007:                                             ; preds = %1006, %1003, %985, %982
  %1008 = load ptr, ptr %948, align 8, !tbaa !117
  %1009 = icmp eq ptr %1008, %946
  br i1 %1009, label %940, label %947, !llvm.loop !147

1010:                                             ; preds = %929
  call void @BLI_gsqueue_free(ptr noundef %874) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %52) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %51) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %50) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %49) #13
  br label %1011

1011:                                             ; preds = %1010, %857
  store i8 1, ptr %202, align 4, !tbaa !61
  store ptr @bmiter__elem_of_mesh_begin, ptr %203, align 8, !tbaa !63
  store ptr @bmiter__elem_of_mesh_step, ptr %204, align 8, !tbaa !64
  %1012 = load ptr, ptr %205, align 8, !tbaa !65
  store ptr %1012, ptr %60, align 8, !tbaa !70
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %60) #13
  %1013 = load ptr, ptr %204, align 8, !tbaa !64
  %1014 = call ptr %1013(ptr noundef nonnull %60) #13
  %1015 = icmp eq ptr %1014, null
  br i1 %1015, label %2902, label %1016

1016:                                             ; preds = %1011
  %1017 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 2, i32 2
  %1018 = getelementptr inbounds float, ptr %48, i64 1
  %1019 = getelementptr inbounds float, ptr %48, i64 2
  %1020 = getelementptr inbounds float, ptr %48, i64 1
  %1021 = getelementptr inbounds float, ptr %48, i64 2
  %1022 = getelementptr inbounds float, ptr %48, i64 1
  %1023 = getelementptr inbounds float, ptr %48, i64 2
  %1024 = getelementptr inbounds float, ptr %48, i64 1
  %1025 = getelementptr inbounds float, ptr %48, i64 2
  %1026 = getelementptr inbounds float, ptr %48, i64 1
  %1027 = getelementptr inbounds float, ptr %48, i64 2
  %1028 = getelementptr inbounds float, ptr %48, i64 1
  %1029 = getelementptr inbounds float, ptr %48, i64 2
  %1030 = getelementptr inbounds float, ptr %48, i64 1
  %1031 = getelementptr inbounds float, ptr %48, i64 2
  %1032 = getelementptr inbounds float, ptr %42, i64 1
  %1033 = getelementptr inbounds float, ptr %42, i64 2
  %1034 = getelementptr inbounds float, ptr %43, i64 1
  %1035 = getelementptr inbounds float, ptr %43, i64 2
  %1036 = getelementptr inbounds float, ptr %42, i64 1
  %1037 = getelementptr inbounds float, ptr %42, i64 2
  %1038 = getelementptr inbounds float, ptr %31, i64 1
  %1039 = getelementptr inbounds float, ptr %31, i64 2
  %1040 = getelementptr inbounds float, ptr %32, i64 1
  %1041 = getelementptr inbounds float, ptr %32, i64 2
  %1042 = getelementptr inbounds float, ptr %33, i64 1
  %1043 = getelementptr inbounds float, ptr %33, i64 2
  %1044 = getelementptr inbounds float, ptr %41, i64 1
  %1045 = getelementptr inbounds float, ptr %41, i64 2
  %1046 = getelementptr inbounds float, ptr %40, i64 1
  %1047 = getelementptr inbounds float, ptr %40, i64 2
  %1048 = getelementptr inbounds float, ptr %29, i64 1
  %1049 = getelementptr inbounds float, ptr %29, i64 2
  %1050 = getelementptr inbounds [4 x float], ptr %29, i64 0, i64 3
  %1051 = getelementptr inbounds [4 x float], ptr %29, i64 1
  %1052 = getelementptr inbounds [4 x float], ptr %29, i64 1, i64 1
  %1053 = getelementptr inbounds [4 x float], ptr %29, i64 1, i64 2
  %1054 = getelementptr inbounds [4 x float], ptr %29, i64 1, i64 3
  %1055 = getelementptr inbounds [4 x float], ptr %29, i64 2
  %1056 = getelementptr inbounds [4 x float], ptr %29, i64 2, i64 1
  %1057 = getelementptr inbounds [4 x float], ptr %29, i64 2, i64 2
  %1058 = getelementptr inbounds [4 x float], ptr %29, i64 2, i64 3
  %1059 = getelementptr inbounds [4 x float], ptr %29, i64 3
  %1060 = getelementptr inbounds [4 x float], ptr %29, i64 3, i64 1
  %1061 = getelementptr inbounds [4 x float], ptr %29, i64 3, i64 2
  %1062 = getelementptr inbounds [4 x float], ptr %29, i64 3, i64 3
  %1063 = getelementptr inbounds float, ptr %27, i64 1
  %1064 = getelementptr inbounds float, ptr %27, i64 2
  %1065 = getelementptr inbounds float, ptr %28, i64 1
  %1066 = getelementptr inbounds float, ptr %28, i64 2
  %1067 = getelementptr inbounds %struct.BevelParams, ptr %61, i64 0, i32 2, i32 2
  %1068 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 1
  %1069 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 2
  %1070 = getelementptr inbounds float, ptr %26, i64 1
  %1071 = getelementptr inbounds float, ptr %26, i64 2
  %1072 = getelementptr inbounds float, ptr %26, i64 1
  %1073 = getelementptr inbounds float, ptr %26, i64 2
  %1074 = getelementptr inbounds float, ptr %30, i64 1
  %1075 = getelementptr inbounds float, ptr %30, i64 2
  %1076 = getelementptr inbounds [4 x float], ptr %30, i64 0, i64 3
  %1077 = getelementptr inbounds ptr, ptr %24, i64 1
  %1078 = getelementptr inbounds ptr, ptr %24, i64 2
  %1079 = getelementptr inbounds ptr, ptr %24, i64 3
  %1080 = getelementptr inbounds ptr, ptr %25, i64 1
  %1081 = getelementptr inbounds ptr, ptr %25, i64 2
  %1082 = getelementptr inbounds ptr, ptr %25, i64 3
  br label %1083

1083:                                             ; preds = %1016, %2898
  %1084 = phi ptr [ %1014, %1016 ], [ %2900, %2898 ]
  %1085 = getelementptr inbounds %struct.BMHeader, ptr %1084, i64 0, i32 3
  %1086 = load i8, ptr %1085, align 1, !tbaa !71
  %1087 = and i8 %1086, 16
  %1088 = icmp eq i8 %1087, 0
  br i1 %1088, label %2898, label %1089

1089:                                             ; preds = %1083
  %1090 = load ptr, ptr %61, align 8, !tbaa !52
  %1091 = call ptr @BLI_ghash_lookup(ptr noundef %1090, ptr noundef nonnull %1084) #13
  %1092 = icmp eq ptr %1091, null
  br i1 %1092, label %2898, label %1093

1093:                                             ; preds = %1089
  %1094 = load ptr, ptr %82, align 8, !tbaa !53
  %1095 = getelementptr inbounds %struct.BevVert, ptr %1091, i64 0, i32 9
  %1096 = load ptr, ptr %1095, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %48) #13
  %1097 = getelementptr inbounds %struct.VMesh, ptr %1096, i64 0, i32 2
  %1098 = load i32, ptr %1097, align 8, !tbaa !148
  %1099 = getelementptr inbounds %struct.VMesh, ptr %1096, i64 0, i32 3
  %1100 = load i32, ptr %1099, align 4, !tbaa !94
  %1101 = sdiv i32 %1100, 2
  %1102 = add nsw i32 %1101, 1
  %1103 = add nsw i32 %1100, 1
  %1104 = mul i32 %1103, %1098
  %1105 = mul i32 %1104, %1102
  %1106 = sext i32 %1105 to i64
  %1107 = mul nsw i64 %1106, 24
  %1108 = call ptr @BLI_memarena_alloc(ptr noundef %1094, i64 noundef %1107) #13
  store ptr %1108, ptr %1096, align 8, !tbaa !149
  %1109 = getelementptr inbounds %struct.BevVert, ptr %1091, i64 0, i32 2
  %1110 = load i32, ptr %1109, align 4, !tbaa !88
  %1111 = icmp eq i32 %1110, 2
  br i1 %1111, label %1112, label %1115

1112:                                             ; preds = %1093
  %1113 = load i32, ptr %1097, align 8, !tbaa !148
  %1114 = icmp eq i32 %1113, 2
  br label %1115

1115:                                             ; preds = %1112, %1093
  %1116 = phi i1 [ false, %1093 ], [ %1114, %1112 ]
  %1117 = getelementptr inbounds %struct.VMesh, ptr %1096, i64 0, i32 1
  %1118 = load ptr, ptr %1117, align 8, !tbaa !150
  br label %1119

1119:                                             ; preds = %1321, %1115
  %1120 = phi ptr [ null, %1115 ], [ %1322, %1321 ]
  %1121 = phi ptr [ null, %1115 ], [ %1323, %1321 ]
  %1122 = phi ptr [ %1118, %1115 ], [ %1324, %1321 ]
  %1123 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 6
  %1124 = load i32, ptr %1123, align 8, !tbaa !151
  %1125 = load i32, ptr %1099, align 4, !tbaa !94
  %1126 = sdiv i32 %1125, 2
  %1127 = add nsw i32 %1126, 1
  %1128 = add nsw i32 %1125, 1
  %1129 = load ptr, ptr %1096, align 8, !tbaa !149
  %1130 = mul nsw i32 %1128, %1124
  %1131 = mul nsw i32 %1130, %1127
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds %struct.NewVert, ptr %1129, i64 %1132, i32 1
  %1134 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 2
  %1135 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 2, i32 1
  %1136 = load float, ptr %1135, align 4, !tbaa !115
  store float %1136, ptr %1133, align 4, !tbaa !115
  %1137 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 2, i32 1, i64 1
  %1138 = load float, ptr %1137, align 4, !tbaa !115
  %1139 = getelementptr inbounds float, ptr %1133, i64 1
  store float %1138, ptr %1139, align 4, !tbaa !115
  %1140 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 2, i32 1, i64 2
  %1141 = load float, ptr %1140, align 4, !tbaa !115
  %1142 = getelementptr inbounds float, ptr %1133, i64 2
  store float %1141, ptr %1142, align 4, !tbaa !115
  %1143 = load ptr, ptr %1091, align 8, !tbaa !85
  %1144 = getelementptr inbounds %struct.NewVert, ptr %1129, i64 %1132
  %1145 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %1133, ptr noundef %1143, i32 noundef 0) #13
  store ptr %1145, ptr %1144, align 8, !tbaa !155
  %1146 = getelementptr inbounds %struct.BMHeader, ptr %1145, i64 0, i32 3
  %1147 = load i8, ptr %1146, align 1, !tbaa !71
  %1148 = and i8 %1147, -17
  store i8 %1148, ptr %1146, align 1, !tbaa !71
  %1149 = load i32, ptr %1099, align 4, !tbaa !94
  %1150 = sdiv i32 %1149, 2
  %1151 = add nsw i32 %1150, 1
  %1152 = add nsw i32 %1149, 1
  %1153 = load ptr, ptr %1096, align 8, !tbaa !149
  %1154 = mul nsw i32 %1152, %1124
  %1155 = mul nsw i32 %1154, %1151
  %1156 = sext i32 %1155 to i64
  %1157 = getelementptr inbounds %struct.NewVert, ptr %1153, i64 %1156
  %1158 = load ptr, ptr %1157, align 8, !tbaa !155
  store ptr %1158, ptr %1134, align 8, !tbaa !156
  br i1 %1116, label %1159, label %1321

1159:                                             ; preds = %1119
  %1160 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 5
  %1161 = load ptr, ptr %1160, align 8, !tbaa !157
  %1162 = icmp eq ptr %1161, null
  br i1 %1162, label %1321, label %1163

1163:                                             ; preds = %1159
  %1164 = icmp eq ptr %1121, null
  br i1 %1164, label %1321, label %1165

1165:                                             ; preds = %1163
  %1166 = getelementptr inbounds %struct.BoundVert, ptr %1121, i64 0, i32 7, i32 6
  %1167 = load float, ptr %1166, align 4, !tbaa !115
  %1168 = fcmp oeq float %1167, 0.000000e+00
  br i1 %1168, label %1169, label %1177

1169:                                             ; preds = %1165
  %1170 = getelementptr inbounds %struct.BoundVert, ptr %1121, i64 0, i32 7, i32 6, i64 1
  %1171 = load float, ptr %1170, align 4, !tbaa !115
  %1172 = fcmp oeq float %1171, 0.000000e+00
  br i1 %1172, label %1173, label %1177

1173:                                             ; preds = %1169
  %1174 = getelementptr inbounds %struct.BoundVert, ptr %1121, i64 0, i32 7, i32 6, i64 2
  %1175 = load float, ptr %1174, align 4, !tbaa !115
  %1176 = fcmp une float %1175, 0.000000e+00
  br i1 %1176, label %1177, label %1320

1177:                                             ; preds = %1173, %1169, %1165
  %1178 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 7, i32 6
  %1179 = load float, ptr %1178, align 4, !tbaa !115
  %1180 = fcmp oeq float %1179, 0.000000e+00
  br i1 %1180, label %1181, label %1189

1181:                                             ; preds = %1177
  %1182 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 7, i32 6, i64 1
  %1183 = load float, ptr %1182, align 4, !tbaa !115
  %1184 = fcmp oeq float %1183, 0.000000e+00
  br i1 %1184, label %1185, label %1189

1185:                                             ; preds = %1181
  %1186 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 7, i32 6, i64 2
  %1187 = load float, ptr %1186, align 4, !tbaa !115
  %1188 = fcmp une float %1187, 0.000000e+00
  br i1 %1188, label %1189, label %1320

1189:                                             ; preds = %1185, %1181, %1177
  %1190 = load ptr, ptr %1091, align 8, !tbaa !85
  %1191 = getelementptr inbounds %struct.BMVert, ptr %1190, i64 0, i32 2
  %1192 = getelementptr inbounds %struct.BoundVert, ptr %1121, i64 0, i32 2, i32 1
  %1193 = load float, ptr %1191, align 4, !tbaa !115
  %1194 = load float, ptr %1192, align 4, !tbaa !115
  %1195 = fsub float %1193, %1194
  %1196 = getelementptr inbounds %struct.BMVert, ptr %1190, i64 0, i32 2, i64 1
  %1197 = load float, ptr %1196, align 4, !tbaa !115
  %1198 = getelementptr inbounds %struct.BoundVert, ptr %1121, i64 0, i32 2, i32 1, i64 1
  %1199 = load float, ptr %1198, align 4, !tbaa !115
  %1200 = fsub float %1197, %1199
  %1201 = getelementptr inbounds %struct.BMVert, ptr %1190, i64 0, i32 2, i64 2
  %1202 = load float, ptr %1201, align 4, !tbaa !115
  %1203 = getelementptr inbounds %struct.BoundVert, ptr %1121, i64 0, i32 2, i32 1, i64 2
  %1204 = load float, ptr %1203, align 4, !tbaa !115
  %1205 = fsub float %1202, %1204
  %1206 = load float, ptr %1135, align 4, !tbaa !115
  %1207 = fsub float %1193, %1206
  %1208 = load float, ptr %1137, align 4, !tbaa !115
  %1209 = fsub float %1197, %1208
  %1210 = load float, ptr %1140, align 4, !tbaa !115
  %1211 = fsub float %1202, %1210
  %1212 = fneg float %1205
  %1213 = fmul float %1209, %1212
  %1214 = call float @llvm.fmuladd.f32(float %1200, float %1211, float %1213)
  %1215 = fneg float %1195
  %1216 = fmul float %1211, %1215
  %1217 = call float @llvm.fmuladd.f32(float %1205, float %1207, float %1216)
  %1218 = fneg float %1200
  %1219 = fmul float %1207, %1218
  %1220 = call float @llvm.fmuladd.f32(float %1195, float %1209, float %1219)
  %1221 = fmul float %1217, %1217
  %1222 = call float @llvm.fmuladd.f32(float %1214, float %1214, float %1221)
  %1223 = call float @llvm.fmuladd.f32(float %1220, float %1220, float %1222)
  %1224 = fcmp ogt float %1223, 0x38AA95A5C0000000
  br i1 %1224, label %1225, label %1232

1225:                                             ; preds = %1189
  %1226 = call float @sqrtf(float noundef %1223) #13
  %1227 = fdiv float 1.000000e+00, %1226
  %1228 = fmul float %1214, %1227
  %1229 = fmul float %1217, %1227
  %1230 = fmul float %1220, %1227
  %1231 = fcmp ogt float %1226, 0x3EB0C6F7A0000000
  br label %1232

1232:                                             ; preds = %1225, %1189
  %1233 = phi float [ %1229, %1225 ], [ 0.000000e+00, %1189 ]
  %1234 = phi float [ %1228, %1225 ], [ 0.000000e+00, %1189 ]
  %1235 = phi float [ %1230, %1225 ], [ 0.000000e+00, %1189 ]
  %1236 = phi i1 [ %1231, %1225 ], [ false, %1189 ]
  %1237 = getelementptr inbounds %struct.BoundVert, ptr %1121, i64 0, i32 7, i32 6, i64 2
  %1238 = load float, ptr %1237, align 4, !tbaa !115
  %1239 = getelementptr inbounds %struct.BoundVert, ptr %1121, i64 0, i32 7, i32 6, i64 1
  %1240 = load float, ptr %1239, align 4, !tbaa !115
  %1241 = fmul float %1240, %1212
  %1242 = call float @llvm.fmuladd.f32(float %1200, float %1238, float %1241)
  %1243 = load float, ptr %1166, align 4, !tbaa !115
  %1244 = fmul float %1238, %1215
  %1245 = call float @llvm.fmuladd.f32(float %1205, float %1243, float %1244)
  %1246 = fmul float %1243, %1218
  %1247 = call float @llvm.fmuladd.f32(float %1195, float %1240, float %1246)
  %1248 = fmul float %1245, %1245
  %1249 = call float @llvm.fmuladd.f32(float %1242, float %1242, float %1248)
  %1250 = call float @llvm.fmuladd.f32(float %1247, float %1247, float %1249)
  %1251 = fcmp ogt float %1250, 0x38AA95A5C0000000
  br i1 %1251, label %1252, label %1259

1252:                                             ; preds = %1232
  %1253 = call float @sqrtf(float noundef %1250) #13
  %1254 = fdiv float 1.000000e+00, %1253
  %1255 = fmul float %1242, %1254
  %1256 = fmul float %1245, %1254
  %1257 = fmul float %1247, %1254
  %1258 = fcmp ogt float %1253, 0x3EB0C6F7A0000000
  br label %1259

1259:                                             ; preds = %1252, %1232
  %1260 = phi float [ %1256, %1252 ], [ 0.000000e+00, %1232 ]
  %1261 = phi float [ %1255, %1252 ], [ 0.000000e+00, %1232 ]
  %1262 = phi float [ %1257, %1252 ], [ 0.000000e+00, %1232 ]
  %1263 = phi i1 [ %1258, %1252 ], [ false, %1232 ]
  %1264 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 7, i32 6, i64 2
  %1265 = load float, ptr %1264, align 4, !tbaa !115
  %1266 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 7, i32 6, i64 1
  %1267 = load float, ptr %1266, align 4, !tbaa !115
  %1268 = fneg float %1211
  %1269 = fmul float %1267, %1268
  %1270 = call float @llvm.fmuladd.f32(float %1209, float %1265, float %1269)
  %1271 = load float, ptr %1178, align 4, !tbaa !115
  %1272 = fneg float %1207
  %1273 = fmul float %1265, %1272
  %1274 = call float @llvm.fmuladd.f32(float %1211, float %1271, float %1273)
  %1275 = fneg float %1209
  %1276 = fmul float %1271, %1275
  %1277 = call float @llvm.fmuladd.f32(float %1207, float %1267, float %1276)
  %1278 = fmul float %1274, %1274
  %1279 = call float @llvm.fmuladd.f32(float %1270, float %1270, float %1278)
  %1280 = call float @llvm.fmuladd.f32(float %1277, float %1277, float %1279)
  %1281 = fcmp ogt float %1280, 0x38AA95A5C0000000
  br i1 %1281, label %1282, label %1289

1282:                                             ; preds = %1259
  %1283 = call float @sqrtf(float noundef %1280) #13
  %1284 = fdiv float 1.000000e+00, %1283
  %1285 = fmul float %1270, %1284
  %1286 = fmul float %1274, %1284
  %1287 = fmul float %1277, %1284
  %1288 = fcmp ogt float %1283, 0x3EB0C6F7A0000000
  br label %1289

1289:                                             ; preds = %1282, %1259
  %1290 = phi float [ %1286, %1282 ], [ 0.000000e+00, %1259 ]
  %1291 = phi float [ %1285, %1282 ], [ 0.000000e+00, %1259 ]
  %1292 = phi float [ %1287, %1282 ], [ 0.000000e+00, %1259 ]
  %1293 = phi i1 [ %1288, %1282 ], [ false, %1259 ]
  %1294 = select i1 %1263, i1 true, i1 %1293
  %1295 = select i1 %1236, i1 %1294, i1 false
  br i1 %1295, label %1296, label %1320

1296:                                             ; preds = %1289
  %1297 = fmul float %1233, %1260
  %1298 = call float @llvm.fmuladd.f32(float %1234, float %1261, float %1297)
  %1299 = call float @llvm.fmuladd.f32(float %1235, float %1262, float %1298)
  %1300 = call float @llvm.fabs.f32(float %1299)
  %1301 = fmul float %1233, %1290
  %1302 = call float @llvm.fmuladd.f32(float %1234, float %1291, float %1301)
  %1303 = call float @llvm.fmuladd.f32(float %1235, float %1292, float %1302)
  %1304 = call float @llvm.fabs.f32(float %1303)
  %1305 = fadd float %1300, -1.000000e+00
  %1306 = call float @llvm.fabs.f32(float %1305)
  %1307 = fcmp ogt float %1306, 0x3EB0C6F7A0000000
  br i1 %1307, label %1308, label %1312

1308:                                             ; preds = %1296
  %1309 = getelementptr inbounds %struct.BoundVert, ptr %1121, i64 0, i32 7, i32 4
  store float %1234, ptr %1309, align 4, !tbaa !115
  %1310 = getelementptr inbounds %struct.BoundVert, ptr %1121, i64 0, i32 7, i32 4, i64 1
  store float %1233, ptr %1310, align 4, !tbaa !115
  %1311 = getelementptr inbounds %struct.BoundVert, ptr %1121, i64 0, i32 7, i32 4, i64 2
  store float %1235, ptr %1311, align 4, !tbaa !115
  br label %1312

1312:                                             ; preds = %1308, %1296
  %1313 = fadd float %1304, -1.000000e+00
  %1314 = call float @llvm.fabs.f32(float %1313)
  %1315 = fcmp ogt float %1314, 0x3EB0C6F7A0000000
  br i1 %1315, label %1316, label %1320

1316:                                             ; preds = %1312
  %1317 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 7, i32 4
  store float %1234, ptr %1317, align 4, !tbaa !115
  %1318 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 7, i32 4, i64 1
  store float %1233, ptr %1318, align 4, !tbaa !115
  %1319 = getelementptr inbounds %struct.BoundVert, ptr %1122, i64 0, i32 7, i32 4, i64 2
  store float %1235, ptr %1319, align 4, !tbaa !115
  br label %1320

1320:                                             ; preds = %1316, %1312, %1289, %1185, %1173
  call fastcc void @calculate_profile(ptr noundef nonnull %61, ptr noundef nonnull %1121)
  call fastcc void @calculate_profile(ptr noundef nonnull %61, ptr noundef %1122)
  br label %1321

1321:                                             ; preds = %1320, %1163, %1159, %1119
  %1322 = phi ptr [ %1122, %1320 ], [ %1120, %1159 ], [ %1120, %1119 ], [ %1120, %1163 ]
  %1323 = phi ptr [ %1121, %1320 ], [ %1121, %1159 ], [ %1121, %1119 ], [ %1122, %1163 ]
  %1324 = load ptr, ptr %1122, align 8, !tbaa !158
  %1325 = load ptr, ptr %1117, align 8, !tbaa !150
  %1326 = icmp eq ptr %1324, %1325
  br i1 %1326, label %1327, label %1119, !llvm.loop !159

1327:                                             ; preds = %1321
  %1328 = icmp sgt i32 %1100, 1
  %1329 = getelementptr inbounds %struct.VMesh, ptr %1096, i64 0, i32 4
  %1330 = zext nneg i32 %1100 to i64
  br label %1331

1331:                                             ; preds = %1327, %1434
  %1332 = phi ptr [ %1435, %1434 ], [ %1325, %1327 ]
  %1333 = getelementptr inbounds %struct.BoundVert, ptr %1332, i64 0, i32 6
  %1334 = load i32, ptr %1333, align 8, !tbaa !151
  %1335 = load ptr, ptr %1332, align 8, !tbaa !158
  %1336 = getelementptr inbounds %struct.BoundVert, ptr %1335, i64 0, i32 6
  %1337 = load i32, ptr %1336, align 8, !tbaa !151
  %1338 = load i32, ptr %1099, align 4, !tbaa !94
  %1339 = sdiv i32 %1338, 2
  %1340 = add nsw i32 %1339, 1
  %1341 = add nsw i32 %1338, 1
  %1342 = load ptr, ptr %1096, align 8, !tbaa !149
  %1343 = mul i32 %1340, %1341
  %1344 = mul i32 %1343, %1334
  %1345 = add nsw i32 %1344, %1100
  %1346 = sext i32 %1345 to i64
  %1347 = getelementptr inbounds %struct.NewVert, ptr %1342, i64 %1346
  %1348 = mul i32 %1340, %1341
  %1349 = mul i32 %1348, %1337
  %1350 = sext i32 %1349 to i64
  %1351 = getelementptr inbounds %struct.NewVert, ptr %1342, i64 %1350
  %1352 = load ptr, ptr %1351, align 8, !tbaa !155
  store ptr %1352, ptr %1347, align 8, !tbaa !155
  %1353 = getelementptr inbounds %struct.NewVert, ptr %1342, i64 %1346, i32 1
  %1354 = getelementptr inbounds %struct.NewVert, ptr %1342, i64 %1350, i32 1
  %1355 = load float, ptr %1354, align 4, !tbaa !115
  store float %1355, ptr %1353, align 4, !tbaa !115
  %1356 = getelementptr inbounds float, ptr %1354, i64 1
  %1357 = load float, ptr %1356, align 4, !tbaa !115
  %1358 = getelementptr inbounds float, ptr %1353, i64 1
  store float %1357, ptr %1358, align 4, !tbaa !115
  %1359 = getelementptr inbounds float, ptr %1354, i64 2
  %1360 = load float, ptr %1359, align 4, !tbaa !115
  %1361 = getelementptr inbounds float, ptr %1353, i64 2
  store float %1360, ptr %1361, align 4, !tbaa !115
  br i1 %1328, label %1362, label %1434

1362:                                             ; preds = %1331
  %1363 = getelementptr inbounds %struct.BoundVert, ptr %1332, i64 0, i32 5
  %1364 = getelementptr inbounds %struct.BoundVert, ptr %1332, i64 0, i32 7, i32 8
  %1365 = getelementptr inbounds %struct.BoundVert, ptr %1332, i64 0, i32 7, i32 7
  %1366 = getelementptr inbounds %struct.BoundVert, ptr %1332, i64 0, i32 7, i32 3
  %1367 = getelementptr inbounds %struct.BoundVert, ptr %1332, i64 0, i32 7, i32 3, i64 1
  %1368 = getelementptr inbounds %struct.BoundVert, ptr %1332, i64 0, i32 7, i32 3, i64 2
  br label %1369

1369:                                             ; preds = %1362, %1431
  %1370 = phi i64 [ 1, %1362 ], [ %1432, %1431 ]
  %1371 = load ptr, ptr %1363, align 8, !tbaa !157
  %1372 = icmp eq ptr %1371, null
  br i1 %1372, label %1431, label %1373

1373:                                             ; preds = %1369
  %1374 = load i32, ptr %1329, align 8, !tbaa !160
  %1375 = icmp eq i32 %1374, 2
  br i1 %1375, label %1431, label %1376

1376:                                             ; preds = %1373
  %1377 = load i32, ptr %65, align 8, !tbaa !43
  %1378 = icmp eq i32 %1377, 1
  br i1 %1378, label %1379, label %1382

1379:                                             ; preds = %1376
  %1380 = load float, ptr %1366, align 4, !tbaa !115
  store float %1380, ptr %48, align 4, !tbaa !115
  %1381 = load float, ptr %1367, align 4, !tbaa !115
  store float %1381, ptr %1022, align 4, !tbaa !115
  br label %1404

1382:                                             ; preds = %1376
  %1383 = icmp eq i32 %1377, %1100
  br i1 %1383, label %1384, label %1392

1384:                                             ; preds = %1382
  %1385 = load ptr, ptr %1365, align 8, !tbaa !161
  %1386 = mul nuw nsw i64 %1370, 3
  %1387 = getelementptr inbounds float, ptr %1385, i64 %1386
  %1388 = load float, ptr %1387, align 4, !tbaa !115
  store float %1388, ptr %48, align 4, !tbaa !115
  %1389 = getelementptr inbounds float, ptr %1387, i64 1
  %1390 = load float, ptr %1389, align 4, !tbaa !115
  store float %1390, ptr %1020, align 4, !tbaa !115
  %1391 = getelementptr inbounds float, ptr %1387, i64 2
  br label %1404

1392:                                             ; preds = %1382
  %1393 = load i32, ptr %1017, align 8, !tbaa !59
  %1394 = sdiv i32 %1393, %1100
  %1395 = load ptr, ptr %1364, align 8, !tbaa !162
  %1396 = mul nuw nsw i64 %1370, 3
  %1397 = sext i32 %1394 to i64
  %1398 = mul nsw i64 %1396, %1397
  %1399 = getelementptr inbounds float, ptr %1395, i64 %1398
  %1400 = load float, ptr %1399, align 4, !tbaa !115
  store float %1400, ptr %48, align 4, !tbaa !115
  %1401 = getelementptr inbounds float, ptr %1399, i64 1
  %1402 = load float, ptr %1401, align 4, !tbaa !115
  store float %1402, ptr %1018, align 4, !tbaa !115
  %1403 = getelementptr inbounds float, ptr %1399, i64 2
  br label %1404

1404:                                             ; preds = %1379, %1384, %1392
  %1405 = phi ptr [ %1368, %1379 ], [ %1391, %1384 ], [ %1403, %1392 ]
  %1406 = phi ptr [ %1023, %1379 ], [ %1021, %1384 ], [ %1019, %1392 ]
  %1407 = load float, ptr %1405, align 4, !tbaa !115
  store float %1407, ptr %1406, align 4, !tbaa !115
  %1408 = load i32, ptr %1099, align 4, !tbaa !94
  %1409 = sdiv i32 %1408, 2
  %1410 = add nsw i32 %1409, 1
  %1411 = add nsw i32 %1408, 1
  %1412 = load ptr, ptr %1096, align 8, !tbaa !149
  %1413 = mul nsw i32 %1411, %1334
  %1414 = mul nsw i32 %1413, %1410
  %1415 = trunc i64 %1370 to i32
  %1416 = add nsw i32 %1414, %1415
  %1417 = sext i32 %1416 to i64
  %1418 = getelementptr inbounds %struct.NewVert, ptr %1412, i64 %1417, i32 1
  %1419 = load float, ptr %48, align 4, !tbaa !115
  store float %1419, ptr %1418, align 4, !tbaa !115
  %1420 = load float, ptr %1024, align 4, !tbaa !115
  %1421 = getelementptr inbounds float, ptr %1418, i64 1
  store float %1420, ptr %1421, align 4, !tbaa !115
  %1422 = load float, ptr %1025, align 4, !tbaa !115
  %1423 = getelementptr inbounds float, ptr %1418, i64 2
  store float %1422, ptr %1423, align 4, !tbaa !115
  br i1 %1116, label %1431, label %1424

1424:                                             ; preds = %1404
  %1425 = load ptr, ptr %1091, align 8, !tbaa !85
  %1426 = getelementptr inbounds %struct.NewVert, ptr %1412, i64 %1417
  %1427 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %1418, ptr noundef %1425, i32 noundef 0) #13
  store ptr %1427, ptr %1426, align 8, !tbaa !155
  %1428 = getelementptr inbounds %struct.BMHeader, ptr %1427, i64 0, i32 3
  %1429 = load i8, ptr %1428, align 1, !tbaa !71
  %1430 = and i8 %1429, -17
  store i8 %1430, ptr %1428, align 1, !tbaa !71
  br label %1431

1431:                                             ; preds = %1424, %1404, %1373, %1369
  %1432 = add nuw nsw i64 %1370, 1
  %1433 = icmp eq i64 %1432, %1330
  br i1 %1433, label %1434, label %1369, !llvm.loop !163

1434:                                             ; preds = %1431, %1331
  %1435 = load ptr, ptr %1332, align 8, !tbaa !158
  %1436 = load ptr, ptr %1117, align 8, !tbaa !150
  %1437 = icmp eq ptr %1435, %1436
  br i1 %1437, label %1438, label %1331, !llvm.loop !164

1438:                                             ; preds = %1434
  br i1 %1116, label %1439, label %1555

1439:                                             ; preds = %1438
  %1440 = getelementptr inbounds %struct.VMesh, ptr %1096, i64 0, i32 4
  store i32 0, ptr %1440, align 8, !tbaa !160
  %1441 = icmp sgt i32 %1100, 1
  br i1 %1441, label %1442, label %1448

1442:                                             ; preds = %1439
  %1443 = getelementptr inbounds %struct.BoundVert, ptr %1323, i64 0, i32 6
  %1444 = getelementptr inbounds %struct.BoundVert, ptr %1322, i64 0, i32 6
  %1445 = getelementptr inbounds %struct.BoundVert, ptr %1323, i64 0, i32 7
  %1446 = getelementptr inbounds %struct.BoundVert, ptr %1322, i64 0, i32 7
  %1447 = getelementptr inbounds %struct.BoundVert, ptr %1322, i64 0, i32 7
  br label %1468

1448:                                             ; preds = %1511, %1439
  %1449 = icmp sgt i32 %1100, 1
  br i1 %1449, label %1450, label %1555

1450:                                             ; preds = %1448
  %1451 = getelementptr inbounds %struct.BoundVert, ptr %1322, i64 0, i32 6
  %1452 = load i32, ptr %1451, align 8, !tbaa !151
  %1453 = getelementptr inbounds %struct.BoundVert, ptr %1323, i64 0, i32 6
  %1454 = load i32, ptr %1453, align 8, !tbaa !151
  %1455 = load i32, ptr %1099, align 4, !tbaa !94
  %1456 = sdiv i32 %1455, 2
  %1457 = add nsw i32 %1456, 1
  %1458 = add nsw i32 %1455, 1
  %1459 = load ptr, ptr %1096, align 8, !tbaa !149
  %1460 = mul i32 %1457, %1458
  %1461 = mul i32 %1460, %1452
  %1462 = mul i32 %1457, %1458
  %1463 = mul i32 %1462, %1454
  %1464 = sext i32 %1463 to i64
  %1465 = zext nneg i32 %1100 to i64
  %1466 = sext i32 %1461 to i64
  %1467 = zext nneg i32 %1100 to i64
  br label %1536

1468:                                             ; preds = %1442, %1511
  %1469 = phi i32 [ 1, %1442 ], [ %1534, %1511 ]
  %1470 = load i32, ptr %1443, align 8, !tbaa !151
  %1471 = load i32, ptr %1099, align 4, !tbaa !94
  %1472 = sdiv i32 %1471, 2
  %1473 = add nsw i32 %1472, 1
  %1474 = add nsw i32 %1471, 1
  %1475 = load ptr, ptr %1096, align 8, !tbaa !149
  %1476 = mul i32 %1473, %1474
  %1477 = mul i32 %1476, %1470
  %1478 = add nsw i32 %1477, %1469
  %1479 = sext i32 %1478 to i64
  %1480 = getelementptr inbounds %struct.NewVert, ptr %1475, i64 %1479, i32 1
  %1481 = load i32, ptr %1444, align 8, !tbaa !151
  %1482 = sub nsw i32 %1100, %1469
  %1483 = mul i32 %1473, %1474
  %1484 = mul i32 %1483, %1481
  %1485 = add nsw i32 %1482, %1484
  %1486 = sext i32 %1485 to i64
  %1487 = getelementptr inbounds %struct.NewVert, ptr %1475, i64 %1486, i32 1
  %1488 = load float, ptr %1445, align 8, !tbaa !165
  %1489 = fcmp oeq float %1488, 1.000000e+00
  br i1 %1489, label %1490, label %1499

1490:                                             ; preds = %1468
  %1491 = load float, ptr %1446, align 8, !tbaa !165
  %1492 = fcmp une float %1491, 1.000000e+00
  br i1 %1492, label %1493, label %1499

1493:                                             ; preds = %1490
  %1494 = load float, ptr %1487, align 4, !tbaa !115
  store float %1494, ptr %48, align 4, !tbaa !115
  %1495 = getelementptr inbounds float, ptr %1487, i64 1
  %1496 = load float, ptr %1495, align 4, !tbaa !115
  store float %1496, ptr %1028, align 4, !tbaa !115
  %1497 = getelementptr inbounds float, ptr %1487, i64 2
  %1498 = load float, ptr %1497, align 4, !tbaa !115
  store float %1498, ptr %1029, align 4, !tbaa !115
  br label %1511

1499:                                             ; preds = %1490, %1468
  %1500 = load float, ptr %1447, align 8, !tbaa !165
  %1501 = fcmp oeq float %1500, 1.000000e+00
  %1502 = fcmp une float %1488, 1.000000e+00
  %1503 = and i1 %1502, %1501
  br i1 %1503, label %1504, label %1510

1504:                                             ; preds = %1499
  %1505 = load float, ptr %1480, align 4, !tbaa !115
  store float %1505, ptr %48, align 4, !tbaa !115
  %1506 = getelementptr inbounds float, ptr %1480, i64 1
  %1507 = load float, ptr %1506, align 4, !tbaa !115
  store float %1507, ptr %1026, align 4, !tbaa !115
  %1508 = getelementptr inbounds float, ptr %1480, i64 2
  %1509 = load float, ptr %1508, align 4, !tbaa !115
  store float %1509, ptr %1027, align 4, !tbaa !115
  br label %1511

1510:                                             ; preds = %1499
  call void @mid_v3_v3v3(ptr noundef nonnull %48, ptr noundef nonnull %1480, ptr noundef nonnull %1487) #13
  br label %1511

1511:                                             ; preds = %1510, %1504, %1493
  %1512 = load i32, ptr %1443, align 8, !tbaa !151
  %1513 = load i32, ptr %1099, align 4, !tbaa !94
  %1514 = sdiv i32 %1513, 2
  %1515 = add nsw i32 %1514, 1
  %1516 = add nsw i32 %1513, 1
  %1517 = load ptr, ptr %1096, align 8, !tbaa !149
  %1518 = mul nsw i32 %1516, %1512
  %1519 = mul nsw i32 %1518, %1515
  %1520 = add nsw i32 %1519, %1469
  %1521 = sext i32 %1520 to i64
  %1522 = getelementptr inbounds %struct.NewVert, ptr %1517, i64 %1521, i32 1
  %1523 = load float, ptr %48, align 4, !tbaa !115
  store float %1523, ptr %1522, align 4, !tbaa !115
  %1524 = load float, ptr %1030, align 4, !tbaa !115
  %1525 = getelementptr inbounds float, ptr %1522, i64 1
  store float %1524, ptr %1525, align 4, !tbaa !115
  %1526 = load float, ptr %1031, align 4, !tbaa !115
  %1527 = getelementptr inbounds float, ptr %1522, i64 2
  store float %1526, ptr %1527, align 4, !tbaa !115
  %1528 = load ptr, ptr %1091, align 8, !tbaa !85
  %1529 = getelementptr inbounds %struct.NewVert, ptr %1517, i64 %1521
  %1530 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %1522, ptr noundef %1528, i32 noundef 0) #13
  store ptr %1530, ptr %1529, align 8, !tbaa !155
  %1531 = getelementptr inbounds %struct.BMHeader, ptr %1530, i64 0, i32 3
  %1532 = load i8, ptr %1531, align 1, !tbaa !71
  %1533 = and i8 %1532, -17
  store i8 %1533, ptr %1531, align 1, !tbaa !71
  %1534 = add nuw nsw i32 %1469, 1
  %1535 = icmp eq i32 %1534, %1100
  br i1 %1535, label %1448, label %1468, !llvm.loop !166

1536:                                             ; preds = %1450, %1536
  %1537 = phi i64 [ 1, %1450 ], [ %1553, %1536 ]
  %1538 = sub nsw i64 %1465, %1537
  %1539 = add nsw i64 %1538, %1466
  %1540 = getelementptr inbounds %struct.NewVert, ptr %1459, i64 %1539
  %1541 = add nsw i64 %1537, %1464
  %1542 = getelementptr inbounds %struct.NewVert, ptr %1459, i64 %1541
  %1543 = load ptr, ptr %1542, align 8, !tbaa !155
  store ptr %1543, ptr %1540, align 8, !tbaa !155
  %1544 = getelementptr inbounds %struct.NewVert, ptr %1459, i64 %1539, i32 1
  %1545 = getelementptr inbounds %struct.NewVert, ptr %1459, i64 %1541, i32 1
  %1546 = load float, ptr %1545, align 4, !tbaa !115
  store float %1546, ptr %1544, align 4, !tbaa !115
  %1547 = getelementptr inbounds float, ptr %1545, i64 1
  %1548 = load float, ptr %1547, align 4, !tbaa !115
  %1549 = getelementptr inbounds float, ptr %1544, i64 1
  store float %1548, ptr %1549, align 4, !tbaa !115
  %1550 = getelementptr inbounds float, ptr %1545, i64 2
  %1551 = load float, ptr %1550, align 4, !tbaa !115
  %1552 = getelementptr inbounds float, ptr %1544, i64 2
  store float %1551, ptr %1552, align 4, !tbaa !115
  %1553 = add nuw nsw i64 %1537, 1
  %1554 = icmp eq i64 %1553, %1467
  br i1 %1554, label %1555, label %1536, !llvm.loop !167

1555:                                             ; preds = %1536, %1448, %1438
  %1556 = getelementptr inbounds %struct.VMesh, ptr %1096, i64 0, i32 4
  %1557 = load i32, ptr %1556, align 8, !tbaa !160
  switch i32 %1557, label %2897 [
    i32 0, label %1558
    i32 1, label %1582
    i32 2, label %1584
    i32 3, label %2750
    i32 4, label %2811
  ]

1558:                                             ; preds = %1555
  %1559 = icmp eq i32 %1098, 2
  br i1 %1559, label %1560, label %2897

1560:                                             ; preds = %1558
  %1561 = load ptr, ptr %1091, align 8, !tbaa !85
  %1562 = call i32 @BM_vert_face_count(ptr noundef %1561) #13
  %1563 = icmp eq i32 %1562, 0
  br i1 %1563, label %1564, label %2897

1564:                                             ; preds = %1560
  %1565 = load ptr, ptr %1095, align 8, !tbaa !93
  %1566 = getelementptr inbounds %struct.VMesh, ptr %1565, i64 0, i32 3
  %1567 = load i32, ptr %1566, align 4, !tbaa !94
  %1568 = sdiv i32 %1567, 2
  %1569 = load ptr, ptr %1565, align 8, !tbaa !149
  %1570 = load ptr, ptr %1569, align 8, !tbaa !155
  %1571 = add nsw i32 %1568, 1
  %1572 = add nsw i32 %1567, 1
  %1573 = mul nsw i32 %1571, %1572
  %1574 = sext i32 %1573 to i64
  %1575 = getelementptr inbounds %struct.NewVert, ptr %1569, i64 %1574
  %1576 = load ptr, ptr %1575, align 8, !tbaa !155
  %1577 = getelementptr inbounds %struct.BevVert, ptr %1091, i64 0, i32 7
  %1578 = load ptr, ptr %1577, align 8, !tbaa !91
  %1579 = getelementptr inbounds %struct.EdgeHalf, ptr %1578, i64 0, i32 2
  %1580 = load ptr, ptr %1579, align 8, !tbaa !97
  %1581 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef %1570, ptr noundef %1576, ptr noundef %1580, i32 noundef 2) #13
  br label %2897

1582:                                             ; preds = %1555
  %1583 = call fastcc ptr @bevel_build_poly(ptr noundef nonnull %61, ptr noundef %0, ptr noundef nonnull %1091)
  br label %2897

1584:                                             ; preds = %1555
  %1585 = load i32, ptr %74, align 4, !tbaa !51
  %1586 = load ptr, ptr %1095, align 8, !tbaa !93
  %1587 = getelementptr inbounds %struct.VMesh, ptr %1586, i64 0, i32 2
  %1588 = load i32, ptr %1587, align 8, !tbaa !148
  %1589 = getelementptr inbounds %struct.VMesh, ptr %1586, i64 0, i32 3
  %1590 = load i32, ptr %1589, align 4, !tbaa !94
  %1591 = sdiv i32 %1590, 2
  %1592 = srem i32 %1590, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #13
  %1593 = add i32 %1588, -5
  %1594 = icmp ult i32 %1593, -2
  br i1 %1594, label %1742, label %1595

1595:                                             ; preds = %1584
  %1596 = load i32, ptr %1109, align 4, !tbaa !88
  %1597 = add i32 %1596, -5
  %1598 = icmp ult i32 %1597, -2
  br i1 %1598, label %1742, label %1599

1599:                                             ; preds = %1595
  %1600 = getelementptr inbounds %struct.VMesh, ptr %1586, i64 0, i32 1
  %1601 = load ptr, ptr %1600, align 8, !tbaa !150
  br label %1602

1602:                                             ; preds = %1704, %1599
  %1603 = phi ptr [ %1601, %1599 ], [ %1705, %1704 ]
  %1604 = load ptr, ptr %1603, align 8, !tbaa !158
  %1605 = load ptr, ptr %1604, align 8, !tbaa !158
  %1606 = getelementptr inbounds %struct.BoundVert, ptr %1603, i64 0, i32 5
  %1607 = load ptr, ptr %1606, align 8, !tbaa !157
  %1608 = icmp eq ptr %1607, null
  br i1 %1608, label %1704, label %1609

1609:                                             ; preds = %1602
  %1610 = getelementptr inbounds %struct.BoundVert, ptr %1604, i64 0, i32 5
  %1611 = load ptr, ptr %1610, align 8, !tbaa !157
  %1612 = icmp eq ptr %1611, null
  br i1 %1612, label %1704, label %1613

1613:                                             ; preds = %1609
  %1614 = getelementptr inbounds %struct.BoundVert, ptr %1605, i64 0, i32 5
  %1615 = load ptr, ptr %1614, align 8, !tbaa !157
  %1616 = icmp eq ptr %1615, null
  br i1 %1616, label %1704, label %1617

1617:                                             ; preds = %1613
  %1618 = load ptr, ptr %1091, align 8, !tbaa !85
  %1619 = getelementptr inbounds %struct.BMVert, ptr %1618, i64 0, i32 2
  %1620 = getelementptr inbounds %struct.EdgeHalf, ptr %1607, i64 0, i32 2
  %1621 = load ptr, ptr %1620, align 8, !tbaa !97
  %1622 = getelementptr inbounds %struct.BMEdge, ptr %1621, i64 0, i32 2
  %1623 = load ptr, ptr %1622, align 8, !tbaa !73
  %1624 = icmp eq ptr %1623, %1618
  %1625 = getelementptr inbounds %struct.BMEdge, ptr %1621, i64 0, i32 3
  %1626 = load ptr, ptr %1625, align 8, !tbaa !76
  %1627 = icmp eq ptr %1626, %1618
  %1628 = select i1 %1627, ptr %1623, ptr null
  %1629 = select i1 %1624, ptr %1626, ptr %1628
  %1630 = getelementptr inbounds %struct.BMVert, ptr %1629, i64 0, i32 2
  %1631 = load float, ptr %1619, align 4, !tbaa !115
  %1632 = load float, ptr %1630, align 4, !tbaa !115
  %1633 = fsub float %1631, %1632
  store float %1633, ptr %42, align 4, !tbaa !115
  %1634 = getelementptr inbounds %struct.BMVert, ptr %1618, i64 0, i32 2, i64 1
  %1635 = load float, ptr %1634, align 4, !tbaa !115
  %1636 = getelementptr inbounds %struct.BMVert, ptr %1629, i64 0, i32 2, i64 1
  %1637 = load float, ptr %1636, align 4, !tbaa !115
  %1638 = fsub float %1635, %1637
  store float %1638, ptr %1032, align 4, !tbaa !115
  %1639 = getelementptr inbounds %struct.BMVert, ptr %1618, i64 0, i32 2, i64 2
  %1640 = load float, ptr %1639, align 4, !tbaa !115
  %1641 = getelementptr inbounds %struct.BMVert, ptr %1629, i64 0, i32 2, i64 2
  %1642 = load float, ptr %1641, align 4, !tbaa !115
  %1643 = fsub float %1640, %1642
  store float %1643, ptr %1033, align 4, !tbaa !115
  %1644 = getelementptr inbounds %struct.EdgeHalf, ptr %1615, i64 0, i32 2
  %1645 = load ptr, ptr %1644, align 8, !tbaa !97
  %1646 = getelementptr inbounds %struct.BMEdge, ptr %1645, i64 0, i32 2
  %1647 = load ptr, ptr %1646, align 8, !tbaa !73
  %1648 = icmp eq ptr %1647, %1618
  %1649 = getelementptr inbounds %struct.BMEdge, ptr %1645, i64 0, i32 3
  %1650 = load ptr, ptr %1649, align 8, !tbaa !76
  %1651 = icmp eq ptr %1650, %1618
  %1652 = select i1 %1651, ptr %1647, ptr null
  %1653 = select i1 %1648, ptr %1650, ptr %1652
  %1654 = getelementptr inbounds %struct.BMVert, ptr %1653, i64 0, i32 2
  %1655 = load float, ptr %1654, align 4, !tbaa !115
  %1656 = fsub float %1655, %1631
  store float %1656, ptr %43, align 4, !tbaa !115
  %1657 = getelementptr inbounds %struct.BMVert, ptr %1653, i64 0, i32 2, i64 1
  %1658 = load float, ptr %1657, align 4, !tbaa !115
  %1659 = fsub float %1658, %1635
  store float %1659, ptr %1034, align 4, !tbaa !115
  %1660 = getelementptr inbounds %struct.BMVert, ptr %1653, i64 0, i32 2, i64 2
  %1661 = load float, ptr %1660, align 4, !tbaa !115
  %1662 = fsub float %1661, %1640
  store float %1662, ptr %1035, align 4, !tbaa !115
  %1663 = fmul float %1638, %1638
  %1664 = call float @llvm.fmuladd.f32(float %1633, float %1633, float %1663)
  %1665 = call float @llvm.fmuladd.f32(float %1643, float %1643, float %1664)
  %1666 = fcmp ogt float %1665, 0x38AA95A5C0000000
  br i1 %1666, label %1667, label %1676

1667:                                             ; preds = %1617
  %1668 = call float @sqrtf(float noundef %1665) #13
  %1669 = fdiv float 1.000000e+00, %1668
  %1670 = load float, ptr %42, align 4, !tbaa !115
  %1671 = fmul float %1670, %1669
  store float %1671, ptr %42, align 4, !tbaa !115
  %1672 = load float, ptr %1032, align 4, !tbaa !115
  %1673 = fmul float %1669, %1672
  store float %1673, ptr %1032, align 4, !tbaa !115
  %1674 = load float, ptr %1033, align 4, !tbaa !115
  %1675 = fmul float %1669, %1674
  br label %1677

1676:                                             ; preds = %1617
  store float 0.000000e+00, ptr %42, align 4, !tbaa !115
  store float 0.000000e+00, ptr %1032, align 4, !tbaa !115
  br label %1677

1677:                                             ; preds = %1676, %1667
  %1678 = phi float [ 0.000000e+00, %1676 ], [ %1675, %1667 ]
  store float %1678, ptr %1033, align 4, !tbaa !115
  %1679 = load float, ptr %43, align 4, !tbaa !115
  %1680 = load float, ptr %1034, align 4, !tbaa !115
  %1681 = fmul float %1680, %1680
  %1682 = call float @llvm.fmuladd.f32(float %1679, float %1679, float %1681)
  %1683 = load float, ptr %1035, align 4, !tbaa !115
  %1684 = call float @llvm.fmuladd.f32(float %1683, float %1683, float %1682)
  %1685 = fcmp ogt float %1684, 0x38AA95A5C0000000
  br i1 %1685, label %1686, label %1695

1686:                                             ; preds = %1677
  %1687 = call float @sqrtf(float noundef %1684) #13
  %1688 = fdiv float 1.000000e+00, %1687
  %1689 = load float, ptr %43, align 4, !tbaa !115
  %1690 = fmul float %1689, %1688
  store float %1690, ptr %43, align 4, !tbaa !115
  %1691 = load float, ptr %1034, align 4, !tbaa !115
  %1692 = fmul float %1688, %1691
  store float %1692, ptr %1034, align 4, !tbaa !115
  %1693 = load float, ptr %1035, align 4, !tbaa !115
  %1694 = fmul float %1688, %1693
  br label %1696

1695:                                             ; preds = %1677
  store float 0.000000e+00, ptr %43, align 4, !tbaa !115
  store float 0.000000e+00, ptr %1034, align 4, !tbaa !115
  br label %1696

1696:                                             ; preds = %1695, %1686
  %1697 = phi float [ 0.000000e+00, %1695 ], [ %1694, %1686 ]
  store float %1697, ptr %1035, align 4, !tbaa !115
  %1698 = call float @angle_normalized_v3v3(ptr noundef nonnull %42, ptr noundef nonnull %43) #13
  %1699 = fcmp olt float %1698, 0x3F1A36E2E0000000
  br i1 %1699, label %1700, label %1704

1700:                                             ; preds = %1696
  %1701 = getelementptr inbounds %struct.BoundVert, ptr %1603, i64 0, i32 5
  %1702 = load ptr, ptr %1701, align 8, !tbaa !157
  %1703 = icmp eq ptr %1702, null
  br label %1708

1704:                                             ; preds = %1696, %1613, %1609, %1602
  %1705 = load ptr, ptr %1603, align 8, !tbaa !158
  %1706 = load ptr, ptr %1600, align 8, !tbaa !150
  %1707 = icmp eq ptr %1705, %1706
  br i1 %1707, label %1708, label %1602, !llvm.loop !168

1708:                                             ; preds = %1704, %1700
  %1709 = phi i1 [ %1703, %1700 ], [ true, %1704 ]
  %1710 = phi ptr [ %1603, %1700 ], [ %1705, %1704 ]
  br i1 %1709, label %1742, label %1711

1711:                                             ; preds = %1708
  %1712 = getelementptr inbounds %struct.BevVert, ptr %1091, i64 0, i32 7
  %1713 = load ptr, ptr %1712, align 8, !tbaa !91
  %1714 = getelementptr inbounds %struct.BevVert, ptr %1091, i64 0, i32 1
  %1715 = load i32, ptr %1714, align 8, !tbaa !87
  %1716 = sext i32 %1715 to i64
  %1717 = getelementptr inbounds %struct.EdgeHalf, ptr %1713, i64 %1716
  %1718 = icmp eq i32 %1715, 0
  br i1 %1718, label %1742, label %1719

1719:                                             ; preds = %1711
  %1720 = load float, ptr %42, align 4
  %1721 = load float, ptr %1036, align 4
  %1722 = load float, ptr %1037, align 4
  br label %1723

1723:                                             ; preds = %1719, %1739
  %1724 = phi ptr [ %1713, %1719 ], [ %1740, %1739 ]
  %1725 = getelementptr inbounds %struct.EdgeHalf, ptr %1724, i64 0, i32 4
  %1726 = load ptr, ptr %1725, align 8, !tbaa !102
  %1727 = icmp eq ptr %1726, null
  br i1 %1727, label %1739, label %1728

1728:                                             ; preds = %1723
  %1729 = getelementptr inbounds %struct.BMFace, ptr %1726, i64 0, i32 4
  %1730 = load float, ptr %1729, align 4, !tbaa !115
  %1731 = getelementptr inbounds %struct.BMFace, ptr %1726, i64 0, i32 4, i64 1
  %1732 = load float, ptr %1731, align 4, !tbaa !115
  %1733 = fmul float %1721, %1732
  %1734 = call float @llvm.fmuladd.f32(float %1720, float %1730, float %1733)
  %1735 = getelementptr inbounds %struct.BMFace, ptr %1726, i64 0, i32 4, i64 2
  %1736 = load float, ptr %1735, align 4, !tbaa !115
  %1737 = call float @llvm.fmuladd.f32(float %1722, float %1736, float %1734)
  %1738 = fcmp ogt float %1737, 0x3EB0C6F7A0000000
  br i1 %1738, label %1742, label %1739

1739:                                             ; preds = %1728, %1723
  %1740 = getelementptr inbounds %struct.EdgeHalf, ptr %1724, i64 1
  %1741 = icmp eq ptr %1740, %1717
  br i1 %1741, label %1742, label %1723, !llvm.loop !169

1742:                                             ; preds = %1739, %1728, %1711, %1708, %1595, %1584
  %1743 = phi ptr [ null, %1595 ], [ null, %1584 ], [ null, %1708 ], [ %1710, %1711 ], [ null, %1728 ], [ %1710, %1739 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #13
  %1744 = icmp eq ptr %1743, null
  br i1 %1744, label %1879, label %1745

1745:                                             ; preds = %1742
  %1746 = call fastcc ptr @adj_vmesh(ptr noundef nonnull %61, ptr noundef %1091)
  %1747 = load ptr, ptr %1095, align 8, !tbaa !93
  %1748 = getelementptr inbounds %struct.VMesh, ptr %1747, i64 0, i32 2
  %1749 = load i32, ptr %1748, align 8, !tbaa !148
  %1750 = getelementptr inbounds %struct.VMesh, ptr %1747, i64 0, i32 3
  %1751 = load i32, ptr %1750, align 4, !tbaa !94
  %1752 = sdiv i32 %1751, 2
  %1753 = getelementptr inbounds %struct.BoundVert, ptr %1743, i64 0, i32 6
  %1754 = load i32, ptr %1753, align 8, !tbaa !151
  %1755 = load ptr, ptr %1743, align 8, !tbaa !158
  %1756 = load ptr, ptr %1755, align 8, !tbaa !158
  %1757 = getelementptr inbounds %struct.BoundVert, ptr %1756, i64 0, i32 6
  %1758 = load i32, ptr %1757, align 8, !tbaa !151
  %1759 = icmp sgt i32 %1749, 0
  br i1 %1759, label %1760, label %2411

1760:                                             ; preds = %1745
  %1761 = and i32 %1751, 1
  %1762 = icmp slt i32 %1751, 2
  %1763 = icmp slt i32 %1751, -1
  %1764 = getelementptr inbounds %struct.VMesh, ptr %1746, i64 0, i32 3
  %1765 = icmp eq i32 %1761, 0
  %1766 = getelementptr inbounds %struct.BoundVert, ptr %1743, i64 0, i32 7
  %1767 = getelementptr inbounds %struct.BoundVert, ptr %1743, i64 0, i32 5
  %1768 = getelementptr inbounds %struct.BoundVert, ptr %1743, i64 0, i32 7, i32 1
  %1769 = getelementptr inbounds %struct.BoundVert, ptr %1743, i64 0, i32 7, i32 1, i64 1
  %1770 = getelementptr inbounds %struct.BoundVert, ptr %1743, i64 0, i32 7, i32 1, i64 2
  %1771 = getelementptr inbounds %struct.BoundVert, ptr %1743, i64 0, i32 7, i32 3
  %1772 = getelementptr inbounds %struct.BoundVert, ptr %1743, i64 0, i32 7, i32 3, i64 1
  %1773 = getelementptr inbounds %struct.BoundVert, ptr %1743, i64 0, i32 7, i32 3, i64 2
  %1774 = getelementptr inbounds %struct.BoundVert, ptr %1743, i64 0, i32 7, i32 2
  br label %1775

1775:                                             ; preds = %1760, %1876
  %1776 = phi i32 [ 0, %1760 ], [ %1877, %1876 ]
  br i1 %1762, label %1876, label %1777

1777:                                             ; preds = %1775
  %1778 = icmp eq i32 %1776, 0
  %1779 = icmp eq i32 %1776, 0
  %1780 = icmp eq i32 %1776, %1754
  %1781 = icmp eq i32 %1776, %1758
  br label %1782

1782:                                             ; preds = %1777, %1873
  %1783 = phi i32 [ 1, %1777 ], [ %1874, %1873 ]
  br i1 %1763, label %1873, label %1784

1784:                                             ; preds = %1782
  %1785 = icmp eq i32 %1783, %1752
  %1786 = select i1 %1779, i1 %1785, i1 false
  %1787 = select i1 %1786, i1 true, i1 %1780
  %1788 = select i1 %1787, i1 true, i1 %1781
  br label %1789

1789:                                             ; preds = %1784, %1870
  %1790 = phi i32 [ 0, %1784 ], [ %1871, %1870 ]
  %1791 = load i32, ptr %1764, align 4, !tbaa !94
  %1792 = sdiv i32 %1791, 2
  %1793 = and i32 %1791, -2147483647
  %1794 = icmp eq i32 %1793, 1
  br i1 %1794, label %1795, label %1799

1795:                                             ; preds = %1789
  %1796 = icmp sge i32 %1792, %1783
  %1797 = icmp sge i32 %1792, %1790
  %1798 = and i1 %1796, %1797
  br label %1808

1799:                                             ; preds = %1789
  %1800 = icmp sle i32 %1792, %1783
  %1801 = icmp slt i32 %1792, %1790
  %1802 = or i1 %1800, %1801
  br i1 %1802, label %1803, label %1810

1803:                                             ; preds = %1799
  %1804 = icmp eq i32 %1792, %1783
  %1805 = icmp eq i32 %1792, %1790
  %1806 = and i1 %1804, %1805
  %1807 = and i1 %1778, %1806
  br label %1808

1808:                                             ; preds = %1803, %1795
  %1809 = phi i1 [ %1798, %1795 ], [ %1807, %1803 ]
  br i1 %1809, label %1810, label %1870

1810:                                             ; preds = %1808, %1799
  %1811 = icmp eq i32 %1790, %1752
  %1812 = and i1 %1765, %1811
  %1813 = select i1 %1812, i1 %1788, i1 false
  %1814 = zext i1 %1813 to i8
  %1815 = add nsw i32 %1792, 1
  %1816 = add nsw i32 %1791, 1
  %1817 = load ptr, ptr %1746, align 8, !tbaa !149
  %1818 = mul i32 %1815, %1776
  %1819 = add i32 %1818, %1783
  %1820 = mul i32 %1819, %1816
  %1821 = add i32 %1820, %1790
  %1822 = sext i32 %1821 to i64
  %1823 = getelementptr inbounds %struct.NewVert, ptr %1817, i64 %1822, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %35) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %37) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %38) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %39) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #13
  %1824 = load ptr, ptr %1767, align 8, !tbaa !157
  %1825 = load float, ptr %1768, align 4, !tbaa !115
  store float %1825, ptr %31, align 4, !tbaa !115
  %1826 = load float, ptr %1769, align 4, !tbaa !115
  store float %1826, ptr %1038, align 4, !tbaa !115
  %1827 = load float, ptr %1770, align 4, !tbaa !115
  store float %1827, ptr %1039, align 4, !tbaa !115
  %1828 = load float, ptr %1771, align 4, !tbaa !115
  store float %1828, ptr %32, align 4, !tbaa !115
  %1829 = load float, ptr %1772, align 4, !tbaa !115
  store float %1829, ptr %1040, align 4, !tbaa !115
  %1830 = load float, ptr %1773, align 4, !tbaa !115
  store float %1830, ptr %1041, align 4, !tbaa !115
  %1831 = getelementptr inbounds %struct.EdgeHalf, ptr %1824, i64 0, i32 2
  %1832 = load ptr, ptr %1831, align 8, !tbaa !97
  %1833 = getelementptr inbounds %struct.BMEdge, ptr %1832, i64 0, i32 2
  %1834 = load ptr, ptr %1833, align 8, !tbaa !73
  %1835 = getelementptr inbounds %struct.BMVert, ptr %1834, i64 0, i32 2
  %1836 = getelementptr inbounds %struct.BMEdge, ptr %1832, i64 0, i32 3
  %1837 = load ptr, ptr %1836, align 8, !tbaa !76
  %1838 = getelementptr inbounds %struct.BMVert, ptr %1837, i64 0, i32 2
  %1839 = load float, ptr %1835, align 4, !tbaa !115
  %1840 = load float, ptr %1838, align 4, !tbaa !115
  %1841 = fsub float %1839, %1840
  store float %1841, ptr %33, align 4, !tbaa !115
  %1842 = getelementptr inbounds %struct.BMVert, ptr %1834, i64 0, i32 2, i64 1
  %1843 = load float, ptr %1842, align 4, !tbaa !115
  %1844 = getelementptr inbounds %struct.BMVert, ptr %1837, i64 0, i32 2, i64 1
  %1845 = load float, ptr %1844, align 4, !tbaa !115
  %1846 = fsub float %1843, %1845
  store float %1846, ptr %1042, align 4, !tbaa !115
  %1847 = getelementptr inbounds %struct.BMVert, ptr %1834, i64 0, i32 2, i64 2
  %1848 = load float, ptr %1847, align 4, !tbaa !115
  %1849 = getelementptr inbounds %struct.BMVert, ptr %1837, i64 0, i32 2, i64 2
  %1850 = load float, ptr %1849, align 4, !tbaa !115
  %1851 = fsub float %1848, %1850
  store float %1851, ptr %1043, align 4, !tbaa !115
  call void @plane_from_point_normal_v3(ptr noundef nonnull %37, ptr noundef nonnull %1823, ptr noundef nonnull %33) #13
  call void @closest_to_plane_v3(ptr noundef nonnull %34, ptr noundef nonnull %37, ptr noundef nonnull %31) #13
  call void @closest_to_plane_v3(ptr noundef nonnull %35, ptr noundef nonnull %37, ptr noundef nonnull %32) #13
  call void @closest_to_plane_v3(ptr noundef nonnull %36, ptr noundef nonnull %37, ptr noundef nonnull %1774) #13
  %1852 = call fastcc zeroext i8 @make_unit_square_map(ptr noundef nonnull %34, ptr noundef nonnull %36, ptr noundef nonnull %35, ptr noundef nonnull %38), !range !170
  %1853 = icmp eq i8 %1852, 0
  br i1 %1853, label %1859, label %1854

1854:                                             ; preds = %1810
  %1855 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %39, ptr noundef nonnull %38) #13
  %1856 = icmp eq i8 %1855, 0
  br i1 %1856, label %1869, label %1857

1857:                                             ; preds = %1854
  call void @mul_v3_m4v3(ptr noundef nonnull %40, ptr noundef nonnull %39, ptr noundef nonnull %1823) #13
  %1858 = load float, ptr %1766, align 8, !tbaa !171
  call fastcc void @snap_to_superellipsoid(ptr noundef nonnull %40, float noundef %1858, i8 noundef zeroext %1814)
  call void @mul_v3_m4v3(ptr noundef nonnull %41, ptr noundef nonnull %38, ptr noundef nonnull %40) #13
  br label %1860

1859:                                             ; preds = %1810
  call void @closest_to_line_segment_v3(ptr noundef nonnull %40, ptr noundef nonnull %1823, ptr noundef nonnull %34, ptr noundef nonnull %35) #13
  br label %1860

1860:                                             ; preds = %1857, %1859
  %1861 = phi ptr [ %40, %1859 ], [ %41, %1857 ]
  %1862 = phi ptr [ %1046, %1859 ], [ %1044, %1857 ]
  %1863 = phi ptr [ %1047, %1859 ], [ %1045, %1857 ]
  %1864 = load float, ptr %1861, align 4, !tbaa !115
  store float %1864, ptr %1823, align 4, !tbaa !115
  %1865 = load float, ptr %1862, align 4, !tbaa !115
  %1866 = getelementptr inbounds float, ptr %1823, i64 1
  store float %1865, ptr %1866, align 4, !tbaa !115
  %1867 = load float, ptr %1863, align 4, !tbaa !115
  %1868 = getelementptr inbounds float, ptr %1823, i64 2
  store float %1867, ptr %1868, align 4, !tbaa !115
  br label %1869

1869:                                             ; preds = %1860, %1854
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %39) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %38) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %37) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %35) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #13
  br label %1870

1870:                                             ; preds = %1869, %1808
  %1871 = add nuw nsw i32 %1790, 1
  %1872 = icmp eq i32 %1790, %1752
  br i1 %1872, label %1873, label %1789, !llvm.loop !172

1873:                                             ; preds = %1870, %1782
  %1874 = add nuw nsw i32 %1783, 1
  %1875 = icmp eq i32 %1783, %1752
  br i1 %1875, label %1876, label %1782, !llvm.loop !173

1876:                                             ; preds = %1873, %1775
  %1877 = add nuw nsw i32 %1776, 1
  %1878 = icmp eq i32 %1877, %1749
  br i1 %1878, label %2411, label %1775, !llvm.loop !174

1879:                                             ; preds = %1742
  %1880 = getelementptr inbounds %struct.BevVert, ptr %1091, i64 0, i32 1
  %1881 = load i32, ptr %1880, align 8, !tbaa !87
  %1882 = icmp eq i32 %1881, 3
  br i1 %1882, label %1883, label %1912

1883:                                             ; preds = %1879
  %1884 = load i32, ptr %1109, align 4, !tbaa !88
  %1885 = icmp eq i32 %1884, 3
  br i1 %1885, label %1886, label %1912

1886:                                             ; preds = %1883
  %1887 = getelementptr inbounds %struct.BevVert, ptr %1091, i64 0, i32 7
  br label %1888

1888:                                             ; preds = %1886, %1898
  %1889 = phi i64 [ 0, %1886 ], [ %1900, %1898 ]
  %1890 = phi float [ 0.000000e+00, %1886 ], [ %1899, %1898 ]
  %1891 = load ptr, ptr %1887, align 8, !tbaa !91
  %1892 = getelementptr inbounds %struct.EdgeHalf, ptr %1891, i64 %1889, i32 2
  %1893 = load ptr, ptr %1892, align 8, !tbaa !97
  %1894 = call float @BM_edge_calc_face_angle_signed_ex(ptr noundef %1893, float noundef 0.000000e+00) #13
  %1895 = fcmp ole float %1894, 0x3FE921FB60000000
  %1896 = fcmp oge float %1894, 0x4002D97C80000000
  %1897 = or i1 %1895, %1896
  br i1 %1897, label %1912, label %1898

1898:                                             ; preds = %1888
  %1899 = fadd float %1890, %1894
  %1900 = add nuw nsw i64 %1889, 1
  %1901 = icmp eq i64 %1900, 3
  br i1 %1901, label %1902, label %1888, !llvm.loop !175

1902:                                             ; preds = %1898
  %1903 = fadd float %1899, 0xC012D97C80000000
  %1904 = call float @llvm.fabs.f32(float %1903)
  %1905 = load float, ptr %67, align 4, !tbaa !44
  %1906 = fcmp une float %1905, 4.000000e+00
  %1907 = fcmp ule float %1904, 0x3FC921FB60000000
  %1908 = select i1 %1906, i1 true, i1 %1907
  %1909 = fcmp ule float %1904, 0x3FE921FB60000000
  %1910 = select i1 %1908, i1 %1909, i1 false
  %1911 = zext i1 %1910 to i8
  br label %1912

1912:                                             ; preds = %1888, %1902, %1883, %1879
  %1913 = phi i8 [ 0, %1883 ], [ 0, %1879 ], [ %1911, %1902 ], [ 0, %1888 ]
  %1914 = icmp eq i8 %1913, 0
  br i1 %1914, label %2409, label %1915

1915:                                             ; preds = %1912
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %29) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %30) #13
  %1916 = load ptr, ptr %1095, align 8, !tbaa !93
  %1917 = getelementptr inbounds %struct.VMesh, ptr %1916, i64 0, i32 1
  %1918 = load ptr, ptr %1917, align 8, !tbaa !150
  %1919 = getelementptr inbounds %struct.BoundVert, ptr %1918, i64 0, i32 2, i32 1
  %1920 = load float, ptr %1919, align 4, !tbaa !115
  %1921 = getelementptr inbounds %struct.BoundVert, ptr %1918, i64 0, i32 2, i32 1, i64 1
  %1922 = load float, ptr %1921, align 4, !tbaa !115
  %1923 = getelementptr inbounds %struct.BoundVert, ptr %1918, i64 0, i32 2, i32 1, i64 2
  %1924 = load float, ptr %1923, align 4, !tbaa !115
  %1925 = load ptr, ptr %1918, align 8, !tbaa !158
  %1926 = getelementptr inbounds %struct.BoundVert, ptr %1925, i64 0, i32 2, i32 1
  %1927 = load float, ptr %1926, align 4, !tbaa !115
  %1928 = getelementptr inbounds %struct.BoundVert, ptr %1925, i64 0, i32 2, i32 1, i64 1
  %1929 = load float, ptr %1928, align 4, !tbaa !115
  %1930 = getelementptr inbounds %struct.BoundVert, ptr %1925, i64 0, i32 2, i32 1, i64 2
  %1931 = load float, ptr %1930, align 4, !tbaa !115
  %1932 = load ptr, ptr %1925, align 8, !tbaa !158
  %1933 = getelementptr inbounds %struct.BoundVert, ptr %1932, i64 0, i32 2, i32 1
  %1934 = load float, ptr %1933, align 4, !tbaa !115
  %1935 = getelementptr inbounds %struct.BoundVert, ptr %1932, i64 0, i32 2, i32 1, i64 1
  %1936 = load float, ptr %1935, align 4, !tbaa !115
  %1937 = getelementptr inbounds %struct.BoundVert, ptr %1932, i64 0, i32 2, i32 1, i64 2
  %1938 = load float, ptr %1937, align 4, !tbaa !115
  %1939 = load ptr, ptr %1091, align 8, !tbaa !85
  %1940 = getelementptr inbounds %struct.BMVert, ptr %1939, i64 0, i32 2
  store float %1920, ptr %29, align 16, !tbaa !115
  store float %1922, ptr %1048, align 4, !tbaa !115
  store float %1924, ptr %1049, align 8, !tbaa !115
  %1941 = fsub float %1920, %1927
  store float %1941, ptr %29, align 16, !tbaa !115
  %1942 = fsub float %1922, %1929
  store float %1942, ptr %1048, align 4, !tbaa !115
  %1943 = fsub float %1924, %1931
  store float %1943, ptr %1049, align 8, !tbaa !115
  %1944 = fsub float %1941, %1934
  store float %1944, ptr %29, align 16, !tbaa !115
  %1945 = fsub float %1942, %1936
  store float %1945, ptr %1048, align 4, !tbaa !115
  %1946 = fsub float %1943, %1938
  store float %1946, ptr %1049, align 8, !tbaa !115
  %1947 = load float, ptr %1940, align 4, !tbaa !115
  %1948 = fadd float %1944, %1947
  store float %1948, ptr %29, align 16, !tbaa !115
  %1949 = getelementptr inbounds %struct.BMVert, ptr %1939, i64 0, i32 2, i64 1
  %1950 = load float, ptr %1949, align 4, !tbaa !115
  %1951 = fadd float %1945, %1950
  store float %1951, ptr %1048, align 4, !tbaa !115
  %1952 = getelementptr inbounds %struct.BMVert, ptr %1939, i64 0, i32 2, i64 2
  %1953 = load float, ptr %1952, align 4, !tbaa !115
  %1954 = fadd float %1946, %1953
  store float %1954, ptr %1049, align 8, !tbaa !115
  %1955 = fmul float %1948, 5.000000e-01
  store float %1955, ptr %29, align 16, !tbaa !115
  %1956 = fmul float %1951, 5.000000e-01
  store float %1956, ptr %1048, align 4, !tbaa !115
  %1957 = fmul float %1954, 5.000000e-01
  store float %1957, ptr %1049, align 8, !tbaa !115
  store float 0.000000e+00, ptr %1050, align 4, !tbaa !115
  store float %1927, ptr %1051, align 16, !tbaa !115
  store float %1929, ptr %1052, align 4, !tbaa !115
  store float %1931, ptr %1053, align 8, !tbaa !115
  %1958 = fsub float %1927, %1920
  store float %1958, ptr %1051, align 16, !tbaa !115
  %1959 = fsub float %1929, %1922
  store float %1959, ptr %1052, align 4, !tbaa !115
  %1960 = fsub float %1931, %1924
  store float %1960, ptr %1053, align 8, !tbaa !115
  %1961 = fsub float %1958, %1934
  store float %1961, ptr %1051, align 16, !tbaa !115
  %1962 = fsub float %1959, %1936
  store float %1962, ptr %1052, align 4, !tbaa !115
  %1963 = fsub float %1960, %1938
  store float %1963, ptr %1053, align 8, !tbaa !115
  %1964 = load float, ptr %1940, align 4, !tbaa !115
  %1965 = fadd float %1961, %1964
  store float %1965, ptr %1051, align 16, !tbaa !115
  %1966 = fadd float %1962, %1950
  store float %1966, ptr %1052, align 4, !tbaa !115
  %1967 = fadd float %1963, %1953
  store float %1967, ptr %1053, align 8, !tbaa !115
  %1968 = fmul float %1965, 5.000000e-01
  store float %1968, ptr %1051, align 16, !tbaa !115
  %1969 = fmul float %1966, 5.000000e-01
  store float %1969, ptr %1052, align 4, !tbaa !115
  %1970 = fmul float %1967, 5.000000e-01
  store float %1970, ptr %1053, align 8, !tbaa !115
  store float 0.000000e+00, ptr %1054, align 4, !tbaa !115
  store float %1934, ptr %1055, align 16, !tbaa !115
  store float %1936, ptr %1056, align 4, !tbaa !115
  store float %1938, ptr %1057, align 8, !tbaa !115
  %1971 = fsub float %1934, %1920
  store float %1971, ptr %1055, align 16, !tbaa !115
  %1972 = fsub float %1936, %1922
  store float %1972, ptr %1056, align 4, !tbaa !115
  %1973 = fsub float %1938, %1924
  store float %1973, ptr %1057, align 8, !tbaa !115
  %1974 = fsub float %1971, %1927
  store float %1974, ptr %1055, align 16, !tbaa !115
  %1975 = fsub float %1972, %1929
  store float %1975, ptr %1056, align 4, !tbaa !115
  %1976 = fsub float %1973, %1931
  store float %1976, ptr %1057, align 8, !tbaa !115
  %1977 = load float, ptr %1940, align 4, !tbaa !115
  %1978 = fadd float %1974, %1977
  store float %1978, ptr %1055, align 16, !tbaa !115
  %1979 = load float, ptr %1949, align 4, !tbaa !115
  %1980 = fadd float %1975, %1979
  store float %1980, ptr %1056, align 4, !tbaa !115
  %1981 = load float, ptr %1952, align 4, !tbaa !115
  %1982 = fadd float %1976, %1981
  store float %1982, ptr %1057, align 8, !tbaa !115
  %1983 = fmul float %1978, 5.000000e-01
  store float %1983, ptr %1055, align 16, !tbaa !115
  %1984 = fmul float %1980, 5.000000e-01
  store float %1984, ptr %1056, align 4, !tbaa !115
  %1985 = fmul float %1982, 5.000000e-01
  store float %1985, ptr %1057, align 8, !tbaa !115
  store float 0.000000e+00, ptr %1058, align 4, !tbaa !115
  store float %1920, ptr %1059, align 16, !tbaa !115
  store float %1922, ptr %1060, align 4, !tbaa !115
  store float %1924, ptr %1061, align 8, !tbaa !115
  %1986 = fadd float %1920, %1927
  store float %1986, ptr %1059, align 16, !tbaa !115
  %1987 = fadd float %1922, %1929
  store float %1987, ptr %1060, align 4, !tbaa !115
  %1988 = fadd float %1924, %1931
  store float %1988, ptr %1061, align 8, !tbaa !115
  %1989 = fadd float %1986, %1934
  store float %1989, ptr %1059, align 16, !tbaa !115
  %1990 = fadd float %1987, %1936
  store float %1990, ptr %1060, align 4, !tbaa !115
  %1991 = fadd float %1988, %1938
  store float %1991, ptr %1061, align 8, !tbaa !115
  %1992 = load float, ptr %1940, align 4, !tbaa !115
  %1993 = fsub float %1989, %1992
  store float %1993, ptr %1059, align 16, !tbaa !115
  %1994 = load float, ptr %1949, align 4, !tbaa !115
  %1995 = fsub float %1990, %1994
  store float %1995, ptr %1060, align 4, !tbaa !115
  %1996 = load float, ptr %1952, align 4, !tbaa !115
  %1997 = fsub float %1991, %1996
  store float %1997, ptr %1061, align 8, !tbaa !115
  %1998 = fmul float %1993, 5.000000e-01
  store float %1998, ptr %1059, align 16, !tbaa !115
  %1999 = fmul float %1995, 5.000000e-01
  store float %1999, ptr %1060, align 4, !tbaa !115
  %2000 = fmul float %1997, 5.000000e-01
  store float %2000, ptr %1061, align 8, !tbaa !115
  store float 1.000000e+00, ptr %1062, align 4, !tbaa !115
  %2001 = load i32, ptr %65, align 8, !tbaa !43
  %2002 = sdiv i32 %2001, 2
  %2003 = load ptr, ptr %82, align 8, !tbaa !53
  %2004 = load float, ptr %67, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #13
  %2005 = fcmp oeq float %2004, 4.000000e+00
  br i1 %2005, label %2006, label %2130

2006:                                             ; preds = %1915
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #13
  %2007 = call ptr @BLI_memarena_alloc(ptr noundef %2003, i64 noundef 32) #13
  %2008 = getelementptr inbounds %struct.VMesh, ptr %2007, i64 0, i32 2
  store i32 3, ptr %2008, align 8, !tbaa !148
  %2009 = getelementptr inbounds %struct.VMesh, ptr %2007, i64 0, i32 3
  store i32 %2001, ptr %2009, align 4, !tbaa !94
  %2010 = getelementptr inbounds %struct.VMesh, ptr %2007, i64 0, i32 1
  store ptr null, ptr %2010, align 8, !tbaa !150
  %2011 = mul i32 %2002, 3
  %2012 = add i32 %2011, 3
  %2013 = add nsw i32 %2001, 1
  %2014 = mul nsw i32 %2012, %2013
  %2015 = sext i32 %2014 to i64
  %2016 = mul nsw i64 %2015, 24
  %2017 = call ptr @BLI_memarena_alloc(ptr noundef %2003, i64 noundef %2016) #13
  store ptr %2017, ptr %2007, align 8, !tbaa !149
  %2018 = getelementptr inbounds %struct.VMesh, ptr %2007, i64 0, i32 4
  store i32 2, ptr %2018, align 8, !tbaa !160
  store i32 0, ptr %2008, align 8, !tbaa !148
  br label %2024

2019:                                             ; preds = %2047
  %2020 = icmp slt i32 %2001, -1
  %2021 = sitofp i32 %2001 to float
  %2022 = add nsw i32 %2002, 1
  %2023 = zext i32 %2022 to i64
  br label %2055

2024:                                             ; preds = %2006, %2047
  %2025 = phi i64 [ 0, %2006 ], [ %2053, %2047 ]
  store float 0.000000e+00, ptr %26, align 4, !tbaa !115
  store float 0.000000e+00, ptr %1070, align 4, !tbaa !115
  store float 0.000000e+00, ptr %1071, align 4, !tbaa !115
  %2026 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 %2025
  store float 1.000000e+00, ptr %2026, align 4, !tbaa !115
  %2027 = call ptr @BLI_memarena_alloc(ptr noundef %2003, i64 noundef 176) #13
  %2028 = getelementptr inbounds %struct.BoundVert, ptr %2027, i64 0, i32 2, i32 1
  %2029 = load float, ptr %26, align 4, !tbaa !115
  store float %2029, ptr %2028, align 4, !tbaa !115
  %2030 = load float, ptr %1070, align 4, !tbaa !115
  %2031 = getelementptr inbounds %struct.BoundVert, ptr %2027, i64 0, i32 2, i32 1, i64 1
  store float %2030, ptr %2031, align 4, !tbaa !115
  %2032 = load float, ptr %1071, align 4, !tbaa !115
  %2033 = getelementptr inbounds %struct.BoundVert, ptr %2027, i64 0, i32 2, i32 1, i64 2
  store float %2032, ptr %2033, align 4, !tbaa !115
  %2034 = load ptr, ptr %2010, align 8, !tbaa !150
  %2035 = icmp eq ptr %2034, null
  br i1 %2035, label %2036, label %2039

2036:                                             ; preds = %2024
  %2037 = getelementptr inbounds %struct.BoundVert, ptr %2027, i64 0, i32 6
  store i32 0, ptr %2037, align 8, !tbaa !151
  store ptr %2027, ptr %2010, align 8, !tbaa !150
  %2038 = getelementptr inbounds %struct.BoundVert, ptr %2027, i64 0, i32 1
  br label %2047

2039:                                             ; preds = %2024
  %2040 = getelementptr inbounds %struct.BoundVert, ptr %2034, i64 0, i32 1
  %2041 = load ptr, ptr %2040, align 8, !tbaa !176
  %2042 = getelementptr inbounds %struct.BoundVert, ptr %2041, i64 0, i32 6
  %2043 = load i32, ptr %2042, align 8, !tbaa !151
  %2044 = add nsw i32 %2043, 1
  %2045 = getelementptr inbounds %struct.BoundVert, ptr %2027, i64 0, i32 6
  store i32 %2044, ptr %2045, align 8, !tbaa !151
  %2046 = getelementptr inbounds %struct.BoundVert, ptr %2027, i64 0, i32 1
  store ptr %2041, ptr %2046, align 8, !tbaa !176
  store ptr %2034, ptr %2027, align 8, !tbaa !158
  br label %2047

2047:                                             ; preds = %2036, %2039
  %2048 = phi ptr [ %2038, %2036 ], [ %2041, %2039 ]
  %2049 = phi ptr [ %2027, %2036 ], [ %2040, %2039 ]
  store ptr %2027, ptr %2048, align 8, !tbaa !113
  store ptr %2027, ptr %2049, align 8, !tbaa !113
  %2050 = getelementptr inbounds %struct.BoundVert, ptr %2027, i64 0, i32 7
  store float 1.000000e+00, ptr %2050, align 8, !tbaa !165
  %2051 = load i32, ptr %2008, align 8, !tbaa !148
  %2052 = add nsw i32 %2051, 1
  store i32 %2052, ptr %2008, align 8, !tbaa !148
  %2053 = add nuw nsw i64 %2025, 1
  %2054 = icmp eq i64 %2053, 3
  br i1 %2054, label %2019, label %2024, !llvm.loop !177

2055:                                             ; preds = %2019, %2126
  %2056 = phi i64 [ 0, %2019 ], [ %2127, %2126 ]
  br i1 %2020, label %2126, label %2057

2057:                                             ; preds = %2055
  %2058 = icmp eq i64 %2056, 0
  %2059 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 %2056
  %2060 = add nuw nsw i64 %2056, 1
  %2061 = icmp eq i64 %2060, 3
  %2062 = and i64 %2060, 4294967295
  %2063 = select i1 %2061, i64 0, i64 %2062
  %2064 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 %2063
  %2065 = trunc i64 %2056 to i32
  %2066 = add i32 %2065, 2
  %2067 = urem i32 %2066, 3
  %2068 = zext nneg i32 %2067 to i64
  %2069 = getelementptr inbounds [3 x float], ptr %26, i64 0, i64 %2068
  %2070 = load i32, ptr %2009, align 4, !tbaa !94
  %2071 = sdiv i32 %2070, 2
  %2072 = and i32 %2070, -2147483647
  %2073 = icmp eq i32 %2072, 1
  %2074 = add nsw i32 %2071, 1
  %2075 = add nsw i32 %2070, 1
  %2076 = trunc i64 %2056 to i32
  %2077 = mul i32 %2074, %2076
  %2078 = sext i32 %2071 to i64
  %2079 = zext i32 %2071 to i64
  %2080 = sext i32 %2071 to i64
  br label %2081

2081:                                             ; preds = %2057, %2123
  %2082 = phi i32 [ 0, %2057 ], [ %2124, %2123 ]
  %2083 = icmp sle i32 %2071, %2082
  %2084 = icmp eq i32 %2071, %2082
  %2085 = icmp sge i32 %2071, %2082
  %2086 = sitofp i32 %2082 to float
  %2087 = fmul float %2086, 2.000000e+00
  %2088 = fdiv float %2087, %2021
  %2089 = add i32 %2077, %2082
  %2090 = mul i32 %2089, %2075
  br label %2091

2091:                                             ; preds = %2081, %2120
  %2092 = phi i64 [ 0, %2081 ], [ %2121, %2120 ]
  br i1 %2073, label %2093, label %2096

2093:                                             ; preds = %2091
  %2094 = icmp sle i64 %2092, %2078
  %2095 = and i1 %2085, %2094
  br label %2103

2096:                                             ; preds = %2091
  %2097 = icmp sgt i64 %2092, %2080
  %2098 = or i1 %2083, %2097
  br i1 %2098, label %2099, label %2105

2099:                                             ; preds = %2096
  %2100 = icmp eq i64 %2092, %2079
  %2101 = and i1 %2084, %2100
  %2102 = and i1 %2058, %2101
  br label %2103

2103:                                             ; preds = %2099, %2093
  %2104 = phi i1 [ %2095, %2093 ], [ %2102, %2099 ]
  br i1 %2104, label %2105, label %2120

2105:                                             ; preds = %2103, %2096
  store float 1.000000e+00, ptr %2059, align 4, !tbaa !115
  %2106 = trunc i64 %2092 to i32
  %2107 = sitofp i32 %2106 to float
  %2108 = fmul float %2107, 2.000000e+00
  %2109 = fdiv float %2108, %2021
  store float %2109, ptr %2064, align 4, !tbaa !115
  store float %2088, ptr %2069, align 4, !tbaa !115
  %2110 = load ptr, ptr %2007, align 8, !tbaa !149
  %2111 = trunc i64 %2092 to i32
  %2112 = add i32 %2090, %2111
  %2113 = sext i32 %2112 to i64
  %2114 = getelementptr inbounds %struct.NewVert, ptr %2110, i64 %2113, i32 1
  %2115 = load float, ptr %26, align 4, !tbaa !115
  store float %2115, ptr %2114, align 4, !tbaa !115
  %2116 = load float, ptr %1072, align 4, !tbaa !115
  %2117 = getelementptr inbounds float, ptr %2114, i64 1
  store float %2116, ptr %2117, align 4, !tbaa !115
  %2118 = load float, ptr %1073, align 4, !tbaa !115
  %2119 = getelementptr inbounds float, ptr %2114, i64 2
  store float %2118, ptr %2119, align 4, !tbaa !115
  br label %2120

2120:                                             ; preds = %2105, %2103
  %2121 = add nuw nsw i64 %2092, 1
  %2122 = icmp eq i64 %2121, %2023
  br i1 %2122, label %2123, label %2091, !llvm.loop !178

2123:                                             ; preds = %2120
  %2124 = add nuw nsw i32 %2082, 1
  %2125 = icmp eq i32 %2082, %2002
  br i1 %2125, label %2126, label %2081, !llvm.loop !179

2126:                                             ; preds = %2123, %2055
  %2127 = add nuw nsw i64 %2056, 1
  %2128 = icmp eq i64 %2127, 3
  br i1 %2128, label %2129, label %2055, !llvm.loop !180

2129:                                             ; preds = %2126
  call fastcc void @vmesh_copy_equiv_verts(ptr noundef nonnull %2007)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #13
  br label %2357

2130:                                             ; preds = %1915
  %2131 = call ptr @BLI_memarena_alloc(ptr noundef %2003, i64 noundef 32) #13
  %2132 = getelementptr inbounds %struct.VMesh, ptr %2131, i64 0, i32 2
  store i32 3, ptr %2132, align 8, !tbaa !148
  %2133 = getelementptr inbounds %struct.VMesh, ptr %2131, i64 0, i32 3
  store i32 2, ptr %2133, align 4, !tbaa !94
  %2134 = getelementptr inbounds %struct.VMesh, ptr %2131, i64 0, i32 1
  store ptr null, ptr %2134, align 8, !tbaa !150
  %2135 = call ptr @BLI_memarena_alloc(ptr noundef %2003, i64 noundef 432) #13
  store ptr %2135, ptr %2131, align 8, !tbaa !149
  %2136 = getelementptr inbounds %struct.VMesh, ptr %2131, i64 0, i32 4
  store i32 2, ptr %2136, align 8, !tbaa !160
  store i32 0, ptr %2132, align 8, !tbaa !148
  br label %2137

2137:                                             ; preds = %2130, %2160
  %2138 = phi i64 [ 0, %2130 ], [ %2166, %2160 ]
  store float 0.000000e+00, ptr %27, align 4, !tbaa !115
  store float 0.000000e+00, ptr %1063, align 4, !tbaa !115
  store float 0.000000e+00, ptr %1064, align 4, !tbaa !115
  %2139 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 %2138
  store float 1.000000e+00, ptr %2139, align 4, !tbaa !115
  %2140 = call ptr @BLI_memarena_alloc(ptr noundef %2003, i64 noundef 176) #13
  %2141 = getelementptr inbounds %struct.BoundVert, ptr %2140, i64 0, i32 2, i32 1
  %2142 = load float, ptr %27, align 4, !tbaa !115
  store float %2142, ptr %2141, align 4, !tbaa !115
  %2143 = load float, ptr %1063, align 4, !tbaa !115
  %2144 = getelementptr inbounds %struct.BoundVert, ptr %2140, i64 0, i32 2, i32 1, i64 1
  store float %2143, ptr %2144, align 4, !tbaa !115
  %2145 = load float, ptr %1064, align 4, !tbaa !115
  %2146 = getelementptr inbounds %struct.BoundVert, ptr %2140, i64 0, i32 2, i32 1, i64 2
  store float %2145, ptr %2146, align 4, !tbaa !115
  %2147 = load ptr, ptr %2134, align 8, !tbaa !150
  %2148 = icmp eq ptr %2147, null
  br i1 %2148, label %2149, label %2152

2149:                                             ; preds = %2137
  %2150 = getelementptr inbounds %struct.BoundVert, ptr %2140, i64 0, i32 6
  store i32 0, ptr %2150, align 8, !tbaa !151
  store ptr %2140, ptr %2134, align 8, !tbaa !150
  %2151 = getelementptr inbounds %struct.BoundVert, ptr %2140, i64 0, i32 1
  br label %2160

2152:                                             ; preds = %2137
  %2153 = getelementptr inbounds %struct.BoundVert, ptr %2147, i64 0, i32 1
  %2154 = load ptr, ptr %2153, align 8, !tbaa !176
  %2155 = getelementptr inbounds %struct.BoundVert, ptr %2154, i64 0, i32 6
  %2156 = load i32, ptr %2155, align 8, !tbaa !151
  %2157 = add nsw i32 %2156, 1
  %2158 = getelementptr inbounds %struct.BoundVert, ptr %2140, i64 0, i32 6
  store i32 %2157, ptr %2158, align 8, !tbaa !151
  %2159 = getelementptr inbounds %struct.BoundVert, ptr %2140, i64 0, i32 1
  store ptr %2154, ptr %2159, align 8, !tbaa !176
  store ptr %2147, ptr %2140, align 8, !tbaa !158
  br label %2160

2160:                                             ; preds = %2149, %2152
  %2161 = phi ptr [ %2151, %2149 ], [ %2154, %2152 ]
  %2162 = phi ptr [ %2140, %2149 ], [ %2153, %2152 ]
  store ptr %2140, ptr %2161, align 8, !tbaa !113
  store ptr %2140, ptr %2162, align 8, !tbaa !113
  %2163 = getelementptr inbounds %struct.BoundVert, ptr %2140, i64 0, i32 7
  store float 1.000000e+00, ptr %2163, align 8, !tbaa !165
  %2164 = load i32, ptr %2132, align 8, !tbaa !148
  %2165 = add nsw i32 %2164, 1
  store i32 %2165, ptr %2132, align 8, !tbaa !148
  %2166 = add nuw nsw i64 %2138, 1
  %2167 = icmp eq i64 %2166, 3
  br i1 %2167, label %2168, label %2137, !llvm.loop !181

2168:                                             ; preds = %2160, %2288
  %2169 = phi i64 [ %2173, %2288 ], [ 0, %2160 ]
  %2170 = phi ptr [ %2171, %2288 ], [ %2134, %2160 ]
  %2171 = load ptr, ptr %2170, align 8, !tbaa !113
  %2172 = getelementptr inbounds [3 x float], ptr %28, i64 0, i64 %2169
  store float 1.000000e+00, ptr %2172, align 4, !tbaa !115
  %2173 = add nuw nsw i64 %2169, 1
  %2174 = icmp eq i64 %2173, 3
  %2175 = and i64 %2173, 4294967295
  %2176 = select i1 %2174, i64 0, i64 %2175
  %2177 = getelementptr inbounds [3 x float], ptr %28, i64 0, i64 %2176
  store float 1.000000e+00, ptr %2177, align 4, !tbaa !115
  %2178 = trunc i64 %2169 to i32
  %2179 = add i32 %2178, 2
  %2180 = urem i32 %2179, 3
  %2181 = zext nneg i32 %2180 to i64
  %2182 = getelementptr inbounds [3 x float], ptr %28, i64 0, i64 %2181
  store float 0.000000e+00, ptr %2182, align 4, !tbaa !115
  %2183 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7
  store float %2004, ptr %2183, align 8, !tbaa !165
  %2184 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 1
  %2185 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 2, i32 1
  %2186 = load float, ptr %2185, align 4, !tbaa !115
  store float %2186, ptr %2184, align 4, !tbaa !115
  %2187 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 2, i32 1, i64 1
  %2188 = load float, ptr %2187, align 4, !tbaa !115
  %2189 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 1, i64 1
  store float %2188, ptr %2189, align 4, !tbaa !115
  %2190 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 2, i32 1, i64 2
  %2191 = load float, ptr %2190, align 4, !tbaa !115
  %2192 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 1, i64 2
  store float %2191, ptr %2192, align 4, !tbaa !115
  %2193 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 3
  %2194 = load ptr, ptr %2171, align 8, !tbaa !158
  %2195 = getelementptr inbounds %struct.BoundVert, ptr %2194, i64 0, i32 2, i32 1
  %2196 = load float, ptr %2195, align 4, !tbaa !115
  store float %2196, ptr %2193, align 4, !tbaa !115
  %2197 = getelementptr inbounds %struct.BoundVert, ptr %2194, i64 0, i32 2, i32 1, i64 1
  %2198 = load float, ptr %2197, align 4, !tbaa !115
  %2199 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 3, i64 1
  store float %2198, ptr %2199, align 4, !tbaa !115
  %2200 = getelementptr inbounds %struct.BoundVert, ptr %2194, i64 0, i32 2, i32 1, i64 2
  %2201 = load float, ptr %2200, align 4, !tbaa !115
  %2202 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 3, i64 2
  store float %2201, ptr %2202, align 4, !tbaa !115
  %2203 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 2
  %2204 = load float, ptr %28, align 4, !tbaa !115
  store float %2204, ptr %2203, align 4, !tbaa !115
  %2205 = load float, ptr %1065, align 4, !tbaa !115
  %2206 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 2, i64 1
  store float %2205, ptr %2206, align 4, !tbaa !115
  %2207 = load float, ptr %1066, align 4, !tbaa !115
  %2208 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 2, i64 2
  store float %2207, ptr %2208, align 4, !tbaa !115
  %2209 = load i32, ptr %2133, align 4, !tbaa !94
  %2210 = sdiv i32 %2209, 2
  %2211 = add nsw i32 %2210, 1
  %2212 = add nsw i32 %2209, 1
  %2213 = load ptr, ptr %2131, align 8, !tbaa !149
  %2214 = trunc i64 %2169 to i32
  %2215 = mul nsw i32 %2212, %2214
  %2216 = mul nsw i32 %2215, %2211
  %2217 = sext i32 %2216 to i64
  %2218 = getelementptr inbounds %struct.NewVert, ptr %2213, i64 %2217, i32 1
  store float %2186, ptr %2218, align 4, !tbaa !115
  %2219 = load float, ptr %2189, align 4, !tbaa !115
  %2220 = getelementptr inbounds float, ptr %2218, i64 1
  store float %2219, ptr %2220, align 4, !tbaa !115
  %2221 = load float, ptr %2192, align 4, !tbaa !115
  %2222 = getelementptr inbounds float, ptr %2218, i64 2
  store float %2221, ptr %2222, align 4, !tbaa !115
  %2223 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 5
  %2224 = load float, ptr %2184, align 4, !tbaa !115
  store float %2224, ptr %2223, align 4, !tbaa !115
  %2225 = load float, ptr %2189, align 4, !tbaa !115
  %2226 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 5, i64 1
  store float %2225, ptr %2226, align 4, !tbaa !115
  %2227 = load float, ptr %2192, align 4, !tbaa !115
  %2228 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 5, i64 2
  store float %2227, ptr %2228, align 4, !tbaa !115
  %2229 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 4
  %2230 = load float, ptr %2202, align 4, !tbaa !115
  %2231 = load float, ptr %2199, align 4, !tbaa !115
  %2232 = fneg float %2227
  %2233 = fmul float %2231, %2232
  %2234 = call float @llvm.fmuladd.f32(float %2225, float %2230, float %2233)
  store float %2234, ptr %2229, align 4, !tbaa !115
  %2235 = load float, ptr %2193, align 4, !tbaa !115
  %2236 = fneg float %2224
  %2237 = fmul float %2230, %2236
  %2238 = call float @llvm.fmuladd.f32(float %2227, float %2235, float %2237)
  %2239 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 4, i64 1
  store float %2238, ptr %2239, align 4, !tbaa !115
  %2240 = fneg float %2225
  %2241 = fmul float %2235, %2240
  %2242 = call float @llvm.fmuladd.f32(float %2224, float %2231, float %2241)
  %2243 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 4, i64 2
  store float %2242, ptr %2243, align 4, !tbaa !115
  %2244 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 6
  store float %2234, ptr %2244, align 4, !tbaa !115
  %2245 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 6, i64 1
  store float %2238, ptr %2245, align 4, !tbaa !115
  %2246 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 6, i64 2
  store float %2242, ptr %2246, align 4, !tbaa !115
  call fastcc void @calculate_profile(ptr noundef nonnull %61, ptr noundef nonnull %2171)
  %2247 = load i32, ptr %2133, align 4, !tbaa !94
  %2248 = sdiv i32 %2247, 2
  %2249 = add nsw i32 %2248, 1
  %2250 = add nsw i32 %2247, 1
  %2251 = load ptr, ptr %2131, align 8, !tbaa !149
  %2252 = trunc i64 %2169 to i32
  %2253 = mul nsw i32 %2250, %2252
  %2254 = mul nsw i32 %2253, %2249
  %2255 = sext i32 %2254 to i64
  %2256 = getelementptr %struct.NewVert, ptr %2251, i64 %2255
  %2257 = getelementptr %struct.NewVert, ptr %2256, i64 1, i32 1
  %2258 = load i32, ptr %65, align 8, !tbaa !43
  switch i32 %2258, label %2275 [
    i32 1, label %2259
    i32 2, label %2266
  ]

2259:                                             ; preds = %2168
  %2260 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 3
  %2261 = load float, ptr %2260, align 4, !tbaa !115
  store float %2261, ptr %2257, align 4, !tbaa !115
  %2262 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 3, i64 1
  %2263 = load float, ptr %2262, align 4, !tbaa !115
  %2264 = getelementptr %struct.NewVert, ptr %2256, i64 1, i32 1, i64 1
  store float %2263, ptr %2264, align 4, !tbaa !115
  %2265 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 3, i64 2
  br label %2288

2266:                                             ; preds = %2168
  %2267 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 7
  %2268 = load ptr, ptr %2267, align 8, !tbaa !161
  %2269 = getelementptr inbounds float, ptr %2268, i64 3
  %2270 = load float, ptr %2269, align 4, !tbaa !115
  store float %2270, ptr %2257, align 4, !tbaa !115
  %2271 = getelementptr inbounds float, ptr %2268, i64 4
  %2272 = load float, ptr %2271, align 4, !tbaa !115
  %2273 = getelementptr %struct.NewVert, ptr %2256, i64 1, i32 1, i64 1
  store float %2272, ptr %2273, align 4, !tbaa !115
  %2274 = getelementptr inbounds float, ptr %2268, i64 5
  br label %2288

2275:                                             ; preds = %2168
  %2276 = load i32, ptr %1067, align 8, !tbaa !59
  %2277 = sdiv i32 %2276, 2
  %2278 = getelementptr inbounds %struct.BoundVert, ptr %2171, i64 0, i32 7, i32 8
  %2279 = load ptr, ptr %2278, align 8, !tbaa !162
  %2280 = mul nsw i32 %2277, 3
  %2281 = sext i32 %2280 to i64
  %2282 = getelementptr inbounds float, ptr %2279, i64 %2281
  %2283 = load float, ptr %2282, align 4, !tbaa !115
  store float %2283, ptr %2257, align 4, !tbaa !115
  %2284 = getelementptr inbounds float, ptr %2282, i64 1
  %2285 = load float, ptr %2284, align 4, !tbaa !115
  %2286 = getelementptr %struct.NewVert, ptr %2256, i64 1, i32 1, i64 1
  store float %2285, ptr %2286, align 4, !tbaa !115
  %2287 = getelementptr inbounds float, ptr %2282, i64 2
  br label %2288

2288:                                             ; preds = %2259, %2266, %2275
  %2289 = phi ptr [ %2265, %2259 ], [ %2274, %2266 ], [ %2287, %2275 ]
  %2290 = load float, ptr %2289, align 4, !tbaa !115
  %2291 = getelementptr %struct.NewVert, ptr %2256, i64 1, i32 1, i64 2
  store float %2290, ptr %2291, align 4, !tbaa !115
  %2292 = icmp eq i64 %2173, 3
  br i1 %2292, label %2293, label %2168, !llvm.loop !182

2293:                                             ; preds = %2288
  store float 0x3FE279A740000000, ptr %27, align 4, !tbaa !115
  store float 0x3FE279A740000000, ptr %1068, align 4, !tbaa !115
  store float 0x3FE279A740000000, ptr %1069, align 4, !tbaa !115
  %2294 = icmp sgt i32 %2001, 2
  br i1 %2294, label %2295, label %2301

2295:                                             ; preds = %2293
  %2296 = fcmp ogt float %2004, 1.500000e+00
  br i1 %2296, label %2299, label %2297

2297:                                             ; preds = %2295
  %2298 = fcmp olt float %2004, 7.500000e-01
  br i1 %2298, label %2299, label %2301

2299:                                             ; preds = %2297, %2295
  %2300 = phi float [ 0x3FE9DD83C0000000, %2295 ], [ 0x3FD62B9580000000, %2297 ]
  store float %2300, ptr %27, align 4, !tbaa !115
  store float %2300, ptr %1068, align 4, !tbaa !115
  store float %2300, ptr %1069, align 4, !tbaa !115
  br label %2301

2301:                                             ; preds = %2299, %2297, %2293
  %2302 = load i32, ptr %2133, align 4, !tbaa !94
  %2303 = load ptr, ptr %2131, align 8, !tbaa !149
  %2304 = sext i32 %2302 to i64
  %2305 = getelementptr %struct.NewVert, ptr %2303, i64 %2304
  %2306 = getelementptr %struct.NewVert, ptr %2305, i64 2, i32 1
  %2307 = load float, ptr %27, align 4, !tbaa !115
  store float %2307, ptr %2306, align 4, !tbaa !115
  %2308 = load float, ptr %1068, align 4, !tbaa !115
  %2309 = getelementptr %struct.NewVert, ptr %2305, i64 2, i32 1, i64 1
  store float %2308, ptr %2309, align 4, !tbaa !115
  %2310 = load float, ptr %1069, align 4, !tbaa !115
  %2311 = getelementptr %struct.NewVert, ptr %2305, i64 2, i32 1, i64 2
  store float %2310, ptr %2311, align 4, !tbaa !115
  call fastcc void @vmesh_copy_equiv_verts(ptr noundef nonnull %2131)
  %2312 = getelementptr inbounds %struct.VMesh, ptr %2131, i64 0, i32 3
  %2313 = load i32, ptr %2312, align 4, !tbaa !94
  %2314 = icmp slt i32 %2313, %2001
  br i1 %2314, label %2315, label %2321

2315:                                             ; preds = %2301, %2315
  %2316 = phi ptr [ %2317, %2315 ], [ %2131, %2301 ]
  %2317 = call fastcc ptr @cubic_subdiv(ptr noundef nonnull %61, ptr noundef %2316)
  %2318 = getelementptr inbounds %struct.VMesh, ptr %2317, i64 0, i32 3
  %2319 = load i32, ptr %2318, align 4, !tbaa !94
  %2320 = icmp slt i32 %2319, %2001
  br i1 %2320, label %2315, label %2321, !llvm.loop !183

2321:                                             ; preds = %2315, %2301
  %2322 = phi ptr [ %2131, %2301 ], [ %2317, %2315 ]
  %2323 = phi i32 [ %2313, %2301 ], [ %2319, %2315 ]
  %2324 = icmp eq i32 %2323, %2001
  br i1 %2324, label %2327, label %2325

2325:                                             ; preds = %2321
  %2326 = call fastcc ptr @interp_vmesh(ptr noundef nonnull %61, ptr noundef %2322, i32 noundef %2001)
  br label %2327

2327:                                             ; preds = %2325, %2321
  %2328 = phi ptr [ %2326, %2325 ], [ %2322, %2321 ]
  %2329 = icmp slt i32 %2001, -1
  %2330 = icmp slt i32 %2001, 0
  %2331 = getelementptr inbounds %struct.VMesh, ptr %2328, i64 0, i32 3
  br label %2332

2332:                                             ; preds = %2327, %2354
  %2333 = phi i32 [ 0, %2327 ], [ %2355, %2354 ]
  br i1 %2329, label %2354, label %2334

2334:                                             ; preds = %2332, %2351
  %2335 = phi i32 [ %2352, %2351 ], [ 0, %2332 ]
  br i1 %2330, label %2351, label %2336

2336:                                             ; preds = %2334, %2336
  %2337 = phi i32 [ %2349, %2336 ], [ 0, %2334 ]
  %2338 = load i32, ptr %2331, align 4, !tbaa !94
  %2339 = sdiv i32 %2338, 2
  %2340 = add nsw i32 %2339, 1
  %2341 = add nsw i32 %2338, 1
  %2342 = load ptr, ptr %2328, align 8, !tbaa !149
  %2343 = mul i32 %2340, %2333
  %2344 = add i32 %2343, %2335
  %2345 = mul i32 %2344, %2341
  %2346 = add i32 %2345, %2337
  %2347 = sext i32 %2346 to i64
  %2348 = getelementptr inbounds %struct.NewVert, ptr %2342, i64 %2347, i32 1
  call fastcc void @snap_to_superellipsoid(ptr noundef nonnull %2348, float noundef %2004, i8 noundef zeroext 0)
  %2349 = add nuw i32 %2337, 1
  %2350 = icmp eq i32 %2337, %2001
  br i1 %2350, label %2351, label %2336, !llvm.loop !184

2351:                                             ; preds = %2336, %2334
  %2352 = add nuw nsw i32 %2335, 1
  %2353 = icmp eq i32 %2335, %2002
  br i1 %2353, label %2354, label %2334, !llvm.loop !185

2354:                                             ; preds = %2351, %2332
  %2355 = add nuw nsw i32 %2333, 1
  %2356 = icmp eq i32 %2355, 3
  br i1 %2356, label %2357, label %2332, !llvm.loop !186

2357:                                             ; preds = %2354, %2129
  %2358 = phi ptr [ %2007, %2129 ], [ %2328, %2354 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #13
  %2359 = icmp slt i32 %2001, -1
  %2360 = icmp slt i32 %2001, 0
  %2361 = getelementptr inbounds %struct.VMesh, ptr %2358, i64 0, i32 3
  br label %2362

2362:                                             ; preds = %2357, %2405
  %2363 = phi i32 [ 0, %2357 ], [ %2406, %2405 ]
  br i1 %2359, label %2405, label %2364

2364:                                             ; preds = %2362, %2402
  %2365 = phi i32 [ %2403, %2402 ], [ 0, %2362 ]
  br i1 %2360, label %2402, label %2366

2366:                                             ; preds = %2364, %2366
  %2367 = phi i32 [ %2400, %2366 ], [ 0, %2364 ]
  %2368 = load i32, ptr %2361, align 4, !tbaa !94
  %2369 = sdiv i32 %2368, 2
  %2370 = add nsw i32 %2369, 1
  %2371 = add nsw i32 %2368, 1
  %2372 = load ptr, ptr %2358, align 8, !tbaa !149
  %2373 = mul i32 %2370, %2363
  %2374 = add i32 %2373, %2365
  %2375 = mul i32 %2374, %2371
  %2376 = add i32 %2375, %2367
  %2377 = sext i32 %2376 to i64
  %2378 = getelementptr inbounds %struct.NewVert, ptr %2372, i64 %2377, i32 1
  %2379 = load float, ptr %2378, align 4, !tbaa !115
  store float %2379, ptr %30, align 16, !tbaa !115
  %2380 = getelementptr inbounds float, ptr %2378, i64 1
  %2381 = load float, ptr %2380, align 4, !tbaa !115
  store float %2381, ptr %1074, align 4, !tbaa !115
  %2382 = getelementptr inbounds float, ptr %2378, i64 2
  %2383 = load float, ptr %2382, align 4, !tbaa !115
  store float %2383, ptr %1075, align 8, !tbaa !115
  store float 1.000000e+00, ptr %1076, align 4, !tbaa !115
  call void @mul_m4_v4(ptr noundef nonnull %29, ptr noundef nonnull %30) #13
  %2384 = load i32, ptr %2361, align 4, !tbaa !94
  %2385 = sdiv i32 %2384, 2
  %2386 = add nsw i32 %2385, 1
  %2387 = add nsw i32 %2384, 1
  %2388 = load ptr, ptr %2358, align 8, !tbaa !149
  %2389 = mul i32 %2386, %2363
  %2390 = add i32 %2389, %2365
  %2391 = mul i32 %2390, %2387
  %2392 = add i32 %2391, %2367
  %2393 = sext i32 %2392 to i64
  %2394 = getelementptr inbounds %struct.NewVert, ptr %2388, i64 %2393, i32 1
  %2395 = load float, ptr %30, align 16, !tbaa !115
  store float %2395, ptr %2394, align 4, !tbaa !115
  %2396 = load float, ptr %1074, align 4, !tbaa !115
  %2397 = getelementptr inbounds float, ptr %2394, i64 1
  store float %2396, ptr %2397, align 4, !tbaa !115
  %2398 = load float, ptr %1075, align 8, !tbaa !115
  %2399 = getelementptr inbounds float, ptr %2394, i64 2
  store float %2398, ptr %2399, align 4, !tbaa !115
  %2400 = add nuw i32 %2367, 1
  %2401 = icmp eq i32 %2367, %2001
  br i1 %2401, label %2402, label %2366, !llvm.loop !187

2402:                                             ; preds = %2366, %2364
  %2403 = add nuw nsw i32 %2365, 1
  %2404 = icmp eq i32 %2365, %2002
  br i1 %2404, label %2405, label %2364, !llvm.loop !188

2405:                                             ; preds = %2402, %2362
  %2406 = add nuw nsw i32 %2363, 1
  %2407 = icmp eq i32 %2406, 3
  br i1 %2407, label %2408, label %2362, !llvm.loop !189

2408:                                             ; preds = %2405
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %30) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %29) #13
  br label %2411

2409:                                             ; preds = %1912
  %2410 = call fastcc ptr @adj_vmesh(ptr noundef nonnull %61, ptr noundef %1091)
  br label %2411

2411:                                             ; preds = %1876, %1745, %2409, %2408
  %2412 = phi ptr [ %2358, %2408 ], [ %2410, %2409 ], [ %1746, %1745 ], [ %1746, %1876 ]
  %2413 = load ptr, ptr %1095, align 8, !tbaa !93
  %2414 = icmp sgt i32 %1588, 0
  br i1 %2414, label %2415, label %2497

2415:                                             ; preds = %2411
  %2416 = icmp slt i32 %1590, -1
  %2417 = icmp slt i32 %1590, 0
  %2418 = getelementptr inbounds %struct.VMesh, ptr %2413, i64 0, i32 3
  %2419 = getelementptr inbounds %struct.VMesh, ptr %2412, i64 0, i32 3
  br label %2420

2420:                                             ; preds = %2415, %2494
  %2421 = phi i32 [ 0, %2415 ], [ %2495, %2494 ]
  br i1 %2416, label %2494, label %2422

2422:                                             ; preds = %2420
  %2423 = icmp eq i32 %2421, 0
  br label %2424

2424:                                             ; preds = %2422, %2491
  %2425 = phi i32 [ 0, %2422 ], [ %2492, %2491 ]
  br i1 %2417, label %2491, label %2426

2426:                                             ; preds = %2424
  %2427 = icmp eq i32 %2425, 0
  br label %2428

2428:                                             ; preds = %2426, %2488
  %2429 = phi i32 [ 0, %2426 ], [ %2489, %2488 ]
  br i1 %2427, label %2430, label %2434

2430:                                             ; preds = %2428
  %2431 = icmp eq i32 %2429, 0
  %2432 = icmp eq i32 %2429, %1590
  %2433 = select i1 %2431, i1 true, i1 %2432
  br i1 %2433, label %2488, label %2434

2434:                                             ; preds = %2430, %2428
  %2435 = load i32, ptr %2418, align 4, !tbaa !94
  %2436 = sdiv i32 %2435, 2
  %2437 = and i32 %2435, -2147483647
  %2438 = icmp eq i32 %2437, 1
  br i1 %2438, label %2439, label %2443

2439:                                             ; preds = %2434
  %2440 = icmp sge i32 %2436, %2425
  %2441 = icmp sge i32 %2436, %2429
  %2442 = and i1 %2440, %2441
  br label %2452

2443:                                             ; preds = %2434
  %2444 = icmp sle i32 %2436, %2425
  %2445 = icmp slt i32 %2436, %2429
  %2446 = or i1 %2444, %2445
  br i1 %2446, label %2447, label %2454

2447:                                             ; preds = %2443
  %2448 = icmp eq i32 %2436, %2425
  %2449 = icmp eq i32 %2436, %2429
  %2450 = and i1 %2448, %2449
  %2451 = and i1 %2423, %2450
  br label %2452

2452:                                             ; preds = %2447, %2439
  %2453 = phi i1 [ %2442, %2439 ], [ %2451, %2447 ]
  br i1 %2453, label %2454, label %2488

2454:                                             ; preds = %2452, %2443
  %2455 = add nsw i32 %2436, 1
  %2456 = add nsw i32 %2435, 1
  %2457 = load ptr, ptr %2413, align 8, !tbaa !149
  %2458 = mul i32 %2455, %2421
  %2459 = add i32 %2458, %2425
  %2460 = mul i32 %2459, %2456
  %2461 = add i32 %2460, %2429
  %2462 = sext i32 %2461 to i64
  %2463 = getelementptr inbounds %struct.NewVert, ptr %2457, i64 %2462, i32 1
  %2464 = load i32, ptr %2419, align 4, !tbaa !94
  %2465 = sdiv i32 %2464, 2
  %2466 = add nsw i32 %2465, 1
  %2467 = add nsw i32 %2464, 1
  %2468 = load ptr, ptr %2412, align 8, !tbaa !149
  %2469 = mul i32 %2466, %2421
  %2470 = add i32 %2469, %2425
  %2471 = mul i32 %2470, %2467
  %2472 = add i32 %2471, %2429
  %2473 = sext i32 %2472 to i64
  %2474 = getelementptr inbounds %struct.NewVert, ptr %2468, i64 %2473, i32 1
  %2475 = load float, ptr %2474, align 4, !tbaa !115
  store float %2475, ptr %2463, align 4, !tbaa !115
  %2476 = getelementptr inbounds float, ptr %2474, i64 1
  %2477 = load float, ptr %2476, align 4, !tbaa !115
  %2478 = getelementptr inbounds float, ptr %2463, i64 1
  store float %2477, ptr %2478, align 4, !tbaa !115
  %2479 = getelementptr inbounds float, ptr %2474, i64 2
  %2480 = load float, ptr %2479, align 4, !tbaa !115
  %2481 = getelementptr inbounds float, ptr %2463, i64 2
  store float %2480, ptr %2481, align 4, !tbaa !115
  %2482 = load ptr, ptr %1091, align 8, !tbaa !85
  %2483 = getelementptr inbounds %struct.NewVert, ptr %2457, i64 %2462
  %2484 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %2463, ptr noundef %2482, i32 noundef 0) #13
  store ptr %2484, ptr %2483, align 8, !tbaa !155
  %2485 = getelementptr inbounds %struct.BMHeader, ptr %2484, i64 0, i32 3
  %2486 = load i8, ptr %2485, align 1, !tbaa !71
  %2487 = and i8 %2486, -17
  store i8 %2487, ptr %2485, align 1, !tbaa !71
  br label %2488

2488:                                             ; preds = %2454, %2452, %2430
  %2489 = add nuw i32 %2429, 1
  %2490 = icmp eq i32 %2429, %1590
  br i1 %2490, label %2491, label %2428, !llvm.loop !190

2491:                                             ; preds = %2488, %2424
  %2492 = add nuw nsw i32 %2425, 1
  %2493 = icmp eq i32 %2425, %1591
  br i1 %2493, label %2494, label %2424, !llvm.loop !191

2494:                                             ; preds = %2491, %2420
  %2495 = add nuw nsw i32 %2421, 1
  %2496 = icmp eq i32 %2495, %1588
  br i1 %2496, label %2497, label %2420, !llvm.loop !192

2497:                                             ; preds = %2494, %2411
  call fastcc void @vmesh_copy_equiv_verts(ptr noundef %2413)
  %2498 = getelementptr inbounds %struct.VMesh, ptr %2413, i64 0, i32 1
  %2499 = load ptr, ptr %2498, align 8, !tbaa !150
  %2500 = icmp sgt i32 %1590, 1
  %2501 = add nsw i32 %1591, %1592
  %2502 = icmp sgt i32 %2501, 0
  %2503 = getelementptr inbounds %struct.VMesh, ptr %2413, i64 0, i32 3
  %2504 = icmp ne i32 %1592, 0
  br label %2505

2505:                                             ; preds = %2587, %2497
  %2506 = phi ptr [ %2499, %2497 ], [ %2588, %2587 ]
  %2507 = getelementptr inbounds %struct.BoundVert, ptr %2506, i64 0, i32 6
  %2508 = load i32, ptr %2507, align 8, !tbaa !151
  %2509 = getelementptr inbounds %struct.BoundVert, ptr %2506, i64 0, i32 3
  %2510 = load ptr, ptr %2509, align 8, !tbaa !193
  %2511 = getelementptr inbounds %struct.EdgeHalf, ptr %2510, i64 0, i32 4
  %2512 = load ptr, ptr %2511, align 8, !tbaa !102
  %2513 = getelementptr inbounds %struct.BoundVert, ptr %2506, i64 0, i32 4
  %2514 = load ptr, ptr %2513, align 8, !tbaa !194
  %2515 = getelementptr inbounds %struct.EdgeHalf, ptr %2514, i64 0, i32 3
  %2516 = load ptr, ptr %2515, align 8, !tbaa !101
  %2517 = icmp eq ptr %2512, %2516
  %2518 = icmp eq ptr %2512, null
  %2519 = select i1 %2518, ptr %2516, ptr %2512
  %2520 = select i1 %2517, ptr %2512, ptr %2519
  %2521 = load ptr, ptr %2506, align 8, !tbaa !158
  %2522 = getelementptr inbounds %struct.BoundVert, ptr %2521, i64 0, i32 3
  %2523 = load ptr, ptr %2522, align 8, !tbaa !193
  %2524 = getelementptr inbounds %struct.EdgeHalf, ptr %2523, i64 0, i32 4
  %2525 = load ptr, ptr %2524, align 8, !tbaa !102
  %2526 = getelementptr inbounds %struct.BoundVert, ptr %2521, i64 0, i32 4
  %2527 = load ptr, ptr %2526, align 8, !tbaa !194
  %2528 = getelementptr inbounds %struct.EdgeHalf, ptr %2527, i64 0, i32 3
  %2529 = load ptr, ptr %2528, align 8, !tbaa !101
  %2530 = icmp eq ptr %2525, %2529
  %2531 = icmp eq ptr %2525, null
  %2532 = select i1 %2531, ptr %2529, ptr %2525
  %2533 = select i1 %2530, ptr %2525, ptr %2532
  br i1 %2500, label %2534, label %2587

2534:                                             ; preds = %2505
  %2535 = icmp ne ptr %2533, null
  %2536 = getelementptr inbounds %struct.BoundVert, ptr %2506, i64 0, i32 8
  br label %2537

2537:                                             ; preds = %2534, %2584
  %2538 = phi i32 [ 0, %2534 ], [ %2585, %2584 ]
  br i1 %2502, label %2539, label %2584

2539:                                             ; preds = %2537
  %2540 = add nuw nsw i32 %2538, 1
  br label %2541

2541:                                             ; preds = %2539, %2578
  %2542 = phi i32 [ 0, %2539 ], [ %2556, %2578 ]
  %2543 = load i32, ptr %2503, align 4, !tbaa !94
  %2544 = sdiv i32 %2543, 2
  %2545 = add nsw i32 %2544, 1
  %2546 = add nsw i32 %2543, 1
  %2547 = load ptr, ptr %2413, align 8, !tbaa !149
  %2548 = mul nsw i32 %2546, %2508
  %2549 = mul nsw i32 %2548, %2545
  %2550 = mul nsw i32 %2546, %2538
  %2551 = add nsw i32 %2549, %2550
  %2552 = add nsw i32 %2551, %2542
  %2553 = sext i32 %2552 to i64
  %2554 = getelementptr inbounds %struct.NewVert, ptr %2547, i64 %2553
  %2555 = load ptr, ptr %2554, align 8, !tbaa !155
  %2556 = add nuw nsw i32 %2542, 1
  %2557 = add nsw i32 %2551, %2556
  %2558 = sext i32 %2557 to i64
  %2559 = getelementptr inbounds %struct.NewVert, ptr %2547, i64 %2558
  %2560 = load ptr, ptr %2559, align 8, !tbaa !155
  %2561 = mul nsw i32 %2546, %2540
  %2562 = add nsw i32 %2549, %2561
  %2563 = add nsw i32 %2562, %2556
  %2564 = sext i32 %2563 to i64
  %2565 = getelementptr inbounds %struct.NewVert, ptr %2547, i64 %2564
  %2566 = load ptr, ptr %2565, align 8, !tbaa !155
  %2567 = add nsw i32 %2562, %2542
  %2568 = sext i32 %2567 to i64
  %2569 = getelementptr inbounds %struct.NewVert, ptr %2547, i64 %2568
  %2570 = load ptr, ptr %2569, align 8, !tbaa !155
  %2571 = icmp eq i32 %2542, %1591
  %2572 = and i1 %2504, %2571
  %2573 = select i1 %2572, i1 %2535, i1 false
  br i1 %2573, label %2574, label %2578

2574:                                             ; preds = %2541
  %2575 = load i8, ptr %2536, align 8, !tbaa !195
  %2576 = icmp eq i8 %2575, 0
  %2577 = select i1 %2576, ptr %2533, ptr %2520
  br label %2578

2578:                                             ; preds = %2574, %2541
  %2579 = phi ptr [ %2520, %2541 ], [ %2577, %2574 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %24) #13
  store ptr %2555, ptr %24, align 16, !tbaa !113
  store ptr %2560, ptr %1077, align 8, !tbaa !113
  store ptr %2566, ptr %1078, align 16, !tbaa !113
  store ptr %2570, ptr %1079, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %25) #13
  store ptr %2520, ptr %25, align 16, !tbaa !113
  store ptr %2579, ptr %1080, align 8, !tbaa !113
  store ptr %2579, ptr %1081, align 16, !tbaa !113
  store ptr %2520, ptr %1082, align 8, !tbaa !113
  %2580 = icmp eq ptr %2570, null
  %2581 = select i1 %2580, i32 3, i32 4
  %2582 = call fastcc ptr @bev_create_ngon(ptr noundef %0, ptr noundef nonnull %24, i32 noundef %2581, ptr noundef nonnull %25, ptr noundef %2520, i32 noundef %1585, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %25) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %24) #13
  %2583 = icmp eq i32 %2556, %2501
  br i1 %2583, label %2584, label %2541, !llvm.loop !196

2584:                                             ; preds = %2578, %2537
  %2585 = add nuw nsw i32 %2538, 1
  %2586 = icmp eq i32 %2585, %1591
  br i1 %2586, label %2587, label %2537, !llvm.loop !197

2587:                                             ; preds = %2584, %2505
  %2588 = load ptr, ptr %2506, align 8, !tbaa !158
  %2589 = load ptr, ptr %2498, align 8, !tbaa !150
  %2590 = icmp eq ptr %2588, %2589
  br i1 %2590, label %2591, label %2505, !llvm.loop !198

2591:                                             ; preds = %2587
  %2592 = icmp eq i32 %1592, 0
  br i1 %2592, label %2593, label %2642

2593:                                             ; preds = %2591
  %2594 = icmp slt i32 %1590, 4
  %2595 = getelementptr inbounds %struct.VMesh, ptr %2413, i64 0, i32 3
  %2596 = call i32 @llvm.smax.i32(i32 %1591, i32 2)
  br label %2597

2597:                                             ; preds = %2593, %2624
  %2598 = phi ptr [ %2625, %2624 ], [ %2589, %2593 ]
  %2599 = getelementptr inbounds %struct.BoundVert, ptr %2598, i64 0, i32 6
  %2600 = load i32, ptr %2599, align 8, !tbaa !151
  %2601 = getelementptr inbounds %struct.BoundVert, ptr %2598, i64 0, i32 8
  %2602 = load i8, ptr %2601, align 8, !tbaa !195
  %2603 = icmp ne i8 %2602, 0
  %2604 = select i1 %2603, i1 true, i1 %2594
  br i1 %2604, label %2624, label %2605

2605:                                             ; preds = %2597, %2621
  %2606 = phi i32 [ %2622, %2621 ], [ 1, %2597 ]
  %2607 = load i32, ptr %2595, align 4, !tbaa !94
  %2608 = sdiv i32 %2607, 2
  %2609 = add nsw i32 %2608, 1
  %2610 = add nsw i32 %2607, 1
  %2611 = load ptr, ptr %2413, align 8, !tbaa !149
  %2612 = mul i32 %2609, %2600
  %2613 = add i32 %2612, %2606
  %2614 = mul i32 %2613, %2610
  %2615 = add i32 %2614, %1591
  %2616 = sext i32 %2615 to i64
  %2617 = getelementptr inbounds %struct.NewVert, ptr %2611, i64 %2616
  %2618 = load ptr, ptr %2617, align 8, !tbaa !155
  %2619 = icmp eq ptr %2618, null
  br i1 %2619, label %2621, label %2620

2620:                                             ; preds = %2605
  call fastcc void @bev_merge_uvs(ptr noundef %0, ptr noundef nonnull %2618)
  br label %2621

2621:                                             ; preds = %2620, %2605
  %2622 = add nuw nsw i32 %2606, 1
  %2623 = icmp eq i32 %2622, %2596
  br i1 %2623, label %2624, label %2605, !llvm.loop !199

2624:                                             ; preds = %2621, %2597
  %2625 = load ptr, ptr %2598, align 8, !tbaa !158
  %2626 = load ptr, ptr %2498, align 8, !tbaa !150
  %2627 = icmp eq ptr %2625, %2626
  br i1 %2627, label %2628, label %2597, !llvm.loop !200

2628:                                             ; preds = %2624
  %2629 = getelementptr inbounds %struct.BevVert, ptr %1091, i64 0, i32 5
  %2630 = load i8, ptr %2629, align 8, !tbaa !201
  %2631 = icmp eq i8 %2630, 0
  br i1 %2631, label %2632, label %2641

2632:                                             ; preds = %2628
  %2633 = getelementptr inbounds %struct.VMesh, ptr %2413, i64 0, i32 3
  %2634 = load i32, ptr %2633, align 4, !tbaa !94
  %2635 = load ptr, ptr %2413, align 8, !tbaa !149
  %2636 = add i32 %2634, 2
  %2637 = mul i32 %2636, %1591
  %2638 = sext i32 %2637 to i64
  %2639 = getelementptr inbounds %struct.NewVert, ptr %2635, i64 %2638
  %2640 = load ptr, ptr %2639, align 8, !tbaa !155
  call fastcc void @bev_merge_uvs(ptr noundef %0, ptr noundef %2640)
  br label %2641

2641:                                             ; preds = %2632, %2628
  br i1 %2592, label %2897, label %2642

2642:                                             ; preds = %2641, %2591
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #13
  store ptr null, ptr %44, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %45) #13
  store ptr null, ptr %45, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %46) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %47) #13
  %2643 = load ptr, ptr %2498, align 8, !tbaa !150
  %2644 = getelementptr inbounds %struct.VMesh, ptr %2413, i64 0, i32 3
  br label %2645

2645:                                             ; preds = %2719, %2642
  %2646 = phi i64 [ %2669, %2719 ], [ 0, %2642 ]
  %2647 = phi ptr [ %2723, %2719 ], [ %2643, %2642 ]
  %2648 = getelementptr inbounds %struct.BoundVert, ptr %2647, i64 0, i32 6
  %2649 = load i32, ptr %2648, align 8, !tbaa !151
  %2650 = load ptr, ptr %44, align 8
  %2651 = icmp eq ptr %2650, null
  %2652 = icmp ult i64 %2646, 32
  %2653 = select i1 %2651, i1 %2652, i1 false
  br i1 %2653, label %2654, label %2655

2654:                                             ; preds = %2645
  store ptr %46, ptr %44, align 8, !tbaa !113
  br label %2668

2655:                                             ; preds = %2645
  %2656 = icmp eq ptr %2650, %46
  %2657 = or i1 %2656, %2651
  %2658 = select i1 %2656, i64 32, i64 0
  br i1 %2657, label %2663, label %2659

2659:                                             ; preds = %2655
  %2660 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %2661 = call i64 %2660(ptr noundef nonnull %2650) #13
  %2662 = lshr i64 %2661, 3
  br label %2663

2663:                                             ; preds = %2659, %2655
  %2664 = phi i64 [ %2658, %2655 ], [ %2662, %2659 ]
  %2665 = icmp ugt i64 %2664, %2646
  br i1 %2665, label %2668, label %2666

2666:                                             ; preds = %2663
  %2667 = trunc i64 %2646 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %44, ptr noundef nonnull %46, i32 noundef 8, i32 noundef %2667, i32 noundef 1, ptr noundef nonnull @.str) #13
  br label %2668

2668:                                             ; preds = %2666, %2663, %2654
  %2669 = add nuw i64 %2646, 1
  %2670 = load i32, ptr %2644, align 4, !tbaa !94
  %2671 = sdiv i32 %2670, 2
  %2672 = add nsw i32 %2671, 1
  %2673 = add nsw i32 %2670, 1
  %2674 = load ptr, ptr %2413, align 8, !tbaa !149
  %2675 = mul i32 %2672, %2649
  %2676 = add i32 %2675, %1591
  %2677 = mul i32 %2676, %2673
  %2678 = add i32 %2677, %1591
  %2679 = sext i32 %2678 to i64
  %2680 = getelementptr inbounds %struct.NewVert, ptr %2674, i64 %2679
  %2681 = load ptr, ptr %2680, align 8, !tbaa !155
  %2682 = load ptr, ptr %44, align 8, !tbaa !113
  %2683 = getelementptr inbounds ptr, ptr %2682, i64 %2646
  store ptr %2681, ptr %2683, align 8, !tbaa !113
  %2684 = load ptr, ptr %45, align 8
  %2685 = icmp eq ptr %2684, null
  %2686 = icmp ult i64 %2646, 32
  %2687 = select i1 %2685, i1 %2686, i1 false
  br i1 %2687, label %2688, label %2689

2688:                                             ; preds = %2668
  store ptr %47, ptr %45, align 8, !tbaa !113
  br label %2702

2689:                                             ; preds = %2668
  %2690 = icmp eq ptr %2684, %47
  %2691 = or i1 %2690, %2685
  %2692 = select i1 %2690, i64 32, i64 0
  br i1 %2691, label %2697, label %2693

2693:                                             ; preds = %2689
  %2694 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %2695 = call i64 %2694(ptr noundef nonnull %2684) #13
  %2696 = lshr i64 %2695, 3
  br label %2697

2697:                                             ; preds = %2693, %2689
  %2698 = phi i64 [ %2692, %2689 ], [ %2696, %2693 ]
  %2699 = icmp ugt i64 %2698, %2646
  br i1 %2699, label %2702, label %2700

2700:                                             ; preds = %2697
  %2701 = trunc i64 %2646 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %45, ptr noundef nonnull %47, i32 noundef 8, i32 noundef %2701, i32 noundef 1, ptr noundef nonnull @.str.1) #13
  br label %2702

2702:                                             ; preds = %2700, %2697, %2688
  %2703 = getelementptr inbounds %struct.BoundVert, ptr %2647, i64 0, i32 8
  %2704 = load i8, ptr %2703, align 8, !tbaa !195
  %2705 = icmp eq i8 %2704, 0
  br i1 %2705, label %2706, label %2719

2706:                                             ; preds = %2702
  %2707 = getelementptr inbounds %struct.BoundVert, ptr %2647, i64 0, i32 3
  %2708 = load ptr, ptr %2707, align 8, !tbaa !193
  %2709 = getelementptr inbounds %struct.EdgeHalf, ptr %2708, i64 0, i32 4
  %2710 = load ptr, ptr %2709, align 8, !tbaa !102
  %2711 = getelementptr inbounds %struct.BoundVert, ptr %2647, i64 0, i32 4
  %2712 = load ptr, ptr %2711, align 8, !tbaa !194
  %2713 = getelementptr inbounds %struct.EdgeHalf, ptr %2712, i64 0, i32 3
  %2714 = load ptr, ptr %2713, align 8, !tbaa !101
  %2715 = icmp eq ptr %2710, %2714
  %2716 = icmp eq ptr %2710, null
  %2717 = select i1 %2716, ptr %2714, ptr %2710
  %2718 = select i1 %2715, ptr %2710, ptr %2717
  br label %2719

2719:                                             ; preds = %2706, %2702
  %2720 = phi ptr [ %2718, %2706 ], [ %2520, %2702 ]
  %2721 = load ptr, ptr %45, align 8, !tbaa !113
  %2722 = getelementptr inbounds ptr, ptr %2721, i64 %2646
  store ptr %2720, ptr %2722, align 8, !tbaa !113
  %2723 = load ptr, ptr %2647, align 8, !tbaa !158
  %2724 = load ptr, ptr %2498, align 8, !tbaa !150
  %2725 = icmp eq ptr %2723, %2724
  br i1 %2725, label %2726, label %2645, !llvm.loop !202

2726:                                             ; preds = %2719
  %2727 = trunc i64 %2669 to i32
  %2728 = getelementptr inbounds %struct.BoundVert, ptr %2724, i64 0, i32 3
  %2729 = load ptr, ptr %2728, align 8, !tbaa !193
  %2730 = getelementptr inbounds %struct.EdgeHalf, ptr %2729, i64 0, i32 4
  %2731 = load ptr, ptr %2730, align 8, !tbaa !102
  %2732 = getelementptr inbounds %struct.BoundVert, ptr %2724, i64 0, i32 4
  %2733 = load ptr, ptr %2732, align 8, !tbaa !194
  %2734 = getelementptr inbounds %struct.EdgeHalf, ptr %2733, i64 0, i32 3
  %2735 = load ptr, ptr %2734, align 8, !tbaa !101
  %2736 = icmp eq ptr %2731, %2735
  %2737 = icmp eq ptr %2731, null
  %2738 = select i1 %2737, ptr %2735, ptr %2731
  %2739 = select i1 %2736, ptr %2731, ptr %2738
  %2740 = load ptr, ptr %44, align 8, !tbaa !113
  %2741 = load ptr, ptr %45, align 8, !tbaa !113
  %2742 = call fastcc ptr @bev_create_ngon(ptr noundef %0, ptr noundef %2740, i32 noundef %2727, ptr noundef %2741, ptr noundef %2739, i32 noundef %1585, i8 noundef zeroext 1)
  %2743 = load ptr, ptr %44, align 8
  %2744 = icmp ne ptr %2743, null
  %2745 = icmp ne ptr %2743, %46
  %2746 = and i1 %2744, %2745
  br i1 %2746, label %2747, label %2749

2747:                                             ; preds = %2726
  %2748 = load ptr, ptr @MEM_freeN, align 8, !tbaa !113
  call void %2748(ptr noundef nonnull %2743) #13
  br label %2749

2749:                                             ; preds = %2747, %2726
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %47) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %46) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %45) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #13
  br label %2897

2750:                                             ; preds = %1555
  %2751 = call fastcc ptr @bevel_build_poly(ptr noundef nonnull %61, ptr noundef %0, ptr noundef %1091)
  %2752 = icmp eq ptr %2751, null
  br i1 %2752, label %2897, label %2753

2753:                                             ; preds = %2750
  %2754 = getelementptr inbounds %struct.BMFace, ptr %2751, i64 0, i32 2
  %2755 = load ptr, ptr %2754, align 8, !tbaa !203
  %2756 = getelementptr inbounds %struct.BMLoop, ptr %2755, i64 0, i32 7
  %2757 = load ptr, ptr %2756, align 8, !tbaa !205
  %2758 = getelementptr inbounds %struct.BMLoop, ptr %2757, i64 0, i32 1
  %2759 = load ptr, ptr %2758, align 8, !tbaa !125
  %2760 = getelementptr inbounds %struct.BMFace, ptr %2751, i64 0, i32 3
  %2761 = load i32, ptr %2760, align 8, !tbaa !206
  %2762 = icmp sgt i32 %2761, 3
  br i1 %2762, label %2763, label %2897

2763:                                             ; preds = %2753, %2805
  %2764 = phi ptr [ %2808, %2805 ], [ %2760, %2753 ]
  %2765 = phi ptr [ %2807, %2805 ], [ %2751, %2753 ]
  %2766 = phi ptr [ %2806, %2805 ], [ %2757, %2753 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #13
  %2767 = getelementptr inbounds %struct.BMLoop, ptr %2766, i64 0, i32 6
  %2768 = load ptr, ptr %2767, align 8, !tbaa !109
  %2769 = getelementptr inbounds %struct.BMLoop, ptr %2768, i64 0, i32 6
  %2770 = load ptr, ptr %2769, align 8, !tbaa !109
  %2771 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %2765, ptr noundef %2766, ptr noundef %2770, ptr noundef nonnull %23, ptr noundef null, i8 noundef zeroext 0) #13
  %2772 = getelementptr inbounds %struct.BMFace, ptr %2771, i64 0, i32 3
  %2773 = load i32, ptr %2772, align 8, !tbaa !206
  %2774 = load i32, ptr %2764, align 8, !tbaa !206
  %2775 = icmp sgt i32 %2773, %2774
  br i1 %2775, label %2776, label %2787

2776:                                             ; preds = %2763
  %2777 = load ptr, ptr %23, align 8, !tbaa !113
  %2778 = getelementptr inbounds %struct.BMLoop, ptr %2777, i64 0, i32 1
  %2779 = load ptr, ptr %2778, align 8, !tbaa !125
  %2780 = icmp eq ptr %2779, %2759
  br i1 %2780, label %2805, label %2781

2781:                                             ; preds = %2776
  %2782 = getelementptr inbounds %struct.BMLoop, ptr %2777, i64 0, i32 6
  %2783 = load ptr, ptr %2782, align 8, !tbaa !109
  %2784 = getelementptr inbounds %struct.BMLoop, ptr %2783, i64 0, i32 1
  %2785 = load ptr, ptr %2784, align 8, !tbaa !125
  %2786 = icmp eq ptr %2785, %2759
  br i1 %2786, label %2805, label %2796

2787:                                             ; preds = %2763
  %2788 = getelementptr inbounds %struct.BMLoop, ptr %2766, i64 0, i32 1
  %2789 = load ptr, ptr %2788, align 8, !tbaa !125
  %2790 = icmp eq ptr %2789, %2759
  br i1 %2790, label %2805, label %2791

2791:                                             ; preds = %2787
  %2792 = load ptr, ptr %2767, align 8, !tbaa !109
  %2793 = getelementptr inbounds %struct.BMLoop, ptr %2792, i64 0, i32 1
  %2794 = load ptr, ptr %2793, align 8, !tbaa !125
  %2795 = icmp eq ptr %2794, %2759
  br i1 %2795, label %2805, label %2796

2796:                                             ; preds = %2791, %2781
  %2797 = phi ptr [ %2777, %2781 ], [ %2766, %2791 ]
  %2798 = phi ptr [ %2771, %2781 ], [ %2765, %2791 ]
  %2799 = getelementptr inbounds %struct.BMLoop, ptr %2797, i64 0, i32 7
  %2800 = load ptr, ptr %2799, align 8, !tbaa !205
  %2801 = getelementptr inbounds %struct.BMLoop, ptr %2800, i64 0, i32 1
  %2802 = load ptr, ptr %2801, align 8, !tbaa !125
  %2803 = icmp eq ptr %2802, %2759
  %2804 = select i1 %2803, ptr %2800, ptr %2766
  br label %2805

2805:                                             ; preds = %2796, %2791, %2787, %2781, %2776
  %2806 = phi ptr [ %2766, %2787 ], [ %2777, %2776 ], [ %2783, %2781 ], [ %2792, %2791 ], [ %2804, %2796 ]
  %2807 = phi ptr [ %2765, %2787 ], [ %2771, %2776 ], [ %2771, %2781 ], [ %2765, %2791 ], [ %2798, %2796 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #13
  %2808 = getelementptr inbounds %struct.BMFace, ptr %2807, i64 0, i32 3
  %2809 = load i32, ptr %2808, align 8, !tbaa !206
  %2810 = icmp sgt i32 %2809, 3
  br i1 %2810, label %2763, label %2897, !llvm.loop !207

2811:                                             ; preds = %1555
  %2812 = call fastcc ptr @bevel_build_poly(ptr noundef nonnull %61, ptr noundef %0, ptr noundef %1091)
  %2813 = icmp eq ptr %2812, null
  br i1 %2813, label %2897, label %2814

2814:                                             ; preds = %2811
  %2815 = load ptr, ptr %1095, align 8, !tbaa !93
  %2816 = getelementptr inbounds %struct.VMesh, ptr %2815, i64 0, i32 1
  %2817 = load ptr, ptr %2816, align 8, !tbaa !150
  %2818 = getelementptr inbounds %struct.BoundVert, ptr %2817, i64 0, i32 4
  %2819 = load ptr, ptr %2818, align 8, !tbaa !194
  %2820 = load ptr, ptr %2819, align 8, !tbaa !117
  %2821 = icmp eq ptr %2820, null
  br i1 %2821, label %2822, label %2830

2822:                                             ; preds = %2814
  %2823 = getelementptr inbounds %struct.BevVert, ptr %1091, i64 0, i32 7
  %2824 = load ptr, ptr %2823, align 8, !tbaa !91
  %2825 = getelementptr inbounds %struct.BevVert, ptr %1091, i64 0, i32 1
  %2826 = load i32, ptr %2825, align 8, !tbaa !87
  %2827 = sext i32 %2826 to i64
  %2828 = getelementptr %struct.EdgeHalf, ptr %2824, i64 %2827
  %2829 = getelementptr %struct.EdgeHalf, ptr %2828, i64 -1
  br label %2830

2830:                                             ; preds = %2822, %2814
  %2831 = phi ptr [ %2829, %2822 ], [ %2820, %2814 ]
  br label %2832

2832:                                             ; preds = %2837, %2830
  %2833 = phi ptr [ %2831, %2830 ], [ %2838, %2837 ]
  %2834 = getelementptr inbounds %struct.EdgeHalf, ptr %2833, i64 0, i32 12
  %2835 = load i8, ptr %2834, align 4, !tbaa !103
  %2836 = icmp eq i8 %2835, 0
  br i1 %2836, label %2837, label %2840

2837:                                             ; preds = %2832
  %2838 = load ptr, ptr %2833, align 8, !tbaa !117
  %2839 = icmp eq ptr %2838, %2831
  br i1 %2839, label %2840, label %2832, !llvm.loop !208

2840:                                             ; preds = %2837, %2832
  %2841 = phi ptr [ %2833, %2832 ], [ null, %2837 ]
  %2842 = getelementptr inbounds %struct.EdgeHalf, ptr %2819, i64 0, i32 6
  %2843 = load ptr, ptr %2842, align 8, !tbaa !209
  %2844 = getelementptr inbounds %struct.BoundVert, ptr %2843, i64 0, i32 2
  %2845 = load ptr, ptr %2844, align 8, !tbaa !156
  %2846 = call ptr @BM_face_vert_share_loop(ptr noundef nonnull %2812, ptr noundef %2845) #13
  %2847 = getelementptr inbounds %struct.EdgeHalf, ptr %2841, i64 0, i32 5
  %2848 = load ptr, ptr %2847, align 8, !tbaa !210
  %2849 = getelementptr inbounds %struct.BoundVert, ptr %2848, i64 0, i32 2
  %2850 = load ptr, ptr %2849, align 8, !tbaa !156
  %2851 = call ptr @BM_face_vert_share_loop(ptr noundef nonnull %2812, ptr noundef %2850) #13
  %2852 = load ptr, ptr %1095, align 8, !tbaa !93
  %2853 = getelementptr inbounds %struct.VMesh, ptr %2852, i64 0, i32 3
  %2854 = load i32, ptr %2853, align 4, !tbaa !94
  %2855 = getelementptr inbounds %struct.BMFace, ptr %2812, i64 0, i32 3
  %2856 = load i32, ptr %2855, align 8, !tbaa !206
  %2857 = icmp sgt i32 %2856, 4
  %2858 = icmp sgt i32 %2854, -1
  %2859 = select i1 %2857, i1 %2858, i1 false
  br i1 %2859, label %2860, label %2897

2860:                                             ; preds = %2840
  %2861 = add nsw i32 %2854, 1
  br label %2862

2862:                                             ; preds = %2860, %2883
  %2863 = phi i32 [ %2891, %2883 ], [ %2861, %2860 ]
  %2864 = phi ptr [ %2888, %2883 ], [ %2851, %2860 ]
  %2865 = phi ptr [ %2890, %2883 ], [ %2846, %2860 ]
  %2866 = phi ptr [ %2884, %2883 ], [ %2812, %2860 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #13
  %2867 = getelementptr inbounds %struct.BMLoop, ptr %2865, i64 0, i32 1
  %2868 = load ptr, ptr %2867, align 8, !tbaa !125
  %2869 = getelementptr inbounds %struct.BMLoop, ptr %2864, i64 0, i32 1
  %2870 = load ptr, ptr %2869, align 8, !tbaa !125
  %2871 = icmp eq ptr %2868, %2870
  br i1 %2871, label %2883, label %2872

2872:                                             ; preds = %2862
  %2873 = getelementptr inbounds %struct.BMLoop, ptr %2865, i64 0, i32 6
  %2874 = load ptr, ptr %2873, align 8, !tbaa !109
  %2875 = icmp eq ptr %2874, %2864
  br i1 %2875, label %2883, label %2876

2876:                                             ; preds = %2872
  %2877 = call ptr @BM_face_split(ptr noundef %0, ptr noundef %2866, ptr noundef %2865, ptr noundef %2864, ptr noundef nonnull %22, ptr noundef null, i8 noundef zeroext 0) #13
  %2878 = load ptr, ptr %22, align 8, !tbaa !113
  %2879 = getelementptr inbounds %struct.BMLoop, ptr %2878, i64 0, i32 3
  %2880 = load ptr, ptr %2879, align 8, !tbaa !124
  %2881 = getelementptr inbounds %struct.BMLoop, ptr %2878, i64 0, i32 6
  %2882 = load ptr, ptr %2881, align 8, !tbaa !109
  br label %2883

2883:                                             ; preds = %2876, %2872, %2862
  %2884 = phi ptr [ %2880, %2876 ], [ %2866, %2872 ], [ %2866, %2862 ]
  %2885 = phi ptr [ %2878, %2876 ], [ %2865, %2872 ], [ %2865, %2862 ]
  %2886 = phi ptr [ %2882, %2876 ], [ %2864, %2872 ], [ %2864, %2862 ]
  %2887 = getelementptr inbounds %struct.BMLoop, ptr %2886, i64 0, i32 6
  %2888 = load ptr, ptr %2887, align 8, !tbaa !109
  %2889 = getelementptr inbounds %struct.BMLoop, ptr %2885, i64 0, i32 7
  %2890 = load ptr, ptr %2889, align 8, !tbaa !205
  %2891 = add nsw i32 %2863, -1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #13
  %2892 = getelementptr inbounds %struct.BMFace, ptr %2884, i64 0, i32 3
  %2893 = load i32, ptr %2892, align 8, !tbaa !206
  %2894 = icmp sgt i32 %2893, 4
  %2895 = icmp sgt i32 %2863, 1
  %2896 = select i1 %2894, i1 %2895, i1 false
  br i1 %2896, label %2862, label %2897, !llvm.loop !211

2897:                                             ; preds = %2883, %2805, %2840, %2753, %1555, %1558, %1560, %1564, %1582, %2641, %2749, %2750, %2811
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %48) #13
  br label %2898

2898:                                             ; preds = %1083, %2897, %1089
  %2899 = load ptr, ptr %204, align 8, !tbaa !64
  %2900 = call ptr %2899(ptr noundef nonnull %60) #13
  %2901 = icmp eq ptr %2900, null
  br i1 %2901, label %2902, label %1083, !llvm.loop !212

2902:                                             ; preds = %2898, %1011
  %2903 = load i8, ptr %68, align 8, !tbaa !45
  %2904 = icmp eq i8 %2903, 0
  br i1 %2904, label %2905, label %3225

2905:                                             ; preds = %2902
  store i8 2, ptr %202, align 4, !tbaa !61
  store ptr @bmiter__elem_of_mesh_begin, ptr %203, align 8, !tbaa !63
  store ptr @bmiter__elem_of_mesh_step, ptr %204, align 8, !tbaa !64
  %2906 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %2907 = load ptr, ptr %2906, align 8, !tbaa !213
  store ptr %2907, ptr %60, align 8, !tbaa !70
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %60) #13
  %2908 = load ptr, ptr %204, align 8, !tbaa !64
  %2909 = call ptr %2908(ptr noundef nonnull %60) #13
  %2910 = icmp eq ptr %2909, null
  br i1 %2910, label %3225, label %2911

2911:                                             ; preds = %2905
  %2912 = getelementptr inbounds ptr, ptr %21, i64 1
  %2913 = getelementptr inbounds ptr, ptr %21, i64 2
  %2914 = getelementptr inbounds ptr, ptr %21, i64 3
  br label %2915

2915:                                             ; preds = %2911, %3221
  %2916 = phi ptr [ %2909, %2911 ], [ %3223, %3221 ]
  %2917 = getelementptr inbounds %struct.BMHeader, ptr %2916, i64 0, i32 3
  %2918 = load i8, ptr %2917, align 1, !tbaa !71
  %2919 = and i8 %2918, 16
  %2920 = icmp eq i8 %2919, 0
  br i1 %2920, label %3221, label %2921

2921:                                             ; preds = %2915
  %2922 = load i32, ptr %74, align 4, !tbaa !51
  %2923 = getelementptr inbounds %struct.BMEdge, ptr %2916, i64 0, i32 4
  %2924 = load ptr, ptr %2923, align 8, !tbaa !81
  %2925 = icmp eq ptr %2924, null
  br i1 %2925, label %2935, label %2926

2926:                                             ; preds = %2921
  %2927 = getelementptr inbounds %struct.BMLoop, ptr %2924, i64 0, i32 4
  %2928 = load ptr, ptr %2927, align 8, !tbaa !214
  %2929 = icmp eq ptr %2928, %2924
  br i1 %2929, label %2935, label %2930

2930:                                             ; preds = %2926
  %2931 = getelementptr inbounds %struct.BMLoop, ptr %2928, i64 0, i32 4
  %2932 = load ptr, ptr %2931, align 8, !tbaa !214
  %2933 = icmp eq ptr %2932, %2924
  %2934 = zext i1 %2933 to i8
  br label %2935

2935:                                             ; preds = %2930, %2926, %2921
  %2936 = phi i8 [ 0, %2926 ], [ 0, %2921 ], [ %2934, %2930 ]
  %2937 = icmp eq i8 %2936, 0
  br i1 %2937, label %3221, label %2938

2938:                                             ; preds = %2935
  %2939 = getelementptr inbounds %struct.BMEdge, ptr %2916, i64 0, i32 2
  %2940 = load ptr, ptr %2939, align 8, !tbaa !73
  %2941 = load ptr, ptr %61, align 8, !tbaa !52
  %2942 = call ptr @BLI_ghash_lookup(ptr noundef %2941, ptr noundef %2940) #13
  %2943 = getelementptr inbounds %struct.BMEdge, ptr %2916, i64 0, i32 3
  %2944 = load ptr, ptr %2943, align 8, !tbaa !76
  %2945 = load ptr, ptr %61, align 8, !tbaa !52
  %2946 = call ptr @BLI_ghash_lookup(ptr noundef %2945, ptr noundef %2944) #13
  %2947 = getelementptr inbounds %struct.BevVert, ptr %2942, i64 0, i32 1
  %2948 = load i32, ptr %2947, align 8, !tbaa !87
  %2949 = icmp sgt i32 %2948, 0
  br i1 %2949, label %2950, label %2964

2950:                                             ; preds = %2938
  %2951 = getelementptr inbounds %struct.BevVert, ptr %2942, i64 0, i32 7
  %2952 = load ptr, ptr %2951, align 8, !tbaa !91
  %2953 = zext nneg i32 %2948 to i64
  br label %2957

2954:                                             ; preds = %2957
  %2955 = add nuw nsw i64 %2958, 1
  %2956 = icmp eq i64 %2955, %2953
  br i1 %2956, label %2964, label %2957, !llvm.loop !146

2957:                                             ; preds = %2950, %2954
  %2958 = phi i64 [ 0, %2950 ], [ %2955, %2954 ]
  %2959 = getelementptr inbounds %struct.EdgeHalf, ptr %2952, i64 %2958, i32 2
  %2960 = load ptr, ptr %2959, align 8, !tbaa !97
  %2961 = icmp eq ptr %2960, %2916
  br i1 %2961, label %2962, label %2954

2962:                                             ; preds = %2957
  %2963 = getelementptr inbounds %struct.EdgeHalf, ptr %2952, i64 %2958
  br label %2964

2964:                                             ; preds = %2954, %2938, %2962
  %2965 = phi ptr [ %2963, %2962 ], [ null, %2938 ], [ null, %2954 ]
  %2966 = getelementptr inbounds %struct.BevVert, ptr %2942, i64 0, i32 1
  %2967 = getelementptr inbounds %struct.BevVert, ptr %2946, i64 0, i32 1
  %2968 = load i32, ptr %2967, align 8, !tbaa !87
  %2969 = icmp sgt i32 %2968, 0
  br i1 %2969, label %2970, label %2984

2970:                                             ; preds = %2964
  %2971 = getelementptr inbounds %struct.BevVert, ptr %2946, i64 0, i32 7
  %2972 = load ptr, ptr %2971, align 8, !tbaa !91
  %2973 = zext nneg i32 %2968 to i64
  br label %2977

2974:                                             ; preds = %2977
  %2975 = add nuw nsw i64 %2978, 1
  %2976 = icmp eq i64 %2975, %2973
  br i1 %2976, label %2984, label %2977, !llvm.loop !146

2977:                                             ; preds = %2970, %2974
  %2978 = phi i64 [ 0, %2970 ], [ %2975, %2974 ]
  %2979 = getelementptr inbounds %struct.EdgeHalf, ptr %2972, i64 %2978, i32 2
  %2980 = load ptr, ptr %2979, align 8, !tbaa !97
  %2981 = icmp eq ptr %2980, %2916
  br i1 %2981, label %2982, label %2974

2982:                                             ; preds = %2977
  %2983 = getelementptr inbounds %struct.EdgeHalf, ptr %2972, i64 %2978
  br label %2984

2984:                                             ; preds = %2974, %2964, %2982
  %2985 = phi ptr [ %2983, %2982 ], [ null, %2964 ], [ null, %2974 ]
  %2986 = getelementptr inbounds %struct.BevVert, ptr %2946, i64 0, i32 1
  %2987 = getelementptr inbounds %struct.EdgeHalf, ptr %2965, i64 0, i32 7
  %2988 = load i32, ptr %2987, align 8, !tbaa !104
  %2989 = getelementptr inbounds %struct.EdgeHalf, ptr %2965, i64 0, i32 5
  %2990 = load ptr, ptr %2989, align 8, !tbaa !210
  %2991 = getelementptr inbounds %struct.BoundVert, ptr %2990, i64 0, i32 2
  %2992 = load ptr, ptr %2991, align 8, !tbaa !156
  %2993 = getelementptr inbounds %struct.EdgeHalf, ptr %2965, i64 0, i32 6
  %2994 = load ptr, ptr %2993, align 8, !tbaa !209
  %2995 = getelementptr inbounds %struct.BoundVert, ptr %2994, i64 0, i32 2
  %2996 = load ptr, ptr %2995, align 8, !tbaa !156
  %2997 = getelementptr inbounds %struct.EdgeHalf, ptr %2985, i64 0, i32 6
  %2998 = load ptr, ptr %2997, align 8, !tbaa !209
  %2999 = getelementptr inbounds %struct.BoundVert, ptr %2998, i64 0, i32 2
  %3000 = load ptr, ptr %2999, align 8, !tbaa !156
  %3001 = getelementptr inbounds %struct.EdgeHalf, ptr %2985, i64 0, i32 5
  %3002 = load ptr, ptr %3001, align 8, !tbaa !210
  %3003 = getelementptr inbounds %struct.BoundVert, ptr %3002, i64 0, i32 2
  %3004 = load ptr, ptr %3003, align 8, !tbaa !156
  %3005 = getelementptr inbounds %struct.EdgeHalf, ptr %2965, i64 0, i32 3
  %3006 = load ptr, ptr %3005, align 8, !tbaa !101
  %3007 = getelementptr inbounds %struct.EdgeHalf, ptr %2965, i64 0, i32 4
  %3008 = load ptr, ptr %3007, align 8, !tbaa !102
  %3009 = getelementptr inbounds %struct.BoundVert, ptr %2990, i64 0, i32 6
  %3010 = load i32, ptr %3009, align 8, !tbaa !151
  %3011 = getelementptr inbounds %struct.BoundVert, ptr %3002, i64 0, i32 6
  %3012 = load i32, ptr %3011, align 8, !tbaa !151
  %3013 = getelementptr inbounds %struct.BevVert, ptr %2942, i64 0, i32 9
  %3014 = load ptr, ptr %3013, align 8, !tbaa !93
  %3015 = getelementptr inbounds %struct.BevVert, ptr %2946, i64 0, i32 9
  %3016 = load ptr, ptr %3015, align 8, !tbaa !93
  %3017 = icmp eq i32 %2988, 1
  br i1 %3017, label %3018, label %3021

3018:                                             ; preds = %2984
  %3019 = getelementptr inbounds %struct.EdgeHalf, ptr %2965, i64 0, i32 14
  %3020 = load i8, ptr %3019, align 2, !tbaa !132
  call fastcc void @bev_create_quad_straddle(ptr noundef %0, ptr noundef %2992, ptr noundef %3000, ptr noundef %3004, ptr noundef %2996, ptr noundef %3006, ptr noundef %3008, i32 noundef %2922, i8 noundef zeroext %3020)
  br label %3102

3021:                                             ; preds = %2984
  %3022 = srem i32 %2988, 2
  %3023 = sdiv i32 %2988, 2
  %3024 = icmp slt i32 %2988, 1
  br i1 %3024, label %3071, label %3025

3025:                                             ; preds = %3021
  %3026 = getelementptr inbounds %struct.VMesh, ptr %3014, i64 0, i32 3
  %3027 = getelementptr inbounds %struct.VMesh, ptr %3016, i64 0, i32 3
  %3028 = icmp ne i32 %3022, 0
  %3029 = add nuw nsw i32 %3023, 1
  %3030 = getelementptr inbounds %struct.EdgeHalf, ptr %2965, i64 0, i32 14
  br label %3031

3031:                                             ; preds = %3025, %3068
  %3032 = phi ptr [ %2992, %3025 ], [ %3045, %3068 ]
  %3033 = phi ptr [ %3000, %3025 ], [ %3057, %3068 ]
  %3034 = phi i32 [ 1, %3025 ], [ %3069, %3068 ]
  %3035 = load i32, ptr %3026, align 4, !tbaa !94
  %3036 = sdiv i32 %3035, 2
  %3037 = add nsw i32 %3036, 1
  %3038 = add nsw i32 %3035, 1
  %3039 = load ptr, ptr %3014, align 8, !tbaa !149
  %3040 = mul nsw i32 %3038, %3010
  %3041 = mul nsw i32 %3040, %3037
  %3042 = add nsw i32 %3041, %3034
  %3043 = sext i32 %3042 to i64
  %3044 = getelementptr inbounds %struct.NewVert, ptr %3039, i64 %3043
  %3045 = load ptr, ptr %3044, align 8, !tbaa !155
  %3046 = sub nsw i32 %2988, %3034
  %3047 = load i32, ptr %3027, align 4, !tbaa !94
  %3048 = sdiv i32 %3047, 2
  %3049 = add nsw i32 %3048, 1
  %3050 = add nsw i32 %3047, 1
  %3051 = load ptr, ptr %3016, align 8, !tbaa !149
  %3052 = mul nsw i32 %3050, %3012
  %3053 = mul nsw i32 %3052, %3049
  %3054 = add nsw i32 %3046, %3053
  %3055 = sext i32 %3054 to i64
  %3056 = getelementptr inbounds %struct.NewVert, ptr %3051, i64 %3055
  %3057 = load ptr, ptr %3056, align 8, !tbaa !155
  %3058 = icmp eq i32 %3034, %3029
  %3059 = select i1 %3028, i1 %3058, i1 false
  br i1 %3059, label %3060, label %3062

3060:                                             ; preds = %3031
  %3061 = load i8, ptr %3030, align 2, !tbaa !132
  call fastcc void @bev_create_quad_straddle(ptr noundef %0, ptr noundef %3032, ptr noundef %3033, ptr noundef %3057, ptr noundef %3045, ptr noundef %3006, ptr noundef %3008, i32 noundef %2922, i8 noundef zeroext %3061)
  br label %3068

3062:                                             ; preds = %3031
  %3063 = icmp sgt i32 %3034, %3023
  %3064 = select i1 %3063, ptr %3008, ptr %3006
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %21) #13
  store ptr %3032, ptr %21, align 16, !tbaa !113
  store ptr %3033, ptr %2912, align 8, !tbaa !113
  store ptr %3057, ptr %2913, align 16, !tbaa !113
  store ptr %3045, ptr %2914, align 8, !tbaa !113
  %3065 = icmp eq ptr %3045, null
  %3066 = select i1 %3065, i32 3, i32 4
  %3067 = call fastcc ptr @bev_create_ngon(ptr noundef %0, ptr noundef nonnull %21, i32 noundef %3066, ptr noundef null, ptr noundef %3064, i32 noundef %2922, i8 noundef zeroext 1)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %21) #13
  br label %3068

3068:                                             ; preds = %3062, %3060
  %3069 = add nuw i32 %3034, 1
  %3070 = icmp eq i32 %3034, %2988
  br i1 %3070, label %3071, label %3031, !llvm.loop !215

3071:                                             ; preds = %3068, %3021
  %3072 = icmp eq i32 %3022, 0
  br i1 %3072, label %3073, label %3102

3073:                                             ; preds = %3071
  %3074 = getelementptr inbounds %struct.EdgeHalf, ptr %2965, i64 0, i32 14
  %3075 = load i8, ptr %3074, align 2, !tbaa !132
  %3076 = icmp eq i8 %3075, 0
  br i1 %3076, label %3077, label %3102

3077:                                             ; preds = %3073
  %3078 = getelementptr inbounds %struct.VMesh, ptr %3014, i64 0, i32 3
  %3079 = load i32, ptr %3078, align 4, !tbaa !94
  %3080 = sdiv i32 %3079, 2
  %3081 = add nsw i32 %3080, 1
  %3082 = add nsw i32 %3079, 1
  %3083 = load ptr, ptr %3014, align 8, !tbaa !149
  %3084 = mul nsw i32 %3082, %3010
  %3085 = mul nsw i32 %3084, %3081
  %3086 = add nsw i32 %3085, %3023
  %3087 = sext i32 %3086 to i64
  %3088 = getelementptr inbounds %struct.NewVert, ptr %3083, i64 %3087
  %3089 = load ptr, ptr %3088, align 8, !tbaa !155
  call fastcc void @bev_merge_uvs(ptr noundef %0, ptr noundef %3089)
  %3090 = getelementptr inbounds %struct.VMesh, ptr %3016, i64 0, i32 3
  %3091 = load i32, ptr %3090, align 4, !tbaa !94
  %3092 = sdiv i32 %3091, 2
  %3093 = add nsw i32 %3092, 1
  %3094 = add nsw i32 %3091, 1
  %3095 = load ptr, ptr %3016, align 8, !tbaa !149
  %3096 = mul nsw i32 %3094, %3012
  %3097 = mul nsw i32 %3096, %3093
  %3098 = add nsw i32 %3097, %3023
  %3099 = sext i32 %3098 to i64
  %3100 = getelementptr inbounds %struct.NewVert, ptr %3095, i64 %3099
  %3101 = load ptr, ptr %3100, align 8, !tbaa !155
  call fastcc void @bev_merge_uvs(ptr noundef %0, ptr noundef %3101)
  br label %3102

3102:                                             ; preds = %3077, %3073, %3071, %3018
  %3103 = getelementptr inbounds %struct.EdgeHalf, ptr %2965, i64 0, i32 14
  %3104 = load i8, ptr %3103, align 2, !tbaa !132
  %3105 = icmp eq i8 %3104, 0
  br i1 %3105, label %3106, label %3134

3106:                                             ; preds = %3102
  %3107 = load ptr, ptr %3013, align 8, !tbaa !93
  %3108 = getelementptr inbounds %struct.VMesh, ptr %3107, i64 0, i32 4
  %3109 = load i32, ptr %3108, align 8, !tbaa !160
  %3110 = icmp eq i32 %3109, 0
  br i1 %3110, label %3111, label %3134

3111:                                             ; preds = %3106
  %3112 = load i32, ptr %2987, align 8, !tbaa !104
  %3113 = load ptr, ptr %2989, align 8, !tbaa !210
  %3114 = getelementptr inbounds %struct.BoundVert, ptr %3113, i64 0, i32 6
  %3115 = load i32, ptr %3114, align 8, !tbaa !151
  %3116 = icmp sgt i32 %3112, 1
  br i1 %3116, label %3117, label %3134

3117:                                             ; preds = %3111
  %3118 = getelementptr inbounds %struct.VMesh, ptr %3107, i64 0, i32 3
  br label %3119

3119:                                             ; preds = %3119, %3117
  %3120 = phi i32 [ 1, %3117 ], [ %3132, %3119 ]
  %3121 = load i32, ptr %3118, align 4, !tbaa !94
  %3122 = sdiv i32 %3121, 2
  %3123 = add nsw i32 %3122, 1
  %3124 = add nsw i32 %3121, 1
  %3125 = load ptr, ptr %3107, align 8, !tbaa !149
  %3126 = mul nsw i32 %3124, %3115
  %3127 = mul nsw i32 %3126, %3123
  %3128 = add nsw i32 %3127, %3120
  %3129 = sext i32 %3128 to i64
  %3130 = getelementptr inbounds %struct.NewVert, ptr %3125, i64 %3129
  %3131 = load ptr, ptr %3130, align 8, !tbaa !155
  call fastcc void @bev_merge_uvs(ptr noundef %0, ptr noundef %3131)
  %3132 = add nuw nsw i32 %3120, 1
  %3133 = icmp eq i32 %3132, %3112
  br i1 %3133, label %3134, label %3119, !llvm.loop !216

3134:                                             ; preds = %3119, %3111, %3106, %3102
  %3135 = getelementptr inbounds %struct.EdgeHalf, ptr %2985, i64 0, i32 14
  %3136 = load i8, ptr %3135, align 2, !tbaa !132
  %3137 = icmp eq i8 %3136, 0
  br i1 %3137, label %3138, label %3167

3138:                                             ; preds = %3134
  %3139 = load ptr, ptr %3015, align 8, !tbaa !93
  %3140 = getelementptr inbounds %struct.VMesh, ptr %3139, i64 0, i32 4
  %3141 = load i32, ptr %3140, align 8, !tbaa !160
  %3142 = icmp eq i32 %3141, 0
  br i1 %3142, label %3143, label %3167

3143:                                             ; preds = %3138
  %3144 = getelementptr inbounds %struct.EdgeHalf, ptr %2985, i64 0, i32 7
  %3145 = load i32, ptr %3144, align 8, !tbaa !104
  %3146 = load ptr, ptr %3001, align 8, !tbaa !210
  %3147 = getelementptr inbounds %struct.BoundVert, ptr %3146, i64 0, i32 6
  %3148 = load i32, ptr %3147, align 8, !tbaa !151
  %3149 = icmp sgt i32 %3145, 1
  br i1 %3149, label %3150, label %3167

3150:                                             ; preds = %3143
  %3151 = getelementptr inbounds %struct.VMesh, ptr %3139, i64 0, i32 3
  br label %3152

3152:                                             ; preds = %3152, %3150
  %3153 = phi i32 [ 1, %3150 ], [ %3165, %3152 ]
  %3154 = load i32, ptr %3151, align 4, !tbaa !94
  %3155 = sdiv i32 %3154, 2
  %3156 = add nsw i32 %3155, 1
  %3157 = add nsw i32 %3154, 1
  %3158 = load ptr, ptr %3139, align 8, !tbaa !149
  %3159 = mul nsw i32 %3157, %3148
  %3160 = mul nsw i32 %3159, %3156
  %3161 = add nsw i32 %3160, %3153
  %3162 = sext i32 %3161 to i64
  %3163 = getelementptr inbounds %struct.NewVert, ptr %3158, i64 %3162
  %3164 = load ptr, ptr %3163, align 8, !tbaa !155
  call fastcc void @bev_merge_uvs(ptr noundef %0, ptr noundef %3164)
  %3165 = add nuw nsw i32 %3153, 1
  %3166 = icmp eq i32 %3165, %3145
  br i1 %3166, label %3167, label %3152, !llvm.loop !216

3167:                                             ; preds = %3152, %3143, %3138, %3134
  %3168 = call ptr @BM_edge_exists(ptr noundef %2992, ptr noundef %3000) #13
  %3169 = call ptr @BM_edge_exists(ptr noundef %3004, ptr noundef %2996) #13
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %2916, ptr noundef %3168) #13
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %2916, ptr noundef %3169) #13
  %3170 = load i32, ptr %2966, align 8, !tbaa !87
  %3171 = icmp eq i32 %3170, 4
  br i1 %3171, label %3172, label %3195

3172:                                             ; preds = %3167
  %3173 = getelementptr inbounds %struct.BevVert, ptr %2942, i64 0, i32 2
  %3174 = load i32, ptr %3173, align 4, !tbaa !88
  %3175 = icmp eq i32 %3174, 2
  br i1 %3175, label %3176, label %3195

3176:                                             ; preds = %3172
  %3177 = getelementptr inbounds %struct.BevVert, ptr %2942, i64 0, i32 7
  %3178 = load ptr, ptr %3177, align 8, !tbaa !91
  %3179 = getelementptr inbounds %struct.EdgeHalf, ptr %3178, i64 0, i32 12
  %3180 = load i8, ptr %3179, align 4, !tbaa !103
  %3181 = icmp eq i8 %3180, 0
  br i1 %3181, label %3186, label %3182

3182:                                             ; preds = %3176
  %3183 = getelementptr inbounds %struct.EdgeHalf, ptr %3178, i64 2, i32 12
  %3184 = load i8, ptr %3183, align 4, !tbaa !103
  %3185 = icmp eq i8 %3184, 0
  br i1 %3185, label %3186, label %3194

3186:                                             ; preds = %3182, %3176
  %3187 = getelementptr inbounds %struct.EdgeHalf, ptr %3178, i64 1, i32 12
  %3188 = load i8, ptr %3187, align 4, !tbaa !103
  %3189 = icmp eq i8 %3188, 0
  br i1 %3189, label %3195, label %3190

3190:                                             ; preds = %3186
  %3191 = getelementptr inbounds %struct.EdgeHalf, ptr %3178, i64 3, i32 12
  %3192 = load i8, ptr %3191, align 4, !tbaa !103
  %3193 = icmp eq i8 %3192, 0
  br i1 %3193, label %3195, label %3194

3194:                                             ; preds = %3182, %3190
  call fastcc void @weld_cross_attrs_copy(ptr noundef %0, ptr noundef %2942, ptr noundef %3014, i32 noundef %3010, ptr noundef %2965)
  br label %3195

3195:                                             ; preds = %3172, %3167, %3186, %3194, %3190
  %3196 = load i32, ptr %2986, align 8, !tbaa !87
  %3197 = icmp eq i32 %3196, 4
  br i1 %3197, label %3198, label %3221

3198:                                             ; preds = %3195
  %3199 = getelementptr inbounds %struct.BevVert, ptr %2946, i64 0, i32 2
  %3200 = load i32, ptr %3199, align 4, !tbaa !88
  %3201 = icmp eq i32 %3200, 2
  br i1 %3201, label %3202, label %3221

3202:                                             ; preds = %3198
  %3203 = getelementptr inbounds %struct.BevVert, ptr %2946, i64 0, i32 7
  %3204 = load ptr, ptr %3203, align 8, !tbaa !91
  %3205 = getelementptr inbounds %struct.EdgeHalf, ptr %3204, i64 0, i32 12
  %3206 = load i8, ptr %3205, align 4, !tbaa !103
  %3207 = icmp eq i8 %3206, 0
  br i1 %3207, label %3212, label %3208

3208:                                             ; preds = %3202
  %3209 = getelementptr inbounds %struct.EdgeHalf, ptr %3204, i64 2, i32 12
  %3210 = load i8, ptr %3209, align 4, !tbaa !103
  %3211 = icmp eq i8 %3210, 0
  br i1 %3211, label %3212, label %3220

3212:                                             ; preds = %3208, %3202
  %3213 = getelementptr inbounds %struct.EdgeHalf, ptr %3204, i64 1, i32 12
  %3214 = load i8, ptr %3213, align 4, !tbaa !103
  %3215 = icmp eq i8 %3214, 0
  br i1 %3215, label %3221, label %3216

3216:                                             ; preds = %3212
  %3217 = getelementptr inbounds %struct.EdgeHalf, ptr %3204, i64 3, i32 12
  %3218 = load i8, ptr %3217, align 4, !tbaa !103
  %3219 = icmp eq i8 %3218, 0
  br i1 %3219, label %3221, label %3220

3220:                                             ; preds = %3208, %3216
  call fastcc void @weld_cross_attrs_copy(ptr noundef %0, ptr noundef %2946, ptr noundef %3016, i32 noundef %3012, ptr noundef %2985)
  br label %3221

3221:                                             ; preds = %3220, %3216, %2935, %3212, %3195, %3198, %2915
  %3222 = load ptr, ptr %204, align 8, !tbaa !64
  %3223 = call ptr %3222(ptr noundef nonnull %60) #13
  %3224 = icmp eq ptr %3223, null
  br i1 %3224, label %3225, label %2915, !llvm.loop !217

3225:                                             ; preds = %3221, %2905, %2902
  store i8 1, ptr %202, align 4, !tbaa !61
  store ptr @bmiter__elem_of_mesh_begin, ptr %203, align 8, !tbaa !63
  store ptr @bmiter__elem_of_mesh_step, ptr %204, align 8, !tbaa !64
  %3226 = load ptr, ptr %205, align 8, !tbaa !65
  store ptr %3226, ptr %60, align 8, !tbaa !70
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %60) #13
  %3227 = load ptr, ptr %204, align 8, !tbaa !64
  %3228 = call ptr %3227(ptr noundef nonnull %60) #13
  %3229 = icmp eq ptr %3228, null
  br i1 %3229, label %3955, label %3230

3230:                                             ; preds = %3225
  %3231 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 4
  %3232 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 1
  %3233 = getelementptr inbounds %struct.BMIter, ptr %12, i64 0, i32 2
  br label %3234

3234:                                             ; preds = %3230, %3951
  %3235 = phi ptr [ %3228, %3230 ], [ %3953, %3951 ]
  %3236 = getelementptr inbounds %struct.BMHeader, ptr %3235, i64 0, i32 3
  %3237 = load i8, ptr %3236, align 1, !tbaa !71
  %3238 = and i8 %3237, 16
  %3239 = icmp eq i8 %3238, 0
  br i1 %3239, label %3951, label %3240

3240:                                             ; preds = %3234
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #13
  %3241 = call ptr @BM_iter_as_arrayN(ptr noundef %0, i8 noundef zeroext 5, ptr noundef nonnull %3235, ptr noundef nonnull %20, ptr noundef nonnull %19, i32 noundef 16) #13
  %3242 = icmp eq ptr %3241, null
  br i1 %3242, label %3820, label %3243

3243:                                             ; preds = %3240
  %3244 = load i32, ptr %20, align 4, !tbaa !114
  %3245 = icmp sgt i32 %3244, 0
  br i1 %3245, label %3246, label %3816

3246:                                             ; preds = %3243, %3811
  %3247 = phi i64 [ %3812, %3811 ], [ 0, %3243 ]
  %3248 = getelementptr inbounds ptr, ptr %3241, i64 %3247
  %3249 = load ptr, ptr %3248, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  store ptr null, ptr %13, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  store ptr null, ptr %14, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  store ptr null, ptr %15, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %16) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %18) #13
  store i8 11, ptr %3231, align 4, !tbaa !61
  store ptr @bmiter__loop_of_face_begin, ptr %3232, align 8, !tbaa !63
  store ptr @bmiter__loop_of_face_step, ptr %3233, align 8, !tbaa !64
  store ptr %3249, ptr %12, align 8, !tbaa !70
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %12) #13
  %3250 = load ptr, ptr %3233, align 8, !tbaa !64
  %3251 = call ptr %3250(ptr noundef nonnull %12) #13
  %3252 = icmp eq ptr %3251, null
  br i1 %3252, label %3693, label %3253

3253:                                             ; preds = %3246, %3685
  %3254 = phi i32 [ %3689, %3685 ], [ 0, %3246 ]
  %3255 = phi i32 [ %3688, %3685 ], [ 0, %3246 ]
  %3256 = phi i32 [ %3687, %3685 ], [ 0, %3246 ]
  %3257 = phi ptr [ %3691, %3685 ], [ %3251, %3246 ]
  %3258 = phi i8 [ %3686, %3685 ], [ 0, %3246 ]
  %3259 = getelementptr inbounds %struct.BMLoop, ptr %3257, i64 0, i32 1
  %3260 = load ptr, ptr %3259, align 8, !tbaa !125
  %3261 = getelementptr inbounds %struct.BMHeader, ptr %3260, i64 0, i32 3
  %3262 = load i8, ptr %3261, align 1, !tbaa !71
  %3263 = and i8 %3262, 16
  %3264 = icmp eq i8 %3263, 0
  br i1 %3264, label %3635, label %3265

3265:                                             ; preds = %3253
  %3266 = getelementptr inbounds %struct.BMLoop, ptr %3257, i64 0, i32 7
  %3267 = load ptr, ptr %3266, align 8, !tbaa !205
  %3268 = load ptr, ptr %61, align 8, !tbaa !52
  %3269 = call ptr @BLI_ghash_lookup(ptr noundef %3268, ptr noundef %3260) #13
  %3270 = getelementptr inbounds %struct.BMLoop, ptr %3257, i64 0, i32 2
  %3271 = load ptr, ptr %3270, align 8, !tbaa !218
  %3272 = getelementptr inbounds %struct.BevVert, ptr %3269, i64 0, i32 1
  %3273 = load i32, ptr %3272, align 8, !tbaa !87
  %3274 = getelementptr inbounds %struct.BevVert, ptr %3269, i64 0, i32 7
  %3275 = load ptr, ptr %3274, align 8, !tbaa !91
  %3276 = sext i32 %3273 to i64
  br label %3277

3277:                                             ; preds = %3277, %3265
  %3278 = phi i64 [ %3283, %3277 ], [ 0, %3265 ]
  %3279 = icmp slt i64 %3278, %3276
  call void @llvm.assume(i1 %3279)
  %3280 = getelementptr inbounds %struct.EdgeHalf, ptr %3275, i64 %3278, i32 2
  %3281 = load ptr, ptr %3280, align 8, !tbaa !97
  %3282 = icmp eq ptr %3281, %3271
  %3283 = add nuw i64 %3278, 1
  br i1 %3282, label %3284, label %3277, !llvm.loop !146

3284:                                             ; preds = %3277
  %3285 = getelementptr inbounds %struct.EdgeHalf, ptr %3275, i64 %3278
  %3286 = getelementptr inbounds %struct.BMLoop, ptr %3267, i64 0, i32 2
  %3287 = load ptr, ptr %3286, align 8, !tbaa !218
  %3288 = icmp sgt i32 %3273, 0
  br i1 %3288, label %3289, label %3301

3289:                                             ; preds = %3284
  %3290 = zext nneg i32 %3273 to i64
  br label %3294

3291:                                             ; preds = %3294
  %3292 = add nuw nsw i64 %3295, 1
  %3293 = icmp eq i64 %3292, %3290
  br i1 %3293, label %3301, label %3294, !llvm.loop !146

3294:                                             ; preds = %3289, %3291
  %3295 = phi i64 [ 0, %3289 ], [ %3292, %3291 ]
  %3296 = getelementptr inbounds %struct.EdgeHalf, ptr %3275, i64 %3295, i32 2
  %3297 = load ptr, ptr %3296, align 8, !tbaa !97
  %3298 = icmp eq ptr %3297, %3287
  br i1 %3298, label %3299, label %3291

3299:                                             ; preds = %3294
  %3300 = getelementptr inbounds %struct.EdgeHalf, ptr %3275, i64 %3295
  br label %3301

3301:                                             ; preds = %3291, %3284, %3299
  %3302 = phi ptr [ %3300, %3299 ], [ null, %3284 ], [ null, %3291 ]
  %3303 = getelementptr inbounds %struct.EdgeHalf, ptr %3302, i64 0, i32 5
  %3304 = load ptr, ptr %3303, align 8, !tbaa !210
  %3305 = getelementptr inbounds %struct.EdgeHalf, ptr %3275, i64 %3278, i32 12
  %3306 = load i8, ptr %3305, align 4, !tbaa !103
  %3307 = icmp eq i8 %3306, 0
  %3308 = getelementptr inbounds %struct.EdgeHalf, ptr %3275, i64 %3278, i32 6
  %3309 = getelementptr inbounds %struct.EdgeHalf, ptr %3275, i64 %3278, i32 5
  %3310 = select i1 %3307, ptr %3309, ptr %3308
  %3311 = load ptr, ptr %3310, align 8, !tbaa !113
  %3312 = getelementptr inbounds %struct.BevVert, ptr %3269, i64 0, i32 9
  %3313 = load ptr, ptr %3312, align 8, !tbaa !93
  %3314 = load ptr, ptr %13, align 8
  %3315 = icmp eq ptr %3314, null
  %3316 = add nsw i32 %3256, 1
  %3317 = icmp ult i32 %3316, 33
  %3318 = select i1 %3315, i1 %3317, i1 false
  br i1 %3318, label %3319, label %3320

3319:                                             ; preds = %3301
  store ptr %16, ptr %13, align 8, !tbaa !113
  br label %3333

3320:                                             ; preds = %3301
  %3321 = icmp eq ptr %3314, %16
  %3322 = or i1 %3321, %3315
  %3323 = select i1 %3321, i64 32, i64 0
  br i1 %3322, label %3328, label %3324

3324:                                             ; preds = %3320
  %3325 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %3326 = call i64 %3325(ptr noundef nonnull %3314) #13
  %3327 = lshr i64 %3326, 3
  br label %3328

3328:                                             ; preds = %3324, %3320
  %3329 = phi i64 [ %3323, %3320 ], [ %3327, %3324 ]
  %3330 = sext i32 %3316 to i64
  %3331 = icmp ult i64 %3329, %3330
  br i1 %3331, label %3332, label %3333

3332:                                             ; preds = %3328
  call void @_bli_array_grow_func(ptr noundef nonnull %13, ptr noundef nonnull %16, i32 noundef 8, i32 noundef %3256, i32 noundef 1, ptr noundef nonnull @.str) #13
  br label %3333

3333:                                             ; preds = %3332, %3328, %3319
  %3334 = getelementptr inbounds %struct.BoundVert, ptr %3304, i64 0, i32 2
  %3335 = load ptr, ptr %3334, align 8, !tbaa !156
  %3336 = load ptr, ptr %13, align 8, !tbaa !113
  %3337 = sext i32 %3256 to i64
  %3338 = getelementptr inbounds ptr, ptr %3336, i64 %3337
  store ptr %3335, ptr %3338, align 8, !tbaa !113
  %3339 = load ptr, ptr %15, align 8
  %3340 = icmp eq ptr %3339, null
  %3341 = add nsw i32 %3254, 1
  %3342 = icmp ult i32 %3341, 33
  %3343 = select i1 %3340, i1 %3342, i1 false
  br i1 %3343, label %3344, label %3345

3344:                                             ; preds = %3333
  store ptr %18, ptr %15, align 8, !tbaa !113
  br label %3358

3345:                                             ; preds = %3333
  %3346 = icmp eq ptr %3339, %18
  %3347 = or i1 %3346, %3340
  %3348 = select i1 %3346, i64 32, i64 0
  br i1 %3347, label %3353, label %3349

3349:                                             ; preds = %3345
  %3350 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %3351 = call i64 %3350(ptr noundef nonnull %3339) #13
  %3352 = lshr i64 %3351, 3
  br label %3353

3353:                                             ; preds = %3349, %3345
  %3354 = phi i64 [ %3348, %3345 ], [ %3352, %3349 ]
  %3355 = sext i32 %3341 to i64
  %3356 = icmp ult i64 %3354, %3355
  br i1 %3356, label %3357, label %3358

3357:                                             ; preds = %3353
  call void @_bli_array_grow_func(ptr noundef nonnull %15, ptr noundef nonnull %18, i32 noundef 8, i32 noundef %3254, i32 noundef 1, ptr noundef nonnull @.str.2) #13
  br label %3358

3358:                                             ; preds = %3357, %3353, %3344
  %3359 = load ptr, ptr %15, align 8, !tbaa !113
  %3360 = sext i32 %3254 to i64
  %3361 = getelementptr inbounds ptr, ptr %3359, i64 %3360
  store ptr %3281, ptr %3361, align 8, !tbaa !113
  %3362 = add nsw i32 %3254, 1
  %3363 = add nsw i32 %3256, 1
  %3364 = icmp eq ptr %3304, %3311
  br i1 %3364, label %3685, label %3365

3365:                                             ; preds = %3358
  %3366 = getelementptr inbounds %struct.VMesh, ptr %3313, i64 0, i32 4
  %3367 = getelementptr inbounds %struct.VMesh, ptr %3313, i64 0, i32 3
  %3368 = getelementptr inbounds %struct.VMesh, ptr %3313, i64 0, i32 3
  %3369 = getelementptr inbounds %struct.EdgeHalf, ptr %3302, i64 0, i32 12
  %3370 = getelementptr inbounds %struct.BoundVert, ptr %3311, i64 0, i32 6
  br label %3371

3371:                                             ; preds = %3365, %3628
  %3372 = phi i32 [ %3363, %3365 ], [ %3633, %3628 ]
  %3373 = phi i32 [ %3362, %3365 ], [ %3632, %3628 ]
  %3374 = phi i32 [ %3255, %3365 ], [ %3580, %3628 ]
  %3375 = phi ptr [ %3304, %3365 ], [ %3583, %3628 ]
  %3376 = phi ptr [ %3285, %3365 ], [ %3578, %3628 ]
  %3377 = load i32, ptr %3366, align 8, !tbaa !160
  switch i32 %3377, label %3577 [
    i32 0, label %3378
    i32 2, label %3494
  ]

3378:                                             ; preds = %3371
  %3379 = getelementptr inbounds %struct.BoundVert, ptr %3375, i64 0, i32 5
  %3380 = load ptr, ptr %3379, align 8, !tbaa !157
  %3381 = icmp eq ptr %3380, null
  br i1 %3381, label %3492, label %3382

3382:                                             ; preds = %3378
  %3383 = getelementptr inbounds %struct.EdgeHalf, ptr %3380, i64 0, i32 7
  %3384 = load i32, ptr %3383, align 8, !tbaa !104
  %3385 = icmp slt i32 %3384, 2
  %3386 = icmp eq ptr %3380, %3376
  %3387 = select i1 %3385, i1 true, i1 %3386
  %3388 = icmp eq ptr %3380, %3302
  %3389 = or i1 %3388, %3387
  br i1 %3389, label %3492, label %3390

3390:                                             ; preds = %3382
  %3391 = getelementptr inbounds %struct.BoundVert, ptr %3375, i64 0, i32 6
  %3392 = load i32, ptr %3391, align 8, !tbaa !151
  %3393 = load i32, ptr %3383, align 8, !tbaa !104
  %3394 = icmp sgt i32 %3393, 1
  br i1 %3394, label %3395, label %3577

3395:                                             ; preds = %3390
  %3396 = getelementptr inbounds %struct.EdgeHalf, ptr %3380, i64 0, i32 14
  %3397 = sext i32 %3373 to i64
  %3398 = sext i32 %3372 to i64
  br label %3399

3399:                                             ; preds = %3395, %3487
  %3400 = phi i64 [ %3398, %3395 ], [ %3417, %3487 ]
  %3401 = phi i64 [ %3397, %3395 ], [ %3440, %3487 ]
  %3402 = phi i32 [ %3374, %3395 ], [ %3488, %3487 ]
  %3403 = phi i32 [ 1, %3395 ], [ %3489, %3487 ]
  %3404 = load i32, ptr %3367, align 4, !tbaa !94
  %3405 = sdiv i32 %3404, 2
  %3406 = add nsw i32 %3405, 1
  %3407 = add nsw i32 %3404, 1
  %3408 = load ptr, ptr %3313, align 8, !tbaa !149
  %3409 = mul nsw i32 %3407, %3392
  %3410 = mul nsw i32 %3409, %3406
  %3411 = add nsw i32 %3410, %3403
  %3412 = sext i32 %3411 to i64
  %3413 = getelementptr inbounds %struct.NewVert, ptr %3408, i64 %3412
  %3414 = load ptr, ptr %3413, align 8, !tbaa !155
  %3415 = load ptr, ptr %13, align 8
  %3416 = icmp eq ptr %3415, null
  %3417 = add nsw i64 %3400, 1
  %3418 = trunc i64 %3417 to i32
  %3419 = icmp ult i32 %3418, 33
  %3420 = select i1 %3416, i1 %3419, i1 false
  br i1 %3420, label %3421, label %3422

3421:                                             ; preds = %3399
  store ptr %16, ptr %13, align 8, !tbaa !113
  br label %3435

3422:                                             ; preds = %3399
  %3423 = icmp eq ptr %3415, %16
  %3424 = or i1 %3423, %3416
  %3425 = select i1 %3423, i64 32, i64 0
  br i1 %3424, label %3430, label %3426

3426:                                             ; preds = %3422
  %3427 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %3428 = call i64 %3427(ptr noundef nonnull %3415) #13
  %3429 = lshr i64 %3428, 3
  br label %3430

3430:                                             ; preds = %3426, %3422
  %3431 = phi i64 [ %3425, %3422 ], [ %3429, %3426 ]
  %3432 = icmp ult i64 %3431, %3417
  br i1 %3432, label %3433, label %3435

3433:                                             ; preds = %3430
  %3434 = trunc i64 %3400 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %13, ptr noundef nonnull %16, i32 noundef 8, i32 noundef %3434, i32 noundef 1, ptr noundef nonnull @.str) #13
  br label %3435

3435:                                             ; preds = %3433, %3430, %3421
  %3436 = load ptr, ptr %13, align 8, !tbaa !113
  %3437 = getelementptr inbounds ptr, ptr %3436, i64 %3400
  store ptr %3414, ptr %3437, align 8, !tbaa !113
  %3438 = load ptr, ptr %15, align 8
  %3439 = icmp eq ptr %3438, null
  %3440 = add nsw i64 %3401, 1
  %3441 = trunc i64 %3440 to i32
  %3442 = icmp ult i32 %3441, 33
  %3443 = select i1 %3439, i1 %3442, i1 false
  br i1 %3443, label %3444, label %3445

3444:                                             ; preds = %3435
  store ptr %18, ptr %15, align 8, !tbaa !113
  br label %3458

3445:                                             ; preds = %3435
  %3446 = icmp eq ptr %3438, %18
  %3447 = or i1 %3446, %3439
  %3448 = select i1 %3446, i64 32, i64 0
  br i1 %3447, label %3453, label %3449

3449:                                             ; preds = %3445
  %3450 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %3451 = call i64 %3450(ptr noundef nonnull %3438) #13
  %3452 = lshr i64 %3451, 3
  br label %3453

3453:                                             ; preds = %3449, %3445
  %3454 = phi i64 [ %3448, %3445 ], [ %3452, %3449 ]
  %3455 = icmp ult i64 %3454, %3440
  br i1 %3455, label %3456, label %3458

3456:                                             ; preds = %3453
  %3457 = trunc i64 %3401 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %15, ptr noundef nonnull %18, i32 noundef 8, i32 noundef %3457, i32 noundef 1, ptr noundef nonnull @.str.2) #13
  br label %3458

3458:                                             ; preds = %3456, %3453, %3444
  %3459 = load ptr, ptr %15, align 8, !tbaa !113
  %3460 = getelementptr inbounds ptr, ptr %3459, i64 %3401
  store ptr %3281, ptr %3460, align 8, !tbaa !113
  %3461 = load i8, ptr %3396, align 2, !tbaa !132
  %3462 = icmp eq i8 %3461, 0
  br i1 %3462, label %3463, label %3487

3463:                                             ; preds = %3458
  %3464 = load ptr, ptr %14, align 8
  %3465 = icmp eq ptr %3464, null
  %3466 = add nsw i32 %3402, 1
  %3467 = icmp ult i32 %3466, 33
  %3468 = select i1 %3465, i1 %3467, i1 false
  br i1 %3468, label %3469, label %3470

3469:                                             ; preds = %3463
  store ptr %17, ptr %14, align 8, !tbaa !113
  br label %3483

3470:                                             ; preds = %3463
  %3471 = icmp eq ptr %3464, %17
  %3472 = or i1 %3471, %3465
  %3473 = select i1 %3471, i64 32, i64 0
  br i1 %3472, label %3478, label %3474

3474:                                             ; preds = %3470
  %3475 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %3476 = call i64 %3475(ptr noundef nonnull %3464) #13
  %3477 = lshr i64 %3476, 3
  br label %3478

3478:                                             ; preds = %3474, %3470
  %3479 = phi i64 [ %3473, %3470 ], [ %3477, %3474 ]
  %3480 = sext i32 %3466 to i64
  %3481 = icmp ult i64 %3479, %3480
  br i1 %3481, label %3482, label %3483

3482:                                             ; preds = %3478
  call void @_bli_array_grow_func(ptr noundef nonnull %14, ptr noundef nonnull %17, i32 noundef 8, i32 noundef %3402, i32 noundef 1, ptr noundef nonnull @.str.3) #13
  br label %3483

3483:                                             ; preds = %3482, %3478, %3469
  %3484 = load ptr, ptr %14, align 8, !tbaa !113
  %3485 = sext i32 %3402 to i64
  %3486 = getelementptr inbounds ptr, ptr %3484, i64 %3485
  store ptr %3414, ptr %3486, align 8, !tbaa !113
  br label %3487

3487:                                             ; preds = %3483, %3458
  %3488 = phi i32 [ %3402, %3458 ], [ %3466, %3483 ]
  %3489 = add nuw nsw i32 %3403, 1
  %3490 = load i32, ptr %3383, align 8, !tbaa !104
  %3491 = icmp slt i32 %3489, %3490
  br i1 %3491, label %3399, label %3574, !llvm.loop !219

3492:                                             ; preds = %3382, %3378
  %3493 = icmp eq i32 %3377, 2
  br i1 %3493, label %3494, label %3577

3494:                                             ; preds = %3371, %3492
  %3495 = load i32, ptr %3368, align 4, !tbaa !94
  %3496 = icmp sgt i32 %3495, 1
  br i1 %3496, label %3497, label %3577

3497:                                             ; preds = %3494
  %3498 = getelementptr inbounds %struct.EdgeHalf, ptr %3376, i64 0, i32 12
  %3499 = load i8, ptr %3498, align 4, !tbaa !103
  %3500 = icmp eq i8 %3499, 0
  br i1 %3500, label %3501, label %3577

3501:                                             ; preds = %3497
  %3502 = load i8, ptr %3369, align 4, !tbaa !103
  %3503 = icmp eq i8 %3502, 0
  br i1 %3503, label %3504, label %3577

3504:                                             ; preds = %3501
  %3505 = load i32, ptr %3370, align 8, !tbaa !151
  %3506 = sext i32 %3373 to i64
  %3507 = sext i32 %3372 to i64
  br label %3508

3508:                                             ; preds = %3504, %3567
  %3509 = phi i64 [ %3507, %3504 ], [ %3526, %3567 ]
  %3510 = phi i64 [ %3506, %3504 ], [ %3549, %3567 ]
  %3511 = phi i32 [ %3495, %3504 ], [ %3512, %3567 ]
  %3512 = add nsw i32 %3511, -1
  %3513 = load i32, ptr %3368, align 4, !tbaa !94
  %3514 = sdiv i32 %3513, 2
  %3515 = add nsw i32 %3514, 1
  %3516 = add nsw i32 %3513, 1
  %3517 = load ptr, ptr %3313, align 8, !tbaa !149
  %3518 = mul nsw i32 %3516, %3505
  %3519 = mul nsw i32 %3518, %3515
  %3520 = add nsw i32 %3519, %3512
  %3521 = sext i32 %3520 to i64
  %3522 = getelementptr inbounds %struct.NewVert, ptr %3517, i64 %3521
  %3523 = load ptr, ptr %3522, align 8, !tbaa !155
  %3524 = load ptr, ptr %13, align 8
  %3525 = icmp eq ptr %3524, null
  %3526 = add nsw i64 %3509, 1
  %3527 = trunc i64 %3526 to i32
  %3528 = icmp ult i32 %3527, 33
  %3529 = select i1 %3525, i1 %3528, i1 false
  br i1 %3529, label %3530, label %3531

3530:                                             ; preds = %3508
  store ptr %16, ptr %13, align 8, !tbaa !113
  br label %3544

3531:                                             ; preds = %3508
  %3532 = icmp eq ptr %3524, %16
  %3533 = or i1 %3532, %3525
  %3534 = select i1 %3532, i64 32, i64 0
  br i1 %3533, label %3539, label %3535

3535:                                             ; preds = %3531
  %3536 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %3537 = call i64 %3536(ptr noundef nonnull %3524) #13
  %3538 = lshr i64 %3537, 3
  br label %3539

3539:                                             ; preds = %3535, %3531
  %3540 = phi i64 [ %3534, %3531 ], [ %3538, %3535 ]
  %3541 = icmp ult i64 %3540, %3526
  br i1 %3541, label %3542, label %3544

3542:                                             ; preds = %3539
  %3543 = trunc i64 %3509 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %13, ptr noundef nonnull %16, i32 noundef 8, i32 noundef %3543, i32 noundef 1, ptr noundef nonnull @.str) #13
  br label %3544

3544:                                             ; preds = %3542, %3539, %3530
  %3545 = load ptr, ptr %13, align 8, !tbaa !113
  %3546 = getelementptr inbounds ptr, ptr %3545, i64 %3509
  store ptr %3523, ptr %3546, align 8, !tbaa !113
  %3547 = load ptr, ptr %15, align 8
  %3548 = icmp eq ptr %3547, null
  %3549 = add nsw i64 %3510, 1
  %3550 = trunc i64 %3549 to i32
  %3551 = icmp ult i32 %3550, 33
  %3552 = select i1 %3548, i1 %3551, i1 false
  br i1 %3552, label %3553, label %3554

3553:                                             ; preds = %3544
  store ptr %18, ptr %15, align 8, !tbaa !113
  br label %3567

3554:                                             ; preds = %3544
  %3555 = icmp eq ptr %3547, %18
  %3556 = or i1 %3555, %3548
  %3557 = select i1 %3555, i64 32, i64 0
  br i1 %3556, label %3562, label %3558

3558:                                             ; preds = %3554
  %3559 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %3560 = call i64 %3559(ptr noundef nonnull %3547) #13
  %3561 = lshr i64 %3560, 3
  br label %3562

3562:                                             ; preds = %3558, %3554
  %3563 = phi i64 [ %3557, %3554 ], [ %3561, %3558 ]
  %3564 = icmp ult i64 %3563, %3549
  br i1 %3564, label %3565, label %3567

3565:                                             ; preds = %3562
  %3566 = trunc i64 %3510 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %15, ptr noundef nonnull %18, i32 noundef 8, i32 noundef %3566, i32 noundef 1, ptr noundef nonnull @.str.2) #13
  br label %3567

3567:                                             ; preds = %3565, %3562, %3553
  %3568 = load ptr, ptr %15, align 8, !tbaa !113
  %3569 = getelementptr inbounds ptr, ptr %3568, i64 %3510
  store ptr %3281, ptr %3569, align 8, !tbaa !113
  %3570 = icmp sgt i32 %3511, 2
  br i1 %3570, label %3508, label %3571, !llvm.loop !220

3571:                                             ; preds = %3567
  %3572 = trunc i64 %3526 to i32
  %3573 = trunc i64 %3549 to i32
  br label %3577

3574:                                             ; preds = %3487
  %3575 = trunc i64 %3417 to i32
  %3576 = trunc i64 %3440 to i32
  br label %3577

3577:                                             ; preds = %3574, %3571, %3390, %3371, %3501, %3497, %3494, %3492
  %3578 = phi ptr [ %3376, %3497 ], [ %3376, %3501 ], [ %3376, %3494 ], [ %3376, %3492 ], [ %3376, %3371 ], [ %3380, %3390 ], [ %3376, %3571 ], [ %3380, %3574 ]
  %3579 = phi i32 [ %3372, %3497 ], [ %3372, %3501 ], [ %3372, %3494 ], [ %3372, %3492 ], [ %3372, %3371 ], [ %3372, %3390 ], [ %3572, %3571 ], [ %3575, %3574 ]
  %3580 = phi i32 [ %3374, %3497 ], [ %3374, %3501 ], [ %3374, %3494 ], [ %3374, %3492 ], [ %3374, %3371 ], [ %3374, %3390 ], [ %3374, %3571 ], [ %3488, %3574 ]
  %3581 = phi i32 [ %3373, %3497 ], [ %3373, %3501 ], [ %3373, %3494 ], [ %3373, %3492 ], [ %3373, %3371 ], [ %3373, %3390 ], [ %3573, %3571 ], [ %3576, %3574 ]
  %3582 = getelementptr inbounds %struct.BoundVert, ptr %3375, i64 0, i32 1
  %3583 = load ptr, ptr %3582, align 8, !tbaa !176
  %3584 = load ptr, ptr %13, align 8
  %3585 = icmp eq ptr %3584, null
  %3586 = add nsw i32 %3579, 1
  %3587 = icmp ult i32 %3586, 33
  %3588 = select i1 %3585, i1 %3587, i1 false
  br i1 %3588, label %3589, label %3590

3589:                                             ; preds = %3577
  store ptr %16, ptr %13, align 8, !tbaa !113
  br label %3603

3590:                                             ; preds = %3577
  %3591 = icmp eq ptr %3584, %16
  %3592 = or i1 %3591, %3585
  %3593 = select i1 %3591, i64 32, i64 0
  br i1 %3592, label %3598, label %3594

3594:                                             ; preds = %3590
  %3595 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %3596 = call i64 %3595(ptr noundef nonnull %3584) #13
  %3597 = lshr i64 %3596, 3
  br label %3598

3598:                                             ; preds = %3594, %3590
  %3599 = phi i64 [ %3593, %3590 ], [ %3597, %3594 ]
  %3600 = sext i32 %3586 to i64
  %3601 = icmp ult i64 %3599, %3600
  br i1 %3601, label %3602, label %3603

3602:                                             ; preds = %3598
  call void @_bli_array_grow_func(ptr noundef nonnull %13, ptr noundef nonnull %16, i32 noundef 8, i32 noundef %3579, i32 noundef 1, ptr noundef nonnull @.str) #13
  br label %3603

3603:                                             ; preds = %3602, %3598, %3589
  %3604 = getelementptr inbounds %struct.BoundVert, ptr %3583, i64 0, i32 2
  %3605 = load ptr, ptr %3604, align 8, !tbaa !156
  %3606 = load ptr, ptr %13, align 8, !tbaa !113
  %3607 = sext i32 %3579 to i64
  %3608 = getelementptr inbounds ptr, ptr %3606, i64 %3607
  store ptr %3605, ptr %3608, align 8, !tbaa !113
  %3609 = load ptr, ptr %15, align 8
  %3610 = icmp eq ptr %3609, null
  %3611 = add nsw i32 %3581, 1
  %3612 = icmp ult i32 %3611, 33
  %3613 = select i1 %3610, i1 %3612, i1 false
  br i1 %3613, label %3614, label %3615

3614:                                             ; preds = %3603
  store ptr %18, ptr %15, align 8, !tbaa !113
  br label %3628

3615:                                             ; preds = %3603
  %3616 = icmp eq ptr %3609, %18
  %3617 = or i1 %3616, %3610
  %3618 = select i1 %3616, i64 32, i64 0
  br i1 %3617, label %3623, label %3619

3619:                                             ; preds = %3615
  %3620 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %3621 = call i64 %3620(ptr noundef nonnull %3609) #13
  %3622 = lshr i64 %3621, 3
  br label %3623

3623:                                             ; preds = %3619, %3615
  %3624 = phi i64 [ %3618, %3615 ], [ %3622, %3619 ]
  %3625 = sext i32 %3611 to i64
  %3626 = icmp ult i64 %3624, %3625
  br i1 %3626, label %3627, label %3628

3627:                                             ; preds = %3623
  call void @_bli_array_grow_func(ptr noundef nonnull %15, ptr noundef nonnull %18, i32 noundef 8, i32 noundef %3581, i32 noundef 1, ptr noundef nonnull @.str.2) #13
  br label %3628

3628:                                             ; preds = %3627, %3623, %3614
  %3629 = load ptr, ptr %15, align 8, !tbaa !113
  %3630 = sext i32 %3581 to i64
  %3631 = getelementptr inbounds ptr, ptr %3629, i64 %3630
  store ptr %3281, ptr %3631, align 8, !tbaa !113
  %3632 = add nsw i32 %3581, 1
  %3633 = add nsw i32 %3579, 1
  %3634 = icmp eq ptr %3583, %3311
  br i1 %3634, label %3685, label %3371, !llvm.loop !221

3635:                                             ; preds = %3253
  %3636 = load ptr, ptr %13, align 8
  %3637 = icmp eq ptr %3636, null
  %3638 = add nsw i32 %3256, 1
  %3639 = icmp ult i32 %3638, 33
  %3640 = select i1 %3637, i1 %3639, i1 false
  br i1 %3640, label %3641, label %3642

3641:                                             ; preds = %3635
  store ptr %16, ptr %13, align 8, !tbaa !113
  br label %3655

3642:                                             ; preds = %3635
  %3643 = icmp eq ptr %3636, %16
  %3644 = or i1 %3643, %3637
  %3645 = select i1 %3643, i64 32, i64 0
  br i1 %3644, label %3650, label %3646

3646:                                             ; preds = %3642
  %3647 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %3648 = call i64 %3647(ptr noundef nonnull %3636) #13
  %3649 = lshr i64 %3648, 3
  br label %3650

3650:                                             ; preds = %3646, %3642
  %3651 = phi i64 [ %3645, %3642 ], [ %3649, %3646 ]
  %3652 = sext i32 %3638 to i64
  %3653 = icmp ult i64 %3651, %3652
  br i1 %3653, label %3654, label %3655

3654:                                             ; preds = %3650
  call void @_bli_array_grow_func(ptr noundef nonnull %13, ptr noundef nonnull %16, i32 noundef 8, i32 noundef %3256, i32 noundef 1, ptr noundef nonnull @.str) #13
  br label %3655

3655:                                             ; preds = %3654, %3650, %3641
  %3656 = load ptr, ptr %3259, align 8, !tbaa !125
  %3657 = load ptr, ptr %13, align 8, !tbaa !113
  %3658 = sext i32 %3256 to i64
  %3659 = getelementptr inbounds ptr, ptr %3657, i64 %3658
  store ptr %3656, ptr %3659, align 8, !tbaa !113
  %3660 = load ptr, ptr %15, align 8
  %3661 = icmp eq ptr %3660, null
  %3662 = add nsw i32 %3254, 1
  %3663 = icmp ult i32 %3662, 33
  %3664 = select i1 %3661, i1 %3663, i1 false
  br i1 %3664, label %3665, label %3666

3665:                                             ; preds = %3655
  store ptr %18, ptr %15, align 8, !tbaa !113
  br label %3679

3666:                                             ; preds = %3655
  %3667 = icmp eq ptr %3660, %18
  %3668 = or i1 %3667, %3661
  %3669 = select i1 %3667, i64 32, i64 0
  br i1 %3668, label %3674, label %3670

3670:                                             ; preds = %3666
  %3671 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %3672 = call i64 %3671(ptr noundef nonnull %3660) #13
  %3673 = lshr i64 %3672, 3
  br label %3674

3674:                                             ; preds = %3670, %3666
  %3675 = phi i64 [ %3669, %3666 ], [ %3673, %3670 ]
  %3676 = sext i32 %3662 to i64
  %3677 = icmp ult i64 %3675, %3676
  br i1 %3677, label %3678, label %3679

3678:                                             ; preds = %3674
  call void @_bli_array_grow_func(ptr noundef nonnull %15, ptr noundef nonnull %18, i32 noundef 8, i32 noundef %3254, i32 noundef 1, ptr noundef nonnull @.str.2) #13
  br label %3679

3679:                                             ; preds = %3678, %3674, %3665
  %3680 = getelementptr inbounds %struct.BMLoop, ptr %3257, i64 0, i32 2
  %3681 = load ptr, ptr %3680, align 8, !tbaa !218
  %3682 = load ptr, ptr %15, align 8, !tbaa !113
  %3683 = sext i32 %3254 to i64
  %3684 = getelementptr inbounds ptr, ptr %3682, i64 %3683
  store ptr %3681, ptr %3684, align 8, !tbaa !113
  br label %3685

3685:                                             ; preds = %3628, %3358, %3679
  %3686 = phi i8 [ %3258, %3679 ], [ 1, %3358 ], [ 1, %3628 ]
  %3687 = phi i32 [ %3638, %3679 ], [ %3363, %3358 ], [ %3633, %3628 ]
  %3688 = phi i32 [ %3255, %3679 ], [ %3255, %3358 ], [ %3580, %3628 ]
  %3689 = phi i32 [ %3662, %3679 ], [ %3362, %3358 ], [ %3632, %3628 ]
  %3690 = load ptr, ptr %3233, align 8, !tbaa !64
  %3691 = call ptr %3690(ptr noundef nonnull %12) #13
  %3692 = icmp eq ptr %3691, null
  br i1 %3692, label %3693, label %3253, !llvm.loop !222

3693:                                             ; preds = %3685, %3246
  %3694 = phi i8 [ 0, %3246 ], [ %3686, %3685 ]
  %3695 = phi i32 [ 0, %3246 ], [ %3687, %3685 ]
  %3696 = phi i32 [ 0, %3246 ], [ %3688, %3685 ]
  %3697 = icmp eq i8 %3694, 0
  br i1 %3697, label %3788, label %3698

3698:                                             ; preds = %3693
  %3699 = load ptr, ptr %13, align 8, !tbaa !113
  %3700 = call fastcc ptr @bev_create_ngon(ptr noundef %0, ptr noundef %3699, i32 noundef %3695, ptr noundef null, ptr noundef %3249, i32 noundef -1, i8 noundef zeroext 1)
  %3701 = icmp sgt i32 %3696, 0
  br i1 %3701, label %3702, label %3711

3702:                                             ; preds = %3698
  %3703 = zext nneg i32 %3696 to i64
  br label %3704

3704:                                             ; preds = %3702, %3704
  %3705 = phi i64 [ 0, %3702 ], [ %3709, %3704 ]
  %3706 = load ptr, ptr %14, align 8, !tbaa !113
  %3707 = getelementptr inbounds ptr, ptr %3706, i64 %3705
  %3708 = load ptr, ptr %3707, align 8, !tbaa !113
  call fastcc void @bev_merge_uvs(ptr noundef %0, ptr noundef %3708)
  %3709 = add nuw nsw i64 %3705, 1
  %3710 = icmp eq i64 %3709, %3703
  br i1 %3710, label %3711, label %3704, !llvm.loop !223

3711:                                             ; preds = %3704, %3698
  %3712 = icmp sgt i32 %3695, 0
  br i1 %3712, label %3713, label %3782

3713:                                             ; preds = %3711
  %3714 = load ptr, ptr %15, align 8, !tbaa !113
  %3715 = add nsw i32 %3695, -1
  %3716 = sext i32 %3715 to i64
  %3717 = getelementptr inbounds ptr, ptr %3714, i64 %3716
  %3718 = load ptr, ptr %3717, align 8, !tbaa !113
  %3719 = sext i32 %3715 to i64
  %3720 = zext nneg i32 %3695 to i64
  %3721 = zext nneg i32 %3695 to i64
  br label %3722

3722:                                             ; preds = %3713, %3779
  %3723 = phi i64 [ 0, %3713 ], [ %3728, %3779 ]
  %3724 = phi ptr [ %3718, %3713 ], [ %3780, %3779 ]
  %3725 = load ptr, ptr %13, align 8, !tbaa !113
  %3726 = getelementptr inbounds ptr, ptr %3725, i64 %3723
  %3727 = load ptr, ptr %3726, align 8, !tbaa !113
  %3728 = add nuw nsw i64 %3723, 1
  %3729 = icmp eq i64 %3728, %3720
  %3730 = and i64 %3728, 4294967295
  %3731 = select i1 %3729, i64 0, i64 %3730
  %3732 = getelementptr inbounds ptr, ptr %3725, i64 %3731
  %3733 = load ptr, ptr %3732, align 8, !tbaa !113
  %3734 = call ptr @BM_edge_exists(ptr noundef %3727, ptr noundef %3733) #13
  %3735 = load ptr, ptr %15, align 8, !tbaa !113
  %3736 = getelementptr inbounds ptr, ptr %3735, i64 %3723
  %3737 = load ptr, ptr %3736, align 8, !tbaa !113
  %3738 = icmp eq ptr %3737, %3734
  br i1 %3738, label %3779, label %3739

3739:                                             ; preds = %3722
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %3737, ptr noundef %3734) #13
  %3740 = icmp slt i64 %3723, %3719
  br i1 %3740, label %3741, label %3775

3741:                                             ; preds = %3739
  %3742 = load ptr, ptr %15, align 8, !tbaa !113
  %3743 = getelementptr inbounds ptr, ptr %3742, i64 %3723
  %3744 = load ptr, ptr %3743, align 8, !tbaa !113
  %3745 = getelementptr inbounds ptr, ptr %3742, i64 %3728
  %3746 = load ptr, ptr %3745, align 8, !tbaa !113
  %3747 = icmp eq ptr %3744, %3746
  br i1 %3747, label %3748, label %3775

3748:                                             ; preds = %3741
  %3749 = getelementptr inbounds %struct.BMHeader, ptr %3744, i64 0, i32 3
  %3750 = load i8, ptr %3749, align 1, !tbaa !71
  %3751 = and i8 %3750, 4
  %3752 = icmp eq i8 %3751, 0
  br i1 %3752, label %3762, label %3753

3753:                                             ; preds = %3748
  %3754 = getelementptr inbounds %struct.BMHeader, ptr %3724, i64 0, i32 3
  %3755 = load i8, ptr %3754, align 1, !tbaa !71
  %3756 = and i8 %3755, 4
  %3757 = icmp eq i8 %3756, 0
  br i1 %3757, label %3758, label %3762

3758:                                             ; preds = %3753
  %3759 = getelementptr inbounds %struct.BMHeader, ptr %3734, i64 0, i32 3
  %3760 = load i8, ptr %3759, align 1, !tbaa !71
  %3761 = and i8 %3760, -5
  store i8 %3761, ptr %3759, align 1, !tbaa !71
  br label %3762

3762:                                             ; preds = %3758, %3753, %3748
  %3763 = load i8, ptr %3749, align 1, !tbaa !71
  %3764 = and i8 %3763, 8
  %3765 = icmp eq i8 %3764, 0
  br i1 %3765, label %3766, label %3779

3766:                                             ; preds = %3762
  %3767 = getelementptr inbounds %struct.BMHeader, ptr %3724, i64 0, i32 3
  %3768 = load i8, ptr %3767, align 1, !tbaa !71
  %3769 = and i8 %3768, 8
  %3770 = icmp eq i8 %3769, 0
  br i1 %3770, label %3779, label %3771

3771:                                             ; preds = %3766
  %3772 = getelementptr inbounds %struct.BMHeader, ptr %3734, i64 0, i32 3
  %3773 = load i8, ptr %3772, align 1, !tbaa !71
  %3774 = or i8 %3773, 8
  store i8 %3774, ptr %3772, align 1, !tbaa !71
  br label %3779

3775:                                             ; preds = %3741, %3739
  %3776 = load ptr, ptr %15, align 8, !tbaa !113
  %3777 = getelementptr inbounds ptr, ptr %3776, i64 %3723
  %3778 = load ptr, ptr %3777, align 8, !tbaa !113
  br label %3779

3779:                                             ; preds = %3775, %3771, %3766, %3762, %3722
  %3780 = phi ptr [ %3724, %3762 ], [ %3724, %3771 ], [ %3724, %3766 ], [ %3778, %3775 ], [ %3724, %3722 ]
  %3781 = icmp eq i64 %3728, %3721
  br i1 %3781, label %3782, label %3722, !llvm.loop !224

3782:                                             ; preds = %3779, %3711
  %3783 = icmp eq ptr %3700, null
  br i1 %3783, label %3788, label %3784

3784:                                             ; preds = %3782
  %3785 = getelementptr inbounds %struct.BMHeader, ptr %3700, i64 0, i32 3
  %3786 = load i8, ptr %3785, align 1, !tbaa !71
  %3787 = and i8 %3786, -17
  store i8 %3787, ptr %3785, align 1, !tbaa !71
  br label %3788

3788:                                             ; preds = %3784, %3782, %3693
  %3789 = load ptr, ptr %13, align 8
  %3790 = icmp ne ptr %3789, null
  %3791 = icmp ne ptr %3789, %16
  %3792 = and i1 %3790, %3791
  br i1 %3792, label %3793, label %3795

3793:                                             ; preds = %3788
  %3794 = load ptr, ptr @MEM_freeN, align 8, !tbaa !113
  call void %3794(ptr noundef nonnull %3789) #13
  br label %3795

3795:                                             ; preds = %3793, %3788
  %3796 = load ptr, ptr %14, align 8
  %3797 = icmp ne ptr %3796, null
  %3798 = icmp ne ptr %3796, %17
  %3799 = and i1 %3797, %3798
  br i1 %3799, label %3800, label %3802

3800:                                             ; preds = %3795
  %3801 = load ptr, ptr @MEM_freeN, align 8, !tbaa !113
  call void %3801(ptr noundef nonnull %3796) #13
  br label %3802

3802:                                             ; preds = %3800, %3795
  %3803 = load ptr, ptr %15, align 8
  %3804 = icmp ne ptr %3803, null
  %3805 = icmp ne ptr %3803, %18
  %3806 = and i1 %3804, %3805
  br i1 %3806, label %3807, label %3809

3807:                                             ; preds = %3802
  %3808 = load ptr, ptr @MEM_freeN, align 8, !tbaa !113
  call void %3808(ptr noundef nonnull %3803) #13
  br label %3809

3809:                                             ; preds = %3807, %3802
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %17) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #13
  br i1 %3697, label %3811, label %3810

3810:                                             ; preds = %3809
  call void @BM_face_kill(ptr noundef %0, ptr noundef %3249) #13
  br label %3811

3811:                                             ; preds = %3810, %3809
  %3812 = add nuw nsw i64 %3247, 1
  %3813 = load i32, ptr %20, align 4, !tbaa !114
  %3814 = sext i32 %3813 to i64
  %3815 = icmp slt i64 %3812, %3814
  br i1 %3815, label %3246, label %3816, !llvm.loop !225

3816:                                             ; preds = %3811, %3243
  %3817 = icmp eq ptr %3241, %19
  br i1 %3817, label %3820, label %3818

3818:                                             ; preds = %3816
  %3819 = load ptr, ptr @MEM_freeN, align 8, !tbaa !113
  call void %3819(ptr noundef nonnull %3241) #13
  br label %3820

3820:                                             ; preds = %3240, %3816, %3818
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %19) #13
  %3821 = load ptr, ptr %61, align 8, !tbaa !52
  %3822 = call ptr @BLI_ghash_lookup(ptr noundef %3821, ptr noundef nonnull %3235) #13
  %3823 = icmp eq ptr %3822, null
  br i1 %3823, label %3951, label %3824

3824:                                             ; preds = %3820
  %3825 = getelementptr inbounds %struct.BevVert, ptr %3822, i64 0, i32 3
  %3826 = load i32, ptr %3825, align 8, !tbaa !89
  %3827 = icmp eq i32 %3826, 0
  br i1 %3827, label %3951, label %3828

3828:                                             ; preds = %3824
  %3829 = getelementptr inbounds %struct.BevVert, ptr %3822, i64 0, i32 9
  %3830 = load ptr, ptr %3829, align 8, !tbaa !93
  %3831 = icmp eq ptr %3830, null
  br i1 %3831, label %3951, label %3832

3832:                                             ; preds = %3828
  %3833 = load i32, ptr %3825, align 8, !tbaa !89
  %3834 = icmp sgt i32 %3833, 0
  br i1 %3834, label %3835, label %3951

3835:                                             ; preds = %3832
  %3836 = getelementptr inbounds %struct.BevVert, ptr %3822, i64 0, i32 8
  br label %3837

3837:                                             ; preds = %3835, %3946
  %3838 = phi i64 [ 0, %3835 ], [ %3947, %3946 ]
  %3839 = load ptr, ptr %3836, align 8, !tbaa !92
  %3840 = getelementptr inbounds ptr, ptr %3839, i64 %3838
  %3841 = load ptr, ptr %3840, align 8, !tbaa !113
  %3842 = getelementptr inbounds %struct.BMEdge, ptr %3841, i64 0, i32 2
  %3843 = load ptr, ptr %3842, align 8, !tbaa !73
  %3844 = icmp eq ptr %3843, %3235
  %3845 = getelementptr inbounds %struct.BMEdge, ptr %3841, i64 0, i32 3
  %3846 = load ptr, ptr %3845, align 8, !tbaa !76
  %3847 = icmp eq ptr %3846, %3235
  %3848 = select i1 %3847, ptr %3843, ptr null
  %3849 = select i1 %3844, ptr %3846, ptr %3848
  %3850 = getelementptr inbounds %struct.BMHeader, ptr %3849, i64 0, i32 3
  %3851 = load i8, ptr %3850, align 1, !tbaa !71
  %3852 = and i8 %3851, 16
  %3853 = icmp eq i8 %3852, 0
  br i1 %3853, label %3862, label %3854

3854:                                             ; preds = %3837
  %3855 = load ptr, ptr %61, align 8, !tbaa !52
  %3856 = call ptr @BLI_ghash_lookup(ptr noundef %3855, ptr noundef %3849) #13
  %3857 = icmp eq ptr %3856, null
  br i1 %3857, label %3951, label %3858

3858:                                             ; preds = %3854
  %3859 = getelementptr inbounds %struct.BevVert, ptr %3856, i64 0, i32 9
  %3860 = load ptr, ptr %3859, align 8, !tbaa !93
  %3861 = icmp eq ptr %3860, null
  br i1 %3861, label %3951, label %3862

3862:                                             ; preds = %3858, %3837
  %3863 = phi ptr [ %3856, %3858 ], [ null, %3837 ]
  %3864 = load ptr, ptr %3829, align 8, !tbaa !93
  %3865 = getelementptr inbounds %struct.VMesh, ptr %3864, i64 0, i32 1
  %3866 = load ptr, ptr %3865, align 8, !tbaa !150
  %3867 = icmp eq ptr %3863, null
  %3868 = getelementptr inbounds %struct.BevVert, ptr %3863, i64 0, i32 9
  %3869 = getelementptr inbounds %struct.BMVert, ptr %3849, i64 0, i32 2
  %3870 = getelementptr inbounds %struct.BMVert, ptr %3849, i64 0, i32 2, i64 1
  %3871 = getelementptr inbounds %struct.BMVert, ptr %3849, i64 0, i32 2, i64 2
  br label %3872

3872:                                             ; preds = %3936, %3862
  %3873 = phi ptr [ null, %3862 ], [ %3937, %3936 ]
  %3874 = phi ptr [ null, %3862 ], [ %3938, %3936 ]
  %3875 = phi ptr [ %3866, %3862 ], [ %3940, %3936 ]
  %3876 = phi float [ 0x47EFFFFFE0000000, %3862 ], [ %3939, %3936 ]
  br i1 %3867, label %3916, label %3877

3877:                                             ; preds = %3872
  %3878 = load ptr, ptr %3868, align 8, !tbaa !93
  %3879 = getelementptr inbounds %struct.VMesh, ptr %3878, i64 0, i32 1
  %3880 = load ptr, ptr %3879, align 8, !tbaa !150
  %3881 = getelementptr inbounds %struct.BoundVert, ptr %3875, i64 0, i32 2, i32 1
  %3882 = load float, ptr %3881, align 4, !tbaa !115
  %3883 = getelementptr inbounds %struct.BoundVert, ptr %3875, i64 0, i32 2, i32 1, i64 1
  %3884 = load float, ptr %3883, align 4, !tbaa !115
  %3885 = getelementptr inbounds %struct.BoundVert, ptr %3875, i64 0, i32 2, i32 1, i64 2
  %3886 = load float, ptr %3885, align 4, !tbaa !115
  %3887 = getelementptr inbounds %struct.BoundVert, ptr %3875, i64 0, i32 2
  br label %3888

3888:                                             ; preds = %3910, %3877
  %3889 = phi ptr [ %3873, %3877 ], [ %3911, %3910 ]
  %3890 = phi ptr [ %3874, %3877 ], [ %3912, %3910 ]
  %3891 = phi ptr [ %3880, %3877 ], [ %3914, %3910 ]
  %3892 = phi float [ %3876, %3877 ], [ %3913, %3910 ]
  %3893 = getelementptr inbounds %struct.BoundVert, ptr %3891, i64 0, i32 2, i32 1
  %3894 = load float, ptr %3893, align 4, !tbaa !115
  %3895 = fsub float %3882, %3894
  %3896 = getelementptr inbounds %struct.BoundVert, ptr %3891, i64 0, i32 2, i32 1, i64 1
  %3897 = load float, ptr %3896, align 4, !tbaa !115
  %3898 = fsub float %3884, %3897
  %3899 = getelementptr inbounds %struct.BoundVert, ptr %3891, i64 0, i32 2, i32 1, i64 2
  %3900 = load float, ptr %3899, align 4, !tbaa !115
  %3901 = fsub float %3886, %3900
  %3902 = fmul float %3898, %3898
  %3903 = call float @llvm.fmuladd.f32(float %3895, float %3895, float %3902)
  %3904 = call float @llvm.fmuladd.f32(float %3901, float %3901, float %3903)
  %3905 = fcmp olt float %3904, %3892
  br i1 %3905, label %3906, label %3910

3906:                                             ; preds = %3888
  %3907 = getelementptr inbounds %struct.BoundVert, ptr %3891, i64 0, i32 2
  %3908 = load ptr, ptr %3887, align 8, !tbaa !156
  %3909 = load ptr, ptr %3907, align 8, !tbaa !156
  br label %3910

3910:                                             ; preds = %3906, %3888
  %3911 = phi ptr [ %3909, %3906 ], [ %3889, %3888 ]
  %3912 = phi ptr [ %3908, %3906 ], [ %3890, %3888 ]
  %3913 = phi float [ %3904, %3906 ], [ %3892, %3888 ]
  %3914 = load ptr, ptr %3891, align 8, !tbaa !158
  %3915 = icmp eq ptr %3914, %3880
  br i1 %3915, label %3936, label %3888, !llvm.loop !226

3916:                                             ; preds = %3872
  %3917 = getelementptr inbounds %struct.BoundVert, ptr %3875, i64 0, i32 2, i32 1
  %3918 = load float, ptr %3917, align 4, !tbaa !115
  %3919 = load float, ptr %3869, align 4, !tbaa !115
  %3920 = fsub float %3918, %3919
  %3921 = getelementptr inbounds %struct.BoundVert, ptr %3875, i64 0, i32 2, i32 1, i64 1
  %3922 = load float, ptr %3921, align 4, !tbaa !115
  %3923 = load float, ptr %3870, align 4, !tbaa !115
  %3924 = fsub float %3922, %3923
  %3925 = getelementptr inbounds %struct.BoundVert, ptr %3875, i64 0, i32 2, i32 1, i64 2
  %3926 = load float, ptr %3925, align 4, !tbaa !115
  %3927 = load float, ptr %3871, align 4, !tbaa !115
  %3928 = fsub float %3926, %3927
  %3929 = fmul float %3924, %3924
  %3930 = call float @llvm.fmuladd.f32(float %3920, float %3920, float %3929)
  %3931 = call float @llvm.fmuladd.f32(float %3928, float %3928, float %3930)
  %3932 = fcmp olt float %3931, %3876
  br i1 %3932, label %3933, label %3936

3933:                                             ; preds = %3916
  %3934 = getelementptr inbounds %struct.BoundVert, ptr %3875, i64 0, i32 2
  %3935 = load ptr, ptr %3934, align 8, !tbaa !156
  br label %3936

3936:                                             ; preds = %3910, %3933, %3916
  %3937 = phi ptr [ %3849, %3933 ], [ %3873, %3916 ], [ %3911, %3910 ]
  %3938 = phi ptr [ %3935, %3933 ], [ %3874, %3916 ], [ %3912, %3910 ]
  %3939 = phi float [ %3931, %3933 ], [ %3876, %3916 ], [ %3913, %3910 ]
  %3940 = load ptr, ptr %3875, align 8, !tbaa !158
  %3941 = icmp eq ptr %3940, %3866
  br i1 %3941, label %3942, label %3872, !llvm.loop !227

3942:                                             ; preds = %3936
  %3943 = icmp eq ptr %3938, null
  br i1 %3943, label %3946, label %3944

3944:                                             ; preds = %3942
  %3945 = call ptr @BM_edge_create(ptr noundef %0, ptr noundef nonnull %3938, ptr noundef %3937, ptr noundef %3841, i32 noundef 2) #13
  br label %3946

3946:                                             ; preds = %3944, %3942
  %3947 = add nuw nsw i64 %3838, 1
  %3948 = load i32, ptr %3825, align 8, !tbaa !89
  %3949 = sext i32 %3948 to i64
  %3950 = icmp slt i64 %3947, %3949
  br i1 %3950, label %3837, label %3951, !llvm.loop !228

3951:                                             ; preds = %3946, %3854, %3858, %3832, %3828, %3824, %3820, %3234
  %3952 = load ptr, ptr %204, align 8, !tbaa !64
  %3953 = call ptr %3952(ptr noundef nonnull %60) #13
  %3954 = icmp eq ptr %3953, null
  br i1 %3954, label %3955, label %3234, !llvm.loop !229

3955:                                             ; preds = %3951, %3225
  store i8 1, ptr %202, align 4, !tbaa !61
  store ptr @bmiter__elem_of_mesh_begin, ptr %203, align 8, !tbaa !63
  store ptr @bmiter__elem_of_mesh_step, ptr %204, align 8, !tbaa !64
  %3956 = load ptr, ptr %205, align 8, !tbaa !65
  store ptr %3956, ptr %60, align 8, !tbaa !70
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %60) #13
  %3957 = load ptr, ptr %204, align 8, !tbaa !64
  %3958 = call ptr %3957(ptr noundef nonnull %60) #13
  br label %3959

3959:                                             ; preds = %3973, %3955
  %3960 = phi ptr [ %3958, %3955 ], [ %3967, %3973 ]
  %3961 = phi ptr [ undef, %3955 ], [ %3967, %3973 ]
  %3962 = icmp eq ptr %3960, null
  br i1 %3962, label %3966, label %3963

3963:                                             ; preds = %3959
  %3964 = load ptr, ptr %204, align 8, !tbaa !64
  %3965 = call ptr %3964(ptr noundef nonnull %60) #13
  br label %3966

3966:                                             ; preds = %3959, %3963
  %3967 = phi ptr [ %3965, %3963 ], [ %3961, %3959 ]
  br i1 %3962, label %3975, label %3968

3968:                                             ; preds = %3966
  %3969 = getelementptr inbounds %struct.BMHeader, ptr %3960, i64 0, i32 3
  %3970 = load i8, ptr %3969, align 1, !tbaa !71
  %3971 = and i8 %3970, 16
  %3972 = icmp eq i8 %3971, 0
  br i1 %3972, label %3973, label %3974

3973:                                             ; preds = %3968, %3974
  br label %3959, !llvm.loop !230

3974:                                             ; preds = %3968
  call void @BM_vert_kill(ptr noundef %0, ptr noundef nonnull %3960) #13
  br label %3973

3975:                                             ; preds = %3966
  %3976 = load ptr, ptr %61, align 8, !tbaa !52
  call void @BLI_ghash_free(ptr noundef %3976, ptr noundef null, ptr noundef null) #13
  %3977 = load ptr, ptr %82, align 8, !tbaa !53
  call void @BLI_memarena_free(ptr noundef %3977) #13
  br label %3978

3978:                                             ; preds = %3975, %77
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %61) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %60) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_memarena_use_calloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @build_boundary(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  %14 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 7
  %17 = load i8, ptr %16, align 8, !tbaa !45
  %18 = icmp eq i8 %17, 0
  %19 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !91
  br i1 %18, label %21, label %99

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !87
  %24 = sext i32 %23 to i64
  %25 = getelementptr %struct.EdgeHalf, ptr %20, i64 %24
  %26 = getelementptr %struct.EdgeHalf, ptr %25, i64 -1
  br label %27

27:                                               ; preds = %32, %21
  %28 = phi ptr [ %26, %21 ], [ %33, %32 ]
  %29 = getelementptr inbounds %struct.EdgeHalf, ptr %28, i64 0, i32 12
  %30 = load i8, ptr %29, align 4, !tbaa !103
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !117
  %34 = icmp eq ptr %33, %26
  br i1 %34, label %35, label %27, !llvm.loop !208

35:                                               ; preds = %27, %32
  %36 = phi ptr [ %28, %27 ], [ null, %32 ]
  %37 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 4
  br label %38

38:                                               ; preds = %93, %35
  %39 = phi ptr [ %36, %35 ], [ %97, %93 ]
  %40 = getelementptr inbounds %struct.EdgeHalf, ptr %39, i64 0, i32 13
  %41 = load i8, ptr %40, align 1, !tbaa !105
  %42 = icmp eq i8 %41, 0
  %43 = getelementptr inbounds %struct.EdgeHalf, ptr %39, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !97
  %45 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 2
  %46 = getelementptr inbounds %struct.BMEdge, ptr %44, i64 0, i32 3
  %47 = select i1 %42, ptr %46, ptr %45
  %48 = load ptr, ptr %47, align 8, !tbaa !113
  %49 = load ptr, ptr %0, align 8, !tbaa !52
  %50 = tail call ptr @BLI_ghash_lookup(ptr noundef %49, ptr noundef %48) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %72, label %52

52:                                               ; preds = %38
  %53 = getelementptr inbounds %struct.EdgeHalf, ptr %39, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !97
  %55 = getelementptr inbounds %struct.BevVert, ptr %50, i64 0, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !87
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.BevVert, ptr %50, i64 0, i32 7
  %60 = load ptr, ptr %59, align 8, !tbaa !91
  %61 = zext nneg i32 %56 to i64
  br label %65

62:                                               ; preds = %65
  %63 = add nuw nsw i64 %66, 1
  %64 = icmp eq i64 %63, %61
  br i1 %64, label %72, label %65, !llvm.loop !146

65:                                               ; preds = %62, %58
  %66 = phi i64 [ 0, %58 ], [ %63, %62 ]
  %67 = getelementptr inbounds %struct.EdgeHalf, ptr %60, i64 %66, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !97
  %69 = icmp eq ptr %68, %54
  br i1 %69, label %70, label %62

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.EdgeHalf, ptr %60, i64 %66
  br label %72

72:                                               ; preds = %62, %38, %52, %70
  %73 = phi ptr [ %50, %70 ], [ %50, %52 ], [ null, %38 ], [ %50, %62 ]
  %74 = phi ptr [ %71, %70 ], [ null, %52 ], [ null, %38 ], [ null, %62 ]
  %75 = icmp eq ptr %74, null
  br i1 %75, label %88, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.BevVert, ptr %73, i64 0, i32 6
  %78 = load i8, ptr %77, align 1, !tbaa !140
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = load i32, ptr %37, align 4, !tbaa !42
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %88, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.EdgeHalf, ptr %74, i64 0, i32 9
  %85 = load float, ptr %84, align 8, !tbaa !122
  %86 = getelementptr inbounds %struct.EdgeHalf, ptr %39, i64 0, i32 8
  store float %85, ptr %86, align 4, !tbaa !121
  %87 = getelementptr inbounds %struct.EdgeHalf, ptr %74, i64 0, i32 8
  br label %93

88:                                               ; preds = %80, %76, %72
  %89 = getelementptr inbounds %struct.EdgeHalf, ptr %39, i64 0, i32 10
  %90 = load float, ptr %89, align 4, !tbaa !119
  %91 = getelementptr inbounds %struct.EdgeHalf, ptr %39, i64 0, i32 8
  store float %90, ptr %91, align 4, !tbaa !121
  %92 = getelementptr inbounds %struct.EdgeHalf, ptr %39, i64 0, i32 11
  br label %93

93:                                               ; preds = %83, %88
  %94 = phi ptr [ %87, %83 ], [ %92, %88 ]
  %95 = load float, ptr %94, align 4, !tbaa !115
  %96 = getelementptr inbounds %struct.EdgeHalf, ptr %39, i64 0, i32 9
  store float %95, ptr %96, align 8, !tbaa !122
  %97 = load ptr, ptr %39, align 8, !tbaa !117
  %98 = icmp eq ptr %97, %36
  br i1 %98, label %99, label %38, !llvm.loop !231

99:                                               ; preds = %93, %3
  %100 = phi ptr [ %20, %3 ], [ %36, %93 ]
  %101 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !87
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %357

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !88
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %357

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.EdgeHalf, ptr %100, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !101
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.BMFace, ptr %110, i64 0, i32 4
  br label %120

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.EdgeHalf, ptr %100, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !102
  %117 = icmp eq ptr %116, null
  %118 = getelementptr inbounds %struct.BMFace, ptr %116, i64 0, i32 4
  %119 = select i1 %117, ptr null, ptr %118
  br label %120

120:                                              ; preds = %114, %112
  %121 = phi ptr [ %113, %112 ], [ %119, %114 ]
  call fastcc void @offset_in_plane(ptr noundef %100, ptr noundef %121, i8 noundef zeroext 1, ptr noundef nonnull %11)
  %122 = icmp eq i8 %2, 0
  br i1 %122, label %158, label %123

123:                                              ; preds = %120
  %124 = tail call ptr @BLI_memarena_alloc(ptr noundef %13, i64 noundef 176) #13
  %125 = getelementptr inbounds %struct.BoundVert, ptr %124, i64 0, i32 2, i32 1
  %126 = load float, ptr %11, align 4, !tbaa !115
  store float %126, ptr %125, align 4, !tbaa !115
  %127 = getelementptr inbounds float, ptr %11, i64 1
  %128 = load float, ptr %127, align 4, !tbaa !115
  %129 = getelementptr inbounds %struct.BoundVert, ptr %124, i64 0, i32 2, i32 1, i64 1
  store float %128, ptr %129, align 4, !tbaa !115
  %130 = getelementptr inbounds float, ptr %11, i64 2
  %131 = load float, ptr %130, align 4, !tbaa !115
  %132 = getelementptr inbounds %struct.BoundVert, ptr %124, i64 0, i32 2, i32 1, i64 2
  store float %131, ptr %132, align 4, !tbaa !115
  %133 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !150
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %123
  %137 = getelementptr inbounds %struct.BoundVert, ptr %124, i64 0, i32 6
  store i32 0, ptr %137, align 8, !tbaa !151
  store ptr %124, ptr %133, align 8, !tbaa !150
  %138 = getelementptr inbounds %struct.BoundVert, ptr %124, i64 0, i32 1
  br label %147

139:                                              ; preds = %123
  %140 = getelementptr inbounds %struct.BoundVert, ptr %134, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !176
  %142 = getelementptr inbounds %struct.BoundVert, ptr %141, i64 0, i32 6
  %143 = load i32, ptr %142, align 8, !tbaa !151
  %144 = add nsw i32 %143, 1
  %145 = getelementptr inbounds %struct.BoundVert, ptr %124, i64 0, i32 6
  store i32 %144, ptr %145, align 8, !tbaa !151
  %146 = getelementptr inbounds %struct.BoundVert, ptr %124, i64 0, i32 1
  store ptr %141, ptr %146, align 8, !tbaa !176
  store ptr %134, ptr %124, align 8, !tbaa !158
  br label %147

147:                                              ; preds = %136, %139
  %148 = phi ptr [ %138, %136 ], [ %141, %139 ]
  %149 = phi ptr [ %124, %136 ], [ %140, %139 ]
  store ptr %124, ptr %148, align 8, !tbaa !113
  store ptr %124, ptr %149, align 8, !tbaa !113
  %150 = getelementptr inbounds %struct.BoundVert, ptr %124, i64 0, i32 7
  store float 1.000000e+00, ptr %150, align 8, !tbaa !165
  %151 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !148
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %151, align 8, !tbaa !148
  %154 = getelementptr inbounds %struct.BoundVert, ptr %124, i64 0, i32 5
  store ptr %100, ptr %154, align 8, !tbaa !157
  %155 = getelementptr inbounds %struct.BoundVert, ptr %124, i64 0, i32 4
  store ptr %100, ptr %155, align 8, !tbaa !194
  %156 = getelementptr inbounds %struct.BoundVert, ptr %124, i64 0, i32 3
  store ptr %100, ptr %156, align 8, !tbaa !193
  %157 = getelementptr inbounds %struct.EdgeHalf, ptr %100, i64 0, i32 5
  store ptr %124, ptr %157, align 8, !tbaa !210
  br label %169

158:                                              ; preds = %120
  %159 = getelementptr inbounds %struct.EdgeHalf, ptr %100, i64 0, i32 5
  %160 = load ptr, ptr %159, align 8, !tbaa !210
  %161 = getelementptr inbounds %struct.BoundVert, ptr %160, i64 0, i32 2, i32 1
  %162 = load float, ptr %11, align 4, !tbaa !115
  store float %162, ptr %161, align 4, !tbaa !115
  %163 = getelementptr inbounds float, ptr %11, i64 1
  %164 = load float, ptr %163, align 4, !tbaa !115
  %165 = getelementptr inbounds %struct.BoundVert, ptr %160, i64 0, i32 2, i32 1, i64 1
  store float %164, ptr %165, align 4, !tbaa !115
  %166 = getelementptr inbounds float, ptr %11, i64 2
  %167 = load float, ptr %166, align 4, !tbaa !115
  %168 = getelementptr inbounds %struct.BoundVert, ptr %160, i64 0, i32 2, i32 1, i64 2
  store float %167, ptr %168, align 4, !tbaa !115
  br label %169

169:                                              ; preds = %158, %147
  %170 = getelementptr inbounds %struct.EdgeHalf, ptr %100, i64 0, i32 4
  %171 = load ptr, ptr %170, align 8, !tbaa !102
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.BMFace, ptr %171, i64 0, i32 4
  br label %180

175:                                              ; preds = %169
  %176 = load ptr, ptr %109, align 8, !tbaa !101
  %177 = icmp eq ptr %176, null
  %178 = getelementptr inbounds %struct.BMFace, ptr %176, i64 0, i32 4
  %179 = select i1 %177, ptr null, ptr %178
  br label %180

180:                                              ; preds = %175, %173
  %181 = phi ptr [ %174, %173 ], [ %179, %175 ]
  call fastcc void @offset_in_plane(ptr noundef %100, ptr noundef %181, i8 noundef zeroext 0, ptr noundef nonnull %11)
  br i1 %122, label %216, label %182

182:                                              ; preds = %180
  %183 = tail call ptr @BLI_memarena_alloc(ptr noundef %13, i64 noundef 176) #13
  %184 = getelementptr inbounds %struct.BoundVert, ptr %183, i64 0, i32 2, i32 1
  %185 = load float, ptr %11, align 4, !tbaa !115
  store float %185, ptr %184, align 4, !tbaa !115
  %186 = getelementptr inbounds float, ptr %11, i64 1
  %187 = load float, ptr %186, align 4, !tbaa !115
  %188 = getelementptr inbounds %struct.BoundVert, ptr %183, i64 0, i32 2, i32 1, i64 1
  store float %187, ptr %188, align 4, !tbaa !115
  %189 = getelementptr inbounds float, ptr %11, i64 2
  %190 = load float, ptr %189, align 4, !tbaa !115
  %191 = getelementptr inbounds %struct.BoundVert, ptr %183, i64 0, i32 2, i32 1, i64 2
  store float %190, ptr %191, align 4, !tbaa !115
  %192 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !150
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %182
  %196 = getelementptr inbounds %struct.BoundVert, ptr %183, i64 0, i32 6
  store i32 0, ptr %196, align 8, !tbaa !151
  store ptr %183, ptr %192, align 8, !tbaa !150
  %197 = getelementptr inbounds %struct.BoundVert, ptr %183, i64 0, i32 1
  br label %206

198:                                              ; preds = %182
  %199 = getelementptr inbounds %struct.BoundVert, ptr %193, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !176
  %201 = getelementptr inbounds %struct.BoundVert, ptr %200, i64 0, i32 6
  %202 = load i32, ptr %201, align 8, !tbaa !151
  %203 = add nsw i32 %202, 1
  %204 = getelementptr inbounds %struct.BoundVert, ptr %183, i64 0, i32 6
  store i32 %203, ptr %204, align 8, !tbaa !151
  %205 = getelementptr inbounds %struct.BoundVert, ptr %183, i64 0, i32 1
  store ptr %200, ptr %205, align 8, !tbaa !176
  store ptr %193, ptr %183, align 8, !tbaa !158
  br label %206

206:                                              ; preds = %195, %198
  %207 = phi ptr [ %197, %195 ], [ %200, %198 ]
  %208 = phi ptr [ %183, %195 ], [ %199, %198 ]
  store ptr %183, ptr %207, align 8, !tbaa !113
  store ptr %183, ptr %208, align 8, !tbaa !113
  %209 = getelementptr inbounds %struct.BoundVert, ptr %183, i64 0, i32 7
  store float 1.000000e+00, ptr %209, align 8, !tbaa !165
  %210 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 2
  %211 = load i32, ptr %210, align 8, !tbaa !148
  %212 = add nsw i32 %211, 1
  store i32 %212, ptr %210, align 8, !tbaa !148
  %213 = getelementptr inbounds %struct.BoundVert, ptr %183, i64 0, i32 4
  store ptr %100, ptr %213, align 8, !tbaa !194
  %214 = getelementptr inbounds %struct.BoundVert, ptr %183, i64 0, i32 3
  store ptr %100, ptr %214, align 8, !tbaa !193
  %215 = getelementptr inbounds %struct.EdgeHalf, ptr %100, i64 0, i32 6
  store ptr %183, ptr %215, align 8, !tbaa !209
  br label %227

216:                                              ; preds = %180
  %217 = getelementptr inbounds %struct.EdgeHalf, ptr %100, i64 0, i32 6
  %218 = load ptr, ptr %217, align 8, !tbaa !209
  %219 = getelementptr inbounds %struct.BoundVert, ptr %218, i64 0, i32 2, i32 1
  %220 = load float, ptr %11, align 4, !tbaa !115
  store float %220, ptr %219, align 4, !tbaa !115
  %221 = getelementptr inbounds float, ptr %11, i64 1
  %222 = load float, ptr %221, align 4, !tbaa !115
  %223 = getelementptr inbounds %struct.BoundVert, ptr %218, i64 0, i32 2, i32 1, i64 1
  store float %222, ptr %223, align 4, !tbaa !115
  %224 = getelementptr inbounds float, ptr %11, i64 2
  %225 = load float, ptr %224, align 4, !tbaa !115
  %226 = getelementptr inbounds %struct.BoundVert, ptr %218, i64 0, i32 2, i32 1, i64 2
  store float %225, ptr %226, align 4, !tbaa !115
  br label %227

227:                                              ; preds = %216, %206
  %228 = load ptr, ptr %100, align 8, !tbaa !117
  %229 = load ptr, ptr %1, align 8, !tbaa !85
  %230 = getelementptr inbounds %struct.EdgeHalf, ptr %100, i64 0, i32 8
  %231 = load float, ptr %230, align 4, !tbaa !121
  %232 = getelementptr inbounds %struct.BMVert, ptr %229, i64 0, i32 2
  %233 = getelementptr inbounds %struct.EdgeHalf, ptr %228, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !97
  %235 = getelementptr inbounds %struct.BMEdge, ptr %234, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !73
  %237 = icmp eq ptr %236, %229
  %238 = getelementptr inbounds %struct.BMEdge, ptr %234, i64 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !76
  %240 = icmp eq ptr %239, %229
  %241 = select i1 %240, ptr %236, ptr null
  %242 = select i1 %237, ptr %239, ptr %241
  %243 = getelementptr inbounds %struct.BMVert, ptr %242, i64 0, i32 2
  %244 = load float, ptr %232, align 4, !tbaa !115
  %245 = load float, ptr %243, align 4, !tbaa !115
  %246 = fsub float %244, %245
  %247 = getelementptr inbounds %struct.BMVert, ptr %229, i64 0, i32 2, i64 1
  %248 = load float, ptr %247, align 4, !tbaa !115
  %249 = getelementptr inbounds %struct.BMVert, ptr %242, i64 0, i32 2, i64 1
  %250 = load float, ptr %249, align 4, !tbaa !115
  %251 = fsub float %248, %250
  %252 = getelementptr inbounds %struct.BMVert, ptr %229, i64 0, i32 2, i64 2
  %253 = load float, ptr %252, align 4, !tbaa !115
  %254 = getelementptr inbounds %struct.BMVert, ptr %242, i64 0, i32 2, i64 2
  %255 = load float, ptr %254, align 4, !tbaa !115
  %256 = fsub float %253, %255
  %257 = fmul float %251, %251
  %258 = tail call float @llvm.fmuladd.f32(float %246, float %246, float %257)
  %259 = tail call float @llvm.fmuladd.f32(float %256, float %256, float %258)
  %260 = fcmp ogt float %259, 0x38AA95A5C0000000
  br i1 %260, label %261, label %267

261:                                              ; preds = %227
  %262 = tail call float @sqrtf(float noundef %259) #13
  %263 = fdiv float 1.000000e+00, %262
  %264 = fmul float %246, %263
  %265 = fmul float %251, %263
  %266 = fmul float %256, %263
  br label %267

267:                                              ; preds = %227, %261
  %268 = phi float [ %265, %261 ], [ 0.000000e+00, %227 ]
  %269 = phi float [ %264, %261 ], [ 0.000000e+00, %227 ]
  %270 = phi float [ %266, %261 ], [ 0.000000e+00, %227 ]
  %271 = phi float [ %262, %261 ], [ 0.000000e+00, %227 ]
  %272 = fcmp olt float %271, %231
  %273 = fadd float %271, 0xBF0A36E2E0000000
  %274 = select i1 %272, float %273, float %231
  %275 = load float, ptr %232, align 4, !tbaa !115
  store float %275, ptr %11, align 4, !tbaa !115
  %276 = load float, ptr %247, align 4, !tbaa !115
  %277 = getelementptr inbounds float, ptr %11, i64 1
  store float %276, ptr %277, align 4, !tbaa !115
  %278 = load float, ptr %252, align 4, !tbaa !115
  %279 = getelementptr inbounds float, ptr %11, i64 2
  store float %278, ptr %279, align 4, !tbaa !115
  %280 = fneg float %274
  %281 = tail call float @llvm.fmuladd.f32(float %269, float %280, float %275)
  store float %281, ptr %11, align 4, !tbaa !115
  %282 = tail call float @llvm.fmuladd.f32(float %268, float %280, float %276)
  store float %282, ptr %277, align 4, !tbaa !115
  %283 = tail call float @llvm.fmuladd.f32(float %270, float %280, float %278)
  store float %283, ptr %279, align 4, !tbaa !115
  br i1 %122, label %346, label %284

284:                                              ; preds = %267
  %285 = tail call ptr @BLI_memarena_alloc(ptr noundef %13, i64 noundef 176) #13
  %286 = getelementptr inbounds %struct.BoundVert, ptr %285, i64 0, i32 2, i32 1
  %287 = load float, ptr %11, align 4, !tbaa !115
  store float %287, ptr %286, align 4, !tbaa !115
  %288 = load float, ptr %277, align 4, !tbaa !115
  %289 = getelementptr inbounds %struct.BoundVert, ptr %285, i64 0, i32 2, i32 1, i64 1
  store float %288, ptr %289, align 4, !tbaa !115
  %290 = load float, ptr %279, align 4, !tbaa !115
  %291 = getelementptr inbounds %struct.BoundVert, ptr %285, i64 0, i32 2, i32 1, i64 2
  store float %290, ptr %291, align 4, !tbaa !115
  %292 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !150
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %284
  %296 = getelementptr inbounds %struct.BoundVert, ptr %285, i64 0, i32 6
  store i32 0, ptr %296, align 8, !tbaa !151
  store ptr %285, ptr %292, align 8, !tbaa !150
  %297 = getelementptr inbounds %struct.BoundVert, ptr %285, i64 0, i32 1
  br label %306

298:                                              ; preds = %284
  %299 = getelementptr inbounds %struct.BoundVert, ptr %293, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !176
  %301 = getelementptr inbounds %struct.BoundVert, ptr %300, i64 0, i32 6
  %302 = load i32, ptr %301, align 8, !tbaa !151
  %303 = add nsw i32 %302, 1
  %304 = getelementptr inbounds %struct.BoundVert, ptr %285, i64 0, i32 6
  store i32 %303, ptr %304, align 8, !tbaa !151
  %305 = getelementptr inbounds %struct.BoundVert, ptr %285, i64 0, i32 1
  store ptr %300, ptr %305, align 8, !tbaa !176
  store ptr %293, ptr %285, align 8, !tbaa !158
  br label %306

306:                                              ; preds = %295, %298
  %307 = phi ptr [ %297, %295 ], [ %300, %298 ]
  %308 = phi ptr [ %285, %295 ], [ %299, %298 ]
  store ptr %285, ptr %307, align 8, !tbaa !113
  store ptr %285, ptr %308, align 8, !tbaa !113
  %309 = getelementptr inbounds %struct.BoundVert, ptr %285, i64 0, i32 7
  store float 1.000000e+00, ptr %309, align 8, !tbaa !165
  %310 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 2
  %311 = load i32, ptr %310, align 8, !tbaa !148
  %312 = add nsw i32 %311, 1
  store i32 %312, ptr %310, align 8, !tbaa !148
  %313 = load ptr, ptr %100, align 8, !tbaa !117
  %314 = getelementptr inbounds %struct.BoundVert, ptr %285, i64 0, i32 4
  store ptr %313, ptr %314, align 8, !tbaa !194
  %315 = getelementptr inbounds %struct.BoundVert, ptr %285, i64 0, i32 3
  store ptr %313, ptr %315, align 8, !tbaa !193
  %316 = getelementptr inbounds %struct.EdgeHalf, ptr %313, i64 0, i32 6
  store ptr %285, ptr %316, align 8, !tbaa !209
  %317 = getelementptr inbounds %struct.EdgeHalf, ptr %313, i64 0, i32 5
  store ptr %285, ptr %317, align 8, !tbaa !210
  %318 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 4
  store i32 3, ptr %318, align 8, !tbaa !160
  %319 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 5
  store i8 0, ptr %319, align 8, !tbaa !201
  %320 = load ptr, ptr %14, align 8, !tbaa !93
  %321 = getelementptr inbounds %struct.VMesh, ptr %320, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !150
  br label %323

323:                                              ; preds = %340, %306
  %324 = phi i8 [ 0, %306 ], [ %342, %340 ]
  %325 = phi ptr [ %322, %306 ], [ %343, %340 ]
  %326 = getelementptr inbounds %struct.BoundVert, ptr %325, i64 0, i32 8
  store i8 0, ptr %326, align 8, !tbaa !195
  %327 = getelementptr inbounds %struct.BoundVert, ptr %325, i64 0, i32 3
  %328 = getelementptr inbounds %struct.BoundVert, ptr %325, i64 0, i32 4
  br label %329

329:                                              ; preds = %333, %323
  %330 = phi ptr [ %327, %323 ], [ %331, %333 ]
  %331 = load ptr, ptr %330, align 8, !tbaa !113
  %332 = icmp eq ptr %331, null
  br i1 %332, label %340, label %333

333:                                              ; preds = %329
  %334 = getelementptr inbounds %struct.EdgeHalf, ptr %331, i64 0, i32 14
  %335 = load i8, ptr %334, align 2, !tbaa !132
  %336 = load i8, ptr %326, align 8, !tbaa !195
  %337 = or i8 %336, %335
  store i8 %337, ptr %326, align 8, !tbaa !195
  %338 = load ptr, ptr %328, align 8, !tbaa !194
  %339 = icmp eq ptr %331, %338
  br i1 %339, label %340, label %329, !llvm.loop !232

340:                                              ; preds = %333, %329
  %341 = load i8, ptr %326, align 8, !tbaa !195
  %342 = or i8 %341, %324
  %343 = load ptr, ptr %325, align 8, !tbaa !158
  %344 = icmp eq ptr %343, %322
  br i1 %344, label %345, label %323, !llvm.loop !233

345:                                              ; preds = %340
  store i8 %342, ptr %319, align 8, !tbaa !201
  br label %353

346:                                              ; preds = %267
  %347 = load ptr, ptr %100, align 8, !tbaa !117
  %348 = getelementptr inbounds %struct.EdgeHalf, ptr %347, i64 0, i32 5
  %349 = load ptr, ptr %348, align 8, !tbaa !210
  %350 = getelementptr inbounds %struct.BoundVert, ptr %349, i64 0, i32 2, i32 1
  store float %281, ptr %350, align 4, !tbaa !115
  %351 = getelementptr inbounds %struct.BoundVert, ptr %349, i64 0, i32 2, i32 1, i64 1
  store float %282, ptr %351, align 4, !tbaa !115
  %352 = getelementptr inbounds %struct.BoundVert, ptr %349, i64 0, i32 2, i32 1, i64 2
  store float %283, ptr %352, align 4, !tbaa !115
  br label %353

353:                                              ; preds = %346, %345
  %354 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 1
  %355 = load ptr, ptr %354, align 8, !tbaa !150
  tail call fastcc void @set_profile_params(ptr noundef %0, ptr noundef %355)
  %356 = load ptr, ptr %354, align 8, !tbaa !150
  tail call fastcc void @calculate_profile(ptr noundef %0, ptr noundef %356)
  br label %1246

357:                                              ; preds = %104, %99
  %358 = load i8, ptr %16, align 8, !tbaa !45
  %359 = icmp eq i8 %358, 0
  %360 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 4
  %361 = getelementptr inbounds %struct.EdgeHalf, ptr %100, i64 0, i32 8
  %362 = select i1 %359, ptr %361, ptr %360
  %363 = load float, ptr %362, align 4, !tbaa !115
  %364 = icmp eq i8 %2, 0
  %365 = getelementptr inbounds float, ptr %11, i64 1
  %366 = getelementptr inbounds float, ptr %11, i64 2
  %367 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 1
  %368 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 2
  %369 = getelementptr inbounds float, ptr %11, i64 1
  %370 = getelementptr inbounds float, ptr %11, i64 2
  %371 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 9
  %372 = getelementptr inbounds float, ptr %4, i64 1
  %373 = getelementptr inbounds float, ptr %4, i64 2
  %374 = getelementptr inbounds float, ptr %5, i64 1
  %375 = getelementptr inbounds float, ptr %5, i64 2
  %376 = getelementptr inbounds float, ptr %6, i64 1
  %377 = getelementptr inbounds float, ptr %6, i64 2
  %378 = getelementptr inbounds float, ptr %7, i64 1
  %379 = getelementptr inbounds float, ptr %7, i64 2
  %380 = getelementptr inbounds float, ptr %8, i64 1
  %381 = getelementptr inbounds float, ptr %8, i64 2
  %382 = getelementptr inbounds float, ptr %9, i64 1
  %383 = getelementptr inbounds float, ptr %9, i64 2
  %384 = getelementptr inbounds float, ptr %10, i64 1
  %385 = getelementptr inbounds float, ptr %11, i64 1
  %386 = getelementptr inbounds float, ptr %10, i64 2
  %387 = getelementptr inbounds float, ptr %11, i64 2
  %388 = getelementptr inbounds float, ptr %11, i64 1
  %389 = getelementptr inbounds float, ptr %11, i64 2
  %390 = getelementptr inbounds float, ptr %11, i64 1
  %391 = getelementptr inbounds float, ptr %11, i64 2
  %392 = icmp eq i8 %2, 0
  %393 = getelementptr inbounds float, ptr %11, i64 1
  %394 = getelementptr inbounds float, ptr %11, i64 2
  %395 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 1
  %396 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 2
  %397 = getelementptr inbounds float, ptr %11, i64 1
  %398 = getelementptr inbounds float, ptr %11, i64 2
  %399 = icmp eq i8 %2, 0
  %400 = getelementptr inbounds float, ptr %11, i64 1
  %401 = getelementptr inbounds float, ptr %11, i64 2
  %402 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 1
  %403 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 2
  %404 = getelementptr inbounds float, ptr %11, i64 1
  %405 = getelementptr inbounds float, ptr %11, i64 2
  %406 = icmp eq i8 %2, 0
  %407 = getelementptr inbounds float, ptr %11, i64 1
  %408 = getelementptr inbounds float, ptr %11, i64 2
  %409 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 1
  %410 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 2
  %411 = getelementptr inbounds float, ptr %11, i64 1
  %412 = getelementptr inbounds float, ptr %11, i64 2
  %413 = getelementptr inbounds float, ptr %11, i64 1
  %414 = getelementptr inbounds float, ptr %11, i64 2
  %415 = icmp eq i8 %2, 0
  %416 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 1
  %417 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 2
  br label %418

418:                                              ; preds = %1032, %357
  %419 = phi ptr [ %100, %357 ], [ %1034, %1032 ]
  %420 = phi float [ %363, %357 ], [ %1033, %1032 ]
  %421 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 12
  %422 = load i8, ptr %421, align 4, !tbaa !103
  %423 = icmp eq i8 %422, 0
  br i1 %423, label %889, label %424

424:                                              ; preds = %418
  %425 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !118
  %427 = getelementptr inbounds %struct.EdgeHalf, ptr %426, i64 0, i32 12
  %428 = load i8, ptr %427, align 4, !tbaa !103
  %429 = icmp eq i8 %428, 0
  br i1 %429, label %476, label %430

430:                                              ; preds = %424
  %431 = load ptr, ptr %1, align 8, !tbaa !85
  %432 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 3
  %433 = load ptr, ptr %432, align 8, !tbaa !101
  call fastcc void @offset_meet(ptr noundef %426, ptr noundef %419, ptr noundef %431, ptr noundef %433, ptr noundef nonnull %11)
  br i1 %364, label %467, label %434

434:                                              ; preds = %430
  %435 = call ptr @BLI_memarena_alloc(ptr noundef %13, i64 noundef 176) #13
  %436 = getelementptr inbounds %struct.BoundVert, ptr %435, i64 0, i32 2, i32 1
  %437 = load float, ptr %11, align 4, !tbaa !115
  store float %437, ptr %436, align 4, !tbaa !115
  %438 = load float, ptr %365, align 4, !tbaa !115
  %439 = getelementptr inbounds %struct.BoundVert, ptr %435, i64 0, i32 2, i32 1, i64 1
  store float %438, ptr %439, align 4, !tbaa !115
  %440 = load float, ptr %366, align 4, !tbaa !115
  %441 = getelementptr inbounds %struct.BoundVert, ptr %435, i64 0, i32 2, i32 1, i64 2
  store float %440, ptr %441, align 4, !tbaa !115
  %442 = load ptr, ptr %367, align 8, !tbaa !150
  %443 = icmp eq ptr %442, null
  br i1 %443, label %444, label %447

444:                                              ; preds = %434
  %445 = getelementptr inbounds %struct.BoundVert, ptr %435, i64 0, i32 6
  store i32 0, ptr %445, align 8, !tbaa !151
  store ptr %435, ptr %367, align 8, !tbaa !150
  %446 = getelementptr inbounds %struct.BoundVert, ptr %435, i64 0, i32 1
  br label %455

447:                                              ; preds = %434
  %448 = getelementptr inbounds %struct.BoundVert, ptr %442, i64 0, i32 1
  %449 = load ptr, ptr %448, align 8, !tbaa !176
  %450 = getelementptr inbounds %struct.BoundVert, ptr %449, i64 0, i32 6
  %451 = load i32, ptr %450, align 8, !tbaa !151
  %452 = add nsw i32 %451, 1
  %453 = getelementptr inbounds %struct.BoundVert, ptr %435, i64 0, i32 6
  store i32 %452, ptr %453, align 8, !tbaa !151
  %454 = getelementptr inbounds %struct.BoundVert, ptr %435, i64 0, i32 1
  store ptr %449, ptr %454, align 8, !tbaa !176
  store ptr %442, ptr %435, align 8, !tbaa !158
  br label %455

455:                                              ; preds = %444, %447
  %456 = phi ptr [ %446, %444 ], [ %449, %447 ]
  %457 = phi ptr [ %435, %444 ], [ %448, %447 ]
  store ptr %435, ptr %456, align 8, !tbaa !113
  store ptr %435, ptr %457, align 8, !tbaa !113
  %458 = getelementptr inbounds %struct.BoundVert, ptr %435, i64 0, i32 7
  store float 1.000000e+00, ptr %458, align 8, !tbaa !165
  %459 = load i32, ptr %368, align 8, !tbaa !148
  %460 = add nsw i32 %459, 1
  store i32 %460, ptr %368, align 8, !tbaa !148
  %461 = load ptr, ptr %425, align 8, !tbaa !118
  %462 = getelementptr inbounds %struct.BoundVert, ptr %435, i64 0, i32 3
  store ptr %461, ptr %462, align 8, !tbaa !193
  %463 = getelementptr inbounds %struct.BoundVert, ptr %435, i64 0, i32 5
  store ptr %419, ptr %463, align 8, !tbaa !157
  %464 = getelementptr inbounds %struct.BoundVert, ptr %435, i64 0, i32 4
  store ptr %419, ptr %464, align 8, !tbaa !194
  %465 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 5
  store ptr %435, ptr %465, align 8, !tbaa !210
  %466 = getelementptr inbounds %struct.EdgeHalf, ptr %461, i64 0, i32 6
  store ptr %435, ptr %466, align 8, !tbaa !209
  br label %867

467:                                              ; preds = %430
  %468 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 5
  %469 = load ptr, ptr %468, align 8, !tbaa !210
  %470 = getelementptr inbounds %struct.BoundVert, ptr %469, i64 0, i32 2, i32 1
  %471 = load float, ptr %11, align 4, !tbaa !115
  store float %471, ptr %470, align 4, !tbaa !115
  %472 = load float, ptr %369, align 4, !tbaa !115
  %473 = getelementptr inbounds %struct.BoundVert, ptr %469, i64 0, i32 2, i32 1, i64 1
  store float %472, ptr %473, align 4, !tbaa !115
  %474 = load float, ptr %370, align 4, !tbaa !115
  %475 = getelementptr inbounds %struct.BoundVert, ptr %469, i64 0, i32 2, i32 1, i64 2
  store float %474, ptr %475, align 4, !tbaa !115
  br label %867

476:                                              ; preds = %424
  %477 = getelementptr inbounds %struct.EdgeHalf, ptr %426, i64 0, i32 1
  %478 = load ptr, ptr %477, align 8, !tbaa !118
  %479 = getelementptr inbounds %struct.EdgeHalf, ptr %478, i64 0, i32 12
  %480 = load i8, ptr %479, align 4, !tbaa !103
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %821, label %482

482:                                              ; preds = %476
  %483 = load i8, ptr %371, align 2, !tbaa !47
  %484 = icmp eq i8 %483, 0
  %485 = load ptr, ptr %1, align 8, !tbaa !85
  br i1 %484, label %774, label %486

486:                                              ; preds = %482
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  %487 = getelementptr inbounds %struct.BMVert, ptr %485, i64 0, i32 2
  %488 = getelementptr inbounds %struct.EdgeHalf, ptr %478, i64 0, i32 2
  %489 = load ptr, ptr %488, align 8, !tbaa !97
  %490 = getelementptr inbounds %struct.BMEdge, ptr %489, i64 0, i32 2
  %491 = load ptr, ptr %490, align 8, !tbaa !73
  %492 = icmp eq ptr %491, %485
  %493 = getelementptr inbounds %struct.BMEdge, ptr %489, i64 0, i32 3
  %494 = load ptr, ptr %493, align 8, !tbaa !76
  %495 = icmp eq ptr %494, %485
  %496 = select i1 %495, ptr %491, ptr null
  %497 = select i1 %492, ptr %494, ptr %496
  %498 = getelementptr inbounds %struct.BMVert, ptr %497, i64 0, i32 2
  %499 = load float, ptr %487, align 4, !tbaa !115
  %500 = load float, ptr %498, align 4, !tbaa !115
  %501 = fsub float %499, %500
  store float %501, ptr %4, align 4, !tbaa !115
  %502 = getelementptr inbounds %struct.BMVert, ptr %485, i64 0, i32 2, i64 1
  %503 = load float, ptr %502, align 4, !tbaa !115
  %504 = getelementptr inbounds %struct.BMVert, ptr %497, i64 0, i32 2, i64 1
  %505 = load float, ptr %504, align 4, !tbaa !115
  %506 = fsub float %503, %505
  store float %506, ptr %372, align 4, !tbaa !115
  %507 = getelementptr inbounds %struct.BMVert, ptr %485, i64 0, i32 2, i64 2
  %508 = load float, ptr %507, align 4, !tbaa !115
  %509 = getelementptr inbounds %struct.BMVert, ptr %497, i64 0, i32 2, i64 2
  %510 = load float, ptr %509, align 4, !tbaa !115
  %511 = fsub float %508, %510
  store float %511, ptr %373, align 4, !tbaa !115
  %512 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 2
  %513 = load ptr, ptr %512, align 8, !tbaa !97
  %514 = getelementptr inbounds %struct.BMEdge, ptr %513, i64 0, i32 2
  %515 = load ptr, ptr %514, align 8, !tbaa !73
  %516 = icmp eq ptr %515, %485
  %517 = getelementptr inbounds %struct.BMEdge, ptr %513, i64 0, i32 3
  %518 = load ptr, ptr %517, align 8, !tbaa !76
  %519 = icmp eq ptr %518, %485
  %520 = select i1 %519, ptr %515, ptr null
  %521 = select i1 %516, ptr %518, ptr %520
  %522 = getelementptr inbounds %struct.BMVert, ptr %521, i64 0, i32 2
  %523 = load float, ptr %522, align 4, !tbaa !115
  %524 = fsub float %523, %499
  store float %524, ptr %5, align 4, !tbaa !115
  %525 = getelementptr inbounds %struct.BMVert, ptr %521, i64 0, i32 2, i64 1
  %526 = load float, ptr %525, align 4, !tbaa !115
  %527 = fsub float %526, %503
  store float %527, ptr %374, align 4, !tbaa !115
  %528 = getelementptr inbounds %struct.BMVert, ptr %521, i64 0, i32 2, i64 2
  %529 = load float, ptr %528, align 4, !tbaa !115
  %530 = fsub float %529, %508
  store float %530, ptr %375, align 4, !tbaa !115
  %531 = getelementptr inbounds %struct.EdgeHalf, ptr %426, i64 0, i32 2
  %532 = load ptr, ptr %531, align 8, !tbaa !97
  %533 = getelementptr inbounds %struct.BMEdge, ptr %532, i64 0, i32 2
  %534 = load ptr, ptr %533, align 8, !tbaa !73
  %535 = icmp eq ptr %534, %485
  %536 = getelementptr inbounds %struct.BMEdge, ptr %532, i64 0, i32 3
  %537 = load ptr, ptr %536, align 8, !tbaa !76
  %538 = icmp eq ptr %537, %485
  %539 = select i1 %538, ptr %534, ptr null
  %540 = select i1 %535, ptr %537, ptr %539
  %541 = getelementptr inbounds %struct.BMVert, ptr %540, i64 0, i32 2
  %542 = load float, ptr %541, align 4, !tbaa !115
  %543 = fsub float %542, %499
  %544 = getelementptr inbounds %struct.BMVert, ptr %540, i64 0, i32 2, i64 1
  %545 = load float, ptr %544, align 4, !tbaa !115
  %546 = fsub float %545, %503
  %547 = getelementptr inbounds %struct.BMVert, ptr %540, i64 0, i32 2, i64 2
  %548 = load float, ptr %547, align 4, !tbaa !115
  %549 = fsub float %548, %508
  %550 = fneg float %549
  %551 = fmul float %506, %550
  %552 = call float @llvm.fmuladd.f32(float %546, float %511, float %551)
  %553 = fneg float %543
  %554 = fmul float %511, %553
  %555 = call float @llvm.fmuladd.f32(float %549, float %501, float %554)
  %556 = fneg float %546
  %557 = fmul float %501, %556
  %558 = call float @llvm.fmuladd.f32(float %543, float %506, float %557)
  %559 = fmul float %527, %550
  %560 = call float @llvm.fmuladd.f32(float %546, float %530, float %559)
  %561 = fmul float %530, %553
  %562 = call float @llvm.fmuladd.f32(float %549, float %524, float %561)
  %563 = fmul float %524, %556
  %564 = call float @llvm.fmuladd.f32(float %543, float %527, float %563)
  %565 = getelementptr inbounds %struct.BMVert, ptr %485, i64 0, i32 3
  %566 = load float, ptr %565, align 4, !tbaa !115
  %567 = getelementptr inbounds %struct.BMVert, ptr %485, i64 0, i32 3, i64 1
  %568 = load float, ptr %567, align 4, !tbaa !115
  %569 = fmul float %555, %568
  %570 = call float @llvm.fmuladd.f32(float %552, float %566, float %569)
  %571 = getelementptr inbounds %struct.BMVert, ptr %485, i64 0, i32 3, i64 2
  %572 = load float, ptr %571, align 4, !tbaa !115
  %573 = call float @llvm.fmuladd.f32(float %558, float %572, float %570)
  %574 = fcmp olt float %573, 0.000000e+00
  %575 = fneg float %552
  %576 = fneg float %555
  %577 = fneg float %558
  %578 = select i1 %574, float %577, float %558
  %579 = select i1 %574, float %576, float %555
  %580 = select i1 %574, float %575, float %552
  %581 = fmul float %562, %568
  %582 = call float @llvm.fmuladd.f32(float %560, float %566, float %581)
  %583 = call float @llvm.fmuladd.f32(float %564, float %572, float %582)
  %584 = fcmp olt float %583, 0.000000e+00
  %585 = fneg float %560
  %586 = fneg float %562
  %587 = fneg float %564
  %588 = select i1 %584, float %587, float %564
  %589 = select i1 %584, float %586, float %562
  %590 = select i1 %584, float %585, float %560
  %591 = fneg float %511
  %592 = fmul float %579, %591
  %593 = call float @llvm.fmuladd.f32(float %506, float %578, float %592)
  %594 = fneg float %501
  %595 = fmul float %578, %594
  %596 = call float @llvm.fmuladd.f32(float %511, float %580, float %595)
  %597 = fneg float %506
  %598 = fmul float %580, %597
  %599 = call float @llvm.fmuladd.f32(float %501, float %579, float %598)
  %600 = fmul float %596, %596
  %601 = call float @llvm.fmuladd.f32(float %593, float %593, float %600)
  %602 = call float @llvm.fmuladd.f32(float %599, float %599, float %601)
  %603 = fcmp ogt float %602, 0x38AA95A5C0000000
  br i1 %603, label %604, label %610

604:                                              ; preds = %486
  %605 = call float @sqrtf(float noundef %602) #13
  %606 = fdiv float 1.000000e+00, %605
  %607 = fmul float %593, %606
  %608 = fmul float %596, %606
  %609 = fmul float %599, %606
  br label %610

610:                                              ; preds = %604, %486
  %611 = phi float [ %608, %604 ], [ 0.000000e+00, %486 ]
  %612 = phi float [ %607, %604 ], [ 0.000000e+00, %486 ]
  %613 = phi float [ %609, %604 ], [ 0.000000e+00, %486 ]
  %614 = load float, ptr %374, align 4, !tbaa !115
  %615 = load float, ptr %375, align 4, !tbaa !115
  %616 = fneg float %615
  %617 = fmul float %589, %616
  %618 = call float @llvm.fmuladd.f32(float %614, float %588, float %617)
  %619 = load float, ptr %5, align 4, !tbaa !115
  %620 = fneg float %619
  %621 = fmul float %588, %620
  %622 = call float @llvm.fmuladd.f32(float %615, float %590, float %621)
  %623 = fneg float %614
  %624 = fmul float %590, %623
  %625 = call float @llvm.fmuladd.f32(float %619, float %589, float %624)
  %626 = fmul float %622, %622
  %627 = call float @llvm.fmuladd.f32(float %618, float %618, float %626)
  %628 = call float @llvm.fmuladd.f32(float %625, float %625, float %627)
  %629 = fcmp ogt float %628, 0x38AA95A5C0000000
  br i1 %629, label %630, label %636

630:                                              ; preds = %610
  %631 = call float @sqrtf(float noundef %628) #13
  %632 = fdiv float 1.000000e+00, %631
  %633 = fmul float %618, %632
  %634 = fmul float %622, %632
  %635 = fmul float %625, %632
  br label %636

636:                                              ; preds = %630, %610
  %637 = phi float [ %634, %630 ], [ 0.000000e+00, %610 ]
  %638 = phi float [ %633, %630 ], [ 0.000000e+00, %610 ]
  %639 = phi float [ %635, %630 ], [ 0.000000e+00, %610 ]
  %640 = load float, ptr %487, align 4, !tbaa !115
  store float %640, ptr %6, align 4, !tbaa !115
  %641 = load float, ptr %502, align 4, !tbaa !115
  store float %641, ptr %376, align 4, !tbaa !115
  %642 = load float, ptr %507, align 4, !tbaa !115
  store float %642, ptr %377, align 4, !tbaa !115
  %643 = getelementptr inbounds %struct.EdgeHalf, ptr %478, i64 0, i32 9
  %644 = load float, ptr %643, align 8, !tbaa !122
  %645 = call float @llvm.fmuladd.f32(float %612, float %644, float %640)
  store float %645, ptr %6, align 4, !tbaa !115
  %646 = call float @llvm.fmuladd.f32(float %611, float %644, float %641)
  store float %646, ptr %376, align 4, !tbaa !115
  %647 = call float @llvm.fmuladd.f32(float %613, float %644, float %642)
  store float %647, ptr %377, align 4, !tbaa !115
  %648 = load float, ptr %4, align 4, !tbaa !115
  %649 = fsub float %645, %648
  store float %649, ptr %7, align 4, !tbaa !115
  %650 = load float, ptr %372, align 4, !tbaa !115
  %651 = fsub float %646, %650
  store float %651, ptr %378, align 4, !tbaa !115
  %652 = load float, ptr %373, align 4, !tbaa !115
  %653 = fsub float %647, %652
  store float %653, ptr %379, align 4, !tbaa !115
  store float %640, ptr %8, align 4, !tbaa !115
  store float %641, ptr %380, align 4, !tbaa !115
  store float %642, ptr %381, align 4, !tbaa !115
  %654 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 8
  %655 = load float, ptr %654, align 4, !tbaa !121
  %656 = call float @llvm.fmuladd.f32(float %638, float %655, float %640)
  store float %656, ptr %8, align 4, !tbaa !115
  %657 = call float @llvm.fmuladd.f32(float %637, float %655, float %641)
  store float %657, ptr %380, align 4, !tbaa !115
  %658 = call float @llvm.fmuladd.f32(float %639, float %655, float %642)
  store float %658, ptr %381, align 4, !tbaa !115
  %659 = load float, ptr %5, align 4, !tbaa !115
  %660 = fadd float %656, %659
  store float %660, ptr %9, align 4, !tbaa !115
  %661 = load float, ptr %374, align 4, !tbaa !115
  %662 = fadd float %657, %661
  store float %662, ptr %382, align 4, !tbaa !115
  %663 = load float, ptr %375, align 4, !tbaa !115
  %664 = fadd float %658, %663
  store float %664, ptr %383, align 4, !tbaa !115
  %665 = call float @angle_v3v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %666 = fcmp olt float %665, 0x3F1A36E2E0000000
  br i1 %666, label %667, label %668

667:                                              ; preds = %636
  call fastcc void @offset_on_edge_between(ptr noundef %0, ptr noundef %478, ptr noundef %419, ptr noundef %426, ptr noundef %485, ptr noundef nonnull %11)
  br label %773

668:                                              ; preds = %636
  %669 = fadd float %665, 0xC00921FB60000000
  %670 = call float @llvm.fabs.f32(float %669)
  %671 = fcmp olt float %670, 0x3F1A36E2E0000000
  br i1 %671, label %672, label %736

672:                                              ; preds = %668
  %673 = load float, ptr %654, align 4, !tbaa !121
  %674 = load ptr, ptr %512, align 8, !tbaa !97
  %675 = getelementptr inbounds %struct.BMEdge, ptr %674, i64 0, i32 2
  %676 = load ptr, ptr %675, align 8, !tbaa !73
  %677 = icmp eq ptr %676, %485
  %678 = getelementptr inbounds %struct.BMEdge, ptr %674, i64 0, i32 3
  %679 = load ptr, ptr %678, align 8, !tbaa !76
  %680 = icmp eq ptr %679, %485
  %681 = select i1 %680, ptr %676, ptr null
  %682 = select i1 %677, ptr %679, ptr %681
  %683 = getelementptr inbounds %struct.BMVert, ptr %682, i64 0, i32 2
  %684 = load float, ptr %487, align 4, !tbaa !115
  %685 = load float, ptr %683, align 4, !tbaa !115
  %686 = fsub float %684, %685
  %687 = load float, ptr %502, align 4, !tbaa !115
  %688 = getelementptr inbounds %struct.BMVert, ptr %682, i64 0, i32 2, i64 1
  %689 = load float, ptr %688, align 4, !tbaa !115
  %690 = fsub float %687, %689
  %691 = load float, ptr %507, align 4, !tbaa !115
  %692 = getelementptr inbounds %struct.BMVert, ptr %682, i64 0, i32 2, i64 2
  %693 = load float, ptr %692, align 4, !tbaa !115
  %694 = fsub float %691, %693
  %695 = fmul float %690, %690
  %696 = call float @llvm.fmuladd.f32(float %686, float %686, float %695)
  %697 = call float @llvm.fmuladd.f32(float %694, float %694, float %696)
  %698 = fcmp ogt float %697, 0x38AA95A5C0000000
  br i1 %698, label %699, label %705

699:                                              ; preds = %672
  %700 = call float @sqrtf(float noundef %697) #13
  %701 = fdiv float 1.000000e+00, %700
  %702 = fmul float %686, %701
  %703 = fmul float %690, %701
  %704 = fmul float %694, %701
  br label %705

705:                                              ; preds = %672, %699
  %706 = phi float [ %703, %699 ], [ 0.000000e+00, %672 ]
  %707 = phi float [ %702, %699 ], [ 0.000000e+00, %672 ]
  %708 = phi float [ %704, %699 ], [ 0.000000e+00, %672 ]
  %709 = phi float [ %700, %699 ], [ 0.000000e+00, %672 ]
  %710 = fcmp olt float %709, %673
  %711 = fadd float %709, 0xBF0A36E2E0000000
  %712 = select i1 %710, float %711, float %673
  %713 = load float, ptr %487, align 4, !tbaa !115
  store float %713, ptr %11, align 4, !tbaa !115
  %714 = load float, ptr %502, align 4, !tbaa !115
  store float %714, ptr %390, align 4, !tbaa !115
  %715 = load float, ptr %507, align 4, !tbaa !115
  store float %715, ptr %391, align 4, !tbaa !115
  %716 = fneg float %712
  %717 = call float @llvm.fmuladd.f32(float %707, float %716, float %713)
  store float %717, ptr %11, align 4, !tbaa !115
  %718 = call float @llvm.fmuladd.f32(float %706, float %716, float %714)
  store float %718, ptr %390, align 4, !tbaa !115
  %719 = call float @llvm.fmuladd.f32(float %708, float %716, float %715)
  store float %719, ptr %391, align 4, !tbaa !115
  %720 = load ptr, ptr %488, align 8, !tbaa !97
  %721 = getelementptr inbounds %struct.BMEdge, ptr %720, i64 0, i32 2
  %722 = load ptr, ptr %721, align 8, !tbaa !73
  %723 = icmp eq ptr %722, %485
  %724 = getelementptr inbounds %struct.BMEdge, ptr %720, i64 0, i32 3
  %725 = load ptr, ptr %724, align 8, !tbaa !76
  %726 = icmp eq ptr %725, %485
  %727 = select i1 %726, ptr %722, ptr null
  %728 = select i1 %723, ptr %725, ptr %727
  %729 = getelementptr inbounds %struct.BMVert, ptr %728, i64 0, i32 2
  %730 = call float @dist_to_line_v3(ptr noundef nonnull %11, ptr noundef nonnull %487, ptr noundef nonnull %729) #13
  %731 = load float, ptr %643, align 8, !tbaa !122
  %732 = fsub float %730, %731
  %733 = call float @llvm.fabs.f32(float %732)
  %734 = fcmp ogt float %733, 0x3EB0C6F7A0000000
  br i1 %734, label %735, label %773

735:                                              ; preds = %705
  store float %730, ptr %643, align 8, !tbaa !122
  br label %773

736:                                              ; preds = %668
  %737 = call i32 @isect_line_line_v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10) #13
  switch i32 %737, label %773 [
    i32 0, label %738
    i32 2, label %758
  ]

738:                                              ; preds = %736
  %739 = load float, ptr %6, align 4, !tbaa !115
  store float %739, ptr %11, align 4, !tbaa !115
  %740 = load float, ptr %376, align 4, !tbaa !115
  store float %740, ptr %388, align 4, !tbaa !115
  %741 = load float, ptr %377, align 4, !tbaa !115
  store float %741, ptr %389, align 4, !tbaa !115
  %742 = load ptr, ptr %512, align 8, !tbaa !97
  %743 = getelementptr inbounds %struct.BMEdge, ptr %742, i64 0, i32 2
  %744 = load ptr, ptr %743, align 8, !tbaa !73
  %745 = icmp eq ptr %744, %485
  %746 = getelementptr inbounds %struct.BMEdge, ptr %742, i64 0, i32 3
  %747 = load ptr, ptr %746, align 8, !tbaa !76
  %748 = icmp eq ptr %747, %485
  %749 = select i1 %748, ptr %744, ptr null
  %750 = select i1 %745, ptr %747, ptr %749
  %751 = getelementptr inbounds %struct.BMVert, ptr %750, i64 0, i32 2
  %752 = call float @dist_to_line_v3(ptr noundef nonnull %11, ptr noundef nonnull %487, ptr noundef nonnull %751) #13
  %753 = load float, ptr %654, align 4, !tbaa !121
  %754 = fsub float %752, %753
  %755 = call float @llvm.fabs.f32(float %754)
  %756 = fcmp ogt float %755, 0x3EB0C6F7A0000000
  br i1 %756, label %757, label %773

757:                                              ; preds = %738
  store float %752, ptr %654, align 4, !tbaa !121
  br label %773

758:                                              ; preds = %736
  %759 = load float, ptr %10, align 4, !tbaa !115
  %760 = load float, ptr %11, align 4, !tbaa !115
  %761 = fsub float %759, %760
  %762 = load float, ptr %384, align 4, !tbaa !115
  %763 = load float, ptr %385, align 4, !tbaa !115
  %764 = fsub float %762, %763
  %765 = load float, ptr %386, align 4, !tbaa !115
  %766 = load float, ptr %387, align 4, !tbaa !115
  %767 = fsub float %765, %766
  %768 = fmul float %764, %764
  %769 = call float @llvm.fmuladd.f32(float %761, float %761, float %768)
  %770 = call float @llvm.fmuladd.f32(float %767, float %767, float %769)
  %771 = fcmp ogt float %770, 0x3DDB7CDFE0000000
  br i1 %771, label %772, label %773

772:                                              ; preds = %758
  call fastcc void @offset_on_edge_between(ptr noundef %0, ptr noundef %478, ptr noundef %419, ptr noundef %426, ptr noundef %485, ptr noundef nonnull %11)
  br label %773

773:                                              ; preds = %667, %705, %735, %736, %738, %757, %758, %772
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  br label %775

774:                                              ; preds = %482
  call fastcc void @offset_on_edge_between(ptr noundef %0, ptr noundef %478, ptr noundef %419, ptr noundef %426, ptr noundef %485, ptr noundef nonnull %11)
  br label %775

775:                                              ; preds = %774, %773
  br i1 %392, label %812, label %776

776:                                              ; preds = %775
  %777 = call ptr @BLI_memarena_alloc(ptr noundef %13, i64 noundef 176) #13
  %778 = getelementptr inbounds %struct.BoundVert, ptr %777, i64 0, i32 2, i32 1
  %779 = load float, ptr %11, align 4, !tbaa !115
  store float %779, ptr %778, align 4, !tbaa !115
  %780 = load float, ptr %393, align 4, !tbaa !115
  %781 = getelementptr inbounds %struct.BoundVert, ptr %777, i64 0, i32 2, i32 1, i64 1
  store float %780, ptr %781, align 4, !tbaa !115
  %782 = load float, ptr %394, align 4, !tbaa !115
  %783 = getelementptr inbounds %struct.BoundVert, ptr %777, i64 0, i32 2, i32 1, i64 2
  store float %782, ptr %783, align 4, !tbaa !115
  %784 = load ptr, ptr %395, align 8, !tbaa !150
  %785 = icmp eq ptr %784, null
  br i1 %785, label %786, label %789

786:                                              ; preds = %776
  %787 = getelementptr inbounds %struct.BoundVert, ptr %777, i64 0, i32 6
  store i32 0, ptr %787, align 8, !tbaa !151
  store ptr %777, ptr %395, align 8, !tbaa !150
  %788 = getelementptr inbounds %struct.BoundVert, ptr %777, i64 0, i32 1
  br label %797

789:                                              ; preds = %776
  %790 = getelementptr inbounds %struct.BoundVert, ptr %784, i64 0, i32 1
  %791 = load ptr, ptr %790, align 8, !tbaa !176
  %792 = getelementptr inbounds %struct.BoundVert, ptr %791, i64 0, i32 6
  %793 = load i32, ptr %792, align 8, !tbaa !151
  %794 = add nsw i32 %793, 1
  %795 = getelementptr inbounds %struct.BoundVert, ptr %777, i64 0, i32 6
  store i32 %794, ptr %795, align 8, !tbaa !151
  %796 = getelementptr inbounds %struct.BoundVert, ptr %777, i64 0, i32 1
  store ptr %791, ptr %796, align 8, !tbaa !176
  store ptr %784, ptr %777, align 8, !tbaa !158
  br label %797

797:                                              ; preds = %786, %789
  %798 = phi ptr [ %788, %786 ], [ %791, %789 ]
  %799 = phi ptr [ %777, %786 ], [ %790, %789 ]
  store ptr %777, ptr %798, align 8, !tbaa !113
  store ptr %777, ptr %799, align 8, !tbaa !113
  %800 = getelementptr inbounds %struct.BoundVert, ptr %777, i64 0, i32 7
  store float 1.000000e+00, ptr %800, align 8, !tbaa !165
  %801 = load i32, ptr %396, align 8, !tbaa !148
  %802 = add nsw i32 %801, 1
  store i32 %802, ptr %396, align 8, !tbaa !148
  %803 = load ptr, ptr %425, align 8, !tbaa !118
  %804 = getelementptr inbounds %struct.EdgeHalf, ptr %803, i64 0, i32 1
  %805 = load ptr, ptr %804, align 8, !tbaa !118
  %806 = getelementptr inbounds %struct.BoundVert, ptr %777, i64 0, i32 3
  store ptr %805, ptr %806, align 8, !tbaa !193
  %807 = getelementptr inbounds %struct.BoundVert, ptr %777, i64 0, i32 5
  store ptr %419, ptr %807, align 8, !tbaa !157
  %808 = getelementptr inbounds %struct.BoundVert, ptr %777, i64 0, i32 4
  store ptr %419, ptr %808, align 8, !tbaa !194
  %809 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 5
  store ptr %777, ptr %809, align 8, !tbaa !210
  %810 = getelementptr inbounds %struct.EdgeHalf, ptr %803, i64 0, i32 5
  store ptr %777, ptr %810, align 8, !tbaa !210
  %811 = getelementptr inbounds %struct.EdgeHalf, ptr %805, i64 0, i32 6
  store ptr %777, ptr %811, align 8, !tbaa !209
  br label %867

812:                                              ; preds = %775
  %813 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 5
  %814 = load ptr, ptr %813, align 8, !tbaa !210
  %815 = getelementptr inbounds %struct.BoundVert, ptr %814, i64 0, i32 2, i32 1
  %816 = load float, ptr %11, align 4, !tbaa !115
  store float %816, ptr %815, align 4, !tbaa !115
  %817 = load float, ptr %397, align 4, !tbaa !115
  %818 = getelementptr inbounds %struct.BoundVert, ptr %814, i64 0, i32 2, i32 1, i64 1
  store float %817, ptr %818, align 4, !tbaa !115
  %819 = load float, ptr %398, align 4, !tbaa !115
  %820 = getelementptr inbounds %struct.BoundVert, ptr %814, i64 0, i32 2, i32 1, i64 2
  store float %819, ptr %820, align 4, !tbaa !115
  br label %867

821:                                              ; preds = %476
  %822 = load ptr, ptr %1, align 8, !tbaa !85
  %823 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 3
  %824 = load ptr, ptr %823, align 8, !tbaa !101
  call fastcc void @offset_meet(ptr noundef %426, ptr noundef %419, ptr noundef %822, ptr noundef %824, ptr noundef nonnull %11)
  br i1 %399, label %858, label %825

825:                                              ; preds = %821
  %826 = call ptr @BLI_memarena_alloc(ptr noundef %13, i64 noundef 176) #13
  %827 = getelementptr inbounds %struct.BoundVert, ptr %826, i64 0, i32 2, i32 1
  %828 = load float, ptr %11, align 4, !tbaa !115
  store float %828, ptr %827, align 4, !tbaa !115
  %829 = load float, ptr %400, align 4, !tbaa !115
  %830 = getelementptr inbounds %struct.BoundVert, ptr %826, i64 0, i32 2, i32 1, i64 1
  store float %829, ptr %830, align 4, !tbaa !115
  %831 = load float, ptr %401, align 4, !tbaa !115
  %832 = getelementptr inbounds %struct.BoundVert, ptr %826, i64 0, i32 2, i32 1, i64 2
  store float %831, ptr %832, align 4, !tbaa !115
  %833 = load ptr, ptr %402, align 8, !tbaa !150
  %834 = icmp eq ptr %833, null
  br i1 %834, label %835, label %838

835:                                              ; preds = %825
  %836 = getelementptr inbounds %struct.BoundVert, ptr %826, i64 0, i32 6
  store i32 0, ptr %836, align 8, !tbaa !151
  store ptr %826, ptr %402, align 8, !tbaa !150
  %837 = getelementptr inbounds %struct.BoundVert, ptr %826, i64 0, i32 1
  br label %846

838:                                              ; preds = %825
  %839 = getelementptr inbounds %struct.BoundVert, ptr %833, i64 0, i32 1
  %840 = load ptr, ptr %839, align 8, !tbaa !176
  %841 = getelementptr inbounds %struct.BoundVert, ptr %840, i64 0, i32 6
  %842 = load i32, ptr %841, align 8, !tbaa !151
  %843 = add nsw i32 %842, 1
  %844 = getelementptr inbounds %struct.BoundVert, ptr %826, i64 0, i32 6
  store i32 %843, ptr %844, align 8, !tbaa !151
  %845 = getelementptr inbounds %struct.BoundVert, ptr %826, i64 0, i32 1
  store ptr %840, ptr %845, align 8, !tbaa !176
  store ptr %833, ptr %826, align 8, !tbaa !158
  br label %846

846:                                              ; preds = %835, %838
  %847 = phi ptr [ %837, %835 ], [ %840, %838 ]
  %848 = phi ptr [ %826, %835 ], [ %839, %838 ]
  store ptr %826, ptr %847, align 8, !tbaa !113
  store ptr %826, ptr %848, align 8, !tbaa !113
  %849 = getelementptr inbounds %struct.BoundVert, ptr %826, i64 0, i32 7
  store float 1.000000e+00, ptr %849, align 8, !tbaa !165
  %850 = load i32, ptr %403, align 8, !tbaa !148
  %851 = add nsw i32 %850, 1
  store i32 %851, ptr %403, align 8, !tbaa !148
  %852 = load ptr, ptr %425, align 8, !tbaa !118
  %853 = getelementptr inbounds %struct.BoundVert, ptr %826, i64 0, i32 3
  store ptr %852, ptr %853, align 8, !tbaa !193
  %854 = getelementptr inbounds %struct.BoundVert, ptr %826, i64 0, i32 5
  store ptr %419, ptr %854, align 8, !tbaa !157
  %855 = getelementptr inbounds %struct.BoundVert, ptr %826, i64 0, i32 4
  store ptr %419, ptr %855, align 8, !tbaa !194
  %856 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 5
  store ptr %826, ptr %856, align 8, !tbaa !210
  %857 = getelementptr inbounds %struct.EdgeHalf, ptr %852, i64 0, i32 5
  store ptr %826, ptr %857, align 8, !tbaa !210
  br label %867

858:                                              ; preds = %821
  %859 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 5
  %860 = load ptr, ptr %859, align 8, !tbaa !210
  %861 = getelementptr inbounds %struct.BoundVert, ptr %860, i64 0, i32 2, i32 1
  %862 = load float, ptr %11, align 4, !tbaa !115
  store float %862, ptr %861, align 4, !tbaa !115
  %863 = load float, ptr %404, align 4, !tbaa !115
  %864 = getelementptr inbounds %struct.BoundVert, ptr %860, i64 0, i32 2, i32 1, i64 1
  store float %863, ptr %864, align 4, !tbaa !115
  %865 = load float, ptr %405, align 4, !tbaa !115
  %866 = getelementptr inbounds %struct.BoundVert, ptr %860, i64 0, i32 2, i32 1, i64 2
  store float %865, ptr %866, align 4, !tbaa !115
  br label %867

867:                                              ; preds = %812, %797, %858, %846, %455, %467
  %868 = phi ptr [ %435, %455 ], [ %469, %467 ], [ %777, %797 ], [ %814, %812 ], [ %826, %846 ], [ %860, %858 ]
  %869 = load ptr, ptr %1, align 8, !tbaa !85
  %870 = getelementptr inbounds %struct.BMVert, ptr %869, i64 0, i32 2
  %871 = getelementptr inbounds %struct.BoundVert, ptr %868, i64 0, i32 2, i32 1
  %872 = load float, ptr %871, align 4, !tbaa !115
  %873 = load float, ptr %870, align 4, !tbaa !115
  %874 = fsub float %872, %873
  %875 = getelementptr inbounds %struct.BoundVert, ptr %868, i64 0, i32 2, i32 1, i64 1
  %876 = load float, ptr %875, align 4, !tbaa !115
  %877 = getelementptr inbounds %struct.BMVert, ptr %869, i64 0, i32 2, i64 1
  %878 = load float, ptr %877, align 4, !tbaa !115
  %879 = fsub float %876, %878
  %880 = getelementptr inbounds %struct.BoundVert, ptr %868, i64 0, i32 2, i32 1, i64 2
  %881 = load float, ptr %880, align 4, !tbaa !115
  %882 = getelementptr inbounds %struct.BMVert, ptr %869, i64 0, i32 2, i64 2
  %883 = load float, ptr %882, align 4, !tbaa !115
  %884 = fsub float %881, %883
  %885 = fmul float %879, %879
  %886 = call float @llvm.fmuladd.f32(float %874, float %874, float %885)
  %887 = call float @llvm.fmuladd.f32(float %884, float %884, float %886)
  %888 = call float @sqrtf(float noundef %887) #13
  br label %1032

889:                                              ; preds = %418
  %890 = load ptr, ptr %419, align 8, !tbaa !117
  %891 = getelementptr inbounds %struct.EdgeHalf, ptr %890, i64 0, i32 12
  %892 = load i8, ptr %891, align 4, !tbaa !103
  %893 = icmp eq i8 %892, 0
  br i1 %893, label %894, label %1032

894:                                              ; preds = %889
  %895 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 1
  %896 = load ptr, ptr %895, align 8, !tbaa !118
  %897 = getelementptr inbounds %struct.EdgeHalf, ptr %896, i64 0, i32 12
  %898 = load i8, ptr %897, align 4, !tbaa !103
  %899 = icmp eq i8 %898, 0
  %900 = load ptr, ptr %1, align 8, !tbaa !85
  br i1 %899, label %945, label %901

901:                                              ; preds = %894
  %902 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 3
  %903 = load ptr, ptr %902, align 8, !tbaa !101
  call fastcc void @offset_meet(ptr noundef %896, ptr noundef nonnull %419, ptr noundef %900, ptr noundef %903, ptr noundef nonnull %11)
  br i1 %406, label %936, label %904

904:                                              ; preds = %901
  %905 = call ptr @BLI_memarena_alloc(ptr noundef %13, i64 noundef 176) #13
  %906 = getelementptr inbounds %struct.BoundVert, ptr %905, i64 0, i32 2, i32 1
  %907 = load float, ptr %11, align 4, !tbaa !115
  store float %907, ptr %906, align 4, !tbaa !115
  %908 = load float, ptr %407, align 4, !tbaa !115
  %909 = getelementptr inbounds %struct.BoundVert, ptr %905, i64 0, i32 2, i32 1, i64 1
  store float %908, ptr %909, align 4, !tbaa !115
  %910 = load float, ptr %408, align 4, !tbaa !115
  %911 = getelementptr inbounds %struct.BoundVert, ptr %905, i64 0, i32 2, i32 1, i64 2
  store float %910, ptr %911, align 4, !tbaa !115
  %912 = load ptr, ptr %409, align 8, !tbaa !150
  %913 = icmp eq ptr %912, null
  br i1 %913, label %914, label %917

914:                                              ; preds = %904
  %915 = getelementptr inbounds %struct.BoundVert, ptr %905, i64 0, i32 6
  store i32 0, ptr %915, align 8, !tbaa !151
  store ptr %905, ptr %409, align 8, !tbaa !150
  %916 = getelementptr inbounds %struct.BoundVert, ptr %905, i64 0, i32 1
  br label %925

917:                                              ; preds = %904
  %918 = getelementptr inbounds %struct.BoundVert, ptr %912, i64 0, i32 1
  %919 = load ptr, ptr %918, align 8, !tbaa !176
  %920 = getelementptr inbounds %struct.BoundVert, ptr %919, i64 0, i32 6
  %921 = load i32, ptr %920, align 8, !tbaa !151
  %922 = add nsw i32 %921, 1
  %923 = getelementptr inbounds %struct.BoundVert, ptr %905, i64 0, i32 6
  store i32 %922, ptr %923, align 8, !tbaa !151
  %924 = getelementptr inbounds %struct.BoundVert, ptr %905, i64 0, i32 1
  store ptr %919, ptr %924, align 8, !tbaa !176
  store ptr %912, ptr %905, align 8, !tbaa !158
  br label %925

925:                                              ; preds = %914, %917
  %926 = phi ptr [ %916, %914 ], [ %919, %917 ]
  %927 = phi ptr [ %905, %914 ], [ %918, %917 ]
  store ptr %905, ptr %926, align 8, !tbaa !113
  store ptr %905, ptr %927, align 8, !tbaa !113
  %928 = getelementptr inbounds %struct.BoundVert, ptr %905, i64 0, i32 7
  store float 1.000000e+00, ptr %928, align 8, !tbaa !165
  %929 = load i32, ptr %410, align 8, !tbaa !148
  %930 = add nsw i32 %929, 1
  store i32 %930, ptr %410, align 8, !tbaa !148
  %931 = load ptr, ptr %895, align 8, !tbaa !118
  %932 = getelementptr inbounds %struct.BoundVert, ptr %905, i64 0, i32 3
  store ptr %931, ptr %932, align 8, !tbaa !193
  %933 = getelementptr inbounds %struct.BoundVert, ptr %905, i64 0, i32 4
  store ptr %419, ptr %933, align 8, !tbaa !194
  %934 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 5
  store ptr %905, ptr %934, align 8, !tbaa !210
  %935 = getelementptr inbounds %struct.EdgeHalf, ptr %931, i64 0, i32 6
  store ptr %905, ptr %935, align 8, !tbaa !209
  br label %1032

936:                                              ; preds = %901
  %937 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 5
  %938 = load ptr, ptr %937, align 8, !tbaa !210
  %939 = getelementptr inbounds %struct.BoundVert, ptr %938, i64 0, i32 2, i32 1
  %940 = load float, ptr %11, align 4, !tbaa !115
  store float %940, ptr %939, align 4, !tbaa !115
  %941 = load float, ptr %411, align 4, !tbaa !115
  %942 = getelementptr inbounds %struct.BoundVert, ptr %938, i64 0, i32 2, i32 1, i64 1
  store float %941, ptr %942, align 4, !tbaa !115
  %943 = load float, ptr %412, align 4, !tbaa !115
  %944 = getelementptr inbounds %struct.BoundVert, ptr %938, i64 0, i32 2, i32 1, i64 2
  store float %943, ptr %944, align 4, !tbaa !115
  br label %1032

945:                                              ; preds = %894
  %946 = getelementptr inbounds %struct.BMVert, ptr %900, i64 0, i32 2
  %947 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 2
  %948 = load ptr, ptr %947, align 8, !tbaa !97
  %949 = getelementptr inbounds %struct.BMEdge, ptr %948, i64 0, i32 2
  %950 = load ptr, ptr %949, align 8, !tbaa !73
  %951 = icmp eq ptr %950, %900
  %952 = getelementptr inbounds %struct.BMEdge, ptr %948, i64 0, i32 3
  %953 = load ptr, ptr %952, align 8, !tbaa !76
  %954 = icmp eq ptr %953, %900
  %955 = select i1 %954, ptr %950, ptr null
  %956 = select i1 %951, ptr %953, ptr %955
  %957 = getelementptr inbounds %struct.BMVert, ptr %956, i64 0, i32 2
  %958 = load float, ptr %946, align 4, !tbaa !115
  %959 = load float, ptr %957, align 4, !tbaa !115
  %960 = fsub float %958, %959
  %961 = getelementptr inbounds %struct.BMVert, ptr %900, i64 0, i32 2, i64 1
  %962 = load float, ptr %961, align 4, !tbaa !115
  %963 = getelementptr inbounds %struct.BMVert, ptr %956, i64 0, i32 2, i64 1
  %964 = load float, ptr %963, align 4, !tbaa !115
  %965 = fsub float %962, %964
  %966 = getelementptr inbounds %struct.BMVert, ptr %900, i64 0, i32 2, i64 2
  %967 = load float, ptr %966, align 4, !tbaa !115
  %968 = getelementptr inbounds %struct.BMVert, ptr %956, i64 0, i32 2, i64 2
  %969 = load float, ptr %968, align 4, !tbaa !115
  %970 = fsub float %967, %969
  %971 = fmul float %965, %965
  %972 = call float @llvm.fmuladd.f32(float %960, float %960, float %971)
  %973 = call float @llvm.fmuladd.f32(float %970, float %970, float %972)
  %974 = fcmp ogt float %973, 0x38AA95A5C0000000
  br i1 %974, label %975, label %981

975:                                              ; preds = %945
  %976 = call float @sqrtf(float noundef %973) #13
  %977 = fdiv float 1.000000e+00, %976
  %978 = fmul float %960, %977
  %979 = fmul float %965, %977
  %980 = fmul float %970, %977
  br label %981

981:                                              ; preds = %945, %975
  %982 = phi float [ %979, %975 ], [ 0.000000e+00, %945 ]
  %983 = phi float [ %978, %975 ], [ 0.000000e+00, %945 ]
  %984 = phi float [ %980, %975 ], [ 0.000000e+00, %945 ]
  %985 = phi float [ %976, %975 ], [ 0.000000e+00, %945 ]
  %986 = fcmp olt float %985, %420
  %987 = fadd float %985, 0xBF0A36E2E0000000
  %988 = select i1 %986, float %987, float %420
  %989 = load float, ptr %946, align 4, !tbaa !115
  store float %989, ptr %11, align 4, !tbaa !115
  %990 = load float, ptr %961, align 4, !tbaa !115
  store float %990, ptr %413, align 4, !tbaa !115
  %991 = load float, ptr %966, align 4, !tbaa !115
  store float %991, ptr %414, align 4, !tbaa !115
  %992 = fneg float %988
  %993 = call float @llvm.fmuladd.f32(float %983, float %992, float %989)
  store float %993, ptr %11, align 4, !tbaa !115
  %994 = call float @llvm.fmuladd.f32(float %982, float %992, float %990)
  store float %994, ptr %413, align 4, !tbaa !115
  %995 = call float @llvm.fmuladd.f32(float %984, float %992, float %991)
  store float %995, ptr %414, align 4, !tbaa !115
  br i1 %415, label %1026, label %996

996:                                              ; preds = %981
  %997 = call ptr @BLI_memarena_alloc(ptr noundef %13, i64 noundef 176) #13
  %998 = getelementptr inbounds %struct.BoundVert, ptr %997, i64 0, i32 2, i32 1
  %999 = load float, ptr %11, align 4, !tbaa !115
  store float %999, ptr %998, align 4, !tbaa !115
  %1000 = load float, ptr %413, align 4, !tbaa !115
  %1001 = getelementptr inbounds %struct.BoundVert, ptr %997, i64 0, i32 2, i32 1, i64 1
  store float %1000, ptr %1001, align 4, !tbaa !115
  %1002 = load float, ptr %414, align 4, !tbaa !115
  %1003 = getelementptr inbounds %struct.BoundVert, ptr %997, i64 0, i32 2, i32 1, i64 2
  store float %1002, ptr %1003, align 4, !tbaa !115
  %1004 = load ptr, ptr %416, align 8, !tbaa !150
  %1005 = icmp eq ptr %1004, null
  br i1 %1005, label %1006, label %1009

1006:                                             ; preds = %996
  %1007 = getelementptr inbounds %struct.BoundVert, ptr %997, i64 0, i32 6
  store i32 0, ptr %1007, align 8, !tbaa !151
  store ptr %997, ptr %416, align 8, !tbaa !150
  %1008 = getelementptr inbounds %struct.BoundVert, ptr %997, i64 0, i32 1
  br label %1017

1009:                                             ; preds = %996
  %1010 = getelementptr inbounds %struct.BoundVert, ptr %1004, i64 0, i32 1
  %1011 = load ptr, ptr %1010, align 8, !tbaa !176
  %1012 = getelementptr inbounds %struct.BoundVert, ptr %1011, i64 0, i32 6
  %1013 = load i32, ptr %1012, align 8, !tbaa !151
  %1014 = add nsw i32 %1013, 1
  %1015 = getelementptr inbounds %struct.BoundVert, ptr %997, i64 0, i32 6
  store i32 %1014, ptr %1015, align 8, !tbaa !151
  %1016 = getelementptr inbounds %struct.BoundVert, ptr %997, i64 0, i32 1
  store ptr %1011, ptr %1016, align 8, !tbaa !176
  store ptr %1004, ptr %997, align 8, !tbaa !158
  br label %1017

1017:                                             ; preds = %1006, %1009
  %1018 = phi ptr [ %1008, %1006 ], [ %1011, %1009 ]
  %1019 = phi ptr [ %997, %1006 ], [ %1010, %1009 ]
  store ptr %997, ptr %1018, align 8, !tbaa !113
  store ptr %997, ptr %1019, align 8, !tbaa !113
  %1020 = getelementptr inbounds %struct.BoundVert, ptr %997, i64 0, i32 7
  store float 1.000000e+00, ptr %1020, align 8, !tbaa !165
  %1021 = load i32, ptr %417, align 8, !tbaa !148
  %1022 = add nsw i32 %1021, 1
  store i32 %1022, ptr %417, align 8, !tbaa !148
  %1023 = getelementptr inbounds %struct.BoundVert, ptr %997, i64 0, i32 4
  store ptr %419, ptr %1023, align 8, !tbaa !194
  %1024 = getelementptr inbounds %struct.BoundVert, ptr %997, i64 0, i32 3
  store ptr %419, ptr %1024, align 8, !tbaa !193
  %1025 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 5
  store ptr %997, ptr %1025, align 8, !tbaa !210
  br label %1032

1026:                                             ; preds = %981
  %1027 = getelementptr inbounds %struct.EdgeHalf, ptr %419, i64 0, i32 5
  %1028 = load ptr, ptr %1027, align 8, !tbaa !210
  %1029 = getelementptr inbounds %struct.BoundVert, ptr %1028, i64 0, i32 2, i32 1
  store float %993, ptr %1029, align 4, !tbaa !115
  %1030 = getelementptr inbounds %struct.BoundVert, ptr %1028, i64 0, i32 2, i32 1, i64 1
  store float %994, ptr %1030, align 4, !tbaa !115
  %1031 = getelementptr inbounds %struct.BoundVert, ptr %1028, i64 0, i32 2, i32 1, i64 2
  store float %995, ptr %1031, align 4, !tbaa !115
  br label %1032

1032:                                             ; preds = %867, %936, %925, %1026, %1017, %889
  %1033 = phi float [ %888, %867 ], [ %420, %889 ], [ %420, %925 ], [ %420, %936 ], [ %420, %1017 ], [ %420, %1026 ]
  %1034 = load ptr, ptr %419, align 8, !tbaa !117
  %1035 = icmp eq ptr %1034, %100
  br i1 %1035, label %1036, label %418, !llvm.loop !234

1036:                                             ; preds = %1032
  %1037 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 1
  %1038 = load ptr, ptr %1037, align 8, !tbaa !150
  br label %1039

1039:                                             ; preds = %1039, %1036
  %1040 = phi ptr [ %1038, %1036 ], [ %1041, %1039 ]
  call fastcc void @set_profile_params(ptr noundef %0, ptr noundef %1040)
  call fastcc void @calculate_profile(ptr noundef %0, ptr noundef %1040)
  %1041 = load ptr, ptr %1040, align 8, !tbaa !158
  %1042 = load ptr, ptr %1037, align 8, !tbaa !150
  %1043 = icmp eq ptr %1041, %1042
  br i1 %1043, label %1044, label %1039, !llvm.loop !235

1044:                                             ; preds = %1039
  %1045 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 2
  %1046 = load i32, ptr %1045, align 4, !tbaa !88
  %1047 = icmp eq i32 %1046, 1
  br i1 %1047, label %1048, label %1176

1048:                                             ; preds = %1044
  %1049 = load i32, ptr %101, align 8, !tbaa !87
  %1050 = icmp sgt i32 %1049, 2
  br i1 %1050, label %1051, label %1176

1051:                                             ; preds = %1048
  %1052 = getelementptr inbounds %struct.BoundVert, ptr %1042, i64 0, i32 3
  %1053 = load ptr, ptr %1052, align 8, !tbaa !193
  %1054 = load ptr, ptr %1042, align 8, !tbaa !158
  %1055 = getelementptr inbounds %struct.BoundVert, ptr %1054, i64 0, i32 4
  %1056 = load ptr, ptr %1055, align 8, !tbaa !194
  %1057 = getelementptr inbounds %struct.BoundVert, ptr %1042, i64 0, i32 7, i32 6
  %1058 = load float, ptr %1057, align 4, !tbaa !115
  %1059 = fcmp oeq float %1058, 0.000000e+00
  br i1 %1059, label %1060, label %1068

1060:                                             ; preds = %1051
  %1061 = getelementptr inbounds %struct.BoundVert, ptr %1042, i64 0, i32 7, i32 6, i64 1
  %1062 = load float, ptr %1061, align 4, !tbaa !115
  %1063 = fcmp oeq float %1062, 0.000000e+00
  br i1 %1063, label %1064, label %1068

1064:                                             ; preds = %1060
  %1065 = getelementptr inbounds %struct.BoundVert, ptr %1042, i64 0, i32 7, i32 6, i64 2
  %1066 = load float, ptr %1065, align 4, !tbaa !115
  %1067 = fcmp une float %1066, 0.000000e+00
  br i1 %1067, label %1068, label %1175

1068:                                             ; preds = %1060, %1051, %1064
  %1069 = getelementptr inbounds %struct.EdgeHalf, ptr %1053, i64 0, i32 2
  %1070 = load ptr, ptr %1069, align 8, !tbaa !97
  %1071 = getelementptr inbounds %struct.BMEdge, ptr %1070, i64 0, i32 2
  %1072 = load ptr, ptr %1071, align 8, !tbaa !73
  %1073 = getelementptr inbounds %struct.BMVert, ptr %1072, i64 0, i32 2
  %1074 = getelementptr inbounds %struct.BMEdge, ptr %1070, i64 0, i32 3
  %1075 = load ptr, ptr %1074, align 8, !tbaa !76
  %1076 = getelementptr inbounds %struct.BMVert, ptr %1075, i64 0, i32 2
  %1077 = load float, ptr %1073, align 4, !tbaa !115
  %1078 = load float, ptr %1076, align 4, !tbaa !115
  %1079 = fsub float %1077, %1078
  %1080 = getelementptr inbounds %struct.BMVert, ptr %1072, i64 0, i32 2, i64 1
  %1081 = load float, ptr %1080, align 4, !tbaa !115
  %1082 = getelementptr inbounds %struct.BMVert, ptr %1075, i64 0, i32 2, i64 1
  %1083 = load float, ptr %1082, align 4, !tbaa !115
  %1084 = fsub float %1081, %1083
  %1085 = getelementptr inbounds %struct.BMVert, ptr %1072, i64 0, i32 2, i64 2
  %1086 = load float, ptr %1085, align 4, !tbaa !115
  %1087 = getelementptr inbounds %struct.BMVert, ptr %1075, i64 0, i32 2, i64 2
  %1088 = load float, ptr %1087, align 4, !tbaa !115
  %1089 = fsub float %1086, %1088
  %1090 = getelementptr inbounds %struct.EdgeHalf, ptr %1056, i64 0, i32 2
  %1091 = load ptr, ptr %1090, align 8, !tbaa !97
  %1092 = getelementptr inbounds %struct.BMEdge, ptr %1091, i64 0, i32 2
  %1093 = load ptr, ptr %1092, align 8, !tbaa !73
  %1094 = getelementptr inbounds %struct.BMVert, ptr %1093, i64 0, i32 2
  %1095 = getelementptr inbounds %struct.BMEdge, ptr %1091, i64 0, i32 3
  %1096 = load ptr, ptr %1095, align 8, !tbaa !76
  %1097 = getelementptr inbounds %struct.BMVert, ptr %1096, i64 0, i32 2
  %1098 = load float, ptr %1094, align 4, !tbaa !115
  %1099 = load float, ptr %1097, align 4, !tbaa !115
  %1100 = fsub float %1098, %1099
  %1101 = getelementptr inbounds %struct.BMVert, ptr %1093, i64 0, i32 2, i64 1
  %1102 = load float, ptr %1101, align 4, !tbaa !115
  %1103 = getelementptr inbounds %struct.BMVert, ptr %1096, i64 0, i32 2, i64 1
  %1104 = load float, ptr %1103, align 4, !tbaa !115
  %1105 = fsub float %1102, %1104
  %1106 = getelementptr inbounds %struct.BMVert, ptr %1093, i64 0, i32 2, i64 2
  %1107 = load float, ptr %1106, align 4, !tbaa !115
  %1108 = getelementptr inbounds %struct.BMVert, ptr %1096, i64 0, i32 2, i64 2
  %1109 = load float, ptr %1108, align 4, !tbaa !115
  %1110 = fsub float %1107, %1109
  %1111 = fneg float %1089
  %1112 = fmul float %1105, %1111
  %1113 = call float @llvm.fmuladd.f32(float %1084, float %1110, float %1112)
  %1114 = fneg float %1079
  %1115 = fmul float %1110, %1114
  %1116 = call float @llvm.fmuladd.f32(float %1089, float %1100, float %1115)
  %1117 = fneg float %1084
  %1118 = fmul float %1100, %1117
  %1119 = call float @llvm.fmuladd.f32(float %1079, float %1105, float %1118)
  %1120 = getelementptr inbounds %struct.BoundVert, ptr %1042, i64 0, i32 7, i32 6, i64 2
  %1121 = load float, ptr %1120, align 4, !tbaa !115
  %1122 = getelementptr inbounds %struct.BoundVert, ptr %1042, i64 0, i32 7, i32 6, i64 1
  %1123 = load float, ptr %1122, align 4, !tbaa !115
  %1124 = fmul float %1123, %1111
  %1125 = call float @llvm.fmuladd.f32(float %1084, float %1121, float %1124)
  %1126 = fmul float %1121, %1114
  %1127 = call float @llvm.fmuladd.f32(float %1089, float %1058, float %1126)
  %1128 = fmul float %1058, %1117
  %1129 = call float @llvm.fmuladd.f32(float %1079, float %1123, float %1128)
  %1130 = fmul float %1116, %1116
  %1131 = call float @llvm.fmuladd.f32(float %1113, float %1113, float %1130)
  %1132 = call float @llvm.fmuladd.f32(float %1119, float %1119, float %1131)
  %1133 = fcmp ogt float %1132, 0x38AA95A5C0000000
  br i1 %1133, label %1134, label %1141

1134:                                             ; preds = %1068
  %1135 = call float @sqrtf(float noundef %1132) #13
  %1136 = fdiv float 1.000000e+00, %1135
  %1137 = fmul float %1113, %1136
  %1138 = fmul float %1116, %1136
  %1139 = fmul float %1119, %1136
  %1140 = fcmp ogt float %1135, 0x3F1A36E2E0000000
  br label %1141

1141:                                             ; preds = %1134, %1068
  %1142 = phi float [ %1138, %1134 ], [ 0.000000e+00, %1068 ]
  %1143 = phi float [ %1137, %1134 ], [ 0.000000e+00, %1068 ]
  %1144 = phi float [ %1139, %1134 ], [ 0.000000e+00, %1068 ]
  %1145 = phi i1 [ %1140, %1134 ], [ false, %1068 ]
  br i1 %1145, label %1146, label %1175

1146:                                             ; preds = %1141
  %1147 = fmul float %1127, %1127
  %1148 = call float @llvm.fmuladd.f32(float %1125, float %1125, float %1147)
  %1149 = call float @llvm.fmuladd.f32(float %1129, float %1129, float %1148)
  %1150 = fcmp ogt float %1149, 0x38AA95A5C0000000
  br i1 %1150, label %1151, label %1158

1151:                                             ; preds = %1146
  %1152 = call float @sqrtf(float noundef %1149) #13
  %1153 = fdiv float 1.000000e+00, %1152
  %1154 = fmul float %1125, %1153
  %1155 = fmul float %1127, %1153
  %1156 = fmul float %1129, %1153
  %1157 = fcmp ogt float %1152, 0x3F1A36E2E0000000
  br label %1158

1158:                                             ; preds = %1151, %1146
  %1159 = phi float [ %1155, %1151 ], [ 0.000000e+00, %1146 ]
  %1160 = phi float [ %1154, %1151 ], [ 0.000000e+00, %1146 ]
  %1161 = phi float [ %1156, %1151 ], [ 0.000000e+00, %1146 ]
  %1162 = phi i1 [ %1157, %1151 ], [ false, %1146 ]
  br i1 %1162, label %1163, label %1175

1163:                                             ; preds = %1158
  %1164 = fmul float %1142, %1159
  %1165 = call float @llvm.fmuladd.f32(float %1143, float %1160, float %1164)
  %1166 = call float @llvm.fmuladd.f32(float %1144, float %1161, float %1165)
  %1167 = call float @llvm.fabs.f32(float %1166)
  %1168 = fadd float %1167, -1.000000e+00
  %1169 = call float @llvm.fabs.f32(float %1168)
  %1170 = fcmp ogt float %1169, 0x3F1A36E2E0000000
  br i1 %1170, label %1171, label %1175

1171:                                             ; preds = %1163
  %1172 = getelementptr inbounds %struct.BoundVert, ptr %1042, i64 0, i32 7, i32 4
  store float %1143, ptr %1172, align 4, !tbaa !115
  %1173 = getelementptr inbounds %struct.BoundVert, ptr %1042, i64 0, i32 7, i32 4, i64 1
  store float %1142, ptr %1173, align 4, !tbaa !115
  %1174 = getelementptr inbounds %struct.BoundVert, ptr %1042, i64 0, i32 7, i32 4, i64 2
  store float %1144, ptr %1174, align 4, !tbaa !115
  br label %1175

1175:                                             ; preds = %1064, %1141, %1158, %1163, %1171
  call fastcc void @calculate_profile(ptr noundef %0, ptr noundef nonnull %1042)
  br label %1176

1176:                                             ; preds = %1175, %1048, %1044
  %1177 = icmp eq i8 %2, 0
  br i1 %1177, label %1246, label %1178

1178:                                             ; preds = %1176
  %1179 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 5
  store i8 0, ptr %1179, align 8, !tbaa !201
  %1180 = load ptr, ptr %14, align 8, !tbaa !93
  %1181 = getelementptr inbounds %struct.VMesh, ptr %1180, i64 0, i32 1
  %1182 = load ptr, ptr %1181, align 8, !tbaa !150
  br label %1183

1183:                                             ; preds = %1200, %1178
  %1184 = phi i8 [ 0, %1178 ], [ %1202, %1200 ]
  %1185 = phi ptr [ %1182, %1178 ], [ %1203, %1200 ]
  %1186 = getelementptr inbounds %struct.BoundVert, ptr %1185, i64 0, i32 8
  store i8 0, ptr %1186, align 8, !tbaa !195
  %1187 = getelementptr inbounds %struct.BoundVert, ptr %1185, i64 0, i32 3
  %1188 = getelementptr inbounds %struct.BoundVert, ptr %1185, i64 0, i32 4
  br label %1189

1189:                                             ; preds = %1193, %1183
  %1190 = phi ptr [ %1187, %1183 ], [ %1191, %1193 ]
  %1191 = load ptr, ptr %1190, align 8, !tbaa !113
  %1192 = icmp eq ptr %1191, null
  br i1 %1192, label %1200, label %1193

1193:                                             ; preds = %1189
  %1194 = getelementptr inbounds %struct.EdgeHalf, ptr %1191, i64 0, i32 14
  %1195 = load i8, ptr %1194, align 2, !tbaa !132
  %1196 = load i8, ptr %1186, align 8, !tbaa !195
  %1197 = or i8 %1196, %1195
  store i8 %1197, ptr %1186, align 8, !tbaa !195
  %1198 = load ptr, ptr %1188, align 8, !tbaa !194
  %1199 = icmp eq ptr %1191, %1198
  br i1 %1199, label %1200, label %1189, !llvm.loop !232

1200:                                             ; preds = %1193, %1189
  %1201 = load i8, ptr %1186, align 8, !tbaa !195
  %1202 = or i8 %1201, %1184
  %1203 = load ptr, ptr %1185, align 8, !tbaa !158
  %1204 = icmp eq ptr %1203, %1182
  br i1 %1204, label %1205, label %1183, !llvm.loop !233

1205:                                             ; preds = %1200
  store i8 %1202, ptr %1179, align 8, !tbaa !201
  %1206 = load i8, ptr %16, align 8, !tbaa !45
  %1207 = icmp eq i8 %1206, 0
  %1208 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 2
  %1209 = load i32, ptr %1208, align 8, !tbaa !148
  %1210 = icmp eq i32 %1209, 2
  br i1 %1207, label %1221, label %1211

1211:                                             ; preds = %1205
  br i1 %1210, label %1212, label %1214

1212:                                             ; preds = %1211
  %1213 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 4
  store i32 0, ptr %1213, align 8, !tbaa !160
  br label %1246

1214:                                             ; preds = %1211
  %1215 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 5
  %1216 = load i32, ptr %1215, align 8, !tbaa !43
  %1217 = icmp sgt i32 %1216, 1
  %1218 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 4
  br i1 %1217, label %1219, label %1220

1219:                                             ; preds = %1214
  store i32 2, ptr %1218, align 8, !tbaa !160
  br label %1246

1220:                                             ; preds = %1214
  store i32 1, ptr %1218, align 8, !tbaa !160
  br label %1246

1221:                                             ; preds = %1205
  br i1 %1210, label %1222, label %1227

1222:                                             ; preds = %1221
  %1223 = load i32, ptr %101, align 8, !tbaa !87
  %1224 = icmp eq i32 %1223, 3
  br i1 %1224, label %1225, label %1227

1225:                                             ; preds = %1222
  %1226 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 4
  store i32 0, ptr %1226, align 8, !tbaa !160
  br label %1246

1227:                                             ; preds = %1222, %1221
  %1228 = load i32, ptr %1045, align 4, !tbaa !88
  %1229 = icmp eq i32 %1228, 2
  br i1 %1229, label %1230, label %1232

1230:                                             ; preds = %1227
  %1231 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 4
  store i32 4, ptr %1231, align 8, !tbaa !160
  br label %1246

1232:                                             ; preds = %1227
  %1233 = getelementptr inbounds %struct.EdgeHalf, ptr %100, i64 0, i32 7
  %1234 = load i32, ptr %1233, align 8, !tbaa !104
  %1235 = icmp eq i32 %1234, 1
  %1236 = icmp eq i32 %1228, 1
  %1237 = or i1 %1236, %1235
  br i1 %1237, label %1238, label %1244

1238:                                             ; preds = %1232
  %1239 = icmp eq i32 %1209, 3
  %1240 = and i1 %1239, %1236
  %1241 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 4
  br i1 %1240, label %1242, label %1243

1242:                                             ; preds = %1238
  store i32 3, ptr %1241, align 8, !tbaa !160
  br label %1246

1243:                                             ; preds = %1238
  store i32 1, ptr %1241, align 8, !tbaa !160
  br label %1246

1244:                                             ; preds = %1232
  %1245 = getelementptr inbounds %struct.VMesh, ptr %15, i64 0, i32 4
  store i32 2, ptr %1245, align 8, !tbaa !160
  br label %1246

1246:                                             ; preds = %1176, %1225, %1244, %1243, %1242, %1230, %1212, %1220, %1219, %353
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  ret void
}

declare void @BM_vert_kill(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(write) uwtable
define internal fastcc void @find_even_superellipse_params(i32 noundef %0, float noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #4 {
  %4 = fcmp oeq float %1, 2.000000e+00
  %5 = fcmp oeq float %1, 1.000000e+00
  %6 = or i1 %4, %5
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = and i32 %0, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %7
  %11 = fcmp oeq float %1, 0.000000e+00
  %12 = fcmp oeq float %1, 4.000000e+00
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %10, %3
  %15 = icmp slt i32 %0, 0
  br i1 %15, label %150, label %16

16:                                               ; preds = %14
  %17 = sitofp i32 %0 to float
  %18 = add nuw i32 %0, 1
  %19 = zext i32 %18 to i64
  br label %20

20:                                               ; preds = %16, %20
  %21 = phi i64 [ 0, %16 ], [ %27, %20 ]
  %22 = trunc i64 %21 to i32
  %23 = sitofp i32 %22 to float
  %24 = fmul float %23, 2.000000e+00
  %25 = fdiv float %24, %17
  %26 = getelementptr inbounds float, ptr %2, i64 %21
  store float %25, ptr %26, align 4, !tbaa !115
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %19
  br i1 %28, label %150, label %20, !llvm.loop !236

29:                                               ; preds = %10, %7
  %30 = fcmp oeq float %1, 0.000000e+00
  %31 = fcmp oeq float %1, 4.000000e+00
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %29
  %34 = sdiv i32 %0, 2
  %35 = sitofp i32 %34 to float
  %36 = tail call float @llvm.fmuladd.f32(float %35, float 2.000000e+00, float 0xBFF6A09E60000000)
  %37 = fmul float %35, 2.000000e+00
  %38 = tail call float @llvm.fmuladd.f32(float %37, float %35, float -1.000000e+00)
  %39 = fdiv float %36, %38
  %40 = icmp sgt i32 %0, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = zext nneg i32 %0 to i64
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i64 [ 0, %41 ], [ %49, %43 ]
  %45 = trunc i64 %44 to i32
  %46 = sitofp i32 %45 to float
  %47 = fmul float %39, %46
  %48 = getelementptr inbounds float, ptr %2, i64 %44
  store float %47, ptr %48, align 4, !tbaa !115
  %49 = add nuw nsw i64 %44, 1
  %50 = icmp eq i64 %49, %42
  br i1 %50, label %51, label %43, !llvm.loop !237

51:                                               ; preds = %43, %33
  %52 = sext i32 %0 to i64
  %53 = getelementptr inbounds float, ptr %2, i64 %52
  store float 2.000000e+00, ptr %53, align 4, !tbaa !115
  br label %54

54:                                               ; preds = %29, %51
  %55 = mul nsw i32 %0, %0
  %56 = sitofp i32 %55 to float
  %57 = fdiv float 2.000000e+00, %56
  %58 = fmul float %57, 2.000000e+00
  %59 = add nsw i32 %0, -1
  %60 = icmp sgt i32 %0, 1
  %61 = fcmp une float %1, 4.000000e+00
  %62 = fdiv float 2.000000e+00, %1
  %63 = fpext float %62 to double
  %64 = fsub float %58, %57
  %65 = tail call float @llvm.fabs.f32(float %64)
  %66 = fcmp ogt float %65, 0x3EB0C6F7A0000000
  br i1 %66, label %71, label %135

67:                                               ; preds = %130
  %68 = fsub float %131, %132
  %69 = tail call float @llvm.fabs.f32(float %68)
  %70 = fcmp ogt float %69, 0x3EB0C6F7A0000000
  br i1 %70, label %71, label %135, !llvm.loop !238

71:                                               ; preds = %54, %67
  %72 = phi i32 [ %133, %67 ], [ 0, %54 ]
  %73 = phi float [ %131, %67 ], [ %58, %54 ]
  %74 = phi float [ %132, %67 ], [ %57, %54 ]
  %75 = fadd float %73, %74
  %76 = fmul float %75, 5.000000e-01
  br i1 %60, label %77, label %85

77:                                               ; preds = %71, %77
  %78 = phi float [ %80, %77 ], [ 0.000000e+00, %71 ]
  %79 = phi i32 [ %82, %77 ], [ 0, %71 ]
  %80 = tail call fastcc float @find_superellipse_chord_u(float noundef %78, float noundef %76, float noundef %1)
  %81 = fcmp une float %80, -1.000000e+00
  %82 = add nuw nsw i32 %79, 1
  %83 = icmp slt i32 %82, %59
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %77, label %85, !llvm.loop !239

85:                                               ; preds = %77, %71
  %86 = phi float [ 0.000000e+00, %71 ], [ %80, %77 ]
  %87 = fcmp oeq float %86, -1.000000e+00
  br i1 %87, label %130, label %88

88:                                               ; preds = %85
  %89 = fcmp ugt float %86, 0.000000e+00
  br i1 %89, label %90, label %116

90:                                               ; preds = %88
  %91 = fcmp ult float %86, 2.000000e+00
  br i1 %91, label %92, label %116

92:                                               ; preds = %90
  br i1 %30, label %93, label %99

93:                                               ; preds = %92
  %94 = fcmp olt float %86, 1.000000e+00
  br i1 %94, label %95, label %97

95:                                               ; preds = %93
  %96 = fsub float 1.000000e+00, %86
  br label %116

97:                                               ; preds = %93
  %98 = fadd float %86, -1.000000e+00
  br label %116

99:                                               ; preds = %92
  br i1 %31, label %100, label %104

100:                                              ; preds = %99
  %101 = fcmp olt float %86, 1.000000e+00
  br i1 %101, label %116, label %102

102:                                              ; preds = %100
  %103 = fsub float 2.000000e+00, %86
  br label %116

104:                                              ; preds = %99
  %105 = fmul float %86, 0x400921FB60000000
  %106 = fmul float %105, 2.500000e-01
  %107 = tail call float @sinf(float noundef %106) #13
  %108 = tail call float @cosf(float noundef %106) #13
  br i1 %61, label %109, label %116

109:                                              ; preds = %104
  %110 = fpext float %107 to double
  %111 = tail call double @pow(double noundef %110, double noundef %63) #13
  %112 = fptrunc double %111 to float
  %113 = fpext float %108 to double
  %114 = tail call double @pow(double noundef %113, double noundef %63) #13
  %115 = fptrunc double %114 to float
  br label %116

116:                                              ; preds = %100, %90, %88, %95, %97, %102, %104, %109
  %117 = phi float [ %96, %95 ], [ 0.000000e+00, %97 ], [ %103, %102 ], [ %115, %109 ], [ %108, %104 ], [ 1.000000e+00, %88 ], [ 0.000000e+00, %90 ], [ 1.000000e+00, %100 ]
  %118 = phi float [ 0.000000e+00, %95 ], [ %98, %97 ], [ 1.000000e+00, %102 ], [ %112, %109 ], [ %107, %104 ], [ 0.000000e+00, %88 ], [ 1.000000e+00, %90 ], [ %86, %100 ]
  %119 = fsub float 1.000000e+00, %118
  %120 = fsub float 0.000000e+00, %117
  %121 = fmul float %120, %120
  %122 = tail call float @llvm.fmuladd.f32(float %119, float %119, float %121)
  %123 = fsub float %122, %76
  %124 = tail call float @llvm.fabs.f32(float %123)
  %125 = fcmp ugt float %124, 0x3EB0C6F7A0000000
  br i1 %125, label %126, label %135

126:                                              ; preds = %116
  %127 = fcmp olt float %122, %76
  %128 = select i1 %127, float %76, float %73
  %129 = select i1 %127, float %74, float %76
  br label %130

130:                                              ; preds = %126, %85
  %131 = phi float [ %76, %85 ], [ %128, %126 ]
  %132 = phi float [ %74, %85 ], [ %129, %126 ]
  %133 = add nuw nsw i32 %72, 1
  %134 = icmp eq i32 %133, 40
  br i1 %134, label %135, label %67, !llvm.loop !238

135:                                              ; preds = %67, %116, %130, %54
  %136 = phi float [ undef, %54 ], [ %76, %130 ], [ %76, %116 ], [ %76, %67 ]
  %137 = icmp sgt i32 %0, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = zext nneg i32 %0 to i64
  br label %140

140:                                              ; preds = %138, %140
  %141 = phi i64 [ 0, %138 ], [ %145, %140 ]
  %142 = phi float [ 0.000000e+00, %138 ], [ %144, %140 ]
  %143 = getelementptr inbounds float, ptr %2, i64 %141
  store float %142, ptr %143, align 4, !tbaa !115
  %144 = tail call fastcc float @find_superellipse_chord_u(float noundef %142, float noundef %136, float noundef %1)
  %145 = add nuw nsw i64 %141, 1
  %146 = icmp eq i64 %145, %139
  br i1 %146, label %147, label %140, !llvm.loop !240

147:                                              ; preds = %140, %135
  %148 = sext i32 %0 to i64
  %149 = getelementptr inbounds float, ptr %2, i64 %148
  store float 2.000000e+00, ptr %149, align 4, !tbaa !115
  br label %150

150:                                              ; preds = %20, %14, %147
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nofree nounwind memory(write) uwtable
define internal fastcc float @find_superellipse_chord_u(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #4 {
  %4 = fcmp oeq float %1, 0.000000e+00
  br i1 %4, label %158, label %5

5:                                                ; preds = %3
  %6 = fcmp ole float %0, 0.000000e+00
  br i1 %6, label %43, label %7

7:                                                ; preds = %5
  %8 = fcmp ult float %0, 2.000000e+00
  br i1 %8, label %9, label %43

9:                                                ; preds = %7
  %10 = fcmp oeq float %2, 1.000000e+00
  br i1 %10, label %11, label %14

11:                                               ; preds = %9
  %12 = fmul float %0, 5.000000e-01
  %13 = fsub float 1.000000e+00, %12
  br label %43

14:                                               ; preds = %9
  %15 = fcmp oeq float %2, 0.000000e+00
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = fcmp olt float %0, 1.000000e+00
  br i1 %17, label %18, label %20

18:                                               ; preds = %16
  %19 = fsub float 1.000000e+00, %0
  br label %43

20:                                               ; preds = %16
  %21 = fadd float %0, -1.000000e+00
  br label %43

22:                                               ; preds = %14
  %23 = fcmp oeq float %2, 4.000000e+00
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = fcmp olt float %0, 1.000000e+00
  br i1 %25, label %43, label %26

26:                                               ; preds = %24
  %27 = fsub float 2.000000e+00, %0
  br label %43

28:                                               ; preds = %22
  %29 = fmul float %0, 0x400921FB60000000
  %30 = fmul float %29, 2.500000e-01
  %31 = tail call float @sinf(float noundef %30) #13
  %32 = tail call float @cosf(float noundef %30) #13
  %33 = fcmp une float %2, 4.000000e+00
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = fpext float %31 to double
  %36 = fdiv float 2.000000e+00, %2
  %37 = fpext float %36 to double
  %38 = tail call double @pow(double noundef %35, double noundef %37) #13
  %39 = fptrunc double %38 to float
  %40 = fpext float %32 to double
  %41 = tail call double @pow(double noundef %40, double noundef %37) #13
  %42 = fptrunc double %41 to float
  br label %43

43:                                               ; preds = %24, %7, %5, %11, %18, %20, %26, %28, %34
  %44 = phi float [ %13, %11 ], [ %19, %18 ], [ 0.000000e+00, %20 ], [ %27, %26 ], [ %42, %34 ], [ %32, %28 ], [ 1.000000e+00, %5 ], [ 0.000000e+00, %7 ], [ 1.000000e+00, %24 ]
  %45 = phi float [ %12, %11 ], [ 0.000000e+00, %18 ], [ %21, %20 ], [ 1.000000e+00, %26 ], [ %39, %34 ], [ %31, %28 ], [ 0.000000e+00, %5 ], [ 1.000000e+00, %7 ], [ %0, %24 ]
  %46 = fsub float 1.000000e+00, %45
  %47 = fsub float 0.000000e+00, %44
  %48 = fmul float %47, %47
  %49 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %48)
  %50 = fsub float %1, %49
  %51 = tail call float @llvm.fabs.f32(float %50)
  %52 = fcmp ugt float %51, 0x3F1A36E2E0000000
  br i1 %52, label %53, label %158

53:                                               ; preds = %43
  %54 = fcmp ogt float %50, 0x3F1A36E2E0000000
  br i1 %54, label %158, label %55

55:                                               ; preds = %53
  %56 = fcmp oge float %0, 2.000000e+00
  %57 = fcmp oeq float %2, 1.000000e+00
  %58 = fcmp oeq float %2, 0.000000e+00
  %59 = fcmp oeq float %2, 4.000000e+00
  %60 = fmul float %0, 0x400921FB60000000
  %61 = fmul float %60, 2.500000e-01
  %62 = fcmp une float %2, 4.000000e+00
  %63 = fdiv float 2.000000e+00, %2
  %64 = fpext float %63 to double
  %65 = fcmp olt float %0, 1.000000e+00
  %66 = fsub float 2.000000e+00, %0
  %67 = fcmp olt float %0, 1.000000e+00
  %68 = fadd float %0, -1.000000e+00
  %69 = fsub float 1.000000e+00, %0
  %70 = fmul float %0, 5.000000e-01
  %71 = fsub float 1.000000e+00, %70
  %72 = fcmp oeq float %2, 1.000000e+00
  %73 = fcmp oeq float %2, 0.000000e+00
  %74 = fcmp oeq float %2, 4.000000e+00
  %75 = fcmp une float %2, 4.000000e+00
  %76 = fdiv float 2.000000e+00, %2
  %77 = fpext float %76 to double
  %78 = or i1 %56, %57
  %79 = or i1 %78, %6
  %80 = select i1 %56, float 0.000000e+00, float %71
  %81 = select i1 %6, float 1.000000e+00, float %80
  %82 = select i1 %56, float 1.000000e+00, float %70
  %83 = select i1 %6, float 0.000000e+00, float %82
  %84 = select i1 %67, float %69, float 0.000000e+00
  %85 = select i1 %67, float 0.000000e+00, float %68
  br label %86

86:                                               ; preds = %55, %151
  %87 = phi float [ %153, %151 ], [ 2.000000e+00, %55 ]
  %88 = phi float [ %154, %151 ], [ %0, %55 ]
  %89 = fadd float %87, %88
  %90 = fmul float %89, 5.000000e-01
  %91 = or i1 %79, %58
  %92 = select i1 %79, float %81, float %84
  %93 = select i1 %79, float %83, float %85
  br i1 %91, label %107, label %94

94:                                               ; preds = %86
  br i1 %59, label %95, label %97

95:                                               ; preds = %94
  br i1 %65, label %107, label %96

96:                                               ; preds = %95
  br label %107

97:                                               ; preds = %94
  %98 = tail call float @sinf(float noundef %61) #13
  %99 = tail call float @cosf(float noundef %61) #13
  br i1 %62, label %100, label %107

100:                                              ; preds = %97
  %101 = fpext float %98 to double
  %102 = tail call double @pow(double noundef %101, double noundef %64) #13
  %103 = fptrunc double %102 to float
  %104 = fpext float %99 to double
  %105 = tail call double @pow(double noundef %104, double noundef %64) #13
  %106 = fptrunc double %105 to float
  br label %107

107:                                              ; preds = %86, %95, %96, %97, %100
  %108 = phi float [ %66, %96 ], [ %106, %100 ], [ %99, %97 ], [ %92, %86 ], [ 1.000000e+00, %95 ]
  %109 = phi float [ 1.000000e+00, %96 ], [ %103, %100 ], [ %98, %97 ], [ %93, %86 ], [ %0, %95 ]
  %110 = fcmp ugt float %90, 0.000000e+00
  br i1 %110, label %111, label %141

111:                                              ; preds = %107
  %112 = fcmp ult float %90, 2.000000e+00
  br i1 %112, label %113, label %141

113:                                              ; preds = %111
  br i1 %72, label %114, label %117

114:                                              ; preds = %113
  %115 = fmul float %90, 5.000000e-01
  %116 = fsub float 1.000000e+00, %115
  br label %141

117:                                              ; preds = %113
  br i1 %73, label %118, label %124

118:                                              ; preds = %117
  %119 = fcmp olt float %90, 1.000000e+00
  br i1 %119, label %120, label %122

120:                                              ; preds = %118
  %121 = fsub float 1.000000e+00, %90
  br label %141

122:                                              ; preds = %118
  %123 = fadd float %90, -1.000000e+00
  br label %141

124:                                              ; preds = %117
  br i1 %74, label %125, label %129

125:                                              ; preds = %124
  %126 = fcmp olt float %90, 1.000000e+00
  br i1 %126, label %141, label %127

127:                                              ; preds = %125
  %128 = fsub float 2.000000e+00, %90
  br label %141

129:                                              ; preds = %124
  %130 = fmul float %90, 0x400921FB60000000
  %131 = fmul float %130, 2.500000e-01
  %132 = tail call float @sinf(float noundef %131) #13
  %133 = tail call float @cosf(float noundef %131) #13
  br i1 %75, label %134, label %141

134:                                              ; preds = %129
  %135 = fpext float %132 to double
  %136 = tail call double @pow(double noundef %135, double noundef %77) #13
  %137 = fptrunc double %136 to float
  %138 = fpext float %133 to double
  %139 = tail call double @pow(double noundef %138, double noundef %77) #13
  %140 = fptrunc double %139 to float
  br label %141

141:                                              ; preds = %125, %111, %107, %114, %120, %122, %127, %129, %134
  %142 = phi float [ %116, %114 ], [ %121, %120 ], [ 0.000000e+00, %122 ], [ %128, %127 ], [ %140, %134 ], [ %133, %129 ], [ 1.000000e+00, %107 ], [ 0.000000e+00, %111 ], [ 1.000000e+00, %125 ]
  %143 = phi float [ %115, %114 ], [ 0.000000e+00, %120 ], [ %123, %122 ], [ 1.000000e+00, %127 ], [ %137, %134 ], [ %132, %129 ], [ 0.000000e+00, %107 ], [ 1.000000e+00, %111 ], [ %90, %125 ]
  %144 = fsub float %143, %109
  %145 = fsub float %142, %108
  %146 = fmul float %145, %145
  %147 = tail call float @llvm.fmuladd.f32(float %144, float %144, float %146)
  %148 = fsub float %1, %147
  %149 = tail call float @llvm.fabs.f32(float %148)
  %150 = fcmp ugt float %149, 0x3F1A36E2E0000000
  br i1 %150, label %151, label %158

151:                                              ; preds = %141
  %152 = fcmp olt float %147, %1
  %153 = select i1 %152, float %87, float %90
  %154 = select i1 %152, float %90, float %88
  %155 = fsub float %153, %154
  %156 = tail call float @llvm.fabs.f32(float %155)
  %157 = fcmp ogt float %156, 0x3EB0C6F7A0000000
  br i1 %157, label %86, label %158, !llvm.loop !241

158:                                              ; preds = %151, %141, %53, %43, %3
  %159 = phi float [ %0, %3 ], [ 2.000000e+00, %43 ], [ -1.000000e+00, %53 ], [ %90, %141 ], [ %90, %151 ]
  ret float %159
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sinf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @cosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #6

declare float @BM_edge_calc_length(ptr noundef) local_unnamed_addr #3

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #3

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #3

declare void @bmiter__edge_of_vert_begin(ptr noundef) #3

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #3

declare void @bmiter__loop_of_vert_begin(ptr noundef) #3

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #3

declare void @bmiter__face_of_edge_begin(ptr noundef) #3

declare ptr @bmiter__face_of_edge_step(ptr noundef) #3

declare void @bmiter__loop_of_face_begin(ptr noundef) #3

declare ptr @bmiter__loop_of_face_step(ptr noundef) #3

declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #3

declare float @defvert_find_weight(ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @BM_elem_float_data_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_face_edge_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare float @angle_v3v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BM_edge_loop_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_face_other_edge_loop(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @CustomData_layer_has_math(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @CustomData_data_equals(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @offset_in_plane(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i8 noundef zeroext %2, ptr nocapture noundef writeonly %3) unnamed_addr #8 {
  %5 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 13
  %6 = load i8, ptr %5, align 1, !tbaa !105
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 3
  %11 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 2
  %12 = select i1 %7, ptr %11, ptr %10
  %13 = load ptr, ptr %12, align 8, !tbaa !113
  %14 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = icmp eq ptr %15, %13
  %17 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  %19 = icmp eq ptr %18, %13
  %20 = select i1 %19, ptr %15, ptr null
  %21 = select i1 %16, ptr %18, ptr %20
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %23 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %24 = load float, ptr %22, align 4, !tbaa !115
  %25 = load float, ptr %23, align 4, !tbaa !115
  %26 = fsub float %24, %25
  %27 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !115
  %29 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !115
  %31 = fsub float %28, %30
  %32 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2, i64 2
  %33 = load float, ptr %32, align 4, !tbaa !115
  %34 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !115
  %36 = fsub float %33, %35
  %37 = fmul float %31, %31
  %38 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %37)
  %39 = tail call float @llvm.fmuladd.f32(float %36, float %36, float %38)
  %40 = fcmp ogt float %39, 0x38AA95A5C0000000
  br i1 %40, label %41, label %47

41:                                               ; preds = %4
  %42 = tail call float @sqrtf(float noundef %39) #13
  %43 = fdiv float 1.000000e+00, %42
  %44 = fmul float %26, %43
  %45 = fmul float %31, %43
  %46 = fmul float %36, %43
  br label %47

47:                                               ; preds = %4, %41
  %48 = phi float [ %45, %41 ], [ 0.000000e+00, %4 ]
  %49 = phi float [ %44, %41 ], [ 0.000000e+00, %4 ]
  %50 = phi float [ %46, %41 ], [ 0.000000e+00, %4 ]
  %51 = icmp eq ptr %1, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = load float, ptr %1, align 4, !tbaa !115
  %54 = getelementptr inbounds float, ptr %1, i64 1
  %55 = load float, ptr %54, align 4, !tbaa !115
  %56 = getelementptr inbounds float, ptr %1, i64 2
  %57 = load float, ptr %56, align 4, !tbaa !115
  br label %64

58:                                               ; preds = %47
  %59 = tail call float @llvm.fabs.f32(float %49)
  %60 = tail call float @llvm.fabs.f32(float %48)
  %61 = fcmp olt float %59, %60
  %62 = select i1 %61, float 0.000000e+00, float 1.000000e+00
  %63 = select i1 %61, float 1.000000e+00, float 0.000000e+00
  br label %64

64:                                               ; preds = %58, %52
  %65 = phi float [ %57, %52 ], [ 0.000000e+00, %58 ]
  %66 = phi float [ %55, %52 ], [ %62, %58 ]
  %67 = phi float [ %53, %52 ], [ %63, %58 ]
  %68 = icmp eq i8 %2, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = fneg float %50
  %71 = fmul float %66, %70
  %72 = tail call float @llvm.fmuladd.f32(float %48, float %65, float %71)
  %73 = fneg float %49
  %74 = fmul float %65, %73
  %75 = tail call float @llvm.fmuladd.f32(float %50, float %67, float %74)
  %76 = fneg float %48
  %77 = fmul float %67, %76
  %78 = tail call float @llvm.fmuladd.f32(float %49, float %66, float %77)
  br label %89

79:                                               ; preds = %64
  %80 = fneg float %65
  %81 = fmul float %48, %80
  %82 = tail call float @llvm.fmuladd.f32(float %66, float %50, float %81)
  %83 = fneg float %67
  %84 = fmul float %50, %83
  %85 = tail call float @llvm.fmuladd.f32(float %65, float %49, float %84)
  %86 = fneg float %66
  %87 = fmul float %49, %86
  %88 = tail call float @llvm.fmuladd.f32(float %67, float %48, float %87)
  br label %89

89:                                               ; preds = %79, %69
  %90 = phi float [ %88, %79 ], [ %78, %69 ]
  %91 = phi float [ %85, %79 ], [ %75, %69 ]
  %92 = phi float [ %82, %79 ], [ %72, %69 ]
  %93 = fmul float %91, %91
  %94 = tail call float @llvm.fmuladd.f32(float %92, float %92, float %93)
  %95 = tail call float @llvm.fmuladd.f32(float %90, float %90, float %94)
  %96 = fcmp ogt float %95, 0x38AA95A5C0000000
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = tail call float @sqrtf(float noundef %95) #13
  %99 = fdiv float 1.000000e+00, %98
  %100 = fmul float %92, %99
  %101 = fmul float %91, %99
  %102 = fmul float %90, %99
  br label %103

103:                                              ; preds = %89, %97
  %104 = phi float [ %101, %97 ], [ 0.000000e+00, %89 ]
  %105 = phi float [ %100, %97 ], [ 0.000000e+00, %89 ]
  %106 = phi float [ %102, %97 ], [ 0.000000e+00, %89 ]
  %107 = load float, ptr %23, align 4, !tbaa !115
  store float %107, ptr %3, align 4, !tbaa !115
  %108 = load float, ptr %29, align 4, !tbaa !115
  %109 = getelementptr inbounds float, ptr %3, i64 1
  store float %108, ptr %109, align 4, !tbaa !115
  %110 = load float, ptr %34, align 4, !tbaa !115
  %111 = getelementptr inbounds float, ptr %3, i64 2
  store float %110, ptr %111, align 4, !tbaa !115
  %112 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 8
  %113 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 9
  %114 = select i1 %68, ptr %113, ptr %112
  %115 = load float, ptr %114, align 4, !tbaa !115
  %116 = tail call float @llvm.fmuladd.f32(float %105, float %115, float %107)
  store float %116, ptr %3, align 4, !tbaa !115
  %117 = tail call float @llvm.fmuladd.f32(float %104, float %115, float %108)
  store float %117, ptr %109, align 4, !tbaa !115
  %118 = tail call float @llvm.fmuladd.f32(float %106, float %115, float %110)
  store float %118, ptr %111, align 4, !tbaa !115
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_profile_params(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 2, i32 1
  %8 = load float, ptr %7, align 4, !tbaa !115
  store float %8, ptr %4, align 4, !tbaa !115
  %9 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 2, i32 1, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !115
  %11 = getelementptr inbounds float, ptr %4, i64 1
  store float %10, ptr %11, align 4, !tbaa !115
  %12 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 2, i32 1, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !115
  %14 = getelementptr inbounds float, ptr %4, i64 2
  store float %13, ptr %14, align 4, !tbaa !115
  %15 = load ptr, ptr %1, align 8, !tbaa !158
  %16 = getelementptr inbounds %struct.BoundVert, ptr %15, i64 0, i32 2, i32 1
  %17 = load float, ptr %16, align 4, !tbaa !115
  store float %17, ptr %5, align 4, !tbaa !115
  %18 = getelementptr inbounds %struct.BoundVert, ptr %15, i64 0, i32 2, i32 1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !115
  %20 = getelementptr inbounds float, ptr %5, i64 1
  store float %19, ptr %20, align 4, !tbaa !115
  %21 = getelementptr inbounds %struct.BoundVert, ptr %15, i64 0, i32 2, i32 1, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !115
  %23 = getelementptr inbounds float, ptr %5, i64 2
  store float %22, ptr %23, align 4, !tbaa !115
  %24 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7
  %25 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !157
  %27 = icmp eq ptr %26, null
  br i1 %27, label %258, label %28

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 6
  %30 = load float, ptr %29, align 4, !tbaa !44
  store float %30, ptr %24, align 8, !tbaa !171
  %31 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 6
  %32 = getelementptr inbounds %struct.EdgeHalf, ptr %26, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !97
  %34 = getelementptr inbounds %struct.BMEdge, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !73
  %36 = getelementptr inbounds %struct.BMVert, ptr %35, i64 0, i32 2
  %37 = getelementptr inbounds %struct.BMEdge, ptr %33, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !76
  %39 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2
  %40 = load float, ptr %36, align 4, !tbaa !115
  %41 = load float, ptr %39, align 4, !tbaa !115
  %42 = fsub float %40, %41
  store float %42, ptr %31, align 4, !tbaa !115
  %43 = getelementptr inbounds %struct.BMVert, ptr %35, i64 0, i32 2, i64 1
  %44 = load float, ptr %43, align 4, !tbaa !115
  %45 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !115
  %47 = fsub float %44, %46
  %48 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 6, i64 1
  store float %47, ptr %48, align 4, !tbaa !115
  %49 = getelementptr inbounds %struct.BMVert, ptr %35, i64 0, i32 2, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !115
  %51 = getelementptr inbounds %struct.BMVert, ptr %38, i64 0, i32 2, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !115
  %53 = fsub float %50, %52
  %54 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 6, i64 2
  store float %53, ptr %54, align 4, !tbaa !115
  %55 = fmul float %47, %47
  %56 = tail call float @llvm.fmuladd.f32(float %42, float %42, float %55)
  %57 = tail call float @llvm.fmuladd.f32(float %53, float %53, float %56)
  %58 = fcmp ogt float %57, 0x38AA95A5C0000000
  br i1 %58, label %59, label %68

59:                                               ; preds = %28
  %60 = tail call float @sqrtf(float noundef %57) #13
  %61 = fdiv float 1.000000e+00, %60
  %62 = load float, ptr %31, align 4, !tbaa !115
  %63 = fmul float %62, %61
  store float %63, ptr %31, align 4, !tbaa !115
  %64 = load float, ptr %48, align 4, !tbaa !115
  %65 = fmul float %61, %64
  store float %65, ptr %48, align 4, !tbaa !115
  %66 = load float, ptr %54, align 4, !tbaa !115
  %67 = fmul float %61, %66
  br label %69

68:                                               ; preds = %28
  store float 0.000000e+00, ptr %31, align 4, !tbaa !115
  store float 0.000000e+00, ptr %48, align 4, !tbaa !115
  br label %69

69:                                               ; preds = %59, %68
  %70 = phi float [ 0.000000e+00, %68 ], [ %67, %59 ]
  store float %70, ptr %54, align 4, !tbaa !115
  %71 = load ptr, ptr %32, align 8, !tbaa !97
  %72 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  %73 = getelementptr inbounds %struct.BMEdge, ptr %71, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !73
  %75 = getelementptr inbounds %struct.BMVert, ptr %74, i64 0, i32 2
  %76 = getelementptr inbounds %struct.BMEdge, ptr %71, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !76
  %78 = getelementptr inbounds %struct.BMVert, ptr %77, i64 0, i32 2
  %79 = call i32 @isect_line_line_v3(ptr noundef nonnull %75, ptr noundef nonnull %78, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %72, ptr noundef nonnull %3) #13
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %69
  %82 = load ptr, ptr %73, align 8, !tbaa !73
  %83 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 2
  %84 = load float, ptr %83, align 4, !tbaa !115
  store float %84, ptr %72, align 4, !tbaa !115
  %85 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 2, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !115
  %87 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 2, i64 1
  store float %86, ptr %87, align 4, !tbaa !115
  %88 = getelementptr inbounds %struct.BMVert, ptr %82, i64 0, i32 2, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !115
  %90 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 2, i64 2
  store float %89, ptr %90, align 4, !tbaa !115
  br label %91

91:                                               ; preds = %69, %81
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  %92 = load float, ptr %4, align 4, !tbaa !115
  %93 = load float, ptr %31, align 4, !tbaa !115
  %94 = fadd float %92, %93
  store float %94, ptr %6, align 4, !tbaa !115
  %95 = load float, ptr %11, align 4, !tbaa !115
  %96 = load float, ptr %48, align 4, !tbaa !115
  %97 = fadd float %95, %96
  %98 = getelementptr inbounds float, ptr %6, i64 1
  store float %97, ptr %98, align 4, !tbaa !115
  %99 = load float, ptr %14, align 4, !tbaa !115
  %100 = load float, ptr %54, align 4, !tbaa !115
  %101 = fadd float %99, %100
  %102 = getelementptr inbounds float, ptr %6, i64 2
  store float %101, ptr %102, align 4, !tbaa !115
  %103 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1
  %104 = call zeroext i8 @isect_line_plane_v3(ptr noundef nonnull %103, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %72, ptr noundef nonnull %31) #13
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %91
  %107 = load float, ptr %4, align 4, !tbaa !115
  store float %107, ptr %103, align 4, !tbaa !115
  %108 = load float, ptr %11, align 4, !tbaa !115
  %109 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1, i64 1
  store float %108, ptr %109, align 4, !tbaa !115
  %110 = load float, ptr %14, align 4, !tbaa !115
  %111 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1, i64 2
  store float %110, ptr %111, align 4, !tbaa !115
  br label %112

112:                                              ; preds = %106, %91
  %113 = load float, ptr %5, align 4, !tbaa !115
  %114 = load float, ptr %31, align 4, !tbaa !115
  %115 = fadd float %113, %114
  store float %115, ptr %6, align 4, !tbaa !115
  %116 = load float, ptr %20, align 4, !tbaa !115
  %117 = load float, ptr %48, align 4, !tbaa !115
  %118 = fadd float %116, %117
  store float %118, ptr %98, align 4, !tbaa !115
  %119 = load float, ptr %23, align 4, !tbaa !115
  %120 = load float, ptr %54, align 4, !tbaa !115
  %121 = fadd float %119, %120
  store float %121, ptr %102, align 4, !tbaa !115
  %122 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3
  %123 = call zeroext i8 @isect_line_plane_v3(ptr noundef nonnull %122, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %72, ptr noundef nonnull %31) #13
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %112
  %126 = load float, ptr %5, align 4, !tbaa !115
  store float %126, ptr %122, align 4, !tbaa !115
  %127 = load float, ptr %20, align 4, !tbaa !115
  %128 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3, i64 1
  store float %127, ptr %128, align 4, !tbaa !115
  %129 = load float, ptr %23, align 4, !tbaa !115
  %130 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3, i64 2
  store float %129, ptr %130, align 4, !tbaa !115
  br label %131

131:                                              ; preds = %125, %112
  %132 = load float, ptr %72, align 4, !tbaa !115
  %133 = load float, ptr %4, align 4, !tbaa !115
  %134 = fsub float %132, %133
  %135 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 2, i64 1
  %136 = load float, ptr %135, align 4, !tbaa !115
  %137 = load float, ptr %11, align 4, !tbaa !115
  %138 = fsub float %136, %137
  %139 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 2, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !115
  %141 = load float, ptr %14, align 4, !tbaa !115
  %142 = fsub float %140, %141
  %143 = load float, ptr %5, align 4, !tbaa !115
  %144 = fsub float %132, %143
  %145 = load float, ptr %20, align 4, !tbaa !115
  %146 = fsub float %136, %145
  %147 = load float, ptr %23, align 4, !tbaa !115
  %148 = fsub float %140, %147
  %149 = fmul float %138, %138
  %150 = call float @llvm.fmuladd.f32(float %134, float %134, float %149)
  %151 = call float @llvm.fmuladd.f32(float %142, float %142, float %150)
  %152 = fcmp ogt float %151, 0x38AA95A5C0000000
  br i1 %152, label %153, label %159

153:                                              ; preds = %131
  %154 = call float @sqrtf(float noundef %151) #13
  %155 = fdiv float 1.000000e+00, %154
  %156 = fmul float %134, %155
  %157 = fmul float %138, %155
  %158 = fmul float %142, %155
  br label %159

159:                                              ; preds = %131, %153
  %160 = phi float [ %157, %153 ], [ 0.000000e+00, %131 ]
  %161 = phi float [ %156, %153 ], [ 0.000000e+00, %131 ]
  %162 = phi float [ %158, %153 ], [ 0.000000e+00, %131 ]
  %163 = fmul float %146, %146
  %164 = call float @llvm.fmuladd.f32(float %144, float %144, float %163)
  %165 = call float @llvm.fmuladd.f32(float %148, float %148, float %164)
  %166 = fcmp ogt float %165, 0x38AA95A5C0000000
  br i1 %166, label %167, label %173

167:                                              ; preds = %159
  %168 = call float @sqrtf(float noundef %165) #13
  %169 = fdiv float 1.000000e+00, %168
  %170 = fmul float %144, %169
  %171 = fmul float %146, %169
  %172 = fmul float %148, %169
  br label %173

173:                                              ; preds = %159, %167
  %174 = phi float [ %171, %167 ], [ 0.000000e+00, %159 ]
  %175 = phi float [ %170, %167 ], [ 0.000000e+00, %159 ]
  %176 = phi float [ %172, %167 ], [ 0.000000e+00, %159 ]
  %177 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 4
  %178 = fneg float %162
  %179 = fmul float %174, %178
  %180 = call float @llvm.fmuladd.f32(float %160, float %176, float %179)
  store float %180, ptr %177, align 4, !tbaa !115
  %181 = fneg float %161
  %182 = fmul float %176, %181
  %183 = call float @llvm.fmuladd.f32(float %162, float %175, float %182)
  %184 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 4, i64 1
  store float %183, ptr %184, align 4, !tbaa !115
  %185 = fneg float %160
  %186 = fmul float %175, %185
  %187 = call float @llvm.fmuladd.f32(float %161, float %174, float %186)
  %188 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 4, i64 2
  store float %187, ptr %188, align 4, !tbaa !115
  %189 = fmul float %183, %183
  %190 = call float @llvm.fmuladd.f32(float %180, float %180, float %189)
  %191 = call float @llvm.fmuladd.f32(float %187, float %187, float %190)
  %192 = fcmp ogt float %191, 0x38AA95A5C0000000
  br i1 %192, label %193, label %203

193:                                              ; preds = %173
  %194 = call float @sqrtf(float noundef %191) #13
  %195 = fdiv float 1.000000e+00, %194
  %196 = load float, ptr %177, align 4, !tbaa !115
  %197 = fmul float %196, %195
  store float %197, ptr %177, align 4, !tbaa !115
  %198 = load float, ptr %184, align 4, !tbaa !115
  %199 = fmul float %195, %198
  store float %199, ptr %184, align 4, !tbaa !115
  %200 = load float, ptr %188, align 4, !tbaa !115
  %201 = fmul float %195, %200
  %202 = fcmp ugt float %194, 0x3F1A36E2E0000000
  store float %201, ptr %188, align 4, !tbaa !115
  br i1 %202, label %273, label %204

203:                                              ; preds = %173
  store float 0.000000e+00, ptr %177, align 4, !tbaa !115
  store float 0.000000e+00, ptr %184, align 4, !tbaa !115
  store float 0.000000e+00, ptr %188, align 4, !tbaa !115
  br label %204

204:                                              ; preds = %203, %193
  %205 = load float, ptr %54, align 4, !tbaa !115
  %206 = load float, ptr %48, align 4, !tbaa !115
  %207 = fmul float %206, %178
  %208 = call float @llvm.fmuladd.f32(float %160, float %205, float %207)
  %209 = load float, ptr %31, align 4, !tbaa !115
  %210 = fmul float %205, %181
  %211 = call float @llvm.fmuladd.f32(float %162, float %209, float %210)
  %212 = fmul float %209, %185
  %213 = call float @llvm.fmuladd.f32(float %161, float %206, float %212)
  %214 = fmul float %211, %211
  %215 = call float @llvm.fmuladd.f32(float %208, float %208, float %214)
  %216 = call float @llvm.fmuladd.f32(float %213, float %213, float %215)
  %217 = fcmp ogt float %216, 0x38AA95A5C0000000
  br i1 %217, label %218, label %224

218:                                              ; preds = %204
  %219 = call float @sqrtf(float noundef %216) #13
  %220 = fdiv float 1.000000e+00, %219
  %221 = fmul float %208, %220
  %222 = fmul float %211, %220
  %223 = fmul float %213, %220
  br label %224

224:                                              ; preds = %204, %218
  %225 = phi float [ %222, %218 ], [ 0.000000e+00, %204 ]
  %226 = phi float [ %221, %218 ], [ 0.000000e+00, %204 ]
  %227 = phi float [ %223, %218 ], [ 0.000000e+00, %204 ]
  %228 = fmul float %225, %178
  %229 = call float @llvm.fmuladd.f32(float %160, float %227, float %228)
  store float %229, ptr %177, align 4, !tbaa !115
  %230 = fmul float %227, %181
  %231 = call float @llvm.fmuladd.f32(float %162, float %226, float %230)
  store float %231, ptr %184, align 4, !tbaa !115
  %232 = fmul float %226, %185
  %233 = call float @llvm.fmuladd.f32(float %161, float %225, float %232)
  store float %233, ptr %188, align 4, !tbaa !115
  %234 = fmul float %231, %231
  %235 = call float @llvm.fmuladd.f32(float %229, float %229, float %234)
  %236 = call float @llvm.fmuladd.f32(float %233, float %233, float %235)
  %237 = fcmp ogt float %236, 0x38AA95A5C0000000
  br i1 %237, label %238, label %248

238:                                              ; preds = %224
  %239 = call float @sqrtf(float noundef %236) #13
  %240 = fdiv float 1.000000e+00, %239
  %241 = load float, ptr %177, align 4, !tbaa !115
  %242 = fmul float %241, %240
  store float %242, ptr %177, align 4, !tbaa !115
  %243 = load float, ptr %184, align 4, !tbaa !115
  %244 = fmul float %240, %243
  store float %244, ptr %184, align 4, !tbaa !115
  %245 = load float, ptr %188, align 4, !tbaa !115
  %246 = fmul float %240, %245
  %247 = fcmp ugt float %239, 0x3F1A36E2E0000000
  br label %249

248:                                              ; preds = %224
  store float 0.000000e+00, ptr %177, align 4, !tbaa !115
  store float 0.000000e+00, ptr %184, align 4, !tbaa !115
  br label %249

249:                                              ; preds = %238, %248
  %250 = phi float [ 0.000000e+00, %248 ], [ %246, %238 ]
  %251 = phi i1 [ false, %248 ], [ %247, %238 ]
  store float %250, ptr %188, align 4, !tbaa !115
  store float 1.000000e+00, ptr %24, align 8, !tbaa !171
  %252 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 5
  %253 = load float, ptr %4, align 4, !tbaa !115
  store float %253, ptr %252, align 4, !tbaa !115
  %254 = load float, ptr %11, align 4, !tbaa !115
  %255 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 5, i64 1
  store float %254, ptr %255, align 4, !tbaa !115
  %256 = load float, ptr %14, align 4, !tbaa !115
  %257 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 5, i64 2
  store float %256, ptr %257, align 4, !tbaa !115
  br i1 %251, label %280, label %258

258:                                              ; preds = %2, %249
  store float 1.000000e+00, ptr %24, align 8, !tbaa !171
  %259 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1
  %260 = load float, ptr %4, align 4, !tbaa !115
  store float %260, ptr %259, align 4, !tbaa !115
  %261 = load float, ptr %11, align 4, !tbaa !115
  %262 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1, i64 1
  store float %261, ptr %262, align 4, !tbaa !115
  %263 = load float, ptr %14, align 4, !tbaa !115
  %264 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1, i64 2
  store float %263, ptr %264, align 4, !tbaa !115
  %265 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3
  %266 = load float, ptr %5, align 4, !tbaa !115
  store float %266, ptr %265, align 4, !tbaa !115
  %267 = load float, ptr %20, align 4, !tbaa !115
  %268 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3, i64 1
  store float %267, ptr %268, align 4, !tbaa !115
  %269 = load float, ptr %23, align 4, !tbaa !115
  %270 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3, i64 2
  store float %269, ptr %270, align 4, !tbaa !115
  %271 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 2
  call void @mid_v3_v3v3(ptr noundef nonnull %271, ptr noundef nonnull %4, ptr noundef nonnull %5) #13
  %272 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %272, i8 0, i64 36, i1 false)
  br label %280

273:                                              ; preds = %193
  %274 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 5
  %275 = load float, ptr %4, align 4, !tbaa !115
  store float %275, ptr %274, align 4, !tbaa !115
  %276 = load float, ptr %11, align 4, !tbaa !115
  %277 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 5, i64 1
  store float %276, ptr %277, align 4, !tbaa !115
  %278 = load float, ptr %14, align 4, !tbaa !115
  %279 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 5, i64 2
  store float %278, ptr %279, align 4, !tbaa !115
  br label %280

280:                                              ; preds = %273, %258, %249
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @calculate_profile(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [4 x [4 x float]], align 16
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #13
  %7 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7
  %8 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %207, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !59
  %15 = icmp ne i32 %9, %14
  %16 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !161
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  %22 = mul i32 %9, 3
  %23 = add i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 2
  %26 = tail call ptr @BLI_memarena_alloc(ptr noundef %21, i64 noundef %25) #13
  store ptr %26, ptr %16, align 8, !tbaa !161
  br i1 %15, label %27, label %35

27:                                               ; preds = %19
  %28 = load ptr, ptr %20, align 8, !tbaa !53
  %29 = load i32, ptr %13, align 8, !tbaa !59
  %30 = mul i32 %29, 3
  %31 = add i32 %30, 3
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  %34 = tail call ptr @BLI_memarena_alloc(ptr noundef %28, i64 noundef %33) #13
  br label %35

35:                                               ; preds = %19, %27
  %36 = phi ptr [ %34, %27 ], [ %26, %19 ]
  %37 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 8
  store ptr %36, ptr %37, align 8, !tbaa !162
  br label %38

38:                                               ; preds = %35, %11
  %39 = load float, ptr %7, align 8, !tbaa !171
  %40 = fcmp oeq float %39, 1.000000e+00
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1
  %43 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 2
  %44 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3
  %45 = call fastcc zeroext i8 @make_unit_square_map(ptr noundef nonnull %42, ptr noundef nonnull %43, ptr noundef nonnull %44, ptr noundef nonnull %6), !range !170
  %46 = icmp eq i8 %45, 0
  br label %47

47:                                               ; preds = %38, %41
  %48 = phi i1 [ %46, %41 ], [ true, %38 ]
  %49 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2, i32 1
  %50 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 8
  %51 = getelementptr inbounds float, ptr %5, i64 1
  %52 = getelementptr inbounds float, ptr %5, i64 1
  %53 = fcmp oeq float %39, 0.000000e+00
  %54 = fcmp oeq float %39, 4.000000e+00
  %55 = getelementptr inbounds float, ptr %5, i64 1
  %56 = fcmp une float %39, 4.000000e+00
  %57 = fdiv float 2.000000e+00, %39
  %58 = fpext float %57 to double
  %59 = getelementptr inbounds float, ptr %5, i64 1
  %60 = getelementptr inbounds float, ptr %5, i64 1
  %61 = getelementptr inbounds float, ptr %5, i64 1
  %62 = getelementptr inbounds float, ptr %5, i64 1
  %63 = getelementptr inbounds float, ptr %5, i64 1
  %64 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %65 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1
  %66 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3
  %67 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3
  %68 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3, i64 1
  %69 = getelementptr inbounds float, ptr %3, i64 1
  %70 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 3, i64 2
  %71 = getelementptr inbounds float, ptr %3, i64 2
  %72 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1
  %73 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1, i64 1
  %74 = getelementptr inbounds float, ptr %3, i64 1
  %75 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 1, i64 2
  %76 = getelementptr inbounds float, ptr %3, i64 2
  %77 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 6
  %78 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 6, i64 1
  %79 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 6, i64 2
  %80 = getelementptr inbounds float, ptr %3, i64 1
  %81 = getelementptr inbounds float, ptr %3, i64 2
  %82 = getelementptr inbounds float, ptr %3, i64 1
  %83 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 6, i64 1
  %84 = getelementptr inbounds float, ptr %4, i64 1
  %85 = getelementptr inbounds float, ptr %3, i64 2
  %86 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 6, i64 2
  %87 = getelementptr inbounds float, ptr %4, i64 2
  %88 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 5
  %89 = getelementptr inbounds %struct.BoundVert, ptr %1, i64 0, i32 7, i32 4
  br label %90

90:                                               ; preds = %47, %204
  %91 = phi i32 [ 0, %47 ], [ %205, %204 ]
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i1 true, i1 %15
  br i1 %93, label %94, label %207

94:                                               ; preds = %90
  %95 = select i1 %92, ptr %8, ptr %13
  %96 = select i1 %92, ptr %12, ptr %49
  %97 = select i1 %92, ptr %16, ptr %50
  %98 = load i32, ptr %95, align 8, !tbaa !114
  %99 = load ptr, ptr %96, align 8, !tbaa !113
  %100 = load ptr, ptr %97, align 8, !tbaa !113
  %101 = icmp slt i32 %98, 0
  br i1 %101, label %204, label %102

102:                                              ; preds = %94
  %103 = sitofp i32 %98 to float
  %104 = zext nneg i32 %98 to i64
  %105 = add nuw i32 %98, 1
  %106 = zext i32 %105 to i64
  br label %107

107:                                              ; preds = %102, %201
  %108 = phi i64 [ 0, %102 ], [ %202, %201 ]
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load float, ptr %72, align 4, !tbaa !115
  store float %111, ptr %3, align 4, !tbaa !115
  %112 = load float, ptr %73, align 4, !tbaa !115
  store float %112, ptr %74, align 4, !tbaa !115
  %113 = load float, ptr %75, align 4, !tbaa !115
  store float %113, ptr %76, align 4, !tbaa !115
  br label %165

114:                                              ; preds = %107
  %115 = icmp eq i64 %108, %104
  br i1 %115, label %116, label %120

116:                                              ; preds = %114
  %117 = load float, ptr %67, align 4, !tbaa !115
  store float %117, ptr %3, align 4, !tbaa !115
  %118 = load float, ptr %68, align 4, !tbaa !115
  store float %118, ptr %69, align 4, !tbaa !115
  %119 = load float, ptr %70, align 4, !tbaa !115
  store float %119, ptr %71, align 4, !tbaa !115
  br label %165

120:                                              ; preds = %114
  br i1 %48, label %161, label %121

121:                                              ; preds = %120
  %122 = getelementptr inbounds float, ptr %99, i64 %108
  %123 = load float, ptr %122, align 4, !tbaa !115
  %124 = fcmp ugt float %123, 0.000000e+00
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  store float 0.000000e+00, ptr %5, align 4, !tbaa !115
  store float 1.000000e+00, ptr %51, align 4, !tbaa !115
  br label %160

126:                                              ; preds = %121
  %127 = fcmp ult float %123, 2.000000e+00
  br i1 %127, label %129, label %128

128:                                              ; preds = %126
  store float 1.000000e+00, ptr %5, align 4, !tbaa !115
  store float 0.000000e+00, ptr %52, align 4, !tbaa !115
  br label %160

129:                                              ; preds = %126
  br i1 %40, label %130, label %133

130:                                              ; preds = %129
  %131 = fmul float %123, 5.000000e-01
  store float %131, ptr %5, align 4, !tbaa !115
  %132 = fsub float 1.000000e+00, %131
  store float %132, ptr %63, align 4, !tbaa !115
  br label %160

133:                                              ; preds = %129
  br i1 %53, label %134, label %140

134:                                              ; preds = %133
  %135 = fcmp olt float %123, 1.000000e+00
  br i1 %135, label %136, label %138

136:                                              ; preds = %134
  store float 0.000000e+00, ptr %5, align 4, !tbaa !115
  %137 = fsub float 1.000000e+00, %123
  store float %137, ptr %62, align 4, !tbaa !115
  br label %160

138:                                              ; preds = %134
  %139 = fadd float %123, -1.000000e+00
  store float %139, ptr %5, align 4, !tbaa !115
  store float 0.000000e+00, ptr %61, align 4, !tbaa !115
  br label %160

140:                                              ; preds = %133
  br i1 %54, label %141, label %146

141:                                              ; preds = %140
  %142 = fcmp olt float %123, 1.000000e+00
  br i1 %142, label %143, label %144

143:                                              ; preds = %141
  store float %123, ptr %5, align 4, !tbaa !115
  store float 1.000000e+00, ptr %60, align 4, !tbaa !115
  br label %160

144:                                              ; preds = %141
  store float 1.000000e+00, ptr %5, align 4, !tbaa !115
  %145 = fsub float 2.000000e+00, %123
  store float %145, ptr %59, align 4, !tbaa !115
  br label %160

146:                                              ; preds = %140
  %147 = fmul float %123, 0x400921FB60000000
  %148 = fmul float %147, 2.500000e-01
  %149 = call float @sinf(float noundef %148) #13
  store float %149, ptr %5, align 4, !tbaa !115
  %150 = call float @cosf(float noundef %148) #13
  store float %150, ptr %55, align 4, !tbaa !115
  br i1 %56, label %151, label %160

151:                                              ; preds = %146
  %152 = load float, ptr %5, align 4, !tbaa !115
  %153 = fpext float %152 to double
  %154 = call double @pow(double noundef %153, double noundef %58) #13
  %155 = fptrunc double %154 to float
  store float %155, ptr %5, align 4, !tbaa !115
  %156 = load float, ptr %55, align 4, !tbaa !115
  %157 = fpext float %156 to double
  %158 = call double @pow(double noundef %157, double noundef %58) #13
  %159 = fptrunc double %158 to float
  store float %159, ptr %55, align 4, !tbaa !115
  br label %160

160:                                              ; preds = %125, %128, %130, %136, %138, %143, %144, %146, %151
  store float 0.000000e+00, ptr %64, align 4, !tbaa !115
  call void @mul_v3_m4v3(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %5) #13
  br label %165

161:                                              ; preds = %120
  %162 = trunc i64 %108 to i32
  %163 = sitofp i32 %162 to float
  %164 = fdiv float %163, %103
  call void @interp_v3_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %65, ptr noundef nonnull %66, float noundef %164) #13
  br label %165

165:                                              ; preds = %116, %161, %160, %110
  %166 = mul nuw nsw i64 %108, 3
  %167 = getelementptr inbounds float, ptr %100, i64 %166
  %168 = load float, ptr %77, align 4, !tbaa !115
  %169 = fcmp oeq float %168, 0.000000e+00
  br i1 %169, label %170, label %177

170:                                              ; preds = %165
  %171 = load float, ptr %78, align 4, !tbaa !115
  %172 = fcmp oeq float %171, 0.000000e+00
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load float, ptr %79, align 4, !tbaa !115
  %175 = fcmp oeq float %174, 0.000000e+00
  %176 = zext i1 %175 to i8
  br label %177

177:                                              ; preds = %165, %170, %173
  %178 = phi i8 [ 0, %170 ], [ 0, %165 ], [ %176, %173 ]
  %179 = icmp eq i8 %178, 0
  %180 = load float, ptr %3, align 4, !tbaa !115
  br i1 %179, label %181, label %193

181:                                              ; preds = %177
  %182 = fadd float %168, %180
  store float %182, ptr %4, align 4, !tbaa !115
  %183 = load float, ptr %82, align 4, !tbaa !115
  %184 = load float, ptr %83, align 4, !tbaa !115
  %185 = fadd float %183, %184
  store float %185, ptr %84, align 4, !tbaa !115
  %186 = load float, ptr %85, align 4, !tbaa !115
  %187 = load float, ptr %86, align 4, !tbaa !115
  %188 = fadd float %186, %187
  store float %188, ptr %87, align 4, !tbaa !115
  %189 = call zeroext i8 @isect_line_plane_v3(ptr noundef %167, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %88, ptr noundef nonnull %89) #13
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %181
  %192 = load float, ptr %3, align 4, !tbaa !115
  br label %193

193:                                              ; preds = %177, %191
  %194 = phi float [ %192, %191 ], [ %180, %177 ]
  %195 = phi ptr [ %82, %191 ], [ %80, %177 ]
  %196 = phi ptr [ %85, %191 ], [ %81, %177 ]
  store float %194, ptr %167, align 4, !tbaa !115
  %197 = load float, ptr %195, align 4, !tbaa !115
  %198 = getelementptr inbounds float, ptr %167, i64 1
  store float %197, ptr %198, align 4, !tbaa !115
  %199 = load float, ptr %196, align 4, !tbaa !115
  %200 = getelementptr inbounds float, ptr %167, i64 2
  store float %199, ptr %200, align 4, !tbaa !115
  br label %201

201:                                              ; preds = %193, %181
  %202 = add nuw nsw i64 %108, 1
  %203 = icmp eq i64 %202, %106
  br i1 %203, label %204, label %107, !llvm.loop !242

204:                                              ; preds = %201, %94
  %205 = add nuw nsw i32 %91, 1
  %206 = icmp eq i32 %91, 0
  br i1 %206, label %90, label %207, !llvm.loop !243

207:                                              ; preds = %90, %204, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @offset_meet(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef readonly %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #13
  %13 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2
  %14 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = icmp eq ptr %17, %2
  %19 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = icmp eq ptr %20, %2
  %22 = select i1 %21, ptr %17, ptr null
  %23 = select i1 %18, ptr %20, ptr %22
  %24 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2
  %25 = load float, ptr %13, align 4, !tbaa !115
  %26 = load float, ptr %24, align 4, !tbaa !115
  %27 = fsub float %25, %26
  store float %27, ptr %6, align 4, !tbaa !115
  %28 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !115
  %30 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !115
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds float, ptr %6, i64 1
  store float %32, ptr %33, align 4, !tbaa !115
  %34 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !115
  %36 = getelementptr inbounds %struct.BMVert, ptr %23, i64 0, i32 2, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !115
  %38 = fsub float %35, %37
  %39 = getelementptr inbounds float, ptr %6, i64 2
  store float %38, ptr %39, align 4, !tbaa !115
  %40 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !97
  %42 = getelementptr inbounds %struct.BMEdge, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !73
  %44 = icmp eq ptr %43, %2
  %45 = getelementptr inbounds %struct.BMEdge, ptr %41, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !76
  %47 = icmp eq ptr %46, %2
  %48 = select i1 %47, ptr %43, ptr null
  %49 = select i1 %44, ptr %46, ptr %48
  %50 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 2
  %51 = load float, ptr %50, align 4, !tbaa !115
  %52 = fsub float %51, %25
  store float %52, ptr %7, align 4, !tbaa !115
  %53 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 2, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !115
  %55 = fsub float %54, %29
  %56 = getelementptr inbounds float, ptr %7, i64 1
  store float %55, ptr %56, align 4, !tbaa !115
  %57 = getelementptr inbounds %struct.BMVert, ptr %49, i64 0, i32 2, i64 2
  %58 = load float, ptr %57, align 4, !tbaa !115
  %59 = fsub float %58, %35
  %60 = getelementptr inbounds float, ptr %7, i64 2
  store float %59, ptr %60, align 4, !tbaa !115
  %61 = call float @angle_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %62 = fcmp olt float %61, 0x3F1A36E2E0000000
  br i1 %62, label %63, label %125

63:                                               ; preds = %5
  %64 = icmp eq ptr %3, null
  %65 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3
  %66 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3, i64 1
  %67 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3, i64 2
  %68 = getelementptr inbounds %struct.BMFace, ptr %3, i64 0, i32 4
  %69 = getelementptr inbounds %struct.BMFace, ptr %3, i64 0, i32 4, i64 1
  %70 = getelementptr inbounds %struct.BMFace, ptr %3, i64 0, i32 4, i64 2
  %71 = select i1 %64, ptr %67, ptr %70
  %72 = select i1 %64, ptr %66, ptr %69
  %73 = select i1 %64, ptr %65, ptr %68
  %74 = load float, ptr %73, align 4, !tbaa !115
  %75 = load float, ptr %72, align 4, !tbaa !115
  %76 = load float, ptr %71, align 4, !tbaa !115
  %77 = load float, ptr %33, align 4, !tbaa !115
  %78 = load float, ptr %39, align 4, !tbaa !115
  %79 = fneg float %78
  %80 = fmul float %75, %79
  %81 = call float @llvm.fmuladd.f32(float %77, float %76, float %80)
  %82 = load float, ptr %6, align 4, !tbaa !115
  %83 = fneg float %82
  %84 = fmul float %76, %83
  %85 = call float @llvm.fmuladd.f32(float %78, float %74, float %84)
  %86 = fneg float %77
  %87 = fmul float %74, %86
  %88 = call float @llvm.fmuladd.f32(float %82, float %75, float %87)
  %89 = fmul float %85, %85
  %90 = call float @llvm.fmuladd.f32(float %81, float %81, float %89)
  %91 = call float @llvm.fmuladd.f32(float %88, float %88, float %90)
  %92 = fcmp ogt float %91, 0x38AA95A5C0000000
  br i1 %92, label %93, label %99

93:                                               ; preds = %63
  %94 = call float @sqrtf(float noundef %91) #13
  %95 = fdiv float 1.000000e+00, %94
  %96 = fmul float %81, %95
  %97 = fmul float %85, %95
  %98 = fmul float %88, %95
  br label %99

99:                                               ; preds = %63, %93
  %100 = phi float [ %97, %93 ], [ 0.000000e+00, %63 ]
  %101 = phi float [ %96, %93 ], [ 0.000000e+00, %63 ]
  %102 = phi float [ %98, %93 ], [ 0.000000e+00, %63 ]
  %103 = load float, ptr %13, align 4, !tbaa !115
  store float %103, ptr %8, align 4, !tbaa !115
  %104 = load float, ptr %28, align 4, !tbaa !115
  %105 = getelementptr inbounds float, ptr %8, i64 1
  store float %104, ptr %105, align 4, !tbaa !115
  %106 = load float, ptr %34, align 4, !tbaa !115
  %107 = getelementptr inbounds float, ptr %8, i64 2
  store float %106, ptr %107, align 4, !tbaa !115
  %108 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 9
  %109 = load float, ptr %108, align 8, !tbaa !122
  %110 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 8
  %111 = load float, ptr %110, align 4, !tbaa !121
  %112 = fcmp ogt float %109, %111
  %113 = select i1 %112, float %109, float %111
  %114 = call float @llvm.fmuladd.f32(float %101, float %113, float %103)
  store float %114, ptr %8, align 4, !tbaa !115
  %115 = call float @llvm.fmuladd.f32(float %100, float %113, float %104)
  store float %115, ptr %105, align 4, !tbaa !115
  %116 = call float @llvm.fmuladd.f32(float %102, float %113, float %106)
  store float %116, ptr %107, align 4, !tbaa !115
  %117 = fcmp une float %109, %113
  br i1 %117, label %118, label %119

118:                                              ; preds = %99
  store float %113, ptr %108, align 8, !tbaa !122
  br label %122

119:                                              ; preds = %99
  %120 = fcmp une float %111, %113
  br i1 %120, label %121, label %122

121:                                              ; preds = %119
  store float %113, ptr %110, align 4, !tbaa !121
  br label %122

122:                                              ; preds = %119, %121, %118
  store float %114, ptr %4, align 4, !tbaa !115
  %123 = getelementptr inbounds float, ptr %4, i64 1
  store float %115, ptr %123, align 4, !tbaa !115
  %124 = getelementptr inbounds float, ptr %4, i64 2
  store float %116, ptr %124, align 4, !tbaa !115
  br label %492

125:                                              ; preds = %5
  %126 = fadd float %61, 0xC00921FB60000000
  %127 = call float @llvm.fabs.f32(float %126)
  %128 = fcmp olt float %127, 0x3F1A36E2E0000000
  br i1 %128, label %129, label %191

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 9
  %131 = load float, ptr %130, align 8, !tbaa !122
  %132 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 8
  %133 = load float, ptr %132, align 4, !tbaa !121
  %134 = fcmp ogt float %131, %133
  %135 = select i1 %134, float %131, float %133
  %136 = load ptr, ptr %40, align 8, !tbaa !97
  %137 = getelementptr inbounds %struct.BMEdge, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !73
  %139 = icmp eq ptr %138, %2
  %140 = getelementptr inbounds %struct.BMEdge, ptr %136, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !76
  %142 = icmp eq ptr %141, %2
  %143 = select i1 %142, ptr %138, ptr null
  %144 = select i1 %139, ptr %141, ptr %143
  %145 = getelementptr inbounds %struct.BMVert, ptr %144, i64 0, i32 2
  %146 = load float, ptr %13, align 4, !tbaa !115
  %147 = load float, ptr %145, align 4, !tbaa !115
  %148 = fsub float %146, %147
  %149 = load float, ptr %28, align 4, !tbaa !115
  %150 = getelementptr inbounds %struct.BMVert, ptr %144, i64 0, i32 2, i64 1
  %151 = load float, ptr %150, align 4, !tbaa !115
  %152 = fsub float %149, %151
  %153 = load float, ptr %34, align 4, !tbaa !115
  %154 = getelementptr inbounds %struct.BMVert, ptr %144, i64 0, i32 2, i64 2
  %155 = load float, ptr %154, align 4, !tbaa !115
  %156 = fsub float %153, %155
  %157 = fmul float %152, %152
  %158 = call float @llvm.fmuladd.f32(float %148, float %148, float %157)
  %159 = call float @llvm.fmuladd.f32(float %156, float %156, float %158)
  %160 = fcmp ogt float %159, 0x38AA95A5C0000000
  br i1 %160, label %161, label %167

161:                                              ; preds = %129
  %162 = call float @sqrtf(float noundef %159) #13
  %163 = fdiv float 1.000000e+00, %162
  %164 = fmul float %148, %163
  %165 = fmul float %152, %163
  %166 = fmul float %156, %163
  br label %167

167:                                              ; preds = %129, %161
  %168 = phi float [ %165, %161 ], [ 0.000000e+00, %129 ]
  %169 = phi float [ %164, %161 ], [ 0.000000e+00, %129 ]
  %170 = phi float [ %166, %161 ], [ 0.000000e+00, %129 ]
  %171 = phi float [ %162, %161 ], [ 0.000000e+00, %129 ]
  %172 = fcmp olt float %171, %135
  %173 = fadd float %171, 0xBF0A36E2E0000000
  %174 = select i1 %172, float %173, float %135
  %175 = load float, ptr %13, align 4, !tbaa !115
  store float %175, ptr %4, align 4, !tbaa !115
  %176 = load float, ptr %28, align 4, !tbaa !115
  %177 = getelementptr inbounds float, ptr %4, i64 1
  store float %176, ptr %177, align 4, !tbaa !115
  %178 = load float, ptr %34, align 4, !tbaa !115
  %179 = getelementptr inbounds float, ptr %4, i64 2
  store float %178, ptr %179, align 4, !tbaa !115
  %180 = fneg float %174
  %181 = call float @llvm.fmuladd.f32(float %169, float %180, float %175)
  store float %181, ptr %4, align 4, !tbaa !115
  %182 = call float @llvm.fmuladd.f32(float %168, float %180, float %176)
  store float %182, ptr %177, align 4, !tbaa !115
  %183 = call float @llvm.fmuladd.f32(float %170, float %180, float %178)
  store float %183, ptr %179, align 4, !tbaa !115
  %184 = load float, ptr %130, align 8, !tbaa !122
  %185 = fcmp une float %184, %135
  br i1 %185, label %186, label %187

186:                                              ; preds = %167
  store float %135, ptr %130, align 8, !tbaa !122
  br label %492

187:                                              ; preds = %167
  %188 = load float, ptr %132, align 4, !tbaa !121
  %189 = fcmp une float %188, %135
  br i1 %189, label %190, label %492

190:                                              ; preds = %187
  store float %135, ptr %132, align 4, !tbaa !121
  br label %492

191:                                              ; preds = %125
  %192 = load float, ptr %56, align 4, !tbaa !115
  %193 = load float, ptr %39, align 4, !tbaa !115
  %194 = load float, ptr %60, align 4, !tbaa !115
  %195 = load float, ptr %33, align 4, !tbaa !115
  %196 = fneg float %194
  %197 = fmul float %195, %196
  %198 = call float @llvm.fmuladd.f32(float %192, float %193, float %197)
  %199 = load float, ptr %6, align 4, !tbaa !115
  %200 = load float, ptr %7, align 4, !tbaa !115
  %201 = fneg float %200
  %202 = fmul float %193, %201
  %203 = call float @llvm.fmuladd.f32(float %194, float %199, float %202)
  %204 = fneg float %192
  %205 = fmul float %199, %204
  %206 = call float @llvm.fmuladd.f32(float %200, float %195, float %205)
  %207 = fmul float %203, %203
  %208 = call float @llvm.fmuladd.f32(float %198, float %198, float %207)
  %209 = call float @llvm.fmuladd.f32(float %206, float %206, float %208)
  %210 = fcmp ogt float %209, 0x38AA95A5C0000000
  br i1 %210, label %211, label %217

211:                                              ; preds = %191
  %212 = call float @sqrtf(float noundef %209) #13
  %213 = fdiv float 1.000000e+00, %212
  %214 = fmul float %198, %213
  %215 = fmul float %203, %213
  %216 = fmul float %206, %213
  br label %217

217:                                              ; preds = %191, %211
  %218 = phi float [ %215, %211 ], [ 0.000000e+00, %191 ]
  %219 = phi float [ %214, %211 ], [ 0.000000e+00, %191 ]
  %220 = phi float [ %216, %211 ], [ 0.000000e+00, %191 ]
  %221 = icmp eq ptr %3, null
  %222 = getelementptr inbounds %struct.BMFace, ptr %3, i64 0, i32 4
  %223 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3
  %224 = select i1 %221, ptr %223, ptr %222
  %225 = load float, ptr %224, align 4, !tbaa !115
  %226 = getelementptr inbounds float, ptr %224, i64 1
  %227 = load float, ptr %226, align 4, !tbaa !115
  %228 = fmul float %218, %227
  %229 = call float @llvm.fmuladd.f32(float %219, float %225, float %228)
  %230 = getelementptr inbounds float, ptr %224, i64 2
  %231 = load float, ptr %230, align 4, !tbaa !115
  %232 = call float @llvm.fmuladd.f32(float %220, float %231, float %229)
  %233 = fcmp olt float %232, 0.000000e+00
  %234 = fneg float %219
  %235 = fneg float %218
  %236 = fneg float %220
  %237 = select i1 %233, float %236, float %220
  %238 = select i1 %233, float %235, float %218
  %239 = select i1 %233, float %234, float %219
  %240 = load float, ptr %33, align 4, !tbaa !115
  %241 = load float, ptr %39, align 4, !tbaa !115
  %242 = fneg float %241
  %243 = fmul float %238, %242
  %244 = call float @llvm.fmuladd.f32(float %240, float %237, float %243)
  %245 = load float, ptr %6, align 4, !tbaa !115
  %246 = fneg float %245
  %247 = fmul float %237, %246
  %248 = call float @llvm.fmuladd.f32(float %241, float %239, float %247)
  %249 = fneg float %240
  %250 = fmul float %239, %249
  %251 = call float @llvm.fmuladd.f32(float %245, float %238, float %250)
  %252 = load float, ptr %56, align 4, !tbaa !115
  %253 = load float, ptr %60, align 4, !tbaa !115
  %254 = fneg float %253
  %255 = fmul float %238, %254
  %256 = call float @llvm.fmuladd.f32(float %252, float %237, float %255)
  %257 = load float, ptr %7, align 4, !tbaa !115
  %258 = fneg float %257
  %259 = fmul float %237, %258
  %260 = call float @llvm.fmuladd.f32(float %253, float %239, float %259)
  %261 = fneg float %252
  %262 = fmul float %239, %261
  %263 = call float @llvm.fmuladd.f32(float %257, float %238, float %262)
  %264 = fmul float %248, %248
  %265 = call float @llvm.fmuladd.f32(float %244, float %244, float %264)
  %266 = call float @llvm.fmuladd.f32(float %251, float %251, float %265)
  %267 = fcmp ogt float %266, 0x38AA95A5C0000000
  br i1 %267, label %268, label %274

268:                                              ; preds = %217
  %269 = call float @sqrtf(float noundef %266) #13
  %270 = fdiv float 1.000000e+00, %269
  %271 = fmul float %244, %270
  %272 = fmul float %248, %270
  %273 = fmul float %251, %270
  br label %274

274:                                              ; preds = %217, %268
  %275 = phi float [ %272, %268 ], [ 0.000000e+00, %217 ]
  %276 = phi float [ %271, %268 ], [ 0.000000e+00, %217 ]
  %277 = phi float [ %273, %268 ], [ 0.000000e+00, %217 ]
  %278 = fmul float %260, %260
  %279 = call float @llvm.fmuladd.f32(float %256, float %256, float %278)
  %280 = call float @llvm.fmuladd.f32(float %263, float %263, float %279)
  %281 = fcmp ogt float %280, 0x38AA95A5C0000000
  br i1 %281, label %282, label %288

282:                                              ; preds = %274
  %283 = call float @sqrtf(float noundef %280) #13
  %284 = fdiv float 1.000000e+00, %283
  %285 = fmul float %256, %284
  %286 = fmul float %260, %284
  %287 = fmul float %263, %284
  br label %288

288:                                              ; preds = %274, %282
  %289 = phi float [ %286, %282 ], [ 0.000000e+00, %274 ]
  %290 = phi float [ %285, %282 ], [ 0.000000e+00, %274 ]
  %291 = phi float [ %287, %282 ], [ 0.000000e+00, %274 ]
  %292 = load float, ptr %13, align 4, !tbaa !115
  store float %292, ptr %8, align 4, !tbaa !115
  %293 = load float, ptr %28, align 4, !tbaa !115
  %294 = getelementptr inbounds float, ptr %8, i64 1
  store float %293, ptr %294, align 4, !tbaa !115
  %295 = load float, ptr %34, align 4, !tbaa !115
  %296 = getelementptr inbounds float, ptr %8, i64 2
  store float %295, ptr %296, align 4, !tbaa !115
  %297 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 9
  %298 = load float, ptr %297, align 8, !tbaa !122
  %299 = call float @llvm.fmuladd.f32(float %276, float %298, float %292)
  store float %299, ptr %8, align 4, !tbaa !115
  %300 = call float @llvm.fmuladd.f32(float %275, float %298, float %293)
  store float %300, ptr %294, align 4, !tbaa !115
  %301 = call float @llvm.fmuladd.f32(float %277, float %298, float %295)
  store float %301, ptr %296, align 4, !tbaa !115
  %302 = load float, ptr %6, align 4, !tbaa !115
  %303 = fadd float %299, %302
  store float %303, ptr %9, align 4, !tbaa !115
  %304 = load float, ptr %33, align 4, !tbaa !115
  %305 = fadd float %300, %304
  %306 = getelementptr inbounds float, ptr %9, i64 1
  store float %305, ptr %306, align 4, !tbaa !115
  %307 = load float, ptr %39, align 4, !tbaa !115
  %308 = fadd float %301, %307
  %309 = getelementptr inbounds float, ptr %9, i64 2
  store float %308, ptr %309, align 4, !tbaa !115
  store float %292, ptr %10, align 4, !tbaa !115
  %310 = getelementptr inbounds float, ptr %10, i64 1
  store float %293, ptr %310, align 4, !tbaa !115
  %311 = getelementptr inbounds float, ptr %10, i64 2
  store float %295, ptr %311, align 4, !tbaa !115
  %312 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 8
  %313 = load float, ptr %312, align 4, !tbaa !121
  %314 = call float @llvm.fmuladd.f32(float %290, float %313, float %292)
  store float %314, ptr %10, align 4, !tbaa !115
  %315 = call float @llvm.fmuladd.f32(float %289, float %313, float %293)
  store float %315, ptr %310, align 4, !tbaa !115
  %316 = call float @llvm.fmuladd.f32(float %291, float %313, float %295)
  store float %316, ptr %311, align 4, !tbaa !115
  %317 = load float, ptr %7, align 4, !tbaa !115
  %318 = fadd float %314, %317
  store float %318, ptr %11, align 4, !tbaa !115
  %319 = load float, ptr %56, align 4, !tbaa !115
  %320 = fadd float %315, %319
  %321 = getelementptr inbounds float, ptr %11, i64 1
  store float %320, ptr %321, align 4, !tbaa !115
  %322 = load float, ptr %60, align 4, !tbaa !115
  %323 = fadd float %316, %322
  %324 = getelementptr inbounds float, ptr %11, i64 2
  store float %323, ptr %324, align 4, !tbaa !115
  %325 = call i32 @isect_line_line_v3(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %4, ptr noundef nonnull %12) #13
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %349

327:                                              ; preds = %288
  %328 = load float, ptr %8, align 4, !tbaa !115
  store float %328, ptr %4, align 4, !tbaa !115
  %329 = load float, ptr %294, align 4, !tbaa !115
  %330 = getelementptr inbounds float, ptr %4, i64 1
  store float %329, ptr %330, align 4, !tbaa !115
  %331 = load float, ptr %296, align 4, !tbaa !115
  %332 = getelementptr inbounds float, ptr %4, i64 2
  store float %331, ptr %332, align 4, !tbaa !115
  %333 = load ptr, ptr %40, align 8, !tbaa !97
  %334 = getelementptr inbounds %struct.BMEdge, ptr %333, i64 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !73
  %336 = icmp eq ptr %335, %2
  %337 = getelementptr inbounds %struct.BMEdge, ptr %333, i64 0, i32 3
  %338 = load ptr, ptr %337, align 8, !tbaa !76
  %339 = icmp eq ptr %338, %2
  %340 = select i1 %339, ptr %335, ptr null
  %341 = select i1 %336, ptr %338, ptr %340
  %342 = getelementptr inbounds %struct.BMVert, ptr %341, i64 0, i32 2
  %343 = call float @dist_to_line_v3(ptr noundef nonnull %4, ptr noundef nonnull %13, ptr noundef nonnull %342) #13
  %344 = load float, ptr %312, align 4, !tbaa !121
  %345 = fsub float %343, %344
  %346 = call float @llvm.fabs.f32(float %345)
  %347 = fcmp ogt float %346, 0x3EB0C6F7A0000000
  br i1 %347, label %348, label %492

348:                                              ; preds = %327
  store float %343, ptr %312, align 4, !tbaa !121
  br label %492

349:                                              ; preds = %288
  %350 = load float, ptr %297, align 8, !tbaa !122
  %351 = fcmp oeq float %350, 0.000000e+00
  br i1 %351, label %352, label %420

352:                                              ; preds = %349
  %353 = load ptr, ptr %14, align 8, !tbaa !97
  %354 = getelementptr inbounds %struct.BMEdge, ptr %353, i64 0, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !73
  %356 = getelementptr inbounds %struct.BMVert, ptr %355, i64 0, i32 2
  %357 = getelementptr inbounds %struct.BMEdge, ptr %353, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8, !tbaa !76
  %359 = getelementptr inbounds %struct.BMVert, ptr %358, i64 0, i32 2
  %360 = call float @dist_squared_to_line_segment_v3(ptr noundef %4, ptr noundef nonnull %356, ptr noundef nonnull %359) #13
  %361 = fcmp ule float %360, 0x3E45798EC0000000
  br i1 %361, label %399, label %362

362:                                              ; preds = %352
  %363 = load ptr, ptr %14, align 8, !tbaa !97
  %364 = getelementptr inbounds %struct.BMEdge, ptr %363, i64 0, i32 2
  %365 = load ptr, ptr %364, align 8
  %366 = getelementptr inbounds %struct.BMVert, ptr %365, i64 0, i32 2
  %367 = load float, ptr %366, align 4, !tbaa !115
  %368 = load float, ptr %4, align 4, !tbaa !115
  %369 = fsub float %367, %368
  %370 = getelementptr inbounds %struct.BMVert, ptr %365, i64 0, i32 2, i64 1
  %371 = load float, ptr %370, align 4, !tbaa !115
  %372 = getelementptr inbounds float, ptr %4, i64 1
  %373 = load float, ptr %372, align 4, !tbaa !115
  %374 = fsub float %371, %373
  %375 = getelementptr inbounds %struct.BMVert, ptr %365, i64 0, i32 2, i64 2
  %376 = load float, ptr %375, align 4, !tbaa !115
  %377 = getelementptr inbounds float, ptr %4, i64 2
  %378 = load float, ptr %377, align 4, !tbaa !115
  %379 = fsub float %376, %378
  %380 = fmul float %374, %374
  %381 = call float @llvm.fmuladd.f32(float %369, float %369, float %380)
  %382 = call float @llvm.fmuladd.f32(float %379, float %379, float %381)
  %383 = getelementptr inbounds %struct.BMEdge, ptr %363, i64 0, i32 3
  %384 = load ptr, ptr %383, align 8
  %385 = getelementptr inbounds %struct.BMVert, ptr %384, i64 0, i32 2
  %386 = load float, ptr %385, align 4, !tbaa !115
  %387 = fsub float %386, %368
  %388 = getelementptr inbounds %struct.BMVert, ptr %384, i64 0, i32 2, i64 1
  %389 = load float, ptr %388, align 4, !tbaa !115
  %390 = fsub float %389, %373
  %391 = getelementptr inbounds %struct.BMVert, ptr %384, i64 0, i32 2, i64 2
  %392 = load float, ptr %391, align 4, !tbaa !115
  %393 = fsub float %392, %378
  %394 = fmul float %390, %390
  %395 = call float @llvm.fmuladd.f32(float %387, float %387, float %394)
  %396 = call float @llvm.fmuladd.f32(float %393, float %393, float %395)
  %397 = fcmp ogt float %382, %396
  %398 = select i1 %397, ptr %384, ptr %365
  br label %399

399:                                              ; preds = %352, %362
  %400 = phi ptr [ %398, %362 ], [ undef, %352 ]
  br i1 %361, label %420, label %401

401:                                              ; preds = %399
  %402 = getelementptr inbounds %struct.BMVert, ptr %400, i64 0, i32 2
  %403 = load float, ptr %402, align 4, !tbaa !115
  store float %403, ptr %4, align 4, !tbaa !115
  %404 = getelementptr inbounds %struct.BMVert, ptr %400, i64 0, i32 2, i64 1
  %405 = load float, ptr %404, align 4, !tbaa !115
  %406 = getelementptr inbounds float, ptr %4, i64 1
  store float %405, ptr %406, align 4, !tbaa !115
  %407 = getelementptr inbounds %struct.BMVert, ptr %400, i64 0, i32 2, i64 2
  %408 = load float, ptr %407, align 4, !tbaa !115
  %409 = getelementptr inbounds float, ptr %4, i64 2
  store float %408, ptr %409, align 4, !tbaa !115
  %410 = load float, ptr %13, align 4, !tbaa !115
  %411 = fsub float %410, %403
  %412 = load float, ptr %28, align 4, !tbaa !115
  %413 = fsub float %412, %405
  %414 = load float, ptr %34, align 4, !tbaa !115
  %415 = fsub float %414, %408
  %416 = fmul float %413, %413
  %417 = call float @llvm.fmuladd.f32(float %411, float %411, float %416)
  %418 = call float @llvm.fmuladd.f32(float %415, float %415, float %417)
  %419 = call float @sqrtf(float noundef %418) #13
  store float %419, ptr %312, align 4, !tbaa !121
  br label %420

420:                                              ; preds = %401, %399, %349
  %421 = phi ptr [ %400, %399 ], [ %400, %401 ], [ undef, %349 ]
  %422 = load float, ptr %312, align 4, !tbaa !121
  %423 = fcmp oeq float %422, 0.000000e+00
  br i1 %423, label %424, label %492

424:                                              ; preds = %420
  %425 = load ptr, ptr %40, align 8, !tbaa !97
  %426 = getelementptr inbounds %struct.BMEdge, ptr %425, i64 0, i32 2
  %427 = load ptr, ptr %426, align 8, !tbaa !73
  %428 = getelementptr inbounds %struct.BMVert, ptr %427, i64 0, i32 2
  %429 = getelementptr inbounds %struct.BMEdge, ptr %425, i64 0, i32 3
  %430 = load ptr, ptr %429, align 8, !tbaa !76
  %431 = getelementptr inbounds %struct.BMVert, ptr %430, i64 0, i32 2
  %432 = call float @dist_squared_to_line_segment_v3(ptr noundef %4, ptr noundef nonnull %428, ptr noundef nonnull %431) #13
  %433 = fcmp ule float %432, 0x3E45798EC0000000
  br i1 %433, label %471, label %434

434:                                              ; preds = %424
  %435 = load ptr, ptr %40, align 8, !tbaa !97
  %436 = getelementptr inbounds %struct.BMEdge, ptr %435, i64 0, i32 2
  %437 = load ptr, ptr %436, align 8
  %438 = getelementptr inbounds %struct.BMVert, ptr %437, i64 0, i32 2
  %439 = load float, ptr %438, align 4, !tbaa !115
  %440 = load float, ptr %4, align 4, !tbaa !115
  %441 = fsub float %439, %440
  %442 = getelementptr inbounds %struct.BMVert, ptr %437, i64 0, i32 2, i64 1
  %443 = load float, ptr %442, align 4, !tbaa !115
  %444 = getelementptr inbounds float, ptr %4, i64 1
  %445 = load float, ptr %444, align 4, !tbaa !115
  %446 = fsub float %443, %445
  %447 = getelementptr inbounds %struct.BMVert, ptr %437, i64 0, i32 2, i64 2
  %448 = load float, ptr %447, align 4, !tbaa !115
  %449 = getelementptr inbounds float, ptr %4, i64 2
  %450 = load float, ptr %449, align 4, !tbaa !115
  %451 = fsub float %448, %450
  %452 = fmul float %446, %446
  %453 = call float @llvm.fmuladd.f32(float %441, float %441, float %452)
  %454 = call float @llvm.fmuladd.f32(float %451, float %451, float %453)
  %455 = getelementptr inbounds %struct.BMEdge, ptr %435, i64 0, i32 3
  %456 = load ptr, ptr %455, align 8
  %457 = getelementptr inbounds %struct.BMVert, ptr %456, i64 0, i32 2
  %458 = load float, ptr %457, align 4, !tbaa !115
  %459 = fsub float %458, %440
  %460 = getelementptr inbounds %struct.BMVert, ptr %456, i64 0, i32 2, i64 1
  %461 = load float, ptr %460, align 4, !tbaa !115
  %462 = fsub float %461, %445
  %463 = getelementptr inbounds %struct.BMVert, ptr %456, i64 0, i32 2, i64 2
  %464 = load float, ptr %463, align 4, !tbaa !115
  %465 = fsub float %464, %450
  %466 = fmul float %462, %462
  %467 = call float @llvm.fmuladd.f32(float %459, float %459, float %466)
  %468 = call float @llvm.fmuladd.f32(float %465, float %465, float %467)
  %469 = fcmp ogt float %454, %468
  %470 = select i1 %469, ptr %456, ptr %437
  br label %471

471:                                              ; preds = %424, %434
  %472 = phi ptr [ %470, %434 ], [ %421, %424 ]
  br i1 %433, label %492, label %473

473:                                              ; preds = %471
  %474 = getelementptr inbounds %struct.BMVert, ptr %472, i64 0, i32 2
  %475 = load float, ptr %474, align 4, !tbaa !115
  store float %475, ptr %4, align 4, !tbaa !115
  %476 = getelementptr inbounds %struct.BMVert, ptr %472, i64 0, i32 2, i64 1
  %477 = load float, ptr %476, align 4, !tbaa !115
  %478 = getelementptr inbounds float, ptr %4, i64 1
  store float %477, ptr %478, align 4, !tbaa !115
  %479 = getelementptr inbounds %struct.BMVert, ptr %472, i64 0, i32 2, i64 2
  %480 = load float, ptr %479, align 4, !tbaa !115
  %481 = getelementptr inbounds float, ptr %4, i64 2
  store float %480, ptr %481, align 4, !tbaa !115
  %482 = load float, ptr %13, align 4, !tbaa !115
  %483 = fsub float %482, %475
  %484 = load float, ptr %28, align 4, !tbaa !115
  %485 = fsub float %484, %477
  %486 = load float, ptr %34, align 4, !tbaa !115
  %487 = fsub float %486, %480
  %488 = fmul float %485, %485
  %489 = call float @llvm.fmuladd.f32(float %483, float %483, float %488)
  %490 = call float @llvm.fmuladd.f32(float %487, float %487, float %489)
  %491 = call float @sqrtf(float noundef %490) #13
  store float %491, ptr %297, align 8, !tbaa !122
  br label %492

492:                                              ; preds = %187, %190, %186, %420, %471, %473, %327, %348, %122
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @offset_on_edge_between(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  %11 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 13
  %12 = load i8, ptr %11, align 1, !tbaa !105
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 2
  %17 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 3
  %18 = select i1 %13, ptr %17, ptr %16
  %19 = load ptr, ptr %18, align 8, !tbaa !113
  %20 = load ptr, ptr %0, align 8, !tbaa !52
  %21 = tail call ptr @BLI_ghash_lookup(ptr noundef %20, ptr noundef %19) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = getelementptr inbounds %struct.BevVert, ptr %21, i64 0, i32 6
  %25 = load i8, ptr %24, align 1, !tbaa !140
  %26 = icmp eq i8 %25, 0
  br label %27

27:                                               ; preds = %6, %23
  %28 = phi i1 [ %26, %23 ], [ true, %6 ]
  %29 = getelementptr inbounds %struct.EdgeHalf, ptr %2, i64 0, i32 13
  %30 = load i8, ptr %29, align 1, !tbaa !105
  %31 = icmp eq i8 %30, 0
  %32 = getelementptr inbounds %struct.EdgeHalf, ptr %2, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !97
  %34 = getelementptr inbounds %struct.BMEdge, ptr %33, i64 0, i32 2
  %35 = getelementptr inbounds %struct.BMEdge, ptr %33, i64 0, i32 3
  %36 = select i1 %31, ptr %35, ptr %34
  %37 = load ptr, ptr %36, align 8, !tbaa !113
  %38 = load ptr, ptr %0, align 8, !tbaa !52
  %39 = tail call ptr @BLI_ghash_lookup(ptr noundef %38, ptr noundef %37) #13
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %27
  %42 = getelementptr inbounds %struct.BevVert, ptr %39, i64 0, i32 6
  %43 = load i8, ptr %42, align 1, !tbaa !140
  %44 = icmp ne i8 %43, 0
  br label %45

45:                                               ; preds = %27, %41
  %46 = phi i1 [ %44, %41 ], [ false, %27 ]
  %47 = call fastcc zeroext i8 @offset_meet_edge(ptr noundef %1, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %7), !range !170
  %48 = call fastcc zeroext i8 @offset_meet_edge(ptr noundef %3, ptr noundef %2, ptr noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %8), !range !170
  %49 = icmp ne i8 %47, 0
  %50 = icmp ne i8 %48, 0
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %80

52:                                               ; preds = %45
  %53 = select i1 %28, i1 true, i1 %46
  br i1 %53, label %62, label %54

54:                                               ; preds = %52
  %55 = load float, ptr %9, align 4, !tbaa !115
  store float %55, ptr %5, align 4, !tbaa !115
  %56 = getelementptr inbounds float, ptr %9, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !115
  %58 = getelementptr inbounds float, ptr %5, i64 1
  store float %57, ptr %58, align 4, !tbaa !115
  %59 = getelementptr inbounds float, ptr %9, i64 2
  %60 = load float, ptr %59, align 4, !tbaa !115
  %61 = getelementptr inbounds float, ptr %5, i64 2
  store float %60, ptr %61, align 4, !tbaa !115
  br label %156

62:                                               ; preds = %52
  %63 = select i1 %28, i1 %46, i1 false
  br i1 %63, label %64, label %72

64:                                               ; preds = %62
  %65 = load float, ptr %10, align 4, !tbaa !115
  store float %65, ptr %5, align 4, !tbaa !115
  %66 = getelementptr inbounds float, ptr %10, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !115
  %68 = getelementptr inbounds float, ptr %5, i64 1
  store float %67, ptr %68, align 4, !tbaa !115
  %69 = getelementptr inbounds float, ptr %10, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !115
  %71 = getelementptr inbounds float, ptr %5, i64 2
  store float %70, ptr %71, align 4, !tbaa !115
  br label %156

72:                                               ; preds = %62
  %73 = load float, ptr %7, align 4, !tbaa !115
  %74 = call float @sinf(float noundef %73) #13
  %75 = load float, ptr %8, align 4, !tbaa !115
  %76 = call float @sinf(float noundef %75) #13
  %77 = fmul float %76, %76
  %78 = call float @llvm.fmuladd.f32(float %74, float %74, float %77)
  %79 = fdiv float %77, %78
  call void @interp_v3_v3v3(ptr noundef %5, ptr noundef nonnull %9, ptr noundef nonnull %10, float noundef %79) #13
  br label %156

80:                                               ; preds = %45
  %81 = icmp eq i8 %47, 0
  %82 = or i1 %81, %50
  br i1 %82, label %91, label %83

83:                                               ; preds = %80
  %84 = load float, ptr %9, align 4, !tbaa !115
  store float %84, ptr %5, align 4, !tbaa !115
  %85 = getelementptr inbounds float, ptr %9, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !115
  %87 = getelementptr inbounds float, ptr %5, i64 1
  store float %86, ptr %87, align 4, !tbaa !115
  %88 = getelementptr inbounds float, ptr %9, i64 2
  %89 = load float, ptr %88, align 4, !tbaa !115
  %90 = getelementptr inbounds float, ptr %5, i64 2
  store float %89, ptr %90, align 4, !tbaa !115
  br label %156

91:                                               ; preds = %80
  %92 = and i1 %81, %50
  br i1 %92, label %93, label %101

93:                                               ; preds = %91
  %94 = load float, ptr %10, align 4, !tbaa !115
  store float %94, ptr %5, align 4, !tbaa !115
  %95 = getelementptr inbounds float, ptr %10, i64 1
  %96 = load float, ptr %95, align 4, !tbaa !115
  %97 = getelementptr inbounds float, ptr %5, i64 1
  store float %96, ptr %97, align 4, !tbaa !115
  %98 = getelementptr inbounds float, ptr %10, i64 2
  %99 = load float, ptr %98, align 4, !tbaa !115
  %100 = getelementptr inbounds float, ptr %5, i64 2
  store float %99, ptr %100, align 4, !tbaa !115
  br label %156

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 9
  %103 = load float, ptr %102, align 8, !tbaa !122
  %104 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %105 = getelementptr inbounds %struct.EdgeHalf, ptr %3, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !97
  %107 = getelementptr inbounds %struct.BMEdge, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !73
  %109 = icmp eq ptr %108, %4
  %110 = getelementptr inbounds %struct.BMEdge, ptr %106, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !76
  %112 = icmp eq ptr %111, %4
  %113 = select i1 %112, ptr %108, ptr null
  %114 = select i1 %109, ptr %111, ptr %113
  %115 = getelementptr inbounds %struct.BMVert, ptr %114, i64 0, i32 2
  %116 = load float, ptr %104, align 4, !tbaa !115
  %117 = load float, ptr %115, align 4, !tbaa !115
  %118 = fsub float %116, %117
  %119 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2, i64 1
  %120 = load float, ptr %119, align 4, !tbaa !115
  %121 = getelementptr inbounds %struct.BMVert, ptr %114, i64 0, i32 2, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !115
  %123 = fsub float %120, %122
  %124 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2, i64 2
  %125 = load float, ptr %124, align 4, !tbaa !115
  %126 = getelementptr inbounds %struct.BMVert, ptr %114, i64 0, i32 2, i64 2
  %127 = load float, ptr %126, align 4, !tbaa !115
  %128 = fsub float %125, %127
  %129 = fmul float %123, %123
  %130 = call float @llvm.fmuladd.f32(float %118, float %118, float %129)
  %131 = call float @llvm.fmuladd.f32(float %128, float %128, float %130)
  %132 = fcmp ogt float %131, 0x38AA95A5C0000000
  br i1 %132, label %133, label %139

133:                                              ; preds = %101
  %134 = call float @sqrtf(float noundef %131) #13
  %135 = fdiv float 1.000000e+00, %134
  %136 = fmul float %118, %135
  %137 = fmul float %123, %135
  %138 = fmul float %128, %135
  br label %139

139:                                              ; preds = %101, %133
  %140 = phi float [ %137, %133 ], [ 0.000000e+00, %101 ]
  %141 = phi float [ %136, %133 ], [ 0.000000e+00, %101 ]
  %142 = phi float [ %138, %133 ], [ 0.000000e+00, %101 ]
  %143 = phi float [ %134, %133 ], [ 0.000000e+00, %101 ]
  %144 = fcmp olt float %143, %103
  %145 = fadd float %143, 0xBF0A36E2E0000000
  %146 = select i1 %144, float %145, float %103
  %147 = load float, ptr %104, align 4, !tbaa !115
  store float %147, ptr %5, align 4, !tbaa !115
  %148 = load float, ptr %119, align 4, !tbaa !115
  %149 = getelementptr inbounds float, ptr %5, i64 1
  store float %148, ptr %149, align 4, !tbaa !115
  %150 = load float, ptr %124, align 4, !tbaa !115
  %151 = getelementptr inbounds float, ptr %5, i64 2
  store float %150, ptr %151, align 4, !tbaa !115
  %152 = fneg float %146
  %153 = call float @llvm.fmuladd.f32(float %141, float %152, float %147)
  store float %153, ptr %5, align 4, !tbaa !115
  %154 = call float @llvm.fmuladd.f32(float %140, float %152, float %148)
  store float %154, ptr %149, align 4, !tbaa !115
  %155 = call float @llvm.fmuladd.f32(float %142, float %152, float %150)
  store float %155, ptr %151, align 4, !tbaa !115
  br label %156

156:                                              ; preds = %83, %139, %93, %54, %72, %64
  %157 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 2
  %158 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !97
  %160 = getelementptr inbounds %struct.BMEdge, ptr %159, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !73
  %162 = icmp eq ptr %161, %4
  %163 = getelementptr inbounds %struct.BMEdge, ptr %159, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !76
  %165 = icmp eq ptr %164, %4
  %166 = select i1 %165, ptr %161, ptr null
  %167 = select i1 %162, ptr %164, ptr %166
  %168 = getelementptr inbounds %struct.BMVert, ptr %167, i64 0, i32 2
  %169 = call float @dist_to_line_v3(ptr noundef %5, ptr noundef nonnull %157, ptr noundef nonnull %168) #13
  %170 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 9
  %171 = load float, ptr %170, align 8, !tbaa !122
  %172 = fsub float %169, %171
  %173 = call float @llvm.fabs.f32(float %172)
  %174 = fcmp ogt float %173, 0x3EB0C6F7A0000000
  br i1 %174, label %175, label %176

175:                                              ; preds = %156
  store float %169, ptr %170, align 8, !tbaa !122
  br label %176

176:                                              ; preds = %175, %156
  %177 = getelementptr inbounds %struct.EdgeHalf, ptr %2, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !97
  %179 = getelementptr inbounds %struct.BMEdge, ptr %178, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !73
  %181 = icmp eq ptr %180, %4
  %182 = getelementptr inbounds %struct.BMEdge, ptr %178, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !76
  %184 = icmp eq ptr %183, %4
  %185 = select i1 %184, ptr %180, ptr null
  %186 = select i1 %181, ptr %183, ptr %185
  %187 = getelementptr inbounds %struct.BMVert, ptr %186, i64 0, i32 2
  %188 = call float @dist_to_line_v3(ptr noundef %5, ptr noundef nonnull %157, ptr noundef nonnull %187) #13
  %189 = getelementptr inbounds %struct.EdgeHalf, ptr %2, i64 0, i32 8
  %190 = load float, ptr %189, align 4, !tbaa !121
  %191 = fsub float %188, %190
  %192 = call float @llvm.fabs.f32(float %191)
  %193 = fcmp ogt float %192, 0x3EB0C6F7A0000000
  br i1 %193, label %194, label %195

194:                                              ; preds = %176
  store float %188, ptr %189, align 4, !tbaa !121
  br label %195

195:                                              ; preds = %194, %176
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #13
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #6

declare zeroext i8 @isect_line_plane_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @isect_line_line_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @make_unit_square_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  %7 = load float, ptr %1, align 4, !tbaa !115
  %8 = load float, ptr %0, align 4, !tbaa !115
  %9 = fsub float %7, %8
  store float %9, ptr %6, align 4, !tbaa !115
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !115
  %12 = getelementptr inbounds float, ptr %0, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !115
  %14 = fsub float %11, %13
  %15 = getelementptr inbounds float, ptr %6, i64 1
  store float %14, ptr %15, align 4, !tbaa !115
  %16 = getelementptr inbounds float, ptr %1, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !115
  %18 = getelementptr inbounds float, ptr %0, i64 2
  %19 = load float, ptr %18, align 4, !tbaa !115
  %20 = fsub float %17, %19
  %21 = getelementptr inbounds float, ptr %6, i64 2
  store float %20, ptr %21, align 4, !tbaa !115
  %22 = load float, ptr %2, align 4, !tbaa !115
  %23 = fsub float %7, %22
  store float %23, ptr %5, align 4, !tbaa !115
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !115
  %26 = fsub float %11, %25
  %27 = getelementptr inbounds float, ptr %5, i64 1
  store float %26, ptr %27, align 4, !tbaa !115
  %28 = getelementptr inbounds float, ptr %2, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !115
  %30 = fsub float %17, %29
  %31 = getelementptr inbounds float, ptr %5, i64 2
  store float %30, ptr %31, align 4, !tbaa !115
  %32 = call float @angle_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #13
  %33 = fadd float %32, 0xC00921FB60000000
  %34 = call float @llvm.fabs.f32(float %33)
  %35 = fcmp ogt float %34, 0x3F1A36E2E0000000
  br i1 %35, label %36, label %141

36:                                               ; preds = %4
  %37 = load float, ptr %0, align 4, !tbaa !115
  %38 = load float, ptr %5, align 4, !tbaa !115
  %39 = fsub float %37, %38
  %40 = load float, ptr %12, align 4, !tbaa !115
  %41 = load float, ptr %27, align 4, !tbaa !115
  %42 = fsub float %40, %41
  %43 = load float, ptr %18, align 4, !tbaa !115
  %44 = load float, ptr %31, align 4, !tbaa !115
  %45 = fsub float %43, %44
  %46 = load float, ptr %21, align 4, !tbaa !115
  %47 = load float, ptr %15, align 4, !tbaa !115
  %48 = fneg float %44
  %49 = fmul float %47, %48
  %50 = call float @llvm.fmuladd.f32(float %41, float %46, float %49)
  %51 = load float, ptr %6, align 4, !tbaa !115
  %52 = fneg float %38
  %53 = fmul float %46, %52
  %54 = call float @llvm.fmuladd.f32(float %44, float %51, float %53)
  %55 = fneg float %41
  %56 = fmul float %51, %55
  %57 = call float @llvm.fmuladd.f32(float %38, float %47, float %56)
  %58 = fmul float %54, %54
  %59 = call float @llvm.fmuladd.f32(float %50, float %50, float %58)
  %60 = call float @llvm.fmuladd.f32(float %57, float %57, float %59)
  %61 = fcmp ogt float %60, 0x38AA95A5C0000000
  br i1 %61, label %62, label %68

62:                                               ; preds = %36
  %63 = call float @sqrtf(float noundef %60) #13
  %64 = fdiv float 1.000000e+00, %63
  %65 = fmul float %50, %64
  %66 = fmul float %54, %64
  %67 = fmul float %57, %64
  br label %68

68:                                               ; preds = %36, %62
  %69 = phi float [ %66, %62 ], [ 0.000000e+00, %36 ]
  %70 = phi float [ %65, %62 ], [ 0.000000e+00, %36 ]
  %71 = phi float [ %67, %62 ], [ 0.000000e+00, %36 ]
  %72 = fadd float %39, %70
  %73 = fadd float %42, %69
  %74 = fadd float %45, %71
  %75 = load float, ptr %1, align 4, !tbaa !115
  %76 = load float, ptr %0, align 4, !tbaa !115
  %77 = fsub float %75, %76
  store float %77, ptr %3, align 4, !tbaa !115
  %78 = load float, ptr %10, align 4, !tbaa !115
  %79 = load float, ptr %12, align 4, !tbaa !115
  %80 = fsub float %78, %79
  %81 = getelementptr inbounds float, ptr %3, i64 1
  store float %80, ptr %81, align 4, !tbaa !115
  %82 = load float, ptr %16, align 4, !tbaa !115
  %83 = load float, ptr %18, align 4, !tbaa !115
  %84 = fsub float %82, %83
  %85 = getelementptr inbounds float, ptr %3, i64 2
  store float %84, ptr %85, align 4, !tbaa !115
  %86 = getelementptr inbounds [4 x float], ptr %3, i64 0, i64 3
  store float 0.000000e+00, ptr %86, align 4, !tbaa !115
  %87 = getelementptr inbounds [4 x float], ptr %3, i64 1
  %88 = load float, ptr %1, align 4, !tbaa !115
  %89 = load float, ptr %2, align 4, !tbaa !115
  %90 = fsub float %88, %89
  store float %90, ptr %87, align 4, !tbaa !115
  %91 = load float, ptr %10, align 4, !tbaa !115
  %92 = load float, ptr %24, align 4, !tbaa !115
  %93 = fsub float %91, %92
  %94 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 1
  store float %93, ptr %94, align 4, !tbaa !115
  %95 = load float, ptr %16, align 4, !tbaa !115
  %96 = load float, ptr %28, align 4, !tbaa !115
  %97 = fsub float %95, %96
  %98 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 2
  store float %97, ptr %98, align 4, !tbaa !115
  %99 = getelementptr inbounds [4 x float], ptr %3, i64 1, i64 3
  store float 0.000000e+00, ptr %99, align 4, !tbaa !115
  %100 = getelementptr inbounds [4 x float], ptr %3, i64 2
  %101 = load float, ptr %1, align 4, !tbaa !115
  %102 = fadd float %72, %101
  store float %102, ptr %100, align 4, !tbaa !115
  %103 = load float, ptr %10, align 4, !tbaa !115
  %104 = fadd float %73, %103
  %105 = getelementptr inbounds [4 x float], ptr %3, i64 2, i64 1
  store float %104, ptr %105, align 4, !tbaa !115
  %106 = load float, ptr %16, align 4, !tbaa !115
  %107 = fadd float %74, %106
  %108 = getelementptr inbounds [4 x float], ptr %3, i64 2, i64 2
  store float %107, ptr %108, align 4, !tbaa !115
  %109 = load float, ptr %0, align 4, !tbaa !115
  %110 = fsub float %102, %109
  store float %110, ptr %100, align 4, !tbaa !115
  %111 = load float, ptr %12, align 4, !tbaa !115
  %112 = fsub float %104, %111
  store float %112, ptr %105, align 4, !tbaa !115
  %113 = load float, ptr %18, align 4, !tbaa !115
  %114 = fsub float %107, %113
  store float %114, ptr %108, align 4, !tbaa !115
  %115 = load float, ptr %2, align 4, !tbaa !115
  %116 = fsub float %110, %115
  store float %116, ptr %100, align 4, !tbaa !115
  %117 = load float, ptr %24, align 4, !tbaa !115
  %118 = fsub float %112, %117
  store float %118, ptr %105, align 4, !tbaa !115
  %119 = load float, ptr %28, align 4, !tbaa !115
  %120 = fsub float %114, %119
  store float %120, ptr %108, align 4, !tbaa !115
  %121 = getelementptr inbounds [4 x float], ptr %3, i64 2, i64 3
  store float 0.000000e+00, ptr %121, align 4, !tbaa !115
  %122 = getelementptr inbounds [4 x float], ptr %3, i64 3
  %123 = load float, ptr %0, align 4, !tbaa !115
  %124 = load float, ptr %2, align 4, !tbaa !115
  %125 = fadd float %123, %124
  store float %125, ptr %122, align 4, !tbaa !115
  %126 = load float, ptr %12, align 4, !tbaa !115
  %127 = load float, ptr %24, align 4, !tbaa !115
  %128 = fadd float %126, %127
  %129 = getelementptr inbounds [4 x float], ptr %3, i64 3, i64 1
  store float %128, ptr %129, align 4, !tbaa !115
  %130 = load float, ptr %18, align 4, !tbaa !115
  %131 = load float, ptr %28, align 4, !tbaa !115
  %132 = fadd float %130, %131
  %133 = getelementptr inbounds [4 x float], ptr %3, i64 3, i64 2
  store float %132, ptr %133, align 4, !tbaa !115
  %134 = load float, ptr %1, align 4, !tbaa !115
  %135 = fsub float %125, %134
  store float %135, ptr %122, align 4, !tbaa !115
  %136 = load float, ptr %10, align 4, !tbaa !115
  %137 = fsub float %128, %136
  store float %137, ptr %129, align 4, !tbaa !115
  %138 = load float, ptr %16, align 4, !tbaa !115
  %139 = fsub float %132, %138
  store float %139, ptr %133, align 4, !tbaa !115
  %140 = getelementptr inbounds [4 x float], ptr %3, i64 3, i64 3
  store float 1.000000e+00, ptr %140, align 4, !tbaa !115
  br label %141

141:                                              ; preds = %4, %68
  %142 = phi i8 [ 1, %68 ], [ 0, %4 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  ret i8 %142
}

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare float @angle_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @dist_to_line_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @dist_squared_to_line_segment_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @offset_meet_edge(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, ptr nocapture noundef writeonly %3, ptr noundef writeonly %4) unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  %8 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %11, %2
  %13 = getelementptr inbounds %struct.BMEdge, ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = icmp eq ptr %14, %2
  %16 = select i1 %15, ptr %11, ptr null
  %17 = select i1 %12, ptr %14, ptr %16
  %18 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2
  %19 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2
  %20 = load float, ptr %18, align 4, !tbaa !115
  %21 = load float, ptr %19, align 4, !tbaa !115
  %22 = fsub float %20, %21
  store float %22, ptr %6, align 4, !tbaa !115
  %23 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !115
  %25 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !115
  %27 = fsub float %24, %26
  %28 = getelementptr inbounds float, ptr %6, i64 1
  store float %27, ptr %28, align 4, !tbaa !115
  %29 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !115
  %31 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !115
  %33 = fsub float %30, %32
  %34 = getelementptr inbounds float, ptr %6, i64 2
  store float %33, ptr %34, align 4, !tbaa !115
  %35 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !97
  %37 = getelementptr inbounds %struct.BMEdge, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !73
  %39 = icmp eq ptr %38, %2
  %40 = getelementptr inbounds %struct.BMEdge, ptr %36, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !76
  %42 = icmp eq ptr %41, %2
  %43 = select i1 %42, ptr %38, ptr null
  %44 = select i1 %39, ptr %41, ptr %43
  %45 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2
  %46 = load float, ptr %45, align 4, !tbaa !115
  %47 = fsub float %46, %21
  store float %47, ptr %7, align 4, !tbaa !115
  %48 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !115
  %50 = fsub float %49, %26
  %51 = getelementptr inbounds float, ptr %7, i64 1
  store float %50, ptr %51, align 4, !tbaa !115
  %52 = getelementptr inbounds %struct.BMVert, ptr %44, i64 0, i32 2, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !115
  %54 = fsub float %53, %32
  %55 = getelementptr inbounds float, ptr %7, i64 2
  store float %54, ptr %55, align 4, !tbaa !115
  %56 = fmul float %27, %27
  %57 = tail call float @llvm.fmuladd.f32(float %22, float %22, float %56)
  %58 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %57)
  %59 = fcmp ogt float %58, 0x38AA95A5C0000000
  br i1 %59, label %60, label %69

60:                                               ; preds = %5
  %61 = tail call float @sqrtf(float noundef %58) #13
  %62 = fdiv float 1.000000e+00, %61
  %63 = load float, ptr %6, align 4, !tbaa !115
  %64 = fmul float %63, %62
  store float %64, ptr %6, align 4, !tbaa !115
  %65 = load float, ptr %28, align 4, !tbaa !115
  %66 = fmul float %62, %65
  store float %66, ptr %28, align 4, !tbaa !115
  %67 = load float, ptr %34, align 4, !tbaa !115
  %68 = fmul float %62, %67
  br label %70

69:                                               ; preds = %5
  store float 0.000000e+00, ptr %6, align 4, !tbaa !115
  store float 0.000000e+00, ptr %28, align 4, !tbaa !115
  br label %70

70:                                               ; preds = %60, %69
  %71 = phi float [ 0.000000e+00, %69 ], [ %68, %60 ]
  store float %71, ptr %34, align 4, !tbaa !115
  %72 = load float, ptr %7, align 4, !tbaa !115
  %73 = load float, ptr %51, align 4, !tbaa !115
  %74 = fmul float %73, %73
  %75 = tail call float @llvm.fmuladd.f32(float %72, float %72, float %74)
  %76 = load float, ptr %55, align 4, !tbaa !115
  %77 = tail call float @llvm.fmuladd.f32(float %76, float %76, float %75)
  %78 = fcmp ogt float %77, 0x38AA95A5C0000000
  br i1 %78, label %79, label %88

79:                                               ; preds = %70
  %80 = tail call float @sqrtf(float noundef %77) #13
  %81 = fdiv float 1.000000e+00, %80
  %82 = load float, ptr %7, align 4, !tbaa !115
  %83 = fmul float %82, %81
  store float %83, ptr %7, align 4, !tbaa !115
  %84 = load float, ptr %51, align 4, !tbaa !115
  %85 = fmul float %81, %84
  store float %85, ptr %51, align 4, !tbaa !115
  %86 = load float, ptr %55, align 4, !tbaa !115
  %87 = fmul float %81, %86
  br label %89

88:                                               ; preds = %70
  store float 0.000000e+00, ptr %7, align 4, !tbaa !115
  store float 0.000000e+00, ptr %51, align 4, !tbaa !115
  br label %89

89:                                               ; preds = %79, %88
  %90 = phi float [ 0.000000e+00, %88 ], [ %87, %79 ]
  store float %90, ptr %55, align 4, !tbaa !115
  %91 = call float @angle_normalized_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %92 = fcmp olt float %91, 0x3EB0C6F7A0000000
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = icmp eq ptr %4, null
  br i1 %94, label %157, label %95

95:                                               ; preds = %93
  store float 0.000000e+00, ptr %4, align 4, !tbaa !115
  br label %157

96:                                               ; preds = %89
  %97 = load float, ptr %28, align 4, !tbaa !115
  %98 = load float, ptr %55, align 4, !tbaa !115
  %99 = load float, ptr %34, align 4, !tbaa !115
  %100 = load float, ptr %51, align 4, !tbaa !115
  %101 = fneg float %99
  %102 = fmul float %100, %101
  %103 = call float @llvm.fmuladd.f32(float %97, float %98, float %102)
  %104 = load float, ptr %7, align 4, !tbaa !115
  %105 = load float, ptr %6, align 4, !tbaa !115
  %106 = fneg float %105
  %107 = fmul float %98, %106
  %108 = call float @llvm.fmuladd.f32(float %99, float %104, float %107)
  %109 = fneg float %97
  %110 = fmul float %104, %109
  %111 = call float @llvm.fmuladd.f32(float %105, float %100, float %110)
  %112 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3
  %113 = load float, ptr %112, align 4, !tbaa !115
  %114 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3, i64 1
  %115 = load float, ptr %114, align 4, !tbaa !115
  %116 = fmul float %108, %115
  %117 = call float @llvm.fmuladd.f32(float %103, float %113, float %116)
  %118 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 3, i64 2
  %119 = load float, ptr %118, align 4, !tbaa !115
  %120 = call float @llvm.fmuladd.f32(float %111, float %119, float %117)
  %121 = fcmp olt float %120, 0.000000e+00
  %122 = fsub float 0x401921FB60000000, %91
  %123 = select i1 %121, float %122, float %91
  %124 = icmp eq ptr %4, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %96
  store float %123, ptr %4, align 4, !tbaa !115
  br label %126

126:                                              ; preds = %125, %96
  %127 = fadd float %123, 0xC00921FB60000000
  %128 = fcmp ogt float %127, 0x3EB0C6F7A0000000
  br i1 %128, label %157, label %129

129:                                              ; preds = %126
  %130 = call float @sinf(float noundef %123) #13
  %131 = load float, ptr %19, align 4, !tbaa !115
  store float %131, ptr %3, align 4, !tbaa !115
  %132 = load float, ptr %25, align 4, !tbaa !115
  %133 = getelementptr inbounds float, ptr %3, i64 1
  store float %132, ptr %133, align 4, !tbaa !115
  %134 = load float, ptr %31, align 4, !tbaa !115
  %135 = getelementptr inbounds float, ptr %3, i64 2
  store float %134, ptr %135, align 4, !tbaa !115
  %136 = getelementptr inbounds %struct.EdgeHalf, ptr %0, i64 0, i32 9
  %137 = load float, ptr %136, align 8, !tbaa !122
  %138 = fcmp oeq float %137, 0.000000e+00
  br i1 %138, label %139, label %149

139:                                              ; preds = %129
  %140 = getelementptr inbounds %struct.EdgeHalf, ptr %1, i64 0, i32 8
  %141 = load float, ptr %140, align 4, !tbaa !121
  %142 = fdiv float %141, %130
  %143 = load float, ptr %6, align 4, !tbaa !115
  %144 = call float @llvm.fmuladd.f32(float %143, float %142, float %131)
  store float %144, ptr %3, align 4, !tbaa !115
  %145 = load float, ptr %28, align 4, !tbaa !115
  %146 = call float @llvm.fmuladd.f32(float %145, float %142, float %132)
  store float %146, ptr %133, align 4, !tbaa !115
  %147 = load float, ptr %34, align 4, !tbaa !115
  %148 = call float @llvm.fmuladd.f32(float %147, float %142, float %134)
  store float %148, ptr %135, align 4, !tbaa !115
  br label %157

149:                                              ; preds = %129
  %150 = fdiv float %137, %130
  %151 = load float, ptr %7, align 4, !tbaa !115
  %152 = call float @llvm.fmuladd.f32(float %151, float %150, float %131)
  store float %152, ptr %3, align 4, !tbaa !115
  %153 = load float, ptr %51, align 4, !tbaa !115
  %154 = call float @llvm.fmuladd.f32(float %153, float %150, float %132)
  store float %154, ptr %133, align 4, !tbaa !115
  %155 = load float, ptr %55, align 4, !tbaa !115
  %156 = call float @llvm.fmuladd.f32(float %155, float %150, float %134)
  store float %156, ptr %135, align 4, !tbaa !115
  br label %157

157:                                              ; preds = %139, %149, %126, %93, %95
  %158 = phi i8 [ 0, %95 ], [ 0, %93 ], [ 0, %126 ], [ 1, %149 ], [ 1, %139 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13
  ret i8 %158
}

declare void @BLI_ghashIterator_init(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_ghashIterator_step(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_gsqueue_new(i64 noundef) local_unnamed_addr #3

declare void @BLI_gsqueue_push(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BLI_gsqueue_is_empty(ptr noundef) local_unnamed_addr #3

declare void @BLI_gsqueue_pop(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BLI_gsqueue_free(ptr noundef) local_unnamed_addr #3

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @bevel_build_poly(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [32 x ptr], align 16
  %7 = alloca [32 x ptr], align 16
  %8 = getelementptr inbounds %struct.BevVert, ptr %2, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  store ptr null, ptr %5, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #13
  %10 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !150
  %12 = getelementptr inbounds %struct.BoundVert, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !193
  %14 = getelementptr inbounds %struct.EdgeHalf, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = getelementptr inbounds %struct.BoundVert, ptr %11, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !194
  %18 = getelementptr inbounds %struct.EdgeHalf, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = icmp eq ptr %15, %19
  %21 = icmp eq ptr %15, null
  %22 = select i1 %21, ptr %19, ptr %15
  %23 = select i1 %20, ptr %15, ptr %22
  %24 = getelementptr inbounds %struct.BevVert, ptr %2, i64 0, i32 5
  %25 = getelementptr inbounds %struct.VMesh, ptr %9, i64 0, i32 3
  br label %26

26:                                               ; preds = %202, %3
  %27 = phi i32 [ 0, %3 ], [ %203, %202 ]
  %28 = phi ptr [ %11, %3 ], [ %206, %202 ]
  %29 = phi i32 [ 0, %3 ], [ %204, %202 ]
  %30 = phi i32 [ 0, %3 ], [ %205, %202 ]
  %31 = load ptr, ptr %4, align 8
  %32 = icmp eq ptr %31, null
  %33 = add i32 %29, 1
  %34 = icmp ult i32 %33, 33
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  store ptr %6, ptr %4, align 8, !tbaa !113
  br label %50

37:                                               ; preds = %26
  %38 = icmp eq ptr %31, %6
  %39 = or i1 %38, %32
  %40 = select i1 %38, i64 32, i64 0
  br i1 %39, label %45, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %43 = call i64 %42(ptr noundef nonnull %31) #13
  %44 = lshr i64 %43, 3
  br label %45

45:                                               ; preds = %37, %41
  %46 = phi i64 [ %40, %37 ], [ %44, %41 ]
  %47 = sext i32 %33 to i64
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 8, i32 noundef %29, i32 noundef 1, ptr noundef nonnull @.str) #13
  br label %50

50:                                               ; preds = %49, %45, %36
  %51 = getelementptr inbounds %struct.BoundVert, ptr %28, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !156
  %53 = load ptr, ptr %4, align 8, !tbaa !113
  %54 = sext i32 %29 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  store ptr %52, ptr %55, align 8, !tbaa !113
  %56 = load ptr, ptr %5, align 8
  %57 = icmp eq ptr %56, null
  %58 = add i32 %30, 1
  %59 = icmp ult i32 %58, 33
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store ptr %7, ptr %5, align 8, !tbaa !113
  br label %75

62:                                               ; preds = %50
  %63 = icmp eq ptr %56, %7
  %64 = or i1 %63, %57
  %65 = select i1 %63, i64 32, i64 0
  br i1 %64, label %70, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %68 = call i64 %67(ptr noundef nonnull %56) #13
  %69 = lshr i64 %68, 3
  br label %70

70:                                               ; preds = %62, %66
  %71 = phi i64 [ %65, %62 ], [ %69, %66 ]
  %72 = sext i32 %58 to i64
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 8, i32 noundef %30, i32 noundef 1, ptr noundef nonnull @.str.1) #13
  br label %75

75:                                               ; preds = %74, %70, %61
  %76 = load i8, ptr %24, align 8, !tbaa !201
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.BoundVert, ptr %28, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !193
  %81 = getelementptr inbounds %struct.EdgeHalf, ptr %80, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !102
  %83 = getelementptr inbounds %struct.BoundVert, ptr %28, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !194
  %85 = getelementptr inbounds %struct.EdgeHalf, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !101
  %87 = icmp eq ptr %82, %86
  %88 = icmp eq ptr %82, null
  %89 = select i1 %88, ptr %86, ptr %82
  %90 = select i1 %87, ptr %82, ptr %89
  br label %91

91:                                               ; preds = %75, %78
  %92 = phi ptr [ %90, %78 ], [ %23, %75 ]
  %93 = load ptr, ptr %5, align 8, !tbaa !113
  %94 = sext i32 %30 to i64
  %95 = getelementptr inbounds ptr, ptr %93, i64 %94
  store ptr %92, ptr %95, align 8, !tbaa !113
  %96 = add nsw i32 %27, 1
  %97 = getelementptr inbounds %struct.BoundVert, ptr %28, i64 0, i32 5
  %98 = load ptr, ptr %97, align 8, !tbaa !157
  %99 = icmp eq ptr %98, null
  br i1 %99, label %202, label %100

100:                                              ; preds = %91
  %101 = getelementptr inbounds %struct.EdgeHalf, ptr %98, i64 0, i32 7
  %102 = load i32, ptr %101, align 8, !tbaa !104
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %202

104:                                              ; preds = %100
  %105 = load ptr, ptr %97, align 8, !tbaa !157
  %106 = getelementptr inbounds %struct.EdgeHalf, ptr %105, i64 0, i32 7
  %107 = load i32, ptr %106, align 8, !tbaa !104
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %202

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.BoundVert, ptr %28, i64 0, i32 6
  %111 = getelementptr inbounds %struct.BoundVert, ptr %28, i64 0, i32 3
  %112 = getelementptr inbounds %struct.BoundVert, ptr %28, i64 0, i32 4
  %113 = sext i32 %58 to i64
  %114 = sext i32 %33 to i64
  br label %115

115:                                              ; preds = %109, %189
  %116 = phi i64 [ %114, %109 ], [ %122, %189 ]
  %117 = phi i64 [ %113, %109 ], [ %157, %189 ]
  %118 = phi i32 [ %96, %109 ], [ %193, %189 ]
  %119 = phi i32 [ 1, %109 ], [ %194, %189 ]
  %120 = load ptr, ptr %4, align 8
  %121 = icmp eq ptr %120, null
  %122 = add nsw i64 %116, 1
  %123 = trunc i64 %122 to i32
  %124 = icmp ult i32 %123, 33
  %125 = select i1 %121, i1 %124, i1 false
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  store ptr %6, ptr %4, align 8, !tbaa !113
  br label %140

127:                                              ; preds = %115
  %128 = icmp eq ptr %120, %6
  %129 = or i1 %128, %121
  %130 = select i1 %128, i64 32, i64 0
  br i1 %129, label %135, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %133 = call i64 %132(ptr noundef nonnull %120) #13
  %134 = lshr i64 %133, 3
  br label %135

135:                                              ; preds = %127, %131
  %136 = phi i64 [ %130, %127 ], [ %134, %131 ]
  %137 = icmp ult i64 %136, %122
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = trunc i64 %116 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %4, ptr noundef nonnull %6, i32 noundef 8, i32 noundef %139, i32 noundef 1, ptr noundef nonnull @.str) #13
  br label %140

140:                                              ; preds = %138, %135, %126
  %141 = load i32, ptr %110, align 8, !tbaa !151
  %142 = load i32, ptr %25, align 4, !tbaa !94
  %143 = sdiv i32 %142, 2
  %144 = add nsw i32 %143, 1
  %145 = add nsw i32 %142, 1
  %146 = load ptr, ptr %9, align 8, !tbaa !149
  %147 = mul nsw i32 %145, %141
  %148 = mul nsw i32 %147, %144
  %149 = add nsw i32 %148, %119
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.NewVert, ptr %146, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !155
  %153 = load ptr, ptr %4, align 8, !tbaa !113
  %154 = getelementptr inbounds ptr, ptr %153, i64 %116
  store ptr %152, ptr %154, align 8, !tbaa !113
  %155 = load ptr, ptr %5, align 8
  %156 = icmp eq ptr %155, null
  %157 = add nsw i64 %117, 1
  %158 = trunc i64 %157 to i32
  %159 = icmp ult i32 %158, 33
  %160 = select i1 %156, i1 %159, i1 false
  br i1 %160, label %161, label %162

161:                                              ; preds = %140
  store ptr %7, ptr %5, align 8, !tbaa !113
  br label %175

162:                                              ; preds = %140
  %163 = icmp eq ptr %155, %7
  %164 = or i1 %163, %156
  %165 = select i1 %163, i64 32, i64 0
  br i1 %164, label %170, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !113
  %168 = call i64 %167(ptr noundef nonnull %155) #13
  %169 = lshr i64 %168, 3
  br label %170

170:                                              ; preds = %162, %166
  %171 = phi i64 [ %165, %162 ], [ %169, %166 ]
  %172 = icmp ult i64 %171, %157
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = trunc i64 %117 to i32
  call void @_bli_array_grow_func(ptr noundef nonnull %5, ptr noundef nonnull %7, i32 noundef 8, i32 noundef %174, i32 noundef 1, ptr noundef nonnull @.str.1) #13
  br label %175

175:                                              ; preds = %173, %170, %161
  %176 = load i8, ptr %24, align 8, !tbaa !201
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load ptr, ptr %111, align 8, !tbaa !193
  %180 = getelementptr inbounds %struct.EdgeHalf, ptr %179, i64 0, i32 4
  %181 = load ptr, ptr %180, align 8, !tbaa !102
  %182 = load ptr, ptr %112, align 8, !tbaa !194
  %183 = getelementptr inbounds %struct.EdgeHalf, ptr %182, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !101
  %185 = icmp eq ptr %181, %184
  %186 = icmp eq ptr %181, null
  %187 = select i1 %186, ptr %184, ptr %181
  %188 = select i1 %185, ptr %181, ptr %187
  br label %189

189:                                              ; preds = %175, %178
  %190 = phi ptr [ %188, %178 ], [ %23, %175 ]
  %191 = load ptr, ptr %5, align 8, !tbaa !113
  %192 = getelementptr inbounds ptr, ptr %191, i64 %117
  store ptr %190, ptr %192, align 8, !tbaa !113
  %193 = add nsw i32 %118, 1
  %194 = add nuw nsw i32 %119, 1
  %195 = load ptr, ptr %97, align 8, !tbaa !157
  %196 = getelementptr inbounds %struct.EdgeHalf, ptr %195, i64 0, i32 7
  %197 = load i32, ptr %196, align 8, !tbaa !104
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %115, label %199, !llvm.loop !244

199:                                              ; preds = %189
  %200 = trunc i64 %122 to i32
  %201 = trunc i64 %157 to i32
  br label %202

202:                                              ; preds = %199, %104, %91, %100
  %203 = phi i32 [ %96, %100 ], [ %96, %91 ], [ %96, %104 ], [ %193, %199 ]
  %204 = phi i32 [ %33, %100 ], [ %33, %91 ], [ %33, %104 ], [ %200, %199 ]
  %205 = phi i32 [ %58, %100 ], [ %58, %91 ], [ %58, %104 ], [ %201, %199 ]
  %206 = load ptr, ptr %28, align 8, !tbaa !158
  %207 = load ptr, ptr %10, align 8, !tbaa !150
  %208 = icmp eq ptr %206, %207
  br i1 %208, label %209, label %26, !llvm.loop !245

209:                                              ; preds = %202
  %210 = icmp sgt i32 %203, 2
  br i1 %210, label %211, label %229

211:                                              ; preds = %209
  %212 = load ptr, ptr %4, align 8, !tbaa !113
  %213 = load ptr, ptr %5, align 8, !tbaa !113
  %214 = getelementptr inbounds %struct.BoundVert, ptr %206, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !193
  %216 = getelementptr inbounds %struct.EdgeHalf, ptr %215, i64 0, i32 4
  %217 = load ptr, ptr %216, align 8, !tbaa !102
  %218 = getelementptr inbounds %struct.BoundVert, ptr %206, i64 0, i32 4
  %219 = load ptr, ptr %218, align 8, !tbaa !194
  %220 = getelementptr inbounds %struct.EdgeHalf, ptr %219, i64 0, i32 3
  %221 = load ptr, ptr %220, align 8, !tbaa !101
  %222 = icmp eq ptr %217, %221
  %223 = icmp eq ptr %217, null
  %224 = select i1 %223, ptr %221, ptr %217
  %225 = select i1 %222, ptr %217, ptr %224
  %226 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 13
  %227 = load i32, ptr %226, align 4, !tbaa !51
  %228 = call fastcc ptr @bev_create_ngon(ptr noundef %1, ptr noundef %212, i32 noundef %203, ptr noundef %213, ptr noundef %225, i32 noundef %227, i8 noundef zeroext 1)
  br label %229

229:                                              ; preds = %209, %211
  %230 = phi ptr [ %228, %211 ], [ null, %209 ]
  %231 = load ptr, ptr %4, align 8
  %232 = icmp ne ptr %231, null
  %233 = icmp ne ptr %231, %6
  %234 = and i1 %232, %233
  br i1 %234, label %235, label %237

235:                                              ; preds = %229
  %236 = load ptr, ptr @MEM_freeN, align 8, !tbaa !113
  call void %236(ptr noundef nonnull %231) #13
  br label %237

237:                                              ; preds = %235, %229
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret ptr %230
}

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_bli_array_grow_func(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @bev_create_ngon(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #13
  %9 = tail call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %4, i32 noundef 0, i8 noundef zeroext 1) #13
  %10 = icmp eq ptr %4, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = icmp eq ptr %3, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %3, align 8, !tbaa !113
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %9, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %20, label %50

18:                                               ; preds = %7
  %19 = icmp eq ptr %9, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %18, %13
  br i1 %10, label %21, label %23

21:                                               ; preds = %20
  %22 = load ptr, ptr %3, align 8, !tbaa !113
  br label %23

23:                                               ; preds = %20, %21
  %24 = phi ptr [ %22, %21 ], [ %4, %20 ]
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %24, ptr noundef %9) #13
  %25 = icmp eq i8 %6, 0
  br i1 %25, label %50, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 4
  store i8 11, ptr %27, align 4, !tbaa !61
  %28 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %28, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct.BMIter, ptr %8, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %29, align 8, !tbaa !64
  store ptr %9, ptr %8, align 8, !tbaa !70
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %8) #13
  %30 = load ptr, ptr %29, align 8, !tbaa !64
  %31 = call ptr %30(ptr noundef nonnull %8) #13
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %26
  %34 = icmp eq ptr %3, null
  br label %35

35:                                               ; preds = %33, %45
  %36 = phi i64 [ 0, %33 ], [ %46, %45 ]
  %37 = phi ptr [ %31, %33 ], [ %48, %45 ]
  br i1 %34, label %41, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds ptr, ptr %3, i64 %36
  %40 = load ptr, ptr %39, align 8, !tbaa !113
  br label %41

41:                                               ; preds = %35, %38
  %42 = phi ptr [ %40, %38 ], [ %4, %35 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void @BM_loop_interp_from_face(ptr noundef %0, ptr noundef nonnull %37, ptr noundef nonnull %42, i8 noundef zeroext 1, i8 noundef zeroext 1) #13
  br label %45

45:                                               ; preds = %44, %41
  %46 = add nuw i64 %36, 1
  %47 = load ptr, ptr %29, align 8, !tbaa !64
  %48 = call ptr %47(ptr noundef nonnull %8) #13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %35, !llvm.loop !246

50:                                               ; preds = %45, %26, %23, %13, %11
  %51 = icmp eq ptr %9, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.BMHeader, ptr %9, i64 0, i32 3
  %54 = load i8, ptr %53, align 1, !tbaa !71
  %55 = or i8 %54, 16
  store i8 %55, ptr %53, align 1, !tbaa !71
  br label %56

56:                                               ; preds = %18, %52, %50
  %57 = icmp sgt i32 %5, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %56
  %59 = trunc i32 %5 to i16
  %60 = getelementptr inbounds %struct.BMFace, ptr %9, i64 0, i32 5
  store i16 %59, ptr %60, align 8, !tbaa !247
  br label %61

61:                                               ; preds = %58, %56
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #13
  ret ptr %9
}

declare ptr @BM_face_create_verts(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_loop_interp_from_face(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @adj_vmesh(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds %struct.VMesh, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !148
  %9 = getelementptr inbounds %struct.VMesh, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !94
  %11 = getelementptr inbounds %struct.VMesh, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  %13 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef 32) #13
  %14 = getelementptr inbounds %struct.VMesh, ptr %13, i64 0, i32 2
  store i32 %8, ptr %14, align 8, !tbaa !148
  %15 = getelementptr inbounds %struct.VMesh, ptr %13, i64 0, i32 3
  store i32 2, ptr %15, align 4, !tbaa !94
  %16 = getelementptr inbounds %struct.VMesh, ptr %13, i64 0, i32 1
  store ptr %12, ptr %16, align 8, !tbaa !150
  %17 = mul nsw i32 %8, 6
  %18 = sext i32 %17 to i64
  %19 = mul nsw i64 %18, 24
  %20 = tail call ptr @BLI_memarena_alloc(ptr noundef %4, i64 noundef %19) #13
  store ptr %20, ptr %13, align 8, !tbaa !149
  %21 = getelementptr inbounds %struct.VMesh, ptr %13, i64 0, i32 4
  store i32 2, ptr %21, align 8, !tbaa !160
  %22 = icmp sgt i32 %8, 0
  br i1 %22, label %23, label %95

23:                                               ; preds = %2
  %24 = load i32, ptr %15, align 4, !tbaa !94
  %25 = sdiv i32 %24, 2
  %26 = add nsw i32 %25, 1
  %27 = add nsw i32 %24, 1
  %28 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2, i32 2
  %31 = sext i32 %27 to i64
  %32 = sext i32 %26 to i64
  %33 = zext nneg i32 %8 to i64
  br label %34

34:                                               ; preds = %23, %83
  %35 = phi i64 [ 0, %23 ], [ %93, %83 ]
  %36 = phi ptr [ %16, %23 ], [ %40, %83 ]
  %37 = phi float [ 0.000000e+00, %23 ], [ %92, %83 ]
  %38 = phi float [ 0.000000e+00, %23 ], [ %90, %83 ]
  %39 = phi float [ 0.000000e+00, %23 ], [ %88, %83 ]
  %40 = load ptr, ptr %36, align 8, !tbaa !113
  %41 = mul nsw i64 %35, %31
  %42 = mul nsw i64 %41, %32
  %43 = getelementptr inbounds %struct.NewVert, ptr %20, i64 %42, i32 1
  %44 = getelementptr inbounds %struct.BoundVert, ptr %40, i64 0, i32 2, i32 1
  %45 = load float, ptr %44, align 4, !tbaa !115
  store float %45, ptr %43, align 4, !tbaa !115
  %46 = getelementptr inbounds %struct.BoundVert, ptr %40, i64 0, i32 2, i32 1, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !115
  %48 = getelementptr inbounds float, ptr %43, i64 1
  store float %47, ptr %48, align 4, !tbaa !115
  %49 = getelementptr inbounds %struct.BoundVert, ptr %40, i64 0, i32 2, i32 1, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !115
  %51 = getelementptr inbounds float, ptr %43, i64 2
  store float %50, ptr %51, align 4, !tbaa !115
  %52 = getelementptr %struct.NewVert, ptr %20, i64 %42
  %53 = getelementptr %struct.NewVert, ptr %52, i64 1, i32 1
  switch i32 %29, label %70 [
    i32 1, label %54
    i32 2, label %61
  ]

54:                                               ; preds = %34
  %55 = getelementptr inbounds %struct.BoundVert, ptr %40, i64 0, i32 7, i32 3
  %56 = load float, ptr %55, align 4, !tbaa !115
  store float %56, ptr %53, align 4, !tbaa !115
  %57 = getelementptr inbounds %struct.BoundVert, ptr %40, i64 0, i32 7, i32 3, i64 1
  %58 = load float, ptr %57, align 4, !tbaa !115
  %59 = getelementptr %struct.NewVert, ptr %52, i64 1, i32 1, i64 1
  store float %58, ptr %59, align 4, !tbaa !115
  %60 = getelementptr inbounds %struct.BoundVert, ptr %40, i64 0, i32 7, i32 3, i64 2
  br label %83

61:                                               ; preds = %34
  %62 = getelementptr inbounds %struct.BoundVert, ptr %40, i64 0, i32 7, i32 7
  %63 = load ptr, ptr %62, align 8, !tbaa !161
  %64 = getelementptr inbounds float, ptr %63, i64 3
  %65 = load float, ptr %64, align 4, !tbaa !115
  store float %65, ptr %53, align 4, !tbaa !115
  %66 = getelementptr inbounds float, ptr %63, i64 4
  %67 = load float, ptr %66, align 4, !tbaa !115
  %68 = getelementptr %struct.NewVert, ptr %52, i64 1, i32 1, i64 1
  store float %67, ptr %68, align 4, !tbaa !115
  %69 = getelementptr inbounds float, ptr %63, i64 5
  br label %83

70:                                               ; preds = %34
  %71 = load i32, ptr %30, align 8, !tbaa !59
  %72 = sdiv i32 %71, 2
  %73 = getelementptr inbounds %struct.BoundVert, ptr %40, i64 0, i32 7, i32 8
  %74 = load ptr, ptr %73, align 8, !tbaa !162
  %75 = mul nsw i32 %72, 3
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, ptr %74, i64 %76
  %78 = load float, ptr %77, align 4, !tbaa !115
  store float %78, ptr %53, align 4, !tbaa !115
  %79 = getelementptr inbounds float, ptr %77, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !115
  %81 = getelementptr %struct.NewVert, ptr %52, i64 1, i32 1, i64 1
  store float %80, ptr %81, align 4, !tbaa !115
  %82 = getelementptr inbounds float, ptr %77, i64 2
  br label %83

83:                                               ; preds = %54, %61, %70
  %84 = phi ptr [ %60, %54 ], [ %69, %61 ], [ %82, %70 ]
  %85 = load float, ptr %84, align 4, !tbaa !115
  %86 = getelementptr %struct.NewVert, ptr %52, i64 1, i32 1, i64 2
  store float %85, ptr %86, align 4, !tbaa !115
  %87 = load float, ptr %44, align 4, !tbaa !115
  %88 = fadd float %39, %87
  %89 = load float, ptr %46, align 4, !tbaa !115
  %90 = fadd float %38, %89
  %91 = load float, ptr %49, align 4, !tbaa !115
  %92 = fadd float %37, %91
  %93 = add nuw nsw i64 %35, 1
  %94 = icmp eq i64 %93, %33
  br i1 %94, label %95, label %34, !llvm.loop !248

95:                                               ; preds = %83, %2
  %96 = phi float [ 0.000000e+00, %2 ], [ %88, %83 ]
  %97 = phi float [ 0.000000e+00, %2 ], [ %90, %83 ]
  %98 = phi float [ 0.000000e+00, %2 ], [ %92, %83 ]
  %99 = load ptr, ptr %1, align 8, !tbaa !85
  %100 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 2
  %101 = load float, ptr %100, align 4, !tbaa !115
  %102 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 2, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !115
  %104 = getelementptr inbounds %struct.BMVert, ptr %99, i64 0, i32 2, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !115
  %106 = sitofp i32 %8 to float
  %107 = fdiv float 1.000000e+00, %106
  %108 = fmul float %107, %96
  %109 = fmul float %107, %97
  %110 = fmul float %107, %98
  %111 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 6
  %112 = load float, ptr %111, align 4, !tbaa !44
  %113 = fcmp oeq float %112, 1.000000e+00
  br i1 %113, label %127, label %114

114:                                              ; preds = %95
  %115 = fcmp ogt float %112, 1.000000e+00
  br i1 %115, label %116, label %125

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 7
  %118 = load i8, ptr %117, align 8, !tbaa !45
  %119 = icmp eq i8 %118, 0
  %120 = fcmp oeq float %112, 4.000000e+00
  %121 = select i1 %120, float -2.000000e+00, float 5.000000e-01
  %122 = select i1 %119, float %121, float 2.500000e-01
  %123 = fdiv float %122, %112
  %124 = fsub float 1.000000e+00, %123
  br label %127

125:                                              ; preds = %114
  %126 = fadd float %112, -1.000000e+00
  br label %127

127:                                              ; preds = %95, %116, %125
  %128 = phi float [ %124, %116 ], [ %126, %125 ], [ 0.000000e+00, %95 ]
  %129 = fsub float %101, %108
  %130 = fsub float %103, %109
  %131 = fsub float %105, %110
  %132 = fmul float %130, %130
  %133 = tail call float @llvm.fmuladd.f32(float %129, float %129, float %132)
  %134 = tail call float @llvm.fmuladd.f32(float %131, float %131, float %133)
  %135 = fcmp ogt float %134, 0x3D71979980000000
  br i1 %135, label %136, label %140

136:                                              ; preds = %127
  %137 = tail call float @llvm.fmuladd.f32(float %129, float %128, float %108)
  %138 = tail call float @llvm.fmuladd.f32(float %130, float %128, float %109)
  %139 = tail call float @llvm.fmuladd.f32(float %131, float %128, float %110)
  br label %140

140:                                              ; preds = %136, %127
  %141 = phi float [ %137, %136 ], [ %108, %127 ]
  %142 = phi float [ %138, %136 ], [ %109, %127 ]
  %143 = phi float [ %139, %136 ], [ %110, %127 ]
  %144 = load i32, ptr %15, align 4, !tbaa !94
  %145 = sext i32 %144 to i64
  %146 = getelementptr %struct.NewVert, ptr %20, i64 %145
  %147 = getelementptr %struct.NewVert, ptr %146, i64 2, i32 1
  store float %141, ptr %147, align 4, !tbaa !115
  %148 = getelementptr %struct.NewVert, ptr %146, i64 2, i32 1, i64 1
  store float %142, ptr %148, align 4, !tbaa !115
  %149 = getelementptr %struct.NewVert, ptr %146, i64 2, i32 1, i64 2
  store float %143, ptr %149, align 4, !tbaa !115
  tail call fastcc void @vmesh_copy_equiv_verts(ptr noundef nonnull %13)
  br label %150

150:                                              ; preds = %150, %140
  %151 = phi ptr [ %13, %140 ], [ %152, %150 ]
  %152 = tail call fastcc ptr @cubic_subdiv(ptr noundef %0, ptr noundef %151)
  %153 = getelementptr inbounds %struct.VMesh, ptr %152, i64 0, i32 3
  %154 = load i32, ptr %153, align 4, !tbaa !94
  %155 = icmp slt i32 %154, %10
  br i1 %155, label %150, label %156, !llvm.loop !249

156:                                              ; preds = %150
  %157 = icmp eq i32 %154, %10
  br i1 %157, label %160, label %158

158:                                              ; preds = %156
  %159 = tail call fastcc ptr @interp_vmesh(ptr noundef %0, ptr noundef %152, i32 noundef %10)
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi ptr [ %159, %158 ], [ %152, %156 ]
  ret ptr %161
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @vmesh_copy_equiv_verts(ptr nocapture noundef readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.VMesh, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !148
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %136

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.VMesh, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !94
  %8 = sdiv i32 %7, 2
  %9 = icmp slt i32 %7, -1
  %10 = icmp slt i32 %7, 0
  %11 = and i32 %7, -2147483647
  %12 = icmp eq i32 %11, 1
  %13 = add nsw i32 %8, 1
  %14 = add i32 %7, 1
  %15 = mul i32 %13, %14
  %16 = srem i32 %7, 2
  %17 = icmp eq i32 %16, 0
  %18 = add nsw i32 %8, -1
  %19 = add nsw i32 %18, %16
  %20 = add nsw i32 %3, -1
  %21 = sext i32 %8 to i64
  %22 = zext i32 %8 to i64
  %23 = sext i32 %8 to i64
  %24 = zext i32 %8 to i64
  %25 = sext i32 %8 to i64
  %26 = sext i32 %19 to i64
  %27 = zext i32 %8 to i64
  %28 = sext i32 %14 to i64
  %29 = zext i32 %8 to i64
  %30 = sext i32 %8 to i64
  %31 = zext nneg i32 %3 to i64
  %32 = zext nneg i32 %3 to i64
  %33 = zext i32 %13 to i64
  %34 = zext i32 %14 to i64
  br label %35

35:                                               ; preds = %5, %133
  %36 = phi i64 [ 0, %5 ], [ %134, %133 ]
  br i1 %9, label %133, label %37

37:                                               ; preds = %35
  %38 = icmp eq i64 %36, 0
  %39 = trunc i64 %36 to i32
  %40 = mul i32 %15, %39
  %41 = trunc i64 %36 to i32
  %42 = mul i32 %13, %41
  %43 = trunc i64 %36 to i32
  %44 = add i32 %20, %43
  %45 = add nuw nsw i64 %36, 1
  %46 = sext i32 %40 to i64
  %47 = icmp eq i64 %45, %31
  %48 = trunc i64 %45 to i32
  %49 = select i1 %47, i32 0, i32 %48
  %50 = mul i32 %49, %13
  br label %51

51:                                               ; preds = %37, %130
  %52 = phi i64 [ 0, %37 ], [ %131, %130 ]
  br i1 %10, label %130, label %53

53:                                               ; preds = %51
  %54 = icmp sge i64 %52, %30
  %55 = icmp eq i64 %52, %29
  %56 = mul nsw i64 %52, %28
  %57 = add nsw i64 %56, %46
  %58 = icmp eq i64 %52, %27
  %59 = and i1 %17, %58
  %60 = icmp sgt i64 %52, %26
  %61 = trunc i64 %52 to i32
  %62 = add i32 %42, %61
  %63 = mul i32 %62, %14
  %64 = trunc i64 %52 to i32
  %65 = sub i32 %7, %64
  %66 = trunc i64 %52 to i32
  br label %67

67:                                               ; preds = %53, %127
  %68 = phi i64 [ 0, %53 ], [ %128, %127 ]
  br i1 %12, label %69, label %71

69:                                               ; preds = %67
  %70 = icmp sle i64 %68, %23
  br label %78

71:                                               ; preds = %67
  %72 = icmp sgt i64 %68, %25
  %73 = or i1 %54, %72
  br i1 %73, label %74, label %127

74:                                               ; preds = %71
  %75 = icmp eq i64 %68, %24
  %76 = and i1 %55, %75
  %77 = and i1 %38, %76
  br label %78

78:                                               ; preds = %74, %69
  %79 = phi i1 [ %70, %69 ], [ %77, %74 ]
  br i1 %79, label %127, label %80

80:                                               ; preds = %78
  %81 = load ptr, ptr %0, align 8, !tbaa !149
  %82 = add nsw i64 %57, %68
  %83 = getelementptr inbounds %struct.NewVert, ptr %81, i64 %82
  %84 = icmp eq i64 %68, %22
  %85 = and i1 %59, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = getelementptr %struct.NewVert, ptr %81, i64 %68
  %88 = getelementptr %struct.NewVert, ptr %87, i64 %56
  br label %115

89:                                               ; preds = %80
  %90 = icmp sgt i64 %68, %21
  %91 = or i1 %60, %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = trunc i64 %68 to i32
  %94 = add i32 %63, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.NewVert, ptr %81, i64 %95
  br label %115

97:                                               ; preds = %89
  br i1 %90, label %107, label %98

98:                                               ; preds = %97
  %99 = srem i32 %44, %3
  %100 = mul i32 %99, %13
  %101 = trunc i64 %68 to i32
  %102 = add i32 %100, %101
  %103 = mul i32 %102, %14
  %104 = add i32 %65, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.NewVert, ptr %81, i64 %105
  br label %115

107:                                              ; preds = %97
  %108 = trunc i64 %68 to i32
  %109 = sub i32 %7, %108
  %110 = add i32 %109, %50
  %111 = mul i32 %110, %14
  %112 = add i32 %111, %66
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.NewVert, ptr %81, i64 %113
  br label %115

115:                                              ; preds = %86, %92, %98, %107
  %116 = phi ptr [ %96, %92 ], [ %106, %98 ], [ %114, %107 ], [ %88, %86 ]
  %117 = getelementptr inbounds %struct.NewVert, ptr %81, i64 %82, i32 1
  %118 = getelementptr inbounds %struct.NewVert, ptr %116, i64 0, i32 1
  %119 = load float, ptr %118, align 4, !tbaa !115
  store float %119, ptr %117, align 4, !tbaa !115
  %120 = getelementptr inbounds %struct.NewVert, ptr %116, i64 0, i32 1, i64 1
  %121 = load float, ptr %120, align 4, !tbaa !115
  %122 = getelementptr inbounds float, ptr %117, i64 1
  store float %121, ptr %122, align 4, !tbaa !115
  %123 = getelementptr inbounds %struct.NewVert, ptr %116, i64 0, i32 1, i64 2
  %124 = load float, ptr %123, align 4, !tbaa !115
  %125 = getelementptr inbounds float, ptr %117, i64 2
  store float %124, ptr %125, align 4, !tbaa !115
  %126 = load ptr, ptr %116, align 8, !tbaa !155
  store ptr %126, ptr %83, align 8, !tbaa !155
  br label %127

127:                                              ; preds = %71, %78, %115
  %128 = add nuw nsw i64 %68, 1
  %129 = icmp eq i64 %128, %34
  br i1 %129, label %130, label %67, !llvm.loop !250

130:                                              ; preds = %127, %51
  %131 = add nuw nsw i64 %52, 1
  %132 = icmp eq i64 %131, %33
  br i1 %132, label %133, label %51, !llvm.loop !251

133:                                              ; preds = %130, %35
  %134 = add nuw nsw i64 %36, 1
  %135 = icmp eq i64 %134, %32
  br i1 %135, label %136, label %35, !llvm.loop !252

136:                                              ; preds = %133, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @bev_merge_uvs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %5 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %4, i32 noundef 16) #13
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %55, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 6, ptr %8, align 4, !tbaa !61
  %9 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__loop_of_vert_begin, ptr %9, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__loop_of_vert_step, ptr %10, align 8, !tbaa !64
  store ptr %1, ptr %3, align 8, !tbaa !70
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %3) #13
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  %12 = call ptr %11(ptr noundef nonnull %3) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %7
  %15 = sext i32 %5 to i64
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i32 [ 0, %14 ], [ %28, %16 ]
  %18 = phi ptr [ %12, %14 ], [ %30, %16 ]
  %19 = phi float [ 0.000000e+00, %14 ], [ %24, %16 ]
  %20 = phi float [ 0.000000e+00, %14 ], [ %27, %16 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !130
  %22 = getelementptr inbounds i8, ptr %21, i64 %15
  %23 = load float, ptr %22, align 4, !tbaa !115
  %24 = fadd float %19, %23
  %25 = getelementptr inbounds float, ptr %22, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !115
  %27 = fadd float %20, %26
  %28 = add nuw nsw i32 %17, 1
  %29 = load ptr, ptr %10, align 8, !tbaa !64
  %30 = call ptr %29(ptr noundef nonnull %3) #13
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %16, !llvm.loop !253

32:                                               ; preds = %16, %7
  %33 = phi float [ 0.000000e+00, %7 ], [ %27, %16 ]
  %34 = phi float [ 0.000000e+00, %7 ], [ %24, %16 ]
  %35 = phi i32 [ 0, %7 ], [ %28, %16 ]
  %36 = icmp ugt i32 %35, 1
  br i1 %36, label %37, label %55

37:                                               ; preds = %32
  %38 = sitofp i32 %35 to float
  %39 = fdiv float 1.000000e+00, %38
  %40 = fmul float %34, %39
  %41 = fmul float %33, %39
  store i8 6, ptr %8, align 4, !tbaa !61
  store ptr @bmiter__loop_of_vert_begin, ptr %9, align 8, !tbaa !63
  store ptr @bmiter__loop_of_vert_step, ptr %10, align 8, !tbaa !64
  store ptr %1, ptr %3, align 8, !tbaa !70
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %3) #13
  %42 = load ptr, ptr %10, align 8, !tbaa !64
  %43 = call ptr %42(ptr noundef nonnull %3) #13
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %37
  %46 = sext i32 %5 to i64
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi ptr [ %43, %45 ], [ %53, %47 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !130
  %50 = getelementptr inbounds i8, ptr %49, i64 %46
  store float %40, ptr %50, align 4, !tbaa !115
  %51 = getelementptr inbounds float, ptr %50, i64 1
  store float %41, ptr %51, align 4, !tbaa !115
  %52 = load ptr, ptr %10, align 8, !tbaa !64
  %53 = call ptr %52(ptr noundef nonnull %3) #13
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %47, !llvm.loop !254

55:                                               ; preds = %47, %37, %32, %2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #13
  ret void
}

declare void @plane_from_point_normal_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @closest_to_plane_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc void @snap_to_superellipsoid(ptr nocapture noundef %0, float noundef %1, i8 noundef zeroext %2) unnamed_addr #10 {
  %4 = fcmp oeq float %1, 2.000000e+00
  %5 = load float, ptr %0, align 4, !tbaa !115
  br i1 %4, label %6, label %27

6:                                                ; preds = %3
  %7 = getelementptr inbounds float, ptr %0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !115
  %9 = fmul float %8, %8
  %10 = tail call float @llvm.fmuladd.f32(float %5, float %5, float %9)
  %11 = getelementptr inbounds float, ptr %0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !115
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %12, float %10)
  %14 = fcmp ogt float %13, 0x38AA95A5C0000000
  br i1 %14, label %15, label %24

15:                                               ; preds = %6
  %16 = tail call float @sqrtf(float noundef %13) #13
  %17 = fdiv float 1.000000e+00, %16
  %18 = load float, ptr %0, align 4, !tbaa !115
  %19 = fmul float %18, %17
  store float %19, ptr %0, align 4, !tbaa !115
  %20 = load float, ptr %7, align 4, !tbaa !115
  %21 = fmul float %17, %20
  store float %21, ptr %7, align 4, !tbaa !115
  %22 = load float, ptr %11, align 4, !tbaa !115
  %23 = fmul float %17, %22
  br label %25

24:                                               ; preds = %6
  store float 0.000000e+00, ptr %0, align 4, !tbaa !115
  store float 0.000000e+00, ptr %7, align 4, !tbaa !115
  br label %25

25:                                               ; preds = %15, %24
  %26 = phi float [ 0.000000e+00, %24 ], [ %23, %15 ]
  store float %26, ptr %11, align 4, !tbaa !115
  br label %94

27:                                               ; preds = %3
  %28 = fcmp olt float %5, 0.000000e+00
  %29 = select i1 %28, float 0.000000e+00, float %5
  %30 = getelementptr inbounds float, ptr %0, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !115
  %32 = fcmp olt float %31, 0.000000e+00
  %33 = select i1 %32, float 0.000000e+00, float %31
  %34 = getelementptr inbounds float, ptr %0, i64 2
  %35 = load float, ptr %34, align 4, !tbaa !115
  %36 = fcmp olt float %35, 0.000000e+00
  %37 = select i1 %36, float 0.000000e+00, float %35
  %38 = fcmp oeq float %1, 4.000000e+00
  %39 = fcmp oeq float %1, 0.000000e+00
  %40 = or i1 %38, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %27
  %42 = fcmp ogt float %29, 1.000000e+00
  %43 = select i1 %42, float 1.000000e+00, float %29
  %44 = fcmp ogt float %33, 1.000000e+00
  %45 = select i1 %44, float 1.000000e+00, float %33
  br i1 %38, label %46, label %55

46:                                               ; preds = %41
  %47 = fsub float 1.000000e+00, %43
  %48 = fsub float 1.000000e+00, %45
  %49 = fcmp olt float %47, %48
  %50 = icmp eq i8 %2, 0
  br i1 %49, label %51, label %53

51:                                               ; preds = %46
  %52 = select i1 %50, float %45, float 1.000000e+00
  br label %90

53:                                               ; preds = %46
  %54 = select i1 %50, float %43, float 1.000000e+00
  br label %90

55:                                               ; preds = %41
  %56 = fcmp olt float %43, %45
  %57 = icmp eq i8 %2, 0
  br i1 %56, label %58, label %60

58:                                               ; preds = %55
  %59 = select i1 %57, float %45, float 0.000000e+00
  br label %90

60:                                               ; preds = %55
  %61 = select i1 %57, float %43, float 0.000000e+00
  br label %90

62:                                               ; preds = %27
  %63 = fdiv float 1.000000e+00, %1
  %64 = fcmp oeq float %29, 0.000000e+00
  br i1 %64, label %65, label %77

65:                                               ; preds = %62
  %66 = fcmp oeq float %33, 0.000000e+00
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = tail call float @powf(float noundef %37, float noundef %63) #13
  br label %90

69:                                               ; preds = %65
  %70 = fdiv float %37, %33
  %71 = tail call float @powf(float noundef %70, float noundef %1) #13
  %72 = fadd float %71, 1.000000e+00
  %73 = fdiv float 1.000000e+00, %72
  %74 = tail call float @powf(float noundef %73, float noundef %63) #13
  %75 = fmul float %37, %74
  %76 = fdiv float %75, %33
  br label %90

77:                                               ; preds = %62
  %78 = fdiv float %33, %29
  %79 = tail call float @powf(float noundef %78, float noundef %1) #13
  %80 = fadd float %79, 1.000000e+00
  %81 = fdiv float %37, %29
  %82 = tail call float @powf(float noundef %81, float noundef %1) #13
  %83 = fadd float %80, %82
  %84 = fdiv float 1.000000e+00, %83
  %85 = tail call float @powf(float noundef %84, float noundef %63) #13
  %86 = fmul float %33, %85
  %87 = fdiv float %86, %29
  %88 = fmul float %37, %85
  %89 = fdiv float %88, %29
  br label %90

90:                                               ; preds = %77, %69, %67, %53, %51, %60, %58
  %91 = phi float [ 0.000000e+00, %51 ], [ 0.000000e+00, %53 ], [ 0.000000e+00, %58 ], [ 0.000000e+00, %60 ], [ %68, %67 ], [ %76, %69 ], [ %89, %77 ]
  %92 = phi float [ %52, %51 ], [ 1.000000e+00, %53 ], [ %59, %58 ], [ 0.000000e+00, %60 ], [ 0.000000e+00, %67 ], [ %74, %69 ], [ %87, %77 ]
  %93 = phi float [ 1.000000e+00, %51 ], [ %54, %53 ], [ 0.000000e+00, %58 ], [ %61, %60 ], [ 0.000000e+00, %67 ], [ 0.000000e+00, %69 ], [ %85, %77 ]
  store float %93, ptr %0, align 4, !tbaa !115
  store float %92, ptr %30, align 4, !tbaa !115
  store float %91, ptr %34, align 4, !tbaa !115
  br label %94

94:                                               ; preds = %90, %25
  ret void
}

declare void @closest_to_line_segment_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #6

declare float @BM_edge_calc_face_angle_signed_ex(ptr noundef, float noundef) local_unnamed_addr #3

declare void @mul_m4_v4(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @cubic_subdiv(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !94
  %7 = sdiv i32 %6, 2
  %8 = shl i32 %6, 1
  %9 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !53
  %11 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !150
  %13 = tail call ptr @BLI_memarena_alloc(ptr noundef %10, i64 noundef 32) #13
  %14 = getelementptr inbounds %struct.VMesh, ptr %13, i64 0, i32 2
  store i32 %4, ptr %14, align 8, !tbaa !148
  %15 = getelementptr inbounds %struct.VMesh, ptr %13, i64 0, i32 3
  store i32 %8, ptr %15, align 4, !tbaa !94
  %16 = getelementptr inbounds %struct.VMesh, ptr %13, i64 0, i32 1
  store ptr %12, ptr %16, align 8, !tbaa !150
  %17 = add nsw i32 %6, 1
  %18 = mul nsw i32 %17, %4
  %19 = or disjoint i32 %8, 1
  %20 = mul nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %21, 24
  %23 = tail call ptr @BLI_memarena_alloc(ptr noundef %10, i64 noundef %22) #13
  store ptr %23, ptr %13, align 8, !tbaa !149
  %24 = getelementptr inbounds %struct.VMesh, ptr %13, i64 0, i32 4
  store i32 2, ptr %24, align 8, !tbaa !160
  %25 = icmp sgt i32 %4, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %2
  %27 = load i32, ptr %15, align 4, !tbaa !94
  %28 = sdiv i32 %27, 2
  %29 = add nsw i32 %28, 1
  %30 = add nsw i32 %27, 1
  %31 = load i32, ptr %5, align 4, !tbaa !94
  %32 = sdiv i32 %31, 2
  %33 = add nsw i32 %32, 1
  %34 = add nsw i32 %31, 1
  %35 = load ptr, ptr %1, align 8, !tbaa !149
  %36 = icmp sgt i32 %6, 1
  %37 = srem i32 %27, 2
  %38 = add nsw i32 %28, -1
  %39 = add nsw i32 %38, %37
  %40 = icmp slt i32 %39, 0
  %41 = sext i32 %34 to i64
  %42 = sext i32 %33 to i64
  %43 = sext i32 %30 to i64
  %44 = sext i32 %29 to i64
  %45 = zext nneg i32 %4 to i64
  %46 = zext nneg i32 %6 to i64
  br label %54

47:                                               ; preds = %144, %2
  %48 = icmp sgt i32 %4, 0
  br i1 %48, label %49, label %344

49:                                               ; preds = %47
  %50 = icmp sgt i32 %6, 0
  %51 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 5
  %52 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2, i32 2
  %53 = sext i32 %8 to i64
  br label %147

54:                                               ; preds = %26, %144
  %55 = phi i64 [ 0, %26 ], [ %145, %144 ]
  %56 = mul nsw i64 %55, %43
  %57 = mul nsw i64 %56, %44
  %58 = getelementptr inbounds %struct.NewVert, ptr %23, i64 %57, i32 1
  %59 = mul nsw i64 %55, %41
  %60 = mul nsw i64 %59, %42
  %61 = getelementptr inbounds %struct.NewVert, ptr %35, i64 %60, i32 1
  %62 = load float, ptr %61, align 4, !tbaa !115
  store float %62, ptr %58, align 4, !tbaa !115
  %63 = getelementptr inbounds float, ptr %61, i64 1
  %64 = load float, ptr %63, align 4, !tbaa !115
  %65 = getelementptr inbounds float, ptr %58, i64 1
  store float %64, ptr %65, align 4, !tbaa !115
  %66 = getelementptr inbounds float, ptr %61, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !115
  %68 = getelementptr inbounds float, ptr %58, i64 2
  store float %67, ptr %68, align 4, !tbaa !115
  br i1 %36, label %69, label %144

69:                                               ; preds = %54
  %70 = add i64 %60, 4294967295
  %71 = load i32, ptr %14, align 8, !tbaa !148
  %72 = trunc i64 %55 to i32
  %73 = mul i32 %30, %72
  %74 = mul i32 %73, %29
  %75 = trunc i64 %55 to i32
  %76 = add i32 %75, -1
  %77 = add i32 %76, %71
  %78 = trunc i64 %55 to i32
  %79 = add i32 %78, 1
  br label %80

80:                                               ; preds = %69, %137
  %81 = phi i64 [ 1, %69 ], [ %98, %137 ]
  %82 = add nsw i64 %81, %60
  %83 = getelementptr inbounds %struct.NewVert, ptr %35, i64 %82, i32 1
  %84 = load float, ptr %83, align 4, !tbaa !115
  %85 = getelementptr inbounds float, ptr %83, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !115
  %87 = getelementptr inbounds float, ptr %83, i64 2
  %88 = load float, ptr %87, align 4, !tbaa !115
  %89 = add i64 %70, %81
  %90 = shl i64 %89, 32
  %91 = ashr exact i64 %90, 32
  %92 = getelementptr inbounds %struct.NewVert, ptr %35, i64 %91, i32 1
  %93 = load float, ptr %92, align 4, !tbaa !115
  %94 = getelementptr inbounds float, ptr %92, i64 1
  %95 = load float, ptr %94, align 4, !tbaa !115
  %96 = getelementptr inbounds float, ptr %92, i64 2
  %97 = load float, ptr %96, align 4, !tbaa !115
  %98 = add nuw nsw i64 %81, 1
  %99 = add nsw i64 %98, %60
  %100 = getelementptr inbounds %struct.NewVert, ptr %35, i64 %99, i32 1
  %101 = load float, ptr %100, align 4, !tbaa !115
  %102 = getelementptr inbounds float, ptr %100, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !115
  %104 = getelementptr inbounds float, ptr %100, i64 2
  %105 = load float, ptr %104, align 4, !tbaa !115
  %106 = fadd float %93, %101
  %107 = fadd float %95, %103
  %108 = fadd float %97, %105
  %109 = tail call float @llvm.fmuladd.f32(float %84, float -2.000000e+00, float %106)
  %110 = tail call float @llvm.fmuladd.f32(float %86, float -2.000000e+00, float %107)
  %111 = tail call float @llvm.fmuladd.f32(float %88, float -2.000000e+00, float %108)
  %112 = tail call float @llvm.fmuladd.f32(float %109, float 0xBFC5555560000000, float %84)
  %113 = tail call float @llvm.fmuladd.f32(float %110, float 0xBFC5555560000000, float %86)
  %114 = tail call float @llvm.fmuladd.f32(float %111, float 0xBFC5555560000000, float %88)
  %115 = shl nuw nsw i64 %81, 1
  %116 = trunc i64 %115 to i32
  %117 = icmp slt i32 %28, %116
  %118 = or i1 %40, %117
  br i1 %118, label %122, label %119

119:                                              ; preds = %80
  %120 = trunc i64 %115 to i32
  %121 = add i32 %74, %120
  br label %137

122:                                              ; preds = %80
  br i1 %117, label %130, label %123

123:                                              ; preds = %122
  %124 = srem i32 %77, %71
  %125 = mul i32 %124, %29
  %126 = trunc i64 %115 to i32
  %127 = add i32 %125, %126
  %128 = mul i32 %127, %30
  %129 = add i32 %128, %27
  br label %137

130:                                              ; preds = %122
  %131 = srem i32 %79, %71
  %132 = trunc i64 %115 to i32
  %133 = sub i32 %27, %132
  %134 = mul i32 %131, %29
  %135 = add i32 %133, %134
  %136 = mul i32 %135, %30
  br label %137

137:                                              ; preds = %119, %123, %130
  %138 = phi i32 [ %121, %119 ], [ %129, %123 ], [ %136, %130 ]
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.NewVert, ptr %23, i64 %139, i32 1
  store float %112, ptr %140, align 4, !tbaa !115
  %141 = getelementptr inbounds %struct.NewVert, ptr %23, i64 %139, i32 1, i64 1
  store float %113, ptr %141, align 4, !tbaa !115
  %142 = getelementptr inbounds %struct.NewVert, ptr %23, i64 %139, i32 1, i64 2
  store float %114, ptr %142, align 4, !tbaa !115
  %143 = icmp eq i64 %98, %46
  br i1 %143, label %144, label %80, !llvm.loop !255

144:                                              ; preds = %137, %54
  %145 = add nuw nsw i64 %55, 1
  %146 = icmp eq i64 %145, %45
  br i1 %146, label %47, label %54, !llvm.loop !256

147:                                              ; preds = %49, %341
  %148 = phi ptr [ %16, %49 ], [ %150, %341 ]
  %149 = phi i32 [ 0, %49 ], [ %342, %341 ]
  %150 = load ptr, ptr %148, align 8, !tbaa !113
  br i1 %50, label %151, label %341

151:                                              ; preds = %147
  %152 = load i32, ptr %51, align 8, !tbaa !43
  %153 = icmp eq i32 %152, 1
  %154 = icmp eq i32 %152, %8
  %155 = getelementptr inbounds %struct.BoundVert, ptr %150, i64 0, i32 7, i32 8
  %156 = getelementptr inbounds %struct.BoundVert, ptr %150, i64 0, i32 7, i32 7
  %157 = getelementptr inbounds %struct.BoundVert, ptr %150, i64 0, i32 7, i32 3
  %158 = getelementptr inbounds %struct.BoundVert, ptr %150, i64 0, i32 7, i32 3, i64 1
  %159 = getelementptr inbounds %struct.BoundVert, ptr %150, i64 0, i32 7, i32 3, i64 2
  %160 = load i32, ptr %14, align 8, !tbaa !148
  %161 = load i32, ptr %15, align 4, !tbaa !94
  %162 = sdiv i32 %161, 2
  %163 = srem i32 %161, 2
  %164 = icmp eq i32 %163, 0
  %165 = add i32 %161, 1
  %166 = icmp ult i32 %165, 3
  %167 = and i1 %164, %166
  %168 = add nsw i32 %162, -1
  %169 = add nsw i32 %168, %163
  %170 = icmp slt i32 %169, 0
  %171 = add nsw i32 %162, 1
  %172 = add nsw i32 %161, 1
  %173 = mul i32 %172, %149
  %174 = mul i32 %173, %171
  %175 = add nsw i32 %149, -1
  %176 = add i32 %175, %160
  %177 = add nsw i32 %162, 1
  %178 = add nsw i32 %161, 1
  %179 = add nuw nsw i32 %149, 1
  %180 = add nsw i32 %162, 1
  %181 = add nsw i32 %161, 1
  %182 = add nsw i32 %162, -1
  %183 = add nsw i32 %182, %163
  %184 = icmp slt i32 %183, 0
  %185 = add nsw i32 %162, 1
  %186 = add nsw i32 %161, 1
  %187 = mul i32 %186, %149
  %188 = mul i32 %187, %185
  %189 = add nsw i32 %149, -1
  %190 = add i32 %189, %160
  %191 = add nsw i32 %162, 1
  %192 = add nsw i32 %161, 1
  %193 = add nuw nsw i32 %149, 1
  %194 = add nsw i32 %162, 1
  %195 = add nsw i32 %161, 1
  %196 = add nsw i32 %162, 1
  %197 = add nsw i32 %161, 1
  %198 = mul i32 %197, %149
  %199 = mul i32 %198, %196
  %200 = add nsw i32 %149, -1
  %201 = add i32 %200, %160
  %202 = add nsw i32 %162, 1
  %203 = add nsw i32 %161, 1
  %204 = add nuw nsw i32 %149, 1
  %205 = add nsw i32 %162, 1
  %206 = add nsw i32 %161, 1
  %207 = sext i32 %162 to i64
  %208 = sext i32 %162 to i64
  %209 = zext i32 %162 to i64
  %210 = sext i32 %162 to i64
  br label %211

211:                                              ; preds = %151, %333
  %212 = phi i64 [ 1, %151 ], [ %339, %333 ]
  br i1 %153, label %230, label %213

213:                                              ; preds = %211
  br i1 %154, label %214, label %220

214:                                              ; preds = %213
  %215 = load ptr, ptr %156, align 8, !tbaa !161
  %216 = mul nuw nsw i64 %212, 3
  %217 = getelementptr inbounds float, ptr %215, i64 %216
  %218 = getelementptr inbounds float, ptr %217, i64 1
  %219 = getelementptr inbounds float, ptr %217, i64 2
  br label %230

220:                                              ; preds = %213
  %221 = load i32, ptr %52, align 8, !tbaa !59
  %222 = sdiv i32 %221, %8
  %223 = load ptr, ptr %155, align 8, !tbaa !162
  %224 = mul nuw nsw i64 %212, 3
  %225 = sext i32 %222 to i64
  %226 = mul nsw i64 %224, %225
  %227 = getelementptr inbounds float, ptr %223, i64 %226
  %228 = getelementptr inbounds float, ptr %227, i64 1
  %229 = getelementptr inbounds float, ptr %227, i64 2
  br label %230

230:                                              ; preds = %211, %214, %220
  %231 = phi ptr [ %219, %214 ], [ %229, %220 ], [ %159, %211 ]
  %232 = phi ptr [ %218, %214 ], [ %228, %220 ], [ %158, %211 ]
  %233 = phi ptr [ %217, %214 ], [ %227, %220 ], [ %157, %211 ]
  %234 = load float, ptr %233, align 4, !tbaa !115
  %235 = load float, ptr %232, align 4, !tbaa !115
  %236 = load float, ptr %231, align 4, !tbaa !115
  %237 = add nsw i64 %212, -1
  %238 = icmp eq i64 %237, %209
  %239 = and i1 %238, %167
  br i1 %239, label %265, label %240

240:                                              ; preds = %230
  %241 = icmp sgt i64 %237, %210
  %242 = or i1 %241, %170
  br i1 %242, label %247, label %243

243:                                              ; preds = %240
  %244 = trunc i64 %237 to i32
  %245 = add i32 %174, %244
  %246 = sext i32 %245 to i64
  br label %265

247:                                              ; preds = %240
  br i1 %241, label %256, label %248

248:                                              ; preds = %247
  %249 = srem i32 %176, %160
  %250 = mul i32 %249, %177
  %251 = trunc i64 %237 to i32
  %252 = add i32 %250, %251
  %253 = mul i32 %252, %178
  %254 = add i32 %253, %161
  %255 = sext i32 %254 to i64
  br label %265

256:                                              ; preds = %247
  %257 = srem i32 %179, %160
  %258 = trunc i64 %212 to i32
  %259 = sub i32 %161, %258
  %260 = add i32 %259, 1
  %261 = mul i32 %257, %180
  %262 = add i32 %260, %261
  %263 = mul i32 %262, %181
  %264 = sext i32 %263 to i64
  br label %265

265:                                              ; preds = %230, %243, %248, %256
  %266 = phi i64 [ %246, %243 ], [ %255, %248 ], [ %264, %256 ], [ %237, %230 ]
  %267 = getelementptr inbounds %struct.NewVert, ptr %23, i64 %266, i32 1
  %268 = load float, ptr %267, align 4, !tbaa !115
  %269 = getelementptr inbounds %struct.NewVert, ptr %23, i64 %266, i32 1, i64 1
  %270 = load float, ptr %269, align 4, !tbaa !115
  %271 = getelementptr inbounds %struct.NewVert, ptr %23, i64 %266, i32 1, i64 2
  %272 = load float, ptr %271, align 4, !tbaa !115
  %273 = add nuw nsw i64 %212, 1
  %274 = icmp sge i64 %212, %207
  %275 = or i1 %274, %184
  br i1 %275, label %279, label %276

276:                                              ; preds = %265
  %277 = trunc i64 %273 to i32
  %278 = add i32 %188, %277
  br label %295

279:                                              ; preds = %265
  br i1 %274, label %287, label %280

280:                                              ; preds = %279
  %281 = srem i32 %190, %160
  %282 = mul i32 %281, %191
  %283 = trunc i64 %273 to i32
  %284 = add i32 %282, %283
  %285 = mul i32 %284, %192
  %286 = add i32 %285, %161
  br label %295

287:                                              ; preds = %279
  %288 = srem i32 %193, %160
  %289 = trunc i64 %212 to i32
  %290 = xor i32 %289, -1
  %291 = add i32 %161, %290
  %292 = mul i32 %288, %194
  %293 = add i32 %291, %292
  %294 = mul i32 %293, %195
  br label %295

295:                                              ; preds = %276, %280, %287
  %296 = phi i32 [ %278, %276 ], [ %286, %280 ], [ %294, %287 ]
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.NewVert, ptr %23, i64 %297, i32 1
  %299 = load float, ptr %298, align 4, !tbaa !115
  %300 = getelementptr inbounds %struct.NewVert, ptr %23, i64 %297, i32 1, i64 1
  %301 = load float, ptr %300, align 4, !tbaa !115
  %302 = getelementptr inbounds %struct.NewVert, ptr %23, i64 %297, i32 1, i64 2
  %303 = load float, ptr %302, align 4, !tbaa !115
  %304 = fadd float %268, %299
  %305 = fadd float %270, %301
  %306 = fadd float %272, %303
  %307 = tail call float @llvm.fmuladd.f32(float %234, float -2.000000e+00, float %304)
  %308 = tail call float @llvm.fmuladd.f32(float %235, float -2.000000e+00, float %305)
  %309 = tail call float @llvm.fmuladd.f32(float %236, float -2.000000e+00, float %306)
  %310 = tail call float @llvm.fmuladd.f32(float %307, float 0xBFC5555560000000, float %234)
  %311 = tail call float @llvm.fmuladd.f32(float %308, float 0xBFC5555560000000, float %235)
  %312 = tail call float @llvm.fmuladd.f32(float %309, float 0xBFC5555560000000, float %236)
  %313 = icmp sgt i64 %212, %208
  %314 = or i1 %313, %184
  br i1 %314, label %318, label %315

315:                                              ; preds = %295
  %316 = trunc i64 %212 to i32
  %317 = add i32 %199, %316
  br label %333

318:                                              ; preds = %295
  br i1 %313, label %326, label %319

319:                                              ; preds = %318
  %320 = srem i32 %201, %160
  %321 = mul i32 %320, %202
  %322 = trunc i64 %212 to i32
  %323 = add i32 %321, %322
  %324 = mul i32 %323, %203
  %325 = add i32 %324, %161
  br label %333

326:                                              ; preds = %318
  %327 = srem i32 %204, %160
  %328 = trunc i64 %212 to i32
  %329 = sub i32 %161, %328
  %330 = mul i32 %327, %205
  %331 = add i32 %329, %330
  %332 = mul i32 %331, %206
  br label %333

333:                                              ; preds = %315, %319, %326
  %334 = phi i32 [ %317, %315 ], [ %325, %319 ], [ %332, %326 ]
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.NewVert, ptr %23, i64 %335, i32 1
  store float %310, ptr %336, align 4, !tbaa !115
  %337 = getelementptr inbounds %struct.NewVert, ptr %23, i64 %335, i32 1, i64 1
  store float %311, ptr %337, align 4, !tbaa !115
  %338 = getelementptr inbounds %struct.NewVert, ptr %23, i64 %335, i32 1, i64 2
  store float %312, ptr %338, align 4, !tbaa !115
  %339 = add nuw nsw i64 %212, 2
  %340 = icmp slt i64 %339, %53
  br i1 %340, label %211, label %341, !llvm.loop !257

341:                                              ; preds = %333, %147
  %342 = add nuw nsw i32 %149, 1
  %343 = icmp eq i32 %342, %4
  br i1 %343, label %344, label %147, !llvm.loop !258

344:                                              ; preds = %341, %47
  tail call fastcc void @vmesh_copy_equiv_verts(ptr noundef %13)
  %345 = icmp sgt i32 %4, 0
  br i1 %345, label %346, label %387

346:                                              ; preds = %344
  %347 = icmp sgt i32 %6, 0
  %348 = zext nneg i32 %6 to i64
  br label %349

349:                                              ; preds = %346, %384
  %350 = phi i32 [ 0, %346 ], [ %385, %384 ]
  br i1 %347, label %351, label %384

351:                                              ; preds = %349
  %352 = load i32, ptr %5, align 4, !tbaa !94
  %353 = sdiv i32 %352, 2
  %354 = add nsw i32 %353, 1
  %355 = add nsw i32 %352, 1
  %356 = load ptr, ptr %1, align 8, !tbaa !149
  %357 = mul nsw i32 %355, %350
  %358 = mul nsw i32 %357, %354
  %359 = load i32, ptr %15, align 4, !tbaa !94
  %360 = sdiv i32 %359, 2
  %361 = add nsw i32 %360, 1
  %362 = add nsw i32 %359, 1
  %363 = load ptr, ptr %13, align 8, !tbaa !149
  %364 = mul nsw i32 %362, %350
  %365 = mul nsw i32 %364, %361
  %366 = sext i32 %358 to i64
  %367 = sext i32 %365 to i64
  br label %368

368:                                              ; preds = %351, %368
  %369 = phi i64 [ 0, %351 ], [ %382, %368 ]
  %370 = add nsw i64 %369, %366
  %371 = getelementptr inbounds %struct.NewVert, ptr %356, i64 %370, i32 1
  %372 = shl nuw nsw i64 %369, 1
  %373 = add nsw i64 %372, %367
  %374 = getelementptr inbounds %struct.NewVert, ptr %363, i64 %373, i32 1
  %375 = load float, ptr %374, align 4, !tbaa !115
  store float %375, ptr %371, align 4, !tbaa !115
  %376 = getelementptr inbounds float, ptr %374, i64 1
  %377 = load float, ptr %376, align 4, !tbaa !115
  %378 = getelementptr inbounds float, ptr %371, i64 1
  store float %377, ptr %378, align 4, !tbaa !115
  %379 = getelementptr inbounds float, ptr %374, i64 2
  %380 = load float, ptr %379, align 4, !tbaa !115
  %381 = getelementptr inbounds float, ptr %371, i64 2
  store float %380, ptr %381, align 4, !tbaa !115
  %382 = add nuw nsw i64 %369, 1
  %383 = icmp eq i64 %382, %348
  br i1 %383, label %384, label %368, !llvm.loop !259

384:                                              ; preds = %368, %349
  %385 = add nuw nsw i32 %350, 1
  %386 = icmp eq i32 %385, %4
  br i1 %386, label %387, label %349, !llvm.loop !260

387:                                              ; preds = %384, %344
  tail call fastcc void @vmesh_copy_equiv_verts(ptr noundef %1)
  %388 = icmp sgt i32 %4, 0
  br i1 %388, label %389, label %408

389:                                              ; preds = %387
  %390 = icmp sgt i32 %6, 1
  %391 = zext nneg i32 %7 to i64
  br label %392

392:                                              ; preds = %389, %485
  %393 = phi i32 [ 0, %389 ], [ %486, %485 ]
  br i1 %390, label %394, label %485

394:                                              ; preds = %392
  %395 = load i32, ptr %5, align 4, !tbaa !94
  %396 = sdiv i32 %395, 2
  %397 = add nsw i32 %396, 1
  %398 = add nsw i32 %395, 1
  %399 = load ptr, ptr %1, align 8, !tbaa !149
  %400 = mul nsw i32 %398, %393
  %401 = mul nsw i32 %400, %397
  %402 = load i32, ptr %15, align 4, !tbaa !94
  %403 = sdiv i32 %402, 2
  %404 = add nsw i32 %403, 1
  %405 = add nsw i32 %402, 1
  %406 = load ptr, ptr %13, align 8, !tbaa !149
  %407 = mul i32 %404, %393
  br label %415

408:                                              ; preds = %485, %387
  %409 = icmp sgt i32 %4, 0
  br i1 %409, label %410, label %495

410:                                              ; preds = %408
  %411 = icmp sgt i32 %6, 1
  %412 = icmp slt i32 %6, 2
  %413 = add nsw i32 %7, 1
  %414 = zext nneg i32 %413 to i64
  br label %488

415:                                              ; preds = %394, %482
  %416 = phi i32 [ %483, %482 ], [ 0, %394 ]
  %417 = mul nsw i32 %398, %416
  %418 = add nsw i32 %401, %417
  %419 = add nuw nsw i32 %416, 1
  %420 = mul nsw i32 %398, %419
  %421 = add nsw i32 %401, %420
  %422 = shl nuw nsw i32 %416, 1
  %423 = or disjoint i32 %422, 1
  %424 = add i32 %423, %407
  %425 = mul i32 %424, %405
  %426 = sext i32 %421 to i64
  %427 = sext i32 %418 to i64
  %428 = sext i32 %418 to i64
  %429 = sext i32 %421 to i64
  br label %430

430:                                              ; preds = %415, %430
  %431 = phi i64 [ 0, %415 ], [ %433, %430 ]
  %432 = add nsw i64 %431, %427
  %433 = add nuw nsw i64 %431, 1
  %434 = add nsw i64 %433, %428
  %435 = add nsw i64 %431, %426
  %436 = add nsw i64 %433, %429
  %437 = getelementptr inbounds %struct.NewVert, ptr %399, i64 %432, i32 1
  %438 = getelementptr inbounds %struct.NewVert, ptr %399, i64 %434, i32 1
  %439 = load float, ptr %437, align 4, !tbaa !115
  %440 = load float, ptr %438, align 4, !tbaa !115
  %441 = fadd float %439, %440
  %442 = getelementptr inbounds %struct.NewVert, ptr %399, i64 %432, i32 1, i64 1
  %443 = load float, ptr %442, align 4, !tbaa !115
  %444 = getelementptr inbounds %struct.NewVert, ptr %399, i64 %434, i32 1, i64 1
  %445 = load float, ptr %444, align 4, !tbaa !115
  %446 = fadd float %443, %445
  %447 = getelementptr inbounds %struct.NewVert, ptr %399, i64 %432, i32 1, i64 2
  %448 = load float, ptr %447, align 4, !tbaa !115
  %449 = getelementptr inbounds %struct.NewVert, ptr %399, i64 %434, i32 1, i64 2
  %450 = load float, ptr %449, align 4, !tbaa !115
  %451 = fadd float %448, %450
  %452 = getelementptr inbounds %struct.NewVert, ptr %399, i64 %435, i32 1
  %453 = load float, ptr %452, align 4, !tbaa !115
  %454 = fadd float %441, %453
  %455 = getelementptr inbounds %struct.NewVert, ptr %399, i64 %435, i32 1, i64 1
  %456 = load float, ptr %455, align 4, !tbaa !115
  %457 = fadd float %446, %456
  %458 = getelementptr inbounds %struct.NewVert, ptr %399, i64 %435, i32 1, i64 2
  %459 = load float, ptr %458, align 4, !tbaa !115
  %460 = fadd float %451, %459
  %461 = getelementptr inbounds %struct.NewVert, ptr %399, i64 %436, i32 1
  %462 = load float, ptr %461, align 4, !tbaa !115
  %463 = fadd float %454, %462
  %464 = getelementptr inbounds %struct.NewVert, ptr %399, i64 %436, i32 1, i64 1
  %465 = load float, ptr %464, align 4, !tbaa !115
  %466 = fadd float %457, %465
  %467 = getelementptr inbounds %struct.NewVert, ptr %399, i64 %436, i32 1, i64 2
  %468 = load float, ptr %467, align 4, !tbaa !115
  %469 = fadd float %460, %468
  %470 = fmul float %463, 2.500000e-01
  %471 = fmul float %466, 2.500000e-01
  %472 = fmul float %469, 2.500000e-01
  %473 = trunc i64 %431 to i32
  %474 = shl i32 %473, 1
  %475 = or disjoint i32 %474, 1
  %476 = add i32 %475, %425
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds %struct.NewVert, ptr %406, i64 %477, i32 1
  store float %470, ptr %478, align 4, !tbaa !115
  %479 = getelementptr inbounds float, ptr %478, i64 1
  store float %471, ptr %479, align 4, !tbaa !115
  %480 = getelementptr inbounds float, ptr %478, i64 2
  store float %472, ptr %480, align 4, !tbaa !115
  %481 = icmp eq i64 %433, %391
  br i1 %481, label %482, label %430, !llvm.loop !261

482:                                              ; preds = %430
  %483 = add nuw nsw i32 %416, 1
  %484 = icmp eq i32 %483, %7
  br i1 %484, label %485, label %415, !llvm.loop !262

485:                                              ; preds = %482, %392
  %486 = add nuw nsw i32 %393, 1
  %487 = icmp eq i32 %486, %4
  br i1 %487, label %408, label %392, !llvm.loop !263

488:                                              ; preds = %410, %707
  %489 = phi i32 [ 0, %410 ], [ %708, %707 ]
  br i1 %411, label %490, label %707

490:                                              ; preds = %488
  %491 = add nsw i32 %489, -1
  %492 = add nuw nsw i32 %489, 1
  %493 = add nsw i32 %489, -1
  %494 = add nuw nsw i32 %489, 1
  br label %502

495:                                              ; preds = %707, %408
  %496 = icmp sgt i32 %4, 0
  br i1 %496, label %497, label %717

497:                                              ; preds = %495
  %498 = icmp sgt i32 %6, 3
  %499 = icmp sgt i32 %6, 1
  %500 = tail call i32 @llvm.smax.i32(i32 %7, i32 2)
  %501 = zext nneg i32 %7 to i64
  br label %710

502:                                              ; preds = %490, %704
  %503 = phi i32 [ 0, %490 ], [ %705, %704 ]
  br i1 %412, label %704, label %504

504:                                              ; preds = %502
  %505 = load i32, ptr %5, align 4, !tbaa !94
  %506 = sdiv i32 %505, 2
  %507 = add nsw i32 %506, 1
  %508 = add nsw i32 %505, 1
  %509 = load ptr, ptr %1, align 8, !tbaa !149
  %510 = mul nsw i32 %508, %489
  %511 = mul nsw i32 %510, %507
  %512 = mul nsw i32 %508, %503
  %513 = add nuw nsw i32 %503, 1
  %514 = mul nsw i32 %508, %513
  %515 = shl nuw nsw i32 %503, 1
  %516 = or disjoint i32 %515, 1
  %517 = load i32, ptr %14, align 8, !tbaa !148
  %518 = load i32, ptr %15, align 4, !tbaa !94
  %519 = sdiv i32 %518, 2
  %520 = srem i32 %518, 2
  %521 = icmp eq i32 %520, 0
  %522 = icmp eq i32 %519, %516
  %523 = and i1 %521, %522
  %524 = add nsw i32 %519, -1
  %525 = add nsw i32 %524, %520
  %526 = icmp sle i32 %525, %515
  %527 = add nsw i32 %519, 1
  %528 = add nsw i32 %518, 1
  %529 = mul i32 %527, %489
  %530 = add i32 %529, %516
  %531 = mul i32 %530, %528
  %532 = add i32 %491, %517
  %533 = sub i32 %518, %516
  %534 = add nsw i32 %519, 1
  %535 = add nsw i32 %518, 1
  %536 = add nsw i32 %519, 1
  %537 = add nsw i32 %518, 1
  %538 = add nsw i32 %518, 1
  %539 = mul nsw i32 %538, %516
  %540 = add nsw i32 %519, -1
  %541 = add nsw i32 %540, %520
  %542 = icmp sle i32 %541, %515
  %543 = add nsw i32 %519, 1
  %544 = add nsw i32 %518, 1
  %545 = mul i32 %543, %489
  %546 = add i32 %545, %516
  %547 = mul i32 %546, %544
  %548 = add i32 %493, %517
  %549 = sub i32 %518, %516
  %550 = add nsw i32 %519, 1
  %551 = add nsw i32 %518, 1
  %552 = add nsw i32 %519, 1
  %553 = add nsw i32 %518, 1
  %554 = add nsw i32 %518, 1
  %555 = mul nsw i32 %554, %516
  %556 = add nsw i32 %519, 1
  %557 = add nsw i32 %518, 1
  %558 = load ptr, ptr %13, align 8, !tbaa !149
  %559 = mul i32 %556, %489
  %560 = add i32 %559, %516
  %561 = mul i32 %560, %557
  %562 = zext i32 %519 to i64
  %563 = sext i32 %519 to i64
  %564 = sext i32 %539 to i64
  %565 = zext i32 %519 to i64
  %566 = sext i32 %555 to i64
  %567 = sext i32 %519 to i64
  br label %568

568:                                              ; preds = %504, %658
  %569 = phi i64 [ 1, %504 ], [ %702, %658 ]
  %570 = trunc i64 %569 to i32
  %571 = add i32 %511, %570
  %572 = add i32 %571, %512
  %573 = sext i32 %572 to i64
  %574 = trunc i64 %569 to i32
  %575 = add i32 %511, %574
  %576 = add i32 %575, %514
  %577 = sext i32 %576 to i64
  %578 = shl nuw nsw i64 %569, 1
  %579 = add nsw i64 %578, -1
  %580 = icmp eq i64 %579, %562
  %581 = and i1 %580, %523
  br i1 %581, label %582, label %586

582:                                              ; preds = %568
  %583 = load ptr, ptr %13, align 8, !tbaa !149
  %584 = getelementptr %struct.NewVert, ptr %583, i64 %579
  %585 = getelementptr %struct.NewVert, ptr %584, i64 %564
  br label %618

586:                                              ; preds = %568
  %587 = icmp sgt i64 %579, %563
  %588 = or i1 %587, %526
  br i1 %588, label %595, label %589

589:                                              ; preds = %586
  %590 = load ptr, ptr %13, align 8, !tbaa !149
  %591 = trunc i64 %579 to i32
  %592 = add i32 %531, %591
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds %struct.NewVert, ptr %590, i64 %593
  br label %618

595:                                              ; preds = %586
  br i1 %587, label %606, label %596

596:                                              ; preds = %595
  %597 = srem i32 %532, %517
  %598 = load ptr, ptr %13, align 8, !tbaa !149
  %599 = mul i32 %597, %534
  %600 = trunc i64 %579 to i32
  %601 = add i32 %599, %600
  %602 = mul i32 %601, %535
  %603 = add i32 %533, %602
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds %struct.NewVert, ptr %598, i64 %604
  br label %618

606:                                              ; preds = %595
  %607 = srem i32 %492, %517
  %608 = trunc i64 %578 to i32
  %609 = sub i32 %518, %608
  %610 = add i32 %609, 1
  %611 = load ptr, ptr %13, align 8, !tbaa !149
  %612 = mul i32 %607, %536
  %613 = add i32 %610, %612
  %614 = mul i32 %613, %537
  %615 = add i32 %614, %516
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.NewVert, ptr %611, i64 %616
  br label %618

618:                                              ; preds = %582, %589, %596, %606
  %619 = phi ptr [ %594, %589 ], [ %605, %596 ], [ %617, %606 ], [ %585, %582 ]
  %620 = or disjoint i64 %578, 1
  %621 = icmp eq i64 %620, %565
  %622 = and i1 %621, %523
  br i1 %622, label %623, label %627

623:                                              ; preds = %618
  %624 = load ptr, ptr %13, align 8, !tbaa !149
  %625 = getelementptr %struct.NewVert, ptr %624, i64 %620
  %626 = getelementptr %struct.NewVert, ptr %625, i64 %566
  br label %658

627:                                              ; preds = %618
  %628 = icmp sge i64 %578, %567
  %629 = or i1 %628, %542
  br i1 %629, label %636, label %630

630:                                              ; preds = %627
  %631 = load ptr, ptr %13, align 8, !tbaa !149
  %632 = trunc i64 %620 to i32
  %633 = add i32 %547, %632
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.NewVert, ptr %631, i64 %634
  br label %658

636:                                              ; preds = %627
  br i1 %628, label %647, label %637

637:                                              ; preds = %636
  %638 = srem i32 %548, %517
  %639 = load ptr, ptr %13, align 8, !tbaa !149
  %640 = mul i32 %638, %550
  %641 = trunc i64 %620 to i32
  %642 = add i32 %640, %641
  %643 = mul i32 %642, %551
  %644 = add i32 %549, %643
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds %struct.NewVert, ptr %639, i64 %645
  br label %658

647:                                              ; preds = %636
  %648 = srem i32 %494, %517
  %649 = trunc i64 %620 to i32
  %650 = sub i32 %518, %649
  %651 = load ptr, ptr %13, align 8, !tbaa !149
  %652 = mul i32 %648, %552
  %653 = add i32 %650, %652
  %654 = mul i32 %653, %553
  %655 = add i32 %654, %516
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds %struct.NewVert, ptr %651, i64 %656
  br label %658

658:                                              ; preds = %623, %630, %637, %647
  %659 = phi ptr [ %635, %630 ], [ %646, %637 ], [ %657, %647 ], [ %626, %623 ]
  %660 = getelementptr inbounds %struct.NewVert, ptr %509, i64 %573, i32 1
  %661 = getelementptr inbounds %struct.NewVert, ptr %509, i64 %577, i32 1
  %662 = load float, ptr %660, align 4, !tbaa !115
  %663 = load float, ptr %661, align 4, !tbaa !115
  %664 = fadd float %662, %663
  %665 = getelementptr inbounds %struct.NewVert, ptr %509, i64 %573, i32 1, i64 1
  %666 = load float, ptr %665, align 4, !tbaa !115
  %667 = getelementptr inbounds %struct.NewVert, ptr %509, i64 %577, i32 1, i64 1
  %668 = load float, ptr %667, align 4, !tbaa !115
  %669 = fadd float %666, %668
  %670 = getelementptr inbounds %struct.NewVert, ptr %509, i64 %573, i32 1, i64 2
  %671 = load float, ptr %670, align 4, !tbaa !115
  %672 = getelementptr inbounds %struct.NewVert, ptr %509, i64 %577, i32 1, i64 2
  %673 = load float, ptr %672, align 4, !tbaa !115
  %674 = fadd float %671, %673
  %675 = getelementptr inbounds %struct.NewVert, ptr %619, i64 0, i32 1
  %676 = load float, ptr %675, align 4, !tbaa !115
  %677 = fadd float %664, %676
  %678 = getelementptr inbounds %struct.NewVert, ptr %619, i64 0, i32 1, i64 1
  %679 = load float, ptr %678, align 4, !tbaa !115
  %680 = fadd float %669, %679
  %681 = getelementptr inbounds %struct.NewVert, ptr %619, i64 0, i32 1, i64 2
  %682 = load float, ptr %681, align 4, !tbaa !115
  %683 = fadd float %674, %682
  %684 = getelementptr inbounds %struct.NewVert, ptr %659, i64 0, i32 1
  %685 = load float, ptr %684, align 4, !tbaa !115
  %686 = fadd float %677, %685
  %687 = getelementptr inbounds %struct.NewVert, ptr %659, i64 0, i32 1, i64 1
  %688 = load float, ptr %687, align 4, !tbaa !115
  %689 = fadd float %680, %688
  %690 = getelementptr inbounds %struct.NewVert, ptr %659, i64 0, i32 1, i64 2
  %691 = load float, ptr %690, align 4, !tbaa !115
  %692 = fadd float %683, %691
  %693 = fmul float %686, 2.500000e-01
  %694 = fmul float %689, 2.500000e-01
  %695 = fmul float %692, 2.500000e-01
  %696 = trunc i64 %578 to i32
  %697 = add i32 %561, %696
  %698 = sext i32 %697 to i64
  %699 = getelementptr inbounds %struct.NewVert, ptr %558, i64 %698, i32 1
  store float %693, ptr %699, align 4, !tbaa !115
  %700 = getelementptr inbounds float, ptr %699, i64 1
  store float %694, ptr %700, align 4, !tbaa !115
  %701 = getelementptr inbounds float, ptr %699, i64 2
  store float %695, ptr %701, align 4, !tbaa !115
  %702 = add nuw nsw i64 %569, 1
  %703 = icmp eq i64 %702, %414
  br i1 %703, label %704, label %568, !llvm.loop !264

704:                                              ; preds = %658, %502
  %705 = add nuw nsw i32 %503, 1
  %706 = icmp eq i32 %705, %7
  br i1 %706, label %707, label %502, !llvm.loop !265

707:                                              ; preds = %704, %488
  %708 = add nuw nsw i32 %489, 1
  %709 = icmp eq i32 %708, %4
  br i1 %709, label %495, label %488, !llvm.loop !266

710:                                              ; preds = %497, %923
  %711 = phi i32 [ 0, %497 ], [ %924, %923 ]
  br i1 %498, label %712, label %923

712:                                              ; preds = %710
  %713 = add nsw i32 %711, -1
  %714 = add nuw nsw i32 %711, 1
  %715 = add nsw i32 %711, -1
  %716 = add nuw nsw i32 %711, 1
  br label %724

717:                                              ; preds = %923, %495
  %718 = icmp sgt i32 %4, 0
  br i1 %718, label %719, label %1440

719:                                              ; preds = %717
  %720 = icmp sgt i32 %6, 3
  %721 = add nsw i32 %7, 1
  %722 = tail call i32 @llvm.smax.i32(i32 %7, i32 2)
  %723 = zext nneg i32 %721 to i64
  br label %926

724:                                              ; preds = %712, %920
  %725 = phi i32 [ 1, %712 ], [ %921, %920 ]
  br i1 %499, label %726, label %920

726:                                              ; preds = %724
  %727 = load i32, ptr %5, align 4, !tbaa !94
  %728 = sdiv i32 %727, 2
  %729 = add nsw i32 %728, 1
  %730 = add nsw i32 %727, 1
  %731 = load ptr, ptr %1, align 8, !tbaa !149
  %732 = mul i32 %729, %711
  %733 = add i32 %732, %725
  %734 = mul i32 %733, %730
  %735 = shl nuw nsw i32 %725, 1
  %736 = add nsw i32 %735, -1
  %737 = load i32, ptr %14, align 8, !tbaa !148
  %738 = load i32, ptr %15, align 4, !tbaa !94
  %739 = sdiv i32 %738, 2
  %740 = srem i32 %738, 2
  %741 = icmp eq i32 %740, 0
  %742 = icmp eq i32 %739, %736
  %743 = and i1 %741, %742
  %744 = add nsw i32 %739, -1
  %745 = add nsw i32 %744, %740
  %746 = icmp slt i32 %745, %736
  %747 = add nsw i32 %739, 1
  %748 = add nsw i32 %738, 1
  %749 = mul i32 %747, %711
  %750 = add i32 %749, %736
  %751 = mul i32 %750, %748
  %752 = add i32 %713, %737
  %753 = sub i32 %738, %735
  %754 = add i32 %753, 1
  %755 = add nsw i32 %739, 1
  %756 = add nsw i32 %738, 1
  %757 = add nsw i32 %739, 1
  %758 = add nsw i32 %738, 1
  %759 = add nsw i32 %738, 1
  %760 = mul nsw i32 %759, %736
  %761 = or disjoint i32 %735, 1
  %762 = icmp eq i32 %739, %761
  %763 = and i1 %741, %762
  %764 = add nsw i32 %739, -1
  %765 = add nsw i32 %764, %740
  %766 = icmp sle i32 %765, %735
  %767 = add nsw i32 %739, 1
  %768 = add nsw i32 %738, 1
  %769 = mul i32 %767, %711
  %770 = add i32 %769, %761
  %771 = mul i32 %770, %768
  %772 = add i32 %715, %737
  %773 = sub i32 %738, %761
  %774 = add nsw i32 %739, 1
  %775 = add nsw i32 %738, 1
  %776 = add nsw i32 %739, 1
  %777 = add nsw i32 %738, 1
  %778 = add nsw i32 %738, 1
  %779 = mul nsw i32 %778, %761
  %780 = add nsw i32 %739, 1
  %781 = add nsw i32 %738, 1
  %782 = load ptr, ptr %13, align 8, !tbaa !149
  %783 = mul i32 %780, %711
  %784 = add i32 %783, %735
  %785 = mul i32 %784, %781
  %786 = sext i32 %734 to i64
  %787 = zext i32 %739 to i64
  %788 = sext i32 %760 to i64
  %789 = sext i32 %779 to i64
  %790 = sext i32 %739 to i64
  %791 = sext i32 %739 to i64
  %792 = sext i32 %734 to i64
  br label %793

793:                                              ; preds = %726, %875
  %794 = phi i64 [ 0, %726 ], [ %796, %875 ]
  %795 = add nsw i64 %794, %786
  %796 = add nuw nsw i64 %794, 1
  %797 = add nsw i64 %796, %792
  %798 = shl nuw nsw i64 %794, 1
  %799 = or disjoint i64 %798, 1
  %800 = icmp eq i64 %799, %787
  %801 = and i1 %800, %743
  br i1 %801, label %802, label %806

802:                                              ; preds = %793
  %803 = load ptr, ptr %13, align 8, !tbaa !149
  %804 = getelementptr %struct.NewVert, ptr %803, i64 %799
  %805 = getelementptr %struct.NewVert, ptr %804, i64 %788
  br label %837

806:                                              ; preds = %793
  %807 = icmp sge i64 %798, %790
  %808 = or i1 %807, %746
  br i1 %808, label %815, label %809

809:                                              ; preds = %806
  %810 = load ptr, ptr %13, align 8, !tbaa !149
  %811 = trunc i64 %799 to i32
  %812 = add i32 %751, %811
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds %struct.NewVert, ptr %810, i64 %813
  br label %837

815:                                              ; preds = %806
  br i1 %807, label %826, label %816

816:                                              ; preds = %815
  %817 = srem i32 %752, %737
  %818 = load ptr, ptr %13, align 8, !tbaa !149
  %819 = mul i32 %817, %755
  %820 = trunc i64 %799 to i32
  %821 = add i32 %819, %820
  %822 = mul i32 %821, %756
  %823 = add i32 %754, %822
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds %struct.NewVert, ptr %818, i64 %824
  br label %837

826:                                              ; preds = %815
  %827 = srem i32 %714, %737
  %828 = trunc i64 %799 to i32
  %829 = sub i32 %738, %828
  %830 = load ptr, ptr %13, align 8, !tbaa !149
  %831 = mul i32 %827, %757
  %832 = add i32 %829, %831
  %833 = mul i32 %832, %758
  %834 = add i32 %833, %736
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds %struct.NewVert, ptr %830, i64 %835
  br label %837

837:                                              ; preds = %802, %809, %816, %826
  %838 = phi ptr [ %814, %809 ], [ %825, %816 ], [ %836, %826 ], [ %805, %802 ]
  %839 = and i1 %800, %763
  br i1 %839, label %840, label %844

840:                                              ; preds = %837
  %841 = load ptr, ptr %13, align 8, !tbaa !149
  %842 = getelementptr %struct.NewVert, ptr %841, i64 %799
  %843 = getelementptr %struct.NewVert, ptr %842, i64 %789
  br label %875

844:                                              ; preds = %837
  %845 = icmp sge i64 %798, %791
  %846 = or i1 %845, %766
  br i1 %846, label %853, label %847

847:                                              ; preds = %844
  %848 = load ptr, ptr %13, align 8, !tbaa !149
  %849 = trunc i64 %799 to i32
  %850 = add i32 %771, %849
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds %struct.NewVert, ptr %848, i64 %851
  br label %875

853:                                              ; preds = %844
  br i1 %845, label %864, label %854

854:                                              ; preds = %853
  %855 = srem i32 %772, %737
  %856 = load ptr, ptr %13, align 8, !tbaa !149
  %857 = mul i32 %855, %774
  %858 = trunc i64 %799 to i32
  %859 = add i32 %857, %858
  %860 = mul i32 %859, %775
  %861 = add i32 %773, %860
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds %struct.NewVert, ptr %856, i64 %862
  br label %875

864:                                              ; preds = %853
  %865 = srem i32 %716, %737
  %866 = trunc i64 %799 to i32
  %867 = sub i32 %738, %866
  %868 = load ptr, ptr %13, align 8, !tbaa !149
  %869 = mul i32 %865, %776
  %870 = add i32 %867, %869
  %871 = mul i32 %870, %777
  %872 = add i32 %871, %761
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds %struct.NewVert, ptr %868, i64 %873
  br label %875

875:                                              ; preds = %840, %847, %854, %864
  %876 = phi ptr [ %852, %847 ], [ %863, %854 ], [ %874, %864 ], [ %843, %840 ]
  %877 = getelementptr inbounds %struct.NewVert, ptr %731, i64 %795, i32 1
  %878 = getelementptr inbounds %struct.NewVert, ptr %731, i64 %797, i32 1
  %879 = load float, ptr %877, align 4, !tbaa !115
  %880 = load float, ptr %878, align 4, !tbaa !115
  %881 = fadd float %879, %880
  %882 = getelementptr inbounds %struct.NewVert, ptr %731, i64 %795, i32 1, i64 1
  %883 = load float, ptr %882, align 4, !tbaa !115
  %884 = getelementptr inbounds %struct.NewVert, ptr %731, i64 %797, i32 1, i64 1
  %885 = load float, ptr %884, align 4, !tbaa !115
  %886 = fadd float %883, %885
  %887 = getelementptr inbounds %struct.NewVert, ptr %731, i64 %795, i32 1, i64 2
  %888 = load float, ptr %887, align 4, !tbaa !115
  %889 = getelementptr inbounds %struct.NewVert, ptr %731, i64 %797, i32 1, i64 2
  %890 = load float, ptr %889, align 4, !tbaa !115
  %891 = fadd float %888, %890
  %892 = getelementptr inbounds %struct.NewVert, ptr %838, i64 0, i32 1
  %893 = load float, ptr %892, align 4, !tbaa !115
  %894 = fadd float %881, %893
  %895 = getelementptr inbounds %struct.NewVert, ptr %838, i64 0, i32 1, i64 1
  %896 = load float, ptr %895, align 4, !tbaa !115
  %897 = fadd float %886, %896
  %898 = getelementptr inbounds %struct.NewVert, ptr %838, i64 0, i32 1, i64 2
  %899 = load float, ptr %898, align 4, !tbaa !115
  %900 = fadd float %891, %899
  %901 = getelementptr inbounds %struct.NewVert, ptr %876, i64 0, i32 1
  %902 = load float, ptr %901, align 4, !tbaa !115
  %903 = fadd float %894, %902
  %904 = getelementptr inbounds %struct.NewVert, ptr %876, i64 0, i32 1, i64 1
  %905 = load float, ptr %904, align 4, !tbaa !115
  %906 = fadd float %897, %905
  %907 = getelementptr inbounds %struct.NewVert, ptr %876, i64 0, i32 1, i64 2
  %908 = load float, ptr %907, align 4, !tbaa !115
  %909 = fadd float %900, %908
  %910 = fmul float %903, 2.500000e-01
  %911 = fmul float %906, 2.500000e-01
  %912 = fmul float %909, 2.500000e-01
  %913 = trunc i64 %799 to i32
  %914 = add i32 %785, %913
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds %struct.NewVert, ptr %782, i64 %915, i32 1
  store float %910, ptr %916, align 4, !tbaa !115
  %917 = getelementptr inbounds float, ptr %916, i64 1
  store float %911, ptr %917, align 4, !tbaa !115
  %918 = getelementptr inbounds float, ptr %916, i64 2
  store float %912, ptr %918, align 4, !tbaa !115
  %919 = icmp eq i64 %796, %501
  br i1 %919, label %920, label %793, !llvm.loop !267

920:                                              ; preds = %875, %724
  %921 = add nuw nsw i32 %725, 1
  %922 = icmp eq i32 %921, %500
  br i1 %922, label %923, label %724, !llvm.loop !268

923:                                              ; preds = %920, %710
  %924 = add nuw nsw i32 %711, 1
  %925 = icmp eq i32 %924, %4
  br i1 %925, label %717, label %710, !llvm.loop !269

926:                                              ; preds = %719, %1437
  %927 = phi i32 [ 0, %719 ], [ %1438, %1437 ]
  br i1 %720, label %928, label %1437

928:                                              ; preds = %926
  %929 = add nsw i32 %927, -1
  %930 = add nuw nsw i32 %927, 1
  %931 = add nsw i32 %927, -1
  %932 = add nuw nsw i32 %927, 1
  %933 = add nsw i32 %927, -1
  %934 = add nuw nsw i32 %927, 1
  %935 = add nsw i32 %927, -1
  %936 = add nuw nsw i32 %927, 1
  %937 = add nsw i32 %927, -1
  %938 = add nuw nsw i32 %927, 1
  %939 = add nsw i32 %927, -1
  %940 = add nuw nsw i32 %927, 1
  %941 = add nsw i32 %927, -1
  %942 = add nuw nsw i32 %927, 1
  %943 = add nsw i32 %927, -1
  %944 = add nuw nsw i32 %927, 1
  %945 = load i32, ptr %14, align 8, !tbaa !148
  %946 = load i32, ptr %15, align 4, !tbaa !94
  %947 = sdiv i32 %946, 2
  %948 = srem i32 %946, 2
  %949 = icmp eq i32 %948, 0
  %950 = add nsw i32 %947, -1
  %951 = add nsw i32 %950, %948
  %952 = add nsw i32 %947, 1
  %953 = add nsw i32 %946, 1
  %954 = mul i32 %952, %927
  %955 = add i32 %929, %945
  %956 = add nsw i32 %947, 1
  %957 = add nsw i32 %946, 1
  %958 = add nsw i32 %947, 1
  %959 = add nsw i32 %946, 1
  %960 = add nsw i32 %947, 1
  %961 = add nsw i32 %946, 1
  %962 = mul i32 %960, %927
  %963 = add i32 %931, %945
  %964 = add nsw i32 %947, 1
  %965 = add nsw i32 %946, 1
  %966 = add nsw i32 %947, 1
  %967 = add nsw i32 %946, 1
  %968 = add nsw i32 %947, 1
  %969 = add nsw i32 %946, 1
  %970 = mul i32 %968, %927
  %971 = add i32 %933, %945
  %972 = add nsw i32 %947, 1
  %973 = add nsw i32 %946, 1
  %974 = add nsw i32 %947, 1
  %975 = add nsw i32 %946, 1
  %976 = add nsw i32 %947, 1
  %977 = add nsw i32 %946, 1
  %978 = mul i32 %976, %927
  %979 = add i32 %935, %945
  %980 = add nsw i32 %947, 1
  %981 = add nsw i32 %946, 1
  %982 = add nsw i32 %947, 1
  %983 = add nsw i32 %946, 1
  %984 = add nsw i32 %947, 1
  %985 = add nsw i32 %946, 1
  %986 = mul i32 %984, %927
  %987 = add i32 %937, %945
  %988 = add nsw i32 %947, 1
  %989 = add nsw i32 %946, 1
  %990 = add nsw i32 %947, 1
  %991 = add nsw i32 %946, 1
  %992 = add nsw i32 %946, 1
  %993 = add nsw i32 %947, 1
  %994 = add nsw i32 %946, 1
  %995 = mul i32 %993, %927
  %996 = add i32 %939, %945
  %997 = add nsw i32 %947, 1
  %998 = add nsw i32 %946, 1
  %999 = add nsw i32 %947, 1
  %1000 = add nsw i32 %946, 1
  %1001 = add nsw i32 %946, 1
  %1002 = add nsw i32 %947, 1
  %1003 = add nsw i32 %946, 1
  %1004 = mul i32 %1002, %927
  %1005 = add i32 %941, %945
  %1006 = add nsw i32 %947, 1
  %1007 = add nsw i32 %946, 1
  %1008 = add nsw i32 %947, 1
  %1009 = add nsw i32 %946, 1
  %1010 = add nsw i32 %946, 1
  %1011 = add nsw i32 %947, 1
  %1012 = add nsw i32 %946, 1
  %1013 = mul i32 %1011, %927
  %1014 = add i32 %943, %945
  %1015 = add nsw i32 %947, 1
  %1016 = add nsw i32 %946, 1
  %1017 = add nsw i32 %947, 1
  %1018 = add nsw i32 %946, 1
  %1019 = add nsw i32 %946, 1
  %1020 = load i32, ptr %5, align 4, !tbaa !94
  %1021 = sdiv i32 %1020, 2
  %1022 = add nsw i32 %1021, 1
  %1023 = add nsw i32 %1020, 1
  %1024 = load ptr, ptr %1, align 8, !tbaa !149
  %1025 = mul i32 %1022, %927
  %1026 = add nsw i32 %947, 1
  %1027 = add nsw i32 %946, 1
  %1028 = load ptr, ptr %13, align 8, !tbaa !149
  %1029 = mul i32 %1026, %927
  %1030 = sext i32 %947 to i64
  %1031 = zext i32 %947 to i64
  %1032 = zext i32 %947 to i64
  %1033 = sext i32 %947 to i64
  %1034 = sext i32 %947 to i64
  %1035 = load ptr, ptr %13, align 8, !tbaa !149
  %1036 = load ptr, ptr %13, align 8, !tbaa !149
  %1037 = load ptr, ptr %13, align 8, !tbaa !149
  %1038 = load ptr, ptr %13, align 8, !tbaa !149
  br label %1039

1039:                                             ; preds = %928, %1434
  %1040 = phi i32 [ 1, %928 ], [ %1435, %1434 ]
  %1041 = shl nuw nsw i32 %1040, 1
  %1042 = icmp slt i32 %951, %1041
  %1043 = add i32 %954, %1041
  %1044 = mul i32 %1043, %953
  %1045 = sub i32 %946, %1041
  %1046 = add i32 %962, %1041
  %1047 = mul i32 %1046, %961
  %1048 = sub i32 %946, %1041
  %1049 = add nsw i32 %1041, -1
  %1050 = sub nsw i32 1, %1041
  %1051 = icmp eq i32 %947, %1049
  %1052 = icmp slt i32 %951, %1049
  %1053 = add i32 %970, %1049
  %1054 = mul i32 %1053, %969
  %1055 = add i32 %946, %1050
  %1056 = or disjoint i32 %1041, 1
  %1057 = icmp eq i32 %947, %1056
  %1058 = icmp sle i32 %951, %1041
  %1059 = add i32 %978, %1056
  %1060 = mul i32 %1059, %977
  %1061 = sub i32 %946, %1056
  %1062 = and i1 %949, %1051
  %1063 = add i32 %986, %1049
  %1064 = mul i32 %1063, %985
  %1065 = add i32 %946, %1050
  %1066 = mul nsw i32 %992, %1049
  %1067 = and i1 %949, %1057
  %1068 = add i32 %995, %1056
  %1069 = mul i32 %1068, %994
  %1070 = sub i32 %946, %1056
  %1071 = mul nsw i32 %1001, %1056
  %1072 = add i32 %1004, %1049
  %1073 = mul i32 %1072, %1003
  %1074 = add i32 %946, %1050
  %1075 = mul nsw i32 %1010, %1049
  %1076 = add i32 %1013, %1056
  %1077 = mul i32 %1076, %1012
  %1078 = sub i32 %946, %1056
  %1079 = mul nsw i32 %1019, %1056
  %1080 = add i32 %1025, %1040
  %1081 = mul i32 %1080, %1023
  %1082 = add i32 %1029, %1041
  %1083 = mul i32 %1082, %1027
  %1084 = sext i32 %1066 to i64
  %1085 = sext i32 %1071 to i64
  %1086 = sext i32 %1075 to i64
  %1087 = sext i32 %1079 to i64
  br label %1088

1088:                                             ; preds = %1039, %1373
  %1089 = phi i64 [ 1, %1039 ], [ %1432, %1373 ]
  %1090 = shl nuw nsw i64 %1089, 1
  %1091 = add nsw i64 %1090, -1
  %1092 = sub nsw i64 1, %1090
  %1093 = icmp sgt i64 %1091, %1030
  %1094 = or i1 %1093, %1042
  br i1 %1094, label %1098, label %1095

1095:                                             ; preds = %1088
  %1096 = trunc i64 %1091 to i32
  %1097 = add i32 %1044, %1096
  br label %1114

1098:                                             ; preds = %1088
  br i1 %1093, label %1106, label %1099

1099:                                             ; preds = %1098
  %1100 = srem i32 %955, %945
  %1101 = mul i32 %1100, %956
  %1102 = trunc i64 %1091 to i32
  %1103 = add i32 %1101, %1102
  %1104 = mul i32 %1103, %957
  %1105 = add i32 %1045, %1104
  br label %1114

1106:                                             ; preds = %1098
  %1107 = srem i32 %930, %945
  %1108 = trunc i64 %1092 to i32
  %1109 = add i32 %946, %1108
  %1110 = mul i32 %1107, %958
  %1111 = add i32 %1109, %1110
  %1112 = mul i32 %1111, %959
  %1113 = add i32 %1112, %1041
  br label %1114

1114:                                             ; preds = %1095, %1099, %1106
  %1115 = phi i32 [ %1097, %1095 ], [ %1105, %1099 ], [ %1113, %1106 ]
  %1116 = sext i32 %1115 to i64
  %1117 = or disjoint i64 %1090, 1
  %1118 = icmp sge i64 %1090, %1034
  %1119 = or i1 %1118, %1042
  br i1 %1119, label %1123, label %1120

1120:                                             ; preds = %1114
  %1121 = trunc i64 %1117 to i32
  %1122 = add i32 %1047, %1121
  br label %1139

1123:                                             ; preds = %1114
  br i1 %1118, label %1131, label %1124

1124:                                             ; preds = %1123
  %1125 = srem i32 %963, %945
  %1126 = mul i32 %1125, %964
  %1127 = trunc i64 %1117 to i32
  %1128 = add i32 %1126, %1127
  %1129 = mul i32 %1128, %965
  %1130 = add i32 %1048, %1129
  br label %1139

1131:                                             ; preds = %1123
  %1132 = srem i32 %932, %945
  %1133 = trunc i64 %1117 to i32
  %1134 = sub i32 %946, %1133
  %1135 = mul i32 %1132, %966
  %1136 = add i32 %1134, %1135
  %1137 = mul i32 %1136, %967
  %1138 = add i32 %1137, %1041
  br label %1139

1139:                                             ; preds = %1120, %1124, %1131
  %1140 = phi i32 [ %1122, %1120 ], [ %1130, %1124 ], [ %1138, %1131 ]
  %1141 = sext i32 %1140 to i64
  %1142 = icmp sgt i64 %1090, %1033
  %1143 = or i1 %1142, %1052
  br i1 %1143, label %1147, label %1144

1144:                                             ; preds = %1139
  %1145 = trunc i64 %1090 to i32
  %1146 = add i32 %1054, %1145
  br label %1163

1147:                                             ; preds = %1139
  br i1 %1142, label %1155, label %1148

1148:                                             ; preds = %1147
  %1149 = srem i32 %971, %945
  %1150 = mul i32 %1149, %972
  %1151 = trunc i64 %1090 to i32
  %1152 = add i32 %1150, %1151
  %1153 = mul i32 %1152, %973
  %1154 = add i32 %1055, %1153
  br label %1163

1155:                                             ; preds = %1147
  %1156 = srem i32 %934, %945
  %1157 = trunc i64 %1090 to i32
  %1158 = sub i32 %946, %1157
  %1159 = mul i32 %1156, %974
  %1160 = add i32 %1158, %1159
  %1161 = mul i32 %1160, %975
  %1162 = add i32 %1161, %1049
  br label %1163

1163:                                             ; preds = %1144, %1148, %1155
  %1164 = phi i32 [ %1146, %1144 ], [ %1154, %1148 ], [ %1162, %1155 ]
  %1165 = sext i32 %1164 to i64
  %1166 = or i1 %1142, %1058
  br i1 %1166, label %1170, label %1167

1167:                                             ; preds = %1163
  %1168 = trunc i64 %1090 to i32
  %1169 = add i32 %1060, %1168
  br label %1186

1170:                                             ; preds = %1163
  br i1 %1142, label %1178, label %1171

1171:                                             ; preds = %1170
  %1172 = srem i32 %979, %945
  %1173 = mul i32 %1172, %980
  %1174 = trunc i64 %1090 to i32
  %1175 = add i32 %1173, %1174
  %1176 = mul i32 %1175, %981
  %1177 = add i32 %1061, %1176
  br label %1186

1178:                                             ; preds = %1170
  %1179 = srem i32 %936, %945
  %1180 = trunc i64 %1090 to i32
  %1181 = sub i32 %946, %1180
  %1182 = mul i32 %1179, %982
  %1183 = add i32 %1181, %1182
  %1184 = mul i32 %1183, %983
  %1185 = add i32 %1184, %1056
  br label %1186

1186:                                             ; preds = %1167, %1171, %1178
  %1187 = phi i32 [ %1169, %1167 ], [ %1177, %1171 ], [ %1185, %1178 ]
  %1188 = sext i32 %1187 to i64
  %1189 = getelementptr inbounds %struct.NewVert, ptr %1035, i64 %1116, i32 1
  %1190 = getelementptr inbounds %struct.NewVert, ptr %1036, i64 %1141, i32 1
  %1191 = load float, ptr %1189, align 4, !tbaa !115
  %1192 = load float, ptr %1190, align 4, !tbaa !115
  %1193 = fadd float %1191, %1192
  %1194 = getelementptr inbounds %struct.NewVert, ptr %1035, i64 %1116, i32 1, i64 1
  %1195 = load float, ptr %1194, align 4, !tbaa !115
  %1196 = getelementptr inbounds %struct.NewVert, ptr %1036, i64 %1141, i32 1, i64 1
  %1197 = load float, ptr %1196, align 4, !tbaa !115
  %1198 = fadd float %1195, %1197
  %1199 = getelementptr inbounds %struct.NewVert, ptr %1035, i64 %1116, i32 1, i64 2
  %1200 = load float, ptr %1199, align 4, !tbaa !115
  %1201 = getelementptr inbounds %struct.NewVert, ptr %1036, i64 %1141, i32 1, i64 2
  %1202 = load float, ptr %1201, align 4, !tbaa !115
  %1203 = fadd float %1200, %1202
  %1204 = getelementptr inbounds %struct.NewVert, ptr %1037, i64 %1165, i32 1
  %1205 = load float, ptr %1204, align 4, !tbaa !115
  %1206 = fadd float %1193, %1205
  %1207 = getelementptr inbounds %struct.NewVert, ptr %1037, i64 %1165, i32 1, i64 1
  %1208 = load float, ptr %1207, align 4, !tbaa !115
  %1209 = fadd float %1198, %1208
  %1210 = getelementptr inbounds %struct.NewVert, ptr %1037, i64 %1165, i32 1, i64 2
  %1211 = load float, ptr %1210, align 4, !tbaa !115
  %1212 = fadd float %1203, %1211
  %1213 = getelementptr inbounds %struct.NewVert, ptr %1038, i64 %1188, i32 1
  %1214 = load float, ptr %1213, align 4, !tbaa !115
  %1215 = fadd float %1206, %1214
  %1216 = getelementptr inbounds %struct.NewVert, ptr %1038, i64 %1188, i32 1, i64 1
  %1217 = load float, ptr %1216, align 4, !tbaa !115
  %1218 = fadd float %1209, %1217
  %1219 = getelementptr inbounds %struct.NewVert, ptr %1038, i64 %1188, i32 1, i64 2
  %1220 = load float, ptr %1219, align 4, !tbaa !115
  %1221 = fadd float %1212, %1220
  %1222 = fmul float %1215, 2.500000e-01
  %1223 = fmul float %1218, 2.500000e-01
  %1224 = fmul float %1221, 2.500000e-01
  %1225 = icmp eq i64 %1091, %1031
  %1226 = and i1 %1225, %1062
  br i1 %1226, label %1227, label %1231

1227:                                             ; preds = %1186
  %1228 = load ptr, ptr %13, align 8, !tbaa !149
  %1229 = getelementptr %struct.NewVert, ptr %1228, i64 %1091
  %1230 = getelementptr %struct.NewVert, ptr %1229, i64 %1084
  br label %1261

1231:                                             ; preds = %1186
  %1232 = or i1 %1093, %1052
  br i1 %1232, label %1239, label %1233

1233:                                             ; preds = %1231
  %1234 = load ptr, ptr %13, align 8, !tbaa !149
  %1235 = trunc i64 %1091 to i32
  %1236 = add i32 %1064, %1235
  %1237 = sext i32 %1236 to i64
  %1238 = getelementptr inbounds %struct.NewVert, ptr %1234, i64 %1237
  br label %1261

1239:                                             ; preds = %1231
  br i1 %1093, label %1250, label %1240

1240:                                             ; preds = %1239
  %1241 = srem i32 %987, %945
  %1242 = load ptr, ptr %13, align 8, !tbaa !149
  %1243 = mul i32 %1241, %988
  %1244 = trunc i64 %1091 to i32
  %1245 = add i32 %1243, %1244
  %1246 = mul i32 %1245, %989
  %1247 = add i32 %1065, %1246
  %1248 = sext i32 %1247 to i64
  %1249 = getelementptr inbounds %struct.NewVert, ptr %1242, i64 %1248
  br label %1261

1250:                                             ; preds = %1239
  %1251 = srem i32 %938, %945
  %1252 = trunc i64 %1092 to i32
  %1253 = add i32 %946, %1252
  %1254 = load ptr, ptr %13, align 8, !tbaa !149
  %1255 = mul i32 %1251, %990
  %1256 = add i32 %1253, %1255
  %1257 = mul i32 %1256, %991
  %1258 = add i32 %1257, %1049
  %1259 = sext i32 %1258 to i64
  %1260 = getelementptr inbounds %struct.NewVert, ptr %1254, i64 %1259
  br label %1261

1261:                                             ; preds = %1227, %1233, %1240, %1250
  %1262 = phi ptr [ %1238, %1233 ], [ %1249, %1240 ], [ %1260, %1250 ], [ %1230, %1227 ]
  %1263 = and i1 %1225, %1067
  br i1 %1263, label %1264, label %1268

1264:                                             ; preds = %1261
  %1265 = load ptr, ptr %13, align 8, !tbaa !149
  %1266 = getelementptr %struct.NewVert, ptr %1265, i64 %1091
  %1267 = getelementptr %struct.NewVert, ptr %1266, i64 %1085
  br label %1298

1268:                                             ; preds = %1261
  %1269 = or i1 %1093, %1058
  br i1 %1269, label %1276, label %1270

1270:                                             ; preds = %1268
  %1271 = load ptr, ptr %13, align 8, !tbaa !149
  %1272 = trunc i64 %1091 to i32
  %1273 = add i32 %1069, %1272
  %1274 = sext i32 %1273 to i64
  %1275 = getelementptr inbounds %struct.NewVert, ptr %1271, i64 %1274
  br label %1298

1276:                                             ; preds = %1268
  br i1 %1093, label %1287, label %1277

1277:                                             ; preds = %1276
  %1278 = srem i32 %996, %945
  %1279 = load ptr, ptr %13, align 8, !tbaa !149
  %1280 = mul i32 %1278, %997
  %1281 = trunc i64 %1091 to i32
  %1282 = add i32 %1280, %1281
  %1283 = mul i32 %1282, %998
  %1284 = add i32 %1070, %1283
  %1285 = sext i32 %1284 to i64
  %1286 = getelementptr inbounds %struct.NewVert, ptr %1279, i64 %1285
  br label %1298

1287:                                             ; preds = %1276
  %1288 = srem i32 %940, %945
  %1289 = trunc i64 %1092 to i32
  %1290 = add i32 %946, %1289
  %1291 = load ptr, ptr %13, align 8, !tbaa !149
  %1292 = mul i32 %1288, %999
  %1293 = add i32 %1290, %1292
  %1294 = mul i32 %1293, %1000
  %1295 = add i32 %1294, %1056
  %1296 = sext i32 %1295 to i64
  %1297 = getelementptr inbounds %struct.NewVert, ptr %1291, i64 %1296
  br label %1298

1298:                                             ; preds = %1264, %1270, %1277, %1287
  %1299 = phi ptr [ %1275, %1270 ], [ %1286, %1277 ], [ %1297, %1287 ], [ %1267, %1264 ]
  %1300 = icmp eq i64 %1117, %1032
  %1301 = and i1 %1300, %1062
  br i1 %1301, label %1302, label %1306

1302:                                             ; preds = %1298
  %1303 = load ptr, ptr %13, align 8, !tbaa !149
  %1304 = getelementptr %struct.NewVert, ptr %1303, i64 %1117
  %1305 = getelementptr %struct.NewVert, ptr %1304, i64 %1086
  br label %1336

1306:                                             ; preds = %1298
  %1307 = or i1 %1118, %1052
  br i1 %1307, label %1314, label %1308

1308:                                             ; preds = %1306
  %1309 = load ptr, ptr %13, align 8, !tbaa !149
  %1310 = trunc i64 %1117 to i32
  %1311 = add i32 %1073, %1310
  %1312 = sext i32 %1311 to i64
  %1313 = getelementptr inbounds %struct.NewVert, ptr %1309, i64 %1312
  br label %1336

1314:                                             ; preds = %1306
  br i1 %1118, label %1325, label %1315

1315:                                             ; preds = %1314
  %1316 = srem i32 %1005, %945
  %1317 = load ptr, ptr %13, align 8, !tbaa !149
  %1318 = mul i32 %1316, %1006
  %1319 = trunc i64 %1117 to i32
  %1320 = add i32 %1318, %1319
  %1321 = mul i32 %1320, %1007
  %1322 = add i32 %1074, %1321
  %1323 = sext i32 %1322 to i64
  %1324 = getelementptr inbounds %struct.NewVert, ptr %1317, i64 %1323
  br label %1336

1325:                                             ; preds = %1314
  %1326 = srem i32 %942, %945
  %1327 = trunc i64 %1117 to i32
  %1328 = sub i32 %946, %1327
  %1329 = load ptr, ptr %13, align 8, !tbaa !149
  %1330 = mul i32 %1326, %1008
  %1331 = add i32 %1328, %1330
  %1332 = mul i32 %1331, %1009
  %1333 = add i32 %1332, %1049
  %1334 = sext i32 %1333 to i64
  %1335 = getelementptr inbounds %struct.NewVert, ptr %1329, i64 %1334
  br label %1336

1336:                                             ; preds = %1302, %1308, %1315, %1325
  %1337 = phi ptr [ %1313, %1308 ], [ %1324, %1315 ], [ %1335, %1325 ], [ %1305, %1302 ]
  %1338 = and i1 %1300, %1067
  br i1 %1338, label %1339, label %1343

1339:                                             ; preds = %1336
  %1340 = load ptr, ptr %13, align 8, !tbaa !149
  %1341 = getelementptr %struct.NewVert, ptr %1340, i64 %1117
  %1342 = getelementptr %struct.NewVert, ptr %1341, i64 %1087
  br label %1373

1343:                                             ; preds = %1336
  %1344 = or i1 %1118, %1058
  br i1 %1344, label %1351, label %1345

1345:                                             ; preds = %1343
  %1346 = load ptr, ptr %13, align 8, !tbaa !149
  %1347 = trunc i64 %1117 to i32
  %1348 = add i32 %1077, %1347
  %1349 = sext i32 %1348 to i64
  %1350 = getelementptr inbounds %struct.NewVert, ptr %1346, i64 %1349
  br label %1373

1351:                                             ; preds = %1343
  br i1 %1118, label %1362, label %1352

1352:                                             ; preds = %1351
  %1353 = srem i32 %1014, %945
  %1354 = load ptr, ptr %13, align 8, !tbaa !149
  %1355 = mul i32 %1353, %1015
  %1356 = trunc i64 %1117 to i32
  %1357 = add i32 %1355, %1356
  %1358 = mul i32 %1357, %1016
  %1359 = add i32 %1078, %1358
  %1360 = sext i32 %1359 to i64
  %1361 = getelementptr inbounds %struct.NewVert, ptr %1354, i64 %1360
  br label %1373

1362:                                             ; preds = %1351
  %1363 = srem i32 %944, %945
  %1364 = trunc i64 %1117 to i32
  %1365 = sub i32 %946, %1364
  %1366 = load ptr, ptr %13, align 8, !tbaa !149
  %1367 = mul i32 %1363, %1017
  %1368 = add i32 %1365, %1367
  %1369 = mul i32 %1368, %1018
  %1370 = add i32 %1369, %1056
  %1371 = sext i32 %1370 to i64
  %1372 = getelementptr inbounds %struct.NewVert, ptr %1366, i64 %1371
  br label %1373

1373:                                             ; preds = %1339, %1345, %1352, %1362
  %1374 = phi ptr [ %1350, %1345 ], [ %1361, %1352 ], [ %1372, %1362 ], [ %1342, %1339 ]
  %1375 = getelementptr inbounds %struct.NewVert, ptr %1262, i64 0, i32 1
  %1376 = getelementptr inbounds %struct.NewVert, ptr %1299, i64 0, i32 1
  %1377 = load float, ptr %1375, align 4, !tbaa !115
  %1378 = load float, ptr %1376, align 4, !tbaa !115
  %1379 = fadd float %1377, %1378
  %1380 = getelementptr inbounds %struct.NewVert, ptr %1262, i64 0, i32 1, i64 1
  %1381 = load float, ptr %1380, align 4, !tbaa !115
  %1382 = getelementptr inbounds %struct.NewVert, ptr %1299, i64 0, i32 1, i64 1
  %1383 = load float, ptr %1382, align 4, !tbaa !115
  %1384 = fadd float %1381, %1383
  %1385 = getelementptr inbounds %struct.NewVert, ptr %1262, i64 0, i32 1, i64 2
  %1386 = load float, ptr %1385, align 4, !tbaa !115
  %1387 = getelementptr inbounds %struct.NewVert, ptr %1299, i64 0, i32 1, i64 2
  %1388 = load float, ptr %1387, align 4, !tbaa !115
  %1389 = fadd float %1386, %1388
  %1390 = getelementptr inbounds %struct.NewVert, ptr %1337, i64 0, i32 1
  %1391 = load float, ptr %1390, align 4, !tbaa !115
  %1392 = fadd float %1379, %1391
  %1393 = getelementptr inbounds %struct.NewVert, ptr %1337, i64 0, i32 1, i64 1
  %1394 = load float, ptr %1393, align 4, !tbaa !115
  %1395 = fadd float %1384, %1394
  %1396 = getelementptr inbounds %struct.NewVert, ptr %1337, i64 0, i32 1, i64 2
  %1397 = load float, ptr %1396, align 4, !tbaa !115
  %1398 = fadd float %1389, %1397
  %1399 = getelementptr inbounds %struct.NewVert, ptr %1374, i64 0, i32 1
  %1400 = load float, ptr %1399, align 4, !tbaa !115
  %1401 = fadd float %1392, %1400
  %1402 = getelementptr inbounds %struct.NewVert, ptr %1374, i64 0, i32 1, i64 1
  %1403 = load float, ptr %1402, align 4, !tbaa !115
  %1404 = fadd float %1395, %1403
  %1405 = getelementptr inbounds %struct.NewVert, ptr %1374, i64 0, i32 1, i64 2
  %1406 = load float, ptr %1405, align 4, !tbaa !115
  %1407 = fadd float %1398, %1406
  %1408 = fmul float %1401, 2.500000e-01
  %1409 = fmul float %1404, 2.500000e-01
  %1410 = fmul float %1407, 2.500000e-01
  %1411 = tail call float @llvm.fmuladd.f32(float %1408, float -2.500000e-01, float %1222)
  %1412 = tail call float @llvm.fmuladd.f32(float %1409, float -2.500000e-01, float %1223)
  %1413 = tail call float @llvm.fmuladd.f32(float %1410, float -2.500000e-01, float %1224)
  %1414 = trunc i64 %1089 to i32
  %1415 = add i32 %1081, %1414
  %1416 = sext i32 %1415 to i64
  %1417 = getelementptr inbounds %struct.NewVert, ptr %1024, i64 %1416, i32 1
  %1418 = load float, ptr %1417, align 4, !tbaa !115
  %1419 = tail call float @llvm.fmuladd.f32(float %1418, float 2.500000e-01, float %1411)
  %1420 = getelementptr inbounds float, ptr %1417, i64 1
  %1421 = load float, ptr %1420, align 4, !tbaa !115
  %1422 = tail call float @llvm.fmuladd.f32(float %1421, float 2.500000e-01, float %1412)
  %1423 = getelementptr inbounds float, ptr %1417, i64 2
  %1424 = load float, ptr %1423, align 4, !tbaa !115
  %1425 = tail call float @llvm.fmuladd.f32(float %1424, float 2.500000e-01, float %1413)
  %1426 = trunc i64 %1090 to i32
  %1427 = add i32 %1083, %1426
  %1428 = sext i32 %1427 to i64
  %1429 = getelementptr inbounds %struct.NewVert, ptr %1028, i64 %1428, i32 1
  store float %1419, ptr %1429, align 4, !tbaa !115
  %1430 = getelementptr inbounds float, ptr %1429, i64 1
  store float %1422, ptr %1430, align 4, !tbaa !115
  %1431 = getelementptr inbounds float, ptr %1429, i64 2
  store float %1425, ptr %1431, align 4, !tbaa !115
  %1432 = add nuw nsw i64 %1089, 1
  %1433 = icmp eq i64 %1432, %723
  br i1 %1433, label %1434, label %1088, !llvm.loop !270

1434:                                             ; preds = %1373
  %1435 = add nuw nsw i32 %1040, 1
  %1436 = icmp eq i32 %1435, %722
  br i1 %1436, label %1437, label %1039, !llvm.loop !271

1437:                                             ; preds = %1434, %926
  %1438 = add nuw nsw i32 %927, 1
  %1439 = icmp eq i32 %1438, %4
  br i1 %1439, label %1440, label %926, !llvm.loop !272

1440:                                             ; preds = %1437, %717
  tail call fastcc void @vmesh_copy_equiv_verts(ptr noundef %13)
  %1441 = icmp slt i32 %4, 3
  br i1 %1441, label %1476, label %1442

1442:                                             ; preds = %1440
  %1443 = add nsw i32 %4, -3
  %1444 = icmp ult i32 %1443, 4
  br i1 %1444, label %1472, label %1445

1445:                                             ; preds = %1442
  %1446 = sitofp i32 %4 to double
  %1447 = fdiv double 0x400921FB54442D18, %1446
  %1448 = tail call double @cos(double noundef %1447) #13
  %1449 = fmul double %1448, %1448
  %1450 = fmul double %1449, %1449
  %1451 = fmul double %1449, %1450
  %1452 = fmul double %1450, -1.440000e+02
  %1453 = tail call double @llvm.fmuladd.f64(double %1451, double 6.400000e+01, double %1452)
  %1454 = tail call double @llvm.fmuladd.f64(double %1449, double 1.350000e+02, double %1453)
  %1455 = fadd double %1454, -2.700000e+01
  %1456 = tail call double @sqrt(double noundef %1455) #13
  %1457 = fmul double %1448, 9.000000e+00
  %1458 = tail call double @llvm.fmuladd.f64(double %1456, double 0x3FFBB67AE8584CAA, double %1457)
  %1459 = tail call double @pow(double noundef %1458, double noundef 0x3FD5555555555555) #13
  %1460 = tail call double @llvm.fmuladd.f64(double %1449, double 1.200000e+01, double -9.000000e+00)
  %1461 = fmul double %1460, 0xBFCD955AA4F104A0
  %1462 = fdiv double %1461, %1459
  %1463 = tail call double @llvm.fmuladd.f64(double %1459, double 0x3FDEC49B0C1853F1, double %1462)
  %1464 = fmul double %1449, 2.000000e+00
  %1465 = tail call double @llvm.fmuladd.f64(double %1448, double %1463, double %1464)
  %1466 = fadd double %1465, -1.000000e+00
  %1467 = fmul double %1463, %1463
  %1468 = tail call double @llvm.fmuladd.f64(double %1448, double %1463, double 1.000000e+00)
  %1469 = fmul double %1467, %1468
  %1470 = fdiv double %1466, %1469
  %1471 = fptrunc double %1470 to float
  br label %1476

1472:                                             ; preds = %1442
  %1473 = zext nneg i32 %1443 to i64
  %1474 = getelementptr inbounds [4 x float], ptr @switch.table.cubic_subdiv, i64 0, i64 %1473
  %1475 = load float, ptr %1474, align 4
  br label %1476

1476:                                             ; preds = %1472, %1440, %1445
  %1477 = phi float [ 0.000000e+00, %1440 ], [ %1471, %1445 ], [ %1475, %1472 ]
  %1478 = fneg float %1477
  %1479 = icmp sgt i32 %4, 0
  br i1 %1479, label %1480, label %1541

1480:                                             ; preds = %1476
  %1481 = add nsw i32 %6, -1
  %1482 = load i32, ptr %15, align 4, !tbaa !94
  %1483 = sdiv i32 %1482, 2
  %1484 = add nsw i32 %1483, 1
  %1485 = add nsw i32 %1482, 1
  %1486 = load ptr, ptr %13, align 8, !tbaa !149
  %1487 = mul nsw i32 %1485, %6
  %1488 = add i32 %1487, %1481
  %1489 = mul nsw i32 %1485, %1481
  %1490 = sext i32 %1485 to i64
  %1491 = sext i32 %1484 to i64
  %1492 = sext i32 %1489 to i64
  %1493 = sext i32 %1481 to i64
  %1494 = sext i32 %17 to i64
  %1495 = zext nneg i32 %4 to i64
  br label %1496

1496:                                             ; preds = %1480, %1496
  %1497 = phi i64 [ 0, %1480 ], [ %1539, %1496 ]
  %1498 = phi float [ 0.000000e+00, %1480 ], [ %1532, %1496 ]
  %1499 = phi float [ 0.000000e+00, %1480 ], [ %1535, %1496 ]
  %1500 = phi float [ 0.000000e+00, %1480 ], [ %1538, %1496 ]
  %1501 = phi float [ 0.000000e+00, %1480 ], [ %1511, %1496 ]
  %1502 = phi float [ 0.000000e+00, %1480 ], [ %1514, %1496 ]
  %1503 = phi float [ 0.000000e+00, %1480 ], [ %1517, %1496 ]
  %1504 = mul nsw i64 %1497, %1490
  %1505 = mul nsw i64 %1504, %1491
  %1506 = trunc i64 %1505 to i32
  %1507 = add i32 %1488, %1506
  %1508 = sext i32 %1507 to i64
  %1509 = getelementptr inbounds %struct.NewVert, ptr %1486, i64 %1508, i32 1
  %1510 = load float, ptr %1509, align 4, !tbaa !115
  %1511 = fadd float %1501, %1510
  %1512 = getelementptr inbounds float, ptr %1509, i64 1
  %1513 = load float, ptr %1512, align 4, !tbaa !115
  %1514 = fadd float %1502, %1513
  %1515 = getelementptr inbounds float, ptr %1509, i64 2
  %1516 = load float, ptr %1515, align 4, !tbaa !115
  %1517 = fadd float %1503, %1516
  %1518 = add nsw i64 %1505, %1492
  %1519 = add nsw i64 %1518, %1493
  %1520 = getelementptr inbounds %struct.NewVert, ptr %1486, i64 %1519, i32 1
  %1521 = load float, ptr %1520, align 4, !tbaa !115
  %1522 = fadd float %1498, %1521
  %1523 = getelementptr inbounds float, ptr %1520, i64 1
  %1524 = load float, ptr %1523, align 4, !tbaa !115
  %1525 = fadd float %1499, %1524
  %1526 = getelementptr inbounds float, ptr %1520, i64 2
  %1527 = load float, ptr %1526, align 4, !tbaa !115
  %1528 = fadd float %1500, %1527
  %1529 = add nsw i64 %1518, %1494
  %1530 = getelementptr inbounds %struct.NewVert, ptr %1486, i64 %1529, i32 1
  %1531 = load float, ptr %1530, align 4, !tbaa !115
  %1532 = fadd float %1522, %1531
  %1533 = getelementptr inbounds float, ptr %1530, i64 1
  %1534 = load float, ptr %1533, align 4, !tbaa !115
  %1535 = fadd float %1525, %1534
  %1536 = getelementptr inbounds float, ptr %1530, i64 2
  %1537 = load float, ptr %1536, align 4, !tbaa !115
  %1538 = fadd float %1528, %1537
  %1539 = add nuw nsw i64 %1497, 1
  %1540 = icmp eq i64 %1539, %1495
  br i1 %1540, label %1541, label %1496, !llvm.loop !273

1541:                                             ; preds = %1496, %1476
  %1542 = phi float [ 0.000000e+00, %1476 ], [ %1517, %1496 ]
  %1543 = phi float [ 0.000000e+00, %1476 ], [ %1514, %1496 ]
  %1544 = phi float [ 0.000000e+00, %1476 ], [ %1511, %1496 ]
  %1545 = phi float [ 0.000000e+00, %1476 ], [ %1538, %1496 ]
  %1546 = phi float [ 0.000000e+00, %1476 ], [ %1535, %1496 ]
  %1547 = phi float [ 0.000000e+00, %1476 ], [ %1532, %1496 ]
  %1548 = sitofp i32 %4 to float
  %1549 = fdiv float 1.000000e+00, %1548
  %1550 = fmul float %1549, %1544
  %1551 = fmul float %1549, %1543
  %1552 = fmul float %1549, %1542
  %1553 = fmul float %1548, 2.000000e+00
  %1554 = fdiv float %1478, %1553
  %1555 = tail call float @llvm.fmuladd.f32(float %1547, float %1554, float %1550)
  %1556 = tail call float @llvm.fmuladd.f32(float %1546, float %1554, float %1551)
  %1557 = tail call float @llvm.fmuladd.f32(float %1545, float %1554, float %1552)
  %1558 = load i32, ptr %5, align 4, !tbaa !94
  %1559 = load ptr, ptr %1, align 8, !tbaa !149
  %1560 = add i32 %1558, 2
  %1561 = mul i32 %1560, %7
  %1562 = sext i32 %1561 to i64
  %1563 = getelementptr inbounds %struct.NewVert, ptr %1559, i64 %1562, i32 1
  %1564 = load float, ptr %1563, align 4, !tbaa !115
  %1565 = tail call float @llvm.fmuladd.f32(float %1564, float %1477, float %1555)
  %1566 = getelementptr inbounds float, ptr %1563, i64 1
  %1567 = load float, ptr %1566, align 4, !tbaa !115
  %1568 = tail call float @llvm.fmuladd.f32(float %1567, float %1477, float %1556)
  %1569 = getelementptr inbounds float, ptr %1563, i64 2
  %1570 = load float, ptr %1569, align 4, !tbaa !115
  %1571 = tail call float @llvm.fmuladd.f32(float %1570, float %1477, float %1557)
  %1572 = icmp sgt i32 %4, 0
  br i1 %1572, label %1573, label %1580

1573:                                             ; preds = %1541
  %1574 = load i32, ptr %15, align 4, !tbaa !94
  %1575 = sdiv i32 %1574, 2
  %1576 = add nsw i32 %1575, 1
  %1577 = add nsw i32 %1574, 1
  %1578 = load ptr, ptr %13, align 8, !tbaa !149
  %1579 = zext nneg i32 %4 to i64
  br label %1591

1580:                                             ; preds = %1591, %1541
  %1581 = icmp sgt i32 %4, 0
  br i1 %1581, label %1582, label %1684

1582:                                             ; preds = %1580
  %1583 = icmp slt i32 %6, 0
  %1584 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 5
  %1585 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2, i32 2
  %1586 = sext i32 %8 to i64
  %1587 = sext i32 %6 to i64
  %1588 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %1589 = or disjoint i32 %1588, 1
  %1590 = zext nneg i32 %1589 to i64
  br label %1606

1591:                                             ; preds = %1573, %1591
  %1592 = phi i64 [ 0, %1573 ], [ %1602, %1591 ]
  %1593 = trunc i64 %1592 to i32
  %1594 = mul i32 %1576, %1593
  %1595 = add i32 %1594, %6
  %1596 = mul i32 %1595, %1577
  %1597 = add i32 %1596, %6
  %1598 = sext i32 %1597 to i64
  %1599 = getelementptr inbounds %struct.NewVert, ptr %1578, i64 %1598, i32 1
  store float %1565, ptr %1599, align 4, !tbaa !115
  %1600 = getelementptr inbounds float, ptr %1599, i64 1
  store float %1568, ptr %1600, align 4, !tbaa !115
  %1601 = getelementptr inbounds float, ptr %1599, i64 2
  store float %1571, ptr %1601, align 4, !tbaa !115
  %1602 = add nuw nsw i64 %1592, 1
  %1603 = icmp eq i64 %1602, %1579
  br i1 %1603, label %1580, label %1591, !llvm.loop !274

1604:                                             ; preds = %1681, %1606
  %1605 = icmp eq i32 %1610, %4
  br i1 %1605, label %1684, label %1606, !llvm.loop !275

1606:                                             ; preds = %1582, %1604
  %1607 = phi ptr [ %16, %1582 ], [ %1609, %1604 ]
  %1608 = phi i32 [ 0, %1582 ], [ %1610, %1604 ]
  %1609 = load ptr, ptr %1607, align 8, !tbaa !113
  %1610 = add nuw nsw i32 %1608, 1
  br i1 %1583, label %1604, label %1611

1611:                                             ; preds = %1606
  %1612 = icmp eq i32 %1610, %4
  %1613 = select i1 %1612, i32 0, i32 %1610
  %1614 = load i32, ptr %1584, align 8, !tbaa !43
  %1615 = icmp eq i32 %1614, 1
  %1616 = icmp eq i32 %1614, %8
  %1617 = getelementptr inbounds %struct.BoundVert, ptr %1609, i64 0, i32 7, i32 8
  %1618 = getelementptr inbounds %struct.BoundVert, ptr %1609, i64 0, i32 7, i32 7
  %1619 = getelementptr inbounds %struct.BoundVert, ptr %1609, i64 0, i32 7, i32 3
  %1620 = getelementptr inbounds %struct.BoundVert, ptr %1609, i64 0, i32 7, i32 3, i64 1
  %1621 = getelementptr inbounds %struct.BoundVert, ptr %1609, i64 0, i32 7, i32 3, i64 2
  %1622 = getelementptr inbounds %struct.BoundVert, ptr %1609, i64 0, i32 7, i32 1
  %1623 = getelementptr inbounds %struct.BoundVert, ptr %1609, i64 0, i32 7, i32 1, i64 1
  %1624 = getelementptr inbounds %struct.BoundVert, ptr %1609, i64 0, i32 7, i32 1, i64 2
  %1625 = load i32, ptr %15, align 4, !tbaa !94
  %1626 = sdiv i32 %1625, 2
  %1627 = add nsw i32 %1626, 1
  %1628 = add nsw i32 %1625, 1
  %1629 = load ptr, ptr %13, align 8, !tbaa !149
  %1630 = mul i32 %1627, %1628
  %1631 = mul i32 %1630, %1608
  %1632 = mul i32 %1627, %1613
  %1633 = sext i32 %1631 to i64
  br label %1634

1634:                                             ; preds = %1611, %1681
  %1635 = phi i64 [ 0, %1611 ], [ %1682, %1681 ]
  br i1 %1615, label %1636, label %1641

1636:                                             ; preds = %1634
  %1637 = icmp eq i64 %1635, 0
  %1638 = select i1 %1637, ptr %1624, ptr %1621
  %1639 = select i1 %1637, ptr %1623, ptr %1620
  %1640 = select i1 %1637, ptr %1622, ptr %1619
  br label %1658

1641:                                             ; preds = %1634
  br i1 %1616, label %1642, label %1648

1642:                                             ; preds = %1641
  %1643 = load ptr, ptr %1618, align 8, !tbaa !161
  %1644 = mul nuw nsw i64 %1635, 3
  %1645 = getelementptr inbounds float, ptr %1643, i64 %1644
  %1646 = getelementptr inbounds float, ptr %1645, i64 1
  %1647 = getelementptr inbounds float, ptr %1645, i64 2
  br label %1658

1648:                                             ; preds = %1641
  %1649 = load i32, ptr %1585, align 8, !tbaa !59
  %1650 = sdiv i32 %1649, %8
  %1651 = load ptr, ptr %1617, align 8, !tbaa !162
  %1652 = mul nuw nsw i64 %1635, 3
  %1653 = sext i32 %1650 to i64
  %1654 = mul nsw i64 %1652, %1653
  %1655 = getelementptr inbounds float, ptr %1651, i64 %1654
  %1656 = getelementptr inbounds float, ptr %1655, i64 1
  %1657 = getelementptr inbounds float, ptr %1655, i64 2
  br label %1658

1658:                                             ; preds = %1636, %1642, %1648
  %1659 = phi ptr [ %1647, %1642 ], [ %1657, %1648 ], [ %1638, %1636 ]
  %1660 = phi ptr [ %1646, %1642 ], [ %1656, %1648 ], [ %1639, %1636 ]
  %1661 = phi ptr [ %1645, %1642 ], [ %1655, %1648 ], [ %1640, %1636 ]
  %1662 = load float, ptr %1661, align 4, !tbaa !115
  %1663 = load float, ptr %1660, align 4, !tbaa !115
  %1664 = load float, ptr %1659, align 4, !tbaa !115
  %1665 = add nsw i64 %1635, %1633
  %1666 = getelementptr inbounds %struct.NewVert, ptr %1629, i64 %1665, i32 1
  store float %1662, ptr %1666, align 4, !tbaa !115
  %1667 = getelementptr inbounds float, ptr %1666, i64 1
  store float %1663, ptr %1667, align 4, !tbaa !115
  %1668 = getelementptr inbounds float, ptr %1666, i64 2
  store float %1664, ptr %1668, align 4, !tbaa !115
  %1669 = icmp sge i64 %1635, %1587
  %1670 = icmp slt i64 %1635, %1586
  %1671 = and i1 %1669, %1670
  br i1 %1671, label %1672, label %1681

1672:                                             ; preds = %1658
  %1673 = trunc i64 %1635 to i32
  %1674 = sub i32 %8, %1673
  %1675 = add i32 %1632, %1674
  %1676 = mul i32 %1675, %1628
  %1677 = sext i32 %1676 to i64
  %1678 = getelementptr inbounds %struct.NewVert, ptr %1629, i64 %1677, i32 1
  store float %1662, ptr %1678, align 4, !tbaa !115
  %1679 = getelementptr inbounds float, ptr %1678, i64 1
  store float %1663, ptr %1679, align 4, !tbaa !115
  %1680 = getelementptr inbounds float, ptr %1678, i64 2
  store float %1664, ptr %1680, align 4, !tbaa !115
  br label %1681

1681:                                             ; preds = %1658, %1672
  %1682 = add nuw nsw i64 %1635, 1
  %1683 = icmp eq i64 %1682, %1590
  br i1 %1683, label %1604, label %1634, !llvm.loop !276

1684:                                             ; preds = %1604, %1580
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @interp_vmesh(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [4 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13
  %6 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !148
  %8 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !94
  %10 = sdiv i32 %2, 2
  %11 = srem i32 %2, 2
  %12 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.VMesh, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !150
  %16 = tail call ptr @BLI_memarena_alloc(ptr noundef %13, i64 noundef 32) #13
  %17 = getelementptr inbounds %struct.VMesh, ptr %16, i64 0, i32 2
  store i32 %7, ptr %17, align 8, !tbaa !148
  %18 = getelementptr inbounds %struct.VMesh, ptr %16, i64 0, i32 3
  store i32 %2, ptr %18, align 4, !tbaa !94
  %19 = getelementptr inbounds %struct.VMesh, ptr %16, i64 0, i32 1
  store ptr %15, ptr %19, align 8, !tbaa !150
  %20 = add nsw i32 %10, 1
  %21 = add nsw i32 %2, 1
  %22 = mul i32 %20, %21
  %23 = mul i32 %22, %7
  %24 = sext i32 %23 to i64
  %25 = mul nsw i64 %24, 24
  %26 = tail call ptr @BLI_memarena_alloc(ptr noundef %13, i64 noundef %25) #13
  store ptr %26, ptr %16, align 8, !tbaa !149
  %27 = getelementptr inbounds %struct.VMesh, ptr %16, i64 0, i32 4
  store i32 2, ptr %27, align 8, !tbaa !160
  %28 = add nsw i32 %9, 1
  %29 = sext i32 %28 to i64
  %30 = shl nsw i64 %29, 2
  %31 = alloca i8, i64 %30, align 16
  %32 = alloca i8, i64 %30, align 16
  %33 = sext i32 %21 to i64
  %34 = shl nsw i64 %33, 2
  %35 = alloca i8, i64 %34, align 16
  %36 = alloca i8, i64 %34, align 16
  %37 = add nsw i32 %7, -1
  %38 = load i32, ptr %8, align 4, !tbaa !94
  store float 0.000000e+00, ptr %31, align 16, !tbaa !115
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %81

40:                                               ; preds = %3
  %41 = zext nneg i32 %38 to i64
  br label %42

42:                                               ; preds = %42, %40
  %43 = phi i64 [ 0, %40 ], [ %56, %42 ]
  %44 = phi float [ 0.000000e+00, %40 ], [ %78, %42 ]
  %45 = load i32, ptr %8, align 4, !tbaa !94
  %46 = sdiv i32 %45, 2
  %47 = add nsw i32 %46, 1
  %48 = add nsw i32 %45, 1
  %49 = load ptr, ptr %1, align 8, !tbaa !149
  %50 = mul nsw i32 %48, %37
  %51 = mul nsw i32 %50, %47
  %52 = trunc i64 %43 to i32
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.NewVert, ptr %49, i64 %54, i32 1
  %56 = add nuw nsw i64 %43, 1
  %57 = trunc i64 %56 to i32
  %58 = add nsw i32 %51, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.NewVert, ptr %49, i64 %59, i32 1
  %61 = load float, ptr %60, align 4, !tbaa !115
  %62 = load float, ptr %55, align 4, !tbaa !115
  %63 = fsub float %61, %62
  %64 = getelementptr inbounds float, ptr %60, i64 1
  %65 = load float, ptr %64, align 4, !tbaa !115
  %66 = getelementptr inbounds float, ptr %55, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !115
  %68 = fsub float %65, %67
  %69 = getelementptr inbounds float, ptr %60, i64 2
  %70 = load float, ptr %69, align 4, !tbaa !115
  %71 = getelementptr inbounds float, ptr %55, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !115
  %73 = fsub float %70, %72
  %74 = fmul float %68, %68
  %75 = tail call float @llvm.fmuladd.f32(float %63, float %63, float %74)
  %76 = tail call float @llvm.fmuladd.f32(float %73, float %73, float %75)
  %77 = tail call float @sqrtf(float noundef %76) #13
  %78 = fadd float %44, %77
  %79 = getelementptr inbounds float, ptr %31, i64 %56
  store float %78, ptr %79, align 4, !tbaa !115
  %80 = icmp eq i64 %56, %41
  br i1 %80, label %81, label %42, !llvm.loop !277

81:                                               ; preds = %42, %3
  %82 = phi float [ 0.000000e+00, %3 ], [ %78, %42 ]
  %83 = fcmp ule float %82, 0x3EB0C6F7A0000000
  %84 = icmp slt i32 %38, 1
  %85 = or i1 %84, %83
  br i1 %85, label %96, label %86

86:                                               ; preds = %81
  %87 = add i32 %38, 1
  %88 = zext i32 %87 to i64
  br label %89

89:                                               ; preds = %89, %86
  %90 = phi i64 [ 1, %86 ], [ %94, %89 ]
  %91 = getelementptr inbounds float, ptr %31, i64 %90
  %92 = load float, ptr %91, align 4, !tbaa !115
  %93 = fdiv float %92, %82
  store float %93, ptr %91, align 4, !tbaa !115
  %94 = add nuw nsw i64 %90, 1
  %95 = icmp eq i64 %94, %88
  br i1 %95, label %96, label %89, !llvm.loop !278

96:                                               ; preds = %89, %81
  %97 = load ptr, ptr %14, align 8, !tbaa !150
  %98 = getelementptr inbounds %struct.BoundVert, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !176
  store float 0.000000e+00, ptr %36, align 16, !tbaa !115
  %100 = icmp sgt i32 %2, 0
  br i1 %100, label %101, label %170

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.BoundVert, ptr %99, i64 0, i32 2, i32 1, i64 2
  %103 = load float, ptr %102, align 4, !tbaa !115
  %104 = getelementptr inbounds %struct.BoundVert, ptr %99, i64 0, i32 2, i32 1, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !115
  %106 = getelementptr inbounds %struct.BoundVert, ptr %99, i64 0, i32 2, i32 1
  %107 = zext nneg i32 %2 to i64
  %108 = load float, ptr %106, align 4, !tbaa !115
  %109 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 5
  %110 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2, i32 2
  %111 = getelementptr inbounds %struct.BoundVert, ptr %99, i64 0, i32 7, i32 8
  %112 = getelementptr inbounds %struct.BoundVert, ptr %99, i64 0, i32 7, i32 7
  %113 = getelementptr inbounds %struct.BoundVert, ptr %99, i64 0, i32 7, i32 3
  %114 = getelementptr inbounds %struct.BoundVert, ptr %99, i64 0, i32 7, i32 3, i64 1
  %115 = getelementptr inbounds %struct.BoundVert, ptr %99, i64 0, i32 7, i32 3, i64 2
  %116 = getelementptr inbounds %struct.BoundVert, ptr %99, i64 0, i32 7, i32 1
  %117 = getelementptr inbounds %struct.BoundVert, ptr %99, i64 0, i32 7, i32 1, i64 1
  %118 = getelementptr inbounds %struct.BoundVert, ptr %99, i64 0, i32 7, i32 1, i64 2
  br label %119

119:                                              ; preds = %153, %101
  %120 = phi i64 [ 0, %101 ], [ %125, %153 ]
  %121 = phi float [ 0.000000e+00, %101 ], [ %167, %153 ]
  %122 = phi float [ %108, %101 ], [ %159, %153 ]
  %123 = phi float [ %105, %101 ], [ %157, %153 ]
  %124 = phi float [ %103, %101 ], [ %158, %153 ]
  %125 = add nuw nsw i64 %120, 1
  %126 = trunc i64 %125 to i32
  %127 = load i32, ptr %109, align 8, !tbaa !43
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %134

129:                                              ; preds = %119
  %130 = icmp eq i32 %126, 0
  %131 = select i1 %130, ptr %116, ptr %113
  %132 = select i1 %130, ptr %118, ptr %115
  %133 = select i1 %130, ptr %117, ptr %114
  br label %153

134:                                              ; preds = %119
  %135 = icmp eq i32 %127, %2
  br i1 %135, label %136, label %143

136:                                              ; preds = %134
  %137 = load ptr, ptr %112, align 8, !tbaa !161
  %138 = mul i64 %125, 12884901888
  %139 = ashr exact i64 %138, 32
  %140 = getelementptr inbounds float, ptr %137, i64 %139
  %141 = getelementptr inbounds float, ptr %140, i64 1
  %142 = getelementptr inbounds float, ptr %140, i64 2
  br label %153

143:                                              ; preds = %134
  %144 = load i32, ptr %110, align 8, !tbaa !59
  %145 = sdiv i32 %144, %2
  %146 = load ptr, ptr %111, align 8, !tbaa !162
  %147 = mul nsw i32 %126, 3
  %148 = mul nsw i32 %147, %145
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds float, ptr %146, i64 %149
  %151 = getelementptr inbounds float, ptr %150, i64 1
  %152 = getelementptr inbounds float, ptr %150, i64 2
  br label %153

153:                                              ; preds = %129, %136, %143
  %154 = phi ptr [ %140, %136 ], [ %150, %143 ], [ %131, %129 ]
  %155 = phi ptr [ %142, %136 ], [ %152, %143 ], [ %132, %129 ]
  %156 = phi ptr [ %141, %136 ], [ %151, %143 ], [ %133, %129 ]
  %157 = load float, ptr %156, align 4, !tbaa !115
  %158 = load float, ptr %155, align 4, !tbaa !115
  %159 = load float, ptr %154, align 4, !tbaa !115
  %160 = fsub float %159, %122
  %161 = fsub float %157, %123
  %162 = fsub float %158, %124
  %163 = fmul float %161, %161
  %164 = tail call float @llvm.fmuladd.f32(float %160, float %160, float %163)
  %165 = tail call float @llvm.fmuladd.f32(float %162, float %162, float %164)
  %166 = tail call float @sqrtf(float noundef %165) #13
  %167 = fadd float %121, %166
  %168 = getelementptr inbounds float, ptr %36, i64 %125
  store float %167, ptr %168, align 4, !tbaa !115
  %169 = icmp eq i64 %125, %107
  br i1 %169, label %170, label %119, !llvm.loop !279

170:                                              ; preds = %153, %96
  %171 = phi float [ 0.000000e+00, %96 ], [ %167, %153 ]
  %172 = fcmp ule float %171, 0x3EB0C6F7A0000000
  %173 = icmp slt i32 %2, 1
  %174 = or i1 %173, %172
  br i1 %174, label %184, label %175

175:                                              ; preds = %170
  %176 = zext i32 %21 to i64
  br label %177

177:                                              ; preds = %177, %175
  %178 = phi i64 [ 1, %175 ], [ %182, %177 ]
  %179 = getelementptr inbounds float, ptr %36, i64 %178
  %180 = load float, ptr %179, align 4, !tbaa !115
  %181 = fdiv float %180, %171
  store float %181, ptr %179, align 4, !tbaa !115
  %182 = add nuw nsw i64 %178, 1
  %183 = icmp eq i64 %182, %176
  br i1 %183, label %184, label %177, !llvm.loop !280

184:                                              ; preds = %177, %170
  %185 = icmp sgt i32 %7, 0
  br i1 %185, label %186, label %727

186:                                              ; preds = %184
  %187 = zext nneg i32 %2 to i64
  %188 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 5
  %189 = getelementptr inbounds %struct.BevelParams, ptr %0, i64 0, i32 2, i32 2
  %190 = zext i32 %21 to i64
  %191 = add nsw i32 %10, -1
  %192 = add nsw i32 %191, %11
  %193 = icmp slt i32 %192, 0
  %194 = icmp slt i32 %2, -1
  %195 = add nsw i32 %9, -1
  %196 = add nsw i32 %9, -1
  %197 = getelementptr inbounds float, ptr %4, i64 1
  %198 = getelementptr inbounds float, ptr %4, i64 2
  %199 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 1
  %200 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 1, i64 1
  %201 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 1, i64 2
  %202 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 2
  %203 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 2, i64 1
  %204 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 2, i64 2
  %205 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 3
  %206 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 3, i64 1
  %207 = getelementptr inbounds [4 x [3 x float]], ptr %4, i64 0, i64 3, i64 2
  %208 = getelementptr inbounds float, ptr %5, i64 1
  %209 = getelementptr inbounds float, ptr %5, i64 2
  %210 = getelementptr inbounds float, ptr %5, i64 1
  %211 = getelementptr inbounds float, ptr %5, i64 2
  %212 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %213 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %214 = add nsw i32 %10, 1
  %215 = sext i32 %2 to i64
  %216 = add nsw i32 %11, %10
  %217 = zext i32 %216 to i64
  %218 = zext i32 %214 to i64
  %219 = zext nneg i32 %212 to i64
  %220 = zext nneg i32 %213 to i64
  br label %221

221:                                              ; preds = %186, %723
  %222 = phi ptr [ %97, %186 ], [ %724, %723 ]
  %223 = phi i32 [ 0, %186 ], [ %725, %723 ]
  %224 = load i32, ptr %8, align 4, !tbaa !94
  store float 0.000000e+00, ptr %32, align 16, !tbaa !115
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %226, label %267

226:                                              ; preds = %221
  %227 = zext nneg i32 %224 to i64
  br label %228

228:                                              ; preds = %228, %226
  %229 = phi i64 [ 0, %226 ], [ %242, %228 ]
  %230 = phi float [ 0.000000e+00, %226 ], [ %264, %228 ]
  %231 = load i32, ptr %8, align 4, !tbaa !94
  %232 = sdiv i32 %231, 2
  %233 = add nsw i32 %232, 1
  %234 = add nsw i32 %231, 1
  %235 = load ptr, ptr %1, align 8, !tbaa !149
  %236 = mul nsw i32 %234, %223
  %237 = mul nsw i32 %236, %233
  %238 = trunc i64 %229 to i32
  %239 = add nsw i32 %237, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.NewVert, ptr %235, i64 %240, i32 1
  %242 = add nuw nsw i64 %229, 1
  %243 = trunc i64 %242 to i32
  %244 = add nsw i32 %237, %243
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.NewVert, ptr %235, i64 %245, i32 1
  %247 = load float, ptr %246, align 4, !tbaa !115
  %248 = load float, ptr %241, align 4, !tbaa !115
  %249 = fsub float %247, %248
  %250 = getelementptr inbounds float, ptr %246, i64 1
  %251 = load float, ptr %250, align 4, !tbaa !115
  %252 = getelementptr inbounds float, ptr %241, i64 1
  %253 = load float, ptr %252, align 4, !tbaa !115
  %254 = fsub float %251, %253
  %255 = getelementptr inbounds float, ptr %246, i64 2
  %256 = load float, ptr %255, align 4, !tbaa !115
  %257 = getelementptr inbounds float, ptr %241, i64 2
  %258 = load float, ptr %257, align 4, !tbaa !115
  %259 = fsub float %256, %258
  %260 = fmul float %254, %254
  %261 = call float @llvm.fmuladd.f32(float %249, float %249, float %260)
  %262 = call float @llvm.fmuladd.f32(float %259, float %259, float %261)
  %263 = call float @sqrtf(float noundef %262) #13
  %264 = fadd float %230, %263
  %265 = getelementptr inbounds float, ptr %32, i64 %242
  store float %264, ptr %265, align 4, !tbaa !115
  %266 = icmp eq i64 %242, %227
  br i1 %266, label %267, label %228, !llvm.loop !277

267:                                              ; preds = %228, %221
  %268 = phi float [ 0.000000e+00, %221 ], [ %264, %228 ]
  %269 = fcmp ule float %268, 0x3EB0C6F7A0000000
  %270 = icmp slt i32 %224, 1
  %271 = or i1 %270, %269
  br i1 %271, label %282, label %272

272:                                              ; preds = %267
  %273 = add i32 %224, 1
  %274 = zext i32 %273 to i64
  br label %275

275:                                              ; preds = %275, %272
  %276 = phi i64 [ 1, %272 ], [ %280, %275 ]
  %277 = getelementptr inbounds float, ptr %32, i64 %276
  %278 = load float, ptr %277, align 4, !tbaa !115
  %279 = fdiv float %278, %268
  store float %279, ptr %277, align 4, !tbaa !115
  %280 = add nuw nsw i64 %276, 1
  %281 = icmp eq i64 %280, %274
  br i1 %281, label %282, label %275, !llvm.loop !278

282:                                              ; preds = %275, %267
  store float 0.000000e+00, ptr %35, align 16, !tbaa !115
  br i1 %100, label %283, label %349

283:                                              ; preds = %282
  %284 = getelementptr inbounds %struct.BoundVert, ptr %222, i64 0, i32 2, i32 1, i64 2
  %285 = load float, ptr %284, align 4, !tbaa !115
  %286 = getelementptr inbounds %struct.BoundVert, ptr %222, i64 0, i32 2, i32 1, i64 1
  %287 = load float, ptr %286, align 4, !tbaa !115
  %288 = getelementptr inbounds %struct.BoundVert, ptr %222, i64 0, i32 2, i32 1
  %289 = load float, ptr %288, align 4, !tbaa !115
  %290 = getelementptr inbounds %struct.BoundVert, ptr %222, i64 0, i32 7, i32 8
  %291 = getelementptr inbounds %struct.BoundVert, ptr %222, i64 0, i32 7, i32 7
  %292 = getelementptr inbounds %struct.BoundVert, ptr %222, i64 0, i32 7, i32 3
  %293 = getelementptr inbounds %struct.BoundVert, ptr %222, i64 0, i32 7, i32 3, i64 1
  %294 = getelementptr inbounds %struct.BoundVert, ptr %222, i64 0, i32 7, i32 3, i64 2
  %295 = getelementptr inbounds %struct.BoundVert, ptr %222, i64 0, i32 7, i32 1
  %296 = getelementptr inbounds %struct.BoundVert, ptr %222, i64 0, i32 7, i32 1, i64 1
  %297 = getelementptr inbounds %struct.BoundVert, ptr %222, i64 0, i32 7, i32 1, i64 2
  br label %298

298:                                              ; preds = %332, %283
  %299 = phi i64 [ 0, %283 ], [ %304, %332 ]
  %300 = phi float [ 0.000000e+00, %283 ], [ %346, %332 ]
  %301 = phi float [ %289, %283 ], [ %338, %332 ]
  %302 = phi float [ %287, %283 ], [ %336, %332 ]
  %303 = phi float [ %285, %283 ], [ %337, %332 ]
  %304 = add nuw nsw i64 %299, 1
  %305 = trunc i64 %304 to i32
  %306 = load i32, ptr %188, align 8, !tbaa !43
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %313

308:                                              ; preds = %298
  %309 = icmp eq i32 %305, 0
  %310 = select i1 %309, ptr %295, ptr %292
  %311 = select i1 %309, ptr %297, ptr %294
  %312 = select i1 %309, ptr %296, ptr %293
  br label %332

313:                                              ; preds = %298
  %314 = icmp eq i32 %306, %2
  br i1 %314, label %315, label %322

315:                                              ; preds = %313
  %316 = load ptr, ptr %291, align 8, !tbaa !161
  %317 = mul i64 %304, 12884901888
  %318 = ashr exact i64 %317, 32
  %319 = getelementptr inbounds float, ptr %316, i64 %318
  %320 = getelementptr inbounds float, ptr %319, i64 1
  %321 = getelementptr inbounds float, ptr %319, i64 2
  br label %332

322:                                              ; preds = %313
  %323 = load i32, ptr %189, align 8, !tbaa !59
  %324 = sdiv i32 %323, %2
  %325 = load ptr, ptr %290, align 8, !tbaa !162
  %326 = mul nsw i32 %305, 3
  %327 = mul nsw i32 %326, %324
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds float, ptr %325, i64 %328
  %330 = getelementptr inbounds float, ptr %329, i64 1
  %331 = getelementptr inbounds float, ptr %329, i64 2
  br label %332

332:                                              ; preds = %308, %315, %322
  %333 = phi ptr [ %319, %315 ], [ %329, %322 ], [ %310, %308 ]
  %334 = phi ptr [ %321, %315 ], [ %331, %322 ], [ %311, %308 ]
  %335 = phi ptr [ %320, %315 ], [ %330, %322 ], [ %312, %308 ]
  %336 = load float, ptr %335, align 4, !tbaa !115
  %337 = load float, ptr %334, align 4, !tbaa !115
  %338 = load float, ptr %333, align 4, !tbaa !115
  %339 = fsub float %338, %301
  %340 = fsub float %336, %302
  %341 = fsub float %337, %303
  %342 = fmul float %340, %340
  %343 = call float @llvm.fmuladd.f32(float %339, float %339, float %342)
  %344 = call float @llvm.fmuladd.f32(float %341, float %341, float %343)
  %345 = call float @sqrtf(float noundef %344) #13
  %346 = fadd float %300, %345
  %347 = getelementptr inbounds float, ptr %35, i64 %304
  store float %346, ptr %347, align 4, !tbaa !115
  %348 = icmp eq i64 %304, %187
  br i1 %348, label %349, label %298, !llvm.loop !279

349:                                              ; preds = %332, %282
  %350 = phi float [ 0.000000e+00, %282 ], [ %346, %332 ]
  %351 = fcmp ule float %350, 0x3EB0C6F7A0000000
  %352 = or i1 %173, %351
  br i1 %352, label %360, label %353

353:                                              ; preds = %349, %353
  %354 = phi i64 [ %358, %353 ], [ 1, %349 ]
  %355 = getelementptr inbounds float, ptr %35, i64 %354
  %356 = load float, ptr %355, align 4, !tbaa !115
  %357 = fdiv float %356, %350
  store float %357, ptr %355, align 4, !tbaa !115
  %358 = add nuw nsw i64 %354, 1
  %359 = icmp eq i64 %358, %190
  br i1 %359, label %360, label %353, !llvm.loop !280

360:                                              ; preds = %353, %349
  br i1 %193, label %723, label %361

361:                                              ; preds = %360
  %362 = add nsw i32 %223, -1
  %363 = add nuw nsw i32 %223, 1
  %364 = add nsw i32 %223, -1
  %365 = add nuw nsw i32 %223, 1
  %366 = add nsw i32 %223, -1
  %367 = add nuw nsw i32 %223, 1
  %368 = add nsw i32 %223, -1
  %369 = add nuw nsw i32 %223, 1
  %370 = add nsw i32 %223, -1
  %371 = add nuw nsw i32 %223, 1
  br label %372

372:                                              ; preds = %361, %720
  %373 = phi i64 [ 0, %361 ], [ %721, %720 ]
  br i1 %194, label %720, label %374

374:                                              ; preds = %372
  %375 = sub nsw i64 %215, %373
  %376 = getelementptr inbounds float, ptr %36, i64 %375
  %377 = load float, ptr %376, align 4, !tbaa !115
  %378 = trunc i64 %373 to i32
  br label %379

379:                                              ; preds = %374, %700
  %380 = phi i64 [ 0, %374 ], [ %718, %700 ]
  %381 = getelementptr inbounds float, ptr %35, i64 %380
  %382 = load float, ptr %381, align 4, !tbaa !115
  br label %383

383:                                              ; preds = %386, %379
  %384 = phi i64 [ %387, %386 ], [ 0, %379 ]
  %385 = icmp eq i64 %384, %219
  br i1 %385, label %406, label %386

386:                                              ; preds = %383
  %387 = add nuw nsw i64 %384, 1
  %388 = getelementptr inbounds float, ptr %32, i64 %387
  %389 = load float, ptr %388, align 4, !tbaa !115
  %390 = fcmp ult float %389, %382
  br i1 %390, label %383, label %391, !llvm.loop !281

391:                                              ; preds = %386
  %392 = trunc i64 %384 to i32
  %393 = and i64 %384, 4294967295
  %394 = getelementptr inbounds float, ptr %32, i64 %393
  %395 = load float, ptr %394, align 4, !tbaa !115
  %396 = fsub float %382, %395
  %397 = fcmp oeq float %396, 0.000000e+00
  %398 = fsub float %389, %395
  %399 = fdiv float %396, %398
  %400 = select i1 %397, float 0.000000e+00, float %399
  %401 = icmp eq i32 %195, %392
  %402 = fcmp oeq float %400, 1.000000e+00
  %403 = select i1 %401, i1 %402, i1 false
  %404 = select i1 %403, float 0.000000e+00, float %400
  %405 = select i1 %403, i32 %9, i32 %392
  br label %406

406:                                              ; preds = %383, %391
  %407 = phi float [ %404, %391 ], [ 0.000000e+00, %383 ]
  %408 = phi i32 [ %405, %391 ], [ %9, %383 ]
  br label %409

409:                                              ; preds = %412, %406
  %410 = phi i64 [ %413, %412 ], [ 0, %406 ]
  %411 = icmp eq i64 %410, %220
  br i1 %411, label %432, label %412

412:                                              ; preds = %409
  %413 = add nuw nsw i64 %410, 1
  %414 = getelementptr inbounds float, ptr %31, i64 %413
  %415 = load float, ptr %414, align 4, !tbaa !115
  %416 = fcmp ult float %415, %377
  br i1 %416, label %409, label %417, !llvm.loop !281

417:                                              ; preds = %412
  %418 = trunc i64 %410 to i32
  %419 = and i64 %410, 4294967295
  %420 = getelementptr inbounds float, ptr %31, i64 %419
  %421 = load float, ptr %420, align 4, !tbaa !115
  %422 = fsub float %377, %421
  %423 = fcmp oeq float %422, 0.000000e+00
  %424 = fsub float %415, %421
  %425 = fdiv float %422, %424
  %426 = select i1 %423, float 0.000000e+00, float %425
  %427 = icmp eq i32 %196, %418
  %428 = fcmp oeq float %426, 1.000000e+00
  %429 = select i1 %427, i1 %428, i1 false
  %430 = select i1 %429, float 0.000000e+00, float %426
  %431 = select i1 %429, i32 %9, i32 %418
  br label %432

432:                                              ; preds = %409, %417
  %433 = phi float [ %430, %417 ], [ 0.000000e+00, %409 ]
  %434 = phi i32 [ %431, %417 ], [ %9, %409 ]
  %435 = sub nsw i32 %9, %434
  %436 = fcmp uge float %433, 0x3EB0C6F7A0000000
  %437 = fsub float 1.000000e+00, %433
  %438 = sext i1 %436 to i32
  %439 = add nsw i32 %435, %438
  %440 = select i1 %436, float %437, float 0.000000e+00
  %441 = fcmp olt float %440, 0x3EB0C6F7A0000000
  %442 = fcmp olt float %407, 0x3EB0C6F7A0000000
  %443 = select i1 %441, i1 %442, i1 false
  %444 = load i32, ptr %6, align 8, !tbaa !148
  %445 = load i32, ptr %8, align 4, !tbaa !94
  %446 = sdiv i32 %445, 2
  %447 = srem i32 %445, 2
  %448 = icmp eq i32 %447, 0
  %449 = icmp eq i32 %446, %439
  %450 = and i1 %448, %449
  %451 = icmp eq i32 %446, %408
  %452 = and i1 %451, %450
  br i1 %443, label %453, label %501

453:                                              ; preds = %432
  br i1 %452, label %454, label %458

454:                                              ; preds = %453
  %455 = add nsw i32 %445, 1
  %456 = mul nsw i32 %455, %439
  %457 = add nsw i32 %456, %408
  br label %491

458:                                              ; preds = %453
  %459 = add nsw i32 %446, -1
  %460 = add nsw i32 %459, %447
  %461 = icmp slt i32 %460, %439
  %462 = icmp slt i32 %446, %408
  %463 = or i1 %462, %461
  br i1 %463, label %471, label %464

464:                                              ; preds = %458
  %465 = add nsw i32 %446, 1
  %466 = add nsw i32 %445, 1
  %467 = mul i32 %465, %223
  %468 = add i32 %467, %439
  %469 = mul i32 %468, %466
  %470 = add i32 %469, %408
  br label %491

471:                                              ; preds = %458
  br i1 %462, label %482, label %472

472:                                              ; preds = %471
  %473 = add i32 %370, %444
  %474 = srem i32 %473, %444
  %475 = sub i32 %445, %439
  %476 = add nsw i32 %446, 1
  %477 = add nsw i32 %445, 1
  %478 = mul i32 %474, %476
  %479 = add i32 %478, %408
  %480 = mul i32 %479, %477
  %481 = add i32 %475, %480
  br label %491

482:                                              ; preds = %471
  %483 = srem i32 %371, %444
  %484 = sub i32 %445, %408
  %485 = add nsw i32 %446, 1
  %486 = add nsw i32 %445, 1
  %487 = mul i32 %483, %485
  %488 = add i32 %484, %487
  %489 = mul i32 %488, %486
  %490 = add i32 %489, %439
  br label %491

491:                                              ; preds = %454, %464, %472, %482
  %492 = phi i32 [ %457, %454 ], [ %470, %464 ], [ %481, %472 ], [ %490, %482 ]
  %493 = load ptr, ptr %1, align 8, !tbaa !149
  %494 = sext i32 %492 to i64
  %495 = getelementptr inbounds %struct.NewVert, ptr %493, i64 %494, i32 1
  %496 = load float, ptr %495, align 4, !tbaa !115
  store float %496, ptr %5, align 4, !tbaa !115
  %497 = getelementptr inbounds %struct.NewVert, ptr %493, i64 %494, i32 1, i64 1
  %498 = load float, ptr %497, align 4, !tbaa !115
  store float %498, ptr %208, align 4, !tbaa !115
  %499 = getelementptr inbounds %struct.NewVert, ptr %493, i64 %494, i32 1, i64 2
  %500 = load float, ptr %499, align 4, !tbaa !115
  store float %500, ptr %209, align 4, !tbaa !115
  br label %700

501:                                              ; preds = %432
  br i1 %452, label %502, label %506

502:                                              ; preds = %501
  %503 = add nsw i32 %445, 1
  %504 = mul nsw i32 %503, %439
  %505 = add nsw i32 %504, %408
  br label %539

506:                                              ; preds = %501
  %507 = add nsw i32 %446, -1
  %508 = add nsw i32 %507, %447
  %509 = icmp slt i32 %508, %439
  %510 = icmp slt i32 %446, %408
  %511 = or i1 %510, %509
  br i1 %511, label %519, label %512

512:                                              ; preds = %506
  %513 = add nsw i32 %446, 1
  %514 = add nsw i32 %445, 1
  %515 = mul i32 %513, %223
  %516 = add i32 %515, %439
  %517 = mul i32 %516, %514
  %518 = add i32 %517, %408
  br label %539

519:                                              ; preds = %506
  br i1 %510, label %530, label %520

520:                                              ; preds = %519
  %521 = add i32 %362, %444
  %522 = srem i32 %521, %444
  %523 = sub i32 %445, %439
  %524 = add nsw i32 %446, 1
  %525 = add nsw i32 %445, 1
  %526 = mul i32 %522, %524
  %527 = add i32 %526, %408
  %528 = mul i32 %527, %525
  %529 = add i32 %523, %528
  br label %539

530:                                              ; preds = %519
  %531 = srem i32 %363, %444
  %532 = sub i32 %445, %408
  %533 = add nsw i32 %446, 1
  %534 = add nsw i32 %445, 1
  %535 = mul i32 %531, %533
  %536 = add i32 %532, %535
  %537 = mul i32 %536, %534
  %538 = add i32 %537, %439
  br label %539

539:                                              ; preds = %502, %512, %520, %530
  %540 = phi i32 [ %505, %502 ], [ %518, %512 ], [ %529, %520 ], [ %538, %530 ]
  %541 = load ptr, ptr %1, align 8, !tbaa !149
  %542 = sext i32 %540 to i64
  %543 = getelementptr inbounds %struct.NewVert, ptr %541, i64 %542, i32 1
  %544 = load float, ptr %543, align 4, !tbaa !115
  store float %544, ptr %4, align 16, !tbaa !115
  %545 = getelementptr inbounds %struct.NewVert, ptr %541, i64 %542, i32 1, i64 1
  %546 = load float, ptr %545, align 4, !tbaa !115
  store float %546, ptr %197, align 4, !tbaa !115
  %547 = getelementptr inbounds %struct.NewVert, ptr %541, i64 %542, i32 1, i64 2
  %548 = load float, ptr %547, align 4, !tbaa !115
  store float %548, ptr %198, align 8, !tbaa !115
  %549 = add nsw i32 %408, 1
  %550 = xor i32 %408, -1
  %551 = icmp eq i32 %446, %549
  %552 = and i1 %551, %450
  br i1 %552, label %553, label %557

553:                                              ; preds = %539
  %554 = add nsw i32 %445, 1
  %555 = mul nsw i32 %554, %439
  %556 = add nsw i32 %555, %549
  br label %590

557:                                              ; preds = %539
  %558 = add nsw i32 %446, -1
  %559 = add nsw i32 %558, %447
  %560 = icmp slt i32 %559, %439
  %561 = icmp sle i32 %446, %408
  %562 = or i1 %561, %560
  br i1 %562, label %570, label %563

563:                                              ; preds = %557
  %564 = add nsw i32 %446, 1
  %565 = add nsw i32 %445, 1
  %566 = mul i32 %564, %223
  %567 = add i32 %566, %439
  %568 = mul i32 %567, %565
  %569 = add i32 %568, %549
  br label %590

570:                                              ; preds = %557
  br i1 %561, label %581, label %571

571:                                              ; preds = %570
  %572 = add i32 %364, %444
  %573 = srem i32 %572, %444
  %574 = sub i32 %445, %439
  %575 = add nsw i32 %446, 1
  %576 = add nsw i32 %445, 1
  %577 = mul i32 %573, %575
  %578 = add i32 %577, %549
  %579 = mul i32 %578, %576
  %580 = add i32 %574, %579
  br label %590

581:                                              ; preds = %570
  %582 = srem i32 %365, %444
  %583 = add i32 %445, %550
  %584 = add nsw i32 %446, 1
  %585 = add nsw i32 %445, 1
  %586 = mul i32 %582, %584
  %587 = add i32 %583, %586
  %588 = mul i32 %587, %585
  %589 = add i32 %588, %439
  br label %590

590:                                              ; preds = %553, %563, %571, %581
  %591 = phi i32 [ %556, %553 ], [ %569, %563 ], [ %580, %571 ], [ %589, %581 ]
  %592 = load ptr, ptr %1, align 8, !tbaa !149
  %593 = sext i32 %591 to i64
  %594 = getelementptr inbounds %struct.NewVert, ptr %592, i64 %593, i32 1
  %595 = load float, ptr %594, align 4, !tbaa !115
  store float %595, ptr %199, align 4, !tbaa !115
  %596 = getelementptr inbounds %struct.NewVert, ptr %592, i64 %593, i32 1, i64 1
  %597 = load float, ptr %596, align 4, !tbaa !115
  store float %597, ptr %200, align 16, !tbaa !115
  %598 = getelementptr inbounds %struct.NewVert, ptr %592, i64 %593, i32 1, i64 2
  %599 = load float, ptr %598, align 4, !tbaa !115
  store float %599, ptr %201, align 4, !tbaa !115
  %600 = add nsw i32 %439, 1
  %601 = xor i32 %439, -1
  %602 = icmp eq i32 %446, %600
  %603 = and i1 %448, %602
  %604 = and i1 %551, %603
  br i1 %604, label %605, label %609

605:                                              ; preds = %590
  %606 = add nsw i32 %445, 1
  %607 = mul nsw i32 %606, %600
  %608 = add nsw i32 %607, %549
  br label %642

609:                                              ; preds = %590
  %610 = add nsw i32 %446, -1
  %611 = add nsw i32 %610, %447
  %612 = icmp sle i32 %611, %439
  %613 = icmp sle i32 %446, %408
  %614 = or i1 %613, %612
  br i1 %614, label %622, label %615

615:                                              ; preds = %609
  %616 = add nsw i32 %446, 1
  %617 = add nsw i32 %445, 1
  %618 = mul i32 %616, %223
  %619 = add i32 %618, %600
  %620 = mul i32 %619, %617
  %621 = add i32 %620, %549
  br label %642

622:                                              ; preds = %609
  br i1 %613, label %633, label %623

623:                                              ; preds = %622
  %624 = add i32 %366, %444
  %625 = srem i32 %624, %444
  %626 = add i32 %445, %601
  %627 = add nsw i32 %446, 1
  %628 = add nsw i32 %445, 1
  %629 = mul i32 %625, %627
  %630 = add i32 %629, %549
  %631 = mul i32 %630, %628
  %632 = add i32 %626, %631
  br label %642

633:                                              ; preds = %622
  %634 = srem i32 %367, %444
  %635 = add i32 %445, %550
  %636 = add nsw i32 %446, 1
  %637 = add nsw i32 %445, 1
  %638 = mul i32 %634, %636
  %639 = add i32 %635, %638
  %640 = mul i32 %639, %637
  %641 = add i32 %640, %600
  br label %642

642:                                              ; preds = %605, %615, %623, %633
  %643 = phi i32 [ %608, %605 ], [ %621, %615 ], [ %632, %623 ], [ %641, %633 ]
  %644 = load ptr, ptr %1, align 8, !tbaa !149
  %645 = sext i32 %643 to i64
  %646 = getelementptr inbounds %struct.NewVert, ptr %644, i64 %645, i32 1
  %647 = load float, ptr %646, align 4, !tbaa !115
  store float %647, ptr %202, align 8, !tbaa !115
  %648 = getelementptr inbounds %struct.NewVert, ptr %644, i64 %645, i32 1, i64 1
  %649 = load float, ptr %648, align 4, !tbaa !115
  store float %649, ptr %203, align 4, !tbaa !115
  %650 = getelementptr inbounds %struct.NewVert, ptr %644, i64 %645, i32 1, i64 2
  %651 = load float, ptr %650, align 4, !tbaa !115
  store float %651, ptr %204, align 16, !tbaa !115
  %652 = and i1 %451, %603
  br i1 %652, label %653, label %657

653:                                              ; preds = %642
  %654 = add nsw i32 %445, 1
  %655 = mul nsw i32 %654, %600
  %656 = add nsw i32 %655, %408
  br label %690

657:                                              ; preds = %642
  %658 = add nsw i32 %446, -1
  %659 = add nsw i32 %658, %447
  %660 = icmp sle i32 %659, %439
  %661 = icmp slt i32 %446, %408
  %662 = or i1 %661, %660
  br i1 %662, label %670, label %663

663:                                              ; preds = %657
  %664 = add nsw i32 %446, 1
  %665 = add nsw i32 %445, 1
  %666 = mul i32 %664, %223
  %667 = add i32 %666, %600
  %668 = mul i32 %667, %665
  %669 = add i32 %668, %408
  br label %690

670:                                              ; preds = %657
  br i1 %661, label %681, label %671

671:                                              ; preds = %670
  %672 = add i32 %368, %444
  %673 = srem i32 %672, %444
  %674 = add i32 %445, %601
  %675 = add nsw i32 %446, 1
  %676 = add nsw i32 %445, 1
  %677 = mul i32 %673, %675
  %678 = add i32 %677, %408
  %679 = mul i32 %678, %676
  %680 = add i32 %674, %679
  br label %690

681:                                              ; preds = %670
  %682 = srem i32 %369, %444
  %683 = sub i32 %445, %408
  %684 = add nsw i32 %446, 1
  %685 = add nsw i32 %445, 1
  %686 = mul i32 %682, %684
  %687 = add i32 %683, %686
  %688 = mul i32 %687, %685
  %689 = add i32 %688, %600
  br label %690

690:                                              ; preds = %653, %663, %671, %681
  %691 = phi i32 [ %656, %653 ], [ %669, %663 ], [ %680, %671 ], [ %689, %681 ]
  %692 = load ptr, ptr %1, align 8, !tbaa !149
  %693 = sext i32 %691 to i64
  %694 = getelementptr inbounds %struct.NewVert, ptr %692, i64 %693, i32 1
  %695 = load float, ptr %694, align 4, !tbaa !115
  store float %695, ptr %205, align 4, !tbaa !115
  %696 = getelementptr inbounds %struct.NewVert, ptr %692, i64 %693, i32 1, i64 1
  %697 = load float, ptr %696, align 4, !tbaa !115
  store float %697, ptr %206, align 8, !tbaa !115
  %698 = getelementptr inbounds %struct.NewVert, ptr %692, i64 %693, i32 1, i64 2
  %699 = load float, ptr %698, align 4, !tbaa !115
  store float %699, ptr %207, align 4, !tbaa !115
  call void @interp_bilinear_quad_v3(ptr noundef nonnull %4, float noundef %407, float noundef %440, ptr noundef nonnull %5) #13
  br label %700

700:                                              ; preds = %690, %491
  %701 = load i32, ptr %18, align 4, !tbaa !94
  %702 = sdiv i32 %701, 2
  %703 = add nsw i32 %702, 1
  %704 = add nsw i32 %701, 1
  %705 = load ptr, ptr %16, align 8, !tbaa !149
  %706 = mul i32 %703, %223
  %707 = add i32 %706, %378
  %708 = mul i32 %707, %704
  %709 = trunc i64 %380 to i32
  %710 = add i32 %708, %709
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds %struct.NewVert, ptr %705, i64 %711, i32 1
  %713 = load float, ptr %5, align 4, !tbaa !115
  store float %713, ptr %712, align 4, !tbaa !115
  %714 = load float, ptr %210, align 4, !tbaa !115
  %715 = getelementptr inbounds float, ptr %712, i64 1
  store float %714, ptr %715, align 4, !tbaa !115
  %716 = load float, ptr %211, align 4, !tbaa !115
  %717 = getelementptr inbounds float, ptr %712, i64 2
  store float %716, ptr %717, align 4, !tbaa !115
  %718 = add nuw nsw i64 %380, 1
  %719 = icmp eq i64 %718, %218
  br i1 %719, label %720, label %379, !llvm.loop !282

720:                                              ; preds = %700, %372
  %721 = add nuw nsw i64 %373, 1
  %722 = icmp eq i64 %721, %217
  br i1 %722, label %723, label %372, !llvm.loop !283

723:                                              ; preds = %720, %360
  %724 = load ptr, ptr %222, align 8, !tbaa !158
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %31, ptr nonnull align 16 %32, i64 %30, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %36, ptr nonnull align 16 %35, i64 %34, i1 false)
  %725 = add nuw nsw i32 %223, 1
  %726 = icmp eq i32 %725, %7
  br i1 %726, label %727, label %221, !llvm.loop !284

727:                                              ; preds = %723, %184
  %728 = icmp eq i32 %11, 0
  br i1 %728, label %729, label %796

729:                                              ; preds = %727
  %730 = load i32, ptr %6, align 8, !tbaa !148
  %731 = load i32, ptr %8, align 4, !tbaa !94
  %732 = sdiv i32 %731, 2
  %733 = and i32 %731, 1
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %773, label %735

735:                                              ; preds = %729
  %736 = icmp sgt i32 %730, 0
  br i1 %736, label %737, label %764

737:                                              ; preds = %735
  %738 = add nsw i32 %732, 1
  %739 = add nsw i32 %731, 1
  %740 = load ptr, ptr %1, align 8, !tbaa !149
  %741 = zext nneg i32 %730 to i64
  br label %742

742:                                              ; preds = %737, %742
  %743 = phi i64 [ 0, %737 ], [ %762, %742 ]
  %744 = phi float [ 0.000000e+00, %737 ], [ %755, %742 ]
  %745 = phi float [ 0.000000e+00, %737 ], [ %758, %742 ]
  %746 = phi float [ 0.000000e+00, %737 ], [ %761, %742 ]
  %747 = trunc i64 %743 to i32
  %748 = mul i32 %738, %747
  %749 = add i32 %748, %732
  %750 = mul i32 %749, %739
  %751 = add i32 %750, %732
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds %struct.NewVert, ptr %740, i64 %752, i32 1
  %754 = load float, ptr %753, align 4, !tbaa !115
  %755 = fadd float %744, %754
  %756 = getelementptr inbounds float, ptr %753, i64 1
  %757 = load float, ptr %756, align 4, !tbaa !115
  %758 = fadd float %745, %757
  %759 = getelementptr inbounds float, ptr %753, i64 2
  %760 = load float, ptr %759, align 4, !tbaa !115
  %761 = fadd float %746, %760
  %762 = add nuw nsw i64 %743, 1
  %763 = icmp eq i64 %762, %741
  br i1 %763, label %764, label %742, !llvm.loop !285

764:                                              ; preds = %742, %735
  %765 = phi float [ 0.000000e+00, %735 ], [ %761, %742 ]
  %766 = phi float [ 0.000000e+00, %735 ], [ %758, %742 ]
  %767 = phi float [ 0.000000e+00, %735 ], [ %755, %742 ]
  %768 = sitofp i32 %730 to float
  %769 = fdiv float 1.000000e+00, %768
  %770 = fmul float %769, %767
  %771 = fmul float %769, %766
  %772 = fmul float %769, %765
  br label %784

773:                                              ; preds = %729
  %774 = load ptr, ptr %1, align 8, !tbaa !149
  %775 = add i32 %731, 2
  %776 = mul i32 %775, %732
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds %struct.NewVert, ptr %774, i64 %777, i32 1
  %779 = load float, ptr %778, align 4, !tbaa !115
  %780 = getelementptr inbounds float, ptr %778, i64 1
  %781 = load float, ptr %780, align 4, !tbaa !115
  %782 = getelementptr inbounds float, ptr %778, i64 2
  %783 = load float, ptr %782, align 4, !tbaa !115
  br label %784

784:                                              ; preds = %764, %773
  %785 = phi float [ %783, %773 ], [ %772, %764 ]
  %786 = phi float [ %781, %773 ], [ %771, %764 ]
  %787 = phi float [ %779, %773 ], [ %770, %764 ]
  %788 = load i32, ptr %18, align 4, !tbaa !94
  %789 = load ptr, ptr %16, align 8, !tbaa !149
  %790 = add i32 %788, 2
  %791 = mul i32 %790, %10
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds %struct.NewVert, ptr %789, i64 %792, i32 1
  store float %787, ptr %793, align 4, !tbaa !115
  %794 = getelementptr inbounds float, ptr %793, i64 1
  store float %786, ptr %794, align 4, !tbaa !115
  %795 = getelementptr inbounds float, ptr %793, i64 2
  store float %785, ptr %795, align 4, !tbaa !115
  br label %796

796:                                              ; preds = %784, %727
  call fastcc void @vmesh_copy_equiv_verts(ptr noundef nonnull %16)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  ret ptr %16
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

declare void @interp_bilinear_quad_v3(ptr noundef, float noundef, float noundef, ptr noundef) local_unnamed_addr #3

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @BM_face_vert_share_loop(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @bev_create_quad_straddle(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, i8 noundef zeroext %8) unnamed_addr #0 {
  %10 = alloca [4 x ptr], align 16
  %11 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #13
  store ptr %1, ptr %10, align 16, !tbaa !113
  %12 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %2, ptr %12, align 8, !tbaa !113
  %13 = getelementptr inbounds ptr, ptr %10, i64 2
  store ptr %3, ptr %13, align 16, !tbaa !113
  %14 = getelementptr inbounds ptr, ptr %10, i64 3
  store ptr %4, ptr %14, align 8, !tbaa !113
  %15 = icmp eq ptr %4, null
  %16 = select i1 %15, i32 3, i32 4
  %17 = call ptr @BM_face_create_verts(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %16, ptr noundef %5, i32 noundef 0, i8 noundef zeroext 1) #13
  %18 = icmp eq ptr %5, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %9
  %20 = icmp eq ptr %17, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %17) #13
  br label %22

22:                                               ; preds = %9, %21
  %23 = icmp eq ptr %17, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.BMHeader, ptr %17, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !71
  %27 = or i8 %26, 16
  store i8 %27, ptr %25, align 1, !tbaa !71
  br label %28

28:                                               ; preds = %24, %22, %19
  %29 = icmp sgt i32 %7, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = trunc i32 %7 to i16
  %32 = getelementptr inbounds %struct.BMFace, ptr %17, i64 0, i32 5
  store i16 %31, ptr %32, align 8, !tbaa !247
  br label %33

33:                                               ; preds = %28, %30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #13
  %34 = icmp eq ptr %17, null
  br i1 %34, label %61, label %35

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 4
  store i8 11, ptr %36, align 4, !tbaa !61
  %37 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 1
  store ptr @bmiter__loop_of_face_begin, ptr %37, align 8, !tbaa !63
  %38 = getelementptr inbounds %struct.BMIter, ptr %11, i64 0, i32 2
  store ptr @bmiter__loop_of_face_step, ptr %38, align 8, !tbaa !64
  store ptr %17, ptr %11, align 8, !tbaa !70
  call void @bmiter__loop_of_face_begin(ptr noundef nonnull %11) #13
  %39 = load ptr, ptr %38, align 8, !tbaa !64
  %40 = call ptr %39(ptr noundef nonnull %11) #13
  %41 = icmp eq ptr %40, null
  br i1 %41, label %61, label %42

42:                                               ; preds = %35
  %43 = icmp eq i8 %8, 0
  br label %44

44:                                               ; preds = %42, %57
  %45 = phi ptr [ %40, %42 ], [ %59, %57 ]
  br i1 %43, label %46, label %53

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.BMLoop, ptr %45, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !125
  %49 = icmp eq ptr %48, %1
  %50 = icmp eq ptr %48, %2
  %51 = or i1 %49, %50
  %52 = select i1 %51, ptr %5, ptr %6
  br label %53

53:                                               ; preds = %46, %44
  %54 = phi ptr [ %5, %44 ], [ %52, %46 ]
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %53
  call void @BM_loop_interp_from_face(ptr noundef %0, ptr noundef nonnull %45, ptr noundef nonnull %54, i8 noundef zeroext 1, i8 noundef zeroext 1) #13
  br label %57

57:                                               ; preds = %53, %56
  %58 = load ptr, ptr %38, align 8, !tbaa !64
  %59 = call ptr %58(ptr noundef nonnull %11) #13
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %44, !llvm.loop !286

61:                                               ; preds = %57, %35, %33
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #13
  ret void
}

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @weld_cross_attrs_copy(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr noundef readonly %4) unnamed_addr #0 {
  %6 = ptrtoint ptr %4 to i64
  %7 = getelementptr inbounds %struct.BevVert, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  %9 = ptrtoint ptr %8 to i64
  %10 = sub i64 %6, %9
  %11 = udiv i64 %10, 80
  br label %12

12:                                               ; preds = %12, %5
  %13 = phi i64 [ %15, %12 ], [ 0, %5 ]
  %14 = icmp ult i64 %13, 4
  tail call void @llvm.assume(i1 %14)
  %15 = add nuw nsw i64 %13, 1
  %16 = icmp eq i64 %13, %11
  br i1 %16, label %17, label %12, !llvm.loop !287

17:                                               ; preds = %12
  %18 = add nuw nsw i64 %13, 3
  %19 = and i64 %18, 3
  %20 = getelementptr inbounds %struct.EdgeHalf, ptr %8, i64 %19, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = add nuw nsw i64 %13, 1
  %23 = and i64 %22, 3
  %24 = getelementptr inbounds %struct.EdgeHalf, ptr %8, i64 %23, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  %26 = getelementptr inbounds %struct.BMHeader, ptr %21, i64 0, i32 3
  %27 = load i8, ptr %26, align 1, !tbaa !71
  %28 = getelementptr inbounds %struct.BMHeader, ptr %25, i64 0, i32 3
  %29 = load i8, ptr %28, align 1, !tbaa !71
  %30 = xor i8 %29, %27
  %31 = and i8 %30, 4
  %32 = icmp eq i8 %31, 0
  %33 = and i8 %30, 8
  %34 = icmp eq i8 %33, 0
  %35 = getelementptr inbounds %struct.EdgeHalf, ptr %4, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !104
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %17
  %39 = getelementptr inbounds %struct.VMesh, ptr %2, i64 0, i32 3
  br label %40

40:                                               ; preds = %38, %68
  %41 = phi i32 [ 0, %38 ], [ %53, %68 ]
  %42 = load i32, ptr %39, align 4, !tbaa !94
  %43 = sdiv i32 %42, 2
  %44 = add nsw i32 %43, 1
  %45 = add nsw i32 %42, 1
  %46 = load ptr, ptr %2, align 8, !tbaa !149
  %47 = mul nsw i32 %45, %3
  %48 = mul nsw i32 %47, %44
  %49 = add nsw i32 %48, %41
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.NewVert, ptr %46, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !155
  %53 = add nuw nsw i32 %41, 1
  %54 = add nsw i32 %48, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.NewVert, ptr %46, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !155
  %58 = tail call ptr @BM_edge_exists(ptr noundef %52, ptr noundef %57) #13
  tail call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %21, ptr noundef %58) #13
  br i1 %32, label %63, label %59

59:                                               ; preds = %40
  %60 = getelementptr inbounds %struct.BMHeader, ptr %58, i64 0, i32 3
  %61 = load i8, ptr %60, align 1, !tbaa !71
  %62 = and i8 %61, -5
  store i8 %62, ptr %60, align 1, !tbaa !71
  br label %63

63:                                               ; preds = %59, %40
  br i1 %34, label %68, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.BMHeader, ptr %58, i64 0, i32 3
  %66 = load i8, ptr %65, align 1, !tbaa !71
  %67 = or i8 %66, 8
  store i8 %67, ptr %65, align 1, !tbaa !71
  br label %68

68:                                               ; preds = %63, %64
  %69 = icmp eq i32 %53, %36
  br i1 %69, label %70, label %40, !llvm.loop !288

70:                                               ; preds = %68, %17
  ret void
}

declare ptr @BM_iter_as_arrayN(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BM_face_kill(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }

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
!34 = !{!35, !41, i64 40}
!35 = !{!"BevelParams", !36, i64 0, !36, i64 8, !39, i64 16, !41, i64 40, !40, i64 44, !40, i64 48, !41, i64 52, !37, i64 56, !37, i64 57, !37, i64 58, !37, i64 59, !36, i64 64, !40, i64 72, !40, i64 76}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ProfileSpacing", !36, i64 0, !36, i64 8, !40, i64 16}
!40 = !{!"int", !37, i64 0}
!41 = !{!"float", !37, i64 0}
!42 = !{!35, !40, i64 44}
!43 = !{!35, !40, i64 48}
!44 = !{!35, !41, i64 52}
!45 = !{!35, !37, i64 56}
!46 = !{!35, !37, i64 57}
!47 = !{!35, !37, i64 58}
!48 = !{!35, !37, i64 59}
!49 = !{!35, !36, i64 64}
!50 = !{!35, !40, i64 72}
!51 = !{!35, !40, i64 76}
!52 = !{!35, !36, i64 0}
!53 = !{!35, !36, i64 8}
!54 = !{!35, !36, i64 16}
!55 = !{i32 0, i32 33}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!35, !40, i64 32}
!60 = !{!35, !36, i64 24}
!61 = !{!62, !37, i64 60}
!62 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !40, i64 56, !37, i64 60}
!63 = !{!62, !36, i64 40}
!64 = !{!62, !36, i64 48}
!65 = !{!66, !36, i64 32}
!66 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !40, i64 128, !36, i64 136, !67, i64 144, !67, i64 344, !67, i64 544, !67, i64 744, !68, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !69, i64 960, !36, i64 976, !69, i64 984, !36, i64 1000}
!67 = !{!"CustomData", !36, i64 0, !37, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !36, i64 184, !36, i64 192}
!68 = !{!"short", !37, i64 0}
!69 = !{!"ListBase", !36, i64 0, !36, i64 8}
!70 = !{!37, !37, i64 0}
!71 = !{!72, !37, i64 13}
!72 = !{!"BMHeader", !36, i64 0, !40, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!73 = !{!74, !36, i64 24}
!74 = !{!"BMEdge", !72, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !75, i64 48, !75, i64 64}
!75 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!76 = !{!74, !36, i64 32}
!77 = distinct !{!77, !57, !58}
!78 = distinct !{!78, !57, !58}
!79 = distinct !{!79, !57, !58}
!80 = !{!74, !37, i64 14}
!81 = !{!74, !36, i64 40}
!82 = distinct !{!82, !57, !58}
!83 = !{!84, !36, i64 48}
!84 = !{!"BMVert", !72, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!85 = !{!86, !36, i64 0}
!86 = !{!"BevVert", !36, i64 0, !40, i64 8, !40, i64 12, !40, i64 16, !41, i64 20, !37, i64 24, !37, i64 25, !36, i64 32, !36, i64 40, !36, i64 48}
!87 = !{!86, !40, i64 8}
!88 = !{!86, !40, i64 12}
!89 = !{!86, !40, i64 16}
!90 = !{!86, !41, i64 20}
!91 = !{!86, !36, i64 32}
!92 = !{!86, !36, i64 40}
!93 = !{!86, !36, i64 48}
!94 = !{!95, !40, i64 20}
!95 = !{!"VMesh", !36, i64 0, !36, i64 8, !40, i64 16, !40, i64 20, !40, i64 24}
!96 = !{!72, !40, i64 8}
!97 = !{!98, !36, i64 16}
!98 = !{!"EdgeHalf", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !40, i64 56, !41, i64 60, !41, i64 64, !41, i64 68, !41, i64 72, !37, i64 76, !37, i64 77, !37, i64 78}
!99 = distinct !{!99, !57, !58}
!100 = distinct !{!100, !57, !58}
!101 = !{!98, !36, i64 24}
!102 = !{!98, !36, i64 32}
!103 = !{!98, !37, i64 76}
!104 = !{!98, !40, i64 56}
!105 = !{!98, !37, i64 77}
!106 = distinct !{!106, !57, !58}
!107 = distinct !{!107, !57, !58}
!108 = distinct !{!108, !57, !58}
!109 = !{!110, !36, i64 56}
!110 = !{!"BMLoop", !72, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!111 = distinct !{!111, !57, !58}
!112 = !{i64 0, i64 8, !113, i64 8, i64 8, !113, i64 16, i64 8, !113, i64 24, i64 8, !113, i64 32, i64 8, !113, i64 40, i64 8, !113, i64 48, i64 8, !113, i64 56, i64 4, !114, i64 60, i64 4, !115, i64 64, i64 4, !115, i64 68, i64 4, !115, i64 72, i64 4, !115, i64 76, i64 1, !70, i64 77, i64 1, !70, i64 78, i64 1, !70}
!113 = !{!36, !36, i64 0}
!114 = !{!40, !40, i64 0}
!115 = !{!41, !41, i64 0}
!116 = distinct !{!116, !57, !58}
!117 = !{!98, !36, i64 0}
!118 = !{!98, !36, i64 8}
!119 = !{!98, !41, i64 68}
!120 = !{!98, !41, i64 72}
!121 = !{!98, !41, i64 60}
!122 = !{!98, !41, i64 64}
!123 = !{!66, !40, i64 716}
!124 = !{!110, !36, i64 32}
!125 = !{!110, !36, i64 16}
!126 = !{!66, !36, i64 544}
!127 = !{!128, !40, i64 4}
!128 = !{!"CustomDataLayer", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !36, i64 96}
!129 = !{!128, !40, i64 0}
!130 = !{!110, !36, i64 0}
!131 = distinct !{!131, !57, !58}
!132 = !{!98, !37, i64 78}
!133 = distinct !{!133, !57, !58}
!134 = distinct !{!134, !57, !58}
!135 = distinct !{!135, !57, !58}
!136 = !{!137, !36, i64 8}
!137 = !{!"GHashIterator", !36, i64 0, !36, i64 8, !40, i64 16}
!138 = !{!139, !36, i64 16}
!139 = !{!"_gh_Entry", !36, i64 0, !36, i64 8, !36, i64 16}
!140 = !{!86, !37, i64 25}
!141 = distinct !{!141, !57, !58}
!142 = distinct !{!142, !58}
!143 = distinct !{!143, !57, !58}
!144 = distinct !{!144, !57, !58}
!145 = distinct !{!145, !57, !58}
!146 = distinct !{!146, !57, !58}
!147 = distinct !{!147, !57, !58}
!148 = !{!95, !40, i64 16}
!149 = !{!95, !36, i64 0}
!150 = !{!95, !36, i64 8}
!151 = !{!152, !40, i64 64}
!152 = !{!"BoundVert", !36, i64 0, !36, i64 8, !153, i64 16, !36, i64 40, !36, i64 48, !36, i64 56, !40, i64 64, !154, i64 72, !37, i64 168}
!153 = !{!"NewVert", !36, i64 0, !37, i64 8}
!154 = !{!"Profile", !41, i64 0, !37, i64 4, !37, i64 16, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 64, !36, i64 80, !36, i64 88}
!155 = !{!153, !36, i64 0}
!156 = !{!152, !36, i64 16}
!157 = !{!152, !36, i64 56}
!158 = !{!152, !36, i64 0}
!159 = distinct !{!159, !57, !58}
!160 = !{!95, !40, i64 24}
!161 = !{!154, !36, i64 80}
!162 = !{!154, !36, i64 88}
!163 = distinct !{!163, !57, !58}
!164 = distinct !{!164, !57, !58}
!165 = !{!152, !41, i64 72}
!166 = distinct !{!166, !57, !58}
!167 = distinct !{!167, !57, !58}
!168 = distinct !{!168, !57, !58}
!169 = distinct !{!169, !57, !58}
!170 = !{i8 0, i8 2}
!171 = !{!154, !41, i64 0}
!172 = distinct !{!172, !57, !58}
!173 = distinct !{!173, !57, !58}
!174 = distinct !{!174, !57, !58}
!175 = distinct !{!175, !57, !58}
!176 = !{!152, !36, i64 8}
!177 = distinct !{!177, !57, !58}
!178 = distinct !{!178, !57, !58}
!179 = distinct !{!179, !57, !58}
!180 = distinct !{!180, !57, !58}
!181 = distinct !{!181, !57, !58}
!182 = distinct !{!182, !57, !58}
!183 = distinct !{!183, !57, !58}
!184 = distinct !{!184, !57, !58}
!185 = distinct !{!185, !57, !58}
!186 = distinct !{!186, !57, !58}
!187 = distinct !{!187, !57, !58}
!188 = distinct !{!188, !57, !58}
!189 = distinct !{!189, !57, !58}
!190 = distinct !{!190, !57, !58}
!191 = distinct !{!191, !57, !58}
!192 = distinct !{!192, !57, !58}
!193 = !{!152, !36, i64 40}
!194 = !{!152, !36, i64 48}
!195 = !{!152, !37, i64 168}
!196 = distinct !{!196, !57, !58}
!197 = distinct !{!197, !57, !58}
!198 = distinct !{!198, !57, !58}
!199 = distinct !{!199, !57, !58}
!200 = distinct !{!200, !57, !58}
!201 = !{!86, !37, i64 24}
!202 = distinct !{!202, !57, !58}
!203 = !{!204, !36, i64 24}
!204 = !{!"BMFace", !72, i64 0, !36, i64 16, !36, i64 24, !40, i64 32, !37, i64 36, !68, i64 48}
!205 = !{!110, !36, i64 64}
!206 = !{!204, !40, i64 32}
!207 = distinct !{!207, !57, !58}
!208 = distinct !{!208, !57, !58}
!209 = !{!98, !36, i64 48}
!210 = !{!98, !36, i64 40}
!211 = distinct !{!211, !57, !58}
!212 = distinct !{!212, !57, !58}
!213 = !{!66, !36, i64 40}
!214 = !{!110, !36, i64 40}
!215 = distinct !{!215, !57, !58}
!216 = distinct !{!216, !57, !58}
!217 = distinct !{!217, !57, !58}
!218 = !{!110, !36, i64 24}
!219 = distinct !{!219, !57, !58}
!220 = distinct !{!220, !57, !58}
!221 = distinct !{!221, !57, !58}
!222 = distinct !{!222, !57, !58}
!223 = distinct !{!223, !57, !58}
!224 = distinct !{!224, !57, !58}
!225 = distinct !{!225, !57, !58}
!226 = distinct !{!226, !57, !58}
!227 = distinct !{!227, !57, !58}
!228 = distinct !{!228, !57, !58}
!229 = distinct !{!229, !57, !58}
!230 = distinct !{!230, !57, !58}
!231 = distinct !{!231, !57, !58}
!232 = distinct !{!232, !57, !58}
!233 = distinct !{!233, !57, !58}
!234 = distinct !{!234, !57, !58}
!235 = distinct !{!235, !57, !58}
!236 = distinct !{!236, !57, !58}
!237 = distinct !{!237, !57, !58}
!238 = distinct !{!238, !57, !58}
!239 = distinct !{!239, !57, !58}
!240 = distinct !{!240, !57, !58}
!241 = distinct !{!241, !57, !58}
!242 = distinct !{!242, !57, !58}
!243 = distinct !{!243, !57, !58}
!244 = distinct !{!244, !57, !58}
!245 = distinct !{!245, !57, !58}
!246 = distinct !{!246, !57, !58}
!247 = !{!204, !68, i64 48}
!248 = distinct !{!248, !57, !58}
!249 = distinct !{!249, !57, !58}
!250 = distinct !{!250, !57, !58}
!251 = distinct !{!251, !57, !58}
!252 = distinct !{!252, !57, !58}
!253 = distinct !{!253, !57, !58}
!254 = distinct !{!254, !57, !58}
!255 = distinct !{!255, !57, !58}
!256 = distinct !{!256, !57, !58}
!257 = distinct !{!257, !57, !58}
!258 = distinct !{!258, !57, !58}
!259 = distinct !{!259, !57, !58}
!260 = distinct !{!260, !57, !58}
!261 = distinct !{!261, !57, !58}
!262 = distinct !{!262, !57, !58}
!263 = distinct !{!263, !57, !58}
!264 = distinct !{!264, !57, !58}
!265 = distinct !{!265, !57, !58}
!266 = distinct !{!266, !57, !58}
!267 = distinct !{!267, !57, !58}
!268 = distinct !{!268, !57, !58}
!269 = distinct !{!269, !57, !58}
!270 = distinct !{!270, !57, !58}
!271 = distinct !{!271, !57, !58}
!272 = distinct !{!272, !57, !58}
!273 = distinct !{!273, !57, !58}
!274 = distinct !{!274, !57, !58}
!275 = distinct !{!275, !57, !58}
!276 = distinct !{!276, !57, !58}
!277 = distinct !{!277, !57, !58}
!278 = distinct !{!278, !57, !58}
!279 = distinct !{!279, !57, !58}
!280 = distinct !{!280, !57, !58}
!281 = distinct !{!281, !57, !58}
!282 = distinct !{!282, !57, !58}
!283 = distinct !{!283, !57, !58}
!284 = distinct !{!284, !57, !58}
!285 = distinct !{!285, !57, !58}
!286 = distinct !{!286, !57, !58}
!287 = distinct !{!287, !57, !58}
!288 = distinct !{!288, !57, !58}
