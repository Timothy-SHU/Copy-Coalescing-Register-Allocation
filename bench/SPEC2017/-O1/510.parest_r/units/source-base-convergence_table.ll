; ModuleID = 'source/base/convergence_table.cc'
source_filename = "source/base/convergence_table.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.31" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.dealii::TableHandler" = type { %"class.std::vector", %"class.std::map", %"class.std::map.3", %"class.std::map.8", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, dealii::TableHandler::Column>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::map.3" = type { %"class.std::_Rb_tree.4" }
%"class.std::_Rb_tree.4" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::vector<std::__cxx11::basic_string<char>>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"class.std::map.8" = type { %"class.std::_Rb_tree.9" }
%"class.std::_Rb_tree.9" = type { %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, std::__cxx11::basic_string<char>>>, std::less<std::__cxx11::basic_string<char>>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [136 x i8] }
%"class.dealii::StandardExceptions::ExcNotImplemented" = type { %"class.dealii::ExceptionBase.base", [4 x i8] }
%"class.dealii::ExceptionBase.base" = type <{ %"class.std::exception", ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, i32 }>
%"class.std::exception" = type { ptr }
%"struct.std::_Rb_tree_node.37" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf.38" }
%"struct.__gnu_cxx::__aligned_membuf.38" = type { [56 x i8] }

$_ZN6dealii18StandardExceptions17ExcNotImplementedD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_ = comdat any

$_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_ = comdat any

$_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_ = comdat any

$_ZTSN6dealii10TableEntryIdEE = comdat any

$_ZTIN6dealii10TableEntryIdEE = comdat any

$_ZTSN6dealii10TableEntryIfEE = comdat any

$_ZTIN6dealii10TableEntryIfEE = comdat any

$_ZTSN6dealii10TableEntryIiEE = comdat any

$_ZTIN6dealii10TableEntryIiEE = comdat any

$_ZTSN6dealii10TableEntryIjEE = comdat any

$_ZTIN6dealii10TableEntryIjEE = comdat any

$_ZTVN6dealii18StandardExceptions17ExcNotImplementedE = comdat any

$_ZTSN6dealii18StandardExceptions17ExcNotImplementedE = comdat any

$_ZTIN6dealii18StandardExceptions17ExcNotImplementedE = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZTIN6dealii14TableEntryBaseE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN6dealii10TableEntryIdEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii10TableEntryIdEE\00", comdat, align 1
@_ZTIN6dealii10TableEntryIdEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii10TableEntryIdEE, ptr @_ZTIN6dealii14TableEntryBaseE }, comdat, align 8
@_ZTSN6dealii10TableEntryIfEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii10TableEntryIfEE\00", comdat, align 1
@_ZTIN6dealii10TableEntryIfEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii10TableEntryIfEE, ptr @_ZTIN6dealii14TableEntryBaseE }, comdat, align 8
@_ZTSN6dealii10TableEntryIiEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii10TableEntryIiEE\00", comdat, align 1
@_ZTIN6dealii10TableEntryIiEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii10TableEntryIiEE, ptr @_ZTIN6dealii14TableEntryBaseE }, comdat, align 8
@_ZTSN6dealii10TableEntryIjEE = linkonce_odr dso_local constant [25 x i8] c"N6dealii10TableEntryIjEE\00", comdat, align 1
@_ZTIN6dealii10TableEntryIjEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii10TableEntryIjEE, ptr @_ZTIN6dealii14TableEntryBaseE }, comdat, align 8
@.str = private unnamed_addr constant [9 x i8] c"red.rate\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"red.rate.log2\00", align 1
@_ZTVN6dealii18StandardExceptions17ExcNotImplementedE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN6dealii18StandardExceptions17ExcNotImplementedE, ptr @_ZN6dealii13ExceptionBaseD2Ev, ptr @_ZN6dealii18StandardExceptions17ExcNotImplementedD0Ev, ptr @_ZNK6dealii13ExceptionBase4whatEv, ptr @_ZNK6dealii13ExceptionBase10print_infoERSo] }, comdat, align 8
@_ZTSN6dealii18StandardExceptions17ExcNotImplementedE = linkonce_odr dso_local constant [49 x i8] c"N6dealii18StandardExceptions17ExcNotImplementedE\00", comdat, align 1
@_ZTIN6dealii13ExceptionBaseE = external constant ptr
@_ZTIN6dealii18StandardExceptions17ExcNotImplementedE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6dealii18StandardExceptions17ExcNotImplementedE, ptr @_ZTIN6dealii13ExceptionBaseE }, comdat, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1

@_ZN6dealii16ConvergenceTableC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii16ConvergenceTableC2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii16ConvergenceTableC2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #0 align 2 !prof !39 {
  tail call void @_ZN6dealii12TableHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(232) %0)
  ret void
}

declare void @_ZN6dealii12TableHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(232)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6dealii16ConvergenceTable26evaluate_convergence_ratesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_8RateModeE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %5 = alloca %"class.std::tuple", align 8
  %6 = alloca %"class.std::tuple.31", align 1
  %7 = alloca i64, align 8
  %8 = alloca %"class.std::tuple", align 8
  %9 = alloca %"class.std::tuple.31", align 1
  %10 = alloca i64, align 8
  %11 = alloca %"class.std::tuple", align 8
  %12 = alloca %"class.std::tuple.31", align 1
  %13 = alloca %"class.std::tuple", align 8
  %14 = alloca %"class.std::tuple.31", align 1
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  %18 = alloca %"class.std::__cxx11::basic_string", align 8
  %19 = icmp eq i32 %3, 0
  br i1 %19, label %487, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !41
  %24 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  %25 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %23, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %50, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !49
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %25, i64 0, i32 1, i32 0, i64 8
  %31 = load i64, ptr %30, align 8, !tbaa !49
  %32 = tail call i64 @llvm.umin.i64(i64 %31, i64 %29)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %25, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  %37 = load ptr, ptr %1, align 8, !tbaa !52
  %38 = tail call i32 @memcmp(ptr noundef %37, ptr noundef %36, i64 noundef %32) #20
  br label %39

39:                                               ; preds = %34, %27
  %40 = phi i32 [ %38, %34 ], [ 0, %27 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = sub i64 %29, %31
  %44 = tail call i64 @llvm.smax.i64(i64 %43, i64 -2147483648)
  %45 = tail call i64 @llvm.smin.i64(i64 %44, i64 2147483647)
  %46 = trunc i64 %45 to i32
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i32 [ %40, %39 ], [ %46, %42 ]
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #20
  store ptr %1, ptr %13, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #20
  %51 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %25, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 1 dereferenceable(1) %14)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #20
  br label %52

52:                                               ; preds = %47, %50
  %53 = phi ptr [ %51, %50 ], [ %25, %47 ]
  %54 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %53, i64 0, i32 1, i32 0, i64 32
  %55 = load ptr, ptr %22, align 8, !tbaa !41
  %56 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %55, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %57 = icmp eq ptr %56, %24
  br i1 %57, label %81, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !49
  %61 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %56, i64 0, i32 1, i32 0, i64 8
  %62 = load i64, ptr %61, align 8, !tbaa !49
  %63 = call i64 @llvm.umin.i64(i64 %62, i64 %60)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %56, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !52
  %68 = load ptr, ptr %2, align 8, !tbaa !52
  %69 = call i32 @memcmp(ptr noundef %68, ptr noundef %67, i64 noundef %63) #20
  br label %70

70:                                               ; preds = %65, %58
  %71 = phi i32 [ %69, %65 ], [ 0, %58 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = sub i64 %60, %62
  %75 = call i64 @llvm.smax.i64(i64 %74, i64 -2147483648)
  %76 = call i64 @llvm.smin.i64(i64 %75, i64 2147483647)
  %77 = trunc i64 %76 to i32
  br label %78

78:                                               ; preds = %73, %70
  %79 = phi i32 [ %71, %70 ], [ %77, %73 ]
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78, %52
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #20
  store ptr %2, ptr %11, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #20
  %82 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %56, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #20
  br label %83

83:                                               ; preds = %78, %81
  %84 = phi ptr [ %82, %81 ], [ %56, %78 ]
  %85 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %84, i64 0, i32 1, i32 0, i64 32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #20
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  store ptr %86, ptr %15, align 8, !tbaa !54
  %87 = load ptr, ptr %1, align 8, !tbaa !52
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  store i64 %89, ptr %10, align 8, !tbaa !55
  %90 = icmp ugt i64 %89, 15
  br i1 %90, label %91, label %94, !prof !56

91:                                               ; preds = %83
  %92 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 0)
  store ptr %92, ptr %15, align 8, !tbaa !52
  %93 = load i64, ptr %10, align 8, !tbaa !55
  store i64 %93, ptr %86, align 8, !tbaa !57
  br label %94

94:                                               ; preds = %91, %83
  %95 = load ptr, ptr %15, align 8, !tbaa !52
  switch i64 %89, label %98 [
    i64 1, label %96
    i64 0, label %99
  ], !prof !58

96:                                               ; preds = %94
  %97 = load i8, ptr %87, align 1, !tbaa !57
  store i8 %97, ptr %95, align 1, !tbaa !57
  br label %99

98:                                               ; preds = %94
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %95, ptr align 1 %87, i64 %89, i1 false), !prof !59
  br label %99

99:                                               ; preds = %94, %96, %98
  %100 = load i64, ptr %10, align 8, !tbaa !55
  %101 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  store i64 %100, ptr %101, align 8, !tbaa !49
  %102 = load ptr, ptr %15, align 8, !tbaa !52
  %103 = getelementptr inbounds i8, ptr %102, i64 %100
  store i8 0, ptr %103, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  %104 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %53, i64 0, i32 1, i32 0, i64 40
  %105 = load ptr, ptr %104, align 8, !tbaa !60
  %106 = load ptr, ptr %54, align 8, !tbaa !62
  %107 = ptrtoint ptr %105 to i64
  %108 = ptrtoint ptr %106 to i64
  %109 = sub i64 %107, %108
  %110 = ashr exact i64 %109, 3
  %111 = trunc i64 %110 to i32
  %112 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %84, i64 0, i32 1, i32 0, i64 40
  %113 = load ptr, ptr %112, align 8, !tbaa !60
  %114 = load ptr, ptr %85, align 8, !tbaa !62
  %115 = and i64 %110, 4294967295
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %99
  %118 = shl nuw nsw i64 %115, 3
  %119 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %118) #21
          to label %120 unwind label %151

120:                                              ; preds = %117, %99
  %121 = phi ptr [ null, %99 ], [ %119, %117 ]
  br i1 %116, label %128, label %122

122:                                              ; preds = %120
  store double 0.000000e+00, ptr %121, align 8, !tbaa !63
  %123 = icmp eq i64 %115, 1
  br i1 %123, label %128, label %124

124:                                              ; preds = %122
  %125 = getelementptr double, ptr %121, i64 1
  %126 = shl nuw nsw i64 %115, 3
  %127 = add nsw i64 %126, -8
  call void @llvm.memset.p0.i64(ptr align 8 %125, i8 0, i64 %127, i1 false), !tbaa !63
  br label %128

128:                                              ; preds = %124, %122, %120
  %129 = ptrtoint ptr %113 to i64
  %130 = ptrtoint ptr %114 to i64
  %131 = sub i64 %129, %130
  %132 = lshr exact i64 %131, 3
  %133 = and i64 %132, 4294967295
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %128
  %136 = shl nuw nsw i64 %133, 3
  %137 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %136) #21
          to label %138 unwind label %153

138:                                              ; preds = %135, %128
  %139 = phi ptr [ null, %128 ], [ %137, %135 ]
  br i1 %134, label %146, label %140

140:                                              ; preds = %138
  store double 0.000000e+00, ptr %139, align 8, !tbaa !63
  %141 = icmp eq i64 %133, 1
  br i1 %141, label %146, label %142

