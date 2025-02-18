; ModuleID = 'source/base/log.cc'
source_filename = "source/base/log.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.dealii::LogStream" = type { %"class.std::stack", ptr, ptr, i32, i32, i8, i8, double, double, i8, ptr, %"class.std::map" }
%"class.std::stack" = type { %"class.std::deque" }
%"class.std::deque" = type { %"class.std::_Deque_base" }
%"class.std::_Deque_base" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl" = type { %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" }
%"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data" = type { ptr, i64, %"struct.std::_Deque_iterator", %"struct.std::_Deque_iterator" }
%"struct.std::_Deque_iterator" = type { ptr, ptr, ptr, ptr }
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<unsigned int, std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>, std::_Select1st<std::pair<const unsigned int, boost::shared_ptr<std::__cxx11::basic_ostringstream<char>>>>, std::less<unsigned int>>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.std::less" }
%"struct.std::less" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.dealii::JobIdentifier" = type { %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.27" = type { i8 }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [24 x i8] }
%"class.boost::detail::sp_counted_base" = type { ptr, i64, i64 }
%"class.boost::detail::sp_counted_impl_p" = type { %"class.boost::detail::sp_counted_base", ptr }
%"class.std::allocator.22" = type { i8 }

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_ = comdat any

$_ZN5boost6detail12shared_countD2Ev = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm = comdat any

$_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_ = comdat any

$_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_ = comdat any

$_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_ = comdat any

$_ZN5boost6detail15sp_counted_baseD2Ev = comdat any

$_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEED0Ev = comdat any

$_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE7disposeEv = comdat any

$_ZN5boost6detail15sp_counted_base7destroyEv = comdat any

$_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE11get_deleterERKSt9type_info = comdat any

$_ZN5boost6detail15sp_counted_baseD0Ev = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_ = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv = comdat any

$_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_pop_back_auxEv = comdat any

$_ZSt19piecewise_construct = comdat any

$_ZTVN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZTSN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZTSN5boost6detail15sp_counted_baseE = comdat any

$_ZTIN5boost6detail15sp_counted_baseE = comdat any

$_ZTIN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE = comdat any

$_ZTVN5boost6detail15sp_counted_baseE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN6dealii7deallogE = dso_local global %"class.dealii::LogStream" zeroinitializer, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [6 x i8] c"DEAL:\00", align 1
@_ZN6dealii9dealjobidE = external global %"class.dealii::JobIdentifier", align 8
@.str.13 = private unnamed_addr constant [48 x i8] c"cannot create std::deque larger than max_size()\00", align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@_ZTVN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE, ptr @_ZN5boost6detail15sp_counted_baseD2Ev, ptr @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEED0Ev, ptr @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE7disposeEv, ptr @_ZN5boost6detail15sp_counted_base7destroyEv, ptr @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE11get_deleterERKSt9type_info] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local constant [96 x i8] c"N5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN5boost6detail15sp_counted_baseE = linkonce_odr dso_local constant [33 x i8] c"N5boost6detail15sp_counted_baseE\00", comdat, align 1
@_ZTIN5boost6detail15sp_counted_baseE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN5boost6detail15sp_counted_baseE }, comdat, align 8
@_ZTIN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTIN5boost6detail15sp_counted_baseE }, comdat, align 8
@_ZTVN5boost6detail15sp_counted_baseE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN5boost6detail15sp_counted_baseE, ptr @_ZN5boost6detail15sp_counted_baseD2Ev, ptr @_ZN5boost6detail15sp_counted_baseD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN5boost6detail15sp_counted_base7destroyEv, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str.17 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_log.cc, ptr null }]

@_ZN6dealii9LogStreamC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii9LogStreamC2Ev
@_ZN6dealii9LogStreamD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN6dealii9LogStreamD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6dealii9LogStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !annotation !53 {
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  %7 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  %8 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %9 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %11 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  %12 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, i8 0, i64 80, i1 false)
  tail call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 0)
  %13 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 1
  store ptr @_ZSt4cerr, ptr %13, align 8, !tbaa !54
  %14 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !77
  %15 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 3
  store i32 10000, ptr %15, align 8, !tbaa !78
  %16 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 4
  store i32 10000, ptr %16, align 4, !tbaa !79
  %17 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 5
  store i8 0, ptr %17, align 8, !tbaa !80
  %18 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 6
  store i8 0, ptr %18, align 1, !tbaa !81
  %19 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 7
  %20 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 10
  store ptr null, ptr %20, align 8, !tbaa !82
  %21 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11
  %22 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11, i32 0, i32 0, i32 1
  store i32 0, ptr %22, align 8, !tbaa !83
  %23 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %23, align 8, !tbaa !84
  %24 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store ptr %22, ptr %24, align 8, !tbaa !85
  %25 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0, i32 3
  store ptr %22, ptr %25, align 8, !tbaa !86
  %26 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 1
  store i64 0, ptr %26, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %27, ptr %4, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %27, ptr noundef nonnull align 1 dereferenceable(5) @.str, i64 5, i1 false), !prof !90
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 5, ptr %28, align 8, !tbaa !91
  %29 = getelementptr inbounds i8, ptr %4, i64 21
  store i8 0, ptr %29, align 1, !tbaa !93
  %30 = load ptr, ptr %9, align 8, !tbaa !94
  %31 = load ptr, ptr %11, align 8, !tbaa !95
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %31, i64 -1
  %33 = icmp eq ptr %30, %32
  br i1 %33, label %45, label %34

34:                                               ; preds = %1
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 2
  store ptr %35, ptr %30, align 8, !tbaa !88
  %36 = load ptr, ptr %4, align 8, !tbaa !96
  %37 = icmp eq ptr %36, %27
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %35, ptr noundef nonnull align 8 dereferenceable(6) %27, i64 6, i1 false)
  br label %41

39:                                               ; preds = %34
  store ptr %36, ptr %30, align 8, !tbaa !96
  %40 = load i64, ptr %27, align 8, !tbaa !93
  store i64 %40, ptr %35, align 8, !tbaa !93
  br label %41

41:                                               ; preds = %39, %38
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %30, i64 0, i32 1
  store i64 5, ptr %42, align 8, !tbaa !91
  store ptr %27, ptr %4, align 8, !tbaa !96
  store i64 0, ptr %28, align 8, !tbaa !91
  store i8 0, ptr %27, align 8, !tbaa !93
  %43 = load ptr, ptr %9, align 8, !tbaa !94
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %43, i64 1
  store ptr %44, ptr %9, align 8, !tbaa !94
  br label %46

45:                                               ; preds = %1
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %46 unwind label %62

46:                                               ; preds = %45, %41
  %47 = load ptr, ptr %4, align 8, !tbaa !96
  %48 = icmp eq ptr %47, %27
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, ptr %28, align 8, !tbaa !91
  %51 = icmp ult i64 %50, 16
  call void @llvm.assume(i1 %51)
  br label %53

52:                                               ; preds = %46
  call void @_ZdlPv(ptr noundef %47) #26
  br label %53

53:                                               ; preds = %49, %52
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  %54 = load ptr, ptr %13, align 8, !tbaa !54
  %55 = load ptr, ptr %54, align 8, !tbaa !97
  %56 = getelementptr i8, ptr %55, i64 -24
  %57 = load i64, ptr %56, align 8
  %58 = getelementptr inbounds i8, ptr %54, i64 %57
  %59 = getelementptr inbounds %"class.std::ios_base", ptr %58, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !99
  %61 = or i32 %60, 1056
  store i32 %61, ptr %59, align 4, !tbaa !99
  ret void

62:                                               ; preds = %45
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = load ptr, ptr %4, align 8, !tbaa !96
  %65 = icmp eq ptr %64, %27
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i64, ptr %28, align 8, !tbaa !91
  %68 = icmp ult i64 %67, 16
  call void @llvm.assume(i1 %68)
  br label %70

69:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %64) #26
  br label %70

70:                                               ; preds = %69, %66
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  %71 = load ptr, ptr %23, align 8, !tbaa !84
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef %71)
          to label %75 unwind label %72

72:                                               ; preds = %70
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @__clang_call_terminate(ptr %74) #27
  unreachable

75:                                               ; preds = %70
  %76 = load ptr, ptr %5, align 8, !tbaa !101, !noalias !102
  %77 = load ptr, ptr %6, align 8, !tbaa !105, !noalias !102
  %78 = load ptr, ptr %7, align 8, !tbaa !106, !noalias !102
  %79 = load ptr, ptr %8, align 8, !tbaa !107, !noalias !102
  %80 = load ptr, ptr %9, align 8, !tbaa !101, !noalias !108
  %81 = load ptr, ptr %10, align 8, !tbaa !105, !noalias !108
  %82 = load ptr, ptr %11, align 8, !tbaa !106, !noalias !108
  %83 = load ptr, ptr %12, align 8, !tbaa !107, !noalias !108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  store ptr %76, ptr %2, align 8, !tbaa !101
  %84 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  store ptr %77, ptr %84, align 8, !tbaa !105
  %85 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 2
  store ptr %78, ptr %85, align 8, !tbaa !106
  %86 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  store ptr %79, ptr %86, align 8, !tbaa !107
  store ptr %80, ptr %3, align 8, !tbaa !101
  %87 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 1
  store ptr %81, ptr %87, align 8, !tbaa !105
  %88 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  store ptr %82, ptr %88, align 8, !tbaa !106
  %89 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 3
  store ptr %83, ptr %89, align 8, !tbaa !107
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %93 unwind label %90

90:                                               ; preds = %75
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #27
  unreachable

93:                                               ; preds = %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #25
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6dealii9LogStreamD2Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !annotation !53 {
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !97
  %9 = getelementptr i8, ptr %8, i64 -24
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %10
  %12 = invoke noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %11, ptr noundef nonnull %5)
          to label %13 unwind label %47

13:                                               ; preds = %7, %1
  %14 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11
  %15 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  invoke void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %16)
          to label %20 unwind label %17

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #27
  unreachable

20:                                               ; preds = %13
  %21 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !101, !noalias !111
  %23 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !105, !noalias !111
  %25 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !106, !noalias !111
  %27 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !107, !noalias !111
  %29 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !101, !noalias !114
  %31 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !105, !noalias !114
  %33 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !106, !noalias !114
  %35 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !107, !noalias !114
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  store ptr %22, ptr %2, align 8, !tbaa !101
  %37 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  store ptr %24, ptr %37, align 8, !tbaa !105
  %38 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 2
  store ptr %26, ptr %38, align 8, !tbaa !106
  %39 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  store ptr %28, ptr %39, align 8, !tbaa !107
  store ptr %30, ptr %3, align 8, !tbaa !101
  %40 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 1
  store ptr %32, ptr %40, align 8, !tbaa !105
  %41 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  store ptr %34, ptr %41, align 8, !tbaa !106
  %42 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 3
  store ptr %36, ptr %42, align 8, !tbaa !107
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %46 unwind label %43

43:                                               ; preds = %20
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  call void @__clang_call_terminate(ptr %45) #27
  unreachable

46:                                               ; preds = %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #25
  ret void

47:                                               ; preds = %7
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  tail call void @__clang_call_terminate(ptr %49) #27
  unreachable
}

declare noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !117 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #25
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(192) ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E(ptr noundef nonnull returned align 8 dereferenceable(192) %0, ptr noundef readonly %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !118 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr %1(ptr noundef nonnull align 8 dereferenceable(8) %6), !prof !119
  %8 = icmp eq ptr %1, @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
  br i1 %8, label %9, label %175, !prof !120

9:                                                ; preds = %2
  tail call void @_ZN6dealii9LogStream15print_line_headEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %10 = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %11 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  %15 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  %17 = ptrtoint ptr %14 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 3
  %21 = icmp ne ptr %14, null
  %22 = sext i1 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = shl nsw i64 %23, 4
  %25 = load ptr, ptr %11, align 8, !tbaa !101
  %26 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !105
  %28 = ptrtoint ptr %25 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 5
  %32 = add nsw i64 %24, %31
  %33 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !106
  %35 = load ptr, ptr %12, align 8, !tbaa !101
  %36 = ptrtoint ptr %34 to i64
  %37 = ptrtoint ptr %35 to i64
  %38 = sub i64 %36, %37
  %39 = ashr exact i64 %38, 5
  %40 = add nsw i64 %32, %39
  %41 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !78
  %43 = zext i32 %42 to i64
  %44 = icmp ugt i64 %40, %43
  br i1 %44, label %76, label %45, !prof !120

45:                                               ; preds = %9
  %46 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %10, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(104) %48)
          to label %49 unwind label %63

