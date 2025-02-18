; ModuleID = 'blender/extern/rangetree/range_tree_c_api.cc'
source_filename = "blender/extern/rangetree/range_tree_c_api.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.RangeTree<unsigned int>::Range" = type <{ i32, i32, i8, [3 x i8] }>
%"struct.std::_Rb_tree_node" = type <{ %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf", [4 x i8] }>
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.__gnu_cxx::__aligned_membuf" = type { [12 x i8] }
%"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Reuse_or_alloc_node" = type { ptr, ptr, ptr }

$_ZN9RangeTreeIjE4takeEj = comdat any

$_ZN9RangeTreeIjE6retakeEj = comdat any

$_ZN9RangeTreeIjE7releaseEj = comdat any

$_ZNK9RangeTreeIjE5printEv = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EEaSERKS8_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_ = comdat any

$_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [12 x i8] c"RangeTree:\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"  [\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"  <empty>\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_range_tree_c_api.cc, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @range_tree_uint_alloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %4 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  store i32 0, ptr %5, align 8, !tbaa !34
  %6 = getelementptr inbounds i8, ptr %4, i64 16
  store ptr null, ptr %6, align 8, !tbaa !42
  %7 = getelementptr inbounds i8, ptr %4, i64 24
  store ptr %5, ptr %7, align 8, !tbaa !43
  %8 = getelementptr inbounds i8, ptr %4, i64 32
  store ptr %5, ptr %8, align 8, !tbaa !44
  %9 = getelementptr inbounds i8, ptr %4, i64 40
  store i64 0, ptr %9, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  store i32 %0, ptr %3, align 4, !tbaa !46
  %10 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %3, i64 0, i32 1
  store i32 %1, ptr %10, align 4, !tbaa !50
  %11 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %3, i64 0, i32 2
  %12 = icmp eq i32 %0, %1
  %13 = zext i1 %12 to i8
  store i8 %13, ptr %11, align 4, !tbaa !51
  %14 = invoke { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(9) %3)
          to label %21 unwind label %15

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  %17 = load ptr, ptr %6, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %17)
          to label %22 unwind label %18

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  call void @__clang_call_terminate(ptr %20) #17
  unreachable

21:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  ret ptr %4

22:                                               ; preds = %15
  call void @_ZdlPv(ptr noundef %4) #18
  resume { ptr, i32 } %16
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @range_tree_uint_copy(ptr noundef %0) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  store i32 0, ptr %3, align 8, !tbaa !34
  %4 = getelementptr inbounds i8, ptr %2, i64 16
  store ptr null, ptr %4, align 8, !tbaa !42
  %5 = getelementptr inbounds i8, ptr %2, i64 24
  store ptr %3, ptr %5, align 8, !tbaa !43
  %6 = getelementptr inbounds i8, ptr %2, i64 32
  store ptr %3, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds i8, ptr %2, i64 40
  store i64 0, ptr %7, align 8, !tbaa !45
  %8 = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %15 unwind label %9

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = load ptr, ptr %4, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %11)
          to label %16 unwind label %12

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #17
  unreachable

15:                                               ; preds = %1
  ret ptr %2

16:                                               ; preds = %9
  tail call void @_ZdlPv(ptr noundef %2) #18
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @range_tree_uint_free(ptr noundef %0) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !42
  invoke void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %5)
          to label %9 unwind label %6

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #17
  unreachable

9:                                                ; preds = %3
  tail call void @_ZdlPv(ptr noundef %0) #18
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @range_tree_uint_take(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #3 {
  tail call void @_ZN9RangeTreeIjE4takeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9RangeTreeIjE4takeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %4 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = load ptr, ptr %5, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %19, %9 ], [ %7, %2 ]
  %11 = phi ptr [ %17, %9 ], [ %6, %2 ]
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %10, i64 0, i32 1, i32 0, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = icmp ult i32 %13, %1
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 3
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 2
  %17 = select i1 %14, ptr %11, ptr %10
  %18 = select i1 %14, ptr %15, ptr %16
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9, !llvm.loop !53

21:                                               ; preds = %9, %2
  %22 = phi ptr [ %6, %2 ], [ %17, %9 ]
  %23 = icmp eq ptr %22, %6
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %22, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !46
  %27 = icmp ugt i32 %26, %1
  %28 = select i1 %27, ptr %6, ptr %22
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi ptr [ %6, %21 ], [ %28, %24 ]
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %30, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa.struct !56
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %30, i64 0, i32 1, i32 0, i64 4
  %34 = load i32, ptr %33, align 4, !tbaa.struct !59
  %35 = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %30, ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  tail call void @_ZdlPv(ptr noundef %35) #18
  %36 = getelementptr inbounds i8, ptr %0, i64 40
  %37 = load i64, ptr %36, align 8, !tbaa !45
  %38 = add i64 %37, -1
  store i64 %38, ptr %36, align 8, !tbaa !45
  %39 = icmp ult i32 %32, %1
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  %41 = add i32 %1, -1
  store i32 %32, ptr %3, align 4, !tbaa !46
  %42 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %3, i64 0, i32 1
  store i32 %41, ptr %42, align 4, !tbaa !50
  %43 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %3, i64 0, i32 2
  %44 = icmp eq i32 %32, %41
  %45 = zext i1 %44 to i8
  store i8 %45, ptr %43, align 4, !tbaa !51
  %46 = call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  br label %47