142:                                              ; preds = %140
  %143 = getelementptr double, ptr %139, i64 1
  %144 = shl nuw nsw i64 %133, 3
  %145 = add nsw i64 %144, -8
  call void @llvm.memset.p0.i64(ptr align 8 %143, i8 0, i64 %145, i1 false), !tbaa !63
  br label %146

146:                                              ; preds = %142, %140, %138
  %147 = icmp eq i32 %111, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %146
  %149 = and i64 %110, 4294967295
  br label %155

150:                                              ; preds = %256, %146
  switch i32 %3, label %364 [
    i32 2, label %309
    i32 1, label %259
  ]

151:                                              ; preds = %117
  %152 = landingpad { ptr, i32 }
          cleanup
  br label %498

153:                                              ; preds = %135
  %154 = landingpad { ptr, i32 }
          cleanup
  br label %494

155:                                              ; preds = %148, %256
  %156 = phi i64 [ 0, %148 ], [ %257, %256 ]
  %157 = load ptr, ptr %54, align 8, !tbaa !62
  %158 = getelementptr inbounds ptr, ptr %157, i64 %156
  %159 = load ptr, ptr %158, align 8, !tbaa !53
  %160 = icmp eq ptr %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %155
  %162 = call ptr @__dynamic_cast(ptr nonnull %159, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIdEE, i64 0) #20
  br label %163

163:                                              ; preds = %155, %161
  %164 = phi ptr [ %162, %161 ], [ null, %155 ]
  %165 = icmp eq ptr %164, null
  br i1 %165, label %171, label %166

166:                                              ; preds = %163
  %167 = call ptr @__dynamic_cast(ptr nonnull %159, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIdEE, i64 0) #20
  %168 = invoke noundef double @_ZNK6dealii10TableEntryIdE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %167)
          to label %204 unwind label %169

169:                                              ; preds = %248, %237, %226, %217, %199, %188, %177, %166
  %170 = landingpad { ptr, i32 }
          cleanup
  br label %490

171:                                              ; preds = %163
  br i1 %160, label %174, label %172

172:                                              ; preds = %171
  %173 = call ptr @__dynamic_cast(ptr nonnull %159, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIfEE, i64 0) #20
  br label %174

174:                                              ; preds = %171, %172
  %175 = phi ptr [ %173, %172 ], [ null, %171 ]
  %176 = icmp eq ptr %175, null
  br i1 %176, label %182, label %177

177:                                              ; preds = %174
  %178 = call ptr @__dynamic_cast(ptr nonnull %159, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIfEE, i64 0) #20
  %179 = invoke noundef float @_ZNK6dealii10TableEntryIfE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %178)
          to label %180 unwind label %169

180:                                              ; preds = %177
  %181 = fpext float %179 to double
  br label %204

182:                                              ; preds = %174
  br i1 %160, label %185, label %183

183:                                              ; preds = %182
  %184 = call ptr @__dynamic_cast(ptr nonnull %159, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIiEE, i64 0) #20
  br label %185

185:                                              ; preds = %182, %183
  %186 = phi ptr [ %184, %183 ], [ null, %182 ]
  %187 = icmp eq ptr %186, null
  br i1 %187, label %193, label %188

188:                                              ; preds = %185
  %189 = call ptr @__dynamic_cast(ptr nonnull %159, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIiEE, i64 0) #20
  %190 = invoke noundef i32 @_ZNK6dealii10TableEntryIiE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %189)
          to label %191 unwind label %169

191:                                              ; preds = %188
  %192 = sitofp i32 %190 to double
  br label %204

193:                                              ; preds = %185
  br i1 %160, label %196, label %194

194:                                              ; preds = %193
  %195 = call ptr @__dynamic_cast(ptr nonnull %159, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIjEE, i64 0) #20
  br label %196

196:                                              ; preds = %193, %194
  %197 = phi ptr [ %195, %194 ], [ null, %193 ]
  %198 = icmp eq ptr %197, null
  br i1 %198, label %207, label %199

199:                                              ; preds = %196
  %200 = call ptr @__dynamic_cast(ptr nonnull %159, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIjEE, i64 0) #20
  %201 = invoke noundef i32 @_ZNK6dealii10TableEntryIjE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %200)
          to label %202 unwind label %169

202:                                              ; preds = %199
  %203 = uitofp i32 %201 to double
  br label %204

204:                                              ; preds = %166, %191, %202, %180
  %205 = phi double [ %181, %180 ], [ %203, %202 ], [ %192, %191 ], [ %168, %166 ]
  %206 = getelementptr inbounds double, ptr %121, i64 %156
  store double %205, ptr %206, align 8, !tbaa !63
  br label %207

207:                                              ; preds = %204, %196
  %208 = load ptr, ptr %85, align 8, !tbaa !62
  %209 = getelementptr inbounds ptr, ptr %208, i64 %156
  %210 = load ptr, ptr %209, align 8, !tbaa !53
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %207
  %213 = call ptr @__dynamic_cast(ptr nonnull %210, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIdEE, i64 0) #20
  br label %214

214:                                              ; preds = %207, %212
  %215 = phi ptr [ %213, %212 ], [ null, %207 ]
  %216 = icmp eq ptr %215, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = call ptr @__dynamic_cast(ptr nonnull %210, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIdEE, i64 0) #20
  %219 = invoke noundef double @_ZNK6dealii10TableEntryIdE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %218)
          to label %253 unwind label %169

220:                                              ; preds = %214
  br i1 %211, label %223, label %221

221:                                              ; preds = %220
  %222 = call ptr @__dynamic_cast(ptr nonnull %210, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIfEE, i64 0) #20
  br label %223

223:                                              ; preds = %220, %221
  %224 = phi ptr [ %222, %221 ], [ null, %220 ]
  %225 = icmp eq ptr %224, null
  br i1 %225, label %231, label %226

226:                                              ; preds = %223
  %227 = call ptr @__dynamic_cast(ptr nonnull %210, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIfEE, i64 0) #20
  %228 = invoke noundef float @_ZNK6dealii10TableEntryIfE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %227)
          to label %229 unwind label %169

229:                                              ; preds = %226
  %230 = fpext float %228 to double
  br label %253

231:                                              ; preds = %223
  br i1 %211, label %234, label %232

232:                                              ; preds = %231
  %233 = call ptr @__dynamic_cast(ptr nonnull %210, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIiEE, i64 0) #20
  br label %234

234:                                              ; preds = %231, %232
  %235 = phi ptr [ %233, %232 ], [ null, %231 ]
  %236 = icmp eq ptr %235, null
  br i1 %236, label %242, label %237

237:                                              ; preds = %234
  %238 = call ptr @__dynamic_cast(ptr nonnull %210, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIiEE, i64 0) #20
  %239 = invoke noundef i32 @_ZNK6dealii10TableEntryIiE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %238)
          to label %240 unwind label %169

240:                                              ; preds = %237
  %241 = sitofp i32 %239 to double
  br label %253

242:                                              ; preds = %234
  br i1 %211, label %245, label %243

243:                                              ; preds = %242
  %244 = call ptr @__dynamic_cast(ptr nonnull %210, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIjEE, i64 0) #20
  br label %245

245:                                              ; preds = %242, %243
  %246 = phi ptr [ %244, %243 ], [ null, %242 ]
  %247 = icmp eq ptr %246, null
  br i1 %247, label %256, label %248

248:                                              ; preds = %245
  %249 = call ptr @__dynamic_cast(ptr nonnull %210, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIjEE, i64 0) #20
  %250 = invoke noundef i32 @_ZNK6dealii10TableEntryIjE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %249)
          to label %251 unwind label %169

251:                                              ; preds = %248
  %252 = uitofp i32 %250 to double
  br label %253

253:                                              ; preds = %217, %229, %251, %240
  %254 = phi double [ %241, %240 ], [ %252, %251 ], [ %230, %229 ], [ %219, %217 ]
  %255 = getelementptr inbounds double, ptr %139, i64 %156
  store double %254, ptr %255, align 8, !tbaa !63
  br label %256

256:                                              ; preds = %253, %245
  %257 = add nuw nsw i64 %156, 1
  %258 = icmp eq i64 %257, %149
  br i1 %258, label %150, label %155, !llvm.loop !65

259:                                              ; preds = %150
  %260 = load i64, ptr %101, align 8, !tbaa !49
  %261 = and i64 %260, -8
  %262 = icmp eq i64 %261, 4611686018427387896
  br i1 %262, label %313, label %263, !prof !68

263:                                              ; preds = %259
  %264 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str, i64 noundef 8)
          to label %265 unwind label %280

265:                                              ; preds = %263
  %266 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  store ptr %266, ptr %16, align 8, !tbaa !54
  store i8 45, ptr %266, align 8, !tbaa !57
  %267 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  store i64 1, ptr %267, align 8, !tbaa !49
  %268 = getelementptr inbounds i8, ptr %16, i64 17
  store i8 0, ptr %268, align 1, !tbaa !57
  invoke void @_ZN6dealii12TableHandler9add_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS7_T_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull %16)
          to label %269 unwind label %282

269:                                              ; preds = %265
  %270 = load ptr, ptr %16, align 8, !tbaa !52
  %271 = icmp eq ptr %270, %266
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i64, ptr %267, align 8, !tbaa !49
  %274 = icmp ult i64 %273, 16
  call void @llvm.assume(i1 %274)
  br label %276

275:                                              ; preds = %269
  call void @_ZdlPv(ptr noundef %270) #22
  br label %276

276:                                              ; preds = %272, %275
  %277 = icmp ugt i32 %111, 1
  br i1 %277, label %278, label %364

278:                                              ; preds = %276
  %279 = and i64 %110, 4294967295
  br label %290

280:                                              ; preds = %313, %391, %364, %315, %263, %394
  %281 = landingpad { ptr, i32 }
          cleanup
  br label %490

282:                                              ; preds = %265
  %283 = landingpad { ptr, i32 }
          cleanup
  %284 = load ptr, ptr %16, align 8, !tbaa !52
  %285 = icmp eq ptr %284, %266
  br i1 %285, label %286, label %289

286:                                              ; preds = %282
  %287 = load i64, ptr %267, align 8, !tbaa !49
  %288 = icmp ult i64 %287, 16
  call void @llvm.assume(i1 %288)
  br label %490

289:                                              ; preds = %282
  call void @_ZdlPv(ptr noundef %284) #22
  br label %490

290:                                              ; preds = %278, %304
  %291 = phi i64 [ 1, %278 ], [ %305, %304 ]
  %292 = add nsw i64 %291, -1
  %293 = getelementptr inbounds double, ptr %121, i64 %292
  %294 = load double, ptr %293, align 8, !tbaa !63
  %295 = getelementptr inbounds double, ptr %121, i64 %291
  %296 = load double, ptr %295, align 8, !tbaa !63
  %297 = fdiv double %294, %296
  %298 = getelementptr inbounds double, ptr %139, i64 %291
  %299 = load double, ptr %298, align 8, !tbaa !63
  %300 = fmul double %297, %299
  %301 = getelementptr inbounds double, ptr %139, i64 %292
  %302 = load double, ptr %301, align 8, !tbaa !63
  %303 = fdiv double %300, %302
  invoke void @_ZN6dealii12TableHandler9add_valueIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %15, double noundef %303)
          to label %304 unwind label %307

304:                                              ; preds = %290
  %305 = add nuw nsw i64 %291, 1
  %306 = icmp eq i64 %305, %279
  br i1 %306, label %364, label %290, !llvm.loop !69

307:                                              ; preds = %290
  %308 = landingpad { ptr, i32 }
          cleanup
  br label %490