49:                                               ; preds = %45
  %50 = load ptr, ptr %3, align 8, !tbaa !96
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !91
  %53 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %50, i64 noundef %52)
          to label %54 unwind label %65

54:                                               ; preds = %49
  %55 = load ptr, ptr %3, align 8, !tbaa !96
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %57 = icmp eq ptr %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i64, ptr %51, align 8, !tbaa !91
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  br label %62

61:                                               ; preds = %54
  call void @_ZdlPv(ptr noundef %55) #26
  br label %62

62:                                               ; preds = %58, %61
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  br label %76

63:                                               ; preds = %45
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %74

65:                                               ; preds = %49
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = load ptr, ptr %3, align 8, !tbaa !96
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, ptr %51, align 8, !tbaa !91
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %67) #26
  br label %74

74:                                               ; preds = %73, %70, %63
  %75 = phi { ptr, i32 } [ %64, %63 ], [ %66, %70 ], [ %66, %73 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  br label %173

76:                                               ; preds = %62, %9
  %77 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !77
  %79 = icmp eq ptr %78, null
  br i1 %79, label %140, label %80, !prof !120

80:                                               ; preds = %76
  %81 = load ptr, ptr %13, align 8, !tbaa !107
  %82 = load ptr, ptr %15, align 8, !tbaa !107
  %83 = ptrtoint ptr %81 to i64
  %84 = ptrtoint ptr %82 to i64
  %85 = sub i64 %83, %84
  %86 = ashr exact i64 %85, 3
  %87 = icmp ne ptr %81, null
  %88 = sext i1 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = shl nsw i64 %89, 4
  %91 = load ptr, ptr %11, align 8, !tbaa !101
  %92 = load ptr, ptr %26, align 8, !tbaa !105
  %93 = ptrtoint ptr %91 to i64
  %94 = ptrtoint ptr %92 to i64
  %95 = sub i64 %93, %94
  %96 = ashr exact i64 %95, 5
  %97 = add nsw i64 %90, %96
  %98 = load ptr, ptr %33, align 8, !tbaa !106
  %99 = load ptr, ptr %12, align 8, !tbaa !101
  %100 = ptrtoint ptr %98 to i64
  %101 = ptrtoint ptr %99 to i64
  %102 = sub i64 %100, %101
  %103 = ashr exact i64 %102, 5
  %104 = add nsw i64 %97, %103
  %105 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 4
  %106 = load i32, ptr %105, align 4, !tbaa !79
  %107 = zext i32 %106 to i64
  %108 = icmp ugt i64 %104, %107
  br i1 %108, label %140, label %109

109:                                              ; preds = %80
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %110 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %10, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(104) %110)
          to label %111 unwind label %127

111:                                              ; preds = %109
  %112 = load ptr, ptr %4, align 8, !tbaa !96
  %113 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !91
  %115 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef %112, i64 noundef %114)
          to label %116 unwind label %129

116:                                              ; preds = %111
  %117 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %115)
          to label %118 unwind label %129

118:                                              ; preds = %116
  %119 = load ptr, ptr %4, align 8, !tbaa !96
  %120 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = load i64, ptr %113, align 8, !tbaa !91
  %124 = icmp ult i64 %123, 16
  call void @llvm.assume(i1 %124)
  br label %126

125:                                              ; preds = %118
  call void @_ZdlPv(ptr noundef %119) #26
  br label %126

126:                                              ; preds = %122, %125
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %140

127:                                              ; preds = %109
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %138

129:                                              ; preds = %116, %111
  %130 = landingpad { ptr, i32 }
          cleanup
  %131 = load ptr, ptr %4, align 8, !tbaa !96
  %132 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i64, ptr %113, align 8, !tbaa !91
  %136 = icmp ult i64 %135, 16
  call void @llvm.assume(i1 %136)
  br label %138

137:                                              ; preds = %129
  call void @_ZdlPv(ptr noundef %131) #26
  br label %138

138:                                              ; preds = %137, %134, %127
  %139 = phi { ptr, i32 } [ %128, %127 ], [ %130, %134 ], [ %130, %137 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %173

140:                                              ; preds = %126, %80, %76
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %141 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %141, ptr %5, align 8, !tbaa !88
  %142 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 0, ptr %142, align 8, !tbaa !91
  store i8 0, ptr %141, align 8, !tbaa !93
  %143 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %10, i64 0, i32 1, i32 2
  %144 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %10, i64 0, i32 1, i32 2, i32 1
  %145 = load i64, ptr %144, align 8, !tbaa !91
  %146 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %143, i64 noundef 0, i64 noundef %145, ptr noundef nonnull %141, i64 noundef 0)
          to label %147 unwind label %164, !prof !120

147:                                              ; preds = %140
  %148 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %10, i64 0, i32 1
  %149 = getelementptr inbounds %"class.std::__cxx11::basic_ostringstream", ptr %10, i64 0, i32 1, i32 1
  %150 = load i32, ptr %149, align 8, !tbaa !121
  %151 = and i32 %150, 3
  %152 = icmp eq i32 %151, 0
  %153 = load i64, ptr %144, align 8
  %154 = select i1 %152, i64 0, i64 %153, !prof !120
  %155 = load ptr, ptr %143, align 8, !tbaa !96
  invoke void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104) %148, ptr noundef %155, i64 noundef 0, i64 noundef %154)
          to label %156 unwind label %164, !prof !120

156:                                              ; preds = %147
  %157 = load ptr, ptr %5, align 8, !tbaa !96
  %158 = icmp eq ptr %157, %141
  br i1 %158, label %159, label %162, !prof !120

159:                                              ; preds = %156
  %160 = load i64, ptr %142, align 8, !tbaa !91
  %161 = icmp ult i64 %160, 16
  call void @llvm.assume(i1 %161)
  br label %163

162:                                              ; preds = %156
  call void @_ZdlPv(ptr noundef %157) #26
  br label %163

163:                                              ; preds = %159, %162
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  br label %175

164:                                              ; preds = %147, %140
  %165 = landingpad { ptr, i32 }
          cleanup
  %166 = load ptr, ptr %5, align 8, !tbaa !96
  %167 = icmp eq ptr %166, %141
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i64, ptr %142, align 8, !tbaa !91
  %170 = icmp ult i64 %169, 16
  call void @llvm.assume(i1 %170)
  br label %172

171:                                              ; preds = %164
  call void @_ZdlPv(ptr noundef %166) #26
  br label %172

172:                                              ; preds = %171, %168
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  br label %173

173:                                              ; preds = %74, %138, %172
  %174 = phi { ptr, i32 } [ %165, %172 ], [ %139, %138 ], [ %75, %74 ]
  resume { ptr, i32 } %174

175:                                              ; preds = %163, %2
  ret ptr %0
}

; Function Attrs: cold inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6dealii9LogStream15print_line_headEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 !prof !118 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !101, !noalias !126
  %12 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !105, !noalias !126
  %14 = icmp eq ptr %11, %13
  br i1 %14, label %15, label %21, !prof !129

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !107, !noalias !126
  %18 = getelementptr inbounds ptr, ptr %17, i64 -1
  %19 = load ptr, ptr %18, align 8, !tbaa !130
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 16
  br label %21

21:                                               ; preds = %1, %15
  %22 = phi ptr [ %20, %15 ], [ %11, %1 ]
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %22, i64 -1
  %24 = tail call noundef i32 @_ZN6dealii7Threads14this_thread_idEv()
  %25 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !107
  %28 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !107
  %30 = ptrtoint ptr %27 to i64
  %31 = ptrtoint ptr %29 to i64
  %32 = sub i64 %30, %31
  %33 = ashr exact i64 %32, 3
  %34 = icmp ne ptr %27, null
  %35 = sext i1 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = shl nsw i64 %36, 4
  %38 = load ptr, ptr %10, align 8, !tbaa !101
  %39 = load ptr, ptr %12, align 8, !tbaa !105
  %40 = ptrtoint ptr %38 to i64
  %41 = ptrtoint ptr %39 to i64
  %42 = sub i64 %40, %41
  %43 = ashr exact i64 %42, 5
  %44 = add nsw i64 %37, %43
  %45 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !106
  %47 = load ptr, ptr %25, align 8, !tbaa !101
  %48 = ptrtoint ptr %46 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = ashr exact i64 %50, 5
  %52 = add nsw i64 %44, %51
  %53 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !78
  %55 = zext i32 %54 to i64
  %56 = icmp ugt i64 %52, %55
  br i1 %56, label %144, label %57, !prof !120

57:                                               ; preds = %21
  %58 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 5
  %59 = load i8, ptr %58, align 8, !tbaa !80, !range !131, !noundef !132
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %91, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !54
  %64 = load ptr, ptr %63, align 8, !tbaa !97
  %65 = getelementptr i8, ptr %64, i64 -24
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds i8, ptr %63, i64 %66
  %68 = getelementptr inbounds %"class.std::ios_base", ptr %67, i64 0, i32 2
  %69 = load i64, ptr %68, align 8, !tbaa !133
  store i64 5, ptr %68, align 8, !tbaa !133
  %70 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %63, double noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 58, ptr %9, align 1, !tbaa !93
  %71 = load ptr, ptr %70, align 8, !tbaa !97
  %72 = getelementptr i8, ptr %71, i64 -24
  %73 = load i64, ptr %72, align 8
  %74 = getelementptr inbounds i8, ptr %70, i64 %73
  %75 = getelementptr inbounds %"class.std::ios_base", ptr %74, i64 0, i32 2
  %76 = load i64, ptr %75, align 8, !tbaa !133
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %61
  %79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef nonnull %9, i64 noundef 1)
  br label %82

80:                                               ; preds = %61
  %81 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %70, i8 noundef signext 58)
  br label %82

82:                                               ; preds = %78, %80
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  %83 = load ptr, ptr %62, align 8, !tbaa !54
  %84 = load ptr, ptr %83, align 8, !tbaa !97
  %85 = getelementptr i8, ptr %84, i64 -24
  %86 = load i64, ptr %85, align 8
  %87 = getelementptr inbounds i8, ptr %83, i64 %86
  %88 = shl i64 %69, 32
  %89 = ashr exact i64 %88, 32
  %90 = getelementptr inbounds %"class.std::ios_base", ptr %87, i64 0, i32 2
  store i64 %89, ptr %90, align 8, !tbaa !133
  br label %91

91:                                               ; preds = %82, %57
  %92 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 9
  %93 = load i8, ptr %92, align 8, !tbaa !137, !range !131, !noundef !132
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %125, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8)
  store i8 91, ptr %8, align 1, !tbaa !93
  %98 = load ptr, ptr %97, align 8, !tbaa !97
  %99 = getelementptr i8, ptr %98, i64 -24
  %100 = load i64, ptr %99, align 8
  %101 = getelementptr inbounds i8, ptr %97, i64 %100
  %102 = getelementptr inbounds %"class.std::ios_base", ptr %101, i64 0, i32 2
  %103 = load i64, ptr %102, align 8, !tbaa !133
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %95
  %106 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %97, ptr noundef nonnull %8, i64 noundef 1)
  br label %109

107:                                              ; preds = %95
  %108 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %97, i8 noundef signext 91)
  br label %109

109:                                              ; preds = %105, %107
  %110 = phi ptr [ %106, %105 ], [ %97, %107 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  %111 = zext i32 %24 to i64
  %112 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %110, i64 noundef %111)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7)
  store i8 93, ptr %7, align 1, !tbaa !93
  %113 = load ptr, ptr %112, align 8, !tbaa !97
  %114 = getelementptr i8, ptr %113, i64 -24
  %115 = load i64, ptr %114, align 8
  %116 = getelementptr inbounds i8, ptr %112, i64 %115
  %117 = getelementptr inbounds %"class.std::ios_base", ptr %116, i64 0, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa !133
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %109
  %121 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %112, ptr noundef nonnull %7, i64 noundef 1)
  br label %124

122:                                              ; preds = %109
  %123 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %112, i8 noundef signext 93)
  br label %124

124:                                              ; preds = %120, %122
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7)
  br label %125

125:                                              ; preds = %124, %91
  %126 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !54
  %128 = load ptr, ptr %23, align 8, !tbaa !96
  %129 = getelementptr %"class.std::__cxx11::basic_string", ptr %22, i64 -1, i32 1
  %130 = load i64, ptr %129, align 8, !tbaa !91
  %131 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %127, ptr noundef %128, i64 noundef %130)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 58, ptr %6, align 1, !tbaa !93
  %132 = load ptr, ptr %131, align 8, !tbaa !97
  %133 = getelementptr i8, ptr %132, i64 -24
  %134 = load i64, ptr %133, align 8
  %135 = getelementptr inbounds i8, ptr %131, i64 %134
  %136 = getelementptr inbounds %"class.std::ios_base", ptr %135, i64 0, i32 2
  %137 = load i64, ptr %136, align 8, !tbaa !133
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %125
  %140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %131, ptr noundef nonnull %6, i64 noundef 1)
  br label %143