47:                                               ; preds = %40, %29
  %48 = add i32 %1, 1
  %49 = icmp ugt i32 %48, %34
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  store i32 %48, ptr %4, align 4, !tbaa !46
  %51 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %4, i64 0, i32 1
  store i32 %34, ptr %51, align 4, !tbaa !50
  %52 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %4, i64 0, i32 2
  %53 = icmp eq i32 %48, %34
  %54 = zext i1 %53 to i8
  store i8 %54, ptr %52, align 4, !tbaa !51
  %55 = call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %4)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %56

56:                                               ; preds = %50, %47
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @range_tree_uint_retake(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = tail call noundef zeroext i1 @_ZN9RangeTreeIjE6retakeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  ret i1 %3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9RangeTreeIjE6retakeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %4 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = load ptr, ptr %5, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %19, %9 ], [ %7, %2 ]
  %11 = phi ptr [ %17, %9 ], [ %6, %2 ]
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %10, i64 0, i32 1, i32 0, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = icmp ult i32 %13, %1
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 3
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 2
  %17 = select i1 %14, ptr %11, ptr %10
  %18 = select i1 %14, ptr %15, ptr %16
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9, !llvm.loop !53

21:                                               ; preds = %9, %2
  %22 = phi ptr [ %6, %2 ], [ %17, %9 ]
  %23 = icmp eq ptr %22, %6
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %22, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !46
  %27 = icmp ugt i32 %26, %1
  %28 = select i1 %27, ptr %6, ptr %22
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi ptr [ %6, %21 ], [ %28, %24 ]
  %31 = icmp ne ptr %30, %6
  br i1 %31, label %32, label %58

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %30, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa.struct !56
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %30, i64 0, i32 1, i32 0, i64 4
  %36 = load i32, ptr %35, align 4, !tbaa.struct !59
  %37 = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %30, ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  tail call void @_ZdlPv(ptr noundef %37) #18
  %38 = getelementptr inbounds i8, ptr %0, i64 40
  %39 = load i64, ptr %38, align 8, !tbaa !45
  %40 = add i64 %39, -1
  store i64 %40, ptr %38, align 8, !tbaa !45
  %41 = icmp ult i32 %34, %1
  br i1 %41, label %42, label %49

42:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  %43 = add i32 %1, -1
  store i32 %34, ptr %3, align 4, !tbaa !46
  %44 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %3, i64 0, i32 1
  store i32 %43, ptr %44, align 4, !tbaa !50
  %45 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %3, i64 0, i32 2
  %46 = icmp eq i32 %34, %43
  %47 = zext i1 %46 to i8
  store i8 %47, ptr %45, align 4, !tbaa !51
  %48 = call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  br label %49

49:                                               ; preds = %42, %32
  %50 = add i32 %1, 1
  %51 = icmp ugt i32 %50, %36
  br i1 %51, label %58, label %52

52:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  store i32 %50, ptr %4, align 4, !tbaa !46
  %53 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %4, i64 0, i32 1
  store i32 %36, ptr %53, align 4, !tbaa !50
  %54 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %4, i64 0, i32 2
  %55 = icmp eq i32 %50, %36
  %56 = zext i1 %55 to i8
  store i8 %56, ptr %54, align 4, !tbaa !51
  %57 = call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %4)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %58

58:                                               ; preds = %49, %52, %29
  ret i1 %31
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @range_tree_uint_take_any(ptr noundef nonnull %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds i8, ptr %0, i64 24
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !46
  tail call void @_ZN9RangeTreeIjE4takeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %5)
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local void @range_tree_uint_release(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #3 {
  tail call void @_ZN9RangeTreeIjE7releaseEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9RangeTreeIjE7releaseEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %4 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %5 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %6 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %7 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %8 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %9 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %10 = alloca %"struct.RangeTree<unsigned int>::Range", align 4
  %11 = getelementptr inbounds i8, ptr %0, i64 16
  %12 = getelementptr inbounds i8, ptr %0, i64 8
  %13 = load ptr, ptr %11, align 8, !tbaa !52
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %2, %15
  %16 = phi ptr [ %25, %15 ], [ %13, %2 ]
  %17 = phi ptr [ %23, %15 ], [ %12, %2 ]
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %16, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !46
  %20 = icmp ugt i32 %19, %1
  %21 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %16, i64 0, i32 2
  %22 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %16, i64 0, i32 3
  %23 = select i1 %20, ptr %16, ptr %17
  %24 = select i1 %20, ptr %21, ptr %22
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %15, !llvm.loop !60

27:                                               ; preds = %15, %2
  %28 = phi ptr [ %12, %2 ], [ %23, %15 ]
  %29 = icmp eq ptr %28, %12
  br i1 %29, label %120, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %0, i64 24
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = icmp eq ptr %28, %32
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef %28) #19
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi ptr [ %35, %34 ], [ %28, %30 ]
  %38 = icmp eq ptr %37, %28
  br i1 %38, label %39, label %60