309:                                              ; preds = %150
  %310 = load i64, ptr %101, align 8, !tbaa !49
  %311 = and i64 %310, -8
  %312 = icmp eq i64 %311, 4611686018427387896
  br i1 %312, label %313, label %315, !prof !68

313:                                              ; preds = %259, %309
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %314 unwind label %280

314:                                              ; preds = %313
  unreachable

315:                                              ; preds = %309
  %316 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull @.str, i64 noundef 8)
          to label %317 unwind label %280

317:                                              ; preds = %315
  %318 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  store ptr %318, ptr %17, align 8, !tbaa !54
  store i8 45, ptr %318, align 8, !tbaa !57
  %319 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  store i64 1, ptr %319, align 8, !tbaa !49
  %320 = getelementptr inbounds i8, ptr %17, i64 17
  store i8 0, ptr %320, align 1, !tbaa !57
  invoke void @_ZN6dealii12TableHandler9add_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS7_T_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull %17)
          to label %321 unwind label %332

321:                                              ; preds = %317
  %322 = load ptr, ptr %17, align 8, !tbaa !52
  %323 = icmp eq ptr %322, %318
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load i64, ptr %319, align 8, !tbaa !49
  %326 = icmp ult i64 %325, 16
  call void @llvm.assume(i1 %326)
  br label %328

327:                                              ; preds = %321
  call void @_ZdlPv(ptr noundef %322) #22
  br label %328

328:                                              ; preds = %324, %327
  %329 = icmp ugt i32 %111, 1
  br i1 %329, label %330, label %364

330:                                              ; preds = %328
  %331 = and i64 %110, 4294967295
  br label %340

332:                                              ; preds = %317
  %333 = landingpad { ptr, i32 }
          cleanup
  %334 = load ptr, ptr %17, align 8, !tbaa !52
  %335 = icmp eq ptr %334, %318
  br i1 %335, label %336, label %339

336:                                              ; preds = %332
  %337 = load i64, ptr %319, align 8, !tbaa !49
  %338 = icmp ult i64 %337, 16
  call void @llvm.assume(i1 %338)
  br label %490

339:                                              ; preds = %332
  call void @_ZdlPv(ptr noundef %334) #22
  br label %490

340:                                              ; preds = %330, %359
  %341 = phi i64 [ 1, %330 ], [ %360, %359 ]
  %342 = add nsw i64 %341, -1
  %343 = getelementptr inbounds double, ptr %121, i64 %342
  %344 = load double, ptr %343, align 8, !tbaa !63
  %345 = getelementptr inbounds double, ptr %121, i64 %341
  %346 = load double, ptr %345, align 8, !tbaa !63
  %347 = fdiv double %344, %346
  %348 = call double @llvm.fabs.f64(double %347)
  %349 = call double @log(double noundef %348) #20
  %350 = fmul double %349, 2.000000e+00
  %351 = getelementptr inbounds double, ptr %139, i64 %341
  %352 = load double, ptr %351, align 8, !tbaa !63
  %353 = getelementptr inbounds double, ptr %139, i64 %342
  %354 = load double, ptr %353, align 8, !tbaa !63
  %355 = fdiv double %352, %354
  %356 = call double @llvm.fabs.f64(double %355)
  %357 = call double @log(double noundef %356) #20
  %358 = fdiv double %350, %357
  invoke void @_ZN6dealii12TableHandler9add_valueIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %15, double noundef %358)
          to label %359 unwind label %362

359:                                              ; preds = %340
  %360 = add nuw nsw i64 %341, 1
  %361 = icmp eq i64 %360, %331
  br i1 %361, label %364, label %340, !llvm.loop !70

362:                                              ; preds = %340
  %363 = landingpad { ptr, i32 }
          cleanup
  br label %490

364:                                              ; preds = %304, %359, %276, %328, %150
  %365 = load ptr, ptr %22, align 8, !tbaa !41
  %366 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %365, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %367 unwind label %280

367:                                              ; preds = %364
  %368 = icmp eq ptr %366, %24
  br i1 %368, label %391, label %369

369:                                              ; preds = %367
  %370 = load i64, ptr %101, align 8, !tbaa !49
  %371 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %366, i64 0, i32 1, i32 0, i64 8
  %372 = load i64, ptr %371, align 8, !tbaa !49
  %373 = call i64 @llvm.umin.i64(i64 %372, i64 %370)
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %380, label %375

375:                                              ; preds = %369
  %376 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %366, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !52
  %378 = load ptr, ptr %15, align 8, !tbaa !52
  %379 = call i32 @memcmp(ptr noundef %378, ptr noundef %377, i64 noundef %373) #20
  br label %380

380:                                              ; preds = %375, %369
  %381 = phi i32 [ %379, %375 ], [ 0, %369 ]
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %380
  %384 = sub i64 %370, %372
  %385 = call i64 @llvm.smax.i64(i64 %384, i64 -2147483648)
  %386 = call i64 @llvm.smin.i64(i64 %385, i64 2147483647)
  %387 = trunc i64 %386 to i32
  br label %388

388:                                              ; preds = %383, %380
  %389 = phi i32 [ %381, %380 ], [ %387, %383 ]
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %388, %367
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store ptr %15, ptr %8, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #20
  %392 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %366, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %393 unwind label %280

393:                                              ; preds = %391
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  br label %394

394:                                              ; preds = %388, %393
  %395 = phi ptr [ %392, %393 ], [ %366, %388 ]
  %396 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %395, i64 0, i32 1, i32 0, i64 128
  store i32 1, ptr %396, align 8, !tbaa !71
  invoke void @_ZN6dealii12TableHandler13set_precisionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 2)
          to label %397 unwind label %280

397:                                              ; preds = %394
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #20
  %398 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 2
  store ptr %398, ptr %18, align 8, !tbaa !54
  %399 = load ptr, ptr %1, align 8, !tbaa !52
  %400 = load i64, ptr %88, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  store i64 %400, ptr %7, align 8, !tbaa !55
  %401 = icmp ugt i64 %400, 15
  br i1 %401, label %402, label %406, !prof !56

402:                                              ; preds = %397
  %403 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0)
          to label %404 unwind label %455

404:                                              ; preds = %402
  store ptr %403, ptr %18, align 8, !tbaa !52
  %405 = load i64, ptr %7, align 8, !tbaa !55
  store i64 %405, ptr %398, align 8, !tbaa !57
  br label %406

406:                                              ; preds = %404, %397
  %407 = load ptr, ptr %18, align 8, !tbaa !52
  switch i64 %400, label %410 [
    i64 1, label %408
    i64 0, label %411
  ], !prof !58

408:                                              ; preds = %406
  %409 = load i8, ptr %399, align 1, !tbaa !57
  store i8 %409, ptr %407, align 1, !tbaa !57
  br label %411

410:                                              ; preds = %406
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %407, ptr align 1 %399, i64 %400, i1 false), !prof !59
  br label %411

411:                                              ; preds = %406, %408, %410
  %412 = load i64, ptr %7, align 8, !tbaa !55
  %413 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %18, i64 0, i32 1
  store i64 %412, ptr %413, align 8, !tbaa !49
  %414 = load ptr, ptr %18, align 8, !tbaa !52
  %415 = getelementptr inbounds i8, ptr %414, i64 %412
  store i8 0, ptr %415, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  %416 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 2
  %417 = invoke ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %416, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %418 unwind label %457

418:                                              ; preds = %411
  %419 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1
  %420 = icmp eq ptr %417, %419
  br i1 %420, label %421, label %465

421:                                              ; preds = %418
  invoke void @_ZN6dealii12TableHandler25add_column_to_supercolumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %422 unwind label %457

422:                                              ; preds = %421
  %423 = load ptr, ptr %22, align 8, !tbaa !41
  %424 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %423, ptr noundef nonnull %24, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %425 unwind label %457

425:                                              ; preds = %422
  %426 = icmp eq ptr %424, %24
  br i1 %426, label %449, label %427

427:                                              ; preds = %425
  %428 = load i64, ptr %88, align 8, !tbaa !49
  %429 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %424, i64 0, i32 1, i32 0, i64 8
  %430 = load i64, ptr %429, align 8, !tbaa !49
  %431 = call i64 @llvm.umin.i64(i64 %430, i64 %428)
  %432 = icmp eq i64 %431, 0
  br i1 %432, label %438, label %433

433:                                              ; preds = %427
  %434 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %424, i64 0, i32 1
  %435 = load ptr, ptr %434, align 8, !tbaa !52
  %436 = load ptr, ptr %1, align 8, !tbaa !52
  %437 = call i32 @memcmp(ptr noundef %436, ptr noundef %435, i64 noundef %431) #20
  br label %438

438:                                              ; preds = %433, %427
  %439 = phi i32 [ %437, %433 ], [ 0, %427 ]
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %446

441:                                              ; preds = %438
  %442 = sub i64 %428, %430
  %443 = call i64 @llvm.smax.i64(i64 %442, i64 -2147483648)
  %444 = call i64 @llvm.smin.i64(i64 %443, i64 2147483647)
  %445 = trunc i64 %444 to i32
  br label %446

446:                                              ; preds = %441, %438
  %447 = phi i32 [ %439, %438 ], [ %445, %441 ]
  %448 = icmp slt i32 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %446, %425
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr %1, ptr %5, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  %450 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr %424, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %451 unwind label %457

451:                                              ; preds = %449
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  br label %452

452:                                              ; preds = %446, %451
  %453 = phi ptr [ %450, %451 ], [ %424, %446 ]
  %454 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %453, i64 0, i32 1, i32 0, i64 56
  invoke void @_ZN6dealii12TableHandler20set_tex_supercaptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %454)
          to label %465 unwind label %457

455:                                              ; preds = %402
  %456 = landingpad { ptr, i32 }
          cleanup
  br label %488

457:                                              ; preds = %449, %422, %411, %465, %452, %421
  %458 = landingpad { ptr, i32 }
          cleanup
  %459 = load ptr, ptr %18, align 8, !tbaa !52
  %460 = icmp eq ptr %459, %398
  br i1 %460, label %461, label %464

461:                                              ; preds = %457
  %462 = load i64, ptr %413, align 8, !tbaa !49
  %463 = icmp ult i64 %462, 16
  call void @llvm.assume(i1 %463)
  br label %488

464:                                              ; preds = %457
  call void @_ZdlPv(ptr noundef %459) #22
  br label %488

465:                                              ; preds = %452, %418
  invoke void @_ZN6dealii12TableHandler25add_column_to_supercolumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %466 unwind label %457

466:                                              ; preds = %465
  %467 = load ptr, ptr %18, align 8, !tbaa !52
  %468 = icmp eq ptr %467, %398
  br i1 %468, label %469, label %472

469:                                              ; preds = %466
  %470 = load i64, ptr %413, align 8, !tbaa !49
  %471 = icmp ult i64 %470, 16
  call void @llvm.assume(i1 %471)
  br label %473

472:                                              ; preds = %466
  call void @_ZdlPv(ptr noundef %467) #22
  br label %473

473:                                              ; preds = %469, %472
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #20
  %474 = icmp eq ptr %139, null
  br i1 %474, label %476, label %475

475:                                              ; preds = %473
  call void @_ZdlPv(ptr noundef %139) #22
  br label %476

476:                                              ; preds = %473, %475
  %477 = icmp eq ptr %121, null
  br i1 %477, label %479, label %478

478:                                              ; preds = %476
  call void @_ZdlPv(ptr noundef %121) #22
  br label %479

479:                                              ; preds = %476, %478
  %480 = load ptr, ptr %15, align 8, !tbaa !52
  %481 = icmp eq ptr %480, %86
  br i1 %481, label %482, label %485

482:                                              ; preds = %479
  %483 = load i64, ptr %101, align 8, !tbaa !49
  %484 = icmp ult i64 %483, 16
  call void @llvm.assume(i1 %484)
  br label %486