141:                                              ; preds = %125
  %142 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %131, i8 noundef signext 58)
  br label %143

143:                                              ; preds = %139, %141
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %144

144:                                              ; preds = %143, %21
  %145 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !77
  %147 = icmp eq ptr %146, null
  br i1 %147, label %260, label %148, !prof !120

148:                                              ; preds = %144
  %149 = load ptr, ptr %26, align 8, !tbaa !107
  %150 = load ptr, ptr %28, align 8, !tbaa !107
  %151 = ptrtoint ptr %149 to i64
  %152 = ptrtoint ptr %150 to i64
  %153 = sub i64 %151, %152
  %154 = ashr exact i64 %153, 3
  %155 = icmp ne ptr %149, null
  %156 = sext i1 %155 to i64
  %157 = add nsw i64 %154, %156
  %158 = shl nsw i64 %157, 4
  %159 = load ptr, ptr %10, align 8, !tbaa !101
  %160 = load ptr, ptr %12, align 8, !tbaa !105
  %161 = ptrtoint ptr %159 to i64
  %162 = ptrtoint ptr %160 to i64
  %163 = sub i64 %161, %162
  %164 = ashr exact i64 %163, 5
  %165 = add nsw i64 %158, %164
  %166 = load ptr, ptr %45, align 8, !tbaa !106
  %167 = load ptr, ptr %25, align 8, !tbaa !101
  %168 = ptrtoint ptr %166 to i64
  %169 = ptrtoint ptr %167 to i64
  %170 = sub i64 %168, %169
  %171 = ashr exact i64 %170, 5
  %172 = add nsw i64 %165, %171
  %173 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 4
  %174 = load i32, ptr %173, align 4, !tbaa !79
  %175 = zext i32 %174 to i64
  %176 = icmp ugt i64 %172, %175
  br i1 %176, label %260, label %177

177:                                              ; preds = %148
  %178 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 5
  %179 = load i8, ptr %178, align 8, !tbaa !80, !range !131, !noundef !132
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %209, label %181

181:                                              ; preds = %177
  %182 = load ptr, ptr %146, align 8, !tbaa !97
  %183 = getelementptr i8, ptr %182, i64 -24
  %184 = load i64, ptr %183, align 8
  %185 = getelementptr inbounds i8, ptr %146, i64 %184
  %186 = getelementptr inbounds %"class.std::ios_base", ptr %185, i64 0, i32 2
  %187 = load i64, ptr %186, align 8, !tbaa !133
  store i64 6, ptr %186, align 8, !tbaa !133
  %188 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %146, double noundef 0.000000e+00)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 58, ptr %5, align 1, !tbaa !93
  %189 = load ptr, ptr %188, align 8, !tbaa !97
  %190 = getelementptr i8, ptr %189, i64 -24
  %191 = load i64, ptr %190, align 8
  %192 = getelementptr inbounds i8, ptr %188, i64 %191
  %193 = getelementptr inbounds %"class.std::ios_base", ptr %192, i64 0, i32 2
  %194 = load i64, ptr %193, align 8, !tbaa !133
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %181
  %197 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %188, ptr noundef nonnull %5, i64 noundef 1)
  br label %200

198:                                              ; preds = %181
  %199 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %188, i8 noundef signext 58)
  br label %200

200:                                              ; preds = %196, %198
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %201 = load ptr, ptr %145, align 8, !tbaa !77
  %202 = load ptr, ptr %201, align 8, !tbaa !97
  %203 = getelementptr i8, ptr %202, i64 -24
  %204 = load i64, ptr %203, align 8
  %205 = getelementptr inbounds i8, ptr %201, i64 %204
  %206 = shl i64 %187, 32
  %207 = ashr exact i64 %206, 32
  %208 = getelementptr inbounds %"class.std::ios_base", ptr %205, i64 0, i32 2
  store i64 %207, ptr %208, align 8, !tbaa !133
  br label %209

209:                                              ; preds = %200, %177
  %210 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 9
  %211 = load i8, ptr %210, align 8, !tbaa !137, !range !131, !noundef !132
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %242, label %213

213:                                              ; preds = %209
  %214 = load ptr, ptr %145, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 91, ptr %4, align 1, !tbaa !93
  %215 = load ptr, ptr %214, align 8, !tbaa !97
  %216 = getelementptr i8, ptr %215, i64 -24
  %217 = load i64, ptr %216, align 8
  %218 = getelementptr inbounds i8, ptr %214, i64 %217
  %219 = getelementptr inbounds %"class.std::ios_base", ptr %218, i64 0, i32 2
  %220 = load i64, ptr %219, align 8, !tbaa !133
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %213
  %223 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %214, ptr noundef nonnull %4, i64 noundef 1)
  br label %226

224:                                              ; preds = %213
  %225 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %214, i8 noundef signext 91)
  br label %226

226:                                              ; preds = %222, %224
  %227 = phi ptr [ %223, %222 ], [ %214, %224 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %228 = zext i32 %24 to i64
  %229 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %227, i64 noundef %228)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 93, ptr %3, align 1, !tbaa !93
  %230 = load ptr, ptr %229, align 8, !tbaa !97
  %231 = getelementptr i8, ptr %230, i64 -24
  %232 = load i64, ptr %231, align 8
  %233 = getelementptr inbounds i8, ptr %229, i64 %232
  %234 = getelementptr inbounds %"class.std::ios_base", ptr %233, i64 0, i32 2
  %235 = load i64, ptr %234, align 8, !tbaa !133
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %239, label %237

237:                                              ; preds = %226
  %238 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %229, ptr noundef nonnull %3, i64 noundef 1)
  br label %241

239:                                              ; preds = %226
  %240 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %229, i8 noundef signext 93)
  br label %241

241:                                              ; preds = %237, %239
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  br label %242

242:                                              ; preds = %241, %209
  %243 = load ptr, ptr %145, align 8, !tbaa !77
  %244 = load ptr, ptr %23, align 8, !tbaa !96
  %245 = getelementptr %"class.std::__cxx11::basic_string", ptr %22, i64 -1, i32 1
  %246 = load i64, ptr %245, align 8, !tbaa !91
  %247 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %243, ptr noundef %244, i64 noundef %246)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 58, ptr %2, align 1, !tbaa !93
  %248 = load ptr, ptr %247, align 8, !tbaa !97
  %249 = getelementptr i8, ptr %248, i64 -24
  %250 = load i64, ptr %249, align 8
  %251 = getelementptr inbounds i8, ptr %247, i64 %250
  %252 = getelementptr inbounds %"class.std::ios_base", ptr %251, i64 0, i32 2
  %253 = load i64, ptr %252, align 8, !tbaa !133
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %242
  %256 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %247, ptr noundef nonnull %2, i64 noundef 1)
  br label %259

257:                                              ; preds = %242
  %258 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %247, i8 noundef signext 58)
  br label %259

259:                                              ; preds = %255, %257
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  br label %260

260:                                              ; preds = %259, %148, %144
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(112) ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !annotation !53 {
  %2 = alloca %"class.std::tuple", align 8
  %3 = alloca %"class.std::tuple.27", align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  %5 = tail call noundef i32 @_ZN6dealii7Threads14this_thread_idEv()
  store i32 %5, ptr %4, align 4, !tbaa !138
  %6 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11
  %7 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11, i32 0, i32 0, i32 1, i32 0, i32 1
  %8 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 11, i32 0, i32 0, i32 1
  %9 = load ptr, ptr %7, align 8, !tbaa !130
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %1, %11
  %12 = phi ptr [ %21, %11 ], [ %9, %1 ]
  %13 = phi ptr [ %19, %11 ], [ %8, %1 ]
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !138
  %16 = icmp ult i32 %15, %5
  %17 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 3
  %18 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %12, i64 0, i32 2
  %19 = select i1 %16, ptr %13, ptr %12
  %20 = select i1 %16, ptr %17, ptr %18
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %11, !llvm.loop !139

23:                                               ; preds = %11, %1
  %24 = phi ptr [ %8, %1 ], [ %19, %11 ]
  %25 = icmp eq ptr %24, %8
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %24, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !138
  %29 = icmp ult i32 %5, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  store ptr %4, ptr %2, align 8, !tbaa !130
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #25
  %31 = call ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr %24, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  br label %32

32:                                               ; preds = %26, %30
  %33 = phi ptr [ %31, %30 ], [ %24, %26 ]
  %34 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %33, i64 0, i32 1, i32 0, i64 8
  %35 = load ptr, ptr %34, align 8, !tbaa !142
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %136

37:                                               ; preds = %32
  %38 = call noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #28
  invoke void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %38)
          to label %39 unwind label %112

39:                                               ; preds = %37
  %40 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #28
          to label %56 unwind label %41

41:                                               ; preds = %39
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  %44 = call ptr @__cxa_begin_catch(ptr %43) #25
  %45 = load ptr, ptr %38, align 8, !tbaa !97
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8
  call void %47(ptr noundef nonnull align 8 dereferenceable(112) %38) #25
  invoke void @__cxa_rethrow() #29
          to label %55 unwind label %48

48:                                               ; preds = %41
  %49 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %50 unwind label %52

50:                                               ; preds = %48, %134
  %51 = phi { ptr, i32 } [ %135, %134 ], [ %49, %48 ]
  resume { ptr, i32 } %51

52:                                               ; preds = %48
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  call void @__clang_call_terminate(ptr %54) #27
  unreachable

55:                                               ; preds = %41
  unreachable

56:                                               ; preds = %39
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN5boost6detail15sp_counted_baseE, i64 0, inrange i32 0, i64 2), ptr %40, align 8, !tbaa !97
  %57 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %40, i64 0, i32 1
  store i64 1, ptr %57, align 8, !tbaa !145
  %58 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %40, i64 0, i32 2
  store i64 1, ptr %58, align 8, !tbaa !147
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE, i64 0, inrange i32 0, i64 2), ptr %40, align 8, !tbaa !97
  %59 = getelementptr inbounds %"class.boost::detail::sp_counted_impl_p", ptr %40, i64 0, i32 1
  store ptr %38, ptr %59, align 8, !tbaa !148
  store ptr %38, ptr %34, align 8, !tbaa !142
  %60 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %33, i64 0, i32 1, i32 0, i64 16
  %61 = load ptr, ptr %60, align 8, !tbaa !150
  %62 = icmp eq ptr %40, %61
  br i1 %62, label %84, label %63, !prof !151

63:                                               ; preds = %56
  store i64 2, ptr %57, align 8, !tbaa !145
  %64 = icmp eq ptr %61, null
  br i1 %64, label %83, label %65, !prof !152

65:                                               ; preds = %63
  %66 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %61, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !145
  %68 = add nsw i64 %67, -1
  store i64 %68, ptr %66, align 8, !tbaa !145
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %65
  %71 = load ptr, ptr %61, align 8, !tbaa !97
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  invoke void %73(ptr noundef nonnull align 8 dereferenceable(24) %61)
          to label %74 unwind label %114

74:                                               ; preds = %70
  %75 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %61, i64 0, i32 2
  %76 = load i64, ptr %75, align 8, !tbaa !147
  %77 = add nsw i64 %76, -1
  store i64 %77, ptr %75, align 8, !tbaa !147
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load ptr, ptr %61, align 8, !tbaa !97
  %81 = getelementptr inbounds ptr, ptr %80, i64 3
  %82 = load ptr, ptr %81, align 8
  invoke void %82(ptr noundef nonnull align 8 dereferenceable(24) %61)
          to label %83 unwind label %114

83:                                               ; preds = %79, %74, %65, %63
  store ptr %40, ptr %60, align 8, !tbaa !150
  br label %84

84:                                               ; preds = %56, %83
  %85 = load i64, ptr %57, align 8, !tbaa !145
  %86 = add nsw i64 %85, -1
  store i64 %86, ptr %57, align 8, !tbaa !145
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load ptr, ptr %40, align 8, !tbaa !97
  %90 = getelementptr inbounds ptr, ptr %89, i64 2
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %92 unwind label %100