39:                                               ; preds = %36
  %40 = add i32 %1, 1
  %41 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %37, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !46
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #16
  %45 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %37, i64 0, i32 1, i32 0, i64 4
  %46 = load i32, ptr %45, align 4, !tbaa !50
  store i32 %1, ptr %3, align 4, !tbaa !46
  %47 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %3, i64 0, i32 1
  store i32 %46, ptr %47, align 4, !tbaa !50
  %48 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %3, i64 0, i32 2
  %49 = icmp eq i32 %46, %1
  %50 = zext i1 %49 to i8
  store i8 %50, ptr %48, align 4, !tbaa !51
  %51 = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %37, ptr noundef nonnull align 8 dereferenceable(32) %12) #16
  tail call void @_ZdlPv(ptr noundef %51) #18
  %52 = getelementptr inbounds i8, ptr %0, i64 40
  %53 = load i64, ptr %52, align 8, !tbaa !45
  %54 = add i64 %53, -1
  store i64 %54, ptr %52, align 8, !tbaa !45
  %55 = call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %3)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #16
  br label %142

56:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #16
  store i32 %1, ptr %4, align 4, !tbaa !46
  %57 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %4, i64 0, i32 1
  store i32 %1, ptr %57, align 4, !tbaa !50
  %58 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %4, i64 0, i32 2
  store i8 1, ptr %58, align 4, !tbaa !51
  %59 = call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %4)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #16
  br label %142

60:                                               ; preds = %36
  %61 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %37, i64 0, i32 1
  %62 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %37, i64 0, i32 1, i32 0, i64 4
  %63 = load i32, ptr %62, align 4, !tbaa !50
  %64 = add i32 %63, 1
  %65 = icmp eq i32 %64, %1
  br i1 %65, label %66, label %99

66:                                               ; preds = %60
  %67 = add i32 %1, 1
  %68 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %28, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !46
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #16
  %72 = load i32, ptr %61, align 4, !tbaa !46
  %73 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %28, i64 0, i32 1, i32 0, i64 4
  %74 = load i32, ptr %73, align 4, !tbaa !50
  store i32 %72, ptr %5, align 4, !tbaa !46
  %75 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %5, i64 0, i32 1
  store i32 %74, ptr %75, align 4, !tbaa !50
  %76 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %5, i64 0, i32 2
  %77 = icmp eq i32 %72, %74
  %78 = zext i1 %77 to i8
  store i8 %78, ptr %76, align 4, !tbaa !51
  %79 = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %37, ptr noundef nonnull align 8 dereferenceable(32) %12) #16
  tail call void @_ZdlPv(ptr noundef %79) #18
  %80 = getelementptr inbounds i8, ptr %0, i64 40
  %81 = load i64, ptr %80, align 8, !tbaa !45
  %82 = add i64 %81, -1
  store i64 %82, ptr %80, align 8, !tbaa !45
  %83 = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(32) %12) #16
  tail call void @_ZdlPv(ptr noundef %83) #18
  %84 = load i64, ptr %80, align 8, !tbaa !45
  %85 = add i64 %84, -1
  store i64 %85, ptr %80, align 8, !tbaa !45
  %86 = call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %5)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #16
  br label %142

87:                                               ; preds = %66
  br i1 %65, label %88, label %99

88:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #16
  %89 = load i32, ptr %61, align 4, !tbaa !46
  store i32 %89, ptr %6, align 4, !tbaa !46
  %90 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %6, i64 0, i32 1
  store i32 %1, ptr %90, align 4, !tbaa !50
  %91 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %6, i64 0, i32 2
  %92 = icmp eq i32 %89, %1
  %93 = zext i1 %92 to i8
  store i8 %93, ptr %91, align 4, !tbaa !51
  %94 = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %37, ptr noundef nonnull align 8 dereferenceable(32) %12) #16
  tail call void @_ZdlPv(ptr noundef %94) #18
  %95 = getelementptr inbounds i8, ptr %0, i64 40
  %96 = load i64, ptr %95, align 8, !tbaa !45
  %97 = add i64 %96, -1
  store i64 %97, ptr %95, align 8, !tbaa !45
  %98 = call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #16
  br label %142