485:                                              ; preds = %479
  call void @_ZdlPv(ptr noundef %480) #22
  br label %486

486:                                              ; preds = %482, %485
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #20
  br label %487

487:                                              ; preds = %4, %486
  ret void

488:                                              ; preds = %464, %461, %455
  %489 = phi { ptr, i32 } [ %456, %455 ], [ %458, %461 ], [ %458, %464 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #20
  br label %490

490:                                              ; preds = %336, %339, %286, %289, %488, %362, %307, %280, %169
  %491 = phi { ptr, i32 } [ %170, %169 ], [ %489, %488 ], [ %281, %280 ], [ %308, %307 ], [ %363, %362 ], [ %283, %286 ], [ %283, %289 ], [ %333, %336 ], [ %333, %339 ]
  %492 = icmp eq ptr %139, null
  br i1 %492, label %494, label %493

493:                                              ; preds = %490
  call void @_ZdlPv(ptr noundef %139) #22
  br label %494

494:                                              ; preds = %493, %490, %153
  %495 = phi { ptr, i32 } [ %154, %153 ], [ %491, %490 ], [ %491, %493 ]
  %496 = icmp eq ptr %121, null
  br i1 %496, label %498, label %497

497:                                              ; preds = %494
  call void @_ZdlPv(ptr noundef %121) #22
  br label %498

498:                                              ; preds = %497, %494, %151
  %499 = phi { ptr, i32 } [ %152, %151 ], [ %495, %494 ], [ %495, %497 ]
  %500 = load ptr, ptr %15, align 8, !tbaa !52
  %501 = icmp eq ptr %500, %86
  br i1 %501, label %502, label %505

502:                                              ; preds = %498
  %503 = load i64, ptr %101, align 8, !tbaa !49
  %504 = icmp ult i64 %503, 16
  call void @llvm.assume(i1 %504)
  br label %506

505:                                              ; preds = %498
  call void @_ZdlPv(ptr noundef %500) #22
  br label %506

506:                                              ; preds = %502, %505
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #20
  resume { ptr, i32 } %499
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #4

declare noundef double @_ZNK6dealii10TableEntryIdE5valueEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef float @_ZNK6dealii10TableEntryIfE5valueEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

declare noundef i32 @_ZNK6dealii10TableEntryIiE5valueEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

declare noundef i32 @_ZNK6dealii10TableEntryIjE5valueEv(ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #1

declare void @_ZN6dealii12TableHandler9add_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS7_T_(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

declare void @_ZN6dealii12TableHandler9add_valueIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(32), double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

declare void @_ZN6dealii12TableHandler13set_precisionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

declare void @_ZN6dealii12TableHandler25add_column_to_supercolumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN6dealii12TableHandler20set_tex_supercaptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6dealii16ConvergenceTable26evaluate_convergence_ratesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8RateModeE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !annotation !40 {
  %4 = alloca %"class.std::tuple", align 8
  %5 = alloca %"class.std::tuple.31", align 1
  %6 = alloca i64, align 8
  %7 = alloca %"class.std::tuple", align 8
  %8 = alloca %"class.std::tuple.31", align 1
  %9 = alloca i64, align 8
  %10 = alloca %"class.std::tuple", align 8
  %11 = alloca %"class.std::tuple.31", align 1
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.dealii::StandardExceptions::ExcNotImplemented", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1
  %18 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !41
  %20 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  %21 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %19, ptr noundef nonnull %20, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %46, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !49
  %26 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %21, i64 0, i32 1, i32 0, i64 8
  %27 = load i64, ptr %26, align 8, !tbaa !49
  %28 = tail call i64 @llvm.umin.i64(i64 %27, i64 %25)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %21, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = load ptr, ptr %1, align 8, !tbaa !52
  %34 = tail call i32 @memcmp(ptr noundef %33, ptr noundef %32, i64 noundef %28) #20
  br label %35

35:                                               ; preds = %30, %23
  %36 = phi i32 [ %34, %30 ], [ 0, %23 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = sub i64 %25, %27
  %40 = tail call i64 @llvm.smax.i64(i64 %39, i64 -2147483648)
  %41 = tail call i64 @llvm.smin.i64(i64 %40, i64 2147483647)
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i32 [ %36, %35 ], [ %42, %38 ]
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  store ptr %1, ptr %10, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #20
  %47 = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr %21, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 1 dereferenceable(1) %11)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  br label %48

48:                                               ; preds = %43, %46
  %49 = phi ptr [ %47, %46 ], [ %21, %43 ]
  %50 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %49, i64 0, i32 1, i32 0, i64 32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  store ptr %51, ptr %12, align 8, !tbaa !54, !alias.scope !78
  %52 = load ptr, ptr %1, align 8, !tbaa !52, !noalias !78
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !49, !noalias !78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  store i64 %54, ptr %9, align 8, !tbaa !55
  %55 = icmp ugt i64 %54, 15
  br i1 %55, label %56, label %59, !prof !56

56:                                               ; preds = %48
  %57 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %9, i64 noundef 0)
  store ptr %57, ptr %12, align 8, !tbaa !52
  %58 = load i64, ptr %9, align 8, !tbaa !55
  store i64 %58, ptr %51, align 8, !tbaa !57
  br label %59

59:                                               ; preds = %56, %48
  %60 = load ptr, ptr %12, align 8, !tbaa !52
  switch i64 %54, label %63 [
    i64 1, label %61
    i64 0, label %64
  ], !prof !58

61:                                               ; preds = %59
  %62 = load i8, ptr %52, align 1, !tbaa !57
  store i8 %62, ptr %60, align 1, !tbaa !57
  br label %64

63:                                               ; preds = %59
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %52, i64 %54, i1 false), !prof !59
  br label %64

64:                                               ; preds = %59, %61, %63
  %65 = load i64, ptr %9, align 8, !tbaa !55
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  store i64 %65, ptr %66, align 8, !tbaa !49
  %67 = load ptr, ptr %12, align 8, !tbaa !52
  %68 = getelementptr inbounds i8, ptr %67, i64 %65
  store i8 0, ptr %68, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  %69 = load i64, ptr %66, align 8, !tbaa !49
  %70 = add i64 %69, -4611686018427387901
  %71 = icmp ult i64 %70, 3
  br i1 %71, label %72, label %74, !prof !68

72:                                               ; preds = %64
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %73 unwind label %76

73:                                               ; preds = %72
  unreachable

74:                                               ; preds = %64
  %75 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.2, i64 noundef 3)
          to label %86 unwind label %76

76:                                               ; preds = %74, %72
  %77 = landingpad { ptr, i32 }
          cleanup
  %78 = load ptr, ptr %12, align 8, !tbaa !52, !alias.scope !78
  %79 = icmp eq ptr %78, %51
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i64, ptr %66, align 8, !tbaa !49, !alias.scope !78
  %82 = icmp ult i64 %81, 16
  call void @llvm.assume(i1 %82)
  br label %84

83:                                               ; preds = %76
  call void @_ZdlPv(ptr noundef %78) #22
  br label %84

84:                                               ; preds = %80, %83, %397
  %85 = phi { ptr, i32 } [ %390, %397 ], [ %77, %83 ], [ %77, %80 ]
  resume { ptr, i32 } %85

86:                                               ; preds = %74
  %87 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %49, i64 0, i32 1, i32 0, i64 40
  %88 = load ptr, ptr %87, align 8, !tbaa !60
  %89 = load ptr, ptr %50, align 8, !tbaa !62
  %90 = ptrtoint ptr %88 to i64
  %91 = ptrtoint ptr %89 to i64
  %92 = sub i64 %90, %91
  %93 = ashr exact i64 %92, 3
  %94 = trunc i64 %93 to i32
  %95 = and i64 %93, 4294967295
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %86
  %98 = shl nuw nsw i64 %95, 3
  %99 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %98) #21
          to label %100 unwind label %113

100:                                              ; preds = %97, %86
  %101 = phi ptr [ null, %86 ], [ %99, %97 ]
  br i1 %96, label %108, label %102

102:                                              ; preds = %100
  store double 0.000000e+00, ptr %101, align 8, !tbaa !63
  %103 = icmp eq i64 %95, 1
  br i1 %103, label %108, label %104

104:                                              ; preds = %102
  %105 = getelementptr double, ptr %101, i64 1
  %106 = shl nuw nsw i64 %95, 3
  %107 = add nsw i64 %106, -8
  call void @llvm.memset.p0.i64(ptr align 8 %105, i8 0, i64 %107, i1 false), !tbaa !63
  br label %108

108:                                              ; preds = %104, %102, %100
  %109 = icmp eq i32 %94, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %108
  %111 = and i64 %93, 4294967295
  br label %115

112:                                              ; preds = %167, %108
  switch i32 %2, label %261 [
    i32 0, label %263
    i32 1, label %170
    i32 2, label %214
  ]

113:                                              ; preds = %97
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %389

115:                                              ; preds = %110, %167
  %116 = phi i64 [ 0, %110 ], [ %168, %167 ]
  %117 = load ptr, ptr %50, align 8, !tbaa !62
  %118 = getelementptr inbounds ptr, ptr %117, i64 %116
  %119 = load ptr, ptr %118, align 8, !tbaa !53
  %120 = icmp eq ptr %119, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %115
  %122 = call ptr @__dynamic_cast(ptr nonnull %119, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIdEE, i64 0) #20
  br label %123

123:                                              ; preds = %115, %121
  %124 = phi ptr [ %122, %121 ], [ null, %115 ]
  %125 = icmp eq ptr %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %123
  %127 = call ptr @__dynamic_cast(ptr nonnull %119, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIdEE, i64 0) #20
  %128 = invoke noundef double @_ZNK6dealii10TableEntryIdE5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %127)
          to label %164 unwind label %129

129:                                              ; preds = %159, %148, %137, %126
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %385

131:                                              ; preds = %123
  br i1 %120, label %134, label %132

132:                                              ; preds = %131
  %133 = call ptr @__dynamic_cast(ptr nonnull %119, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIfEE, i64 0) #20
  br label %134

134:                                              ; preds = %131, %132
  %135 = phi ptr [ %133, %132 ], [ null, %131 ]
  %136 = icmp eq ptr %135, null
  br i1 %136, label %142, label %137

137:                                              ; preds = %134
  %138 = call ptr @__dynamic_cast(ptr nonnull %119, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIfEE, i64 0) #20
  %139 = invoke noundef float @_ZNK6dealii10TableEntryIfE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %138)
          to label %140 unwind label %129

140:                                              ; preds = %137
  %141 = fpext float %139 to double
  br label %164

142:                                              ; preds = %134
  br i1 %120, label %145, label %143

143:                                              ; preds = %142
  %144 = call ptr @__dynamic_cast(ptr nonnull %119, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIiEE, i64 0) #20
  br label %145

145:                                              ; preds = %142, %143
  %146 = phi ptr [ %144, %143 ], [ null, %142 ]
  %147 = icmp eq ptr %146, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %145
  %149 = call ptr @__dynamic_cast(ptr nonnull %119, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIiEE, i64 0) #20
  %150 = invoke noundef i32 @_ZNK6dealii10TableEntryIiE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %149)
          to label %151 unwind label %129

151:                                              ; preds = %148
  %152 = sitofp i32 %150 to double
  br label %164

153:                                              ; preds = %145
  br i1 %120, label %156, label %154

154:                                              ; preds = %153
  %155 = call ptr @__dynamic_cast(ptr nonnull %119, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIjEE, i64 0) #20
  br label %156

156:                                              ; preds = %153, %154
  %157 = phi ptr [ %155, %154 ], [ null, %153 ]
  %158 = icmp eq ptr %157, null
  br i1 %158, label %167, label %159