92:                                               ; preds = %88
  %93 = load i64, ptr %58, align 8, !tbaa !147
  %94 = add nsw i64 %93, -1
  store i64 %94, ptr %58, align 8, !tbaa !147
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load ptr, ptr %40, align 8, !tbaa !97
  %98 = getelementptr inbounds ptr, ptr %97, i64 3
  %99 = load ptr, ptr %98, align 8
  invoke void %99(ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %103 unwind label %100

100:                                              ; preds = %96, %88
  %101 = landingpad { ptr, i32 }
          catch ptr null
  %102 = extractvalue { ptr, i32 } %101, 0
  call void @__clang_call_terminate(ptr %102) #27
  unreachable

103:                                              ; preds = %84, %92, %96
  %104 = load ptr, ptr %34, align 8, !tbaa !142
  %105 = load ptr, ptr %104, align 8, !tbaa !97
  %106 = getelementptr i8, ptr %105, i64 -24
  %107 = load i64, ptr %106, align 8
  %108 = getelementptr inbounds i8, ptr %104, i64 %107
  %109 = getelementptr inbounds %"class.std::ios_base", ptr %108, i64 0, i32 3
  %110 = load i32, ptr %109, align 8, !tbaa !99
  %111 = or i32 %110, 1056
  store i32 %111, ptr %109, align 4, !tbaa !99
  br label %136

112:                                              ; preds = %37
  %113 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %38) #26
  br label %134

114:                                              ; preds = %79, %70
  %115 = landingpad { ptr, i32 }
          cleanup
  %116 = load i64, ptr %57, align 8, !tbaa !145
  %117 = add nsw i64 %116, -1
  store i64 %117, ptr %57, align 8, !tbaa !145
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load ptr, ptr %40, align 8, !tbaa !97
  %121 = getelementptr inbounds ptr, ptr %120, i64 2
  %122 = load ptr, ptr %121, align 8
  invoke void %122(ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %123 unwind label %131

123:                                              ; preds = %119
  %124 = load i64, ptr %58, align 8, !tbaa !147
  %125 = add nsw i64 %124, -1
  store i64 %125, ptr %58, align 8, !tbaa !147
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %123
  %128 = load ptr, ptr %40, align 8, !tbaa !97
  %129 = getelementptr inbounds ptr, ptr %128, i64 3
  %130 = load ptr, ptr %129, align 8
  invoke void %130(ptr noundef nonnull align 8 dereferenceable(24) %40)
          to label %134 unwind label %131

131:                                              ; preds = %127, %119
  %132 = landingpad { ptr, i32 }
          catch ptr null
  %133 = extractvalue { ptr, i32 } %132, 0
  call void @__clang_call_terminate(ptr %133) #27
  unreachable

134:                                              ; preds = %127, %123, %114, %112
  %135 = phi { ptr, i32 } [ %113, %112 ], [ %115, %114 ], [ %115, %123 ], [ %115, %127 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %50

136:                                              ; preds = %103, %32
  %137 = load ptr, ptr %34, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret ptr %137
}

declare noundef i32 @_ZN6dealii7Threads14this_thread_idEv() local_unnamed_addr #0

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii9LogStream6attachERSo(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !77
  %5 = load ptr, ptr %1, align 8, !tbaa !97
  %6 = getelementptr i8, ptr %5, i64 -24
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  %9 = getelementptr inbounds %"class.std::ios_base", ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !99
  %11 = or i32 %10, 1056
  store i32 %11, ptr %9, align 4, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  call void @_ZNK6dealii13JobIdentifierclB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZN6dealii9dealjobidE)
  %12 = load ptr, ptr %3, align 8, !tbaa !96
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !91
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %12, i64 noundef %14)
          to label %16 unwind label %25

16:                                               ; preds = %2
  %17 = load ptr, ptr %3, align 8, !tbaa !96
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i64, ptr %13, align 8, !tbaa !91
  %22 = icmp ult i64 %21, 16
  call void @llvm.assume(i1 %22)
  br label %24

23:                                               ; preds = %16
  call void @_ZdlPv(ptr noundef %17) #26
  br label %24

24:                                               ; preds = %20, %23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  ret void

25:                                               ; preds = %2
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = load ptr, ptr %3, align 8, !tbaa !96
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i64, ptr %13, align 8, !tbaa !91
  %32 = icmp ult i64 %31, 16
  call void @llvm.assume(i1 %32)
  br label %34

33:                                               ; preds = %25
  call void @_ZdlPv(ptr noundef %27) #26
  br label %34

34:                                               ; preds = %33, %30
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  resume { ptr, i32 } %26
}

declare void @_ZNK6dealii13JobIdentifierclB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6dealii9LogStream6detachEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(192) %0) local_unnamed_addr #11 align 2 !prof !117 {
  %2 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  store ptr null, ptr %2, align 8, !tbaa !77
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6dealii9LogStream8log_cerrEv(ptr nocapture noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %2 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  %4 = icmp eq ptr %3, null
  %5 = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !97
  %6 = getelementptr i8, ptr %5, i64 -24
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %7
  br i1 %4, label %9, label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = getelementptr i8, ptr %12, i64 -24
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds i8, ptr %11, i64 %14
  %16 = getelementptr inbounds %"class.std::basic_ios", ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !153
  %18 = tail call noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %8, ptr noundef %17)
  br label %21

19:                                               ; preds = %1
  %20 = tail call noundef ptr @_ZNSt9basic_iosIcSt11char_traitsIcEE5rdbufEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264) %8, ptr noundef nonnull %3)
  br label %21

21:                                               ; preds = %9, %19
  %22 = phi ptr [ %18, %9 ], [ null, %19 ]
  store ptr %22, ptr %2, align 8, !tbaa !82
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii9LogStream11get_consoleEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(192) %0) local_unnamed_addr #12 align 2 !prof !117 {
  %2 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN6dealii9LogStream15get_file_streamEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(192) %0) local_unnamed_addr #12 align 2 !prof !117 {
  %2 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK6dealii9LogStream8has_fileEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(192) %0) local_unnamed_addr #12 align 2 !prof !117 {
  %2 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6dealii9LogStream10get_prefixB5cxx11Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(192) %0) local_unnamed_addr #13 align 2 !prof !117 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !101, !noalias !155
  %4 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !105, !noalias !155
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !107, !noalias !155
  %10 = getelementptr inbounds ptr, ptr %9, i64 -1
  %11 = load ptr, ptr %10, align 8, !tbaa !130
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 16
  br label %13

13:                                               ; preds = %1, %7
  %14 = phi ptr [ %12, %7 ], [ %3, %1 ]
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 -1
  ret ptr %15
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !158 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %7 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !101, !noalias !159
  %9 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !105, !noalias !159
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %12, label %18, !prof !162

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !107, !noalias !159
  %15 = getelementptr inbounds ptr, ptr %14, i64 -1
  %16 = load ptr, ptr %15, align 8, !tbaa !130
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 16
  br label %18

18:                                               ; preds = %2, %12
  %19 = phi ptr [ %17, %12 ], [ %8, %2 ]
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %19, i64 -1
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  store ptr %21, ptr %5, align 8, !tbaa !88
  %22 = load ptr, ptr %20, align 8, !tbaa !96
  %23 = getelementptr %"class.std::__cxx11::basic_string", ptr %19, i64 -1, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  store i64 %24, ptr %4, align 8, !tbaa !163
  %25 = icmp ugt i64 %24, 15
  br i1 %25, label %26, label %29, !prof !164

26:                                               ; preds = %18
  %27 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %27, ptr %5, align 8, !tbaa !96
  %28 = load i64, ptr %4, align 8, !tbaa !163
  store i64 %28, ptr %21, align 8, !tbaa !93
  br label %29

29:                                               ; preds = %26, %18
  %30 = load ptr, ptr %5, align 8, !tbaa !96
  switch i64 %24, label %33 [
    i64 1, label %31
    i64 0, label %34
  ], !prof !165

31:                                               ; preds = %29
  %32 = load i8, ptr %22, align 1, !tbaa !93
  store i8 %32, ptr %30, align 1, !tbaa !93
  br label %34

33:                                               ; preds = %29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %22, i64 %24, i1 false), !prof !166
  br label %34

34:                                               ; preds = %29, %31, %33
  %35 = load i64, ptr %4, align 8, !tbaa !163
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  store i64 %35, ptr %36, align 8, !tbaa !91
  %37 = load ptr, ptr %5, align 8, !tbaa !96
  %38 = getelementptr inbounds i8, ptr %37, i64 %35
  store i8 0, ptr %38, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !91
  %41 = load i64, ptr %36, align 8, !tbaa !91
  %42 = sub i64 4611686018427387903, %41
  %43 = icmp ult i64 %42, %40
  br i1 %43, label %44, label %46, !prof !162

44:                                               ; preds = %34
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %45 unwind label %102

45:                                               ; preds = %44
  unreachable

46:                                               ; preds = %34
  %47 = load ptr, ptr %1, align 8, !tbaa !96
  %48 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %47, i64 noundef %40)
          to label %49 unwind label %102, !prof !167

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  store ptr %50, ptr %6, align 8, !tbaa !88
  store i8 58, ptr %50, align 8, !tbaa !93
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  store i64 1, ptr %51, align 8, !tbaa !91
  %52 = getelementptr inbounds i8, ptr %6, i64 17
  store i8 0, ptr %52, align 1, !tbaa !93
  %53 = load i64, ptr %36, align 8, !tbaa !91
  %54 = icmp eq i64 %53, 4611686018427387903
  br i1 %54, label %55, label %57, !prof !162

55:                                               ; preds = %49
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #29
          to label %56 unwind label %104

56:                                               ; preds = %55
  unreachable

57:                                               ; preds = %49
  %58 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull %50, i64 noundef 1)
          to label %59 unwind label %104, !prof !167

59:                                               ; preds = %57
  %60 = load ptr, ptr %6, align 8, !tbaa !96
  %61 = icmp eq ptr %60, %50
  br i1 %61, label %62, label %65, !prof !167

62:                                               ; preds = %59
  %63 = load i64, ptr %51, align 8, !tbaa !91
  %64 = icmp ult i64 %63, 16
  call void @llvm.assume(i1 %64)
  br label %66

65:                                               ; preds = %59
  call void @_ZdlPv(ptr noundef %60) #26
  br label %66

66:                                               ; preds = %62, %65
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  %67 = load ptr, ptr %7, align 8, !tbaa !94
  %68 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !95
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %69, i64 -1
  %71 = icmp eq ptr %67, %70
  br i1 %71, label %93, label %72, !prof !168

72:                                               ; preds = %66
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %67, i64 0, i32 2
  store ptr %73, ptr %67, align 8, !tbaa !88
  %74 = load ptr, ptr %5, align 8, !tbaa !96
  %75 = load i64, ptr %36, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  store i64 %75, ptr %3, align 8, !tbaa !163
  %76 = icmp ugt i64 %75, 15
  br i1 %76, label %77, label %81, !prof !164

77:                                               ; preds = %72
  %78 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %79 unwind label %102

79:                                               ; preds = %77
  store ptr %78, ptr %67, align 8, !tbaa !96
  %80 = load i64, ptr %3, align 8, !tbaa !163
  store i64 %80, ptr %73, align 8, !tbaa !93
  br label %81

81:                                               ; preds = %79, %72
  %82 = load ptr, ptr %67, align 8, !tbaa !96
  switch i64 %75, label %85 [
    i64 1, label %83
    i64 0, label %86
  ], !prof !165

83:                                               ; preds = %81
  %84 = load i8, ptr %74, align 1, !tbaa !93
  store i8 %84, ptr %82, align 1, !tbaa !93
  br label %86

85:                                               ; preds = %81
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %82, ptr align 1 %74, i64 %75, i1 false), !prof !169
  br label %86

86:                                               ; preds = %85, %83, %81
  %87 = load i64, ptr %3, align 8, !tbaa !163
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %67, i64 0, i32 1
  store i64 %87, ptr %88, align 8, !tbaa !91
  %89 = load ptr, ptr %67, align 8, !tbaa !96
  %90 = getelementptr inbounds i8, ptr %89, i64 %87
  store i8 0, ptr %90, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  %91 = load ptr, ptr %7, align 8, !tbaa !94
  %92 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %91, i64 1
  store ptr %92, ptr %7, align 8, !tbaa !94
  br label %94

93:                                               ; preds = %66
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %94 unwind label %102

94:                                               ; preds = %86, %93
  %95 = load ptr, ptr %5, align 8, !tbaa !96
  %96 = icmp eq ptr %95, %21
  br i1 %96, label %97, label %100, !prof !167

97:                                               ; preds = %94
  %98 = load i64, ptr %36, align 8, !tbaa !91
  %99 = icmp ult i64 %98, 16
  call void @llvm.assume(i1 %99)
  br label %101