99:                                               ; preds = %60, %87
  %100 = add i32 %1, 1
  %101 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %28, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !46
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #16
  %105 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %28, i64 0, i32 1, i32 0, i64 4
  %106 = load i32, ptr %105, align 4, !tbaa !50
  store i32 %1, ptr %7, align 4, !tbaa !46
  %107 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %7, i64 0, i32 1
  store i32 %106, ptr %107, align 4, !tbaa !50
  %108 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %7, i64 0, i32 2
  %109 = icmp eq i32 %106, %1
  %110 = zext i1 %109 to i8
  store i8 %110, ptr %108, align 4, !tbaa !51
  %111 = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(32) %12) #16
  tail call void @_ZdlPv(ptr noundef %111) #18
  %112 = getelementptr inbounds i8, ptr %0, i64 40
  %113 = load i64, ptr %112, align 8, !tbaa !45
  %114 = add i64 %113, -1
  store i64 %114, ptr %112, align 8, !tbaa !45
  %115 = call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %7)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #16
  br label %142

116:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #16
  store i32 %1, ptr %8, align 4, !tbaa !46
  %117 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %8, i64 0, i32 1
  store i32 %1, ptr %117, align 4, !tbaa !50
  %118 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %8, i64 0, i32 2
  store i8 1, ptr %118, align 4, !tbaa !51
  %119 = call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %8)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #16
  br label %142

120:                                              ; preds = %27
  %121 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef nonnull %12) #19
  %122 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %121, i64 0, i32 1, i32 0, i64 4
  %123 = load i32, ptr %122, align 4, !tbaa !50
  %124 = add i32 %123, 1
  %125 = icmp eq i32 %124, %1
  br i1 %125, label %126, label %138

126:                                              ; preds = %120
  %127 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %121, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #16
  %128 = load i32, ptr %127, align 4, !tbaa !46
  store i32 %128, ptr %9, align 4, !tbaa !46
  %129 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %9, i64 0, i32 1
  store i32 %1, ptr %129, align 4, !tbaa !50
  %130 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %9, i64 0, i32 2
  %131 = icmp eq i32 %128, %1
  %132 = zext i1 %131 to i8
  store i8 %132, ptr %130, align 4, !tbaa !51
  %133 = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %121, ptr noundef nonnull align 8 dereferenceable(32) %12) #16
  tail call void @_ZdlPv(ptr noundef %133) #18
  %134 = getelementptr inbounds i8, ptr %0, i64 40
  %135 = load i64, ptr %134, align 8, !tbaa !45
  %136 = add i64 %135, -1
  store i64 %136, ptr %134, align 8, !tbaa !45
  %137 = call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %9)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #16
  br label %142

138:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #16
  store i32 %1, ptr %10, align 4, !tbaa !46
  %139 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %10, i64 0, i32 1
  store i32 %1, ptr %139, align 4, !tbaa !50
  %140 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %10, i64 0, i32 2
  store i8 1, ptr %140, align 4, !tbaa !51
  %141 = call { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %10)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #16
  br label %142

142:                                              ; preds = %56, %44, %88, %116, %104, %71, %126, %138
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i1 @range_tree_uint_has(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %17, %7 ], [ %5, %2 ]
  %9 = phi ptr [ %15, %7 ], [ %4, %2 ]
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %8, i64 0, i32 1, i32 0, i64 4
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = icmp ult i32 %11, %1
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %8, i64 0, i32 3
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %8, i64 0, i32 2
  %15 = select i1 %12, ptr %9, ptr %8
  %16 = select i1 %12, ptr %13, ptr %14
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %7, !llvm.loop !61

19:                                               ; preds = %7, %2
  %20 = phi ptr [ %4, %2 ], [ %15, %7 ]
  %21 = icmp eq ptr %20, %4
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %20, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !46
  %25 = icmp ugt i32 %24, %1
  %26 = select i1 %25, ptr %4, ptr %20
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi ptr [ %4, %19 ], [ %26, %22 ]
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %28, i64 0, i32 1, i32 0, i64 4
  %32 = load i32, ptr %31, align 4, !tbaa !50
  %33 = icmp uge i32 %32, %1
  br label %34

34:                                               ; preds = %27, %30
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  ret i1 %35
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i1 @range_tree_uint_has_range(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = load ptr, ptr %4, align 8, !tbaa !52
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %18, %8 ], [ %6, %3 ]
  %10 = phi ptr [ %16, %8 ], [ %5, %3 ]
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %9, i64 0, i32 1, i32 0, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = icmp ult i32 %12, %1
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %9, i64 0, i32 3
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %9, i64 0, i32 2
  %16 = select i1 %13, ptr %10, ptr %9
  %17 = select i1 %13, ptr %14, ptr %15
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %8, !llvm.loop !61

20:                                               ; preds = %8, %3
  %21 = phi ptr [ %5, %3 ], [ %16, %8 ]
  %22 = icmp eq ptr %21, %5
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %21, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !46
  %26 = icmp ugt i32 %25, %2
  %27 = select i1 %26, ptr %5, ptr %21
  br label %28

28:                                               ; preds = %23, %20
  %29 = phi ptr [ %5, %20 ], [ %27, %23 ]
  %30 = icmp eq ptr %29, %5
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %29, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !46
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %29, i64 0, i32 1, i32 0, i64 4
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = icmp eq i32 %37, %2
  br label %39

