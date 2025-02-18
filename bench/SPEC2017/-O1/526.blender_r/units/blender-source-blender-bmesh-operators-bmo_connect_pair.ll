; ModuleID = 'blender/source/blender/bmesh/operators/bmo_connect_pair.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_connect_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PathLinkState = type { ptr, ptr, ptr, float, [3 x float] }
%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.PathContext = type { %struct.ListBase, [3 x [3 x float]], float, ptr, ptr, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.PathLink = type { ptr, ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMFlagLayer = type { i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"verts\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"faces_exclude\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"verts_exclude\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_connect_vert_pair_exec = private unnamed_addr constant [27 x i8] c"bmo_connect_vert_pair_exec\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"connect_verts verts=%fv faces_exclude=%s\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.state_dupe_add = private unnamed_addr constant [15 x i8] c"state_dupe_add\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_connect_vert_pair_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.PathLinkState, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.PathContext, align 8
  %8 = alloca %struct.BMOperator, align 8
  %9 = tail call ptr @BMO_slot_get(ptr noundef %1, ptr noundef nonnull @.str) #7
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #7
  %10 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !34
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %589

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 3
  store ptr %0, ptr %14, align 8, !tbaa !40
  %15 = getelementptr inbounds %struct.BMOpSlot, ptr %9, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = load ptr, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 4
  store ptr %17, ptr %18, align 8, !tbaa !46
  %19 = load ptr, ptr %15, align 8, !tbaa !44
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 5
  store ptr %21, ptr %22, align 8, !tbaa !47
  %23 = icmp ne ptr %17, null
  %24 = icmp ne ptr %21, null
  %25 = select i1 %23, i1 %24, i1 false
  br i1 %25, label %26, label %589

26:                                               ; preds = %13
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.1, i8 noundef zeroext 8, i16 noundef signext 2) #7
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2, i8 noundef zeroext 1, i16 noundef signext 2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %27 = tail call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 0, i32 noundef 512, i32 noundef 0) #7
  %28 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 6
  store ptr %27, ptr %28, align 8, !tbaa !48
  %29 = load ptr, ptr %18, align 8, !tbaa !46
  %30 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %22, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2
  %33 = load float, ptr %30, align 4, !tbaa !49
  %34 = load float, ptr %32, align 4, !tbaa !49
  %35 = fsub float %33, %34
  %36 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2, i64 1
  %37 = load float, ptr %36, align 4, !tbaa !49
  %38 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !49
  %40 = fsub float %37, %39
  %41 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 2, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !49
  %43 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 2, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !49
  %45 = fsub float %42, %44
  %46 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 3
  %47 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 3, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !49
  %49 = getelementptr inbounds %struct.BMVert, ptr %29, i64 0, i32 3, i64 2
  %50 = load float, ptr %49, align 4, !tbaa !49
  %51 = fneg float %50
  %52 = fmul float %40, %51
  %53 = tail call float @llvm.fmuladd.f32(float %48, float %45, float %52)
  %54 = load float, ptr %46, align 4, !tbaa !49
  %55 = fneg float %54
  %56 = fmul float %45, %55
  %57 = tail call float @llvm.fmuladd.f32(float %50, float %35, float %56)
  %58 = fneg float %48
  %59 = fmul float %35, %58
  %60 = tail call float @llvm.fmuladd.f32(float %54, float %40, float %59)
  %61 = fneg float %60
  %62 = fmul float %40, %61
  %63 = tail call float @llvm.fmuladd.f32(float %57, float %45, float %62)
  %64 = fneg float %53
  %65 = fmul float %45, %64
  %66 = tail call float @llvm.fmuladd.f32(float %60, float %35, float %65)
  %67 = fneg float %57
  %68 = fmul float %35, %67
  %69 = tail call float @llvm.fmuladd.f32(float %53, float %40, float %68)
  %70 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 3
  %71 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 3, i64 1
  %72 = load float, ptr %71, align 4, !tbaa !49
  %73 = getelementptr inbounds %struct.BMVert, ptr %31, i64 0, i32 3, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !49
  %75 = fneg float %74
  %76 = fmul float %40, %75
  %77 = tail call float @llvm.fmuladd.f32(float %72, float %45, float %76)
  %78 = load float, ptr %70, align 4, !tbaa !49
  %79 = fneg float %78
  %80 = fmul float %45, %79
  %81 = tail call float @llvm.fmuladd.f32(float %74, float %35, float %80)
  %82 = fneg float %72
  %83 = fmul float %35, %82
  %84 = tail call float @llvm.fmuladd.f32(float %78, float %40, float %83)
  %85 = fneg float %84
  %86 = fmul float %40, %85
  %87 = tail call float @llvm.fmuladd.f32(float %81, float %45, float %86)
  %88 = fneg float %77
  %89 = fmul float %45, %88
  %90 = tail call float @llvm.fmuladd.f32(float %84, float %35, float %89)
  %91 = fneg float %81
  %92 = fmul float %35, %91
  %93 = tail call float @llvm.fmuladd.f32(float %77, float %40, float %92)
  %94 = fmul float %66, %66
  %95 = tail call float @llvm.fmuladd.f32(float %63, float %63, float %94)
  %96 = tail call float @llvm.fmuladd.f32(float %69, float %69, float %95)
  %97 = fcmp ogt float %96, 0x38AA95A5C0000000
  br i1 %97, label %98, label %104

98:                                               ; preds = %26
  %99 = tail call float @sqrtf(float noundef %96) #7
  %100 = fdiv float 1.000000e+00, %99
  %101 = fmul float %63, %100
  %102 = fmul float %66, %100
  %103 = fmul float %69, %100
  br label %104

104:                                              ; preds = %26, %98
  %105 = phi float [ %102, %98 ], [ 0.000000e+00, %26 ]
  %106 = phi float [ %101, %98 ], [ 0.000000e+00, %26 ]
  %107 = phi float [ %103, %98 ], [ 0.000000e+00, %26 ]
  %108 = fmul float %90, %90
  %109 = tail call float @llvm.fmuladd.f32(float %87, float %87, float %108)
  %110 = tail call float @llvm.fmuladd.f32(float %93, float %93, float %109)
  %111 = fcmp ogt float %110, 0x38AA95A5C0000000
  br i1 %111, label %112, label %118

112:                                              ; preds = %104
  %113 = tail call float @sqrtf(float noundef %110) #7
  %114 = fdiv float 1.000000e+00, %113
  %115 = fmul float %87, %114
  %116 = fmul float %90, %114
  %117 = fmul float %93, %114
  br label %118

118:                                              ; preds = %104, %112
  %119 = phi float [ %116, %112 ], [ 0.000000e+00, %104 ]
  %120 = phi float [ %115, %112 ], [ 0.000000e+00, %104 ]
  %121 = phi float [ %117, %112 ], [ 0.000000e+00, %104 ]
  %122 = fmul float %105, %119
  %123 = tail call float @llvm.fmuladd.f32(float %106, float %120, float %122)
  %124 = tail call float @llvm.fmuladd.f32(float %107, float %121, float %123)
  %125 = fcmp olt float %124, 0.000000e+00
  %126 = fneg float %120
  %127 = fneg float %119
  %128 = fneg float %121
  %129 = select i1 %125, float %128, float %121
  %130 = select i1 %125, float %127, float %119
  %131 = select i1 %125, float %126, float %120
  %132 = fadd float %106, %131
  %133 = fadd float %105, %130
  %134 = fadd float %107, %129
  %135 = fneg float %45
  %136 = fmul float %133, %135
  %137 = tail call float @llvm.fmuladd.f32(float %40, float %134, float %136)
  %138 = fneg float %35
  %139 = fmul float %134, %138
  %140 = tail call float @llvm.fmuladd.f32(float %45, float %132, float %139)
  %141 = fneg float %40
  %142 = fmul float %132, %141
  %143 = tail call float @llvm.fmuladd.f32(float %35, float %133, float %142)
  %144 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 1
  %145 = fmul float %140, %140
  %146 = tail call float @llvm.fmuladd.f32(float %137, float %137, float %145)
  %147 = tail call float @llvm.fmuladd.f32(float %143, float %143, float %146)
  %148 = fcmp ogt float %147, 0x38AA95A5C0000000
  br i1 %148, label %149, label %156

149:                                              ; preds = %118
  %150 = tail call float @sqrtf(float noundef %147) #7
  %151 = fdiv float 1.000000e+00, %150
  %152 = fmul float %137, %151
  store float %152, ptr %144, align 8, !tbaa !49
  %153 = fmul float %140, %151
  %154 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 1, i64 0, i64 1
  store float %153, ptr %154, align 4, !tbaa !49
  %155 = fmul float %143, %151
  br label %158

156:                                              ; preds = %118
  store float 0.000000e+00, ptr %144, align 8, !tbaa !49
  %157 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 1, i64 0, i64 1
  store float 0.000000e+00, ptr %157, align 4, !tbaa !49
  br label %158

158:                                              ; preds = %149, %156
  %159 = phi float [ %155, %149 ], [ 0.000000e+00, %156 ]
  %160 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 1, i64 0, i64 2
  store float %159, ptr %160, align 8, !tbaa !49
  %161 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 1, i64 1
  %162 = fmul float %40, %40
  %163 = tail call float @llvm.fmuladd.f32(float %35, float %35, float %162)
  %164 = tail call float @llvm.fmuladd.f32(float %45, float %45, float %163)
  %165 = fcmp ogt float %164, 0x38AA95A5C0000000
  br i1 %165, label %166, label %173

166:                                              ; preds = %158
  %167 = tail call float @sqrtf(float noundef %164) #7
  %168 = fdiv float 1.000000e+00, %167
  %169 = fmul float %35, %168
  store float %169, ptr %161, align 4, !tbaa !49
  %170 = fmul float %40, %168
  %171 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 1, i64 1, i64 1
  store float %170, ptr %171, align 8, !tbaa !49
  %172 = fmul float %45, %168
  br label %175

173:                                              ; preds = %158
  store float 0.000000e+00, ptr %161, align 4, !tbaa !49
  %174 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 1, i64 1, i64 1
  store float 0.000000e+00, ptr %174, align 8, !tbaa !49
  br label %175

175:                                              ; preds = %166, %173
  %176 = phi float [ %172, %166 ], [ 0.000000e+00, %173 ]
  %177 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 1, i64 1, i64 2
  store float %176, ptr %177, align 4, !tbaa !49
  %178 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 1, i64 2
  %179 = fmul float %133, %133
  %180 = tail call float @llvm.fmuladd.f32(float %132, float %132, float %179)
  %181 = tail call float @llvm.fmuladd.f32(float %134, float %134, float %180)
  %182 = fcmp ogt float %181, 0x38AA95A5C0000000
  br i1 %182, label %183, label %190

183:                                              ; preds = %175
  %184 = tail call float @sqrtf(float noundef %181) #7
  %185 = fdiv float 1.000000e+00, %184
  %186 = fmul float %132, %185
  store float %186, ptr %178, align 8, !tbaa !49
  %187 = fmul float %133, %185
  %188 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 1, i64 2, i64 1
  store float %187, ptr %188, align 4, !tbaa !49
  %189 = fmul float %134, %185
  br label %192

190:                                              ; preds = %175
  store float 0.000000e+00, ptr %178, align 8, !tbaa !49
  %191 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 1, i64 2, i64 1
  store float 0.000000e+00, ptr %191, align 4, !tbaa !49
  br label %192

192:                                              ; preds = %183, %190
  %193 = phi float [ %189, %183 ], [ 0.000000e+00, %190 ]
  %194 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 1, i64 2, i64 2
  store float %193, ptr %194, align 8, !tbaa !49
  %195 = call zeroext i8 @invert_m3(ptr noundef nonnull %144) #7
  %196 = load ptr, ptr %18, align 8, !tbaa !46
  %197 = getelementptr inbounds %struct.BMVert, ptr %196, i64 0, i32 2
  %198 = load float, ptr %144, align 8, !tbaa !49
  %199 = load float, ptr %197, align 4, !tbaa !49
  %200 = load float, ptr %161, align 4, !tbaa !49
  %201 = getelementptr inbounds %struct.BMVert, ptr %196, i64 0, i32 2, i64 1
  %202 = load float, ptr %201, align 4, !tbaa !49
  %203 = fmul float %200, %202
  %204 = call float @llvm.fmuladd.f32(float %198, float %199, float %203)
  %205 = load float, ptr %178, align 8, !tbaa !49
  %206 = getelementptr inbounds %struct.BMVert, ptr %196, i64 0, i32 2, i64 2
  %207 = load float, ptr %206, align 4, !tbaa !49
  %208 = call float @llvm.fmuladd.f32(float %205, float %207, float %204)
  %209 = getelementptr inbounds %struct.PathContext, ptr %7, i64 0, i32 2
  store float %208, ptr %209, align 4, !tbaa !50
  %210 = load ptr, ptr @MEM_callocN, align 8, !tbaa !45
  %211 = call ptr %210(i64 noundef 40, ptr noundef nonnull @__func__.bmo_connect_vert_pair_exec) #7
  call void @BLI_addtail(ptr noundef nonnull %7, ptr noundef %211) #7
  %212 = load ptr, ptr %18, align 8, !tbaa !46
  call fastcc void @state_link_add(ptr noundef nonnull %7, ptr noundef %211, ptr noundef %212, ptr noundef null)
  %213 = load ptr, ptr %7, align 8, !tbaa !51
  %214 = icmp eq ptr %213, null
  br i1 %214, label %481, label %215

215:                                              ; preds = %192
  %216 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %217 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %218 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  %219 = getelementptr inbounds %struct.PathLinkState, ptr %3, i64 0, i32 2
  %220 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %221 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %222 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %223 = getelementptr inbounds %struct.PathLinkState, ptr %3, i64 0, i32 2
  %224 = getelementptr inbounds %struct.PathLinkState, ptr %3, i64 0, i32 2
  %225 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %226 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %227 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  %228 = getelementptr inbounds %struct.PathLinkState, ptr %3, i64 0, i32 2
  %229 = getelementptr inbounds %struct.PathLinkState, ptr %3, i64 0, i32 2
  br label %230

230:                                              ; preds = %473, %215
  %231 = phi i8 [ 1, %215 ], [ %474, %473 ]
  %232 = phi float [ -1.000000e+00, %215 ], [ %470, %473 ]
  %233 = phi ptr [ %213, %215 ], [ %475, %473 ]
  %234 = load ptr, ptr %233, align 8, !tbaa !52
  %235 = getelementptr inbounds %struct.PathLinkState, ptr %233, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !54
  %237 = getelementptr inbounds %struct.PathLink, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !55
  %239 = load ptr, ptr %22, align 8, !tbaa !47
  %240 = icmp eq ptr %238, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %230
  %242 = fcmp oeq float %232, -1.000000e+00
  br i1 %242, label %247, label %243

243:                                              ; preds = %241
  %244 = getelementptr inbounds %struct.PathLinkState, ptr %233, i64 0, i32 3
  %245 = load float, ptr %244, align 8, !tbaa !57
  %246 = fcmp ogt float %232, %245
  br i1 %246, label %247, label %469

247:                                              ; preds = %243, %241
  %248 = getelementptr inbounds %struct.PathLinkState, ptr %233, i64 0, i32 3
  %249 = load float, ptr %248, align 8, !tbaa !57
  br label %469

250:                                              ; preds = %230
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(40) %233, i64 40, i1 false), !tbaa.struct !58
  %251 = getelementptr inbounds %struct.PathLink, ptr %236, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !59
  %253 = getelementptr inbounds %struct.BMHeader, ptr %238, i64 0, i32 2
  %254 = load i8, ptr %253, align 4, !tbaa !60
  switch i8 %254, label %453 [
    i8 2, label %255
    i8 1, label %308
  ]

255:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  store i8 14, ptr %225, align 4, !tbaa !63
  store ptr @bmiter__loop_of_edge_begin, ptr %226, align 8, !tbaa !65
  store ptr @bmiter__loop_of_edge_step, ptr %227, align 8, !tbaa !66
  store ptr %238, ptr %4, align 8, !tbaa !44
  call void @bmiter__loop_of_edge_begin(ptr noundef nonnull %4) #7
  %256 = load ptr, ptr %227, align 8, !tbaa !66
  %257 = call ptr %256(ptr noundef nonnull %4) #7
  %258 = icmp eq ptr %257, null
  br i1 %258, label %306, label %259

259:                                              ; preds = %255, %301
  %260 = phi ptr [ %302, %301 ], [ %233, %255 ]
  %261 = phi ptr [ %304, %301 ], [ %257, %255 ]
  %262 = getelementptr inbounds %struct.BMLoop, ptr %261, i64 0, i32 3
  %263 = load ptr, ptr %262, align 8, !tbaa !67
  %264 = icmp eq ptr %263, %252
  br i1 %264, label %301, label %265

265:                                              ; preds = %259
  %266 = load ptr, ptr %14, align 8, !tbaa !40
  %267 = getelementptr inbounds %struct.BMFace, ptr %263, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !69
  %269 = getelementptr inbounds %struct.BMesh, ptr %266, i64 0, i32 22
  %270 = load i32, ptr %269, align 8, !tbaa !72
  %271 = sext i32 %270 to i64
  %272 = getelementptr %struct.BMFlagLayer, ptr %268, i64 %271
  %273 = getelementptr %struct.BMFlagLayer, ptr %272, i64 -1
  %274 = load i16, ptr %273, align 2, !tbaa !75
  %275 = and i16 %274, 2
  %276 = icmp eq i16 %275, 0
  br i1 %276, label %277, label %301

