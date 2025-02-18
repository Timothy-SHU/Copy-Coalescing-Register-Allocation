; ModuleID = 'blender/source/blender/render/intern/raytrace/rayobject_vbvh.cpp'
source_filename = "blender/source/blender/render/intern/raytrace/rayobject_vbvh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.RayObjectAPI = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VBVHTree = type { %struct.RayObject, ptr, ptr, float, ptr }
%struct.RayObject = type { ptr, %struct.RayObjectControl }
%struct.RayObjectControl = type { ptr, ptr }
%struct.Isect = type { [3 x float], [3 x float], float, [3 x float], [3 x float], [6 x i32], [3 x float], i32, i32, i32, i32, ptr, float, float, i32, %struct.anon, %struct.anon, ptr, ptr }
%struct.anon = type { ptr, ptr }
%struct.VBVHNode = type { [6 x float], ptr, ptr }
%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl" }
%"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl" = type { %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data" }
%"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%struct.BuildBinaryVBVH = type { ptr, ptr }
%struct.LCTSHint = type { i32, [256 x ptr] }
%struct.RTBuilder = type { %struct.anon.0, [3 x ptr], [3 x ptr], i32, [33 x i32], [6 x float] }
%struct.anon.0 = type { ptr, ptr, i32 }

$_ZN15BuildBinaryVBVHI8VBVHNodeE10_transformEP9RTBuilder = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE17_M_initialize_mapEm = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE15_M_create_nodesEPPS1_S5_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_ = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EE17_M_reallocate_mapEmb = comdat any

@tot_pushup = dso_local local_unnamed_addr global i32 0, align 4
@tot_pushdown = dso_local local_unnamed_addr global i32 0, align 4
@tot_hints = dso_local local_unnamed_addr global i32 0, align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"BVHTree\00", align 1
@_ZZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIiE10bvh_api256 = internal global %struct.RayObjectAPI zeroinitializer, align 8
@_ZGVZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIiE10bvh_api256 = internal global i64 0, align 8
@_ZZL8make_apiI8VBVHTreeLi1024EE12RayObjectAPIvE3api = internal unnamed_addr constant %struct.RayObjectAPI { ptr @_ZL9intersectILi1024EEiP8VBVHTreeP5Isect, ptr @_ZL7bvh_addI8VBVHTreeEvPT_P9RayObject, ptr @_ZL8bvh_doneI8VBVHTreeEvPT_, ptr @_ZL8bvh_freeI8VBVHTreeEvPT_, ptr @_ZL6bvh_bbI8VBVHTreeEvPT_PfS3_, ptr @_ZL8bvh_costI8VBVHTreeEfPT_, ptr @_ZL11bvh_hint_bbI8VBVHTreeEvPT_P8LCTSHintPfS5_ }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"vbvh arena\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Stop\00", align 1
@_ZTIPKc = external constant ptr
@.str.3 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress uwtable
define dso_local ptr @RE_rayobject_vbvh_create(i32 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %3 = tail call ptr %2(i64 noundef 56, ptr noundef nonnull @.str)
  %4 = load atomic i8, ptr @_ZGVZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIiE10bvh_api256 acquire, align 8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10, !prof !38

6:                                                ; preds = %1
  %7 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIiE10bvh_api256) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_ZZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIiE10bvh_api256, ptr noundef nonnull align 8 dereferenceable(56) @_ZZL8make_apiI8VBVHTreeLi1024EE12RayObjectAPIvE3api, i64 56, i1 false), !tbaa.struct !39
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIiE10bvh_api256) #14
  br label %10