39:                                               ; preds = %28, %31, %35
  %40 = phi i1 [ false, %28 ], [ false, %31 ], [ %38, %35 ]
  ret i1 %40
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i1 @range_tree_uint_empty(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load i64, ptr %2, align 8, !tbaa !45
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @range_tree_uint_size(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load i64, ptr %2, align 8, !tbaa !45
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress uwtable
define dso_local void @range_tree_uint_print(ptr noundef nonnull %0) local_unnamed_addr #3 {
  tail call void @_ZNK9RangeTreeIjE5printEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK9RangeTreeIjE5printEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 11)
  %3 = getelementptr inbounds i8, ptr %0, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %27, %1
  %8 = getelementptr inbounds i8, ptr %0, i64 40
  %9 = load i64, ptr %8, align 8, !tbaa !45
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %32, label %34

11:                                               ; preds = %1, %27
  %12 = phi ptr [ %30, %27 ], [ %4, %1 ]
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1, i32 0, i64 8
  %15 = load i8, ptr %14, align 4, !tbaa !51, !range !62, !noundef !63
  %16 = icmp eq i8 %15, 0
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 3)
  %18 = load i32, ptr %13, align 4, !tbaa !46
  %19 = zext i32 %18 to i64
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i64 noundef %19)
  br i1 %16, label %21, label %27

21:                                               ; preds = %11
  %22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull @.str.3, i64 noundef 2)
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1, i32 0, i64 4
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = zext i32 %24 to i64
  %26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef %25)
  br label %27

27:                                               ; preds = %11, %21
  %28 = phi ptr [ %26, %21 ], [ %20, %11 ]
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @.str.2, i64 noundef 2)
  %30 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %12) #19
  %31 = icmp eq ptr %30, %5
  br i1 %31, label %7, label %11, !llvm.loop !64

32:                                               ; preds = %7
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 9)
  br label %34

34:                                               ; preds = %32, %7
  %35 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5, i64 noundef 1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @range_tree_uint_allocation_lower_bound(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds i8, ptr %0, i64 40
  %3 = load i64, ptr %2, align 8, !tbaa !45
  %4 = trunc i64 %3 to i32
  %5 = mul i32 %4, 12
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  tail call void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  tail call void @_ZdlPv(ptr noundef %5) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !67

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #3 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %5, %7 ], [ %18, %10 ]
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = icmp ult i32 %9, %13
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  %17 = select i1 %14, ptr %15, ptr %16
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10, !llvm.loop !68

20:                                               ; preds = %10, %2
  %21 = phi ptr [ %4, %2 ], [ %11, %10 ]
  %22 = phi i1 [ true, %2 ], [ %14, %10 ]
  %23 = phi ptr [ %5, %2 ], [ %18, %10 ]
  br i1 %22, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp eq ptr %21, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %21) #19
  br label %30

30:                                               ; preds = %28, %20
  %31 = phi ptr [ %29, %28 ], [ %21, %20 ]
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %31, i64 0, i32 1, i32 0, i64 4
  %33 = load i32, ptr %32, align 4, !tbaa !50
  %34 = load i32, ptr %1, align 4, !tbaa !46
  %35 = icmp ult i32 %33, %34
  %36 = select i1 %35, ptr %23, ptr %31
  %37 = select i1 %35, ptr %21, ptr null
  br label %38