100:                                              ; preds = %94
  call void @_ZdlPv(ptr noundef %95) #26
  br label %101

101:                                              ; preds = %97, %100
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  ret void

102:                                              ; preds = %93, %77, %46, %44
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %113

104:                                              ; preds = %57, %55
  %105 = landingpad { ptr, i32 }
          cleanup
  %106 = load ptr, ptr %6, align 8, !tbaa !96
  %107 = icmp eq ptr %106, %50
  br i1 %107, label %108, label %111

108:                                              ; preds = %104
  %109 = load i64, ptr %51, align 8, !tbaa !91
  %110 = icmp ult i64 %109, 16
  call void @llvm.assume(i1 %110)
  br label %112

111:                                              ; preds = %104
  call void @_ZdlPv(ptr noundef %106) #26
  br label %112

112:                                              ; preds = %111, %108
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  br label %113

113:                                              ; preds = %112, %102
  %114 = phi { ptr, i32 } [ %103, %102 ], [ %105, %112 ]
  %115 = load ptr, ptr %5, align 8, !tbaa !96
  %116 = icmp eq ptr %115, %21
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i64, ptr %36, align 8, !tbaa !91
  %119 = icmp ult i64 %118, 16
  call void @llvm.assume(i1 %119)
  br label %121

120:                                              ; preds = %113
  call void @_ZdlPv(ptr noundef %115) #26
  br label %121

121:                                              ; preds = %120, %117
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  resume { ptr, i32 } %114
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6dealii9LogStream3popEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !158 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  %6 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 3
  %12 = icmp ne ptr %5, null
  %13 = sext i1 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = shl nsw i64 %14, 4
  %16 = load ptr, ptr %2, align 8, !tbaa !101
  %17 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  %19 = ptrtoint ptr %16 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 5
  %23 = add nsw i64 %15, %22
  %24 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !106
  %26 = load ptr, ptr %3, align 8, !tbaa !101
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 5
  %31 = add nsw i64 %23, %30
  %32 = icmp ugt i64 %31, 1
  br i1 %32, label %33, label %46, !prof !167

33:                                               ; preds = %1
  %34 = icmp eq ptr %16, %18
  br i1 %34, label %45, label %35, !prof !162

35:                                               ; preds = %33
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 -1
  store ptr %36, ptr %2, align 8, !tbaa !94
  %37 = load ptr, ptr %36, align 8, !tbaa !96
  %38 = getelementptr %"class.std::__cxx11::basic_string", ptr %16, i64 -1, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %44, !prof !167

40:                                               ; preds = %35
  %41 = getelementptr %"class.std::__cxx11::basic_string", ptr %16, i64 -1, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !91
  %43 = icmp ult i64 %42, 16
  tail call void @llvm.assume(i1 %43)
  br label %46

44:                                               ; preds = %35
  tail call void @_ZdlPv(ptr noundef %37) #26
  br label %46

45:                                               ; preds = %33
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_pop_back_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %46

46:                                               ; preds = %45, %44, %40, %1
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN6dealii9LogStream13depth_consoleEj(ptr nocapture noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1) local_unnamed_addr #14 align 2 !prof !170 {
  %3 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !78
  store i32 %1, ptr %3, align 8, !tbaa !78
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_ZN6dealii9LogStream10depth_fileEj(ptr nocapture noundef nonnull align 8 dereferenceable(192) %0, i32 noundef %1) local_unnamed_addr #14 align 2 !prof !117 {
  %3 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !79
  store i32 %1, ptr %3, align 4, !tbaa !79
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6dealii9LogStream16threshold_doubleEd(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(192) %0, double noundef %1) local_unnamed_addr #11 align 2 !prof !117 {
  %3 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 8
  store double %1, ptr %3, align 8, !tbaa !171
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN6dealii9LogStream18log_execution_timeEb(ptr nocapture noundef nonnull align 8 dereferenceable(192) %0, i1 noundef zeroext %1) local_unnamed_addr #14 align 2 !prof !117 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !80, !range !131, !noundef !132
  %6 = icmp ne i8 %5, 0
  store i8 %3, ptr %4, align 8, !tbaa !80
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN6dealii9LogStream20log_time_differencesEb(ptr nocapture noundef nonnull align 8 dereferenceable(192) %0, i1 noundef zeroext %1) local_unnamed_addr #14 align 2 !prof !117 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 6
  %5 = load i8, ptr %4, align 1, !tbaa !81, !range !131, !noundef !132
  %6 = icmp ne i8 %5, 0
  store i8 %3, ptr %4, align 1, !tbaa !81
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @_ZN6dealii9LogStream13log_thread_idEb(ptr nocapture noundef nonnull align 8 dereferenceable(192) %0, i1 noundef zeroext %1) local_unnamed_addr #14 align 2 !prof !117 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.dealii::LogStream", ptr %0, i64 0, i32 9
  %5 = load i8, ptr %4, align 8, !tbaa !137, !range !131, !noundef !132
  %6 = icmp ne i8 %5, 0
  store i8 %3, ptr %4, align 8, !tbaa !137
  ret i1 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK6dealii9LogStream18memory_consumptionEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !annotation !53 {
  %2 = alloca %"struct.std::_Deque_iterator", align 8
  %3 = alloca %"struct.std::_Deque_iterator", align 8
  %4 = alloca %"class.std::stack", align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #25
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %4, i64 0, i32 2
  %6 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %4, i64 0, i32 2, i32 1
  %7 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %4, i64 0, i32 2, i32 2
  %8 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %4, i64 0, i32 2, i32 3
  %9 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %4, i64 0, i32 3
  %10 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %4, i64 0, i32 3, i32 1
  %11 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %4, i64 0, i32 3, i32 2
  %12 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %4, i64 0, i32 3, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %4, i8 0, i64 80, i1 false)
  call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %4, i64 noundef 0)
  br label %13

13:                                               ; preds = %46, %1
  %14 = phi i32 [ 192, %1 ], [ %52, %46 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !107
  %16 = load ptr, ptr %8, align 8, !tbaa !107
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = ashr exact i64 %19, 3
  %21 = icmp ne ptr %15, null
  %22 = sext i1 %21 to i64
  %23 = add nsw i64 %20, %22
  %24 = shl nsw i64 %23, 4
  %25 = load ptr, ptr %9, align 8, !tbaa !101
  %26 = load ptr, ptr %10, align 8, !tbaa !105
  %27 = ptrtoint ptr %25 to i64
  %28 = ptrtoint ptr %26 to i64
  %29 = sub i64 %27, %28
  %30 = ashr exact i64 %29, 5
  %31 = add nsw i64 %24, %30
  %32 = load ptr, ptr %7, align 8, !tbaa !106
  %33 = load ptr, ptr %5, align 8, !tbaa !101
  %34 = ptrtoint ptr %32 to i64
  %35 = ptrtoint ptr %33 to i64
  %36 = sub i64 %34, %35
  %37 = ashr exact i64 %36, 5
  %38 = sub nsw i64 0, %37
  %39 = icmp eq i64 %31, %38
  br i1 %39, label %53, label %40

40:                                               ; preds = %13
  %41 = icmp eq ptr %25, %26
  br i1 %41, label %42, label %46

42:                                               ; preds = %40
  %43 = getelementptr inbounds ptr, ptr %15, i64 -1
  %44 = load ptr, ptr %43, align 8, !tbaa !130
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %44, i64 16
  br label %46

46:                                               ; preds = %40, %42
  %47 = phi ptr [ %45, %42 ], [ %25, %40 ]
  %48 = getelementptr %"class.std::__cxx11::basic_string", ptr %47, i64 -1, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !91
  %50 = trunc i64 %49 to i32
  %51 = add i32 %14, 32
  %52 = add i32 %51, %50
  call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #25
  br label %13, !llvm.loop !172

53:                                               ; preds = %13
  %54 = load ptr, ptr %6, align 8, !tbaa !105, !noalias !173
  %55 = load ptr, ptr %11, align 8, !tbaa !106, !noalias !176
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3)
  store ptr %33, ptr %2, align 8, !tbaa !101
  %56 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  store ptr %54, ptr %56, align 8, !tbaa !105
  %57 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 2
  store ptr %32, ptr %57, align 8, !tbaa !106
  %58 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  store ptr %16, ptr %58, align 8, !tbaa !107
  store ptr %25, ptr %3, align 8, !tbaa !101
  %59 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 1
  store ptr %26, ptr %59, align 8, !tbaa !105
  %60 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 2
  store ptr %55, ptr %60, align 8, !tbaa !106
  %61 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %3, i64 0, i32 3
  store ptr %15, ptr %61, align 8, !tbaa !107
  invoke void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %2, ptr noundef nonnull %3)
          to label %65 unwind label %62

62:                                               ; preds = %53
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  call void @__clang_call_terminate(ptr %64) #27
  unreachable

65:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3)
  call void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %4) #25
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #25
  ret i32 %14
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !179
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE8_M_eraseEPSt13_Rb_tree_nodeISB_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !180
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %5, i64 0, i32 1, i32 0, i64 16
  tail call void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #25
  tail call void @_ZdlPv(ptr noundef %5) #26
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %4, !llvm.loop !181

12:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 !prof !170 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = icmp eq ptr %2, null
  br i1 %3, label %18, label %4, !prof !183

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !184
  %7 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !185
  %9 = getelementptr inbounds ptr, ptr %8, i64 1
  %10 = icmp ult ptr %6, %9
  br i1 %10, label %11, label %16, !prof !186