159:                                              ; preds = %156
  %160 = call ptr @__dynamic_cast(ptr nonnull %119, ptr nonnull @_ZTIN6dealii14TableEntryBaseE, ptr nonnull @_ZTIN6dealii10TableEntryIjEE, i64 0) #20
  %161 = invoke noundef i32 @_ZNK6dealii10TableEntryIjE5valueEv(ptr noundef nonnull align 8 dereferenceable(12) %160)
          to label %162 unwind label %129

162:                                              ; preds = %159
  %163 = uitofp i32 %161 to double
  br label %164

164:                                              ; preds = %126, %140, %162, %151
  %165 = phi double [ %152, %151 ], [ %163, %162 ], [ %141, %140 ], [ %128, %126 ]
  %166 = getelementptr inbounds double, ptr %101, i64 %116
  store double %165, ptr %166, align 8, !tbaa !63
  br label %167

167:                                              ; preds = %164, %156
  %168 = add nuw nsw i64 %116, 1
  %169 = icmp eq i64 %168, %111
  br i1 %169, label %112, label %115, !llvm.loop !81

170:                                              ; preds = %112
  %171 = load i64, ptr %66, align 8, !tbaa !49
  %172 = and i64 %171, -8
  %173 = icmp eq i64 %172, 4611686018427387896
  br i1 %173, label %218, label %174, !prof !68

174:                                              ; preds = %170
  %175 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str, i64 noundef 8)
          to label %176 unwind label %191

176:                                              ; preds = %174
  %177 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  store ptr %177, ptr %13, align 8, !tbaa !54
  store i8 45, ptr %177, align 8, !tbaa !57
  %178 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  store i64 1, ptr %178, align 8, !tbaa !49
  %179 = getelementptr inbounds i8, ptr %13, i64 17
  store i8 0, ptr %179, align 1, !tbaa !57
  invoke void @_ZN6dealii12TableHandler9add_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS7_T_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %13)
          to label %180 unwind label %193

180:                                              ; preds = %176
  %181 = load ptr, ptr %13, align 8, !tbaa !52
  %182 = icmp eq ptr %181, %177
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i64, ptr %178, align 8, !tbaa !49
  %185 = icmp ult i64 %184, 16
  call void @llvm.assume(i1 %185)
  br label %187

186:                                              ; preds = %180
  call void @_ZdlPv(ptr noundef %181) #22
  br label %187

187:                                              ; preds = %183, %186
  %188 = icmp ugt i32 %94, 1
  br i1 %188, label %189, label %263

189:                                              ; preds = %187
  %190 = and i64 %93, 4294967295
  br label %201

191:                                              ; preds = %218, %290, %263, %220, %174, %261, %293
  %192 = landingpad { ptr, i32 }
          cleanup
  br label %385

193:                                              ; preds = %176
  %194 = landingpad { ptr, i32 }
          cleanup
  %195 = load ptr, ptr %13, align 8, !tbaa !52
  %196 = icmp eq ptr %195, %177
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i64, ptr %178, align 8, !tbaa !49
  %199 = icmp ult i64 %198, 16
  call void @llvm.assume(i1 %199)
  br label %385

200:                                              ; preds = %193
  call void @_ZdlPv(ptr noundef %195) #22
  br label %385

201:                                              ; preds = %189, %209
  %202 = phi i64 [ 1, %189 ], [ %210, %209 ]
  %203 = add nsw i64 %202, -1
  %204 = getelementptr inbounds double, ptr %101, i64 %203
  %205 = load double, ptr %204, align 8, !tbaa !63
  %206 = getelementptr inbounds double, ptr %101, i64 %202
  %207 = load double, ptr %206, align 8, !tbaa !63
  %208 = fdiv double %205, %207
  invoke void @_ZN6dealii12TableHandler9add_valueIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, double noundef %208)
          to label %209 unwind label %212

209:                                              ; preds = %201
  %210 = add nuw nsw i64 %202, 1
  %211 = icmp eq i64 %210, %190
  br i1 %211, label %263, label %201, !llvm.loop !82

212:                                              ; preds = %201
  %213 = landingpad { ptr, i32 }
          cleanup
  br label %385

214:                                              ; preds = %112
  %215 = load i64, ptr %66, align 8, !tbaa !49
  %216 = add i64 %215, -4611686018427387891
  %217 = icmp ult i64 %216, 13
  br i1 %217, label %218, label %220, !prof !68

218:                                              ; preds = %170, %214
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #23
          to label %219 unwind label %191

219:                                              ; preds = %218
  unreachable

220:                                              ; preds = %214
  %221 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.3, i64 noundef 13)
          to label %222 unwind label %191

222:                                              ; preds = %220
  %223 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  store ptr %223, ptr %14, align 8, !tbaa !54
  store i8 45, ptr %223, align 8, !tbaa !57
  %224 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  store i64 1, ptr %224, align 8, !tbaa !49
  %225 = getelementptr inbounds i8, ptr %14, i64 17
  store i8 0, ptr %225, align 1, !tbaa !57
  invoke void @_ZN6dealii12TableHandler9add_valueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKS7_T_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %14)
          to label %226 unwind label %237

226:                                              ; preds = %222
  %227 = load ptr, ptr %14, align 8, !tbaa !52
  %228 = icmp eq ptr %227, %223
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load i64, ptr %224, align 8, !tbaa !49
  %231 = icmp ult i64 %230, 16
  call void @llvm.assume(i1 %231)
  br label %233

232:                                              ; preds = %226
  call void @_ZdlPv(ptr noundef %227) #22
  br label %233

233:                                              ; preds = %229, %232
  %234 = icmp ugt i32 %94, 1
  br i1 %234, label %235, label %263

235:                                              ; preds = %233
  %236 = and i64 %93, 4294967295
  br label %245

237:                                              ; preds = %222
  %238 = landingpad { ptr, i32 }
          cleanup
  %239 = load ptr, ptr %14, align 8, !tbaa !52
  %240 = icmp eq ptr %239, %223
  br i1 %240, label %241, label %244

241:                                              ; preds = %237
  %242 = load i64, ptr %224, align 8, !tbaa !49
  %243 = icmp ult i64 %242, 16
  call void @llvm.assume(i1 %243)
  br label %385

244:                                              ; preds = %237
  call void @_ZdlPv(ptr noundef %239) #22
  br label %385

245:                                              ; preds = %235, %256
  %246 = phi i64 [ 1, %235 ], [ %257, %256 ]
  %247 = add nsw i64 %246, -1
  %248 = getelementptr inbounds double, ptr %101, i64 %247
  %249 = load double, ptr %248, align 8, !tbaa !63
  %250 = getelementptr inbounds double, ptr %101, i64 %246
  %251 = load double, ptr %250, align 8, !tbaa !63
  %252 = fdiv double %249, %251
  %253 = call double @llvm.fabs.f64(double %252)
  %254 = call double @log(double noundef %253) #20
  %255 = fdiv double %254, 0x3FE62E42FEFA39EF
  invoke void @_ZN6dealii12TableHandler9add_valueIdEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, double noundef %255)
          to label %256 unwind label %259

256:                                              ; preds = %245
  %257 = add nuw nsw i64 %246, 1
  %258 = icmp eq i64 %257, %236
  br i1 %258, label %263, label %245, !llvm.loop !83

259:                                              ; preds = %245
  %260 = landingpad { ptr, i32 }
          cleanup
  br label %385

261:                                              ; preds = %112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %15, i8 0, i64 64, i1 false)
  invoke void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60) %15)
          to label %262 unwind label %191

262:                                              ; preds = %261
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN6dealii18StandardExceptions17ExcNotImplementedE, i64 0, inrange i32 0, i64 2), ptr %15, align 8, !tbaa !84
  call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %15) #20
  br label %263

263:                                              ; preds = %256, %209, %233, %187, %262, %112
  %264 = load ptr, ptr %18, align 8, !tbaa !41
  %265 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %264, ptr noundef nonnull %20, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %266 unwind label %191

266:                                              ; preds = %263
  %267 = icmp eq ptr %265, %20
  br i1 %267, label %290, label %268

268:                                              ; preds = %266
  %269 = load i64, ptr %66, align 8, !tbaa !49
  %270 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %265, i64 0, i32 1, i32 0, i64 8
  %271 = load i64, ptr %270, align 8, !tbaa !49
  %272 = call i64 @llvm.umin.i64(i64 %271, i64 %269)
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %279, label %274

274:                                              ; preds = %268
  %275 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %265, i64 0, i32 1
  %276 = load ptr, ptr %275, align 8, !tbaa !52
  %277 = load ptr, ptr %12, align 8, !tbaa !52
  %278 = call i32 @memcmp(ptr noundef %277, ptr noundef %276, i64 noundef %272) #20
  br label %279

279:                                              ; preds = %274, %268
  %280 = phi i32 [ %278, %274 ], [ 0, %268 ]
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %279
  %283 = sub i64 %269, %271
  %284 = call i64 @llvm.smax.i64(i64 %283, i64 -2147483648)
  %285 = call i64 @llvm.smin.i64(i64 %284, i64 2147483647)
  %286 = trunc i64 %285 to i32
  br label %287

287:                                              ; preds = %282, %279
  %288 = phi i32 [ %280, %279 ], [ %286, %282 ]
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %287, %266
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  store ptr %12, ptr %7, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #20
  %291 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr %265, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %292 unwind label %191

292:                                              ; preds = %290
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  br label %293

293:                                              ; preds = %287, %292
  %294 = phi ptr [ %291, %292 ], [ %265, %287 ]
  %295 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %294, i64 0, i32 1, i32 0, i64 128
  store i32 1, ptr %295, align 8, !tbaa !71
  invoke void @_ZN6dealii12TableHandler13set_precisionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEj(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, i32 noundef 2)
          to label %296 unwind label %191

296:                                              ; preds = %293
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #20
  %297 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  store ptr %297, ptr %16, align 8, !tbaa !54
  %298 = load ptr, ptr %1, align 8, !tbaa !52
  %299 = load i64, ptr %53, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  store i64 %299, ptr %6, align 8, !tbaa !55
  %300 = icmp ugt i64 %299, 15
  br i1 %300, label %301, label %305, !prof !56

301:                                              ; preds = %296
  %302 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 0)
          to label %303 unwind label %354

303:                                              ; preds = %301
  store ptr %302, ptr %16, align 8, !tbaa !52
  %304 = load i64, ptr %6, align 8, !tbaa !55
  store i64 %304, ptr %297, align 8, !tbaa !57
  br label %305

305:                                              ; preds = %303, %296
  %306 = load ptr, ptr %16, align 8, !tbaa !52
  switch i64 %299, label %309 [
    i64 1, label %307
    i64 0, label %310
  ], !prof !58

307:                                              ; preds = %305
  %308 = load i8, ptr %298, align 1, !tbaa !57
  store i8 %308, ptr %306, align 1, !tbaa !57
  br label %310

309:                                              ; preds = %305
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %306, ptr align 1 %298, i64 %299, i1 false), !prof !59
  br label %310

310:                                              ; preds = %305, %307, %309
  %311 = load i64, ptr %6, align 8, !tbaa !55
  %312 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  store i64 %311, ptr %312, align 8, !tbaa !49
  %313 = load ptr, ptr %16, align 8, !tbaa !52
  %314 = getelementptr inbounds i8, ptr %313, i64 %311
  store i8 0, ptr %314, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  %315 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 2
  %316 = invoke ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %315, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %317 unwind label %356

317:                                              ; preds = %310
  %318 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 2, i32 0, i32 0, i32 1
  %319 = icmp eq ptr %316, %318
  br i1 %319, label %320, label %364

320:                                              ; preds = %317
  invoke void @_ZN6dealii12TableHandler25add_column_to_supercolumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %321 unwind label %356

321:                                              ; preds = %320
  %322 = load ptr, ptr %18, align 8, !tbaa !41
  %323 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %322, ptr noundef nonnull %20, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %324 unwind label %356