38:                                               ; preds = %24, %30
  %39 = phi ptr [ %23, %24 ], [ %36, %30 ]
  %40 = phi ptr [ %21, %24 ], [ %37, %30 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = icmp ne ptr %39, null
  %44 = icmp eq ptr %4, %40
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %40, i64 0, i32 1
  %48 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %1, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = load i32, ptr %47, align 4, !tbaa !46
  %51 = icmp ult i32 %49, %50
  br label %52

52:                                               ; preds = %42, %46
  %53 = phi i1 [ true, %42 ], [ %51, %46 ]
  %54 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15
  %55 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %54, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %55, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !56
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %53, ptr noundef nonnull %54, ptr noundef nonnull %40, ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %56 = getelementptr inbounds i8, ptr %0, i64 40
  %57 = load i64, ptr %56, align 8, !tbaa !45
  %58 = add i64 %57, 1
  store i64 %58, ptr %56, align 8, !tbaa !45
  br label %59

59:                                               ; preds = %38, %52
  %60 = phi ptr [ %54, %52 ], [ %39, %38 ]
  %61 = phi i8 [ 1, %52 ], [ 0, %38 ]
  %62 = insertvalue { ptr, i8 } poison, ptr %60, 0
  %63 = insertvalue { ptr, i8 } %62, i8 %61, 1
  ret { ptr, i8 } %63
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EEaSERKS8_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca %"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Reuse_or_alloc_node", align 8
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %58, label %5

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  store ptr %7, ptr %3, align 8, !tbaa !69
  %8 = getelementptr inbounds %"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Reuse_or_alloc_node", ptr %3, i64 0, i32 1
  %9 = getelementptr inbounds i8, ptr %0, i64 32
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  store ptr %10, ptr %8, align 8, !tbaa !71
  %11 = getelementptr inbounds %"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Reuse_or_alloc_node", ptr %3, i64 0, i32 2
  store ptr %0, ptr %11, align 8, !tbaa !52
  %12 = icmp eq ptr %7, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %7, i64 0, i32 1
  store ptr null, ptr %14, align 8, !tbaa !72
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %10, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !66
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %5, %13
  %19 = phi ptr [ %16, %13 ], [ null, %5 ]
  store ptr %19, ptr %8, align 8, !tbaa !71
  br label %20

20:                                               ; preds = %18, %13
  %21 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr null, ptr %6, align 8, !tbaa !42
  %22 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %21, ptr %22, align 8, !tbaa !43
  store ptr %21, ptr %9, align 8, !tbaa !44
  %23 = getelementptr inbounds i8, ptr %0, i64 40
  store i64 0, ptr %23, align 8, !tbaa !45
  %24 = getelementptr inbounds i8, ptr %1, i64 16
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = icmp eq ptr %25, null
  br i1 %26, label %51, label %27

27:                                               ; preds = %20
  %28 = invoke noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %25, ptr noundef nonnull %21, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %29 unwind label %43

29:                                               ; preds = %27, %29
  %30 = phi ptr [ %32, %29 ], [ %28, %27 ]
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !66
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %29, !llvm.loop !73

34:                                               ; preds = %29
  store ptr %30, ptr %22, align 8, !tbaa !52
  br label %35

35:                                               ; preds = %35, %34
  %36 = phi ptr [ %28, %34 ], [ %38, %35 ]
  %37 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !65
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %35, !llvm.loop !74

40:                                               ; preds = %35
  store ptr %36, ptr %9, align 8, !tbaa !52
  %41 = getelementptr inbounds i8, ptr %1, i64 40
  %42 = load i64, ptr %41, align 8, !tbaa !45
  store i64 %42, ptr %23, align 8, !tbaa !45
  store ptr %28, ptr %6, align 8, !tbaa !52
  br label %51

43:                                               ; preds = %27
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load ptr, ptr %11, align 8, !tbaa !75
  %46 = load ptr, ptr %3, align 8, !tbaa !69
  invoke void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef %46)
          to label %50 unwind label %47

47:                                               ; preds = %43
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #17
  unreachable

50:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  resume { ptr, i32 } %44

51:                                               ; preds = %40, %20
  %52 = load ptr, ptr %11, align 8, !tbaa !75
  %53 = load ptr, ptr %3, align 8, !tbaa !69
  invoke void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef %53)
          to label %57 unwind label %54

54:                                               ; preds = %51
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #17
  unreachable

57:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %58

58:                                               ; preds = %57, %2
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.std::_Rb_tree<RangeTree<unsigned int>::Range, RangeTree<unsigned int>::Range, std::_Identity<RangeTree<unsigned int>::Range>, std::less<RangeTree<unsigned int>::Range>>::_Reuse_or_alloc_node", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  store ptr %11, ptr %6, align 8, !tbaa !71
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  store ptr null, ptr %14, align 8, !tbaa !65
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %17, %21
  %22 = phi ptr [ %24, %21 ], [ %19, %17 ]
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !65
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %21, !llvm.loop !76

26:                                               ; preds = %21
  store ptr %22, ptr %6, align 8, !tbaa !71
  %27 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !66
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, ptr %22, ptr %28
  store ptr %30, ptr %6, align 8
  br label %34

31:                                               ; preds = %13
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  store ptr null, ptr %32, align 8, !tbaa !66
  br label %34

33:                                               ; preds = %9
  store ptr null, ptr %3, align 8, !tbaa !69
  br label %34

34:                                               ; preds = %4, %17, %26, %31, %33
  %35 = phi ptr [ null, %4 ], [ %7, %31 ], [ %7, %17 ], [ %7, %33 ], [ %7, %26 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15
  br label %39

39:                                               ; preds = %34, %37
  %40 = phi ptr [ %38, %37 ], [ %35, %34 ]
  %41 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %40, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %41, ptr noundef nonnull align 4 dereferenceable(12) %5, i64 12, i1 false)
  %42 = load i32, ptr %1, align 8, !tbaa !77
  store i32 %42, ptr %40, align 8, !tbaa !77
  %43 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %40, i64 0, i32 2
  %44 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %40, i64 0, i32 3
  %45 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %40, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  store ptr %2, ptr %45, align 8, !tbaa !72
  %46 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !65
  %48 = icmp eq ptr %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %39
  %50 = invoke noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %47, ptr noundef nonnull %40, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %51 unwind label %52

51:                                               ; preds = %49
  store ptr %50, ptr %44, align 8, !tbaa !65
  br label %54