11:                                               ; preds = %4, %11
  %12 = phi ptr [ %14, %11 ], [ %6, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !130
  tail call void @_ZdlPv(ptr noundef %13) #26
  %14 = getelementptr inbounds ptr, ptr %12, i64 1
  %15 = icmp ult ptr %12, %8
  br i1 %15, label %11, label %16, !prof !187, !llvm.loop !188

16:                                               ; preds = %11, %4
  %17 = load ptr, ptr %0, align 8, !tbaa !182
  tail call void @_ZdlPv(ptr noundef %17) #26
  br label %18

18:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_destroy_data_auxESt15_Deque_iteratorIS5_RS5_PS5_ESB_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !170 {
  %4 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  %6 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 3
  %7 = getelementptr inbounds ptr, ptr %5, i64 1
  %8 = load ptr, ptr %6, align 8, !tbaa !107
  %9 = icmp ult ptr %7, %8
  br i1 %9, label %19, label %14, !prof !183

10:                                               ; preds = %33
  %11 = getelementptr inbounds ptr, ptr %20, i64 1
  %12 = load ptr, ptr %6, align 8, !tbaa !107
  %13 = icmp ult ptr %11, %12
  br i1 %13, label %19, label %14, !prof !183, !llvm.loop !189

14:                                               ; preds = %10, %3
  %15 = phi ptr [ %8, %3 ], [ %12, %10 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !107
  %17 = icmp eq ptr %16, %15
  %18 = load ptr, ptr %1, align 8, !tbaa !101
  br i1 %17, label %72, label %37, !prof !190

19:                                               ; preds = %3, %10
  %20 = phi ptr [ %11, %10 ], [ %7, %3 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  br label %22

22:                                               ; preds = %19, %33
  %23 = phi ptr [ %21, %19 ], [ %35, %33 ]
  %24 = phi i64 [ 0, %19 ], [ %34, %33 ]
  %25 = load ptr, ptr %23, align 8, !tbaa !96
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 2
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %23, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !91
  %31 = icmp ult i64 %30, 16
  tail call void @llvm.assume(i1 %31)
  br label %33

32:                                               ; preds = %22
  tail call void @_ZdlPv(ptr noundef %25) #26
  br label %33

33:                                               ; preds = %32, %28
  %34 = add nuw nsw i64 %24, 32
  %35 = getelementptr inbounds i8, ptr %21, i64 %34
  %36 = icmp eq i64 %34, 512
  br i1 %36, label %10, label %22, !llvm.loop !191

37:                                               ; preds = %14
  %38 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !106
  %40 = icmp eq ptr %18, %39
  br i1 %40, label %54, label %41

41:                                               ; preds = %37, %51
  %42 = phi ptr [ %52, %51 ], [ %18, %37 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !96
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 0, i32 2
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !91
  %49 = icmp ult i64 %48, 16
  tail call void @llvm.assume(i1 %49)
  br label %51

50:                                               ; preds = %41
  tail call void @_ZdlPv(ptr noundef %43) #26
  br label %51

51:                                               ; preds = %50, %46
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %42, i64 1
  %53 = icmp eq ptr %52, %39
  br i1 %53, label %54, label %41, !llvm.loop !191

54:                                               ; preds = %51, %37
  %55 = getelementptr inbounds %"struct.std::_Deque_iterator", ptr %2, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !105
  %57 = load ptr, ptr %2, align 8, !tbaa !101
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %88, label %59

59:                                               ; preds = %54, %69
  %60 = phi ptr [ %70, %69 ], [ %56, %54 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !96
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %60, i64 0, i32 2
  %63 = icmp eq ptr %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %60, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !91
  %67 = icmp ult i64 %66, 16
  tail call void @llvm.assume(i1 %67)
  br label %69

68:                                               ; preds = %59
  tail call void @_ZdlPv(ptr noundef %61) #26
  br label %69

69:                                               ; preds = %68, %64
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %60, i64 1
  %71 = icmp eq ptr %70, %57
  br i1 %71, label %88, label %59, !llvm.loop !191

72:                                               ; preds = %14
  %73 = load ptr, ptr %2, align 8, !tbaa !101
  %74 = icmp eq ptr %18, %73
  br i1 %74, label %88, label %75, !prof !190

75:                                               ; preds = %72, %85
  %76 = phi ptr [ %86, %85 ], [ %18, %72 ]
  %77 = load ptr, ptr %76, align 8, !tbaa !96
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %76, i64 0, i32 2
  %79 = icmp eq ptr %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %76, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !91
  %83 = icmp ult i64 %82, 16
  tail call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %75
  tail call void @_ZdlPv(ptr noundef %77) #26
  br label %85

85:                                               ; preds = %84, %80
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %76, i64 1
  %87 = icmp eq ptr %86, %73
  br i1 %87, label %88, label %75, !prof !190, !llvm.loop !191

88:                                               ; preds = %69, %85, %54, %72
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6detail12shared_countD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !150
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %2, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !145
  %7 = add nsw i64 %6, -1
  store i64 %7, ptr %5, align 8, !tbaa !145
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = load ptr, ptr %2, align 8, !tbaa !97
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %13 unwind label %23

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %2, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !147
  %16 = add nsw i64 %15, -1
  store i64 %16, ptr %14, align 8, !tbaa !147
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load ptr, ptr %2, align 8, !tbaa !97
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %22 unwind label %23

22:                                               ; preds = %13, %4, %18, %1
  ret void

23:                                               ; preds = %18, %9
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #27
  unreachable
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !192 {
  %3 = alloca %"class.std::allocator.22", align 1
  %4 = lshr i64 %1, 4
  %5 = add nuw nsw i64 %4, 1
  %6 = tail call i64 @llvm.umax.i64(i64 %4, i64 5)
  %7 = add nuw nsw i64 %6, 3
  %8 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  store i64 %7, ptr %8, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #25
  %9 = call noundef ptr @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %3, i64 noundef %7, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #25
  store ptr %9, ptr %0, align 8, !tbaa !182
  %10 = load i64, ptr %8, align 8, !tbaa !193
  %11 = sub i64 %10, %5
  %12 = lshr i64 %11, 1
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  %14 = getelementptr inbounds ptr, ptr %13, i64 %5
  invoke void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %13, ptr noundef nonnull %14)
          to label %23 unwind label %15, !prof !194

15:                                               ; preds = %2
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  %18 = call ptr @__cxa_begin_catch(ptr %17) #25
  %19 = load ptr, ptr %0, align 8, !tbaa !182
  call void @_ZdlPv(ptr noundef %19) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #29
          to label %42 unwind label %20

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %22 unwind label %39

22:                                               ; preds = %20
  resume { ptr, i32 } %21

23:                                               ; preds = %2
  %24 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %25 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  store ptr %13, ptr %25, align 8, !tbaa !107
  %26 = load ptr, ptr %13, align 8, !tbaa !130
  %27 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !105
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 16
  %29 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !106
  %30 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %31 = getelementptr inbounds ptr, ptr %13, i64 %4
  %32 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !107
  %33 = load ptr, ptr %31, align 8, !tbaa !130
  %34 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  store ptr %33, ptr %34, align 8, !tbaa !105
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 16
  %36 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  store ptr %35, ptr %36, align 8, !tbaa !106
  store ptr %26, ptr %24, align 8, !tbaa !195
  %37 = and i64 %1, 15
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %33, i64 %37
  store ptr %38, ptr %30, align 8, !tbaa !94
  ret void

39:                                               ; preds = %20
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #27
  unreachable

42:                                               ; preds = %15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !192 {
  %4 = icmp ult ptr %1, %2
  br i1 %4, label %5, label %25, !prof !186

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %9, %8 ], [ %1, %3 ]
  %7 = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28
          to label %8 unwind label %11, !prof !194

8:                                                ; preds = %5
  store ptr %7, ptr %6, align 8, !tbaa !130
  %9 = getelementptr inbounds ptr, ptr %6, i64 1
  %10 = icmp ult ptr %9, %2
  br i1 %10, label %5, label %25, !prof !187, !llvm.loop !196

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #25
  %15 = icmp ugt ptr %6, %1
  br i1 %15, label %16, label %21

16:                                               ; preds = %11, %16
  %17 = phi ptr [ %19, %16 ], [ %1, %11 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !130
  tail call void @_ZdlPv(ptr noundef %18) #26
  %19 = getelementptr inbounds ptr, ptr %17, i64 1
  %20 = icmp ult ptr %19, %6
  br i1 %20, label %16, label %21, !llvm.loop !188

21:                                               ; preds = %16, %11
  invoke void @__cxa_rethrow() #29
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
  tail call void @__clang_call_terminate(ptr %28) #27
  unreachable

29:                                               ; preds = %21
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 !prof !192 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !197

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #29
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #28
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #18

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = icmp ne ptr %6, null
  %14 = sext i1 %13 to i64
  %15 = add nsw i64 %12, %14
  %16 = shl nsw i64 %15, 4
  %17 = load ptr, ptr %3, align 8, !tbaa !101
  %18 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !105
  %20 = ptrtoint ptr %17 to i64
  %21 = ptrtoint ptr %19 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 5
  %24 = add nsw i64 %16, %23
  %25 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !106
  %27 = load ptr, ptr %4, align 8, !tbaa !101
  %28 = ptrtoint ptr %26 to i64
  %29 = ptrtoint ptr %27 to i64
  %30 = sub i64 %28, %29
  %31 = ashr exact i64 %30, 5
  %32 = add nsw i64 %24, %31
  %33 = icmp eq i64 %32, 288230376151711743
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

35:                                               ; preds = %2
  %36 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !193
  %38 = load ptr, ptr %0, align 8, !tbaa !182
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %9, %39
  %41 = ashr exact i64 %40, 3
  %42 = sub i64 %37, %41
  %43 = icmp ult i64 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %45

45:                                               ; preds = %35, %44
  %46 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28
  %47 = load ptr, ptr %5, align 8, !tbaa !185
  %48 = getelementptr inbounds ptr, ptr %47, i64 1
  store ptr %46, ptr %48, align 8, !tbaa !130
  %49 = load ptr, ptr %3, align 8, !tbaa !94
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %49, i64 0, i32 2
  store ptr %50, ptr %49, align 8, !tbaa !88
  %51 = load ptr, ptr %1, align 8, !tbaa !96
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %53 = icmp eq ptr %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !91
  %57 = icmp ult i64 %56, 16
  tail call void @llvm.assume(i1 %57)
  %58 = add nuw nsw i64 %56, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %50, ptr noundef nonnull align 8 dereferenceable(1) %52, i64 %58, i1 false)
  br label %61

59:                                               ; preds = %45
  store ptr %51, ptr %49, align 8, !tbaa !96
  %60 = load i64, ptr %52, align 8, !tbaa !93
  store i64 %60, ptr %50, align 8, !tbaa !93
  br label %61

61:                                               ; preds = %54, %59
  %62 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !91
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %49, i64 0, i32 1
  store i64 %63, ptr %64, align 8, !tbaa !91
  store ptr %52, ptr %1, align 8, !tbaa !96
  store i64 0, ptr %62, align 8, !tbaa !91
  store i8 0, ptr %52, align 8, !tbaa !93
  %65 = load ptr, ptr %5, align 8, !tbaa !185
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  store ptr %66, ptr %5, align 8, !tbaa !107
  %67 = load ptr, ptr %66, align 8, !tbaa !130
  store ptr %67, ptr %18, align 8, !tbaa !105
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %67, i64 16
  %69 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  store ptr %68, ptr %69, align 8, !tbaa !106
  store ptr %67, ptr %3, align 8, !tbaa !94
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #18

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %4 = alloca %"class.std::allocator.22", align 1
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !185
  %7 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !184
  %9 = ptrtoint ptr %6 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 3
  %13 = add nsw i64 %12, 1
  %14 = add i64 %13, %1
  %15 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !163
  %17 = shl i64 %14, 1
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %3
  %20 = load ptr, ptr %0, align 8, !tbaa !182
  %21 = sub i64 %16, %14
  %22 = lshr i64 %21, 1
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = select i1 %2, i64 %1, i64 0
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = icmp ult ptr %25, %8
  %27 = getelementptr inbounds ptr, ptr %6, i64 1
  %28 = icmp eq ptr %27, %8
  br i1 %26, label %29, label %33

29:                                               ; preds = %19
  br i1 %28, label %61, label %30

30:                                               ; preds = %29
  %31 = ptrtoint ptr %27 to i64
  %32 = sub i64 %31, %10
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %25, ptr nonnull align 8 %8, i64 %32, i1 false)
  br label %61

33:                                               ; preds = %19
  br i1 %28, label %61, label %34

34:                                               ; preds = %33
  %35 = ptrtoint ptr %27 to i64
  %36 = sub i64 %35, %10
  %37 = ashr exact i64 %36, 3
  %38 = getelementptr inbounds ptr, ptr %25, i64 %13
  %39 = sub nsw i64 0, %37
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %40, ptr align 8 %8, i64 %36, i1 false)
  br label %61

41:                                               ; preds = %3
  %42 = tail call i64 @llvm.umax.i64(i64 %16, i64 %1)
  %43 = add i64 %16, 2
  %44 = add i64 %43, %42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #25
  %45 = call noundef ptr @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %44, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #25
  %46 = sub i64 %44, %14
  %47 = lshr i64 %46, 1
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47
  %49 = select i1 %2, i64 %1, i64 0
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  %51 = load ptr, ptr %7, align 8, !tbaa !184
  %52 = load ptr, ptr %5, align 8, !tbaa !185
  %53 = getelementptr inbounds ptr, ptr %52, i64 1
  %54 = icmp eq ptr %53, %51
  br i1 %54, label %59, label %55

55:                                               ; preds = %41
  %56 = ptrtoint ptr %53 to i64
  %57 = ptrtoint ptr %51 to i64
  %58 = sub i64 %56, %57
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %50, ptr align 8 %51, i64 %58, i1 false)
  br label %59

59:                                               ; preds = %41, %55
  %60 = load ptr, ptr %0, align 8, !tbaa !182
  call void @_ZdlPv(ptr noundef %60) #26
  store ptr %45, ptr %0, align 8, !tbaa !182
  store i64 %44, ptr %15, align 8, !tbaa !193
  br label %61

61:                                               ; preds = %34, %33, %30, %29, %59
  %62 = phi ptr [ %50, %59 ], [ %25, %29 ], [ %25, %30 ], [ %25, %33 ], [ %25, %34 ]
  store ptr %62, ptr %7, align 8, !tbaa !107
  %63 = load ptr, ptr %62, align 8, !tbaa !130
  %64 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !105
  %65 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %63, i64 16
  %66 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  store ptr %65, ptr %66, align 8, !tbaa !106
  %67 = getelementptr inbounds ptr, ptr %62, i64 %13
  %68 = getelementptr inbounds ptr, ptr %67, i64 -1
  store ptr %68, ptr %5, align 8, !tbaa !107
  %69 = load ptr, ptr %68, align 8, !tbaa !130
  %70 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !105
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %69, i64 16
  %72 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  store ptr %71, ptr %72, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #16

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #10 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESM_IJEEEEESt17_Rb_tree_iteratorISB_ESt23_Rb_tree_const_iteratorISB_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %6 = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1
  %8 = load i64, ptr %3, align 8, !tbaa !130
  %9 = inttoptr i64 %8 to ptr
  %10 = load i32, ptr %9, align 4, !tbaa !138
  store i32 %10, ptr %7, align 8, !tbaa !198
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  %12 = invoke { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %13 unwind label %32

13:                                               ; preds = %5
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = extractvalue { ptr, ptr } %12, 1
  %16 = icmp eq ptr %15, null
  br i1 %16, label %59, label %17

17:                                               ; preds = %13
  %18 = icmp ne ptr %14, null
  %19 = getelementptr inbounds i8, ptr %0, i64 8
  %20 = icmp eq ptr %19, %15
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %15, i64 0, i32 1
  %24 = load i32, ptr %7, align 4, !tbaa !138
  %25 = load i32, ptr %23, align 4, !tbaa !138
  %26 = icmp ult i32 %24, %25
  br label %27

27:                                               ; preds = %17, %22
  %28 = phi i1 [ true, %17 ], [ %26, %22 ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %28, ptr noundef nonnull %6, ptr noundef nonnull %15, ptr noundef nonnull align 8 dereferenceable(32) %19) #25
  %29 = getelementptr inbounds i8, ptr %0, i64 40
  %30 = load i64, ptr %29, align 8, !tbaa !87
  %31 = add i64 %30, 1
  store i64 %31, ptr %29, align 8, !tbaa !87
  br label %59

32:                                               ; preds = %5
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 16
  %35 = load ptr, ptr %34, align 8, !tbaa !150
  %36 = icmp eq ptr %35, null
  br i1 %36, label %58, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %35, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !145
  %40 = add nsw i64 %39, -1
  store i64 %40, ptr %38, align 8, !tbaa !145
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load ptr, ptr %35, align 8, !tbaa !97
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %46 unwind label %55

46:                                               ; preds = %42
  %47 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %35, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !147
  %49 = add nsw i64 %48, -1
  store i64 %49, ptr %47, align 8, !tbaa !147
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load ptr, ptr %35, align 8, !tbaa !97
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  invoke void %54(ptr noundef nonnull align 8 dereferenceable(24) %35)
          to label %58 unwind label %55

55:                                               ; preds = %51, %42
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #27
  unreachable

58:                                               ; preds = %32, %37, %46, %51
  tail call void @_ZdlPv(ptr noundef %6) #26
  resume { ptr, i32 } %33

59:                                               ; preds = %13, %27
  %60 = phi ptr [ null, %27 ], [ %6, %13 ]
  %61 = phi ptr [ %6, %27 ], [ %14, %13 ]
  %62 = icmp eq ptr %60, null
  br i1 %62, label %89, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %60, i64 0, i32 1, i32 0, i64 16
  %65 = load ptr, ptr %64, align 8, !tbaa !150
  %66 = icmp eq ptr %65, null
  br i1 %66, label %88, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %65, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !145
  %70 = add nsw i64 %69, -1
  store i64 %70, ptr %68, align 8, !tbaa !145
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load ptr, ptr %65, align 8, !tbaa !97
  %74 = getelementptr inbounds ptr, ptr %73, i64 2
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(24) %65)
          to label %76 unwind label %85

76:                                               ; preds = %72
  %77 = getelementptr inbounds %"class.boost::detail::sp_counted_base", ptr %65, i64 0, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !147
  %79 = add nsw i64 %78, -1
  store i64 %79, ptr %77, align 8, !tbaa !147
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load ptr, ptr %65, align 8, !tbaa !97
  %83 = getelementptr inbounds ptr, ptr %82, i64 3
  %84 = load ptr, ptr %83, align 8
  invoke void %84(ptr noundef nonnull align 8 dereferenceable(24) %65)
          to label %88 unwind label %85

85:                                               ; preds = %81, %72
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  tail call void @__clang_call_terminate(ptr %87) #27
  unreachable

88:                                               ; preds = %63, %67, %76, %81
  tail call void @_ZdlPv(ptr noundef %60) #26
  br label %89

89:                                               ; preds = %59, %88
  ret ptr %61
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #10 comdat align 2 !prof !170 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %21, !prof !190

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !87
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %17, label %10, !prof !190

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !138
  %15 = load i32, ptr %2, align 4, !tbaa !138
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %66, label %17

17:                                               ; preds = %10, %6
  %18 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %19 = extractvalue { ptr, ptr } %18, 0
  %20 = extractvalue { ptr, ptr } %18, 1
  br label %66

21:                                               ; preds = %3
  %22 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %23 = load i32, ptr %2, align 4, !tbaa !138
  %24 = load i32, ptr %22, align 4, !tbaa !138
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = getelementptr inbounds i8, ptr %0, i64 24
  %28 = load ptr, ptr %27, align 8, !tbaa !130
  %29 = icmp eq ptr %28, %1
  br i1 %29, label %66, label %30

30:                                               ; preds = %26
  %31 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %1) #30
  %32 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !138
  %34 = icmp ult i32 %33, %23
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %31, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !179
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, ptr null, ptr %1
  %40 = select i1 %38, ptr %31, ptr %1
  br label %66

41:                                               ; preds = %30
  %42 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %43 = extractvalue { ptr, ptr } %42, 0
  %44 = extractvalue { ptr, ptr } %42, 1
  br label %66

45:                                               ; preds = %21
  %46 = icmp ult i32 %24, %23
  br i1 %46, label %47, label %66

47:                                               ; preds = %45
  %48 = getelementptr inbounds i8, ptr %0, i64 32
  %49 = load ptr, ptr %48, align 8, !tbaa !130
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %1) #30
  %53 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !138
  %55 = icmp ult i32 %23, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !179
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, ptr null, ptr %52
  %61 = select i1 %59, ptr %1, ptr %52
  br label %66

62:                                               ; preds = %51
  %63 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %64 = extractvalue { ptr, ptr } %63, 0
  %65 = extractvalue { ptr, ptr } %63, 1
  br label %66

66:                                               ; preds = %45, %62, %47, %56, %41, %26, %35, %10, %17
  %67 = phi ptr [ %19, %17 ], [ null, %10 ], [ %43, %41 ], [ %28, %26 ], [ %39, %35 ], [ %64, %62 ], [ null, %47 ], [ %60, %56 ], [ %1, %45 ]
  %68 = phi ptr [ %20, %17 ], [ %12, %10 ], [ %44, %41 ], [ %28, %26 ], [ %40, %35 ], [ %65, %62 ], [ %49, %47 ], [ %61, %56 ], [ null, %45 ]
  %69 = insertvalue { ptr, ptr } poison, ptr %67, 0
  %70 = insertvalue { ptr, ptr } %69, ptr %68, 1
  ret { ptr, ptr } %70
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #10 comdat align 2 !prof !170 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !130
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7, !prof !190

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %16, %7 ], [ %5, %2 ]
  %9 = load i32, ptr %1, align 4, !tbaa !138
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %8, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !138
  %12 = icmp ult i32 %9, %11
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %8, i64 0, i32 2
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %8, i64 0, i32 3
  %15 = select i1 %12, ptr %13, ptr %14
  %16 = load ptr, ptr %15, align 8, !tbaa !130
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %7, !prof !190, !llvm.loop !200

