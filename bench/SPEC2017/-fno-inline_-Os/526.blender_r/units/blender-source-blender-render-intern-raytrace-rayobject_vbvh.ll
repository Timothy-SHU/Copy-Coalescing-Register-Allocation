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
%struct.BuildBinaryVBVH = type { ptr, ptr }
%struct.LCTSHint = type { i32, [256 x ptr] }
%struct.VBVHNode = type { [6 x float], ptr, ptr }
%"class.std::queue" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl" }
%"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl" = type { %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data" }
%"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"struct.std::pair" = type { float, ptr }
%struct.RTBuilder = type { %struct.anon.0, [3 x ptr], [3 x ptr], i32, [33 x i32], [6 x float] }
%struct.anon.0 = type { ptr, ptr, i32 }
%"class.std::allocator.1" = type { i8 }

$_Z7is_leafI8VBVHNodeEbPT_ = comdat any

$_ZN15BuildBinaryVBVHI8VBVHNodeEC2EP8MemArenaP16RayObjectControl = comdat any

$_ZN15BuildBinaryVBVHI8VBVHNodeE9transformEP9RTBuilder = comdat any

$_ZN15BuildBinaryVBVHI8VBVHNodeE10_transformEP9RTBuilder = comdat any

$_ZN15BuildBinaryVBVHI8VBVHNodeE11create_nodeEv = comdat any

$_ZN15BuildBinaryVBVHI8VBVHNodeE10test_breakEv = comdat any

$_ZN15BuildBinaryVBVHI8VBVHNodeE13rtbuild_splitEP9RTBuilder = comdat any

$_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEEC2IS4_vEEv = comdat any

$_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE4pushERKS1_ = comdat any

$_ZNKSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE5emptyEv = comdat any

$_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE5frontEv = comdat any

$_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE3popEv = comdat any

$_ZNSt4pairIfP8VBVHNodeEC2IfRS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_ = comdat any

$_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEED2Ev = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EEC2Ev = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EEC2Ev = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE11_Deque_implC2Ev = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE17_M_initialize_mapEm = comdat any

$_ZNSt15__new_allocatorIP8VBVHNodeED2Ev = comdat any

$_ZNSaIP8VBVHNodeEC2Ev = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE16_Deque_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIP8VBVHNodeEC2Ev = comdat any

$_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_EC2Ev = comdat any

$_ZSt16__deque_buf_sizem = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE15_M_allocate_mapEm = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE15_M_create_nodesEPPS1_S5_ = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE17_M_deallocate_mapEPPS1_m = comdat any

$__clang_call_terminate = comdat any

$_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E11_M_set_nodeEPS3_ = comdat any

$_ZNKSt11_Deque_baseIP8VBVHNodeSaIS1_EE20_M_get_map_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIPP8VBVHNodeEE8allocateERS3_m = comdat any

$_ZNSt15__new_allocatorIPP8VBVHNodeED2Ev = comdat any

$_ZNKSt11_Deque_baseIP8VBVHNodeSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSaIPP8VBVHNodeEC2IS0_EERKSaIT_E = comdat any

$_ZNSt15__new_allocatorIPP8VBVHNodeEC2Ev = comdat any

$_ZNSt15__new_allocatorIPP8VBVHNodeE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIPP8VBVHNodeE11_M_max_sizeEv = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE16_M_allocate_nodeEv = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE16_M_destroy_nodesEPPS1_S5_ = comdat any

$_ZNSt16allocator_traitsISaIP8VBVHNodeEE8allocateERS2_m = comdat any

$_ZNSt15__new_allocatorIP8VBVHNodeE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorIP8VBVHNodeE11_M_max_sizeEv = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE18_M_deallocate_nodeEPS1_ = comdat any

$_ZNSt16allocator_traitsISaIP8VBVHNodeEE10deallocateERS2_PS1_m = comdat any

$_ZNSt15__new_allocatorIP8VBVHNodeE10deallocateEPS1_m = comdat any

$_ZNSt16allocator_traitsISaIPP8VBVHNodeEE10deallocateERS3_PS2_m = comdat any

$_ZNSt15__new_allocatorIPP8VBVHNodeE10deallocateEPS2_m = comdat any

$_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E14_S_buffer_sizeEv = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EE9push_backERKS1_ = comdat any

$_ZNSt16allocator_traitsISaIP8VBVHNodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_ = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_ = comdat any

$_ZNSt15__new_allocatorIP8VBVHNodeE9constructIS1_JRKS1_EEEvPT_DpOT0_ = comdat any

$_ZNKSt5dequeIP8VBVHNodeSaIS1_EE4sizeEv = comdat any

$_ZNKSt5dequeIP8VBVHNodeSaIS1_EE8max_sizeEv = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EE22_M_reserve_map_at_backEm = comdat any

$_ZStmiRKSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_ES6_ = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EE11_S_max_sizeERKS2_ = comdat any

$_ZNSt16allocator_traitsISaIP8VBVHNodeEE8max_sizeERKS2_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIP8VBVHNodeE8max_sizeEv = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EE17_M_reallocate_mapEmb = comdat any

$_ZSt4copyIPPP8VBVHNodeS3_ET0_T_S5_S4_ = comdat any

$_ZSt13copy_backwardIPPP8VBVHNodeS3_ET0_T_S5_S4_ = comdat any

$_ZSt13__copy_move_aILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPP8VBVHNodeET_S4_ = comdat any

$_ZSt12__niter_wrapIPPP8VBVHNodeET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__niter_baseIPPP8VBVHNodeET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPP8VBVHNodeEEPT_PKS6_S9_S7_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPP8VBVHNodeEEPT_PKS6_S9_S7_ = comdat any

$_ZNKSt5dequeIP8VBVHNodeSaIS1_EE5emptyEv = comdat any

$_ZSteqRKSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_ES6_ = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EE5frontEv = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EE5beginEv = comdat any

$_ZNKSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_EdeEv = comdat any

$_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_EC2ERKS4_ = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EE9pop_frontEv = comdat any

$_ZNSt16allocator_traitsISaIP8VBVHNodeEE7destroyIS1_EEvRS2_PT_ = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EE16_M_pop_front_auxEv = comdat any

$_ZNSt15__new_allocatorIP8VBVHNodeE7destroyIS1_EEvPT_ = comdat any

$_ZSt3minISt4pairIfP8VBVHNodeEERKT_S6_S6_ = comdat any

$_ZSt9make_pairIRfRP8VBVHNodeESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_ = comdat any

$_ZNSt4pairIfP8VBVHNodeEaSERKS2_ = comdat any

$_ZStltIfP8VBVHNodeEbRKSt4pairIT_T0_ES7_ = comdat any

$_ZNSt4pairIfP8VBVHNodeEC2IRfRS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_ = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EED2Ev = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_ = comdat any

$_ZNSt5dequeIP8VBVHNodeSaIS1_EE3endEv = comdat any

$_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EED2Ev = comdat any

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @RE_rayobject_vbvh_create(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc noundef ptr @_ZL15bvh_create_treeI8VBVHTreeLi256EEP9RayObjecti(i32 noundef %0) #17
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZL15bvh_create_treeI8VBVHTreeLi256EEP9RayObjecti(i32 noundef %0) unnamed_addr #0 !PGOFuncName !34 {
  %2 = load ptr, ptr @MEM_callocN, align 8, !tbaa !35
  %3 = tail call ptr %2(i64 noundef 56, ptr noundef nonnull @.str) #17
  tail call fastcc void @_ZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIi() #17
  store ptr @_ZZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIiE10bvh_api256, ptr %3, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct.VBVHTree, ptr %3, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = tail call ptr @rtbuild_create(i32 noundef %0) #17
  %6 = getelementptr inbounds %struct.VBVHTree, ptr %3, i64 0, i32 4
  store ptr %5, ptr %6, align 8, !tbaa !44
  %7 = ptrtoint ptr %3 to i64
  %8 = or i64 %7, 2
  %9 = inttoptr i64 %8 to ptr
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline nounwind optsize uwtable
define internal fastcc void @_ZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIi() unnamed_addr #2 personality ptr @__gxx_personality_v0 !PGOFuncName !45 {
  %1 = load atomic i8, ptr @_ZGVZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIiE10bvh_api256 acquire, align 8
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %7, !prof !46

3:                                                ; preds = %0
  %4 = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIiE10bvh_api256) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call fastcc void @_ZL8make_apiI8VBVHTreeLi1024EE12RayObjectAPIv() #17
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIiE10bvh_api256) #18
  br label %7

7:                                                ; preds = %6, %3, %0
  ret void
}