277:                                              ; preds = %265
  %278 = load ptr, ptr %22, align 8, !tbaa !47
  %279 = call zeroext i8 @BM_vert_in_face(ptr noundef %263, ptr noundef %278) #7
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %293, label %281

281:                                              ; preds = %277
  %282 = load ptr, ptr %228, align 8, !tbaa !54
  %283 = getelementptr inbounds %struct.PathLinkState, ptr %260, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !54
  %285 = icmp eq ptr %282, %284
  br i1 %285, label %289, label %286

286:                                              ; preds = %281
  %287 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %288 = call ptr %287(i64 noundef 40, ptr noundef nonnull @__func__.state_dupe_add) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %288, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !58
  call void @BLI_addhead(ptr noundef nonnull %7, ptr noundef %288) #7
  br label %289

289:                                              ; preds = %286, %281
  %290 = phi ptr [ %288, %286 ], [ %260, %281 ]
  %291 = load ptr, ptr %22, align 8, !tbaa !47
  %292 = load ptr, ptr %262, align 8, !tbaa !67
  call fastcc void @state_link_add(ptr noundef nonnull %7, ptr noundef %290, ptr noundef %291, ptr noundef %292)
  br label %301

293:                                              ; preds = %277
  %294 = getelementptr inbounds %struct.BMLoop, ptr %261, i64 0, i32 6
  %295 = load ptr, ptr %294, align 8, !tbaa !77
  %296 = call fastcc ptr @state_step__face_edges(ptr noundef nonnull %7, ptr noundef %260, ptr noundef nonnull %3, ptr noundef %295, ptr noundef nonnull %261)
  %297 = load ptr, ptr %294, align 8, !tbaa !77
  %298 = getelementptr inbounds %struct.BMLoop, ptr %297, i64 0, i32 6
  %299 = load ptr, ptr %298, align 8, !tbaa !77
  %300 = call fastcc ptr @state_step__face_verts(ptr noundef nonnull %7, ptr noundef %296, ptr noundef nonnull %3, ptr noundef %299, ptr noundef nonnull %261)
  br label %301

301:                                              ; preds = %293, %289, %265, %259
  %302 = phi ptr [ %290, %289 ], [ %300, %293 ], [ %260, %265 ], [ %260, %259 ]
  %303 = load ptr, ptr %227, align 8, !tbaa !66
  %304 = call ptr %303(ptr noundef nonnull %4) #7
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %259, !llvm.loop !78