18:                                               ; preds = %7, %2
  %19 = phi ptr [ %4, %2 ], [ %8, %7 ]
  %20 = phi i1 [ true, %2 ], [ %12, %7 ]
  %21 = phi ptr [ %5, %2 ], [ %16, %7 ]
  br i1 %20, label %22, label %28, !prof !190

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %0, i64 24
  %24 = load ptr, ptr %23, align 8, !tbaa !85
  %25 = icmp eq ptr %19, %24
  br i1 %25, label %36, label %26, !prof !190

26:                                               ; preds = %22
  %27 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %19) #30
  br label %28

28:                                               ; preds = %26, %18
  %29 = phi ptr [ %27, %26 ], [ %19, %18 ]
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !138
  %32 = load i32, ptr %1, align 4, !tbaa !138
  %33 = icmp ult i32 %31, %32
  %34 = select i1 %33, ptr %21, ptr %29
  %35 = select i1 %33, ptr %19, ptr null
  br label %36

36:                                               ; preds = %28, %22
  %37 = phi ptr [ %21, %22 ], [ %34, %28 ]
  %38 = phi ptr [ %19, %22 ], [ %35, %28 ]
  %39 = insertvalue { ptr, ptr } poison, ptr %37, 0
  %40 = insertvalue { ptr, ptr } %39, ptr %38, 1
  ret { ptr, ptr } %40
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #19

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6detail15sp_counted_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #15 comdat align 2 !prof !117 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #20 comdat align 2 !prof !117 {
  tail call void @_ZdlPv(ptr noundef %0) #26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE7disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 !prof !117 {
  %2 = getelementptr inbounds %"class.boost::detail::sp_counted_impl_p", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !97
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(112) %3) #25
  br label %9

9:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6detail15sp_counted_base7destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 !prof !201 {
  %2 = load ptr, ptr %0, align 8, !tbaa !97
  %3 = getelementptr inbounds ptr, ptr %2, i64 1
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(24) %0) #25, !prof !202
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEE11get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #15 comdat align 2 !prof !117 {
  ret ptr null
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost6detail15sp_counted_baseD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #15 comdat align 2 !prof !117 {
  tail call void @llvm.trap() #27
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #21

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_M_push_back_auxIJRKS5_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !107
  %8 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 3
  %14 = icmp ne ptr %7, null
  %15 = sext i1 %14 to i64
  %16 = add nsw i64 %13, %15
  %17 = shl nsw i64 %16, 4
  %18 = load ptr, ptr %4, align 8, !tbaa !101
  %19 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !105
  %21 = ptrtoint ptr %18 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 5
  %25 = add nsw i64 %17, %24
  %26 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 2, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !106
  %28 = load ptr, ptr %5, align 8, !tbaa !101
  %29 = ptrtoint ptr %27 to i64
  %30 = ptrtoint ptr %28 to i64
  %31 = sub i64 %29, %30
  %32 = ashr exact i64 %31, 5
  %33 = add nsw i64 %25, %32
  %34 = icmp eq i64 %33, 288230376151711743
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

36:                                               ; preds = %2
  %37 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !193
  %39 = load ptr, ptr %0, align 8, !tbaa !182
  %40 = ptrtoint ptr %39 to i64
  %41 = sub i64 %10, %40
  %42 = ashr exact i64 %41, 3
  %43 = sub i64 %38, %42
  %44 = icmp ult i64 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %46

46:                                               ; preds = %36, %45
  %47 = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28
  %48 = load ptr, ptr %6, align 8, !tbaa !185
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  store ptr %47, ptr %49, align 8, !tbaa !130
  %50 = load ptr, ptr %4, align 8, !tbaa !94
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 2
  store ptr %51, ptr %50, align 8, !tbaa !88
  %52 = load ptr, ptr %1, align 8, !tbaa !96
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  store i64 %54, ptr %3, align 8, !tbaa !163
  %55 = icmp ugt i64 %54, 15
  br i1 %55, label %56, label %60, !prof !164

56:                                               ; preds = %46
  %57 = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0)
          to label %58 unwind label %75

58:                                               ; preds = %56
  store ptr %57, ptr %50, align 8, !tbaa !96
  %59 = load i64, ptr %3, align 8, !tbaa !163
  store i64 %59, ptr %51, align 8, !tbaa !93
  br label %60

60:                                               ; preds = %58, %46
  %61 = load ptr, ptr %50, align 8, !tbaa !96
  switch i64 %54, label %64 [
    i64 1, label %62
    i64 0, label %65
  ], !prof !165

62:                                               ; preds = %60
  %63 = load i8, ptr %52, align 1, !tbaa !93
  store i8 %63, ptr %61, align 1, !tbaa !93
  br label %65

64:                                               ; preds = %60
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %52, i64 %54, i1 false), !prof !203
  br label %65

65:                                               ; preds = %60, %62, %64
  %66 = load i64, ptr %3, align 8, !tbaa !163
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 1
  store i64 %66, ptr %67, align 8, !tbaa !91
  %68 = load ptr, ptr %50, align 8, !tbaa !96
  %69 = getelementptr inbounds i8, ptr %68, i64 %66
  store i8 0, ptr %69, align 1, !tbaa !93
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  %70 = load ptr, ptr %6, align 8, !tbaa !185
  %71 = getelementptr inbounds ptr, ptr %70, i64 1
  store ptr %71, ptr %6, align 8, !tbaa !107
  %72 = load ptr, ptr %71, align 8, !tbaa !130
  store ptr %72, ptr %19, align 8, !tbaa !105
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 16
  %74 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  store ptr %73, ptr %74, align 8, !tbaa !106
  store ptr %72, ptr %4, align 8, !tbaa !94
  ret void

75:                                               ; preds = %56
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  %78 = call ptr @__cxa_begin_catch(ptr %77) #25
  %79 = load ptr, ptr %6, align 8, !tbaa !185
  %80 = getelementptr inbounds ptr, ptr %79, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !130
  call void @_ZdlPv(ptr noundef %81) #26
  invoke void @__cxa_rethrow() #29
          to label %88 unwind label %82