324:                                              ; preds = %321
  %325 = icmp eq ptr %323, %20
  br i1 %325, label %348, label %326

326:                                              ; preds = %324
  %327 = load i64, ptr %53, align 8, !tbaa !49
  %328 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %323, i64 0, i32 1, i32 0, i64 8
  %329 = load i64, ptr %328, align 8, !tbaa !49
  %330 = call i64 @llvm.umin.i64(i64 %329, i64 %327)
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %337, label %332

332:                                              ; preds = %326
  %333 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %323, i64 0, i32 1
  %334 = load ptr, ptr %333, align 8, !tbaa !52
  %335 = load ptr, ptr %1, align 8, !tbaa !52
  %336 = call i32 @memcmp(ptr noundef %335, ptr noundef %334, i64 noundef %330) #20
  br label %337

337:                                              ; preds = %332, %326
  %338 = phi i32 [ %336, %332 ], [ 0, %326 ]
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %345

340:                                              ; preds = %337
  %341 = sub i64 %327, %329
  %342 = call i64 @llvm.smax.i64(i64 %341, i64 -2147483648)
  %343 = call i64 @llvm.smin.i64(i64 %342, i64 2147483647)
  %344 = trunc i64 %343 to i32
  br label %345

345:                                              ; preds = %340, %337
  %346 = phi i32 [ %338, %337 ], [ %344, %340 ]
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %345, %324
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store ptr %1, ptr %4, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  %349 = invoke ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr %323, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %350 unwind label %356

350:                                              ; preds = %348
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %351

351:                                              ; preds = %345, %350
  %352 = phi ptr [ %349, %350 ], [ %323, %345 ]
  %353 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %352, i64 0, i32 1, i32 0, i64 56
  invoke void @_ZN6dealii12TableHandler20set_tex_supercaptionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %353)
          to label %364 unwind label %356

354:                                              ; preds = %301
  %355 = landingpad { ptr, i32 }
          cleanup
  br label %383

356:                                              ; preds = %348, %321, %310, %364, %351, %320
  %357 = landingpad { ptr, i32 }
          cleanup
  %358 = load ptr, ptr %16, align 8, !tbaa !52
  %359 = icmp eq ptr %358, %297
  br i1 %359, label %360, label %363

360:                                              ; preds = %356
  %361 = load i64, ptr %312, align 8, !tbaa !49
  %362 = icmp ult i64 %361, 16
  call void @llvm.assume(i1 %362)
  br label %383

363:                                              ; preds = %356
  call void @_ZdlPv(ptr noundef %358) #22
  br label %383

364:                                              ; preds = %351, %317
  invoke void @_ZN6dealii12TableHandler25add_column_to_supercolumnERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %16)
          to label %365 unwind label %356

365:                                              ; preds = %364
  %366 = load ptr, ptr %16, align 8, !tbaa !52
  %367 = icmp eq ptr %366, %297
  br i1 %367, label %368, label %371

368:                                              ; preds = %365
  %369 = load i64, ptr %312, align 8, !tbaa !49
  %370 = icmp ult i64 %369, 16
  call void @llvm.assume(i1 %370)
  br label %372

371:                                              ; preds = %365
  call void @_ZdlPv(ptr noundef %366) #22
  br label %372

372:                                              ; preds = %368, %371
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #20
  %373 = icmp eq ptr %101, null
  br i1 %373, label %375, label %374

374:                                              ; preds = %372
  call void @_ZdlPv(ptr noundef %101) #22
  br label %375

375:                                              ; preds = %372, %374
  %376 = load ptr, ptr %12, align 8, !tbaa !52
  %377 = icmp eq ptr %376, %51
  br i1 %377, label %378, label %381

378:                                              ; preds = %375
  %379 = load i64, ptr %66, align 8, !tbaa !49
  %380 = icmp ult i64 %379, 16
  call void @llvm.assume(i1 %380)
  br label %382

381:                                              ; preds = %375
  call void @_ZdlPv(ptr noundef %376) #22
  br label %382

382:                                              ; preds = %378, %381
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #20
  ret void

383:                                              ; preds = %363, %360, %354
  %384 = phi { ptr, i32 } [ %355, %354 ], [ %357, %360 ], [ %357, %363 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #20
  br label %385

385:                                              ; preds = %241, %244, %197, %200, %383, %259, %212, %191, %129
  %386 = phi { ptr, i32 } [ %130, %129 ], [ %384, %383 ], [ %192, %191 ], [ %260, %259 ], [ %213, %212 ], [ %194, %197 ], [ %194, %200 ], [ %238, %241 ], [ %238, %244 ]
  %387 = icmp eq ptr %101, null
  br i1 %387, label %389, label %388

388:                                              ; preds = %385
  call void @_ZdlPv(ptr noundef %101) #22
  br label %389

389:                                              ; preds = %388, %385, %113
  %390 = phi { ptr, i32 } [ %114, %113 ], [ %386, %385 ], [ %386, %388 ]
  %391 = load ptr, ptr %12, align 8, !tbaa !52
  %392 = icmp eq ptr %391, %51
  br i1 %392, label %393, label %396

393:                                              ; preds = %389
  %394 = load i64, ptr %66, align 8, !tbaa !49
  %395 = icmp ult i64 %394, 16
  call void @llvm.assume(i1 %395)
  br label %397

396:                                              ; preds = %389
  call void @_ZdlPv(ptr noundef %391) #22
  br label %397

397:                                              ; preds = %393, %396
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #20
  br label %84
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii16ConvergenceTable44omit_column_from_convergence_rate_evaluationERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1
  %4 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %5 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %4, i64 0, i32 1, i32 0, i64 128
  store i32 1, ptr %5, align 8, !tbaa !86
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii16ConvergenceTable30evaluate_all_convergence_ratesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8RateModeE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !39 {
  %4 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %16, %3
  ret void

9:                                                ; preds = %3, %16
  %10 = phi ptr [ %17, %16 ], [ %5, %3 ]
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %10, i64 0, i32 1, i32 0, i64 128
  %12 = load i32, ptr %11, align 8, !tbaa !86
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %10, i64 0, i32 1
  tail call void @_ZN6dealii16ConvergenceTable26evaluate_convergence_ratesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_NS0_8RateModeE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2)
  br label %16

16:                                               ; preds = %9, %14
  %17 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %10) #24
  %18 = icmp eq ptr %17, %6
  br i1 %18, label %8, label %9, !llvm.loop !89
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii16ConvergenceTable30evaluate_all_convergence_ratesENS0_8RateModeE(ptr noundef nonnull align 8 dereferenceable(232) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !39 {
  %3 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds %"class.dealii::TableHandler", ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %15, %2
  ret void

8:                                                ; preds = %2, %15
  %9 = phi ptr [ %16, %15 ], [ %4, %2 ]
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %9, i64 0, i32 1, i32 0, i64 128
  %11 = load i32, ptr %10, align 8, !tbaa !86
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %9, i64 0, i32 1
  tail call void @_ZN6dealii16ConvergenceTable26evaluate_convergence_ratesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8RateModeE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %1)
  br label %15

15:                                               ; preds = %8, %13
  %16 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %9) #24
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %7, label %8, !llvm.loop !90
}

declare void @_ZN6dealii13ExceptionBaseC2Ev(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6dealii18StandardExceptions17ExcNotImplementedD0Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) unnamed_addr #9 comdat align 2 !prof !39 {
  tail call void @_ZN6dealii13ExceptionBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(60) %0) #20
  tail call void @_ZdlPv(ptr noundef %0) #22
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK6dealii13ExceptionBase4whatEv(ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #8

declare void @_ZNK6dealii13ExceptionBase10print_infoERSo(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !prof !39 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = alloca i64, align 8
  %7 = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #21
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %7, i64 0, i32 1
  %9 = load i64, ptr %3, align 8, !tbaa !53
  %10 = inttoptr i64 %9 to ptr
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %7, i64 0, i32 1, i32 0, i64 16
  store ptr %11, ptr %8, align 8, !tbaa !54
  %12 = load ptr, ptr %10, align 8, !tbaa !52
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  store i64 %14, ptr %6, align 8, !tbaa !55
  %15 = icmp ugt i64 %14, 15
  br i1 %15, label %16, label %20, !prof !56

16:                                               ; preds = %5
  %17 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 0)
          to label %18 unwind label %39

18:                                               ; preds = %16
  store ptr %17, ptr %8, align 8, !tbaa !52
  %19 = load i64, ptr %6, align 8, !tbaa !55
  store i64 %19, ptr %11, align 8, !tbaa !57
  br label %20

20:                                               ; preds = %18, %5
  %21 = load ptr, ptr %8, align 8, !tbaa !52
  switch i64 %14, label %24 [
    i64 1, label %22
    i64 0, label %25
  ], !prof !58

22:                                               ; preds = %20
  %23 = load i8, ptr %12, align 1, !tbaa !57
  store i8 %23, ptr %21, align 1, !tbaa !57
  br label %25

24:                                               ; preds = %20
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %12, i64 %14, i1 false), !prof !59
  br label %25

25:                                               ; preds = %24, %22, %20
  %26 = load i64, ptr %6, align 8, !tbaa !55
  %27 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %7, i64 0, i32 1, i32 0, i64 8
  store i64 %26, ptr %27, align 8, !tbaa !49
  %28 = load ptr, ptr %8, align 8, !tbaa !52
  %29 = getelementptr inbounds i8, ptr %28, i64 %26
  store i8 0, ptr %29, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %7, i64 0, i32 1, i32 0, i64 32
  invoke void @_ZN6dealii12TableHandler6ColumnC1Ev(ptr noundef nonnull align 8 dereferenceable(100) %30)
          to label %53 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = load ptr, ptr %8, align 8, !tbaa !52
  %34 = icmp eq ptr %33, %11
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i64, ptr %27, align 8, !tbaa !49
  %37 = icmp ult i64 %36, 16
  call void @llvm.assume(i1 %37)
  br label %41

38:                                               ; preds = %31
  call void @_ZdlPv(ptr noundef %33) #22
  br label %41

39:                                               ; preds = %16
  %40 = landingpad { ptr, i32 }
          catch ptr null
  br label %41

41:                                               ; preds = %35, %38, %39
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %32, %38 ], [ %32, %35 ]
  %43 = extractvalue { ptr, i32 } %42, 0
  %44 = call ptr @__cxa_begin_catch(ptr %43) #20
  call void @_ZdlPv(ptr noundef %7) #22
  invoke void @__cxa_rethrow() #23
          to label %52 unwind label %45

45:                                               ; preds = %41
  %46 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %47 unwind label %49

47:                                               ; preds = %45, %103
  %48 = phi { ptr, i32 } [ %93, %103 ], [ %46, %45 ]
  resume { ptr, i32 } %48

49:                                               ; preds = %45
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  call void @__clang_call_terminate(ptr %51) #25
  unreachable

52:                                               ; preds = %41
  unreachable

53:                                               ; preds = %25
  %54 = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %55 unwind label %92

55:                                               ; preds = %53
  %56 = extractvalue { ptr, ptr } %54, 0
  %57 = extractvalue { ptr, ptr } %54, 1
  %58 = icmp eq ptr %57, null
  br i1 %58, label %104, label %59

59:                                               ; preds = %55
  %60 = icmp ne ptr %56, null
  %61 = getelementptr inbounds i8, ptr %0, i64 8
  %62 = icmp eq ptr %61, %57
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %87, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %7, i64 0, i32 1, i32 0, i64 8
  %66 = load i64, ptr %65, align 8, !tbaa !49
  %67 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %57, i64 0, i32 1, i32 0, i64 8
  %68 = load i64, ptr %67, align 8, !tbaa !49
  %69 = call i64 @llvm.umin.i64(i64 %68, i64 %66)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %57, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !52
  %74 = load ptr, ptr %8, align 8, !tbaa !52
  %75 = call i32 @memcmp(ptr noundef %74, ptr noundef %73, i64 noundef %69) #20
  br label %76