52:                                               ; preds = %49
  %53 = landingpad { ptr, i32 }
          catch ptr null
  br label %110

54:                                               ; preds = %51, %39
  %55 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !66
  %57 = icmp eq ptr %56, null
  br i1 %57, label %122, label %58

58:                                               ; preds = %54, %115
  %59 = phi ptr [ %117, %115 ], [ %56, %54 ]
  %60 = phi ptr [ %95, %115 ], [ %40, %54 ]
  %61 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %59, i64 0, i32 1
  %62 = load ptr, ptr %6, align 8, !tbaa !71
  %63 = icmp eq ptr %62, null
  br i1 %63, label %89, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %62, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !72
  store ptr %66, ptr %6, align 8, !tbaa !71
  %67 = icmp eq ptr %66, null
  br i1 %67, label %88, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %66, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !65
  %71 = icmp eq ptr %70, %62
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  store ptr null, ptr %69, align 8, !tbaa !65
  %73 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %66, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !66
  %75 = icmp eq ptr %74, null
  br i1 %75, label %89, label %76

76:                                               ; preds = %72, %76
  %77 = phi ptr [ %79, %76 ], [ %74, %72 ]
  %78 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %77, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !65
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %76, !llvm.loop !76

81:                                               ; preds = %76
  store ptr %77, ptr %6, align 8, !tbaa !71
  %82 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %77, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !66
  %84 = icmp eq ptr %83, null
  %85 = select i1 %84, ptr %77, ptr %83
  store ptr %85, ptr %6, align 8
  br label %89

86:                                               ; preds = %68
  %87 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %66, i64 0, i32 2
  store ptr null, ptr %87, align 8, !tbaa !66
  br label %89

88:                                               ; preds = %64
  store ptr null, ptr %3, align 8, !tbaa !69
  br label %89

89:                                               ; preds = %58, %72, %81, %86, %88
  %90 = phi ptr [ null, %58 ], [ %62, %86 ], [ %62, %72 ], [ %62, %88 ], [ %62, %81 ]
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15
          to label %94 unwind label %108

94:                                               ; preds = %92, %89
  %95 = phi ptr [ %90, %89 ], [ %93, %92 ]
  %96 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %95, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %96, ptr noundef nonnull align 4 dereferenceable(12) %61, i64 12, i1 false)
  %97 = load i32, ptr %59, align 8, !tbaa !77
  store i32 %97, ptr %95, align 8, !tbaa !77
  %98 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %95, i64 0, i32 2
  %99 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %95, i64 0, i32 3
  %100 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %60, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %98, i8 0, i64 16, i1 false)
  store ptr %95, ptr %100, align 8, !tbaa !66
  %101 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %95, i64 0, i32 1
  store ptr %60, ptr %101, align 8, !tbaa !72
  %102 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %59, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !65
  %104 = icmp eq ptr %103, null
  br i1 %104, label %115, label %105

105:                                              ; preds = %94
  %106 = invoke noundef ptr @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE7_M_copyILb0ENS8_20_Reuse_or_alloc_nodeEEEPSt13_Rb_tree_nodeIS2_ESD_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %103, ptr noundef nonnull %95, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %107 unwind label %108

107:                                              ; preds = %105
  store ptr %106, ptr %99, align 8, !tbaa !65
  br label %115

108:                                              ; preds = %92, %105
  %109 = landingpad { ptr, i32 }
          catch ptr null
  br label %110

110:                                              ; preds = %108, %52
  %111 = phi { ptr, i32 } [ %109, %108 ], [ %53, %52 ]
  %112 = extractvalue { ptr, i32 } %111, 0
  %113 = tail call ptr @__cxa_begin_catch(ptr %112) #16
  invoke void @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %40)
          to label %114 unwind label %119

114:                                              ; preds = %110
  invoke void @__cxa_rethrow() #20
          to label %126 unwind label %119

115:                                              ; preds = %107, %94
  %116 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %59, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !66
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %58, !llvm.loop !78

119:                                              ; preds = %114, %110
  %120 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %121 unwind label %123

121:                                              ; preds = %119
  resume { ptr, i32 } %120

122:                                              ; preds = %115, %54
  ret ptr %40

123:                                              ; preds = %119
  %124 = landingpad { ptr, i32 }
          catch ptr null
  %125 = extractvalue { ptr, i32 } %124, 0
  tail call void @__clang_call_terminate(ptr %125) #17
  unreachable

126:                                              ; preds = %114
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE16_M_insert_uniqueIRKS2_EESt4pairISt17_Rb_tree_iteratorIS2_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(9) %1) local_unnamed_addr #3 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %10, %7
  %11 = phi ptr [ %5, %7 ], [ %18, %10 ]
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = icmp ult i32 %9, %13
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  %17 = select i1 %14, ptr %15, ptr %16
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10, !llvm.loop !68