82:                                               ; preds = %75
  %83 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %84 unwind label %85

84:                                               ; preds = %82
  resume { ptr, i32 } %83

85:                                               ; preds = %82
  %86 = landingpad { ptr, i32 }
          catch ptr null
  %87 = extractvalue { ptr, i32 } %86, 0
  call void @__clang_call_terminate(ptr %87) #27
  unreachable

88:                                               ; preds = %75
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !204
  %6 = icmp eq ptr %3, %5
  br i1 %6, label %17, label %7, !prof !162

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 -1
  store ptr %8, ptr %2, align 8, !tbaa !94
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = getelementptr %"class.std::__cxx11::basic_string", ptr %3, i64 -1, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16, !prof !167

12:                                               ; preds = %7
  %13 = getelementptr %"class.std::__cxx11::basic_string", ptr %3, i64 -1, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !91
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %18

16:                                               ; preds = %7
  tail call void @_ZdlPv(ptr noundef %9) #26
  br label %18

17:                                               ; preds = %1
  tail call void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_pop_back_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %18

18:                                               ; preds = %16, %12, %17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_pop_back_auxEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %2 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  tail call void @_ZdlPv(ptr noundef %4) #26
  %5 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !185
  %7 = getelementptr inbounds ptr, ptr %6, i64 -1
  store ptr %7, ptr %5, align 8, !tbaa !107
  %8 = load ptr, ptr %7, align 8, !tbaa !130
  store ptr %8, ptr %3, align 8, !tbaa !105
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 16
  %10 = getelementptr inbounds %"struct.std::_Deque_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Deque_impl_data", ptr %0, i64 0, i32 3, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !106
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 15
  store ptr %11, ptr %2, align 8, !tbaa !94
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 15, i32 2
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 15, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !91
  %18 = icmp ult i64 %17, 16
  tail call void @llvm.assume(i1 %18)
  br label %20

19:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %12) #26
  br label %20

20:                                               ; preds = %15, %19
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_log.cc() #22 section ".text.startup" !prof !170 !PGOFuncName !205 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #25
  tail call void @_ZN6dealii9LogStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(192) @_ZN6dealii7deallogE)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN6dealii9LogStreamD2Ev, ptr nonnull @_ZN6dealii7deallogE, ptr nonnull @__dso_handle) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #22 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn }
attributes #30 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!52}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!35 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZN6dealii9LogStream10get_streamB5cxx11Ev, i64 57636}
!36 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, i64 28818}
!37 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZN6dealii9LogStream15print_line_headEv, i64 28818}
!38 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 28818}
!39 = !{ptr @_ZN6dealii9LogStreamlsEPFRSoS1_E, ptr @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm, i64 28818}
!40 = !{ptr @_ZN6dealii9LogStream15print_line_headEv, ptr @_ZN6dealii7Threads14this_thread_idEv, i64 28818}
!41 = !{ptr @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 544}
!42 = !{ptr @_ZN6dealii9LogStream4pushERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm, i64 28818}
!43 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZdlPv, i64 2}
!44 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm, ptr @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv, i64 2}
!45 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_initialize_mapEm, ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_, i64 2}
!46 = !{ptr @_ZNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_create_nodesEPPS5_S9_, ptr @_Znwm, i64 2}
!47 = !{ptr @_ZNSt15__new_allocatorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv, ptr @_Znwm, i64 2}
!48 = !{ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISB_ERS1_, ptr @_ZNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE24_M_get_insert_unique_posERS1_, i64 1}
!49 = !{ptr @_GLOBAL__sub_I_log.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!50 = !{ptr @_GLOBAL__sub_I_log.cc, ptr @__cxa_atexit, i64 2}
!51 = !{ptr @_GLOBAL__sub_I_log.cc, ptr @_ZN6dealii9LogStreamC2Ev, i64 1}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"instr_prof_hash_mismatch"}
!54 = !{!55, !61, i64 80}
!55 = !{!"_ZTSN6dealii9LogStreamE", !56, i64 0, !61, i64 80, !61, i64 88, !66, i64 96, !66, i64 100, !67, i64 104, !67, i64 105, !68, i64 112, !68, i64 120, !67, i64 128, !61, i64 136, !69, i64 144}
!56 = !{!"_ZTSSt5stackINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt5dequeIS5_SaIS5_EEE", !57, i64 0}
!57 = !{!"_ZTSSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !58, i64 0}
!58 = !{!"_ZTSSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !59, i64 0}
!59 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_Deque_implE", !60, i64 0}
!60 = !{!"_ZTSNSt11_Deque_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE16_Deque_impl_dataE", !61, i64 0, !64, i64 8, !65, i64 16, !65, i64 48}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C++ TBAA"}
!64 = !{!"long", !62, i64 0}
!65 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24}
!66 = !{!"int", !62, i64 0}
!67 = !{!"bool", !62, i64 0}
!68 = !{!"double", !62, i64 0}
!69 = !{!"_ZTSSt3mapIjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESt4lessIjESaISt4pairIKjS8_EEE", !70, i64 0}
!70 = !{!"_ZTSSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE", !71, i64 0}
!71 = !{!"_ZTSNSt8_Rb_treeIjSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEESt10_Select1stISB_ESt4lessIjESaISB_EE13_Rb_tree_implISF_Lb1EEE", !72, i64 0, !74, i64 8}
!72 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessIjEE", !73, i64 0}
!73 = !{!"_ZTSSt4lessIjE"}
!74 = !{!"_ZTSSt15_Rb_tree_header", !75, i64 0, !64, i64 32}
!75 = !{!"_ZTSSt18_Rb_tree_node_base", !76, i64 0, !61, i64 8, !61, i64 16, !61, i64 24}
!76 = !{!"_ZTSSt14_Rb_tree_color", !62, i64 0}
!77 = !{!55, !61, i64 88}
!78 = !{!55, !66, i64 96}
!79 = !{!55, !66, i64 100}
!80 = !{!55, !67, i64 104}
!81 = !{!55, !67, i64 105}
!82 = !{!55, !61, i64 136}
!83 = !{!74, !76, i64 0}
!84 = !{!74, !61, i64 8}
!85 = !{!74, !61, i64 16}
!86 = !{!74, !61, i64 24}
!87 = !{!74, !64, i64 32}
!88 = !{!89, !61, i64 0}
!89 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !61, i64 0}
!90 = !{!"VP", i32 1, i64 0, i64 5, i64 0, i64 9, i64 0, i64 2, i64 0, i64 4, i64 0}
!91 = !{!92, !64, i64 8}
!92 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !89, i64 0, !64, i64 8, !62, i64 16}
!93 = !{!62, !62, i64 0}
!94 = !{!60, !61, i64 48}
!95 = !{!60, !61, i64 64}
!96 = !{!92, !61, i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"vtable pointer", !63, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"_ZTSSt13_Ios_Fmtflags", !62, i64 0}
!101 = !{!65, !61, i64 0}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!104 = distinct !{!104, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!105 = !{!65, !61, i64 8}
!106 = !{!65, !61, i64 16}
!107 = !{!65, !61, i64 24}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!110 = distinct !{!110, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!113 = distinct !{!113, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!116 = distinct !{!116, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!117 = !{!"function_entry_count", i64 0}
!118 = !{!"function_entry_count", i64 28818}
!119 = !{!"VP", i32 0, i64 28818, i64 -1823052091915637016, i64 28818}
!120 = !{!"branch_weights", i32 28818, i32 0}
!121 = !{!122, !125, i64 64}
!122 = !{!"_ZTSNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE", !123, i64 0, !125, i64 64, !92, i64 72}
!123 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !124, i64 56}
!124 = !{!"_ZTSSt6locale", !61, i64 0}
!125 = !{!"_ZTSSt13_Ios_Openmode", !62, i64 0}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!128 = distinct !{!128, !"_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!129 = !{!"branch_weights", i32 0, i32 28818}
!130 = !{!61, !61, i64 0}
!131 = !{i8 0, i8 2}
!132 = !{}
!133 = !{!134, !64, i64 16}
!134 = !{!"_ZTSSt8ios_base", !64, i64 8, !64, i64 16, !100, i64 24, !135, i64 28, !135, i64 32, !61, i64 40, !136, i64 48, !62, i64 64, !66, i64 192, !61, i64 200, !124, i64 208}
!135 = !{!"_ZTSSt12_Ios_Iostate", !62, i64 0}
!136 = !{!"_ZTSNSt8ios_base6_WordsE", !61, i64 0, !64, i64 8}
!137 = !{!55, !67, i64 128}
!138 = !{!66, !66, i64 0}
!139 = distinct !{!139, !140, !141}
!140 = !{!"llvm.loop.mustprogress"}
!141 = !{!"llvm.loop.unroll.disable"}
!142 = !{!143, !61, i64 0}
!143 = !{!"_ZTSN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE", !61, i64 0, !144, i64 8}
!144 = !{!"_ZTSN5boost6detail12shared_countE", !61, i64 0}
!145 = !{!146, !64, i64 8}
!146 = !{!"_ZTSN5boost6detail15sp_counted_baseE", !64, i64 8, !64, i64 16}
!147 = !{!146, !64, i64 16}
!148 = !{!149, !61, i64 24}
!149 = !{!"_ZTSN5boost6detail17sp_counted_impl_pINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE", !146, i64 0, !61, i64 24}
!150 = !{!144, !61, i64 0}
!151 = !{!"branch_weights", i32 90445, i32 89937}
!152 = !{!"branch_weights", i32 89937, i32 0}
!153 = !{!154, !61, i64 232}
!154 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !134, i64 0, !61, i64 216, !62, i64 224, !67, i64 225, !61, i64 232, !61, i64 240, !61, i64 248, !61, i64 256}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!157 = distinct !{!157, !"_ZNKSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!158 = !{!"function_entry_count", i64 14409}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!161 = distinct !{!161, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!162 = !{!"branch_weights", i32 0, i32 14409}
!163 = !{!64, !64, i64 0}
!164 = !{!"branch_weights", i32 828, i32 42994}
!165 = !{!"branch_weights", i32 42637, i32 675, i32 510}
!166 = !{!"VP", i32 1, i64 14019, i64 9, i64 7490, i64 8, i64 4570, i64 5, i64 589, i64 4, i64 494}
!167 = !{!"branch_weights", i32 14409, i32 0}
!168 = !{!"branch_weights", i32 0, i32 14410}
!169 = !{!"VP", i32 1, i64 14019, i64 9, i64 7489, i64 8, i64 4570, i64 5, i64 588, i64 4, i64 493}
!170 = !{!"function_entry_count", i64 1}
!171 = !{!55, !68, i64 120}
!172 = distinct !{!172, !140, !141}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: argument 0"}
!175 = distinct !{!175, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv: argument 0"}
!178 = distinct !{!178, !"_ZNSt5dequeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv"}
!179 = !{!75, !61, i64 24}
!180 = !{!75, !61, i64 16}
!181 = distinct !{!181, !140, !141}
!182 = !{!60, !61, i64 0}
!183 = !{!"branch_weights", i32 0, i32 1}
!184 = !{!60, !61, i64 40}
!185 = !{!60, !61, i64 72}
!186 = !{!"branch_weights", i32 127, i32 1}
!187 = !{!"branch_weights", i32 1, i32 127}
!188 = distinct !{!188, !140, !141}
!189 = distinct !{!189, !140, !141}
!190 = !{!"branch_weights", i32 1, i32 0}
!191 = distinct !{!191, !140, !141}
!192 = !{!"function_entry_count", i64 2}
!193 = !{!60, !64, i64 8}
!194 = !{!"branch_weights", i32 2, i32 0}
!195 = !{!60, !61, i64 16}
!196 = distinct !{!196, !140, !141}
!197 = !{!"branch_weights", i32 0, i32 2}
!198 = !{!199, !66, i64 0}
!199 = !{!"_ZTSSt4pairIKjN5boost10shared_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEEE", !66, i64 0, !143, i64 8}
!200 = distinct !{!200, !140, !141}
!201 = !{!"function_entry_count", i64 366388}
!202 = !{!"VP", i32 0, i64 366388, i64 -3117266316314558630, i64 89680, i64 -4597867472956642998, i64 89643, i64 -1239544308416944706, i64 89610}
!203 = !{!"VP", i32 1, i64 0, i64 9, i64 0, i64 8, i64 0, i64 5, i64 0, i64 4, i64 0}
!204 = !{!60, !61, i64 56}
!205 = !{!"source/base/log.cc;_GLOBAL__sub_I_log.cc"}