76:                                               ; preds = %71, %64
  %77 = phi i32 [ %75, %71 ], [ 0, %64 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = sub i64 %66, %68
  %81 = call i64 @llvm.smax.i64(i64 %80, i64 -2147483648)
  %82 = call i64 @llvm.smin.i64(i64 %81, i64 2147483647)
  %83 = trunc i64 %82 to i32
  br label %84

84:                                               ; preds = %79, %76
  %85 = phi i32 [ %77, %76 ], [ %83, %79 ]
  %86 = icmp slt i32 %85, 0
  br label %87

87:                                               ; preds = %59, %84
  %88 = phi i1 [ true, %59 ], [ %86, %84 ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %88, ptr noundef nonnull %7, ptr noundef nonnull %57, ptr noundef nonnull align 8 dereferenceable(32) %61) #20
  %89 = getelementptr inbounds i8, ptr %0, i64 40
  %90 = load i64, ptr %89, align 8, !tbaa !91
  %91 = add i64 %90, 1
  store i64 %91, ptr %89, align 8, !tbaa !91
  br label %104

92:                                               ; preds = %53
  %93 = landingpad { ptr, i32 }
          cleanup
  %94 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %7, i64 0, i32 1, i32 0, i64 32
  call void @_ZN6dealii12TableHandler6ColumnD1Ev(ptr noundef nonnull align 8 dereferenceable(100) %94) #20
  %95 = load ptr, ptr %8, align 8, !tbaa !52
  %96 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %7, i64 0, i32 1, i32 0, i64 16
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %7, i64 0, i32 1, i32 0, i64 8
  %100 = load i64, ptr %99, align 8, !tbaa !49
  %101 = icmp ult i64 %100, 16
  call void @llvm.assume(i1 %101)
  br label %103

102:                                              ; preds = %92
  call void @_ZdlPv(ptr noundef %95) #22
  br label %103

103:                                              ; preds = %98, %102
  call void @_ZdlPv(ptr noundef %7) #22
  br label %47

104:                                              ; preds = %87, %55
  %105 = phi ptr [ null, %87 ], [ %7, %55 ]
  %106 = phi ptr [ %7, %87 ], [ %56, %55 ]
  %107 = icmp eq ptr %105, null
  br i1 %107, label %120, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %105, i64 0, i32 1
  %110 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %105, i64 0, i32 1, i32 0, i64 32
  call void @_ZN6dealii12TableHandler6ColumnD1Ev(ptr noundef nonnull align 8 dereferenceable(100) %110) #20
  %111 = load ptr, ptr %109, align 8, !tbaa !52
  %112 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %105, i64 0, i32 1, i32 0, i64 16
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %105, i64 0, i32 1, i32 0, i64 8
  %116 = load i64, ptr %115, align 8, !tbaa !49
  %117 = icmp ult i64 %116, 16
  call void @llvm.assume(i1 %117)
  br label %119

118:                                              ; preds = %108
  call void @_ZdlPv(ptr noundef %111) #22
  br label %119

119:                                              ; preds = %114, %118
  call void @_ZdlPv(ptr noundef %105) #22
  br label %120

120:                                              ; preds = %104, %119
  ret ptr %106
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %38, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !49
  %9 = load ptr, ptr %3, align 8
  br label %10

10:                                               ; preds = %6, %29
  %11 = phi ptr [ %1, %6 ], [ %36, %29 ]
  %12 = phi ptr [ %2, %6 ], [ %34, %29 ]
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !49
  %15 = tail call i64 @llvm.umin.i64(i64 %8, i64 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = tail call i32 @memcmp(ptr noundef %19, ptr noundef %9, i64 noundef %15) #20
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %20, %17 ], [ 0, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = sub i64 %14, %8
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  %34 = select i1 %31, ptr %12, ptr %11
  %35 = select i1 %31, ptr %32, ptr %33
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %10, !llvm.loop !92

38:                                               ; preds = %29, %4
  %39 = phi ptr [ %2, %4 ], [ %34, %29 ]
  ret ptr %39
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %39

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !91
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !49
  %17 = tail call i64 @llvm.umin.i64(i64 %16, i64 %14)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %21 = load ptr, ptr %2, align 8, !tbaa !52
  %22 = load ptr, ptr %20, align 8, !tbaa !52
  %23 = tail call i32 @memcmp(ptr noundef %22, ptr noundef %21, i64 noundef %17) #20
  br label %24

24:                                               ; preds = %19, %10
  %25 = phi i32 [ %23, %19 ], [ 0, %10 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = sub i64 %14, %16
  %29 = tail call i64 @llvm.smax.i64(i64 %28, i64 -2147483648)
  %30 = tail call i64 @llvm.smin.i64(i64 %29, i64 2147483647)
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %24, %27
  %33 = phi i32 [ %25, %24 ], [ %31, %27 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %150, label %35

35:                                               ; preds = %32, %6
  %36 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %37 = extractvalue { ptr, ptr } %36, 0
  %38 = extractvalue { ptr, ptr } %36, 1
  br label %150

39:                                               ; preds = %3
  %40 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !49
  %43 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1, i32 0, i64 8
  %44 = load i64, ptr %43, align 8, !tbaa !49
  %45 = tail call i64 @llvm.umin.i64(i64 %44, i64 %42)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr %40, align 8, !tbaa !52
  %49 = load ptr, ptr %2, align 8, !tbaa !52
  %50 = tail call i32 @memcmp(ptr noundef %49, ptr noundef %48, i64 noundef %45) #20
  br label %51

51:                                               ; preds = %47, %39
  %52 = phi i32 [ %50, %47 ], [ 0, %39 ]
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = sub i64 %42, %44
  %56 = tail call i64 @llvm.smax.i64(i64 %55, i64 -2147483648)
  %57 = tail call i64 @llvm.smin.i64(i64 %56, i64 2147483647)
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %51, %54
  %60 = phi i32 [ %52, %51 ], [ %58, %54 ]
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %59
  %63 = getelementptr inbounds i8, ptr %0, i64 24
  %64 = load ptr, ptr %63, align 8, !tbaa !53
  %65 = icmp eq ptr %64, %1
  br i1 %65, label %150, label %66

66:                                               ; preds = %62
  %67 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %1) #24
  %68 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %67, i64 0, i32 1, i32 0, i64 8
  %69 = load i64, ptr %68, align 8, !tbaa !49
  %70 = tail call i64 @llvm.umin.i64(i64 %42, i64 %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %67, i64 0, i32 1
  %74 = load ptr, ptr %2, align 8, !tbaa !52
  %75 = load ptr, ptr %73, align 8, !tbaa !52
  %76 = tail call i32 @memcmp(ptr noundef %75, ptr noundef %74, i64 noundef %70) #20
  br label %77

77:                                               ; preds = %72, %66
  %78 = phi i32 [ %76, %72 ], [ 0, %66 ]
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = sub i64 %69, %42
  %82 = tail call i64 @llvm.smax.i64(i64 %81, i64 -2147483648)
  %83 = tail call i64 @llvm.smin.i64(i64 %82, i64 2147483647)
  %84 = trunc i64 %83 to i32
  br label %85

85:                                               ; preds = %77, %80
  %86 = phi i32 [ %78, %77 ], [ %84, %80 ]
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %67, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !93
  %91 = icmp eq ptr %90, null
  %92 = select i1 %91, ptr null, ptr %1
  %93 = select i1 %91, ptr %67, ptr %1
  br label %150

94:                                               ; preds = %85
  %95 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %96 = extractvalue { ptr, ptr } %95, 0
  %97 = extractvalue { ptr, ptr } %95, 1
  br label %150

98:                                               ; preds = %59
  br i1 %46, label %103, label %99

99:                                               ; preds = %98
  %100 = load ptr, ptr %2, align 8, !tbaa !52
  %101 = load ptr, ptr %40, align 8, !tbaa !52
  %102 = tail call i32 @memcmp(ptr noundef %101, ptr noundef %100, i64 noundef %45) #20
  br label %103

103:                                              ; preds = %99, %98
  %104 = phi i32 [ %102, %99 ], [ 0, %98 ]
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = sub i64 %44, %42
  %108 = tail call i64 @llvm.smax.i64(i64 %107, i64 -2147483648)
  %109 = tail call i64 @llvm.smin.i64(i64 %108, i64 2147483647)
  %110 = trunc i64 %109 to i32
  br label %111

111:                                              ; preds = %103, %106
  %112 = phi i32 [ %104, %103 ], [ %110, %106 ]
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %150

114:                                              ; preds = %111
  %115 = getelementptr inbounds i8, ptr %0, i64 32
  %116 = load ptr, ptr %115, align 8, !tbaa !53
  %117 = icmp eq ptr %116, %1
  br i1 %117, label %150, label %118

118:                                              ; preds = %114
  %119 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %1) #24
  %120 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %119, i64 0, i32 1, i32 0, i64 8
  %121 = load i64, ptr %120, align 8, !tbaa !49
  %122 = tail call i64 @llvm.umin.i64(i64 %121, i64 %42)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %118
  %125 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %119, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !52
  %127 = load ptr, ptr %2, align 8, !tbaa !52
  %128 = tail call i32 @memcmp(ptr noundef %127, ptr noundef %126, i64 noundef %122) #20
  br label %129

129:                                              ; preds = %124, %118
  %130 = phi i32 [ %128, %124 ], [ 0, %118 ]
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %129
  %133 = sub i64 %42, %121
  %134 = tail call i64 @llvm.smax.i64(i64 %133, i64 -2147483648)
  %135 = tail call i64 @llvm.smin.i64(i64 %134, i64 2147483647)
  %136 = trunc i64 %135 to i32
  br label %137

137:                                              ; preds = %129, %132
  %138 = phi i32 [ %130, %129 ], [ %136, %132 ]
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %137
  %141 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !93
  %143 = icmp eq ptr %142, null
  %144 = select i1 %143, ptr null, ptr %119
  %145 = select i1 %143, ptr %1, ptr %119
  br label %150

146:                                              ; preds = %137
  %147 = tail call { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %148 = extractvalue { ptr, ptr } %147, 0
  %149 = extractvalue { ptr, ptr } %147, 1
  br label %150

150:                                              ; preds = %32, %111, %146, %114, %140, %94, %62, %88, %35
  %151 = phi ptr [ %37, %35 ], [ %96, %94 ], [ %64, %62 ], [ %92, %88 ], [ %148, %146 ], [ null, %114 ], [ %144, %140 ], [ %1, %111 ], [ null, %32 ]
  %152 = phi ptr [ %38, %35 ], [ %97, %94 ], [ %64, %62 ], [ %93, %88 ], [ %149, %146 ], [ %116, %114 ], [ %145, %140 ], [ null, %111 ], [ %12, %32 ]
  %153 = insertvalue { ptr, ptr } poison, ptr %151, 0
  %154 = insertvalue { ptr, ptr } %153, ptr %152, 1
  ret { ptr, ptr } %154
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #15

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN6dealii12TableHandler6ColumnC1Ev(ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !53
  %6 = icmp eq ptr %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !49
  %10 = load ptr, ptr %1, align 8
  br label %11

11:                                               ; preds = %7, %29
  %12 = phi ptr [ %5, %7 ], [ %35, %29 ]
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !49
  %15 = tail call i64 @llvm.umin.i64(i64 %14, i64 %9)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = tail call i32 @memcmp(ptr noundef %10, ptr noundef %19, i64 noundef %15) #20
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i32 [ %20, %17 ], [ 0, %11 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = sub i64 %9, %14
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 2
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 3
  %34 = select i1 %31, ptr %32, ptr %33
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %11, !llvm.loop !94

37:                                               ; preds = %29, %2
  %38 = phi ptr [ %4, %2 ], [ %12, %29 ]
  %39 = phi i1 [ true, %2 ], [ %31, %29 ]
  %40 = phi ptr [ %5, %2 ], [ %35, %29 ]
  br i1 %39, label %41, label %47

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %0, i64 24
  %43 = load ptr, ptr %42, align 8, !tbaa !88
  %44 = icmp eq ptr %38, %43
  br i1 %44, label %73, label %45

45:                                               ; preds = %41
  %46 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %38) #24
  br label %47

47:                                               ; preds = %45, %37
  %48 = phi ptr [ %46, %45 ], [ %38, %37 ]
  %49 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %48, i64 0, i32 1, i32 0, i64 8
  %50 = load i64, ptr %49, align 8, !tbaa !49
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !49
  %53 = tail call i64 @llvm.umin.i64(i64 %52, i64 %50)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %48, i64 0, i32 1
  %57 = load ptr, ptr %1, align 8, !tbaa !52
  %58 = load ptr, ptr %56, align 8, !tbaa !52
  %59 = tail call i32 @memcmp(ptr noundef %58, ptr noundef %57, i64 noundef %53) #20
  br label %60

60:                                               ; preds = %55, %47
  %61 = phi i32 [ %59, %55 ], [ 0, %47 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = sub i64 %50, %52
  %65 = tail call i64 @llvm.smax.i64(i64 %64, i64 -2147483648)
  %66 = tail call i64 @llvm.smin.i64(i64 %65, i64 2147483647)
  %67 = trunc i64 %66 to i32
  br label %68

68:                                               ; preds = %60, %63
  %69 = phi i32 [ %61, %60 ], [ %67, %63 ]
  %70 = icmp slt i32 %69, 0
  %71 = select i1 %70, ptr %40, ptr %48
  %72 = select i1 %70, ptr %38, ptr null
  br label %73

73:                                               ; preds = %68, %41
  %74 = phi ptr [ %40, %41 ], [ %71, %68 ]
  %75 = phi ptr [ %38, %41 ], [ %72, %68 ]
  %76 = insertvalue { ptr, ptr } poison, ptr %74, 0
  %77 = insertvalue { ptr, ptr } %76, ptr %75, 1
  ret { ptr, ptr } %77
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN6dealii12TableHandler6ColumnD1Ev(ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = tail call ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %32, label %8, !prof !96

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node.37", ptr %6, i64 0, i32 1, i32 0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !49
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %10)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15, !prof !97

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node.37", ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = load ptr, ptr %1, align 8, !tbaa !52
  %19 = tail call i32 @memcmp(ptr noundef %18, ptr noundef %17, i64 noundef %13) #20, !prof !98
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i32 [ %19, %15 ], [ 0, %8 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28, !prof !99

23:                                               ; preds = %20
  %24 = sub i64 %10, %12
  %25 = tail call i64 @llvm.smax.i64(i64 %24, i64 -2147483648)
  %26 = tail call i64 @llvm.smin.i64(i64 %25, i64 2147483647)
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %20, %23
  %29 = phi i32 [ %21, %20 ], [ %27, %23 ]
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, ptr %5, ptr %6, !prof !97
  br label %32

32:                                               ; preds = %28, %2
  %33 = phi ptr [ %5, %2 ], [ %31, %28 ]
  ret ptr %33
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %38, label %6, !prof !100

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !49
  %9 = load ptr, ptr %3, align 8
  br label %10

10:                                               ; preds = %6, %29
  %11 = phi ptr [ %1, %6 ], [ %36, %29 ]
  %12 = phi ptr [ %2, %6 ], [ %34, %29 ]
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node.37", ptr %11, i64 0, i32 1, i32 0, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa !49
  %15 = tail call i64 @llvm.umin.i64(i64 %8, i64 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17, !prof !101

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node.37", ptr %11, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = tail call i32 @memcmp(ptr noundef %19, ptr noundef %9, i64 noundef %15) #20, !prof !102
  br label %21

21:                                               ; preds = %17, %10
  %22 = phi i32 [ %20, %17 ], [ 0, %10 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29, !prof !103

24:                                               ; preds = %21
  %25 = sub i64 %14, %8
  %26 = tail call i64 @llvm.smax.i64(i64 %25, i64 -2147483648)
  %27 = tail call i64 @llvm.smin.i64(i64 %26, i64 2147483647)
  %28 = trunc i64 %27 to i32
  br label %29

29:                                               ; preds = %21, %24
  %30 = phi i32 [ %22, %21 ], [ %28, %24 ]
  %31 = icmp slt i32 %30, 0
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  %33 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  %34 = select i1 %31, ptr %12, ptr %11, !prof !104
  %35 = select i1 %31, ptr %32, ptr %33, !prof !104
  %36 = load ptr, ptr %35, align 8, !tbaa !53
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %10, !prof !105, !llvm.loop !106

38:                                               ; preds = %29, %4
  %39 = phi ptr [ %2, %4 ], [ %34, %29 ]
  ret ptr %39
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  %6 = tail call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6dealii12TableHandler6ColumnEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPSt13_Rb_tree_nodeISB_EPSt18_Rb_tree_node_baseRS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %32, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 8
  %12 = load i64, ptr %11, align 8, !tbaa !49
  %13 = tail call i64 @llvm.umin.i64(i64 %12, i64 %10)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = load ptr, ptr %1, align 8, !tbaa !52
  %19 = tail call i32 @memcmp(ptr noundef %18, ptr noundef %17, i64 noundef %13) #20
  br label %20

20:                                               ; preds = %15, %8
  %21 = phi i32 [ %19, %15 ], [ 0, %8 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = sub i64 %10, %12
  %25 = tail call i64 @llvm.smax.i64(i64 %24, i64 -2147483648)
  %26 = tail call i64 @llvm.smin.i64(i64 %25, i64 2147483647)
  %27 = trunc i64 %26 to i32
  br label %28

28:                                               ; preds = %20, %23
  %29 = phi i32 [ %21, %20 ], [ %27, %23 ]
  %30 = icmp slt i32 %29, 0
  %31 = select i1 %30, ptr %5, ptr %6
  br label %32

32:                                               ; preds = %28, %2
  %33 = phi ptr [ %5, %2 ], [ %31, %28 ]
  ret ptr %33
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind memory(read) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { builtin allocsize(0) }
attributes #22 = { builtin nounwind }
attributes #23 = { noreturn }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 498235516744}
!8 = !{!"MaxCount", i64 131729822178}
!9 = !{!"MaxInternalCount", i64 59335447748}
!10 = !{!"MaxFunctionCount", i64 131729822178}
!11 = !{!"NumCounts", i64 184261}
!12 = !{!"NumFunctions", i64 19089}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 131729822178, i32 1}
!18 = !{i32 100000, i64 131729822178, i32 1}
!19 = !{i32 200000, i64 131729822178, i32 1}
!20 = !{i32 300000, i64 59335447748, i32 2}
!21 = !{i32 400000, i64 54202702756, i32 4}
!22 = !{i32 500000, i64 54202702756, i32 4}
!23 = !{i32 600000, i64 54202702756, i32 4}
!24 = !{i32 700000, i64 29261748340, i32 6}
!25 = !{i32 800000, i64 4776163696, i32 11}
!26 = !{i32 900000, i64 1194611288, i32 34}
!27 = !{i32 950000, i64 227059944, i32 83}
!28 = !{i32 990000, i64 24316456, i32 356}
!29 = !{i32 999000, i64 1124400, i32 996}
!30 = !{i32 999900, i64 89565, i32 2292}
!31 = !{i32 999990, i64 12672, i32 3328}
!32 = !{i32 999999, i64 396, i32 5010}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_, i64 2}
!36 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE4findERS7_, ptr @memcmp, i64 1}
!37 = !{ptr @_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIS5_SaIS5_EEESt10_Select1stISB_ESt4lessIS5_ESaISB_EE14_M_lower_boundEPKSt13_Rb_tree_nodeISB_EPKSt18_Rb_tree_node_baseRS7_, ptr @memcmp, i64 3}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!"instr_prof_hash_mismatch"}
!41 = !{!42, !47, i64 8}
!42 = !{!"_ZTSSt15_Rb_tree_header", !43, i64 0, !48, i64 32}
!43 = !{!"_ZTSSt18_Rb_tree_node_base", !44, i64 0, !47, i64 8, !47, i64 16, !47, i64 24}
!44 = !{!"_ZTSSt14_Rb_tree_color", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"any pointer", !45, i64 0}
!48 = !{!"long", !45, i64 0}
!49 = !{!50, !48, i64 8}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !51, i64 0, !48, i64 8, !45, i64 16}
!51 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !47, i64 0}
!52 = !{!50, !47, i64 0}
!53 = !{!47, !47, i64 0}
!54 = !{!51, !47, i64 0}
!55 = !{!48, !48, i64 0}
!56 = !{!"branch_weights", i32 828, i32 42994}
!57 = !{!45, !45, i64 0}
!58 = !{!"branch_weights", i32 42637, i32 675, i32 510}
!59 = !{!"VP", i32 1, i64 0, i64 9, i64 0, i64 8, i64 0, i64 5, i64 0, i64 4, i64 0}
!60 = !{!61, !47, i64 8}
!61 = !{!"_ZTSNSt12_Vector_baseIPN6dealii14TableEntryBaseESaIS2_EE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!62 = !{!61, !47, i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"double", !45, i64 0}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!"branch_weights", i32 0, i32 757}
!69 = distinct !{!69, !66, !67}
!70 = distinct !{!70, !66, !67}
!71 = !{!72, !76, i64 96}
!72 = !{!"_ZTSN6dealii12TableHandler6ColumnE", !73, i64 0, !50, i64 24, !50, i64 56, !76, i64 88, !77, i64 92, !76, i64 96}
!73 = !{!"_ZTSSt6vectorIPN6dealii14TableEntryBaseESaIS2_EE", !74, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIPN6dealii14TableEntryBaseESaIS2_EE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIPN6dealii14TableEntryBaseESaIS2_EE12_Vector_implE", !61, i64 0}
!76 = !{!"int", !45, i64 0}
!77 = !{!"bool", !45, i64 0}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_: argument 0"}
!80 = distinct !{!80, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_"}
!81 = distinct !{!81, !66, !67}
!82 = distinct !{!82, !66, !67}
!83 = distinct !{!83, !66, !67}
!84 = !{!85, !85, i64 0}
!85 = !{!"vtable pointer", !46, i64 0}
!86 = !{!87, !76, i64 128}
!87 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6dealii12TableHandler6ColumnEE", !50, i64 0, !72, i64 32}
!88 = !{!42, !47, i64 16}
!89 = distinct !{!89, !66, !67}
!90 = distinct !{!90, !66, !67}
!91 = !{!42, !48, i64 32}
!92 = distinct !{!92, !66, !67}
!93 = !{!43, !47, i64 24}
!94 = distinct !{!94, !66, !67}
!95 = !{!"function_entry_count", i64 2}
!96 = !{!"branch_weights", i32 1, i32 1}
!97 = !{!"branch_weights", i32 0, i32 1}
!98 = !{!"VP", i32 1, i64 1, i64 9, i64 1}
!99 = !{!"branch_weights", i32 1, i32 0}
!100 = !{!"branch_weights", i32 1, i32 127}
!101 = !{!"branch_weights", i32 0, i32 3}
!102 = !{!"VP", i32 1, i64 3, i64 9, i64 3}
!103 = !{!"branch_weights", i32 3, i32 0}
!104 = !{!"branch_weights", i32 2, i32 1}
!105 = !{!"branch_weights", i32 127, i32 65}
!106 = distinct !{!106, !66, !67}