20:                                               ; preds = %10, %2
  %21 = phi ptr [ %4, %2 ], [ %11, %10 ]
  %22 = phi i1 [ true, %2 ], [ %14, %10 ]
  %23 = phi ptr [ %5, %2 ], [ %18, %10 ]
  br i1 %22, label %24, label %30

24:                                               ; preds = %20
  %25 = getelementptr inbounds i8, ptr %0, i64 24
  %26 = load ptr, ptr %25, align 8, !tbaa !43
  %27 = icmp eq ptr %21, %26
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %21) #19
  br label %30

30:                                               ; preds = %28, %20
  %31 = phi ptr [ %29, %28 ], [ %21, %20 ]
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %31, i64 0, i32 1, i32 0, i64 4
  %33 = load i32, ptr %32, align 4, !tbaa !50
  %34 = load i32, ptr %1, align 4, !tbaa !46
  %35 = icmp ult i32 %33, %34
  %36 = select i1 %35, ptr %23, ptr %31
  %37 = select i1 %35, ptr %21, ptr null
  br label %38

38:                                               ; preds = %24, %30
  %39 = phi ptr [ %23, %24 ], [ %36, %30 ]
  %40 = phi ptr [ %21, %24 ], [ %37, %30 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %59, label %42

42:                                               ; preds = %38
  %43 = icmp ne ptr %39, null
  %44 = icmp eq ptr %4, %40
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %40, i64 0, i32 1
  %48 = getelementptr inbounds %"struct.RangeTree<unsigned int>::Range", ptr %1, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = load i32, ptr %47, align 4, !tbaa !46
  %51 = icmp ult i32 %49, %50
  br label %52

52:                                               ; preds = %42, %46
  %53 = phi i1 [ true, %42 ], [ %51, %46 ]
  %54 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15
  %55 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %54, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %55, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !56
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %53, ptr noundef nonnull %54, ptr noundef nonnull %40, ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %56 = getelementptr inbounds i8, ptr %0, i64 40
  %57 = load i64, ptr %56, align 8, !tbaa !45
  %58 = add i64 %57, 1
  store i64 %58, ptr %56, align 8, !tbaa !45
  br label %59

59:                                               ; preds = %38, %52
  %60 = phi ptr [ %54, %52 ], [ %39, %38 ]
  %61 = phi i8 [ 1, %52 ], [ 0, %38 ]
  %62 = insertvalue { ptr, i8 } poison, ptr %60, 0
  %63 = insertvalue { ptr, i8 } %62, i8 %61, 1
  ret { ptr, i8 } %63
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_range_tree_c_api.cc() #13 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { noreturn }

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
!34 = !{!35, !37, i64 0}
!35 = !{!"_ZTSSt15_Rb_tree_header", !36, i64 0, !41, i64 32}
!36 = !{!"_ZTSSt18_Rb_tree_node_base", !37, i64 0, !40, i64 8, !40, i64 16, !40, i64 24}
!37 = !{!"_ZTSSt14_Rb_tree_color", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"any pointer", !38, i64 0}
!41 = !{!"long", !38, i64 0}
!42 = !{!35, !40, i64 8}
!43 = !{!35, !40, i64 16}
!44 = !{!35, !40, i64 24}
!45 = !{!35, !41, i64 32}
!46 = !{!47, !48, i64 0}
!47 = !{!"_ZTSN9RangeTreeIjE5RangeE", !48, i64 0, !48, i64 4, !49, i64 8}
!48 = !{!"int", !38, i64 0}
!49 = !{!"bool", !38, i64 0}
!50 = !{!47, !48, i64 4}
!51 = !{!47, !49, i64 8}
!52 = !{!40, !40, i64 0}
!53 = distinct !{!53, !54, !55}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!"llvm.loop.unroll.disable"}
!56 = !{i64 0, i64 4, !57, i64 4, i64 4, !57, i64 8, i64 1, !58}
!57 = !{!48, !48, i64 0}
!58 = !{!49, !49, i64 0}
!59 = !{i64 0, i64 4, !57, i64 4, i64 1, !58}
!60 = distinct !{!60, !54, !55}
!61 = distinct !{!61, !54, !55}
!62 = !{i8 0, i8 2}
!63 = !{}
!64 = distinct !{!64, !54, !55}
!65 = !{!36, !40, i64 24}
!66 = !{!36, !40, i64 16}
!67 = distinct !{!67, !54, !55}
!68 = distinct !{!68, !54, !55}
!69 = !{!70, !40, i64 0}
!70 = !{!"_ZTSNSt8_Rb_treeIN9RangeTreeIjE5RangeES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE20_Reuse_or_alloc_nodeE", !40, i64 0, !40, i64 8, !40, i64 16}
!71 = !{!70, !40, i64 8}
!72 = !{!36, !40, i64 8}
!73 = distinct !{!73, !54, !55}
!74 = distinct !{!74, !54, !55}
!75 = !{!70, !40, i64 16}
!76 = distinct !{!76, !54, !55}
!77 = !{!36, !37, i64 0}
!78 = distinct !{!78, !54, !55}