10:                                               ; preds = %1, %6, %9
  store ptr @_ZZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIiE10bvh_api256, ptr %3, align 8, !tbaa !40
  %11 = getelementptr inbounds %struct.VBVHTree, ptr %3, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %12 = tail call ptr @rtbuild_create(i32 noundef %0)
  %13 = getelementptr inbounds %struct.VBVHTree, ptr %3, i64 0, i32 4
  store ptr %12, ptr %13, align 8, !tbaa !45
  %14 = ptrtoint ptr %3 to i64
  %15 = or i64 %14, 2
  %16 = inttoptr i64 %15 to ptr
  ret ptr %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @rtbuild_create(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9intersectILi1024EEiP8VBVHTreeP5Isect(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca [1024 x ptr], align 16
  %4 = alloca [1024 x ptr], align 16
  %5 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = ptrtoint ptr %6 to i64
  %8 = and i64 %7, 3
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %312

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !47
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.VBVHNode, ptr %6, i64 0, i32 1
  br i1 %13, label %15, label %165

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #14
  %16 = load ptr, ptr %14, align 8, !tbaa !51
  %17 = ptrtoint ptr %16 to i64
  %18 = and i64 %17, 3
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = icmp eq ptr %16, null
  br i1 %21, label %33, label %23

22:                                               ; preds = %15
  store ptr %16, ptr %4, align 16, !tbaa !34
  br label %33

23:                                               ; preds = %20, %23
  %24 = phi i64 [ %26, %23 ], [ 0, %20 ]
  %25 = phi ptr [ %29, %23 ], [ %16, %20 ]
  %26 = add nuw i64 %24, 1
  %27 = getelementptr inbounds ptr, ptr %4, i64 %24
  store ptr %25, ptr %27, align 8, !tbaa !34
  %28 = getelementptr inbounds %struct.VBVHNode, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !53
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %23, !llvm.loop !54

31:                                               ; preds = %23
  %32 = trunc i64 %26 to i32
  br label %33

33:                                               ; preds = %31, %20, %22
  %34 = phi i32 [ 1, %22 ], [ 0, %20 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5
  %36 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6
  %37 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 1
  %38 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 2
  %39 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %40 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6, i64 1
  %41 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 3
  %42 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 4
  %43 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %44 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6, i64 2
  %45 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 5
  %46 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 2
  br label %47

47:                                               ; preds = %158, %33
  %48 = phi i32 [ %34, %33 ], [ %159, %158 ]
  %49 = phi i32 [ 0, %33 ], [ %160, %158 ]
  %50 = phi i32 [ undef, %33 ], [ %161, %158 ]
  %51 = icmp eq i32 %48, 0
  br i1 %51, label %163, label %52

52:                                               ; preds = %47
  %53 = add nsw i32 %48, -1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1024 x ptr], ptr %4, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !34
  %57 = ptrtoint ptr %56 to i64
  %58 = and i64 %57, 3
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %151

60:                                               ; preds = %52
  %61 = load i32, ptr %35, align 4, !tbaa !57
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, ptr %56, i64 %62
  %64 = load float, ptr %63, align 4, !tbaa !58
  %65 = load float, ptr %1, align 8, !tbaa !58
  %66 = fsub float %64, %65
  %67 = load float, ptr %36, align 4, !tbaa !58
  %68 = fmul float %66, %67
  %69 = load i32, ptr %37, align 4, !tbaa !57
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds float, ptr %56, i64 %70
  %72 = load float, ptr %71, align 4, !tbaa !58
  %73 = fsub float %72, %65
  %74 = fmul float %67, %73
  %75 = load i32, ptr %38, align 4, !tbaa !57
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, ptr %56, i64 %76
  %78 = load float, ptr %77, align 4, !tbaa !58
  %79 = load float, ptr %39, align 4, !tbaa !58
  %80 = fsub float %78, %79
  %81 = load float, ptr %40, align 4, !tbaa !58
  %82 = fmul float %80, %81
  %83 = load i32, ptr %41, align 4, !tbaa !57
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, ptr %56, i64 %84
  %86 = load float, ptr %85, align 4, !tbaa !58
  %87 = fsub float %86, %79
  %88 = fmul float %81, %87
  %89 = load i32, ptr %42, align 4, !tbaa !57
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, ptr %56, i64 %90
  %92 = load float, ptr %91, align 4, !tbaa !58
  %93 = load float, ptr %43, align 8, !tbaa !58
  %94 = fsub float %92, %93
  %95 = load float, ptr %44, align 4, !tbaa !58
  %96 = fmul float %94, %95
  %97 = load i32, ptr %45, align 4, !tbaa !57
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, ptr %56, i64 %98
  %100 = load float, ptr %99, align 4, !tbaa !58
  %101 = fsub float %100, %93
  %102 = fmul float %95, %101
  %103 = fcmp ogt float %68, %88
  %104 = fcmp olt float %74, %82
  %105 = select i1 %103, i1 true, i1 %104
  %106 = fcmp ogt float %68, %102
  %107 = select i1 %105, i1 true, i1 %106
  %108 = fcmp olt float %74, %96
  %109 = select i1 %107, i1 true, i1 %108
  %110 = fcmp ogt float %82, %102
  %111 = select i1 %109, i1 true, i1 %110
  %112 = fcmp olt float %88, %96
  %113 = select i1 %111, i1 true, i1 %112
  br i1 %113, label %128, label %114

114:                                              ; preds = %60
  %115 = fcmp olt float %74, 0.000000e+00
  %116 = fcmp olt float %88, 0.000000e+00
  %117 = or i1 %115, %116
  %118 = fcmp olt float %102, 0.000000e+00
  %119 = select i1 %117, i1 true, i1 %118
  br i1 %119, label %128, label %120

120:                                              ; preds = %114
  %121 = load float, ptr %46, align 8, !tbaa !59
  %122 = fcmp ule float %68, %121
  %123 = fcmp ule float %82, %121
  %124 = select i1 %122, i1 %123, i1 false
  %125 = fcmp ule float %96, %121
  %126 = select i1 %124, i1 %125, i1 false
  %127 = zext i1 %126 to i32
  br label %128

128:                                              ; preds = %120, %114, %60
  %129 = phi i32 [ 0, %60 ], [ 0, %114 ], [ %127, %120 ]
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %158, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.VBVHNode, ptr %56, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !51
  %134 = ptrtoint ptr %133 to i64
  %135 = and i64 %134, 3
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %131
  %138 = icmp eq ptr %133, null
  br i1 %138, label %158, label %139

139:                                              ; preds = %137
  %140 = sext i32 %53 to i64
  br label %143

141:                                              ; preds = %131
  %142 = getelementptr inbounds ptr, ptr %4, i64 %54
  store ptr %133, ptr %142, align 8, !tbaa !34
  br label %158

143:                                              ; preds = %139, %143
  %144 = phi i64 [ %140, %139 ], [ %146, %143 ]
  %145 = phi ptr [ %133, %139 ], [ %149, %143 ]
  %146 = add i64 %144, 1
  %147 = getelementptr inbounds ptr, ptr %4, i64 %144
  store ptr %145, ptr %147, align 8, !tbaa !34
  %148 = getelementptr inbounds %struct.VBVHNode, ptr %145, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !53
  %150 = icmp eq ptr %149, null
  br i1 %150, label %156, label %143, !llvm.loop !54

151:                                              ; preds = %52
  %152 = tail call i32 @RE_rayobject_intersect(ptr noundef %56, ptr noundef %1)
  %153 = or i32 %152, %49
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  br label %158

156:                                              ; preds = %143
  %157 = trunc i64 %146 to i32
  br label %158

158:                                              ; preds = %156, %137, %155, %151, %141, %128
  %159 = phi i32 [ %53, %155 ], [ %53, %151 ], [ %53, %128 ], [ %48, %141 ], [ %53, %137 ], [ %157, %156 ]
  %160 = phi i32 [ 0, %155 ], [ %153, %151 ], [ %49, %128 ], [ %49, %141 ], [ %49, %137 ], [ %49, %156 ]
  %161 = phi i32 [ %50, %155 ], [ %153, %151 ], [ %50, %128 ], [ %50, %141 ], [ %50, %137 ], [ %50, %156 ]
  %162 = phi i1 [ true, %155 ], [ false, %151 ], [ true, %128 ], [ true, %141 ], [ true, %137 ], [ true, %156 ]
  br i1 %162, label %47, label %163, !llvm.loop !60

163:                                              ; preds = %47, %158
  %164 = phi i32 [ %161, %158 ], [ %49, %47 ]
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %4) #14
  br label %314

165:                                              ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #14
  %166 = load ptr, ptr %14, align 8, !tbaa !51
  %167 = ptrtoint ptr %166 to i64
  %168 = and i64 %167, 3
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = icmp eq ptr %166, null
  br i1 %171, label %183, label %173

172:                                              ; preds = %165
  store ptr %166, ptr %3, align 16, !tbaa !34
  br label %183

173:                                              ; preds = %170, %173
  %174 = phi i64 [ %176, %173 ], [ 0, %170 ]
  %175 = phi ptr [ %179, %173 ], [ %166, %170 ]
  %176 = add nuw i64 %174, 1
  %177 = getelementptr inbounds ptr, ptr %3, i64 %174
  store ptr %175, ptr %177, align 8, !tbaa !34
  %178 = getelementptr inbounds %struct.VBVHNode, ptr %175, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !53
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %173, !llvm.loop !54

181:                                              ; preds = %173
  %182 = trunc i64 %176 to i32
  br label %183

183:                                              ; preds = %181, %170, %172
  %184 = phi i32 [ 1, %172 ], [ 0, %170 ], [ %182, %181 ]
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %310, label %186

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5
  %188 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6
  %189 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 1
  %190 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 2
  %191 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 1
  %192 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6, i64 1
  %193 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 3
  %194 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 4
  %195 = getelementptr inbounds [3 x float], ptr %1, i64 0, i64 2
  %196 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 6, i64 2
  %197 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 5, i64 5
  %198 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 2
  br label %199

199:                                              ; preds = %186, %306
  %200 = phi i32 [ 0, %186 ], [ %308, %306 ]
  %201 = phi i32 [ %184, %186 ], [ %307, %306 ]
  %202 = add nsw i32 %201, -1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [1024 x ptr], ptr %3, i64 0, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !34
  %206 = ptrtoint ptr %205 to i64
  %207 = and i64 %206, 3
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %209, label %301

209:                                              ; preds = %199
  %210 = load i32, ptr %187, align 4, !tbaa !57
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds float, ptr %205, i64 %211
  %213 = load float, ptr %212, align 4, !tbaa !58
  %214 = load float, ptr %1, align 8, !tbaa !58
  %215 = fsub float %213, %214
  %216 = load float, ptr %188, align 4, !tbaa !58
  %217 = fmul float %215, %216
  %218 = load i32, ptr %189, align 4, !tbaa !57
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds float, ptr %205, i64 %219
  %221 = load float, ptr %220, align 4, !tbaa !58
  %222 = fsub float %221, %214
  %223 = fmul float %216, %222
  %224 = load i32, ptr %190, align 4, !tbaa !57
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds float, ptr %205, i64 %225
  %227 = load float, ptr %226, align 4, !tbaa !58
  %228 = load float, ptr %191, align 4, !tbaa !58
  %229 = fsub float %227, %228
  %230 = load float, ptr %192, align 4, !tbaa !58
  %231 = fmul float %229, %230
  %232 = load i32, ptr %193, align 4, !tbaa !57
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds float, ptr %205, i64 %233
  %235 = load float, ptr %234, align 4, !tbaa !58
  %236 = fsub float %235, %228
  %237 = fmul float %230, %236
  %238 = load i32, ptr %194, align 4, !tbaa !57
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds float, ptr %205, i64 %239
  %241 = load float, ptr %240, align 4, !tbaa !58
  %242 = load float, ptr %195, align 8, !tbaa !58
  %243 = fsub float %241, %242
  %244 = load float, ptr %196, align 4, !tbaa !58
  %245 = fmul float %243, %244
  %246 = load i32, ptr %197, align 4, !tbaa !57
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, ptr %205, i64 %247
  %249 = load float, ptr %248, align 4, !tbaa !58
  %250 = fsub float %249, %242
  %251 = fmul float %244, %250
  %252 = fcmp ogt float %217, %237
  %253 = fcmp olt float %223, %231
  %254 = select i1 %252, i1 true, i1 %253
  %255 = fcmp ogt float %217, %251
  %256 = select i1 %254, i1 true, i1 %255
  %257 = fcmp olt float %223, %245
  %258 = select i1 %256, i1 true, i1 %257
  %259 = fcmp ogt float %231, %251
  %260 = select i1 %258, i1 true, i1 %259
  %261 = fcmp olt float %237, %245
  %262 = select i1 %260, i1 true, i1 %261
  br i1 %262, label %277, label %263

263:                                              ; preds = %209
  %264 = fcmp olt float %223, 0.000000e+00
  %265 = fcmp olt float %237, 0.000000e+00
  %266 = or i1 %264, %265
  %267 = fcmp olt float %251, 0.000000e+00
  %268 = select i1 %266, i1 true, i1 %267
  br i1 %268, label %277, label %269

269:                                              ; preds = %263
  %270 = load float, ptr %198, align 8, !tbaa !59
  %271 = fcmp ule float %217, %270
  %272 = fcmp ule float %231, %270
  %273 = select i1 %271, i1 %272, i1 false
  %274 = fcmp ule float %245, %270
  %275 = select i1 %273, i1 %274, i1 false
  %276 = zext i1 %275 to i32
  br label %277

277:                                              ; preds = %269, %263, %209
  %278 = phi i32 [ 0, %209 ], [ 0, %263 ], [ %276, %269 ]
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %306, label %280

280:                                              ; preds = %277
  %281 = getelementptr inbounds %struct.VBVHNode, ptr %205, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !51
  %283 = ptrtoint ptr %282 to i64
  %284 = and i64 %283, 3
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %280
  %287 = icmp eq ptr %282, null
  br i1 %287, label %306, label %288

288:                                              ; preds = %286
  %289 = sext i32 %201 to i64
  %290 = add nsw i64 %289, -1
  br label %293

291:                                              ; preds = %280
  %292 = getelementptr inbounds ptr, ptr %3, i64 %203
  store ptr %282, ptr %292, align 8, !tbaa !34
  br label %306

293:                                              ; preds = %288, %293
  %294 = phi i64 [ %290, %288 ], [ %296, %293 ]
  %295 = phi ptr [ %282, %288 ], [ %299, %293 ]
  %296 = add i64 %294, 1
  %297 = getelementptr inbounds ptr, ptr %3, i64 %294
  store ptr %295, ptr %297, align 8, !tbaa !34
  %298 = getelementptr inbounds %struct.VBVHNode, ptr %295, i64 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !53
  %300 = icmp eq ptr %299, null
  br i1 %300, label %304, label %293, !llvm.loop !54

301:                                              ; preds = %199
  %302 = tail call i32 @RE_rayobject_intersect(ptr noundef %205, ptr noundef %1)
  %303 = or i32 %302, %200
  br label %306

304:                                              ; preds = %293
  %305 = trunc i64 %296 to i32
  br label %306

306:                                              ; preds = %304, %286, %301, %291, %277
  %307 = phi i32 [ %202, %301 ], [ %202, %277 ], [ %201, %291 ], [ %202, %286 ], [ %305, %304 ]
  %308 = phi i32 [ %303, %301 ], [ %200, %277 ], [ %200, %291 ], [ %200, %286 ], [ %200, %304 ]
  %309 = icmp eq i32 %307, 0
  br i1 %309, label %310, label %199, !llvm.loop !61

310:                                              ; preds = %306, %183
  %311 = phi i32 [ 0, %183 ], [ %308, %306 ]
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #14
  br label %314

312:                                              ; preds = %2
  %313 = tail call i32 @RE_rayobject_intersect(ptr noundef %6, ptr noundef %1)
  br label %314

314:                                              ; preds = %312, %310, %163
  %315 = phi i32 [ %164, %163 ], [ %311, %310 ], [ %313, %312 ]
  ret i32 %315
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL7bvh_addI8VBVHTreeEvPT_P9RayObject(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  tail call void @rtbuild_add(ptr noundef %4, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL8bvh_doneI8VBVHTreeEvPT_(ptr noundef %0) #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::queue", align 8
  %4 = alloca float, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::queue", align 8
  %9 = alloca float, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.BuildBinaryVBVH, align 8
  %13 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.RayObject, ptr %0, i64 0, i32 1
  tail call void @rtbuild_done(ptr noundef %14, ptr noundef nonnull %15)
  %16 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.1)
  tail call void @BLI_memarena_use_malloc(ptr noundef %16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  store ptr %16, ptr %12, align 8, !tbaa !62
  %17 = getelementptr inbounds %struct.BuildBinaryVBVH, ptr %12, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !64
  %18 = load ptr, ptr %13, align 8, !tbaa !45
  %19 = invoke noundef ptr @_ZN15BuildBinaryVBVHI8VBVHNodeE10_transformEP9RTBuilder(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %18)
          to label %24 unwind label %20

20:                                               ; preds = %1
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = call ptr @__cxa_begin_catch(ptr %22) #14
  call void @__cxa_end_catch()
  br label %24

24:                                               ; preds = %1, %20
  %25 = phi ptr [ null, %20 ], [ %19, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  store ptr %25, ptr %11, align 8, !tbaa !34
  %26 = call i32 @RE_rayobjectcontrol_test_break(ptr noundef nonnull %15)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  call void @BLI_memarena_free(ptr noundef %16)
  br label %290

29:                                               ; preds = %24
  %30 = icmp eq ptr %25, null
  br i1 %30, label %288, label %31

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %25, ptr %7, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #14
  %32 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %8, i64 0, i32 2
  %33 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %8, i64 0, i32 2, i32 1
  %34 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %8, i64 0, i32 2, i32 2
  %35 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %8, i64 0, i32 2, i32 3
  %36 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %8, i64 0, i32 3
  %37 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %8, i64 0, i32 3, i32 2
  %38 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %8, i64 0, i32 3, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %8, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %8, i64 noundef 0)
  %39 = load ptr, ptr %36, align 8, !tbaa !65
  %40 = load ptr, ptr %37, align 8, !tbaa !69
  %41 = getelementptr inbounds ptr, ptr %40, i64 -1
  %42 = icmp eq ptr %39, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %31
  %44 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %44, ptr %39, align 8, !tbaa !34
  %45 = load ptr, ptr %36, align 8, !tbaa !65
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  store ptr %46, ptr %36, align 8, !tbaa !65
  br label %48

47:                                               ; preds = %31
  invoke void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %48 unwind label %84

48:                                               ; preds = %47, %43
  %49 = load ptr, ptr %36, align 8, !tbaa !70
  %50 = load ptr, ptr %32, align 8, !tbaa !70
  %51 = icmp eq ptr %49, %50
  br i1 %51, label %251, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %3, i64 0, i32 2
  %54 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %3, i64 0, i32 2, i32 1
  %55 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %3, i64 0, i32 2, i32 2
  %56 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %3, i64 0, i32 2, i32 3
  %57 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %3, i64 0, i32 3
  %58 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %3, i64 0, i32 3, i32 2
  %59 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %3, i64 0, i32 3, i32 3
  br label %60

60:                                               ; preds = %52, %247
  %61 = phi ptr [ %50, %52 ], [ %249, %247 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = load ptr, ptr %34, align 8, !tbaa !71
  %64 = getelementptr inbounds ptr, ptr %63, i64 -1
  %65 = icmp eq ptr %61, %64
  br i1 %65, label %68, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds ptr, ptr %61, i64 1
  br label %74

68:                                               ; preds = %60
  %69 = load ptr, ptr %33, align 8, !tbaa !72
  call void @_ZdlPv(ptr noundef %69) #15
  %70 = load ptr, ptr %35, align 8, !tbaa !73
  %71 = getelementptr inbounds ptr, ptr %70, i64 1
  store ptr %71, ptr %35, align 8, !tbaa !74
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  store ptr %72, ptr %33, align 8, !tbaa !75
  %73 = getelementptr inbounds ptr, ptr %72, i64 64
  store ptr %73, ptr %34, align 8, !tbaa !76
  br label %74

74:                                               ; preds = %68, %66
  %75 = phi ptr [ %67, %66 ], [ %72, %68 ]
  store ptr %75, ptr %32, align 8, !tbaa !77
  %76 = getelementptr inbounds %struct.VBVHNode, ptr %62, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !51
  %78 = ptrtoint ptr %77 to i64
  %79 = and i64 %78, 3
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %247

81:                                               ; preds = %74
  %82 = load ptr, ptr %76, align 8, !tbaa !34
  %83 = icmp eq ptr %82, null
  br i1 %83, label %247, label %86

84:                                               ; preds = %47
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %266

86:                                               ; preds = %81, %243
  %87 = phi ptr [ %245, %243 ], [ %82, %81 ]
  %88 = phi ptr [ %244, %243 ], [ %76, %81 ]
  %89 = load ptr, ptr %36, align 8, !tbaa !65
  %90 = load ptr, ptr %37, align 8, !tbaa !69
  %91 = getelementptr inbounds ptr, ptr %90, i64 -1
  %92 = icmp eq ptr %89, %91
  br i1 %92, label %96, label %93

93:                                               ; preds = %86
  store ptr %87, ptr %89, align 8, !tbaa !34
  %94 = load ptr, ptr %36, align 8, !tbaa !65
  %95 = getelementptr inbounds ptr, ptr %94, i64 1
  store ptr %95, ptr %36, align 8, !tbaa !65
  br label %97

96:                                               ; preds = %86
  invoke void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(8) %88)
          to label %97 unwind label %232

97:                                               ; preds = %96, %93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10)
  store float 0x47EFFFFFE0000000, ptr %9, align 8, !tbaa !78
  %98 = load ptr, ptr %7, align 8, !tbaa !34
  store ptr %98, ptr %10, align 8, !tbaa !80
  %99 = load ptr, ptr %88, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr %98, ptr %2, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %3, i64 noundef 0)
          to label %100 unwind label %234

100:                                              ; preds = %97
  %101 = load ptr, ptr %57, align 8, !tbaa !65
  %102 = load ptr, ptr %58, align 8, !tbaa !69
  %103 = getelementptr inbounds ptr, ptr %102, i64 -1
  %104 = icmp eq ptr %101, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load ptr, ptr %2, align 8, !tbaa !34
  store ptr %106, ptr %101, align 8, !tbaa !34
  %107 = load ptr, ptr %57, align 8, !tbaa !65
  %108 = getelementptr inbounds ptr, ptr %107, i64 1
  store ptr %108, ptr %57, align 8, !tbaa !65
  br label %110

109:                                              ; preds = %100
  invoke void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %110 unwind label %137

110:                                              ; preds = %109, %105
  %111 = load ptr, ptr %57, align 8, !tbaa !70
  %112 = load ptr, ptr %53, align 8, !tbaa !70
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %195, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %10, align 8, !tbaa !80
  %116 = load float, ptr %9, align 8, !tbaa !78
  %117 = getelementptr inbounds float, ptr %99, i64 3
  br label %118

118:                                              ; preds = %114, %189
  %119 = phi ptr [ %112, %114 ], [ %193, %189 ]
  %120 = phi float [ %116, %114 ], [ %191, %189 ]
  %121 = phi ptr [ %115, %114 ], [ %190, %189 ]
  %122 = load ptr, ptr %119, align 8, !tbaa !34
  %123 = load ptr, ptr %55, align 8, !tbaa !71
  %124 = getelementptr inbounds ptr, ptr %123, i64 -1
  %125 = icmp eq ptr %119, %124
  br i1 %125, label %128, label %126

126:                                              ; preds = %118
  %127 = getelementptr inbounds ptr, ptr %119, i64 1
  br label %134

128:                                              ; preds = %118
  %129 = load ptr, ptr %54, align 8, !tbaa !72
  call void @_ZdlPv(ptr noundef %129) #15
  %130 = load ptr, ptr %56, align 8, !tbaa !73
  %131 = getelementptr inbounds ptr, ptr %130, i64 1
  store ptr %131, ptr %56, align 8, !tbaa !74
  %132 = load ptr, ptr %131, align 8, !tbaa !34
  store ptr %132, ptr %54, align 8, !tbaa !75
  %133 = getelementptr inbounds ptr, ptr %132, i64 64
  store ptr %133, ptr %55, align 8, !tbaa !76
  br label %134

134:                                              ; preds = %128, %126
  %135 = phi ptr [ %127, %126 ], [ %132, %128 ]
  store ptr %135, ptr %53, align 8, !tbaa !77
  %136 = icmp eq ptr %122, %99
  br i1 %136, label %189, label %139, !llvm.loop !81

137:                                              ; preds = %109
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %210

139:                                              ; preds = %134
  %140 = getelementptr inbounds float, ptr %122, i64 3
  %141 = invoke i32 @bb_fits_inside(ptr noundef %122, ptr noundef nonnull %140, ptr noundef %99, ptr noundef nonnull %117)
          to label %142 unwind label %168

142:                                              ; preds = %139
  %143 = icmp eq i32 %141, 0
  br i1 %143, label %189, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.VBVHNode, ptr %122, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !51
  %147 = ptrtoint ptr %146 to i64
  %148 = and i64 %147, 3
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %189

150:                                              ; preds = %144
  %151 = invoke float @bb_area(ptr noundef %122, ptr noundef nonnull %140)
          to label %152 unwind label %170

152:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store float %151, ptr %4, align 8
  store ptr %122, ptr %5, align 8
  %153 = fcmp olt float %151, %120
  br i1 %153, label %160, label %154

154:                                              ; preds = %152
  %155 = fcmp olt float %120, %151
  br i1 %155, label %160, label %156

156:                                              ; preds = %154
  %157 = icmp ult ptr %122, %121
  %158 = select i1 %157, ptr %4, ptr %9
  %159 = select i1 %157, ptr %5, ptr %10
  br label %160

160:                                              ; preds = %156, %154, %152
  %161 = phi ptr [ %4, %152 ], [ %9, %154 ], [ %158, %156 ]
  %162 = phi ptr [ %5, %152 ], [ %10, %154 ], [ %159, %156 ]
  %163 = load float, ptr %161, align 8, !tbaa !78
  store float %163, ptr %9, align 8, !tbaa !78
  %164 = load ptr, ptr %162, align 8, !tbaa !80
  store ptr %164, ptr %10, align 8, !tbaa !80
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %165 = load ptr, ptr %145, align 8, !tbaa !34
  store ptr %165, ptr %6, align 8, !tbaa !34
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %182, %160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %189

168:                                              ; preds = %139
  %169 = landingpad { ptr, i32 }
          cleanup
  br label %210

170:                                              ; preds = %150
  %171 = landingpad { ptr, i32 }
          cleanup
  br label %210

172:                                              ; preds = %160, %182
  %173 = phi ptr [ %185, %182 ], [ %165, %160 ]
  %174 = load ptr, ptr %57, align 8, !tbaa !65
  %175 = load ptr, ptr %58, align 8, !tbaa !69
  %176 = getelementptr inbounds ptr, ptr %175, i64 -1
  %177 = icmp eq ptr %174, %176
  br i1 %177, label %181, label %178

178:                                              ; preds = %172
  store ptr %173, ptr %174, align 8, !tbaa !34
  %179 = load ptr, ptr %57, align 8, !tbaa !65
  %180 = getelementptr inbounds ptr, ptr %179, i64 1
  store ptr %180, ptr %57, align 8, !tbaa !65
  br label %182

181:                                              ; preds = %172
  invoke void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %182 unwind label %187

182:                                              ; preds = %181, %178
  %183 = load ptr, ptr %6, align 8, !tbaa !34
  %184 = getelementptr inbounds %struct.VBVHNode, ptr %183, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !34
  store ptr %185, ptr %6, align 8, !tbaa !34
  %186 = icmp eq ptr %185, null
  br i1 %186, label %167, label %172, !llvm.loop !82

187:                                              ; preds = %181
  %188 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  br label %210

189:                                              ; preds = %167, %144, %142, %134
  %190 = phi ptr [ %164, %167 ], [ %121, %144 ], [ %121, %142 ], [ %121, %134 ]
  %191 = phi float [ %163, %167 ], [ %120, %144 ], [ %120, %142 ], [ %120, %134 ]
  %192 = load ptr, ptr %57, align 8, !tbaa !70
  %193 = load ptr, ptr %53, align 8, !tbaa !70
  %194 = icmp eq ptr %192, %193
  br i1 %194, label %195, label %118

195:                                              ; preds = %189, %110
  %196 = load ptr, ptr %3, align 8, !tbaa !83
  %197 = icmp eq ptr %196, null
  br i1 %197, label %227, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr %56, align 8, !tbaa !73
  %200 = load ptr, ptr %59, align 8, !tbaa !84
  %201 = getelementptr inbounds ptr, ptr %200, i64 1
  %202 = icmp ult ptr %199, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %198, %203
  %204 = phi ptr [ %206, %203 ], [ %199, %198 ]
  %205 = load ptr, ptr %204, align 8, !tbaa !34
  call void @_ZdlPv(ptr noundef %205) #15
  %206 = getelementptr inbounds ptr, ptr %204, i64 1
  %207 = icmp ult ptr %204, %200
  br i1 %207, label %203, label %208, !llvm.loop !85

208:                                              ; preds = %203, %198
  %209 = load ptr, ptr %3, align 8, !tbaa !83
  call void @_ZdlPv(ptr noundef %209) #15
  br label %227

210:                                              ; preds = %187, %170, %168, %137
  %211 = phi { ptr, i32 } [ %138, %137 ], [ %169, %168 ], [ %188, %187 ], [ %171, %170 ]
  %212 = load ptr, ptr %3, align 8, !tbaa !83
  %213 = icmp eq ptr %212, null
  br i1 %213, label %226, label %214

214:                                              ; preds = %210
  %215 = load ptr, ptr %56, align 8, !tbaa !73
  %216 = load ptr, ptr %59, align 8, !tbaa !84
  %217 = getelementptr inbounds ptr, ptr %216, i64 1
  %218 = icmp ult ptr %215, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %214, %219
  %220 = phi ptr [ %222, %219 ], [ %215, %214 ]
  %221 = load ptr, ptr %220, align 8, !tbaa !34
  call void @_ZdlPv(ptr noundef %221) #15
  %222 = getelementptr inbounds ptr, ptr %220, i64 1
  %223 = icmp ult ptr %220, %216
  br i1 %223, label %219, label %224, !llvm.loop !85

224:                                              ; preds = %219, %214
  %225 = load ptr, ptr %3, align 8, !tbaa !83
  call void @_ZdlPv(ptr noundef %225) #15
  br label %226

226:                                              ; preds = %224, %210
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #14
  br label %236

227:                                              ; preds = %208, %195
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %228 = load ptr, ptr %10, align 8, !tbaa !80
  %229 = icmp eq ptr %228, %62
  %230 = load ptr, ptr %88, align 8, !tbaa !34
  %231 = getelementptr inbounds %struct.VBVHNode, ptr %230, i64 0, i32 2
  br i1 %229, label %243, label %238

232:                                              ; preds = %96
  %233 = landingpad { ptr, i32 }
          cleanup
  br label %266

234:                                              ; preds = %97
  %235 = landingpad { ptr, i32 }
          cleanup
  br label %236

236:                                              ; preds = %234, %226
  %237 = phi { ptr, i32 } [ %235, %234 ], [ %211, %226 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10)
  br label %266

238:                                              ; preds = %227
  %239 = load ptr, ptr %231, align 8, !tbaa !53
  store ptr %239, ptr %88, align 8, !tbaa !34
  %240 = load ptr, ptr %10, align 8, !tbaa !80
  %241 = getelementptr inbounds %struct.VBVHNode, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !51
  store ptr %242, ptr %231, align 8, !tbaa !53
  store ptr %230, ptr %241, align 8, !tbaa !51
  br label %243

243:                                              ; preds = %227, %238
  %244 = phi ptr [ %88, %238 ], [ %231, %227 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10)
  %245 = load ptr, ptr %244, align 8, !tbaa !34
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %86, !llvm.loop !86

247:                                              ; preds = %243, %81, %74
  %248 = load ptr, ptr %36, align 8, !tbaa !70
  %249 = load ptr, ptr %32, align 8, !tbaa !70
  %250 = icmp eq ptr %248, %249
  br i1 %250, label %251, label %60, !llvm.loop !87

251:                                              ; preds = %247, %48
  %252 = load ptr, ptr %8, align 8, !tbaa !83
  %253 = icmp eq ptr %252, null
  br i1 %253, label %283, label %254

254:                                              ; preds = %251
  %255 = load ptr, ptr %35, align 8, !tbaa !73
  %256 = load ptr, ptr %38, align 8, !tbaa !84
  %257 = getelementptr inbounds ptr, ptr %256, i64 1
  %258 = icmp ult ptr %255, %257
  br i1 %258, label %259, label %264

259:                                              ; preds = %254, %259
  %260 = phi ptr [ %262, %259 ], [ %255, %254 ]
  %261 = load ptr, ptr %260, align 8, !tbaa !34
  call void @_ZdlPv(ptr noundef %261) #15
  %262 = getelementptr inbounds ptr, ptr %260, i64 1
  %263 = icmp ult ptr %260, %256
  br i1 %263, label %259, label %264, !llvm.loop !85

264:                                              ; preds = %259, %254
  %265 = load ptr, ptr %8, align 8, !tbaa !83
  call void @_ZdlPv(ptr noundef %265) #15
  br label %283

266:                                              ; preds = %236, %232, %84
  %267 = phi { ptr, i32 } [ %85, %84 ], [ %237, %236 ], [ %233, %232 ]
  %268 = load ptr, ptr %8, align 8, !tbaa !83
  %269 = icmp eq ptr %268, null
  br i1 %269, label %282, label %270

270:                                              ; preds = %266
  %271 = load ptr, ptr %35, align 8, !tbaa !73
  %272 = load ptr, ptr %38, align 8, !tbaa !84
  %273 = getelementptr inbounds ptr, ptr %272, i64 1
  %274 = icmp ult ptr %271, %273
  br i1 %274, label %275, label %280

275:                                              ; preds = %270, %275
  %276 = phi ptr [ %278, %275 ], [ %271, %270 ]
  %277 = load ptr, ptr %276, align 8, !tbaa !34
  call void @_ZdlPv(ptr noundef %277) #15
  %278 = getelementptr inbounds ptr, ptr %276, i64 1
  %279 = icmp ult ptr %276, %272
  br i1 %279, label %275, label %280, !llvm.loop !85

280:                                              ; preds = %275, %270
  %281 = load ptr, ptr %8, align 8, !tbaa !83
  call void @_ZdlPv(ptr noundef %281) #15
  br label %282

282:                                              ; preds = %280, %266
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #14
  resume { ptr, i32 } %267

283:                                              ; preds = %251, %264
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  %284 = load ptr, ptr %11, align 8, !tbaa !34
  call fastcc void @_ZL14remove_uselessI8VBVHNodeEvPT_PS2_(ptr noundef %284, ptr noundef nonnull %11)
  %285 = load ptr, ptr %11, align 8, !tbaa !34
  %286 = call fastcc noundef float @_ZL9bvh_refitI8VBVHNodeEfPT_(ptr noundef %285)
  call fastcc void @_ZL6pushupI8VBVHNodeEvPT_(ptr noundef %285)
  call fastcc void @_ZL8pushdownI8VBVHNodeEvPT_(ptr noundef %285)
  %287 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 1
  store ptr %285, ptr %287, align 8, !tbaa !46
  br label %290

288:                                              ; preds = %29
  %289 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 1
  store ptr null, ptr %289, align 8, !tbaa !46
  br label %290

290:                                              ; preds = %283, %288, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  br i1 %27, label %291, label %295

291:                                              ; preds = %290
  %292 = load ptr, ptr %13, align 8, !tbaa !45
  call void @rtbuild_free(ptr noundef %292)
  store ptr null, ptr %13, align 8, !tbaa !45
  %293 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 2
  store ptr %16, ptr %293, align 8, !tbaa !88
  %294 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 3
  store float 1.000000e+00, ptr %294, align 8, !tbaa !89
  br label %295

295:                                              ; preds = %290, %291
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL8bvh_freeI8VBVHTreeEvPT_(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @rtbuild_free(ptr noundef nonnull %3)
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @BLI_memarena_free(ptr noundef nonnull %8)
  br label %11

11:                                               ; preds = %10, %6
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %12(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL6bvh_bbI8VBVHTreeEvPT_PfS3_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %3
  %8 = ptrtoint ptr %5 to i64
  %9 = and i64 %8, 3
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @RE_rayobject_merge_bb(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2)
  br label %51

12:                                               ; preds = %7
  %13 = load float, ptr %1, align 4, !tbaa !58
  %14 = load float, ptr %5, align 8, !tbaa !58
  %15 = fcmp ogt float %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store float %14, ptr %1, align 4, !tbaa !58
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds float, ptr %1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !58
  %20 = getelementptr inbounds [6 x float], ptr %5, i64 0, i64 1
  %21 = load float, ptr %20, align 4, !tbaa !58
  %22 = fcmp ogt float %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store float %21, ptr %18, align 4, !tbaa !58
  br label %24

24:                                               ; preds = %23, %17
  %25 = getelementptr inbounds float, ptr %1, i64 2
  %26 = load float, ptr %25, align 4, !tbaa !58
  %27 = getelementptr inbounds [6 x float], ptr %5, i64 0, i64 2
  %28 = load float, ptr %27, align 8, !tbaa !58
  %29 = fcmp ogt float %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store float %28, ptr %25, align 4, !tbaa !58
  br label %31

31:                                               ; preds = %30, %24
  %32 = load float, ptr %2, align 4, !tbaa !58
  %33 = getelementptr inbounds float, ptr %5, i64 3
  %34 = load float, ptr %33, align 4, !tbaa !58
  %35 = fcmp olt float %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store float %34, ptr %2, align 4, !tbaa !58
  br label %37

37:                                               ; preds = %36, %31
  %38 = getelementptr inbounds float, ptr %2, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !58
  %40 = getelementptr inbounds float, ptr %5, i64 4
  %41 = load float, ptr %40, align 4, !tbaa !58
  %42 = fcmp olt float %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store float %41, ptr %38, align 4, !tbaa !58
  br label %44

44:                                               ; preds = %43, %37
  %45 = getelementptr inbounds float, ptr %2, i64 2
  %46 = load float, ptr %45, align 4, !tbaa !58
  %47 = getelementptr inbounds float, ptr %5, i64 5
  %48 = load float, ptr %47, align 4, !tbaa !58
  %49 = fcmp olt float %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store float %48, ptr %45, align 4, !tbaa !58
  br label %51

51:                                               ; preds = %50, %44, %11, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef float @_ZL8bvh_costI8VBVHTreeEfPT_(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 8, !tbaa !89
  ret float %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL11bvh_hint_bbI8VBVHTreeEvPT_P8LCTSHintPfS5_(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #5 {
  store i32 0, ptr %1, align 8, !tbaa !90
  %5 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.LCTSHint, ptr %1, i64 0, i32 1
  store i32 1, ptr %1, align 8, !tbaa !90
  store ptr %6, ptr %7, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @RE_rayobject_intersect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rtbuild_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @rtbuild_done(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_memarena_use_malloc(ptr noundef) local_unnamed_addr #2

declare i32 @RE_rayobjectcontrol_test_break(ptr noundef) local_unnamed_addr #2

declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_ZL14remove_uselessI8VBVHNodeEvPT_PS2_(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.VBVHNode, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %8, %23
  %12 = phi ptr [ %25, %23 ], [ %9, %8 ]
  %13 = phi ptr [ %24, %23 ], [ %3, %8 ]
  %14 = getelementptr inbounds %struct.VBVHNode, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  tail call fastcc void @_ZL14remove_uselessI8VBVHNodeEvPT_PS2_(ptr noundef nonnull %12, ptr noundef nonnull %13)
  %16 = load ptr, ptr %13, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store ptr %15, ptr %13, align 8, !tbaa !34
  br label %23

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.VBVHNode, ptr %16, i64 0, i32 2
  store ptr %15, ptr %20, align 8, !tbaa !53
  %21 = load ptr, ptr %13, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.VBVHNode, ptr %21, i64 0, i32 2
  br label %23

23:                                               ; preds = %19, %18
  %24 = phi ptr [ %13, %18 ], [ %22, %19 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %11, !llvm.loop !92

27:                                               ; preds = %23, %8, %2
  %28 = load ptr, ptr %3, align 8, !tbaa !51
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = ptrtoint ptr %28 to i64
  %32 = and i64 %31, 3
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.VBVHNode, ptr %28, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %27, %34
  %39 = phi ptr [ %28, %34 ], [ null, %27 ]
  store ptr %39, ptr %1, align 8, !tbaa !34
  br label %40

40:                                               ; preds = %38, %30, %34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZL9bvh_refitI8VBVHNodeEfPT_(ptr noundef %0) unnamed_addr #0 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, 3
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %89

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.VBVHNode, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 3
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %89

11:                                               ; preds = %5
  %12 = load ptr, ptr %6, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %31, %11
  %15 = phi float [ 0.000000e+00, %11 ], [ %35, %31 ]
  %16 = getelementptr inbounds float, ptr %0, i64 3
  %17 = tail call float @bb_area(ptr noundef %0, ptr noundef nonnull %16)
  %18 = getelementptr inbounds [6 x float], ptr %0, i64 0, i64 2
  store float 0x46293E5940000000, ptr %18, align 8, !tbaa !58
  %19 = getelementptr inbounds [6 x float], ptr %0, i64 0, i64 1
  store float 0x46293E5940000000, ptr %19, align 4, !tbaa !58
  store float 0x46293E5940000000, ptr %0, align 8, !tbaa !58
  %20 = getelementptr inbounds float, ptr %0, i64 5
  store float 0xC6293E5940000000, ptr %20, align 4, !tbaa !58
  %21 = getelementptr inbounds float, ptr %0, i64 4
  store float 0xC6293E5940000000, ptr %21, align 4, !tbaa !58
  store float 0xC6293E5940000000, ptr %16, align 4, !tbaa !58
  %22 = load ptr, ptr %6, align 8, !tbaa !34
  %23 = icmp eq ptr %22, null
  br i1 %23, label %39, label %24

24:                                               ; preds = %14
  %25 = load float, ptr %0, align 8, !tbaa !58
  %26 = load float, ptr %19, align 4, !tbaa !58
  %27 = load float, ptr %18, align 8, !tbaa !58
  %28 = load float, ptr %16, align 4, !tbaa !58
  %29 = load float, ptr %21, align 4, !tbaa !58
  %30 = load float, ptr %20, align 4, !tbaa !58
  br label %43

31:                                               ; preds = %11, %31
  %32 = phi ptr [ %37, %31 ], [ %12, %11 ]
  %33 = phi float [ %35, %31 ], [ 0.000000e+00, %11 ]
  %34 = tail call fastcc noundef float @_ZL9bvh_refitI8VBVHNodeEfPT_(ptr noundef nonnull %32)
  %35 = fadd float %33, %34
  %36 = getelementptr inbounds %struct.VBVHNode, ptr %32, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !34
  %38 = icmp eq ptr %37, null
  br i1 %38, label %14, label %31, !llvm.loop !93

39:                                               ; preds = %84, %14
  %40 = tail call float @bb_area(ptr noundef nonnull %0, ptr noundef nonnull %16)
  %41 = fsub float %17, %40
  %42 = fadd float %15, %41
  br label %89

43:                                               ; preds = %24, %84
  %44 = phi float [ %30, %24 ], [ %85, %84 ]
  %45 = phi float [ %29, %24 ], [ %79, %84 ]
  %46 = phi float [ %28, %24 ], [ %73, %84 ]
  %47 = phi float [ %27, %24 ], [ %67, %84 ]
  %48 = phi float [ %26, %24 ], [ %61, %84 ]
  %49 = phi float [ %25, %24 ], [ %55, %84 ]
  %50 = phi ptr [ %22, %24 ], [ %87, %84 ]
  %51 = load float, ptr %50, align 8, !tbaa !58
  %52 = fcmp ogt float %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store float %51, ptr %0, align 8, !tbaa !58
  br label %54

54:                                               ; preds = %53, %43
  %55 = phi float [ %51, %53 ], [ %49, %43 ]
  %56 = getelementptr inbounds [6 x float], ptr %50, i64 0, i64 1
  %57 = load float, ptr %56, align 4, !tbaa !58
  %58 = fcmp ogt float %48, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store float %57, ptr %19, align 4, !tbaa !58
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi float [ %57, %59 ], [ %48, %54 ]
  %62 = getelementptr inbounds [6 x float], ptr %50, i64 0, i64 2
  %63 = load float, ptr %62, align 8, !tbaa !58
  %64 = fcmp ogt float %47, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store float %63, ptr %18, align 8, !tbaa !58
  br label %66

66:                                               ; preds = %65, %60
  %67 = phi float [ %63, %65 ], [ %47, %60 ]
  %68 = getelementptr inbounds float, ptr %50, i64 3
  %69 = load float, ptr %68, align 4, !tbaa !58
  %70 = fcmp olt float %46, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store float %69, ptr %16, align 4, !tbaa !58
  br label %72

72:                                               ; preds = %71, %66
  %73 = phi float [ %69, %71 ], [ %46, %66 ]
  %74 = getelementptr inbounds float, ptr %50, i64 4
  %75 = load float, ptr %74, align 4, !tbaa !58
  %76 = fcmp olt float %45, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store float %75, ptr %21, align 4, !tbaa !58
  br label %78

78:                                               ; preds = %77, %72
  %79 = phi float [ %75, %77 ], [ %45, %72 ]
  %80 = getelementptr inbounds float, ptr %50, i64 5
  %81 = load float, ptr %80, align 4, !tbaa !58
  %82 = fcmp olt float %44, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store float %81, ptr %20, align 4, !tbaa !58
  br label %84

84:                                               ; preds = %78, %83
  %85 = phi float [ %44, %78 ], [ %81, %83 ]
  %86 = getelementptr inbounds %struct.VBVHNode, ptr %50, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !34
  %88 = icmp eq ptr %87, null
  br i1 %88, label %39, label %43, !llvm.loop !94

89:                                               ; preds = %5, %1, %39
  %90 = phi float [ %42, %39 ], [ 0.000000e+00, %1 ], [ 0.000000e+00, %5 ]
  ret float %90
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL6pushupI8VBVHNodeEvPT_(ptr noundef %0) unnamed_addr #0 {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, 3
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %86

5:                                                ; preds = %1
  %6 = getelementptr inbounds float, ptr %0, i64 3
  %7 = tail call float @bb_area(ptr noundef %0, ptr noundef nonnull %6)
  %8 = getelementptr inbounds %struct.VBVHNode, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = ptrtoint ptr %9 to i64
  %11 = and i64 %10, 3
  %12 = icmp eq i64 %11, 0
  %13 = icmp ne ptr %9, null
  %14 = and i1 %13, %12
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = fcmp une float %7, 0.000000e+00
  br label %24

17:                                               ; preds = %69, %5
  %18 = load ptr, ptr %8, align 8, !tbaa !34
  %19 = ptrtoint ptr %18 to i64
  %20 = and i64 %19, 3
  %21 = icmp eq i64 %20, 0
  %22 = icmp ne ptr %18, null
  %23 = and i1 %22, %21
  br i1 %23, label %77, label %86

24:                                               ; preds = %15, %69
  %25 = phi ptr [ %8, %15 ], [ %71, %69 ]
  %26 = phi ptr [ %9, %15 ], [ %70, %69 ]
  %27 = getelementptr inbounds float, ptr %26, i64 3
  %28 = tail call float @bb_area(ptr noundef nonnull %26, ptr noundef nonnull %27)
  %29 = getelementptr inbounds %struct.VBVHNode, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = icmp eq ptr %30, null
  br i1 %31, label %43, label %36

32:                                               ; preds = %36
  %33 = getelementptr inbounds %struct.VBVHNode, ptr %37, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36, !llvm.loop !95

36:                                               ; preds = %24, %32
  %37 = phi ptr [ %34, %32 ], [ %30, %24 ]
  %38 = phi i32 [ %39, %32 ], [ 0, %24 ]
  %39 = add nuw nsw i32 %38, 1
  %40 = ptrtoint ptr %37 to i64
  %41 = and i64 %40, 3
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %32, label %43

43:                                               ; preds = %36, %32, %24
  %44 = phi i32 [ 0, %24 ], [ %39, %32 ], [ %39, %36 ]
  %45 = fdiv float %28, %7
  %46 = sitofp i32 %44 to float
  %47 = fmul float %45, %46
  %48 = fadd float %47, 1.000000e+00
  %49 = select i1 %16, float %48, float 2.000000e+00
  %50 = fcmp ogt float %49, %46
  %51 = icmp sgt i32 %44, 1
  %52 = and i1 %51, %50
  br i1 %52, label %53, label %66

53:                                               ; preds = %43
  %54 = load ptr, ptr %29, align 8, !tbaa !51
  br label %55

55:                                               ; preds = %55, %53
  %56 = phi ptr [ %26, %53 ], [ %58, %55 ]
  %57 = getelementptr inbounds %struct.VBVHNode, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !53
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %55, !llvm.loop !96

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.VBVHNode, ptr %56, i64 0, i32 2
  store ptr %54, ptr %61, align 8, !tbaa !53
  %62 = getelementptr inbounds %struct.VBVHNode, ptr %26, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !53
  store ptr %63, ptr %25, align 8, !tbaa !34
  %64 = load i32, ptr @tot_pushup, align 4, !tbaa !57
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr @tot_pushup, align 4, !tbaa !57
  br label %69

66:                                               ; preds = %43
  store ptr %26, ptr %25, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.VBVHNode, ptr %26, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !34
  br label %69

69:                                               ; preds = %66, %60
  %70 = phi ptr [ %63, %60 ], [ %68, %66 ]
  %71 = phi ptr [ %25, %60 ], [ %67, %66 ]
  %72 = ptrtoint ptr %70 to i64
  %73 = and i64 %72, 3
  %74 = icmp eq i64 %73, 0
  %75 = icmp ne ptr %70, null
  %76 = and i1 %75, %74
  br i1 %76, label %24, label %17, !llvm.loop !97

77:                                               ; preds = %17, %77
  %78 = phi ptr [ %80, %77 ], [ %18, %17 ]
  tail call fastcc void @_ZL6pushupI8VBVHNodeEvPT_(ptr noundef nonnull %78)
  %79 = getelementptr inbounds %struct.VBVHNode, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !34
  %81 = ptrtoint ptr %80 to i64
  %82 = and i64 %81, 3
  %83 = icmp eq i64 %82, 0
  %84 = icmp ne ptr %80, null
  %85 = and i1 %84, %83
  br i1 %85, label %77, label %86, !llvm.loop !98

86:                                               ; preds = %77, %17, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL8pushdownI8VBVHNodeEvPT_(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.VBVHNode, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  %4 = icmp ne ptr %3, null
  %5 = ptrtoint ptr %3 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  %8 = and i1 %4, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %56, %1
  %10 = load ptr, ptr %2, align 8, !tbaa !34
  %11 = ptrtoint ptr %10 to i64
  %12 = and i64 %11, 3
  %13 = icmp eq i64 %12, 0
  %14 = icmp ne ptr %10, null
  %15 = and i1 %14, %13
  br i1 %15, label %64, label %63

16:                                               ; preds = %1, %56
  %17 = phi ptr [ %57, %56 ], [ %2, %1 ]
  %18 = phi ptr [ %20, %56 ], [ %3, %1 ]
  %19 = getelementptr inbounds %struct.VBVHNode, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !53
  %21 = load ptr, ptr %2, align 8, !tbaa !34
  %22 = ptrtoint ptr %21 to i64
  %23 = and i64 %22, 3
  %24 = icmp eq i64 %23, 0
  %25 = icmp ne ptr %21, null
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %56

27:                                               ; preds = %16
  %28 = getelementptr inbounds float, ptr %18, i64 3
  br label %29

29:                                               ; preds = %27, %48
  %30 = phi ptr [ %21, %27 ], [ %50, %48 ]
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %48, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds float, ptr %30, i64 3
  %34 = tail call i32 @bb_fits_inside(ptr noundef nonnull %30, ptr noundef nonnull %33, ptr noundef nonnull %18, ptr noundef nonnull %28)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.VBVHNode, ptr %30, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !51
  %39 = ptrtoint ptr %38 to i64
  %40 = and i64 %39, 3
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.VBVHNode, ptr %30, i64 0, i32 1
  %44 = load ptr, ptr %19, align 8, !tbaa !53
  store ptr %44, ptr %17, align 8, !tbaa !34
  %45 = load ptr, ptr %43, align 8, !tbaa !51
  store ptr %45, ptr %19, align 8, !tbaa !53
  store ptr %18, ptr %43, align 8, !tbaa !51
  %46 = load i32, ptr @tot_pushdown, align 4, !tbaa !57
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr @tot_pushdown, align 4, !tbaa !57
  br label %56

48:                                               ; preds = %29, %32, %36
  %49 = getelementptr inbounds %struct.VBVHNode, ptr %30, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !34
  %51 = ptrtoint ptr %50 to i64
  %52 = and i64 %51, 3
  %53 = icmp eq i64 %52, 0
  %54 = icmp ne ptr %50, null
  %55 = and i1 %54, %53
  br i1 %55, label %29, label %56, !llvm.loop !99

56:                                               ; preds = %48, %16, %42
  %57 = phi ptr [ %17, %42 ], [ %19, %16 ], [ %19, %48 ]
  %58 = icmp ne ptr %20, null
  %59 = ptrtoint ptr %20 to i64
  %60 = and i64 %59, 3
  %61 = icmp eq i64 %60, 0
  %62 = and i1 %58, %61
  br i1 %62, label %16, label %9, !llvm.loop !100

63:                                               ; preds = %64, %9
  ret void

64:                                               ; preds = %9, %64
  %65 = phi ptr [ %67, %64 ], [ %10, %9 ]
  tail call fastcc void @_ZL8pushdownI8VBVHNodeEvPT_(ptr noundef nonnull %65)
  %66 = getelementptr inbounds %struct.VBVHNode, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !34
  %68 = ptrtoint ptr %67 to i64
  %69 = and i64 %68, 3
  %70 = icmp eq i64 %69, 0
  %71 = icmp ne ptr %67, null
  %72 = and i1 %71, %70
  br i1 %72, label %64, label %63, !llvm.loop !101
}

declare void @rtbuild_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN15BuildBinaryVBVHI8VBVHNodeE10_transformEP9RTBuilder(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = alloca %struct.RTBuilder, align 8
  %4 = tail call i32 @rtbuild_size(ptr noundef %1)
  switch i32 %4, label %15 [
    i32 0, label %78
    i32 1, label %5
  ]

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !62
  %7 = tail call noundef ptr @BLI_memarena_alloc(ptr noundef %6, i64 noundef 40)
  %8 = getelementptr inbounds %struct.VBVHNode, ptr %7, i64 0, i32 1
  %9 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  store float 0x46293E5940000000, ptr %9, align 8, !tbaa !58
  %10 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 1
  store float 0x46293E5940000000, ptr %10, align 4, !tbaa !58
  store float 0x46293E5940000000, ptr %7, align 8, !tbaa !58
  %11 = getelementptr inbounds float, ptr %7, i64 3
  %12 = getelementptr inbounds float, ptr %7, i64 5
  store float 0xC6293E5940000000, ptr %12, align 4, !tbaa !58
  %13 = getelementptr inbounds float, ptr %7, i64 4
  store float 0xC6293E5940000000, ptr %13, align 4, !tbaa !58
  store float 0xC6293E5940000000, ptr %11, align 4, !tbaa !58
  tail call void @rtbuild_merge_bb(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %11)
  %14 = tail call ptr @rtbuild_get_primitive(ptr noundef %1, i32 noundef 0)
  store ptr %14, ptr %8, align 8, !tbaa !51
  br label %78

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.BuildBinaryVBVH, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = tail call i32 @RE_rayobjectcontrol_test_break(ptr noundef %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 8) #14
  store ptr @.str.2, ptr %21, align 16, !tbaa !34
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIPKc, ptr null) #16
  unreachable

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !62
  %24 = tail call noundef ptr @BLI_memarena_alloc(ptr noundef %23, i64 noundef 40)
  %25 = getelementptr inbounds %struct.VBVHNode, ptr %24, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %26 = tail call noundef i32 @rtbuild_heuristic_object_split(ptr noundef %1, i32 noundef 2)
  %27 = getelementptr inbounds [6 x float], ptr %24, i64 0, i64 2
  store float 0x46293E5940000000, ptr %27, align 8, !tbaa !58
  %28 = getelementptr inbounds [6 x float], ptr %24, i64 0, i64 1
  store float 0x46293E5940000000, ptr %28, align 4, !tbaa !58
  store float 0x46293E5940000000, ptr %24, align 8, !tbaa !58
  %29 = getelementptr inbounds float, ptr %24, i64 3
  %30 = getelementptr inbounds float, ptr %24, i64 5
  store float 0xC6293E5940000000, ptr %30, align 4, !tbaa !58
  %31 = getelementptr inbounds float, ptr %24, i64 4
  store float 0xC6293E5940000000, ptr %31, align 4, !tbaa !58
  store float 0xC6293E5940000000, ptr %29, align 4, !tbaa !58
  %32 = icmp sgt i32 %26, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %74, %22
  %34 = phi ptr [ %25, %22 ], [ %75, %74 ]
  store ptr null, ptr %34, align 8, !tbaa !34
  br label %78

35:                                               ; preds = %22, %74
  %36 = phi i32 [ %76, %74 ], [ 0, %22 ]
  %37 = phi ptr [ %75, %74 ], [ %25, %22 ]
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %3) #14
  %38 = call ptr @rtbuild_get_child(ptr noundef %1, i32 noundef %36, ptr noundef nonnull %3)
  %39 = call noundef ptr @_ZN15BuildBinaryVBVHI8VBVHNodeE10_transformEP9RTBuilder(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
  store ptr %39, ptr %37, align 8, !tbaa !34
  %40 = load float, ptr %24, align 8, !tbaa !58
  %41 = load float, ptr %39, align 8, !tbaa !58
  %42 = fcmp ogt float %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store float %41, ptr %24, align 8, !tbaa !58
  br label %44

44:                                               ; preds = %43, %35
  %45 = load float, ptr %28, align 4, !tbaa !58
  %46 = getelementptr inbounds [6 x float], ptr %39, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !58
  %48 = fcmp ogt float %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store float %47, ptr %28, align 4, !tbaa !58
  br label %50

50:                                               ; preds = %49, %44
  %51 = load float, ptr %27, align 8, !tbaa !58
  %52 = getelementptr inbounds [6 x float], ptr %39, i64 0, i64 2
  %53 = load float, ptr %52, align 8, !tbaa !58
  %54 = fcmp ogt float %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store float %53, ptr %27, align 8, !tbaa !58
  br label %56

56:                                               ; preds = %55, %50
  %57 = load float, ptr %29, align 4, !tbaa !58
  %58 = getelementptr inbounds float, ptr %39, i64 3
  %59 = load float, ptr %58, align 4, !tbaa !58
  %60 = fcmp olt float %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store float %59, ptr %29, align 4, !tbaa !58
  br label %62

62:                                               ; preds = %61, %56
  %63 = load float, ptr %31, align 4, !tbaa !58
  %64 = getelementptr inbounds float, ptr %39, i64 4
  %65 = load float, ptr %64, align 4, !tbaa !58
  %66 = fcmp olt float %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store float %65, ptr %31, align 4, !tbaa !58
  br label %68

68:                                               ; preds = %67, %62
  %69 = load float, ptr %30, align 4, !tbaa !58
  %70 = getelementptr inbounds float, ptr %39, i64 5
  %71 = load float, ptr %70, align 4, !tbaa !58
  %72 = fcmp olt float %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store float %71, ptr %30, align 4, !tbaa !58
  br label %74

74:                                               ; preds = %73, %68
  %75 = getelementptr inbounds %struct.VBVHNode, ptr %39, i64 0, i32 2
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %3) #14
  %76 = add nuw nsw i32 %36, 1
  %77 = icmp eq i32 %76, %26
  br i1 %77, label %33, label %35, !llvm.loop !102

78:                                               ; preds = %2, %33, %5
  %79 = phi ptr [ %7, %5 ], [ %24, %33 ], [ null, %2 ]
  ret ptr %79
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare i32 @rtbuild_size(ptr noundef) local_unnamed_addr #2

declare void @rtbuild_merge_bb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rtbuild_get_primitive(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @rtbuild_get_child(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare i32 @rtbuild_heuristic_object_split(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = lshr i64 %1, 6
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 5)
  %5 = add nuw nsw i64 %4, 3
  %6 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !tbaa !103
  %7 = add nuw nsw i64 %3, 1
  %8 = shl nuw nsw i64 %5, 3
  %9 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %8) #17
  store ptr %9, ptr %0, align 8, !tbaa !83
  %10 = sub nsw i64 %5, %7
  %11 = lshr i64 %10, 1
  %12 = getelementptr inbounds ptr, ptr %9, i64 %11
  %13 = getelementptr inbounds ptr, ptr %12, i64 %7
  invoke void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE15_M_create_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %12, ptr noundef nonnull %13)
          to label %22 unwind label %14

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #14
  %18 = load ptr, ptr %0, align 8, !tbaa !83
  tail call void @_ZdlPv(ptr noundef %18) #15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #16
          to label %41 unwind label %19

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %38

21:                                               ; preds = %19
  resume { ptr, i32 } %20

22:                                               ; preds = %2
  %23 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  store ptr %12, ptr %24, align 8, !tbaa !74
  %25 = load ptr, ptr %12, align 8, !tbaa !34
  %26 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !75
  %27 = getelementptr inbounds ptr, ptr %25, i64 64
  %28 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !76
  %29 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %30 = getelementptr inbounds ptr, ptr %12, i64 %3
  %31 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !74
  %32 = load ptr, ptr %30, align 8, !tbaa !34
  %33 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !75
  %34 = getelementptr inbounds ptr, ptr %32, i64 64
  %35 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !76
  store ptr %25, ptr %23, align 8, !tbaa !77
  %36 = and i64 %1, 63
  %37 = getelementptr inbounds ptr, ptr %32, i64 %36
  store ptr %37, ptr %29, align 8, !tbaa !65
  ret void

38:                                               ; preds = %19
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #18
  unreachable

41:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE15_M_create_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp ult ptr %1, %2
  br i1 %4, label %5, label %25

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %9, %8 ], [ %1, %3 ]
  %7 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #17
          to label %8 unwind label %11

8:                                                ; preds = %5
  store ptr %7, ptr %6, align 8, !tbaa !34
  %9 = getelementptr inbounds ptr, ptr %6, i64 1
  %10 = icmp ult ptr %9, %2
  br i1 %10, label %5, label %25, !llvm.loop !104

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #14
  %15 = icmp ugt ptr %6, %1
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %19, %16 ], [ %1, %11 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  tail call void @_ZdlPv(ptr noundef %18) #15
  %19 = getelementptr inbounds ptr, ptr %17, i64 1
  %20 = icmp ult ptr %19, %6
  br i1 %20, label %16, label %21, !llvm.loop !85

21:                                               ; preds = %16, %11
  invoke void @__cxa_rethrow() #16
          to label %29 unwind label %22

22:                                               ; preds = %21
  %23 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %24 unwind label %26

24:                                               ; preds = %22
  resume { ptr, i32 } %23

25:                                               ; preds = %8, %3
  ret void

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #18
  unreachable

29:                                               ; preds = %21
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 6
  %17 = load ptr, ptr %3, align 8, !tbaa !70
  %18 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 3
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  %27 = load ptr, ptr %4, align 8, !tbaa !70
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 3
  %32 = add nsw i64 %24, %31
  %33 = icmp eq i64 %32, 1152921504606846975
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #16
  unreachable

35:                                               ; preds = %2
  %36 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !103
  %38 = load ptr, ptr %0, align 8, !tbaa !83
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %9, %39
  %41 = ashr exact i64 %40, 3
  %42 = sub i64 %37, %41
  %43 = icmp ult i64 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  tail call void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %45

45:                                               ; preds = %35, %44
  %46 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #17
  %47 = load ptr, ptr %5, align 8, !tbaa !84
  %48 = getelementptr inbounds ptr, ptr %47, i64 1
  store ptr %46, ptr %48, align 8, !tbaa !34
  %49 = load ptr, ptr %3, align 8, !tbaa !65
  %50 = load ptr, ptr %1, align 8, !tbaa !34
  store ptr %50, ptr %49, align 8, !tbaa !34
  %51 = load ptr, ptr %5, align 8, !tbaa !84
  %52 = getelementptr inbounds ptr, ptr %51, i64 1
  store ptr %52, ptr %5, align 8, !tbaa !74
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  store ptr %53, ptr %18, align 8, !tbaa !75
  %54 = getelementptr inbounds ptr, ptr %53, i64 64
  %55 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !76
  store ptr %53, ptr %3, align 8, !tbaa !65
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = add nsw i64 %11, 1
  %13 = add i64 %12, %1
  %14 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !105
  %16 = shl i64 %13, 1
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !83
  %20 = sub i64 %15, %13
  %21 = lshr i64 %20, 1
  %22 = getelementptr inbounds ptr, ptr %19, i64 %21
  %23 = select i1 %2, i64 %1, i64 0
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = icmp ult ptr %24, %7
  %26 = getelementptr inbounds ptr, ptr %5, i64 1
  %27 = icmp eq ptr %26, %7
  br i1 %25, label %28, label %32

28:                                               ; preds = %18
  br i1 %27, label %64, label %29

29:                                               ; preds = %28
  %30 = ptrtoint ptr %26 to i64
  %31 = sub i64 %30, %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %24, ptr nonnull align 8 %7, i64 %31, i1 false)
  br label %64

32:                                               ; preds = %18
  br i1 %27, label %64, label %33

33:                                               ; preds = %32
  %34 = ptrtoint ptr %26 to i64
  %35 = sub i64 %34, %9
  %36 = ashr exact i64 %35, 3
  %37 = getelementptr inbounds ptr, ptr %24, i64 %12
  %38 = sub nsw i64 0, %36
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %39, ptr align 8 %7, i64 %35, i1 false)
  br label %64

40:                                               ; preds = %3
  %41 = tail call i64 @llvm.umax.i64(i64 %15, i64 %1)
  %42 = add i64 %15, 2
  %43 = add i64 %42, %41
  %44 = icmp ugt i64 %43, 1152921504606846975
  br i1 %44, label %45, label %49, !prof !106

45:                                               ; preds = %40
  %46 = icmp ugt i64 %43, 2305843009213693951
  br i1 %46, label %47, label %48

47:                                               ; preds = %45
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

48:                                               ; preds = %45
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

49:                                               ; preds = %40
  %50 = shl nuw nsw i64 %43, 3
  %51 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %50) #17
  %52 = sub i64 %43, %13
  %53 = lshr i64 %52, 1
  %54 = getelementptr inbounds ptr, ptr %51, i64 %53
  %55 = select i1 %2, i64 %1, i64 0
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = getelementptr inbounds ptr, ptr %5, i64 1
  %58 = icmp eq ptr %57, %7
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = ptrtoint ptr %57 to i64
  %61 = sub i64 %60, %9
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %56, ptr align 8 %7, i64 %61, i1 false)
  br label %62

62:                                               ; preds = %49, %59
  %63 = load ptr, ptr %0, align 8, !tbaa !83
  tail call void @_ZdlPv(ptr noundef %63) #15
  store ptr %51, ptr %0, align 8, !tbaa !83
  store i64 %43, ptr %14, align 8, !tbaa !103
  br label %64

64:                                               ; preds = %33, %32, %29, %28, %62
  %65 = phi ptr [ %56, %62 ], [ %24, %28 ], [ %24, %29 ], [ %24, %32 ], [ %24, %33 ]
  store ptr %65, ptr %6, align 8, !tbaa !74
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  %67 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  store ptr %66, ptr %67, align 8, !tbaa !75
  %68 = getelementptr inbounds ptr, ptr %66, i64 64
  %69 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  store ptr %68, ptr %69, align 8, !tbaa !76
  %70 = getelementptr inbounds ptr, ptr %65, i64 %12
  %71 = getelementptr inbounds ptr, ptr %70, i64 -1
  store ptr %71, ptr %4, align 8, !tbaa !74
  %72 = load ptr, ptr %71, align 8, !tbaa !34
  %73 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  store ptr %72, ptr %73, align 8, !tbaa !75
  %74 = getelementptr inbounds ptr, ptr %72, i64 64
  %75 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  store ptr %74, ptr %75, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #6

declare float @bb_area(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @bb_fits_inside(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RE_rayobject_merge_bb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { noreturn nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!"branch_weights", i32 1, i32 1048575}
!39 = !{i64 0, i64 8, !34, i64 8, i64 8, !34, i64 16, i64 8, !34, i64 24, i64 8, !34, i64 32, i64 8, !34, i64 40, i64 8, !34, i64 48, i64 8, !34}
!40 = !{!41, !35, i64 0}
!41 = !{!"_ZTS8VBVHTree", !42, i64 0, !35, i64 24, !35, i64 32, !44, i64 40, !35, i64 48}
!42 = !{!"_ZTS9RayObject", !35, i64 0, !43, i64 8}
!43 = !{!"_ZTS16RayObjectControl", !35, i64 0, !35, i64 8}
!44 = !{!"float", !36, i64 0}
!45 = !{!41, !35, i64 48}
!46 = !{!41, !35, i64 24}
!47 = !{!48, !49, i64 88}
!48 = !{!"_ZTS5Isect", !36, i64 0, !36, i64 12, !44, i64 24, !36, i64 28, !36, i64 40, !36, i64 52, !36, i64 76, !49, i64 88, !49, i64 92, !49, i64 96, !49, i64 100, !35, i64 104, !44, i64 112, !44, i64 116, !49, i64 120, !50, i64 128, !50, i64 144, !35, i64 160, !35, i64 168}
!49 = !{!"int", !36, i64 0}
!50 = !{!"_ZTSN5IsectUt_E", !35, i64 0, !35, i64 8}
!51 = !{!52, !35, i64 24}
!52 = !{!"_ZTS8VBVHNode", !36, i64 0, !35, i64 24, !35, i64 32}
!53 = !{!52, !35, i64 32}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!49, !49, i64 0}
!58 = !{!44, !44, i64 0}
!59 = !{!48, !44, i64 24}
!60 = distinct !{!60, !55, !56}
!61 = distinct !{!61, !55, !56}
!62 = !{!63, !35, i64 0}
!63 = !{!"_ZTS15BuildBinaryVBVHI8VBVHNodeE", !35, i64 0, !35, i64 8}
!64 = !{!63, !35, i64 8}
!65 = !{!66, !35, i64 48}
!66 = !{!"_ZTSNSt11_Deque_baseIP8VBVHNodeSaIS1_EE16_Deque_impl_dataE", !35, i64 0, !67, i64 8, !68, i64 16, !68, i64 48}
!67 = !{!"long", !36, i64 0}
!68 = !{!"_ZTSSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24}
!69 = !{!66, !35, i64 64}
!70 = !{!68, !35, i64 0}
!71 = !{!66, !35, i64 32}
!72 = !{!66, !35, i64 24}
!73 = !{!66, !35, i64 40}
!74 = !{!68, !35, i64 24}
!75 = !{!68, !35, i64 8}
!76 = !{!68, !35, i64 16}
!77 = !{!66, !35, i64 16}
!78 = !{!79, !44, i64 0}
!79 = !{!"_ZTSSt4pairIfP8VBVHNodeE", !44, i64 0, !35, i64 8}
!80 = !{!79, !35, i64 8}
!81 = distinct !{!81, !55, !56}
!82 = distinct !{!82, !55, !56}
!83 = !{!66, !35, i64 0}
!84 = !{!66, !35, i64 72}
!85 = distinct !{!85, !55, !56}
!86 = distinct !{!86, !55, !56}
!87 = distinct !{!87, !55, !56}
!88 = !{!41, !35, i64 32}
!89 = !{!41, !44, i64 40}
!90 = !{!91, !49, i64 0}
!91 = !{!"_ZTS8LCTSHint", !49, i64 0, !36, i64 8}
!92 = distinct !{!92, !55, !56}
!93 = distinct !{!93, !55, !56}
!94 = distinct !{!94, !55, !56}
!95 = distinct !{!95, !55, !56}
!96 = distinct !{!96, !55, !56}
!97 = distinct !{!97, !55, !56}
!98 = distinct !{!98, !55, !56}
!99 = distinct !{!99, !55, !56}
!100 = distinct !{!100, !55, !56}
!101 = distinct !{!101, !55, !56}
!102 = distinct !{!102, !55, !56}
!103 = !{!66, !67, i64 8}
!104 = distinct !{!104, !55, !56}
!105 = !{!67, !67, i64 0}
!106 = !{!"branch_weights", i32 1, i32 2000}