306:                                              ; preds = %301, %255
  %307 = phi ptr [ %233, %255 ], [ %302, %301 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  br label %453

308:                                              ; preds = %250
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #7
  store i8 6, ptr %216, align 4, !tbaa !63
  store ptr @bmiter__loop_of_vert_begin, ptr %217, align 8, !tbaa !65
  store ptr @bmiter__loop_of_vert_step, ptr %218, align 8, !tbaa !66
  store ptr %238, ptr %5, align 8, !tbaa !44
  call void @bmiter__loop_of_vert_begin(ptr noundef nonnull %5) #7
  %309 = load ptr, ptr %218, align 8, !tbaa !66
  %310 = call ptr %309(ptr noundef nonnull %5) #7
  %311 = icmp eq ptr %310, null
  br i1 %311, label %367, label %312

312:                                              ; preds = %308, %362
  %313 = phi ptr [ %363, %362 ], [ %233, %308 ]
  %314 = phi ptr [ %365, %362 ], [ %310, %308 ]
  %315 = getelementptr inbounds %struct.BMLoop, ptr %314, i64 0, i32 3
  %316 = load ptr, ptr %315, align 8, !tbaa !67
  %317 = icmp eq ptr %316, %252
  br i1 %317, label %362, label %318

318:                                              ; preds = %312
  %319 = load ptr, ptr %14, align 8, !tbaa !40
  %320 = getelementptr inbounds %struct.BMFace, ptr %316, i64 0, i32 1
  %321 = load ptr, ptr %320, align 8, !tbaa !69
  %322 = getelementptr inbounds %struct.BMesh, ptr %319, i64 0, i32 22
  %323 = load i32, ptr %322, align 8, !tbaa !72
  %324 = sext i32 %323 to i64
  %325 = getelementptr %struct.BMFlagLayer, ptr %321, i64 %324
  %326 = getelementptr %struct.BMFlagLayer, ptr %325, i64 -1
  %327 = load i16, ptr %326, align 2, !tbaa !75
  %328 = and i16 %327, 2
  %329 = icmp eq i16 %328, 0
  br i1 %329, label %330, label %362

330:                                              ; preds = %318
  %331 = load ptr, ptr %22, align 8, !tbaa !47
  %332 = call zeroext i8 @BM_vert_in_face(ptr noundef %316, ptr noundef %331) #7
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %346, label %334

334:                                              ; preds = %330
  %335 = load ptr, ptr %22, align 8, !tbaa !47
  %336 = load ptr, ptr %315, align 8, !tbaa !67
  %337 = load ptr, ptr %219, align 8, !tbaa !54
  %338 = getelementptr inbounds %struct.PathLinkState, ptr %313, i64 0, i32 2
  %339 = load ptr, ptr %338, align 8, !tbaa !54
  %340 = icmp eq ptr %337, %339
  br i1 %340, label %344, label %341

341:                                              ; preds = %334
  %342 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %343 = call ptr %342(i64 noundef 40, ptr noundef nonnull @__func__.state_dupe_add) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %343, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !58
  call void @BLI_addhead(ptr noundef nonnull %7, ptr noundef %343) #7
  br label %344

344:                                              ; preds = %341, %334
  %345 = phi ptr [ %343, %341 ], [ %313, %334 ]
  call fastcc void @state_link_add(ptr noundef nonnull %7, ptr noundef %345, ptr noundef %335, ptr noundef %336)
  br label %362

346:                                              ; preds = %330
  %347 = getelementptr inbounds %struct.BMLoop, ptr %314, i64 0, i32 6
  %348 = load ptr, ptr %347, align 8, !tbaa !77
  %349 = getelementptr inbounds %struct.BMLoop, ptr %314, i64 0, i32 7
  %350 = load ptr, ptr %349, align 8, !tbaa !81
  %351 = call fastcc ptr @state_step__face_edges(ptr noundef nonnull %7, ptr noundef %313, ptr noundef nonnull %3, ptr noundef %348, ptr noundef %350)
  %352 = load ptr, ptr %315, align 8, !tbaa !67
  %353 = getelementptr inbounds %struct.BMFace, ptr %352, i64 0, i32 3
  %354 = load i32, ptr %353, align 8, !tbaa !82
  %355 = icmp sgt i32 %354, 3
  br i1 %355, label %356, label %362

356:                                              ; preds = %346
  %357 = load ptr, ptr %347, align 8, !tbaa !77
  %358 = getelementptr inbounds %struct.BMLoop, ptr %357, i64 0, i32 6
  %359 = load ptr, ptr %358, align 8, !tbaa !77
  %360 = load ptr, ptr %349, align 8, !tbaa !81
  %361 = call fastcc ptr @state_step__face_verts(ptr noundef nonnull %7, ptr noundef %351, ptr noundef nonnull %3, ptr noundef %359, ptr noundef %360)
  br label %362

362:                                              ; preds = %356, %346, %344, %318, %312
  %363 = phi ptr [ %345, %344 ], [ %361, %356 ], [ %351, %346 ], [ %313, %318 ], [ %313, %312 ]
  %364 = load ptr, ptr %218, align 8, !tbaa !66
  %365 = call ptr %364(ptr noundef nonnull %5) #7
  %366 = icmp eq ptr %365, null
  br i1 %366, label %367, label %312, !llvm.loop !83

367:                                              ; preds = %362, %308
  %368 = phi ptr [ %233, %308 ], [ %363, %362 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #7
  store i8 4, ptr %220, align 4, !tbaa !63
  store ptr @bmiter__edge_of_vert_begin, ptr %221, align 8, !tbaa !65
  store ptr @bmiter__edge_of_vert_step, ptr %222, align 8, !tbaa !66
  store ptr %238, ptr %6, align 8, !tbaa !44
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %6) #7
  %369 = load ptr, ptr %222, align 8, !tbaa !66
  %370 = call ptr %369(ptr noundef nonnull %6) #7
  %371 = icmp eq ptr %370, null
  br i1 %371, label %451, label %372

372:                                              ; preds = %367, %446
  %373 = phi ptr [ %447, %446 ], [ %368, %367 ]
  %374 = phi ptr [ %449, %446 ], [ %370, %367 ]
  %375 = getelementptr inbounds %struct.BMEdge, ptr %374, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !84
  %377 = icmp eq ptr %376, %238
  %378 = getelementptr inbounds %struct.BMEdge, ptr %374, i64 0, i32 3
  %379 = load ptr, ptr %378, align 8, !tbaa !87
  %380 = icmp eq ptr %379, %238
  %381 = select i1 %380, ptr %376, ptr null
  %382 = select i1 %377, ptr %379, ptr %381
  %383 = icmp eq ptr %374, %252
  br i1 %383, label %446, label %384

384:                                              ; preds = %372
  %385 = load ptr, ptr %14, align 8, !tbaa !40
  %386 = getelementptr inbounds %struct.BMVert, ptr %382, i64 0, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !88
  %388 = getelementptr inbounds %struct.BMesh, ptr %385, i64 0, i32 22
  %389 = load i32, ptr %388, align 8, !tbaa !72
  %390 = sext i32 %389 to i64
  %391 = getelementptr %struct.BMFlagLayer, ptr %387, i64 %390
  %392 = getelementptr %struct.BMFlagLayer, ptr %391, i64 -1
  %393 = load i16, ptr %392, align 2, !tbaa !75
  %394 = and i16 %393, 2
  %395 = icmp eq i16 %394, 0
  br i1 %395, label %396, label %446

396:                                              ; preds = %384
  %397 = load ptr, ptr %22, align 8, !tbaa !47
  %398 = icmp eq ptr %382, %397
  br i1 %398, label %399, label %409

399:                                              ; preds = %396
  %400 = load ptr, ptr %224, align 8, !tbaa !54
  %401 = getelementptr inbounds %struct.PathLinkState, ptr %373, i64 0, i32 2
  %402 = load ptr, ptr %401, align 8, !tbaa !54
  %403 = icmp eq ptr %400, %402
  br i1 %403, label %407, label %404

404:                                              ; preds = %399
  %405 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %406 = call ptr %405(i64 noundef 40, ptr noundef nonnull @__func__.state_dupe_add) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %406, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !58
  call void @BLI_addhead(ptr noundef nonnull %7, ptr noundef %406) #7
  br label %407

407:                                              ; preds = %404, %399
  %408 = phi ptr [ %406, %404 ], [ %373, %399 ]
  call fastcc void @state_link_add(ptr noundef nonnull %7, ptr noundef %408, ptr noundef %397, ptr noundef nonnull %374)
  br label %446

409:                                              ; preds = %396
  %410 = getelementptr inbounds %struct.BMVert, ptr %382, i64 0, i32 2
  %411 = load float, ptr %144, align 8, !tbaa !49
  %412 = load float, ptr %410, align 4, !tbaa !49
  %413 = load float, ptr %161, align 4, !tbaa !49
  %414 = getelementptr inbounds %struct.BMVert, ptr %382, i64 0, i32 2, i64 1
  %415 = load float, ptr %414, align 4, !tbaa !49
  %416 = fmul float %413, %415
  %417 = call float @llvm.fmuladd.f32(float %411, float %412, float %416)
  %418 = load float, ptr %178, align 8, !tbaa !49
  %419 = getelementptr inbounds %struct.BMVert, ptr %382, i64 0, i32 2, i64 2
  %420 = load float, ptr %419, align 4, !tbaa !49
  %421 = call float @llvm.fmuladd.f32(float %418, float %420, float %417)
  %422 = load float, ptr %209, align 4, !tbaa !50
  %423 = fsub float %421, %422
  %424 = call float @llvm.fabs.f32(float %423)
  %425 = fcmp ugt float %424, 0x3F1A36E2E0000000
  br i1 %425, label %446, label %426

426:                                              ; preds = %409
  %427 = getelementptr inbounds %struct.PathLinkState, ptr %373, i64 0, i32 2
  %428 = load ptr, ptr %427, align 8, !tbaa !54
  %429 = icmp eq ptr %428, null
  br i1 %429, label %438, label %430

430:                                              ; preds = %426, %435
  %431 = phi ptr [ %436, %435 ], [ %428, %426 ]
  %432 = getelementptr inbounds %struct.PathLink, ptr %431, i64 0, i32 1
  %433 = load ptr, ptr %432, align 8, !tbaa !55
  %434 = icmp eq ptr %433, %382
  br i1 %434, label %446, label %435

435:                                              ; preds = %430
  %436 = load ptr, ptr %431, align 8, !tbaa !90
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %430, !llvm.loop !91

438:                                              ; preds = %435, %426
  %439 = load ptr, ptr %223, align 8, !tbaa !54
  %440 = icmp eq ptr %439, %428
  br i1 %440, label %444, label %441

441:                                              ; preds = %438
  %442 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %443 = call ptr %442(i64 noundef 40, ptr noundef nonnull @__func__.state_dupe_add) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %443, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !58
  call void @BLI_addhead(ptr noundef nonnull %7, ptr noundef %443) #7
  br label %444

444:                                              ; preds = %441, %438
  %445 = phi ptr [ %443, %441 ], [ %373, %438 ]
  call fastcc void @state_link_add(ptr noundef nonnull %7, ptr noundef %445, ptr noundef %382, ptr noundef nonnull %374)
  br label %446

446:                                              ; preds = %430, %444, %409, %407, %384, %372
  %447 = phi ptr [ %408, %407 ], [ %373, %409 ], [ %373, %384 ], [ %373, %372 ], [ %445, %444 ], [ %373, %430 ]
  %448 = load ptr, ptr %222, align 8, !tbaa !66
  %449 = call ptr %448(ptr noundef nonnull %6) #7
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %372, !llvm.loop !92

451:                                              ; preds = %446, %367
  %452 = phi ptr [ %368, %367 ], [ %447, %446 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #7
  br label %453

453:                                              ; preds = %250, %306, %451
  %454 = phi ptr [ %307, %306 ], [ %452, %451 ], [ %233, %250 ]
  %455 = load ptr, ptr %229, align 8, !tbaa !54
  %456 = getelementptr inbounds %struct.PathLinkState, ptr %454, i64 0, i32 2
  %457 = load ptr, ptr %456, align 8, !tbaa !54
  %458 = icmp eq ptr %455, %457
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  br i1 %458, label %467, label %459

459:                                              ; preds = %453
  %460 = fcmp une float %232, -1.000000e+00
  br i1 %460, label %461, label %469

461:                                              ; preds = %459
  %462 = getelementptr inbounds %struct.PathLinkState, ptr %233, i64 0, i32 3
  %463 = load float, ptr %462, align 8, !tbaa !57
  %464 = fcmp ugt float %232, %463
  br i1 %464, label %469, label %465

465:                                              ; preds = %461
  call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %233) #7
  %466 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %466(ptr noundef nonnull %233) #7
  br label %469

467:                                              ; preds = %453
  call void @BLI_remlink(ptr noundef nonnull %7, ptr noundef nonnull %233) #7
  %468 = load ptr, ptr @MEM_freeN, align 8, !tbaa !45
  call void %468(ptr noundef nonnull %233) #7
  br label %469

469:                                              ; preds = %459, %461, %465, %247, %243, %467
  %470 = phi float [ %249, %247 ], [ %232, %243 ], [ %232, %467 ], [ %232, %465 ], [ %232, %461 ], [ %232, %459 ]
  %471 = phi i8 [ %231, %247 ], [ %231, %243 ], [ %231, %467 ], [ 0, %465 ], [ 0, %461 ], [ 0, %459 ]
  %472 = icmp eq ptr %234, null
  br i1 %472, label %476, label %473

473:                                              ; preds = %469, %476
  %474 = phi i8 [ %471, %469 ], [ 1, %476 ]
  %475 = phi ptr [ %234, %469 ], [ %478, %476 ]
  br label %230, !llvm.loop !93

476:                                              ; preds = %469
  %477 = icmp eq i8 %471, 0
  %478 = load ptr, ptr %7, align 8
  %479 = icmp ne ptr %478, null
  %480 = select i1 %477, i1 %479, i1 false
  br i1 %480, label %473, label %481

481:                                              ; preds = %476, %192
  %482 = phi i1 [ true, %192 ], [ %477, %476 ]
  %483 = load ptr, ptr %7, align 8, !tbaa !94
  %484 = icmp eq ptr %483, null
  %485 = or i1 %484, %482
  br i1 %485, label %564, label %486

486:                                              ; preds = %481
  %487 = load ptr, ptr %7, align 8, !tbaa !45, !nonnull !95, !noundef !95
  br label %488

488:                                              ; preds = %486, %500
  %489 = phi ptr [ %503, %500 ], [ %487, %486 ]
  %490 = phi float [ %502, %500 ], [ 0x47EFFFFFE0000000, %486 ]
  %491 = phi ptr [ %501, %500 ], [ null, %486 ]
  %492 = icmp eq ptr %491, null
  br i1 %492, label %497, label %493

493:                                              ; preds = %488
  %494 = getelementptr inbounds %struct.PathLinkState, ptr %489, i64 0, i32 3
  %495 = load float, ptr %494, align 8, !tbaa !57
  %496 = fcmp olt float %495, %490
  br i1 %496, label %497, label %500

497:                                              ; preds = %493, %488
  %498 = getelementptr inbounds %struct.PathLinkState, ptr %489, i64 0, i32 3
  %499 = load float, ptr %498, align 8, !tbaa !57
  br label %500

500:                                              ; preds = %493, %497
  %501 = phi ptr [ %489, %497 ], [ %491, %493 ]
  %502 = phi float [ %499, %497 ], [ %490, %493 ]
  %503 = load ptr, ptr %489, align 8, !tbaa !45
  %504 = icmp eq ptr %503, null
  br i1 %504, label %505, label %488, !llvm.loop !96

505:                                              ; preds = %500
  %506 = getelementptr inbounds %struct.PathLinkState, ptr %501, i64 0, i32 2
  %507 = load ptr, ptr %506, align 8, !tbaa !54
  %508 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %509

509:                                              ; preds = %561, %505
  %510 = phi ptr [ %507, %505 ], [ %562, %561 ]
  %511 = getelementptr inbounds %struct.PathLink, ptr %510, i64 0, i32 1
  %512 = load ptr, ptr %511, align 8, !tbaa !55
  %513 = getelementptr inbounds %struct.BMHeader, ptr %512, i64 0, i32 2
  %514 = load i8, ptr %513, align 4, !tbaa !60
  switch i8 %514, label %561 [
    i8 2, label %515
    i8 1, label %551
  ]

515:                                              ; preds = %509
  %516 = getelementptr inbounds %struct.BMEdge, ptr %512, i64 0, i32 2
  %517 = load ptr, ptr %516, align 8, !tbaa !84
  %518 = getelementptr inbounds %struct.BMVert, ptr %517, i64 0, i32 2
  %519 = getelementptr inbounds %struct.BMEdge, ptr %512, i64 0, i32 3
  %520 = load ptr, ptr %519, align 8, !tbaa !87
  %521 = getelementptr inbounds %struct.BMVert, ptr %520, i64 0, i32 2
  %522 = load float, ptr %144, align 8, !tbaa !49
  %523 = load float, ptr %518, align 4, !tbaa !49
  %524 = load float, ptr %161, align 4, !tbaa !49
  %525 = getelementptr inbounds %struct.BMVert, ptr %517, i64 0, i32 2, i64 1
  %526 = load float, ptr %525, align 4, !tbaa !49
  %527 = fmul float %524, %526
  %528 = call float @llvm.fmuladd.f32(float %522, float %523, float %527)
  %529 = load float, ptr %178, align 8, !tbaa !49
  %530 = getelementptr inbounds %struct.BMVert, ptr %517, i64 0, i32 2, i64 2
  %531 = load float, ptr %530, align 4, !tbaa !49
  %532 = call float @llvm.fmuladd.f32(float %529, float %531, float %528)
  %533 = load float, ptr %209, align 4, !tbaa !50
  %534 = fsub float %532, %533
  %535 = call float @llvm.fabs.f32(float %534)
  %536 = load float, ptr %521, align 4, !tbaa !49
  %537 = getelementptr inbounds %struct.BMVert, ptr %520, i64 0, i32 2, i64 1
  %538 = load float, ptr %537, align 4, !tbaa !49
  %539 = fmul float %524, %538
  %540 = call float @llvm.fmuladd.f32(float %522, float %536, float %539)
  %541 = getelementptr inbounds %struct.BMVert, ptr %520, i64 0, i32 2, i64 2
  %542 = load float, ptr %541, align 4, !tbaa !49
  %543 = call float @llvm.fmuladd.f32(float %529, float %542, float %540)
  %544 = fsub float %543, %533
  %545 = call float @llvm.fabs.f32(float %544)
  %546 = fadd float %535, %545
  %547 = fcmp ogt float %546, 0x3E80000000000000
  %548 = fdiv float %535, %546
  %549 = select i1 %547, float %548, float 5.000000e-01
  %550 = call ptr @BM_edge_split(ptr noundef %0, ptr noundef %512, ptr noundef %517, ptr noundef null, float noundef %549) #7
  br label %551

551:                                              ; preds = %509, %515
  %552 = phi ptr [ %550, %515 ], [ %512, %509 ]
  %553 = getelementptr inbounds %struct.BMVert, ptr %552, i64 0, i32 1
  %554 = load ptr, ptr %553, align 8, !tbaa !88
  %555 = load i32, ptr %508, align 8, !tbaa !72
  %556 = sext i32 %555 to i64
  %557 = getelementptr %struct.BMFlagLayer, ptr %554, i64 %556
  %558 = getelementptr %struct.BMFlagLayer, ptr %557, i64 -1
  %559 = load i16, ptr %558, align 2, !tbaa !75
  %560 = or i16 %559, 1
  store i16 %560, ptr %558, align 2, !tbaa !75
  br label %561

561:                                              ; preds = %551, %509
  %562 = load ptr, ptr %510, align 8, !tbaa !90
  %563 = icmp eq ptr %562, null
  br i1 %563, label %564, label %509, !llvm.loop !97

564:                                              ; preds = %561, %481
  %565 = load ptr, ptr %18, align 8, !tbaa !46
  %566 = getelementptr inbounds %struct.BMVert, ptr %565, i64 0, i32 1
  %567 = load ptr, ptr %566, align 8, !tbaa !88
  %568 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %569 = load i32, ptr %568, align 8, !tbaa !72
  %570 = sext i32 %569 to i64
  %571 = getelementptr %struct.BMFlagLayer, ptr %567, i64 %570
  %572 = getelementptr %struct.BMFlagLayer, ptr %571, i64 -1
  %573 = load i16, ptr %572, align 2, !tbaa !75
  %574 = or i16 %573, 1
  store i16 %574, ptr %572, align 2, !tbaa !75
  %575 = load ptr, ptr %22, align 8, !tbaa !47
  %576 = getelementptr inbounds %struct.BMVert, ptr %575, i64 0, i32 1
  %577 = load ptr, ptr %576, align 8, !tbaa !88
  %578 = getelementptr %struct.BMFlagLayer, ptr %577, i64 %570
  %579 = getelementptr %struct.BMFlagLayer, ptr %578, i64 -1
  %580 = load i16, ptr %579, align 2, !tbaa !75
  %581 = or i16 %580, 1
  store i16 %581, ptr %579, align 2, !tbaa !75
  %582 = load ptr, ptr %28, align 8, !tbaa !48
  call void @BLI_mempool_destroy(ptr noundef %582) #7
  call void @BLI_freelistN(ptr noundef nonnull %7) #7
  br i1 %485, label %589, label %583

583:                                              ; preds = %564
  call void @llvm.lifetime.start.p0(i64 1312, ptr nonnull %8) #7
  %584 = call zeroext i8 (ptr, ptr, i32, ptr, ...) @BMO_op_initf(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull @.str.3, i32 noundef 1, ptr noundef %1, ptr noundef nonnull @.str.1) #7
  call void @BMO_op_exec(ptr noundef %0, ptr noundef nonnull %8) #7
  %585 = getelementptr inbounds %struct.BMOperator, ptr %8, i64 0, i32 1
  %586 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  %587 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 3
  %588 = load ptr, ptr %587, align 8, !tbaa !98
  call void @_bmo_slot_copy(ptr noundef nonnull %585, ptr noundef nonnull @.str.4, ptr noundef nonnull %586, ptr noundef nonnull @.str.4, ptr noundef %588) #7
  call void @BMO_op_finish(ptr noundef %0, ptr noundef nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 1312, ptr nonnull %8) #7
  br label %589

589:                                              ; preds = %564, %583, %13, %2
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BMO_slot_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @invert_m3(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @state_link_add(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca [3 x float], align 4
  %6 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = tail call ptr @BLI_mempool_alloc(ptr noundef %7) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  %9 = getelementptr inbounds %struct.BMHeader, ptr %2, i64 0, i32 2
  %10 = load i8, ptr %9, align 4, !tbaa !60
  switch i8 %10, label %59 [
    i8 1, label %11
    i8 2, label %20
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2
  %13 = load float, ptr %12, align 4, !tbaa !49
  store float %13, ptr %5, align 4, !tbaa !49
  %14 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !49
  %16 = getelementptr inbounds float, ptr %5, i64 1
  store float %15, ptr %16, align 4, !tbaa !49
  %17 = getelementptr inbounds %struct.BMVert, ptr %2, i64 0, i32 2, i64 2
  %18 = load float, ptr %17, align 4, !tbaa !49
  %19 = getelementptr inbounds float, ptr %5, i64 2
  store float %18, ptr %19, align 4, !tbaa !49
  br label %59

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !84
  %23 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2
  %24 = getelementptr inbounds %struct.BMEdge, ptr %2, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !87
  %26 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2
  %27 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 1
  %28 = load float, ptr %27, align 4, !tbaa !49
  %29 = load float, ptr %23, align 4, !tbaa !49
  %30 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 1, i64 1
  %31 = load float, ptr %30, align 4, !tbaa !49
  %32 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !49
  %34 = fmul float %31, %33
  %35 = tail call float @llvm.fmuladd.f32(float %28, float %29, float %34)
  %36 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 1, i64 2
  %37 = load float, ptr %36, align 4, !tbaa !49
  %38 = getelementptr inbounds %struct.BMVert, ptr %22, i64 0, i32 2, i64 2
  %39 = load float, ptr %38, align 4, !tbaa !49
  %40 = tail call float @llvm.fmuladd.f32(float %37, float %39, float %35)
  %41 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 2
  %42 = load float, ptr %41, align 4, !tbaa !50
  %43 = fsub float %40, %42
  %44 = tail call float @llvm.fabs.f32(float %43)
  %45 = load float, ptr %26, align 4, !tbaa !49
  %46 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !49
  %48 = fmul float %31, %47
  %49 = tail call float @llvm.fmuladd.f32(float %28, float %45, float %48)
  %50 = getelementptr inbounds %struct.BMVert, ptr %25, i64 0, i32 2, i64 2
  %51 = load float, ptr %50, align 4, !tbaa !49
  %52 = tail call float @llvm.fmuladd.f32(float %37, float %51, float %49)
  %53 = fsub float %52, %42
  %54 = tail call float @llvm.fabs.f32(float %53)
  %55 = fadd float %44, %54
  %56 = fcmp ogt float %55, 0x3E80000000000000
  %57 = fdiv float %44, %55
  %58 = select i1 %56, float %57, float 5.000000e-01
  call void @interp_v3_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %23, ptr noundef nonnull %26, float noundef %58) #7
  br label %59

59:                                               ; preds = %4, %20, %11
  %60 = icmp eq ptr %3, null
  br i1 %60, label %83, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.PathLinkState, ptr %1, i64 0, i32 4
  %63 = load float, ptr %5, align 4, !tbaa !49
  %64 = load float, ptr %62, align 4, !tbaa !49
  %65 = fsub float %63, %64
  %66 = getelementptr inbounds float, ptr %5, i64 1
  %67 = load float, ptr %66, align 4, !tbaa !49
  %68 = getelementptr inbounds %struct.PathLinkState, ptr %1, i64 0, i32 4, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !49
  %70 = fsub float %67, %69
  %71 = getelementptr inbounds float, ptr %5, i64 2
  %72 = load float, ptr %71, align 4, !tbaa !49
  %73 = getelementptr inbounds %struct.PathLinkState, ptr %1, i64 0, i32 4, i64 2
  %74 = load float, ptr %73, align 4, !tbaa !49
  %75 = fsub float %72, %74
  %76 = fmul float %70, %70
  %77 = call float @llvm.fmuladd.f32(float %65, float %65, float %76)
  %78 = call float @llvm.fmuladd.f32(float %75, float %75, float %77)
  %79 = call float @sqrtf(float noundef %78) #7
  %80 = getelementptr inbounds %struct.PathLinkState, ptr %1, i64 0, i32 3
  %81 = load float, ptr %80, align 8, !tbaa !57
  %82 = fadd float %79, %81
  store float %82, ptr %80, align 8, !tbaa !57
  br label %83

83:                                               ; preds = %61, %59
  %84 = getelementptr inbounds %struct.PathLinkState, ptr %1, i64 0, i32 4
  %85 = load float, ptr %5, align 4, !tbaa !49
  store float %85, ptr %84, align 4, !tbaa !49
  %86 = getelementptr inbounds float, ptr %5, i64 1
  %87 = load float, ptr %86, align 4, !tbaa !49
  %88 = getelementptr inbounds %struct.PathLinkState, ptr %1, i64 0, i32 4, i64 1
  store float %87, ptr %88, align 4, !tbaa !49
  %89 = getelementptr inbounds float, ptr %5, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !49
  %91 = getelementptr inbounds %struct.PathLinkState, ptr %1, i64 0, i32 4, i64 2
  store float %90, ptr %91, align 4, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  %92 = getelementptr inbounds %struct.PathLink, ptr %8, i64 0, i32 1
  store ptr %2, ptr %92, align 8, !tbaa !55
  %93 = getelementptr inbounds %struct.PathLink, ptr %8, i64 0, i32 2
  store ptr %3, ptr %93, align 8, !tbaa !59
  %94 = getelementptr inbounds %struct.PathLinkState, ptr %1, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !54
  store ptr %95, ptr %8, align 8, !tbaa !90
  store ptr %8, ptr %94, align 8, !tbaa !54
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_edge_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BMO_op_initf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @BMO_op_exec(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_bmo_slot_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_op_finish(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare zeroext i8 @BM_vert_in_face(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @state_step__face_edges(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef readnone %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 1, i64 1
  %8 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 1, i64 2
  %9 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.PathLinkState, ptr %2, i64 0, i32 2
  br label %12

12:                                               ; preds = %93, %5
  %13 = phi ptr [ %3, %5 ], [ %95, %93 ]
  %14 = phi ptr [ %1, %5 ], [ %94, %93 ]
  %15 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  %18 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = getelementptr inbounds %struct.BMLoop, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %23 = load float, ptr %6, align 4, !tbaa !49
  %24 = load float, ptr %17, align 4, !tbaa !49
  %25 = load float, ptr %7, align 4, !tbaa !49
  %26 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !49
  %28 = fmul float %25, %27
  %29 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %28)
  %30 = load float, ptr %8, align 4, !tbaa !49
  %31 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !49
  %33 = tail call float @llvm.fmuladd.f32(float %30, float %32, float %29)
  %34 = load float, ptr %9, align 4, !tbaa !50
  %35 = fsub float %33, %34
  %36 = load float, ptr %22, align 4, !tbaa !49
  %37 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2, i64 1
  %38 = load float, ptr %37, align 4, !tbaa !49
  %39 = fmul float %25, %38
  %40 = tail call float @llvm.fmuladd.f32(float %23, float %36, float %39)
  %41 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2, i64 2
  %42 = load float, ptr %41, align 4, !tbaa !49
  %43 = tail call float @llvm.fmuladd.f32(float %30, float %42, float %40)
  %44 = fsub float %43, %34
  %45 = tail call float @llvm.fabs.f32(float %35)
  %46 = fcmp olt float %45, 0x3F1A36E2E0000000
  %47 = fcmp olt float %35, 0.000000e+00
  %48 = tail call float @llvm.fabs.f32(float %44)
  %49 = fcmp olt float %48, 0x3F1A36E2E0000000
  %50 = fcmp uge float %44, 0.000000e+00
  %51 = select i1 %46, i1 true, i1 %49
  %52 = xor i1 %47, %50
  %53 = xor i1 %49, true
  %54 = select i1 %53, i1 %52, i1 false
  %55 = select i1 %46, i1 %49, i1 %54
  %56 = select i1 %51, i1 true, i1 %55
  br i1 %56, label %93, label %57

57:                                               ; preds = %12
  %58 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !101
  %60 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !67
  %62 = load ptr, ptr %10, align 8, !tbaa !40
  %63 = getelementptr inbounds %struct.BMFace, ptr %61, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !69
  %65 = getelementptr inbounds %struct.BMesh, ptr %62, i64 0, i32 22
  %66 = load i32, ptr %65, align 8, !tbaa !72
  %67 = sext i32 %66 to i64
  %68 = getelementptr %struct.BMFlagLayer, ptr %64, i64 %67
  %69 = getelementptr %struct.BMFlagLayer, ptr %68, i64 -1
  %70 = load i16, ptr %69, align 2, !tbaa !75
  %71 = and i16 %70, 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %57
  %74 = getelementptr inbounds %struct.PathLinkState, ptr %14, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !54
  %76 = icmp eq ptr %75, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %73, %82
  %78 = phi ptr [ %83, %82 ], [ %75, %73 ]
  %79 = getelementptr inbounds %struct.PathLink, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !55
  %81 = icmp eq ptr %80, %59
  br i1 %81, label %93, label %82

82:                                               ; preds = %77
  %83 = load ptr, ptr %78, align 8, !tbaa !90
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %77, !llvm.loop !91

85:                                               ; preds = %82, %73
  %86 = load ptr, ptr %11, align 8, !tbaa !54
  %87 = icmp eq ptr %86, %75
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %90 = tail call ptr %89(i64 noundef 40, ptr noundef nonnull @__func__.state_dupe_add) #7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %90, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !58
  tail call void @BLI_addhead(ptr noundef %0, ptr noundef %90) #7
  br label %91

91:                                               ; preds = %88, %85
  %92 = phi ptr [ %90, %88 ], [ %14, %85 ]
  tail call fastcc void @state_link_add(ptr noundef %0, ptr noundef %92, ptr noundef %59, ptr noundef %61)
  br label %93

93:                                               ; preds = %77, %57, %91, %12
  %94 = phi ptr [ %14, %12 ], [ %92, %91 ], [ %14, %57 ], [ %14, %77 ]
  %95 = load ptr, ptr %18, align 8, !tbaa !77
  %96 = icmp eq ptr %95, %4
  br i1 %96, label %97, label %12, !llvm.loop !102

97:                                               ; preds = %93
  ret ptr %94
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @state_step__face_verts(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef readnone %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 1, i64 1
  %8 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 1, i64 2
  %9 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %struct.PathContext, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.PathLinkState, ptr %2, i64 0, i32 2
  br label %12

12:                                               ; preds = %67, %5
  %13 = phi ptr [ %3, %5 ], [ %70, %67 ]
  %14 = phi ptr [ %1, %5 ], [ %68, %67 ]
  %15 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  %18 = load float, ptr %6, align 4, !tbaa !49
  %19 = load float, ptr %17, align 4, !tbaa !49
  %20 = load float, ptr %7, align 4, !tbaa !49
  %21 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2, i64 1
  %22 = load float, ptr %21, align 4, !tbaa !49
  %23 = fmul float %20, %22
  %24 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %23)
  %25 = load float, ptr %8, align 4, !tbaa !49
  %26 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !49
  %28 = tail call float @llvm.fmuladd.f32(float %25, float %27, float %24)
  %29 = load float, ptr %9, align 4, !tbaa !50
  %30 = fsub float %28, %29
  %31 = tail call float @llvm.fabs.f32(float %30)
  %32 = fcmp ugt float %31, 0x3F1A36E2E0000000
  br i1 %32, label %67, label %33

33:                                               ; preds = %12
  %34 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !67
  %36 = load ptr, ptr %10, align 8, !tbaa !40
  %37 = getelementptr inbounds %struct.BMFace, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !69
  %39 = getelementptr inbounds %struct.BMesh, ptr %36, i64 0, i32 22
  %40 = load i32, ptr %39, align 8, !tbaa !72
  %41 = sext i32 %40 to i64
  %42 = getelementptr %struct.BMFlagLayer, ptr %38, i64 %41
  %43 = getelementptr %struct.BMFlagLayer, ptr %42, i64 -1
  %44 = load i16, ptr %43, align 2, !tbaa !75
  %45 = and i16 %44, 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %33
  %48 = getelementptr inbounds %struct.PathLinkState, ptr %14, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !54
  %50 = icmp eq ptr %49, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %47, %56
  %52 = phi ptr [ %57, %56 ], [ %49, %47 ]
  %53 = getelementptr inbounds %struct.PathLink, ptr %52, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !55
  %55 = icmp eq ptr %54, %16
  br i1 %55, label %67, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %52, align 8, !tbaa !90
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %51, !llvm.loop !91

59:                                               ; preds = %56, %47
  %60 = load ptr, ptr %11, align 8, !tbaa !54
  %61 = icmp eq ptr %60, %49
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !45
  %64 = tail call ptr %63(i64 noundef 40, ptr noundef nonnull @__func__.state_dupe_add) #7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %64, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !58
  tail call void @BLI_addhead(ptr noundef %0, ptr noundef %64) #7
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi ptr [ %64, %62 ], [ %14, %59 ]
  tail call fastcc void @state_link_add(ptr noundef %0, ptr noundef %66, ptr noundef %16, ptr noundef %35)
  br label %67

67:                                               ; preds = %51, %33, %65, %12
  %68 = phi ptr [ %14, %12 ], [ %66, %65 ], [ %14, %33 ], [ %14, %51 ]
  %69 = getelementptr inbounds %struct.BMLoop, ptr %13, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !77
  %71 = icmp eq ptr %70, %4
  br i1 %71, label %72, label %12, !llvm.loop !103

72:                                               ; preds = %67
  ret ptr %68
}

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_vert_step(ptr noundef) #2

declare void @bmiter__loop_of_edge_begin(ptr noundef) #2

declare ptr @bmiter__loop_of_edge_step(ptr noundef) #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!34 = !{!35, !39, i64 16}
!35 = !{!"BMOpSlot", !36, i64 0, !39, i64 8, !37, i64 12, !39, i64 16, !37, i64 24}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!41, !36, i64 56}
!41 = !{!"PathContext", !42, i64 0, !37, i64 16, !43, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80}
!42 = !{!"ListBase", !36, i64 0, !36, i64 8}
!43 = !{!"float", !37, i64 0}
!44 = !{!37, !37, i64 0}
!45 = !{!36, !36, i64 0}
!46 = !{!41, !36, i64 64}
!47 = !{!41, !36, i64 72}
!48 = !{!41, !36, i64 80}
!49 = !{!43, !43, i64 0}
!50 = !{!41, !43, i64 52}
!51 = !{!41, !36, i64 0}
!52 = !{!53, !36, i64 0}
!53 = !{!"PathLinkState", !36, i64 0, !36, i64 8, !36, i64 16, !43, i64 24, !37, i64 28}
!54 = !{!53, !36, i64 16}
!55 = !{!56, !36, i64 8}
!56 = !{!"PathLink", !36, i64 0, !36, i64 8, !36, i64 16}
!57 = !{!53, !43, i64 24}
!58 = !{i64 0, i64 8, !45, i64 8, i64 8, !45, i64 16, i64 8, !45, i64 24, i64 4, !49, i64 28, i64 12, !44}
!59 = !{!56, !36, i64 16}
!60 = !{!61, !37, i64 12}
!61 = !{!"BMElem", !62, i64 0}
!62 = !{!"BMHeader", !36, i64 0, !39, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!63 = !{!64, !37, i64 60}
!64 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !39, i64 56, !37, i64 60}
!65 = !{!64, !36, i64 40}
!66 = !{!64, !36, i64 48}
!67 = !{!68, !36, i64 32}
!68 = !{!"BMLoop", !62, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!69 = !{!70, !36, i64 16}
!70 = !{!"BMFace", !62, i64 0, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 36, !71, i64 48}
!71 = !{!"short", !37, i64 0}
!72 = !{!73, !39, i64 128}
!73 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 136, !74, i64 144, !74, i64 344, !74, i64 544, !74, i64 744, !71, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !42, i64 960, !36, i64 976, !42, i64 984, !36, i64 1000}
!74 = !{!"CustomData", !36, i64 0, !37, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !36, i64 184, !36, i64 192}
!75 = !{!76, !71, i64 0}
!76 = !{!"BMFlagLayer", !71, i64 0}
!77 = !{!68, !36, i64 56}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!68, !36, i64 64}
!82 = !{!70, !39, i64 32}
!83 = distinct !{!83, !79, !80}
!84 = !{!85, !36, i64 24}
!85 = !{!"BMEdge", !62, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !86, i64 48, !86, i64 64}
!86 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!87 = !{!85, !36, i64 32}
!88 = !{!89, !36, i64 16}
!89 = !{!"BMVert", !62, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!90 = !{!56, !36, i64 0}
!91 = distinct !{!91, !79, !80}
!92 = distinct !{!92, !79, !80}
!93 = distinct !{!93, !79, !80}
!94 = !{!42, !36, i64 0}
!95 = !{}
!96 = distinct !{!96, !79, !80}
!97 = distinct !{!97, !79, !80}
!98 = !{!99, !36, i64 1288}
!99 = !{!"BMOperator", !37, i64 0, !37, i64 640, !36, i64 1280, !36, i64 1288, !39, i64 1296, !39, i64 1300, !39, i64 1304}
!100 = !{!68, !36, i64 16}
!101 = !{!68, !36, i64 24}
!102 = distinct !{!102, !79, !80}
!103 = distinct !{!103, !79, !80}