; Function Attrs: optsize
declare ptr @rtbuild_create(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @_ZL8make_apiI8VBVHTreeLi1024EE12RayObjectAPIv() unnamed_addr #5 !PGOFuncName !47 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) @_ZZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIiE10bvh_api256, ptr noundef nonnull align 8 dereferenceable(56) @_ZZL8make_apiI8VBVHTreeLi1024EE12RayObjectAPIvE3api, i64 56, i1 false), !tbaa.struct !48
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZL9intersectILi1024EEiP8VBVHTreeP5Isect(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !49 {
  %3 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.Isect, ptr %1, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !51
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call fastcc noundef i32 @_ZL22bvh_node_stack_raycastI8VBVHNodeLi1024ELb0ELb1EEiPT_P5Isect(ptr noundef %4, ptr noundef nonnull %1) #17
  br label %18

14:                                               ; preds = %8
  %15 = tail call fastcc noundef i32 @_ZL22bvh_node_stack_raycastI8VBVHNodeLi1024ELb0ELb0EEiPT_P5Isect(ptr noundef %4, ptr noundef nonnull %1) #17
  br label %18

16:                                               ; preds = %2
  %17 = tail call i32 @RE_rayobject_intersect(ptr noundef %4, ptr noundef %1) #17
  br label %18

18:                                               ; preds = %16, %14, %12
  %19 = phi i32 [ %13, %12 ], [ %15, %14 ], [ %17, %16 ]
  ret i32 %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZL7bvh_addI8VBVHTreeEvPT_P9RayObject(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !55 {
  %3 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  tail call void @rtbuild_add(ptr noundef %4, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZL8bvh_doneI8VBVHTreeEvPT_(ptr noundef %0) #0 !PGOFuncName !56 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.BuildBinaryVBVH, align 8
  %4 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %struct.RayObject, ptr %0, i64 0, i32 1
  tail call void @rtbuild_done(ptr noundef %5, ptr noundef nonnull %6) #17
  %7 = tail call ptr @BLI_memarena_new(i64 noundef 16376, ptr noundef nonnull @.str.1) #17
  tail call void @BLI_memarena_use_malloc(ptr noundef %7) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @_ZN15BuildBinaryVBVHI8VBVHNodeEC2EP8MemArenaP16RayObjectControl(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %7, ptr noundef nonnull %6) #17
  %8 = load ptr, ptr %4, align 8, !tbaa !44
  %9 = call noundef ptr @_ZN15BuildBinaryVBVHI8VBVHNodeE9transformEP9RTBuilder(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %8) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  store ptr %9, ptr %2, align 8, !tbaa !35
  %10 = call i32 @RE_rayobjectcontrol_test_break(ptr noundef nonnull %6) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = icmp eq ptr %9, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  call fastcc void @_ZL10reorganizeI8VBVHNodeEvPT_(ptr noundef nonnull %9) #17
  call fastcc void @_ZL14remove_uselessI8VBVHNodeEvPT_PS2_(ptr noundef nonnull %9, ptr noundef nonnull %2) #17
  %15 = load ptr, ptr %2, align 8, !tbaa !35
  %16 = call fastcc noundef float @_ZL9bvh_refitI8VBVHNodeEfPT_(ptr noundef %15) #17
  call fastcc void @_ZL6pushupI8VBVHNodeEvPT_(ptr noundef %15) #17
  call fastcc void @_ZL8pushdownI8VBVHNodeEvPT_(ptr noundef %15) #17
  br label %18

17:                                               ; preds = %1
  call void @BLI_memarena_free(ptr noundef %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br label %24

18:                                               ; preds = %12, %14
  %19 = phi ptr [ %15, %14 ], [ null, %12 ]
  %20 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  %21 = load ptr, ptr %4, align 8, !tbaa !44
  call void @rtbuild_free(ptr noundef %21) #17
  store ptr null, ptr %4, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 2
  store ptr %7, ptr %22, align 8, !tbaa !57
  %23 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 3
  store float 1.000000e+00, ptr %23, align 8, !tbaa !58
  br label %24

24:                                               ; preds = %17, %18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZL8bvh_freeI8VBVHTreeEvPT_(ptr noundef %0) #0 !PGOFuncName !59 {
  %2 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @rtbuild_free(ptr noundef nonnull %3) #17
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @BLI_memarena_free(ptr noundef nonnull %8) #17
  br label %11

11:                                               ; preds = %10, %6
  %12 = load ptr, ptr @MEM_freeN, align 8, !tbaa !35
  tail call void %12(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZL6bvh_bbI8VBVHTreeEvPT_PfS3_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !60 {
  %4 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !50
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @_ZL17bvh_node_merge_bbI8VBVHNodeEvPT_PfS3_(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2) #17
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal noundef float @_ZL8bvh_costI8VBVHTreeEfPT_(ptr nocapture noundef readonly %0) #6 !PGOFuncName !61 {
  %2 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 3
  %3 = load float, ptr %2, align 8, !tbaa !58
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL11bvh_hint_bbI8VBVHTreeEvPT_P8LCTSHintPfS5_(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #7 !PGOFuncName !62 {
  %5 = getelementptr inbounds %struct.VBVHTree, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.LCTSHint, ptr %1, i64 0, i32 1
  store i32 1, ptr %1, align 8, !tbaa !63
  store ptr %6, ptr %7, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZL22bvh_node_stack_raycastI8VBVHNodeLi1024ELb0ELb1EEiPT_P5Isect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !65 {
  %3 = alloca [1024 x ptr], align 16
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 0, ptr %4, align 4, !tbaa !66
  %5 = tail call noundef zeroext i1 @_Z7is_leafI8VBVHNodeEbPT_(ptr noundef %0) #17
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr %0, ptr %3, align 16, !tbaa !35
  br label %10

7:                                                ; preds = %2
  call fastcc void @_ZL20bvh_node_push_childsI8VBVHNodeEvPT_P5IsectPS2_Ri(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #17
  %8 = load i32, ptr %4, align 4, !tbaa !66
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %6, %7
  %11 = phi i32 [ %8, %7 ], [ 1, %6 ]
  br label %12

12:                                               ; preds = %10, %27
  %13 = phi i32 [ %28, %27 ], [ %11, %10 ]
  %14 = add nsw i32 %13, -1
  store i32 %14, ptr %4, align 4, !tbaa !66
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [1024 x ptr], ptr %3, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = tail call noundef zeroext i1 @_Z7is_leafI8VBVHNodeEbPT_(ptr noundef %17) #17
  br i1 %18, label %24, label %19

19:                                               ; preds = %12
  %20 = tail call fastcc noundef i32 @_ZL17bvh_node_hit_testI8VBVHNodeEiPT_P5Isect(ptr noundef %17, ptr noundef %1) #17, !range !67
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  call fastcc void @_ZL20bvh_node_push_childsI8VBVHNodeEvPT_P5IsectPS2_Ri(ptr noundef %17, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #17
  %23 = load i32, ptr %4, align 4, !tbaa !66
  br label %27

24:                                               ; preds = %12
  %25 = tail call i32 @RE_rayobject_intersect(ptr noundef %17, ptr noundef %1) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %22, %19
  %28 = phi i32 [ %14, %24 ], [ %23, %22 ], [ %14, %19 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %12, !llvm.loop !68

30:                                               ; preds = %27, %24, %7
  %31 = phi i32 [ 0, %7 ], [ %25, %24 ], [ 0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #18
  ret i32 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZL22bvh_node_stack_raycastI8VBVHNodeLi1024ELb0ELb0EEiPT_P5Isect(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !70 {
  %3 = alloca [1024 x ptr], align 16
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 0, ptr %4, align 4, !tbaa !66
  %5 = tail call noundef zeroext i1 @_Z7is_leafI8VBVHNodeEbPT_(ptr noundef %0) #17
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store ptr %0, ptr %3, align 16, !tbaa !35
  br label %10

7:                                                ; preds = %2
  call fastcc void @_ZL20bvh_node_push_childsI8VBVHNodeEvPT_P5IsectPS2_Ri(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #17
  %8 = load i32, ptr %4, align 4, !tbaa !66
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %6, %7
  %11 = phi i32 [ %8, %7 ], [ 1, %6 ]
  br label %12

12:                                               ; preds = %10, %28
  %13 = phi i32 [ %29, %28 ], [ %11, %10 ]
  %14 = phi i32 [ %30, %28 ], [ 0, %10 ]
  %15 = add nsw i32 %13, -1
  store i32 %15, ptr %4, align 4, !tbaa !66
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [1024 x ptr], ptr %3, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = tail call noundef zeroext i1 @_Z7is_leafI8VBVHNodeEbPT_(ptr noundef %18) #17
  br i1 %19, label %25, label %20

20:                                               ; preds = %12
  %21 = tail call fastcc noundef i32 @_ZL17bvh_node_hit_testI8VBVHNodeEiPT_P5Isect(ptr noundef %18, ptr noundef %1) #17, !range !67
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  call fastcc void @_ZL20bvh_node_push_childsI8VBVHNodeEvPT_P5IsectPS2_Ri(ptr noundef %18, ptr noundef nonnull %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #17
  %24 = load i32, ptr %4, align 4, !tbaa !66
  br label %28

25:                                               ; preds = %12
  %26 = tail call i32 @RE_rayobject_intersect(ptr noundef %18, ptr noundef %1) #17
  %27 = or i32 %26, %14
  br label %28

28:                                               ; preds = %20, %23, %25
  %29 = phi i32 [ %15, %25 ], [ %24, %23 ], [ %15, %20 ]
  %30 = phi i32 [ %27, %25 ], [ %14, %23 ], [ %14, %20 ]
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %32, label %12, !llvm.loop !71

32:                                               ; preds = %28, %7
  %33 = phi i32 [ 0, %7 ], [ %30, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %3) #18
  ret i32 %33
}

; Function Attrs: optsize
declare i32 @RE_rayobject_intersect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z7is_leafI8VBVHNodeEbPT_(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = ptrtoint ptr %0 to i64
  %3 = and i64 %2, 3
  %4 = icmp ne i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc void @_ZL20bvh_node_push_childsI8VBVHNodeEvPT_P5IsectPS2_Ri(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #9 !PGOFuncName !72 {
  %4 = getelementptr inbounds %struct.VBVHNode, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = tail call noundef zeroext i1 @_Z7is_leafI8VBVHNodeEbPT_(ptr noundef %5) #17
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %2, align 4, !tbaa !66
  %11 = sext i32 %10 to i64
  br label %17

12:                                               ; preds = %3
  %13 = load i32, ptr %2, align 4, !tbaa !66
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %2, align 4, !tbaa !66
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds ptr, ptr %1, i64 %15
  store ptr %5, ptr %16, align 8, !tbaa !35
  br label %27

17:                                               ; preds = %9, %17
  %18 = phi i64 [ %11, %9 ], [ %20, %17 ]
  %19 = phi ptr [ %5, %9 ], [ %23, %17 ]
  %20 = add i64 %18, 1
  %21 = getelementptr inbounds ptr, ptr %1, i64 %18
  store ptr %19, ptr %21, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.VBVHNode, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %17, !llvm.loop !76

25:                                               ; preds = %17
  %26 = trunc i64 %20 to i32
  store i32 %26, ptr %2, align 4, !tbaa !66
  br label %27

27:                                               ; preds = %7, %25, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZL17bvh_node_hit_testI8VBVHNodeEiPT_P5Isect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !77 {
  %3 = tail call fastcc noundef i32 @_ZL27rayobject_bb_intersect_testPK5IsectPKf(ptr noundef %1, ptr noundef %0) #17, !range !67
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZL27rayobject_bb_intersect_testPK5IsectPKf(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !PGOFuncName !78 {
  %3 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !66
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds float, ptr %1, i64 %5
  %7 = load float, ptr %6, align 4, !tbaa !79
  %8 = load float, ptr %0, align 8, !tbaa !79
  %9 = fsub float %7, %8
  %10 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 6
  %11 = load float, ptr %10, align 4, !tbaa !79
  %12 = fmul float %9, %11
  %13 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 5, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !66
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds float, ptr %1, i64 %15
  %17 = load float, ptr %16, align 4, !tbaa !79
  %18 = fsub float %17, %8
  %19 = fmul float %11, %18
  %20 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 5, i64 2
  %21 = load i32, ptr %20, align 4, !tbaa !66
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds float, ptr %1, i64 %22
  %24 = load float, ptr %23, align 4, !tbaa !79
  %25 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  %26 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 6, i64 1
  %27 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 5, i64 3
  %28 = load i32, ptr %27, align 4, !tbaa !66
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, ptr %1, i64 %29
  %31 = load float, ptr %30, align 4, !tbaa !79
  %32 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 5, i64 4
  %33 = load i32, ptr %32, align 4, !tbaa !66
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, ptr %1, i64 %34
  %36 = load float, ptr %35, align 4, !tbaa !79
  %37 = load <2 x float>, ptr %25, align 4, !tbaa !79
  %38 = load <2 x float>, ptr %26, align 4, !tbaa !79
  %39 = insertelement <2 x float> poison, float %31, i64 0
  %40 = insertelement <2 x float> %39, float %36, i64 1
  %41 = fsub <2 x float> %40, %37
  %42 = fmul <2 x float> %38, %41
  %43 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 5, i64 5
  %44 = load i32, ptr %43, align 4, !tbaa !66
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float, ptr %1, i64 %45
  %47 = load float, ptr %46, align 4, !tbaa !79
  %48 = insertelement <2 x float> poison, float %24, i64 0
  %49 = insertelement <2 x float> %48, float %47, i64 1
  %50 = fsub <2 x float> %49, %37
  %51 = fmul <2 x float> %50, %38
  %52 = extractelement <2 x float> %42, i64 0
  %53 = fcmp ogt float %12, %52
  %54 = extractelement <2 x float> %51, i64 0
  %55 = fcmp olt float %19, %54
  %56 = select i1 %53, i1 true, i1 %55
  %57 = extractelement <2 x float> %51, i64 1
  %58 = fcmp ogt float %12, %57
  %59 = select i1 %56, i1 true, i1 %58
  %60 = extractelement <2 x float> %42, i64 1
  %61 = fcmp olt float %19, %60
  %62 = select i1 %59, i1 true, i1 %61
  %63 = fcmp ogt float %54, %57
  %64 = select i1 %62, i1 true, i1 %63
  %65 = fcmp olt float %52, %60
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %82, label %67

67:                                               ; preds = %2
  %68 = fcmp olt float %19, 0.000000e+00
  %69 = fcmp olt float %52, 0.000000e+00
  %70 = or i1 %68, %69
  %71 = fcmp olt float %57, 0.000000e+00
  %72 = select i1 %70, i1 true, i1 %71
  br i1 %72, label %82, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.Isect, ptr %0, i64 0, i32 2
  %75 = load float, ptr %74, align 8, !tbaa !80
  %76 = fcmp ule float %12, %75
  %77 = fcmp ule float %54, %75
  %78 = select i1 %76, i1 %77, i1 false
  %79 = fcmp ule float %60, %75
  %80 = select i1 %78, i1 %79, i1 false
  %81 = zext i1 %80 to i32
  br label %82

82:                                               ; preds = %73, %67, %2
  %83 = phi i32 [ 0, %2 ], [ 0, %67 ], [ %81, %73 ]
  ret i32 %83
}

; Function Attrs: optsize
declare void @rtbuild_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @rtbuild_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_memarena_new(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_memarena_use_malloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15BuildBinaryVBVHI8VBVHNodeEC2EP8MemArenaP16RayObjectControl(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 comdat align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !81
  %4 = getelementptr inbounds %struct.BuildBinaryVBVH, ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN15BuildBinaryVBVHI8VBVHNodeE9transformEP9RTBuilder(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = invoke noundef ptr @_ZN15BuildBinaryVBVHI8VBVHNodeE10_transformEP9RTBuilder(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #17
          to label %8 unwind label %4

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = tail call ptr @__cxa_begin_catch(ptr %6) #18
  tail call void @__cxa_end_catch()
  br label %8

8:                                                ; preds = %2, %4
  %9 = phi ptr [ null, %4 ], [ %3, %2 ]
  ret ptr %9
}

; Function Attrs: optsize
declare i32 @RE_rayobjectcontrol_test_break(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @BLI_memarena_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL10reorganizeI8VBVHNodeEvPT_(ptr noundef %0) unnamed_addr #0 personality ptr @__gxx_personality_v0 !PGOFuncName !84 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::queue", align 8
  %4 = alloca %"struct.std::pair", align 8
  %5 = alloca float, align 4
  store ptr %0, ptr %2, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #18
  call void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEEC2IS4_vEEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #17
  invoke void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #17
          to label %6 unwind label %20

6:                                                ; preds = %1
  %7 = call noundef zeroext i1 @_ZNKSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #17
  br i1 %7, label %47, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"struct.std::pair", ptr %4, i64 0, i32 1
  br label %10

10:                                               ; preds = %8, %45
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE5frontEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #17
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  call void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #17
  %13 = getelementptr inbounds %struct.VBVHNode, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = ptrtoint ptr %14 to i64
  %16 = and i64 %15, 3
  %17 = icmp ne i64 %16, 0
  %18 = icmp eq ptr %14, null
  %19 = or i1 %17, %18
  br i1 %19, label %45, label %22

20:                                               ; preds = %1
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %48

22:                                               ; preds = %10, %41
  %23 = phi ptr [ %42, %41 ], [ %13, %10 ]
  invoke void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(8) %23) #17
          to label %24 unwind label %32

24:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store float 0x47EFFFFFE0000000, ptr %5, align 4, !tbaa !79
  call void @_ZNSt4pairIfP8VBVHNodeEC2IfRS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  %25 = load ptr, ptr %2, align 8, !tbaa !35
  %26 = load ptr, ptr %23, align 8, !tbaa !35
  invoke fastcc void @_ZL30reorganize_find_fittest_parentI8VBVHNodeEvPT_S2_RSt4pairIfS2_E(ptr noundef %25, ptr noundef %26, ptr noundef nonnull align 8 dereferenceable(16) %4) #17
          to label %27 unwind label %34

27:                                               ; preds = %24
  %28 = load ptr, ptr %9, align 8, !tbaa !85
  %29 = icmp eq ptr %28, %12
  %30 = load ptr, ptr %23, align 8, !tbaa !35
  %31 = getelementptr inbounds %struct.VBVHNode, ptr %30, i64 0, i32 2
  br i1 %29, label %41, label %36

32:                                               ; preds = %22
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %48

34:                                               ; preds = %24
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  br label %48

36:                                               ; preds = %27
  %37 = load ptr, ptr %31, align 8, !tbaa !75
  store ptr %37, ptr %23, align 8, !tbaa !35
  %38 = load ptr, ptr %9, align 8, !tbaa !85
  %39 = getelementptr inbounds %struct.VBVHNode, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !73
  store ptr %40, ptr %31, align 8, !tbaa !75
  store ptr %30, ptr %39, align 8, !tbaa !73
  br label %41

41:                                               ; preds = %27, %36
  %42 = phi ptr [ %23, %36 ], [ %31, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  %43 = load ptr, ptr %42, align 8, !tbaa !35
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %22, !llvm.loop !87

45:                                               ; preds = %41, %10
  %46 = call noundef zeroext i1 @_ZNKSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #17
  br i1 %46, label %47, label %10, !llvm.loop !88

47:                                               ; preds = %45, %6
  call void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %3) #19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #18
  ret void

48:                                               ; preds = %32, %34, %20
  %49 = phi { ptr, i32 } [ %21, %20 ], [ %35, %34 ], [ %33, %32 ]
  call void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %3) #19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #18
  resume { ptr, i32 } %49
}

; Function Attrs: mustprogress nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_ZL14remove_uselessI8VBVHNodeEvPT_PS2_(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !PGOFuncName !89 {
  %3 = getelementptr inbounds %struct.VBVHNode, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = ptrtoint ptr %4 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %8, %23
  %11 = phi ptr [ %25, %23 ], [ %3, %8 ]
  %12 = phi ptr [ %24, %23 ], [ %4, %8 ]
  %13 = getelementptr inbounds %struct.VBVHNode, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  tail call fastcc void @_ZL14remove_uselessI8VBVHNodeEvPT_PS2_(ptr noundef nonnull %12, ptr noundef nonnull %11) #17
  %15 = load ptr, ptr %11, align 8, !tbaa !35
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store ptr %14, ptr %11, align 8, !tbaa !35
  br label %23

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.VBVHNode, ptr %15, i64 0, i32 2
  store ptr %14, ptr %19, align 8, !tbaa !75
  %20 = load ptr, ptr %11, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.VBVHNode, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  br label %23

23:                                               ; preds = %18, %17
  %24 = phi ptr [ %14, %17 ], [ %22, %18 ]
  %25 = phi ptr [ %11, %17 ], [ %21, %18 ]
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %10, !llvm.loop !90

27:                                               ; preds = %23
  %28 = load ptr, ptr %3, align 8, !tbaa !73
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi ptr [ %4, %2 ], [ %28, %27 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = ptrtoint ptr %30 to i64
  %34 = and i64 %33, 3
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.VBVHNode, ptr %30, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !75
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %29, %8, %36
  %41 = phi ptr [ %30, %36 ], [ null, %8 ], [ null, %29 ]
  store ptr %41, ptr %1, align 8, !tbaa !35
  br label %42

42:                                               ; preds = %40, %32, %36
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef float @_ZL9bvh_refitI8VBVHNodeEfPT_(ptr noundef %0) unnamed_addr #0 !PGOFuncName !91 {
  %2 = tail call noundef zeroext i1 @_Z7is_leafI8VBVHNodeEbPT_(ptr noundef %0) #17
  br i1 %2, label %78, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VBVHNode, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = tail call noundef zeroext i1 @_Z7is_leafI8VBVHNodeEbPT_(ptr noundef %5) #17
  br i1 %6, label %78, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %20, %7
  %11 = phi float [ 0.000000e+00, %7 ], [ %24, %20 ]
  %12 = getelementptr inbounds float, ptr %0, i64 3
  %13 = tail call float @bb_area(ptr noundef %0, ptr noundef nonnull %12) #17
  %14 = getelementptr inbounds [6 x float], ptr %0, i64 0, i64 2
  %15 = getelementptr inbounds [6 x float], ptr %0, i64 0, i64 1
  %16 = getelementptr inbounds float, ptr %0, i64 5
  %17 = getelementptr inbounds float, ptr %0, i64 4
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %17, align 4, !tbaa !79
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %0, align 8, !tbaa !79
  %18 = load ptr, ptr %4, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %28, label %32

20:                                               ; preds = %7, %20
  %21 = phi ptr [ %26, %20 ], [ %8, %7 ]
  %22 = phi float [ %24, %20 ], [ 0.000000e+00, %7 ]
  %23 = tail call fastcc noundef float @_ZL9bvh_refitI8VBVHNodeEfPT_(ptr noundef nonnull %21) #17
  %24 = fadd float %22, %23
  %25 = getelementptr inbounds %struct.VBVHNode, ptr %21, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = icmp eq ptr %26, null
  br i1 %27, label %10, label %20, !llvm.loop !92

28:                                               ; preds = %73, %10
  %29 = tail call float @bb_area(ptr noundef nonnull %0, ptr noundef nonnull %12) #17
  %30 = fsub float %13, %29
  %31 = fadd float %11, %30
  br label %78

32:                                               ; preds = %10, %73
  %33 = phi float [ %74, %73 ], [ 0xC6293E5940000000, %10 ]
  %34 = phi float [ %68, %73 ], [ 0xC6293E5940000000, %10 ]
  %35 = phi float [ %62, %73 ], [ 0xC6293E5940000000, %10 ]
  %36 = phi float [ %56, %73 ], [ 0x46293E5940000000, %10 ]
  %37 = phi float [ %50, %73 ], [ 0x46293E5940000000, %10 ]
  %38 = phi float [ %44, %73 ], [ 0x46293E5940000000, %10 ]
  %39 = phi ptr [ %76, %73 ], [ %18, %10 ]
  %40 = load float, ptr %39, align 8, !tbaa !79
  %41 = fcmp ogt float %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store float %40, ptr %0, align 8, !tbaa !79
  br label %43

43:                                               ; preds = %42, %32
  %44 = phi float [ %40, %42 ], [ %38, %32 ]
  %45 = getelementptr inbounds [6 x float], ptr %39, i64 0, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !79
  %47 = fcmp ogt float %37, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store float %46, ptr %15, align 4, !tbaa !79
  br label %49

49:                                               ; preds = %48, %43
  %50 = phi float [ %46, %48 ], [ %37, %43 ]
  %51 = getelementptr inbounds [6 x float], ptr %39, i64 0, i64 2
  %52 = load float, ptr %51, align 8, !tbaa !79
  %53 = fcmp ogt float %36, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store float %52, ptr %14, align 8, !tbaa !79
  br label %55

55:                                               ; preds = %54, %49
  %56 = phi float [ %52, %54 ], [ %36, %49 ]
  %57 = getelementptr inbounds float, ptr %39, i64 3
  %58 = load float, ptr %57, align 4, !tbaa !79
  %59 = fcmp olt float %35, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store float %58, ptr %12, align 4, !tbaa !79
  br label %61

61:                                               ; preds = %60, %55
  %62 = phi float [ %58, %60 ], [ %35, %55 ]
  %63 = getelementptr inbounds float, ptr %39, i64 4
  %64 = load float, ptr %63, align 4, !tbaa !79
  %65 = fcmp olt float %34, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store float %64, ptr %17, align 4, !tbaa !79
  br label %67

67:                                               ; preds = %66, %61
  %68 = phi float [ %64, %66 ], [ %34, %61 ]
  %69 = getelementptr inbounds float, ptr %39, i64 5
  %70 = load float, ptr %69, align 4, !tbaa !79
  %71 = fcmp olt float %33, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store float %70, ptr %16, align 4, !tbaa !79
  br label %73

73:                                               ; preds = %67, %72
  %74 = phi float [ %33, %67 ], [ %70, %72 ]
  %75 = getelementptr inbounds %struct.VBVHNode, ptr %39, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  %77 = icmp eq ptr %76, null
  br i1 %77, label %28, label %32, !llvm.loop !93

78:                                               ; preds = %3, %1, %28
  %79 = phi float [ %31, %28 ], [ 0.000000e+00, %1 ], [ 0.000000e+00, %3 ]
  ret float %79
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL6pushupI8VBVHNodeEvPT_(ptr noundef %0) unnamed_addr #0 !PGOFuncName !94 {
  %2 = tail call noundef zeroext i1 @_Z7is_leafI8VBVHNodeEbPT_(ptr noundef %0) #17
  br i1 %2, label %66, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds float, ptr %0, i64 3
  %5 = tail call float @bb_area(ptr noundef %0, ptr noundef nonnull %4) #17
  %6 = getelementptr inbounds %struct.VBVHNode, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = ptrtoint ptr %7 to i64
  %9 = and i64 %8, 3
  %10 = icmp eq i64 %9, 0
  %11 = icmp ne ptr %7, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = fcmp une float %5, 0.000000e+00
  br label %25

15:                                               ; preds = %49
  %16 = load ptr, ptr %6, align 8, !tbaa !35
  %17 = ptrtoint ptr %16 to i64
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i64 [ %17, %15 ], [ %8, %3 ]
  %20 = phi ptr [ %16, %15 ], [ %7, %3 ]
  %21 = and i64 %19, 3
  %22 = icmp eq i64 %21, 0
  %23 = icmp ne ptr %20, null
  %24 = and i1 %23, %22
  br i1 %24, label %57, label %66

25:                                               ; preds = %13, %49
  %26 = phi ptr [ %6, %13 ], [ %51, %49 ]
  %27 = phi ptr [ %7, %13 ], [ %50, %49 ]
  %28 = getelementptr inbounds float, ptr %27, i64 3
  %29 = tail call float @bb_area(ptr noundef nonnull %27, ptr noundef nonnull %28) #17
  %30 = tail call fastcc noundef i32 @_ZL12count_childsI8VBVHNodeEiPT_(ptr noundef nonnull %27) #17
  %31 = fdiv float %29, %5
  %32 = sitofp i32 %30 to float
  %33 = fmul float %31, %32
  %34 = fadd float %33, 1.000000e+00
  %35 = select i1 %14, float %34, float 2.000000e+00
  %36 = fcmp ogt float %35, %32
  %37 = icmp sgt i32 %30, 1
  %38 = and i1 %37, %36
  br i1 %38, label %39, label %46

39:                                               ; preds = %25
  %40 = getelementptr inbounds %struct.VBVHNode, ptr %27, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !73
  tail call fastcc void @_ZL14append_siblingI8VBVHNodeEvPT_S2_(ptr noundef nonnull %27, ptr noundef %41) #17
  %42 = getelementptr inbounds %struct.VBVHNode, ptr %27, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !75
  store ptr %43, ptr %26, align 8, !tbaa !35
  %44 = load i32, ptr @tot_pushup, align 4, !tbaa !66
  %45 = add nsw i32 %44, 1
  store i32 %45, ptr @tot_pushup, align 4, !tbaa !66
  br label %49

46:                                               ; preds = %25
  store ptr %27, ptr %26, align 8, !tbaa !35
  %47 = getelementptr inbounds %struct.VBVHNode, ptr %27, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  br label %49

49:                                               ; preds = %46, %39
  %50 = phi ptr [ %43, %39 ], [ %48, %46 ]
  %51 = phi ptr [ %26, %39 ], [ %47, %46 ]
  %52 = ptrtoint ptr %50 to i64
  %53 = and i64 %52, 3
  %54 = icmp eq i64 %53, 0
  %55 = icmp ne ptr %50, null
  %56 = and i1 %55, %54
  br i1 %56, label %25, label %15, !llvm.loop !95

57:                                               ; preds = %18, %57
  %58 = phi ptr [ %60, %57 ], [ %20, %18 ]
  tail call fastcc void @_ZL6pushupI8VBVHNodeEvPT_(ptr noundef nonnull %58) #17
  %59 = getelementptr inbounds %struct.VBVHNode, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !35
  %61 = ptrtoint ptr %60 to i64
  %62 = and i64 %61, 3
  %63 = icmp eq i64 %62, 0
  %64 = icmp ne ptr %60, null
  %65 = and i1 %64, %63
  br i1 %65, label %57, label %66, !llvm.loop !96

66:                                               ; preds = %57, %18, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL8pushdownI8VBVHNodeEvPT_(ptr nocapture noundef %0) unnamed_addr #0 !PGOFuncName !97 {
  %2 = getelementptr inbounds %struct.VBVHNode, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp ne ptr %3, null
  %5 = ptrtoint ptr %3 to i64
  %6 = and i64 %5, 3
  %7 = icmp eq i64 %6, 0
  %8 = and i1 %4, %7
  br i1 %8, label %19, label %12

9:                                                ; preds = %59
  %10 = load ptr, ptr %2, align 8, !tbaa !35
  %11 = ptrtoint ptr %10 to i64
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi i64 [ %11, %9 ], [ %5, %1 ]
  %14 = phi ptr [ %10, %9 ], [ %3, %1 ]
  %15 = and i64 %13, 3
  %16 = icmp eq i64 %15, 0
  %17 = icmp ne ptr %14, null
  %18 = and i1 %17, %16
  br i1 %18, label %67, label %66

19:                                               ; preds = %1, %59
  %20 = phi ptr [ %60, %59 ], [ %2, %1 ]
  %21 = phi ptr [ %23, %59 ], [ %3, %1 ]
  %22 = getelementptr inbounds %struct.VBVHNode, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !75
  %24 = load ptr, ptr %2, align 8, !tbaa !35
  %25 = ptrtoint ptr %24 to i64
  %26 = and i64 %25, 3
  %27 = icmp eq i64 %26, 0
  %28 = icmp ne ptr %24, null
  %29 = and i1 %28, %27
  br i1 %29, label %30, label %59

30:                                               ; preds = %19
  %31 = getelementptr inbounds float, ptr %21, i64 3
  br label %32

32:                                               ; preds = %30, %51
  %33 = phi ptr [ %24, %30 ], [ %53, %51 ]
  %34 = icmp eq ptr %21, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds float, ptr %33, i64 3
  %37 = tail call i32 @bb_fits_inside(ptr noundef nonnull %33, ptr noundef nonnull %36, ptr noundef nonnull %21, ptr noundef nonnull %31) #17
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.VBVHNode, ptr %33, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !73
  %42 = ptrtoint ptr %41 to i64
  %43 = and i64 %42, 3
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.VBVHNode, ptr %33, i64 0, i32 1
  %47 = load ptr, ptr %22, align 8, !tbaa !75
  store ptr %47, ptr %20, align 8, !tbaa !35
  %48 = load ptr, ptr %46, align 8, !tbaa !73
  store ptr %48, ptr %22, align 8, !tbaa !75
  store ptr %21, ptr %46, align 8, !tbaa !73
  %49 = load i32, ptr @tot_pushdown, align 4, !tbaa !66
  %50 = add nsw i32 %49, 1
  store i32 %50, ptr @tot_pushdown, align 4, !tbaa !66
  br label %59

51:                                               ; preds = %32, %35, %39
  %52 = getelementptr inbounds %struct.VBVHNode, ptr %33, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = ptrtoint ptr %53 to i64
  %55 = and i64 %54, 3
  %56 = icmp eq i64 %55, 0
  %57 = icmp ne ptr %53, null
  %58 = and i1 %57, %56
  br i1 %58, label %32, label %59, !llvm.loop !98

59:                                               ; preds = %51, %19, %45
  %60 = phi ptr [ %20, %45 ], [ %22, %19 ], [ %22, %51 ]
  %61 = icmp ne ptr %23, null
  %62 = ptrtoint ptr %23 to i64
  %63 = and i64 %62, 3
  %64 = icmp eq i64 %63, 0
  %65 = and i1 %61, %64
  br i1 %65, label %19, label %9, !llvm.loop !99

66:                                               ; preds = %67, %12
  ret void

67:                                               ; preds = %12, %67
  %68 = phi ptr [ %70, %67 ], [ %14, %12 ]
  tail call fastcc void @_ZL8pushdownI8VBVHNodeEvPT_(ptr noundef nonnull %68) #17
  %69 = getelementptr inbounds %struct.VBVHNode, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !35
  %71 = ptrtoint ptr %70 to i64
  %72 = and i64 %71, 3
  %73 = icmp eq i64 %72, 0
  %74 = icmp ne ptr %70, null
  %75 = and i1 %74, %73
  br i1 %75, label %67, label %66, !llvm.loop !100
}

; Function Attrs: optsize
declare void @rtbuild_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN15BuildBinaryVBVHI8VBVHNodeE10_transformEP9RTBuilder(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = alloca %struct.RTBuilder, align 8
  %4 = tail call i32 @rtbuild_size(ptr noundef %1) #17
  switch i32 %4, label %11 [
    i32 0, label %66
    i32 1, label %5
  ]

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZN15BuildBinaryVBVHI8VBVHNodeE11create_nodeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  %7 = getelementptr inbounds float, ptr %6, i64 3
  %8 = getelementptr inbounds float, ptr %6, i64 4
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %8, align 4, !tbaa !79
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %6, align 8, !tbaa !79
  tail call void @rtbuild_merge_bb(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #17
  %9 = tail call ptr @rtbuild_get_primitive(ptr noundef %1, i32 noundef 0) #17
  %10 = getelementptr inbounds %struct.VBVHNode, ptr %6, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !73
  br label %66

11:                                               ; preds = %2
  tail call void @_ZN15BuildBinaryVBVHI8VBVHNodeE10test_breakEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  %12 = tail call noundef ptr @_ZN15BuildBinaryVBVHI8VBVHNodeE11create_nodeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  %13 = getelementptr inbounds %struct.VBVHNode, ptr %12, i64 0, i32 1
  %14 = tail call noundef i32 @_ZN15BuildBinaryVBVHI8VBVHNodeE13rtbuild_splitEP9RTBuilder(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #17
  %15 = getelementptr inbounds [6 x float], ptr %12, i64 0, i64 2
  %16 = getelementptr inbounds [6 x float], ptr %12, i64 0, i64 1
  %17 = getelementptr inbounds float, ptr %12, i64 3
  %18 = getelementptr inbounds float, ptr %12, i64 5
  %19 = getelementptr inbounds float, ptr %12, i64 4
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %19, align 4, !tbaa !79
  store <4 x float> <float 0x46293E5940000000, float 0x46293E5940000000, float 0x46293E5940000000, float 0xC6293E5940000000>, ptr %12, align 8, !tbaa !79
  %20 = icmp sgt i32 %14, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %62, %11
  %22 = phi ptr [ %13, %11 ], [ %63, %62 ]
  store ptr null, ptr %22, align 8, !tbaa !35
  br label %66

23:                                               ; preds = %11, %62
  %24 = phi i32 [ %64, %62 ], [ 0, %11 ]
  %25 = phi ptr [ %63, %62 ], [ %13, %11 ]
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %3) #18
  %26 = call ptr @rtbuild_get_child(ptr noundef %1, i32 noundef %24, ptr noundef nonnull %3) #17
  %27 = call noundef ptr @_ZN15BuildBinaryVBVHI8VBVHNodeE10_transformEP9RTBuilder(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3) #17
  store ptr %27, ptr %25, align 8, !tbaa !35
  %28 = load float, ptr %12, align 8, !tbaa !79
  %29 = load float, ptr %27, align 8, !tbaa !79
  %30 = fcmp ogt float %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store float %29, ptr %12, align 8, !tbaa !79
  br label %32

32:                                               ; preds = %31, %23
  %33 = load float, ptr %16, align 4, !tbaa !79
  %34 = getelementptr inbounds [6 x float], ptr %27, i64 0, i64 1
  %35 = load float, ptr %34, align 4, !tbaa !79
  %36 = fcmp ogt float %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store float %35, ptr %16, align 4, !tbaa !79
  br label %38

38:                                               ; preds = %37, %32
  %39 = load float, ptr %15, align 8, !tbaa !79
  %40 = getelementptr inbounds [6 x float], ptr %27, i64 0, i64 2
  %41 = load float, ptr %40, align 8, !tbaa !79
  %42 = fcmp ogt float %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store float %41, ptr %15, align 8, !tbaa !79
  br label %44

44:                                               ; preds = %43, %38
  %45 = load float, ptr %17, align 4, !tbaa !79
  %46 = getelementptr inbounds float, ptr %27, i64 3
  %47 = load float, ptr %46, align 4, !tbaa !79
  %48 = fcmp olt float %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store float %47, ptr %17, align 4, !tbaa !79
  br label %50

50:                                               ; preds = %49, %44
  %51 = load float, ptr %19, align 4, !tbaa !79
  %52 = getelementptr inbounds float, ptr %27, i64 4
  %53 = load float, ptr %52, align 4, !tbaa !79
  %54 = fcmp olt float %51, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store float %53, ptr %19, align 4, !tbaa !79
  br label %56

56:                                               ; preds = %55, %50
  %57 = load float, ptr %18, align 4, !tbaa !79
  %58 = getelementptr inbounds float, ptr %27, i64 5
  %59 = load float, ptr %58, align 4, !tbaa !79
  %60 = fcmp olt float %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store float %59, ptr %18, align 4, !tbaa !79
  br label %62

62:                                               ; preds = %61, %56
  %63 = getelementptr inbounds %struct.VBVHNode, ptr %27, i64 0, i32 2
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %3) #18
  %64 = add nuw nsw i32 %24, 1
  %65 = icmp eq i32 %64, %14
  br i1 %65, label %21, label %23, !llvm.loop !101

66:                                               ; preds = %2, %21, %5
  %67 = phi ptr [ %6, %5 ], [ %12, %21 ], [ null, %2 ]
  ret ptr %67
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: optsize
declare i32 @rtbuild_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN15BuildBinaryVBVHI8VBVHNodeE11create_nodeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !81
  %3 = tail call ptr @BLI_memarena_alloc(ptr noundef %2, i64 noundef 40) #17
  %4 = getelementptr inbounds %struct.VBVHNode, ptr %3, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret ptr %3
}

; Function Attrs: optsize
declare void @rtbuild_merge_bb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @rtbuild_get_primitive(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN15BuildBinaryVBVHI8VBVHNodeE10test_breakEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds %struct.BuildBinaryVBVH, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = tail call i32 @RE_rayobjectcontrol_test_break(ptr noundef %3) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 8) #18
  store ptr @.str.2, ptr %7, align 16, !tbaa !35
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIPKc, ptr null) #20
  unreachable

8:                                                ; preds = %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN15BuildBinaryVBVHI8VBVHNodeE13rtbuild_splitEP9RTBuilder(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call i32 @rtbuild_heuristic_object_split(ptr noundef %1, i32 noundef 2) #17
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @rtbuild_get_child(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @BLI_memarena_alloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare i32 @rtbuild_heuristic_object_split(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEEC2IS4_vEEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @_ZNSt5dequeIP8VBVHNodeSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #9 comdat align 2 {
  %2 = tail call noundef zeroext i1 @_ZNKSt5dequeIP8VBVHNodeSaIS1_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  ret i1 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE5frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #9 comdat align 2 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt5dequeIP8VBVHNodeSaIS1_EE5frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #9 comdat align 2 {
  tail call void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIfP8VBVHNodeEC2IfRS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #9 comdat align 2 {
  %4 = load float, ptr %1, align 4, !tbaa !79
  store float %4, ptr %0, align 8, !tbaa !102
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !35
  store ptr %6, ptr %5, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL30reorganize_find_fittest_parentI8VBVHNodeEvPT_S2_RSt4pairIfS2_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 !PGOFuncName !103 {
  %4 = alloca ptr, align 8
  %5 = alloca %"class.std::queue", align 8
  %6 = alloca ptr, align 8
  %7 = alloca float, align 4
  %8 = alloca %"struct.std::pair", align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #18
  call void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEEC2IS4_vEEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  invoke void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
          to label %10 unwind label %19

10:                                               ; preds = %3
  %11 = call noundef zeroext i1 @_ZNKSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  br i1 %11, label %67, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds { float, ptr }, ptr %8, i64 0, i32 1
  br label %14

14:                                               ; preds = %12, %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE5frontEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  store ptr %16, ptr %6, align 8, !tbaa !35
  call void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE3popEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  %17 = load ptr, ptr %6, align 8, !tbaa !35
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %63, label %21, !llvm.loop !104

19:                                               ; preds = %3
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %68

21:                                               ; preds = %14
  %22 = invoke fastcc noundef zeroext i1 @_ZL16node_fits_insideI8VBVHNodeEbPT_S2_(ptr noundef %1, ptr noundef %17) #17
          to label %23 unwind label %47

23:                                               ; preds = %21
  br i1 %22, label %24, label %63

24:                                               ; preds = %23
  %25 = load ptr, ptr %6, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.VBVHNode, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  %28 = ptrtoint ptr %27 to i64
  %29 = and i64 %28, 3
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %32 = getelementptr inbounds float, ptr %25, i64 3
  %33 = invoke float @bb_area(ptr noundef nonnull %25, ptr noundef nonnull %32) #17
          to label %34 unwind label %49

34:                                               ; preds = %31
  store float %33, ptr %7, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  %35 = invoke { float, ptr } @_ZSt9make_pairIRfRP8VBVHNodeESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #17
          to label %36 unwind label %51

36:                                               ; preds = %34
  %37 = extractvalue { float, ptr } %35, 0
  store float %37, ptr %8, align 8
  %38 = extractvalue { float, ptr } %35, 1
  store ptr %38, ptr %13, align 8
  %39 = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZSt3minISt4pairIfP8VBVHNodeEERKT_S6_S6_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %8) #17
          to label %40 unwind label %51

40:                                               ; preds = %36
  %41 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt4pairIfP8VBVHNodeEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %39) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %42 = load ptr, ptr %6, align 8, !tbaa !35
  %43 = getelementptr inbounds %struct.VBVHNode, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  store ptr %44, ptr %9, align 8, !tbaa !35
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %54, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  br label %63

47:                                               ; preds = %21
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %65

49:                                               ; preds = %31
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %61

51:                                               ; preds = %36, %34
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  br label %61

53:                                               ; preds = %40, %54
  invoke void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull align 8 dereferenceable(8) %9) #17
          to label %54 unwind label %59

54:                                               ; preds = %53
  %55 = load ptr, ptr %9, align 8, !tbaa !35
  %56 = getelementptr inbounds %struct.VBVHNode, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  store ptr %57, ptr %9, align 8, !tbaa !35
  %58 = icmp eq ptr %57, null
  br i1 %58, label %46, label %53, !llvm.loop !105

59:                                               ; preds = %53
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %61

61:                                               ; preds = %59, %51, %49
  %62 = phi { ptr, i32 } [ %60, %59 ], [ %52, %51 ], [ %50, %49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  br label %65

63:                                               ; preds = %23, %24, %46, %14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %64 = call noundef zeroext i1 @_ZNKSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %5) #17
  br i1 %64, label %67, label %14

65:                                               ; preds = %61, %47
  %66 = phi { ptr, i32 } [ %62, %61 ], [ %48, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %68

67:                                               ; preds = %63, %10
  call void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %5) #19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #18
  ret void

68:                                               ; preds = %65, %19
  %69 = phi { ptr, i32 } [ %66, %65 ], [ %20, %19 ]
  call void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %5) #19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #18
  resume { ptr, i32 } %69
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5queueIP8VBVHNodeSt5dequeIS1_SaIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #9 comdat align 2 {
  tail call void @_ZNSt5dequeIP8VBVHNodeSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP8VBVHNodeSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE11_Deque_implC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  invoke void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 0) #17
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIP8VBVHNodeED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  resume { ptr, i32 } %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE11_Deque_implC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #9 comdat align 2 {
  tail call void @_ZNSaIP8VBVHNodeEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  tail call void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE16_Deque_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8) #17
  %6 = udiv i64 %1, %5
  %7 = add i64 %6, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store i64 8, ptr %3, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %8 = add i64 %6, 3
  store i64 %8, ptr %4, align 8, !tbaa !106
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %10 = load i64, ptr %9, align 8, !tbaa !106
  %11 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  %12 = call noundef ptr @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE15_M_allocate_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %10) #17
  store ptr %12, ptr %0, align 8, !tbaa !111
  %13 = load i64, ptr %11, align 8, !tbaa !108
  %14 = sub i64 %13, %7
  %15 = lshr i64 %14, 1
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  %17 = getelementptr inbounds ptr, ptr %16, i64 %7
  invoke void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE15_M_create_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %16, ptr noundef %17) #17
          to label %27 unwind label %18

18:                                               ; preds = %2
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = call ptr @__cxa_begin_catch(ptr %20) #18
  %22 = load ptr, ptr %0, align 8, !tbaa !111
  %23 = load i64, ptr %11, align 8, !tbaa !108
  call void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE17_M_deallocate_mapEPPS1_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %22, i64 noundef %23) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #20
          to label %41 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %26 unwind label %38

26:                                               ; preds = %24
  resume { ptr, i32 } %25

27:                                               ; preds = %2
  %28 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  call void @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef %16) #19
  %29 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %30 = getelementptr inbounds ptr, ptr %16, i64 %6
  call void @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef %30) #19
  %31 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !112
  store ptr %32, ptr %28, align 8, !tbaa !113
  %33 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !114
  %35 = call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8) #17
  %36 = urem i64 %1, %35
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  store ptr %37, ptr %29, align 8, !tbaa !115
  ret void

38:                                               ; preds = %24
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #21
  unreachable

41:                                               ; preds = %18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP8VBVHNodeED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #9 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIP8VBVHNodeEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #9 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIP8VBVHNodeEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE16_Deque_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #9 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  tail call void @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_EC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  %3 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  tail call void @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_EC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP8VBVHNodeEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #9 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_EC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef %0) local_unnamed_addr #9 comdat {
  %2 = icmp ult i64 %0, 512
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = trunc i64 %0 to i16
  %5 = udiv i16 512, %4
  %6 = zext nneg i16 %5 to i64
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i64 [ %6, %3 ], [ 1, %1 ]
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #9 comdat {
  %3 = load i64, ptr %0, align 8, !tbaa !106
  %4 = load i64, ptr %1, align 8, !tbaa !106
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE15_M_allocate_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"class.std::allocator.1", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  call void @_ZNKSt11_Deque_baseIP8VBVHNodeSaIS1_EE20_M_get_map_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.1") align 1 %3, ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  %4 = invoke noundef ptr @_ZNSt16allocator_traitsISaIPP8VBVHNodeEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %1) #17
          to label %5 unwind label %6

5:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIPP8VBVHNodeED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  ret ptr %4

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIPP8VBVHNodeED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE15_M_create_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp ult ptr %1, %2
  br i1 %4, label %5, label %18

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %9, %8 ], [ %1, %3 ]
  %7 = invoke noundef ptr @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #17
          to label %8 unwind label %11

8:                                                ; preds = %5
  store ptr %7, ptr %6, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %6, i64 1
  %10 = icmp ult ptr %9, %2
  br i1 %10, label %5, label %18, !llvm.loop !116

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #18
  tail call void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE16_M_destroy_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %6) #19
  invoke void @__cxa_rethrow() #20
          to label %22 unwind label %15

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %17 unwind label %19

17:                                               ; preds = %15
  resume { ptr, i32 } %16

18:                                               ; preds = %8, %3
  ret void

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #21
  unreachable

22:                                               ; preds = %11
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE17_M_deallocate_mapEPPS1_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %"class.std::allocator.1", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  call void @_ZNKSt11_Deque_baseIP8VBVHNodeSaIS1_EE20_M_get_map_allocatorEv(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.1") align 1 %4, ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  invoke void @_ZNSt16allocator_traitsISaIPP8VBVHNodeEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef %1, i64 noundef %2) #17
          to label %5 unwind label %6

5:                                                ; preds = %3
  call void @_ZNSt15__new_allocatorIPP8VBVHNodeED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  call void @__clang_call_terminate(ptr %8) #21
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !117
  %4 = load ptr, ptr %1, align 8, !tbaa !35
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !118
  %6 = tail call noundef i64 @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E14_S_buffer_sizeEv() #19
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !119
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNKSt11_Deque_baseIP8VBVHNodeSaIS1_EE20_M_get_map_allocatorEv(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.1") align 1 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #9 comdat align 2 {
  %3 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseIP8VBVHNodeSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #19
  tail call void @_ZNSaIPP8VBVHNodeEC2IS0_EERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIPP8VBVHNodeEE8allocateERS3_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIPP8VBVHNodeE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPP8VBVHNodeED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #9 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseIP8VBVHNodeSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #9 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIPP8VBVHNodeEC2IS0_EERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #9 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIPP8VBVHNodeEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPP8VBVHNodeEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #9 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIPP8VBVHNodeE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIPP8VBVHNodeE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !120

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIPP8VBVHNodeE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #9 comdat align 2 {
  ret i64 1152921504606846975
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 {
  %2 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8) #17
  %3 = tail call noundef ptr @_ZNSt16allocator_traitsISaIP8VBVHNodeEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %2) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE16_M_destroy_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 {
  %4 = icmp ult ptr %1, %2
  br i1 %4, label %6, label %5

5:                                                ; preds = %6, %3
  ret void

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %1, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  tail call void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE18_M_deallocate_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %8) #19
  %9 = getelementptr inbounds ptr, ptr %7, i64 1
  %10 = icmp ult ptr %9, %2
  br i1 %10, label %6, label %5, !llvm.loop !121
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIP8VBVHNodeEE8allocateERS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIP8VBVHNodeE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIP8VBVHNodeE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIP8VBVHNodeE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !120

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #23
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIP8VBVHNodeE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #9 comdat align 2 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE18_M_deallocate_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8) #17
  invoke void @_ZNSt16allocator_traitsISaIP8VBVHNodeEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %3) #17
          to label %4 unwind label %5

4:                                                ; preds = %2
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          catch ptr null
  %7 = extractvalue { ptr, i32 } %6, 0
  tail call void @__clang_call_terminate(ptr %7) #21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP8VBVHNodeEE10deallocateERS2_PS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIP8VBVHNodeE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP8VBVHNodeE10deallocateEPS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #24
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIPP8VBVHNodeEE10deallocateERS3_PS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIPP8VBVHNodeE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIPP8VBVHNodeE10deallocateEPS2_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #9 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef %1) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E14_S_buffer_sizeEv() local_unnamed_addr #9 comdat align 2 {
  %1 = tail call noundef i64 @_ZSt16__deque_buf_sizem(i64 noundef 8) #17
  ret i64 %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !122
  %7 = getelementptr inbounds ptr, ptr %6, i64 -1
  %8 = icmp eq ptr %4, %7
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIP8VBVHNodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %10 = load ptr, ptr %3, align 8, !tbaa !115
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %11, ptr %3, align 8, !tbaa !115
  br label %13

12:                                               ; preds = %2
  tail call void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  br label %13

13:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP8VBVHNodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #9 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIP8VBVHNodeE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE16_M_push_back_auxIJRKS1_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 {
  %3 = tail call noundef i64 @_ZNKSt5dequeIP8VBVHNodeSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  %4 = tail call noundef i64 @_ZNKSt5dequeIP8VBVHNodeSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

7:                                                ; preds = %2
  tail call void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE22_M_reserve_map_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1) #17
  %8 = tail call noundef ptr @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE16_M_allocate_nodeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #17
  %9 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !123
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %8, ptr %12, align 8, !tbaa !35
  %13 = load ptr, ptr %9, align 8, !tbaa !115
  tail call void @_ZNSt16allocator_traitsISaIP8VBVHNodeEE9constructIS1_JRKS1_EEEvRS2_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %14 = load ptr, ptr %10, align 8, !tbaa !123
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  tail call void @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %15) #19
  %16 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !114
  store ptr %17, ptr %9, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP8VBVHNodeE9constructIS1_JRKS1_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #9 comdat align 2 {
  %4 = load ptr, ptr %2, align 8, !tbaa !35
  store ptr %4, ptr %1, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5dequeIP8VBVHNodeSaIS1_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #9 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %4 = tail call noundef i64 @_ZStmiRKSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt5dequeIP8VBVHNodeSaIS1_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #9 comdat align 2 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt11_Deque_baseIP8VBVHNodeSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  %3 = tail call noundef i64 @_ZNSt5dequeIP8VBVHNodeSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  ret i64 %3
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE22_M_reserve_map_at_backEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
  %3 = add i64 %1, 1
  %4 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !108
  %6 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !123
  %8 = load ptr, ptr %0, align 8, !tbaa !111
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = sub i64 %5, %12
  %14 = icmp ugt i64 %3, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext false) #17
  br label %16

16:                                               ; preds = %15, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZStmiRKSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat {
  %3 = tail call noundef i64 @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E14_S_buffer_sizeEv() #19
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp ne ptr %5, null
  %13 = sext i1 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = mul nsw i64 %14, %3
  %16 = load ptr, ptr %0, align 8, !tbaa !124
  %17 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  %19 = ptrtoint ptr %16 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 3
  %23 = add nsw i64 %15, %22
  %24 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !119
  %26 = load ptr, ptr %1, align 8, !tbaa !124
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 3
  %31 = add nsw i64 %23, %30
  ret i64 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt5dequeIP8VBVHNodeSaIS1_EE11_S_max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store i64 9223372036854775807, ptr %2, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIP8VBVHNodeEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  store i64 %4, ptr %3, align 8, !tbaa !106
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %6 = load i64, ptr %5, align 8, !tbaa !106
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIP8VBVHNodeEE8max_sizeERKS2_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #9 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIP8VBVHNodeE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #9 comdat {
  %3 = load i64, ptr %1, align 8, !tbaa !106
  %4 = load i64, ptr %0, align 8, !tbaa !106
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIP8VBVHNodeE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #9 comdat align 2 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIP8VBVHNodeE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
  %4 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !106
  %5 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !123
  %7 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !125
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = add nsw i64 %12, 1
  %14 = add i64 %13, %1
  %15 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !108
  %17 = shl i64 %14, 1
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load ptr, ptr %0, align 8, !tbaa !111
  %21 = sub i64 %16, %14
  %22 = lshr i64 %21, 1
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = select i1 %2, i64 %1, i64 0
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = icmp ult ptr %25, %8
  %27 = getelementptr inbounds ptr, ptr %6, i64 1
  br i1 %26, label %28, label %30

28:                                               ; preds = %19
  %29 = tail call noundef ptr @_ZSt4copyIPPP8VBVHNodeS3_ET0_T_S5_S4_(ptr noundef nonnull %8, ptr noundef nonnull %27, ptr noundef %25) #17
  br label %51

30:                                               ; preds = %19
  %31 = getelementptr inbounds ptr, ptr %25, i64 %13
  %32 = tail call noundef ptr @_ZSt13copy_backwardIPPP8VBVHNodeS3_ET0_T_S5_S4_(ptr noundef %8, ptr noundef nonnull %27, ptr noundef %31) #17
  br label %51

33:                                               ; preds = %3
  %34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %35 = load i64, ptr %34, align 8, !tbaa !106
  %36 = add i64 %16, 2
  %37 = add i64 %36, %35
  %38 = call noundef ptr @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE15_M_allocate_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %37) #17
  %39 = sub i64 %37, %14
  %40 = lshr i64 %39, 1
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load i64, ptr %4, align 8
  %43 = select i1 %2, i64 %42, i64 0
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  %45 = load ptr, ptr %7, align 8, !tbaa !125
  %46 = load ptr, ptr %5, align 8, !tbaa !123
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  %48 = call noundef ptr @_ZSt4copyIPPP8VBVHNodeS3_ET0_T_S5_S4_(ptr noundef %45, ptr noundef nonnull %47, ptr noundef %44) #17
  %49 = load ptr, ptr %0, align 8, !tbaa !111
  %50 = load i64, ptr %15, align 8, !tbaa !108
  call void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE17_M_deallocate_mapEPPS1_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %49, i64 noundef %50) #19
  store ptr %38, ptr %0, align 8, !tbaa !111
  store i64 %37, ptr %15, align 8, !tbaa !108
  br label %51

51:                                               ; preds = %28, %30, %33
  %52 = phi ptr [ %25, %28 ], [ %25, %30 ], [ %44, %33 ]
  %53 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %54 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  call void @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef %52) #19
  %55 = getelementptr inbounds ptr, ptr %52, i64 %13
  %56 = getelementptr inbounds ptr, ptr %55, i64 -1
  call void @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull %56) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPP8VBVHNodeS3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPP8VBVHNodeET_S4_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPP8VBVHNodeET_S4_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPP8VBVHNodeS3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPP8VBVHNodeET_S4_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPP8VBVHNodeET_S4_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !35
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPP8VBVHNodeET_S4_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPP8VBVHNodeET_S4_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPP8VBVHNodeET_S4_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPP8VBVHNodeET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPP8VBVHNodeET_S4_(ptr noundef %0) local_unnamed_addr #9 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPP8VBVHNodeET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #9 comdat {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPP8VBVHNodeET_S4_(ptr noundef %0) local_unnamed_addr #9 comdat {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPP8VBVHNodeEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPP8VBVHNodeEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !35
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPP8VBVHNodeET_S4_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPP8VBVHNodeET_S4_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPP8VBVHNodeET_S4_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPP8VBVHNodeET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPP8VBVHNodeS3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPP8VBVHNodeEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPP8VBVHNodeEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 comdat align 2 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds ptr, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %11, ptr align 8 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds ptr, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt5dequeIP8VBVHNodeSaIS1_EE5emptyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #9 comdat align 2 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZSteqRKSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_ES6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat {
  %3 = load ptr, ptr %0, align 8, !tbaa !124
  %4 = load ptr, ptr %1, align 8, !tbaa !124
  %5 = icmp eq ptr %3, %4
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt5dequeIP8VBVHNodeSaIS1_EE5frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #9 comdat align 2 {
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  call void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_EdeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE5beginEv(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #9 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %1, i64 0, i32 2
  tail call void @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_EdeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #9 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !124
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #9 comdat align 2 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !35
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %6 = load <2 x ptr>, ptr %5, align 8, !tbaa !35
  store <2 x ptr> %6, ptr %4, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !126
  %6 = getelementptr inbounds ptr, ptr %5, i64 -1
  %7 = icmp eq ptr %3, %6
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  %10 = load ptr, ptr %2, align 8, !tbaa !113
  tail call void @_ZNSt16allocator_traitsISaIP8VBVHNodeEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef %10) #19
  %11 = load ptr, ptr %2, align 8, !tbaa !113
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %12, ptr %2, align 8, !tbaa !113
  br label %14

13:                                               ; preds = %1
  tail call void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE16_M_pop_front_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #17
  br label %14

14:                                               ; preds = %13, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIP8VBVHNodeEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
  tail call void @_ZNSt15__new_allocatorIP8VBVHNodeE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #9 comdat align 2 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE16_M_pop_front_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #9 comdat align 2 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  %3 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  tail call void @_ZNSt16allocator_traitsISaIP8VBVHNodeEE7destroyIS1_EEvRS2_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %4) #19
  %5 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !112
  tail call void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE18_M_deallocate_nodeEPS1_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %6) #19
  %7 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !125
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  tail call void @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E11_M_set_nodeEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %9) #19
  %10 = load ptr, ptr %5, align 8, !tbaa !112
  store ptr %10, ptr %3, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIP8VBVHNodeE7destroyIS1_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #9 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef zeroext i1 @_ZL16node_fits_insideI8VBVHNodeEbPT_S2_(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !127 {
  %3 = getelementptr inbounds float, ptr %1, i64 3
  %4 = getelementptr inbounds float, ptr %0, i64 3
  %5 = tail call i32 @bb_fits_inside(ptr noundef %1, ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %4) #17
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare float @bb_area(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZSt3minISt4pairIfP8VBVHNodeEERKT_S6_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat {
  %3 = tail call noundef zeroext i1 @_ZStltIfP8VBVHNodeEbRKSt4pairIT_T0_ES7_(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  %4 = select i1 %3, ptr %1, ptr %0
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { float, ptr } @_ZSt9make_pairIRfRP8VBVHNodeESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS5_INS6_IT0_E4typeEE6__typeEEOS7_OSC_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat {
  %3 = alloca %"struct.std::pair", align 8
  call void @_ZNSt4pairIfP8VBVHNodeEC2IRfRS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #17
  %4 = load float, ptr %3, align 8
  %5 = insertvalue { float, ptr } poison, float %4, 0
  %6 = getelementptr inbounds { float, ptr }, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = insertvalue { float, ptr } %5, ptr %7, 1
  ret { float, ptr } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt4pairIfP8VBVHNodeEaSERKS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #9 comdat align 2 {
  %3 = load float, ptr %1, align 8, !tbaa !102
  store float %3, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !85
  ret ptr %0
}

; Function Attrs: optsize
declare i32 @bb_fits_inside(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStltIfP8VBVHNodeEbRKSt4pairIT_T0_ES7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #9 comdat {
  %3 = load float, ptr %0, align 8, !tbaa !102
  %4 = load float, ptr %1, align 8, !tbaa !102
  %5 = fcmp olt float %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = fcmp olt float %4, %3
  br i1 %7, label %14, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = icmp ult ptr %10, %12
  br label %14

14:                                               ; preds = %6, %8, %2
  %15 = phi i1 [ true, %2 ], [ false, %6 ], [ %13, %8 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIfP8VBVHNodeEC2IRfRS1_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS7_S8_EEEbE4typeELb1EEEOS7_OS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #9 comdat align 2 {
  %4 = load float, ptr %1, align 4, !tbaa !79
  store float %4, ptr %0, align 8, !tbaa !102
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !35
  store ptr %6, ptr %5, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP8VBVHNodeSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  call void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE5beginEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  call void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE3endEv(ptr dead_on_unwind nonnull writable sret(%"struct.std::_Deque_iterator") align 8 %3, ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  %4 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  call void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #17
  call void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE15_M_destroy_dataESt15_Deque_iteratorIS1_RS1_PS1_ES7_RKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #9 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt5dequeIP8VBVHNodeSaIS1_EE3endEv(ptr dead_on_unwind noalias writable sret(%"struct.std::_Deque_iterator") align 8 %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #9 comdat align 2 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %1, i64 0, i32 3
  tail call void @_ZNSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_EC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #9 comdat align 2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !111
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !123
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  tail call void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE16_M_destroy_nodesEPPS1_S5_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %6, ptr noundef nonnull %9) #19
  %10 = load ptr, ptr %0, align 8, !tbaa !111
  %11 = getelementptr inbounds %"struct.std::_Deque_base<VBVHNode *, std::allocator<VBVHNode *>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !108
  tail call void @_ZNSt11_Deque_baseIP8VBVHNodeSaIS1_EE17_M_deallocate_mapEPPS1_m(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %10, i64 noundef %12) #19
  br label %13

13:                                               ; preds = %4, %1
  tail call void @_ZNSt15__new_allocatorIP8VBVHNodeED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef i32 @_ZL12count_childsI8VBVHNodeEiPT_(ptr nocapture noundef readonly %0) unnamed_addr #9 !PGOFuncName !128 {
  %2 = getelementptr inbounds %struct.VBVHNode, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %9

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.VBVHNode, ptr %10, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9, !llvm.loop !129

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %11 = phi i32 [ %12, %5 ], [ 0, %1 ]
  %12 = add nuw nsw i32 %11, 1
  %13 = tail call noundef zeroext i1 @_Z7is_leafI8VBVHNodeEbPT_(ptr noundef nonnull %10) #17
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %9, %1
  %15 = phi i32 [ 0, %1 ], [ %12, %9 ], [ %12, %5 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @_ZL14append_siblingI8VBVHNodeEvPT_S2_(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #16 !PGOFuncName !130 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %6, %3 ]
  %5 = getelementptr inbounds %struct.VBVHNode, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !131

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.VBVHNode, ptr %4, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !75
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZL17bvh_node_merge_bbI8VBVHNodeEvPT_PfS3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !132 {
  %4 = tail call noundef zeroext i1 @_Z7is_leafI8VBVHNodeEbPT_(ptr noundef %0) #17
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @RE_rayobject_merge_bb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  br label %45

6:                                                ; preds = %3
  %7 = load float, ptr %1, align 4, !tbaa !79
  %8 = load float, ptr %0, align 8, !tbaa !79
  %9 = fcmp ogt float %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store float %8, ptr %1, align 4, !tbaa !79
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds float, ptr %1, i64 1
  %13 = load float, ptr %12, align 4, !tbaa !79
  %14 = getelementptr inbounds [6 x float], ptr %0, i64 0, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !79
  %16 = fcmp ogt float %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store float %15, ptr %12, align 4, !tbaa !79
  br label %18

18:                                               ; preds = %17, %11
  %19 = getelementptr inbounds float, ptr %1, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !79
  %21 = getelementptr inbounds [6 x float], ptr %0, i64 0, i64 2
  %22 = load float, ptr %21, align 8, !tbaa !79
  %23 = fcmp ogt float %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store float %22, ptr %19, align 4, !tbaa !79
  br label %25

25:                                               ; preds = %24, %18
  %26 = load float, ptr %2, align 4, !tbaa !79
  %27 = getelementptr inbounds float, ptr %0, i64 3
  %28 = load float, ptr %27, align 4, !tbaa !79
  %29 = fcmp olt float %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store float %28, ptr %2, align 4, !tbaa !79
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds float, ptr %2, i64 1
  %33 = load float, ptr %32, align 4, !tbaa !79
  %34 = getelementptr inbounds float, ptr %0, i64 4
  %35 = load float, ptr %34, align 4, !tbaa !79
  %36 = fcmp olt float %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store float %35, ptr %32, align 4, !tbaa !79
  br label %38

38:                                               ; preds = %37, %31
  %39 = getelementptr inbounds float, ptr %2, i64 2
  %40 = load float, ptr %39, align 4, !tbaa !79
  %41 = getelementptr inbounds float, ptr %0, i64 5
  %42 = load float, ptr %41, align 4, !tbaa !79
  %43 = fcmp olt float %40, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store float %42, ptr %39, align 4, !tbaa !79
  br label %45

45:                                               ; preds = %38, %44, %5
  ret void
}

; Function Attrs: optsize
declare void @RE_rayobject_merge_bb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize }
attributes #20 = { noreturn }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn optsize }
attributes #23 = { builtin optsize allocsize(0) }
attributes #24 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"rayobject_vbvh.cpp:_ZL15bvh_create_treeI8VBVHTreeLi256EEP9RayObjecti"}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !36, i64 0}
!40 = !{!"_ZTS8VBVHTree", !41, i64 0, !36, i64 24, !36, i64 32, !43, i64 40, !36, i64 48}
!41 = !{!"_ZTS9RayObject", !36, i64 0, !42, i64 8}
!42 = !{!"_ZTS16RayObjectControl", !36, i64 0, !36, i64 8}
!43 = !{!"float", !37, i64 0}
!44 = !{!40, !36, i64 48}
!45 = !{!"rayobject_vbvh.cpp:_ZL11bvh_get_apiI8VBVHTreeEP12RayObjectAPIi"}
!46 = !{!"branch_weights", i32 1, i32 1048575}
!47 = !{!"rayobject_vbvh.cpp:_ZL8make_apiI8VBVHTreeLi1024EE12RayObjectAPIv"}
!48 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 24, i64 8, !35, i64 32, i64 8, !35, i64 40, i64 8, !35, i64 48, i64 8, !35}
!49 = !{!"rayobject_vbvh.cpp:_ZL9intersectILi1024EEiP8VBVHTreeP5Isect"}
!50 = !{!40, !36, i64 24}
!51 = !{!52, !53, i64 88}
!52 = !{!"_ZTS5Isect", !37, i64 0, !37, i64 12, !43, i64 24, !37, i64 28, !37, i64 40, !37, i64 52, !37, i64 76, !53, i64 88, !53, i64 92, !53, i64 96, !53, i64 100, !36, i64 104, !43, i64 112, !43, i64 116, !53, i64 120, !54, i64 128, !54, i64 144, !36, i64 160, !36, i64 168}
!53 = !{!"int", !37, i64 0}
!54 = !{!"_ZTSN5IsectUt_E", !36, i64 0, !36, i64 8}
!55 = !{!"rayobject_vbvh.cpp:_ZL7bvh_addI8VBVHTreeEvPT_P9RayObject"}
!56 = !{!"rayobject_vbvh.cpp:_ZL8bvh_doneI8VBVHTreeEvPT_"}
!57 = !{!40, !36, i64 32}
!58 = !{!40, !43, i64 40}
!59 = !{!"rayobject_vbvh.cpp:_ZL8bvh_freeI8VBVHTreeEvPT_"}
!60 = !{!"rayobject_vbvh.cpp:_ZL6bvh_bbI8VBVHTreeEvPT_PfS3_"}
!61 = !{!"rayobject_vbvh.cpp:_ZL8bvh_costI8VBVHTreeEfPT_"}
!62 = !{!"rayobject_vbvh.cpp:_ZL11bvh_hint_bbI8VBVHTreeEvPT_P8LCTSHintPfS5_"}
!63 = !{!64, !53, i64 0}
!64 = !{!"_ZTS8LCTSHint", !53, i64 0, !37, i64 8}
!65 = !{!"rayobject_vbvh.cpp:_ZL22bvh_node_stack_raycastI8VBVHNodeLi1024ELb0ELb1EEiPT_P5Isect"}
!66 = !{!53, !53, i64 0}
!67 = !{i32 0, i32 2}
!68 = distinct !{!68, !69}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"rayobject_vbvh.cpp:_ZL22bvh_node_stack_raycastI8VBVHNodeLi1024ELb0ELb0EEiPT_P5Isect"}
!71 = distinct !{!71, !69}
!72 = !{!"rayobject_vbvh.cpp:_ZL20bvh_node_push_childsI8VBVHNodeEvPT_P5IsectPS2_Ri"}
!73 = !{!74, !36, i64 24}
!74 = !{!"_ZTS8VBVHNode", !37, i64 0, !36, i64 24, !36, i64 32}
!75 = !{!74, !36, i64 32}
!76 = distinct !{!76, !69}
!77 = !{!"rayobject_vbvh.cpp:_ZL17bvh_node_hit_testI8VBVHNodeEiPT_P5Isect"}
!78 = !{!"rayobject_vbvh.cpp:_ZL27rayobject_bb_intersect_testPK5IsectPKf"}
!79 = !{!43, !43, i64 0}
!80 = !{!52, !43, i64 24}
!81 = !{!82, !36, i64 0}
!82 = !{!"_ZTS15BuildBinaryVBVHI8VBVHNodeE", !36, i64 0, !36, i64 8}
!83 = !{!82, !36, i64 8}
!84 = !{!"rayobject_vbvh.cpp:_ZL10reorganizeI8VBVHNodeEvPT_"}
!85 = !{!86, !36, i64 8}
!86 = !{!"_ZTSSt4pairIfP8VBVHNodeE", !43, i64 0, !36, i64 8}
!87 = distinct !{!87, !69}
!88 = distinct !{!88, !69}
!89 = !{!"rayobject_vbvh.cpp:_ZL14remove_uselessI8VBVHNodeEvPT_PS2_"}
!90 = distinct !{!90, !69}
!91 = !{!"rayobject_vbvh.cpp:_ZL9bvh_refitI8VBVHNodeEfPT_"}
!92 = distinct !{!92, !69}
!93 = distinct !{!93, !69}
!94 = !{!"rayobject_vbvh.cpp:_ZL6pushupI8VBVHNodeEvPT_"}
!95 = distinct !{!95, !69}
!96 = distinct !{!96, !69}
!97 = !{!"rayobject_vbvh.cpp:_ZL8pushdownI8VBVHNodeEvPT_"}
!98 = distinct !{!98, !69}
!99 = distinct !{!99, !69}
!100 = distinct !{!100, !69}
!101 = distinct !{!101, !69}
!102 = !{!86, !43, i64 0}
!103 = !{!"rayobject_vbvh.cpp:_ZL30reorganize_find_fittest_parentI8VBVHNodeEvPT_S2_RSt4pairIfS2_E"}
!104 = distinct !{!104, !69}
!105 = distinct !{!105, !69}
!106 = !{!107, !107, i64 0}
!107 = !{!"long", !37, i64 0}
!108 = !{!109, !107, i64 8}
!109 = !{!"_ZTSNSt11_Deque_baseIP8VBVHNodeSaIS1_EE16_Deque_impl_dataE", !36, i64 0, !107, i64 8, !110, i64 16, !110, i64 48}
!110 = !{!"_ZTSSt15_Deque_iteratorIP8VBVHNodeRS1_PS1_E", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!111 = !{!109, !36, i64 0}
!112 = !{!109, !36, i64 24}
!113 = !{!109, !36, i64 16}
!114 = !{!109, !36, i64 56}
!115 = !{!109, !36, i64 48}
!116 = distinct !{!116, !69}
!117 = !{!110, !36, i64 24}
!118 = !{!110, !36, i64 8}
!119 = !{!110, !36, i64 16}
!120 = !{!"branch_weights", i32 1, i32 2000}
!121 = distinct !{!121, !69}
!122 = !{!109, !36, i64 64}
!123 = !{!109, !36, i64 72}
!124 = !{!110, !36, i64 0}
!125 = !{!109, !36, i64 40}
!126 = !{!109, !36, i64 32}
!127 = !{!"rayobject_vbvh.cpp:_ZL16node_fits_insideI8VBVHNodeEbPT_S2_"}
!128 = !{!"rayobject_vbvh.cpp:_ZL12count_childsI8VBVHNodeEiPT_"}
!129 = distinct !{!129, !69}
!130 = !{!"rayobject_vbvh.cpp:_ZL14append_siblingI8VBVHNodeEvPT_S2_"}
!131 = distinct !{!131, !69}
!132 = !{!"rayobject_vbvh.cpp:_ZL17bvh_node_merge_bbI8VBVHNodeEvPT_PfS3_"}
