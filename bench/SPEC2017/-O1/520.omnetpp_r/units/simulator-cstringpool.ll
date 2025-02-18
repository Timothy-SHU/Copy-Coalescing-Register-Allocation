; ModuleID = 'simulator/cstringpool.cc'
source_filename = "simulator/cstringpool.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"struct.std::piecewise_construct_t" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.cStringPool = type <{ %"class.std::__cxx11::basic_string", %"class.std::map", i8, [7 x i8] }>
%"class.std::map" = type { %"class.std::_Rb_tree" }
%"class.std::_Rb_tree" = type { %"struct.std::_Rb_tree<char *, std::pair<char *const, int>, std::_Select1st<std::pair<char *const, int>>, cStringPool::strless>::_Rb_tree_impl" }
%"struct.std::_Rb_tree<char *, std::pair<char *const, int>, std::_Select1st<std::pair<char *const, int>>, cStringPool::strless>::_Rb_tree_impl" = type { %"struct.std::_Rb_tree_key_compare", %"struct.std::_Rb_tree_header" }
%"struct.std::_Rb_tree_key_compare" = type { %"struct.cStringPool::strless" }
%"struct.cStringPool::strless" = type { i8 }
%"struct.std::_Rb_tree_header" = type { %"struct.std::_Rb_tree_node_base", i64 }
%"struct.std::_Rb_tree_node_base" = type { i32, ptr, ptr, ptr }
%"struct.std::_Rb_tree_node" = type { %"struct.std::_Rb_tree_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [16 x i8] }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base" }
%"struct.std::_Head_base" = type { ptr }
%"class.std::tuple.3" = type { i8 }

$_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_ = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_ = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_ = comdat any

$_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E = comdat any

$_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_ = comdat any

$_ZSt19piecewise_construct = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [30 x i8] c"contents of stringpool \22%s\22:\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"  \22%s\22 %p, %d ref(s)\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [106 x i8] c"ERROR: cStringPool::get(\22%s\22) invoked outside main() -- please do not use cStringPool from global objects\00", align 1
@.str.3 = private unnamed_addr constant [107 x i8] c"ERROR: cStringPool::peek(\22%s\22) invoked outside main() -- please do not use cStringPool from global objects\00", align 1
@.str.4 = private unnamed_addr constant [93 x i8] c"Warning: cStringPool::release(): string \22%s\22 released too late, after main() already exited\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"ERROR: cStringPool::release(): string %p \22%s\22 not in stringpool\0A\00", align 1
@.str.6 = private unnamed_addr constant [113 x i8] c"ERROR: cStringPool::release(): wrong string pointer %p \22%s\22, stringpool has a different copy of the same string\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZN11cStaticFlag10staticflagE = external local_unnamed_addr global i8, align 1
@_ZSt19piecewise_construct = linkonce_odr dso_local constant %"struct.std::piecewise_construct_t" zeroinitializer, comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cstringpool.cc, ptr null }]

@_ZN11cStringPoolC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11cStringPoolC2EPKc
@_ZN11cStringPoolD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11cStringPoolD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11cStringPoolC2EPKc(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %3, ptr %0, align 8, !tbaa !60
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !65
  store i8 0, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1
  store ptr null, ptr %6, align 8, !tbaa !73
  %7 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 2
  store ptr %5, ptr %7, align 8, !tbaa !74
  %8 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 3
  store ptr %5, ptr %8, align 8, !tbaa !75
  %9 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 1
  store i64 0, ptr %9, align 8, !tbaa !76
  %10 = icmp eq ptr %1, null
  %11 = select i1 %10, ptr @.str.7, ptr %1, !prof !77
  %12 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #18
  %13 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %11, i64 noundef %12)
          to label %14 unwind label %16, !prof !78

14:                                               ; preds = %2
  %15 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 2
  store i8 1, ptr %15, align 8, !tbaa !79
  ret void

16:                                               ; preds = %2
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %6, align 8, !tbaa !73
  invoke void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef %19)
          to label %23 unwind label %20

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #19
  unreachable

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !87
  %25 = icmp eq ptr %24, %3
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i64, ptr %4, align 8, !tbaa !65
  %28 = icmp ult i64 %27, 16
  tail call void @llvm.assume(i1 %28)
  br label %30

29:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %24) #20
  br label %30

30:                                               ; preds = %26, %29
  resume { ptr, i32 } %17
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11cStringPoolD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 2
  store i8 0, ptr %2, align 8, !tbaa !79
  %3 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  invoke void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %5)
          to label %9 unwind label %6

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #19
  unreachable

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !87
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !65
  %16 = icmp ult i64 %15, 16
  tail call void @llvm.assume(i1 %16)
  br label %18

17:                                               ; preds = %9
  tail call void @_ZdlPv(ptr noundef %10) #20
  br label %18

18:                                               ; preds = %13, %17
  ret void
}

; Function Attrs: cold mustprogress nofree nounwind uwtable
define dso_local void @_ZNK11cStringPool4dumpEv(ptr noundef nonnull readonly align 8 dereferenceable(81) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !87
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %6)
  %8 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !74
  %10 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %19, %12 ], [ %9, %5 ]
  %14 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !89
  %16 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %13, i64 0, i32 1, i32 0, i64 8
  %17 = load i32, ptr %16, align 8, !tbaa !92
  %18 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %15, ptr noundef %15, i32 noundef %17)
  %19 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %13) #21
  %20 = icmp eq ptr %19, %10
  br i1 %20, label %21, label %12, !llvm.loop !93

21:                                               ; preds = %12, %5, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11cStringPool3getEPKc(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !96 {
  %3 = alloca ptr, align 8
  %4 = load i8, ptr @_ZN11cStaticFlag10staticflagE, align 1, !tbaa !97, !range !98, !noundef !99
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %18, !prof !100

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !101
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef %1) #22
  %9 = icmp eq ptr %1, null
  br i1 %9, label %81, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %1, align 1, !tbaa !68
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %81, label %13

13:                                               ; preds = %10
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %15 = add i64 %14, 1
  %16 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %15) #23
  %17 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %1) #18
  br label %81

18:                                               ; preds = %2
  %19 = icmp eq ptr %1, null
  br i1 %19, label %81, label %20, !prof !102

20:                                               ; preds = %18
  %21 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1
  %23 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  %24 = load ptr, ptr %22, align 8, !tbaa !101
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26, !prof !103

26:                                               ; preds = %20
  %27 = load i8, ptr %1, align 1, !tbaa !68
  br label %28

28:                                               ; preds = %44, %26
  %29 = phi ptr [ %24, %26 ], [ %47, %44 ]
  %30 = phi ptr [ %23, %26 ], [ %45, %44 ]
  %31 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !101
  %33 = load i8, ptr %32, align 1, !tbaa !68
  %34 = icmp slt i8 %33, %27
  br i1 %34, label %42, label %35, !prof !104

35:                                               ; preds = %28
  %36 = icmp eq i8 %33, %27
  br i1 %36, label %37, label %40, !prof !105

37:                                               ; preds = %35
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) %1) #21
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %42, label %40, !prof !106

40:                                               ; preds = %37, %35
  %41 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %29, i64 0, i32 2
  br label %44

42:                                               ; preds = %37, %28
  %43 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %29, i64 0, i32 3
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi ptr [ %30, %42 ], [ %29, %40 ]
  %46 = phi ptr [ %43, %42 ], [ %41, %40 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !101
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %28, !prof !107, !llvm.loop !108

49:                                               ; preds = %44, %20
  %50 = phi ptr [ %23, %20 ], [ %45, %44 ]
  %51 = icmp eq ptr %50, %23
  br i1 %51, label %64, label %52, !prof !109

52:                                               ; preds = %49
  %53 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %50, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !101
  %55 = load i8, ptr %1, align 1, !tbaa !68
  %56 = load i8, ptr %54, align 1, !tbaa !68
  %57 = icmp slt i8 %55, %56
  br i1 %57, label %64, label %58, !prof !110

58:                                               ; preds = %52
  %59 = icmp eq i8 %55, %56
  br i1 %59, label %60, label %63, !prof !111

60:                                               ; preds = %58
  %61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %54) #21
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %64, label %63, !prof !112

63:                                               ; preds = %60, %58
  br label %64

64:                                               ; preds = %49, %52, %60, %63
  %65 = phi ptr [ %50, %63 ], [ %23, %60 ], [ %23, %49 ], [ %23, %52 ]
  %66 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %75, !prof !113

68:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %69 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %70 = add i64 %69, 1
  %71 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %70) #23
  store ptr %71, ptr %3, align 8, !tbaa !101
  %72 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) %1) #18
  %73 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(8) %3)
  store i32 1, ptr %73, align 4, !tbaa !114
  %74 = load ptr, ptr %3, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %81

75:                                               ; preds = %64
  %76 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %65, i64 0, i32 1
  %77 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %65, i64 0, i32 1, i32 0, i64 8
  %78 = load i32, ptr %77, align 8, !tbaa !92
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %77, align 8, !tbaa !92
  %80 = load ptr, ptr %76, align 8, !tbaa !89
  br label %81

81:                                               ; preds = %68, %75, %13, %10, %6, %18
  %82 = phi ptr [ null, %18 ], [ %16, %13 ], [ null, %10 ], [ null, %6 ], [ %74, %68 ], [ %80, %75 ]
  ret ptr %82
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %3 = alloca %"class.std::tuple", align 8
  %4 = alloca %"class.std::tuple.3", align 1
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = load ptr, ptr %5, align 8, !tbaa !101
  %8 = icmp eq ptr %7, null
  br i1 %8, label %33, label %9, !prof !116

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !101
  %11 = load i8, ptr %10, align 1, !tbaa !68
  br label %12

12:                                               ; preds = %9, %28
  %13 = phi ptr [ %7, %9 ], [ %31, %28 ]
  %14 = phi ptr [ %6, %9 ], [ %29, %28 ]
  %15 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = load i8, ptr %16, align 1, !tbaa !68
  %18 = icmp slt i8 %17, %11
  br i1 %18, label %26, label %19, !prof !117

19:                                               ; preds = %12
  %20 = icmp eq i8 %17, %11
  br i1 %20, label %21, label %24, !prof !118

21:                                               ; preds = %19
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) %10) #21
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %26, label %24, !prof !119

24:                                               ; preds = %21, %19
  %25 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %13, i64 0, i32 2
  br label %28

26:                                               ; preds = %21, %12
  %27 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %13, i64 0, i32 3
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi ptr [ %14, %26 ], [ %13, %24 ]
  %30 = phi ptr [ %27, %26 ], [ %25, %24 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !101
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %12, !prof !120, !llvm.loop !108

33:                                               ; preds = %28, %2
  %34 = phi ptr [ %6, %2 ], [ %29, %28 ]
  %35 = icmp eq ptr %34, %6
  br i1 %35, label %48, label %36, !prof !121

36:                                               ; preds = %33
  %37 = load ptr, ptr %1, align 8, !tbaa !101
  %38 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !89
  %40 = load i8, ptr %37, align 1, !tbaa !68
  %41 = load i8, ptr %39, align 1, !tbaa !68
  %42 = icmp slt i8 %40, %41
  br i1 %42, label %48, label %43, !prof !122

43:                                               ; preds = %36
  %44 = icmp eq i8 %40, %41
  br i1 %44, label %45, label %50, !prof !123

45:                                               ; preds = %43
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %39) #21
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50, !prof !123

48:                                               ; preds = %36, %33, %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr %1, ptr %3, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  %49 = call ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %34, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %50

50:                                               ; preds = %43, %48, %45
  %51 = phi ptr [ %49, %48 ], [ %34, %45 ], [ %34, %43 ]
  %52 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %51, i64 0, i32 1, i32 0, i64 8
  ret ptr %52
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11cStringPool4peekEPKc(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = alloca ptr, align 8
  %4 = load i8, ptr @_ZN11cStaticFlag10staticflagE, align 1, !tbaa !97, !range !98, !noundef !99
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !101
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef %1) #22
  br label %19

9:                                                ; preds = %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  store ptr %1, ptr %3, align 8, !tbaa !101
  %13 = call ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  %14 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  br label %19

19:                                               ; preds = %16, %11, %9, %6
  %20 = phi ptr [ null, %6 ], [ null, %9 ], [ %18, %16 ], [ null, %11 ]
  ret ptr %20
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11cStringPool7releaseEPKc(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 !prof !124 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !range !98
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %3, i1 true, i1 %6, !prof !125
  br i1 %7, label %81, label %8, !prof !125

8:                                                ; preds = %2
  %9 = load i8, ptr @_ZN11cStaticFlag10staticflagE, align 1, !tbaa !97, !range !98, !noundef !99
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14, !prof !126

11:                                               ; preds = %8
  %12 = load ptr, ptr @stderr, align 8, !tbaa !101
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #22
  br label %81

14:                                               ; preds = %8
  %15 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 0, i32 1
  %16 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  %17 = load ptr, ptr %15, align 8, !tbaa !101
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19, !prof !103

19:                                               ; preds = %14
  %20 = load i8, ptr %1, align 1, !tbaa !68
  br label %21

21:                                               ; preds = %37, %19
  %22 = phi ptr [ %17, %19 ], [ %40, %37 ]
  %23 = phi ptr [ %16, %19 ], [ %38, %37 ]
  %24 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  %26 = load i8, ptr %25, align 1, !tbaa !68
  %27 = icmp slt i8 %26, %20
  br i1 %27, label %35, label %28, !prof !104

28:                                               ; preds = %21
  %29 = icmp eq i8 %26, %20
  br i1 %29, label %30, label %33, !prof !105

30:                                               ; preds = %28
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #21
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %35, label %33, !prof !106

33:                                               ; preds = %30, %28
  %34 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %22, i64 0, i32 2
  br label %37

35:                                               ; preds = %30, %21
  %36 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %22, i64 0, i32 3
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi ptr [ %23, %35 ], [ %22, %33 ]
  %39 = phi ptr [ %36, %35 ], [ %34, %33 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !101
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %21, !prof !107, !llvm.loop !108

42:                                               ; preds = %37, %14
  %43 = phi ptr [ %16, %14 ], [ %38, %37 ]
  %44 = icmp eq ptr %43, %16
  br i1 %44, label %57, label %45, !prof !109

45:                                               ; preds = %42
  %46 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %43, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !101
  %48 = load i8, ptr %1, align 1, !tbaa !68
  %49 = load i8, ptr %47, align 1, !tbaa !68
  %50 = icmp slt i8 %48, %49
  br i1 %50, label %57, label %51, !prof !110

51:                                               ; preds = %45
  %52 = icmp eq i8 %48, %49
  br i1 %52, label %53, label %56, !prof !111

53:                                               ; preds = %51
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %47) #21
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %57, label %56, !prof !112

56:                                               ; preds = %53, %51
  br label %57

57:                                               ; preds = %42, %45, %53, %56
  %58 = phi ptr [ %43, %56 ], [ %16, %53 ], [ %16, %42 ], [ %16, %45 ]
  %59 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1
  %60 = icmp eq ptr %58, %59
  br i1 %60, label %61, label %64, !prof !126

61:                                               ; preds = %57
  %62 = load ptr, ptr @stderr, align 8, !tbaa !101
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.5, ptr noundef nonnull %1, ptr noundef nonnull %1) #22
  br label %81

64:                                               ; preds = %57
  %65 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %58, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !89
  %67 = icmp eq ptr %66, %1
  br i1 %67, label %71, label %68, !prof !127

68:                                               ; preds = %64
  %69 = load ptr, ptr @stderr, align 8, !tbaa !101
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.6, ptr noundef nonnull %1, ptr noundef nonnull %1) #22
  br label %81

71:                                               ; preds = %64
  %72 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %58, i64 0, i32 1, i32 0, i64 8
  %73 = load i32, ptr %72, align 8, !tbaa !92
  %74 = add nsw i32 %73, -1
  store i32 %74, ptr %72, align 8, !tbaa !92
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81, !prof !113

76:                                               ; preds = %71
  tail call void @_ZdaPv(ptr noundef %1) #20
  %77 = tail call noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef %58, ptr noundef nonnull align 8 dereferenceable(32) %59) #18
  tail call void @_ZdlPv(ptr noundef %77) #20
  %78 = getelementptr inbounds %class.cStringPool, ptr %0, i64 0, i32 1, i32 0, i32 0, i32 1, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !76
  %80 = add i64 %79, -1
  store i64 %80, ptr %78, align 8, !tbaa !76
  br label %81

81:                                               ; preds = %61, %68, %76, %71, %2, %11
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat !prof !88 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  tail call void @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE8_M_eraseEPSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %7)
  %8 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  tail call void @_ZdlPv(ptr noundef %5) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !130

11:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !115 {
  %6 = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23
  %7 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1
  %8 = load i64, ptr %3, align 8, !tbaa !101
  %9 = inttoptr i64 %8 to ptr
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  store ptr %10, ptr %7, align 8, !tbaa !89
  %11 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %6, i64 0, i32 1, i32 0, i64 8
  store i32 0, ptr %11, align 8, !tbaa !92
  %12 = invoke { ptr, ptr } @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %13 unwind label %19, !prof !131

13:                                               ; preds = %5
  %14 = extractvalue { ptr, ptr } %12, 0
  %15 = extractvalue { ptr, ptr } %12, 1
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !132

17:                                               ; preds = %13
  %18 = invoke ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %14, ptr noundef nonnull %15, ptr noundef nonnull %6)
          to label %21 unwind label %19, !prof !131

19:                                               ; preds = %17, %5
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %6) #20
  resume { ptr, i32 } %20

21:                                               ; preds = %13, %17
  %22 = phi ptr [ null, %17 ], [ %6, %13 ]
  %23 = phi ptr [ %18, %17 ], [ %14, %13 ]
  %24 = icmp eq ptr %22, null
  br i1 %24, label %26, label %25, !prof !131

25:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %22) #20
  br label %26

26:                                               ; preds = %21, %25
  ret ptr %23
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 !prof !115 {
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %6, label %28, !prof !121

6:                                                ; preds = %3
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  %8 = load i64, ptr %7, align 8, !tbaa !76
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %24, label %10, !prof !133

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %0, i64 32
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = load ptr, ptr %2, align 8, !tbaa !101
  %16 = load i8, ptr %14, align 1, !tbaa !68
  %17 = load i8, ptr %15, align 1, !tbaa !68
  %18 = icmp slt i8 %16, %17
  br i1 %18, label %96, label %19, !prof !134

19:                                               ; preds = %10
  %20 = icmp eq i8 %16, %17
  br i1 %20, label %21, label %24, !prof !135

21:                                               ; preds = %19
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %15) #21
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %96, label %24, !prof !135

24:                                               ; preds = %19, %21, %6
  %25 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %26 = extractvalue { ptr, ptr } %25, 0
  %27 = extractvalue { ptr, ptr } %25, 1
  br label %96

28:                                               ; preds = %3
  %29 = load ptr, ptr %2, align 8, !tbaa !101
  %30 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %1, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !101
  %32 = load i8, ptr %29, align 1, !tbaa !68
  %33 = load i8, ptr %31, align 1, !tbaa !68
  %34 = icmp slt i8 %32, %33
  br i1 %34, label %40, label %35, !prof !122

35:                                               ; preds = %28
  %36 = icmp eq i8 %32, %33
  br i1 %36, label %37, label %65, !prof !123

37:                                               ; preds = %35
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %31) #21
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %65, !prof !123

40:                                               ; preds = %28, %37
  %41 = getelementptr inbounds i8, ptr %0, i64 24
  %42 = load ptr, ptr %41, align 8, !tbaa !101
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %96, label %44, !prof !136

44:                                               ; preds = %40
  %45 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef %1) #21
  %46 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !101
  %48 = load i8, ptr %47, align 1, !tbaa !68
  %49 = icmp slt i8 %48, %32
  br i1 %49, label %55, label %50, !prof !137

50:                                               ; preds = %44
  %51 = icmp eq i8 %48, %32
  br i1 %51, label %52, label %61, !prof !138

52:                                               ; preds = %50
  %53 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(1) %29) #21
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %61, !prof !138

55:                                               ; preds = %44, %52
  %56 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %45, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !128
  %58 = icmp eq ptr %57, null
  %59 = select i1 %58, ptr null, ptr %1, !prof !139
  %60 = select i1 %58, ptr %45, ptr %1, !prof !139
  br label %96

61:                                               ; preds = %50, %52
  %62 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %63 = extractvalue { ptr, ptr } %62, 0
  %64 = extractvalue { ptr, ptr } %62, 1
  br label %96

65:                                               ; preds = %35, %37
  %66 = icmp slt i8 %33, %32
  br i1 %66, label %71, label %67

67:                                               ; preds = %65
  br i1 %36, label %68, label %96

68:                                               ; preds = %67
  %69 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %29) #21
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %65, %68
  %72 = getelementptr inbounds i8, ptr %0, i64 32
  %73 = load ptr, ptr %72, align 8, !tbaa !101
  %74 = icmp eq ptr %73, %1
  br i1 %74, label %96, label %75

75:                                               ; preds = %71
  %76 = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %1) #21
  %77 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !101
  %79 = load i8, ptr %78, align 1, !tbaa !68
  %80 = icmp slt i8 %32, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %75
  %82 = icmp eq i8 %32, %79
  br i1 %82, label %83, label %92

83:                                               ; preds = %81
  %84 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %78) #21
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %75, %83
  %87 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %1, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !128
  %89 = icmp eq ptr %88, null
  %90 = select i1 %89, ptr null, ptr %76
  %91 = select i1 %89, ptr %1, ptr %76
  br label %96

92:                                               ; preds = %81, %83
  %93 = tail call { ptr, ptr } @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %94 = extractvalue { ptr, ptr } %93, 0
  %95 = extractvalue { ptr, ptr } %93, 1
  br label %96

96:                                               ; preds = %71, %68, %21, %10, %67, %92, %86, %61, %40, %55, %24
  %97 = phi ptr [ %26, %24 ], [ %63, %61 ], [ %42, %40 ], [ %59, %55 ], [ %94, %92 ], [ %90, %86 ], [ %1, %67 ], [ null, %10 ], [ null, %21 ], [ %1, %68 ], [ null, %71 ]
  %98 = phi ptr [ %27, %24 ], [ %64, %61 ], [ %42, %40 ], [ %60, %55 ], [ %95, %92 ], [ %91, %86 ], [ null, %67 ], [ %12, %10 ], [ %12, %21 ], [ null, %68 ], [ %73, %71 ]
  %99 = insertvalue { ptr, ptr } poison, ptr %97, 0
  %100 = insertvalue { ptr, ptr } %99, ptr %98, 1
  ret { ptr, ptr } %100
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !140 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !101
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7, !prof !141

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !101
  %9 = load i8, ptr %8, align 1, !tbaa !68
  br label %10

10:                                               ; preds = %7, %21
  %11 = phi ptr [ %5, %7 ], [ %26, %21 ]
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = load i8, ptr %13, align 1, !tbaa !68
  %15 = icmp slt i8 %9, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = icmp eq i8 %9, %14
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %13) #21
  %20 = icmp slt i32 %19, 0
  br label %21

21:                                               ; preds = %10, %16, %18
  %22 = phi i1 [ %20, %18 ], [ true, %10 ], [ false, %16 ]
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  %24 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  %25 = select i1 %22, ptr %23, ptr %24
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %10, !prof !141, !llvm.loop !142

28:                                               ; preds = %21, %2
  %29 = phi ptr [ %4, %2 ], [ %11, %21 ]
  %30 = phi i1 [ true, %2 ], [ %22, %21 ]
  %31 = phi ptr [ %5, %2 ], [ %26, %21 ]
  br i1 %30, label %32, label %38, !prof !143

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %0, i64 24
  %34 = load ptr, ptr %33, align 8, !tbaa !74
  %35 = icmp eq ptr %29, %34
  br i1 %35, label %55, label %36, !prof !143

36:                                               ; preds = %32
  %37 = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %29) #21
  br label %38

38:                                               ; preds = %36, %28
  %39 = phi ptr [ %37, %36 ], [ %29, %28 ]
  %40 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !101
  %42 = load ptr, ptr %1, align 8, !tbaa !101
  %43 = load i8, ptr %41, align 1, !tbaa !68
  %44 = load i8, ptr %42, align 1, !tbaa !68
  %45 = icmp slt i8 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = icmp eq i8 %43, %44
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) %42) #21
  %50 = icmp slt i32 %49, 0
  br label %51

51:                                               ; preds = %38, %46, %48
  %52 = phi i1 [ %50, %48 ], [ true, %38 ], [ false, %46 ]
  %53 = select i1 %52, ptr %31, ptr %39
  %54 = select i1 %52, ptr %29, ptr null
  br label %55

55:                                               ; preds = %51, %32
  %56 = phi ptr [ %31, %32 ], [ %53, %51 ]
  %57 = phi ptr [ %29, %32 ], [ %54, %51 ]
  %58 = insertvalue { ptr, ptr } poison, ptr %56, 0
  %59 = insertvalue { ptr, ptr } %58, ptr %57, 1
  ret { ptr, ptr } %59
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 !prof !115 {
  %5 = icmp ne ptr %1, null
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  %7 = icmp eq ptr %6, %2
  %8 = select i1 %5, i1 true, i1 %7, !prof !144
  br i1 %8, label %22, label %9, !prof !145

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = load i8, ptr %11, align 1, !tbaa !68
  %15 = load i8, ptr %13, align 1, !tbaa !68
  %16 = icmp slt i8 %14, %15
  br i1 %16, label %22, label %17, !prof !146

17:                                               ; preds = %9
  %18 = icmp eq i8 %14, %15
  br i1 %18, label %19, label %22, !prof !147

19:                                               ; preds = %17
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %13) #21
  %21 = icmp slt i32 %20, 0
  br label %22

22:                                               ; preds = %19, %17, %9, %4
  %23 = phi i1 [ true, %4 ], [ %21, %19 ], [ true, %9 ], [ false, %17 ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %23, ptr noundef %3, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %6) #18
  %24 = getelementptr inbounds i8, ptr %0, i64 40
  %25 = load i64, ptr %24, align 8, !tbaa !76
  %26 = add i64 %25, 1
  store i64 %26, ptr %24, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNKSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE4findERS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !88 {
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  %5 = load ptr, ptr %3, align 8, !tbaa !101
  %6 = icmp eq ptr %5, null
  br i1 %6, label %31, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !101
  %9 = load i8, ptr %8, align 1, !tbaa !68
  br label %10

10:                                               ; preds = %7, %26
  %11 = phi ptr [ %5, %7 ], [ %29, %26 ]
  %12 = phi ptr [ %4, %7 ], [ %27, %26 ]
  %13 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %11, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = load i8, ptr %14, align 1, !tbaa !68
  %16 = icmp slt i8 %15, %9
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = icmp eq i8 %15, %9
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %8) #21
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %17
  %23 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 2
  br label %26

24:                                               ; preds = %19, %10
  %25 = getelementptr inbounds %"struct.std::_Rb_tree_node_base", ptr %11, i64 0, i32 3
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %12, %24 ], [ %11, %22 ]
  %28 = phi ptr [ %25, %24 ], [ %23, %22 ]
  %29 = load ptr, ptr %28, align 8, !tbaa !101
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %10, !llvm.loop !148

31:                                               ; preds = %26, %2
  %32 = phi ptr [ %4, %2 ], [ %27, %26 ]
  %33 = icmp eq ptr %32, %4
  br i1 %33, label %47, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %1, align 8, !tbaa !101
  %36 = getelementptr inbounds %"struct.std::_Rb_tree_node", ptr %32, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !101
  %38 = load i8, ptr %35, align 1, !tbaa !68
  %39 = load i8, ptr %37, align 1, !tbaa !68
  %40 = icmp slt i8 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = icmp eq i8 %38, %39
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %37) #21
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41, %43
  br label %47

47:                                               ; preds = %34, %31, %43, %46
  %48 = phi ptr [ %32, %46 ], [ %4, %43 ], [ %4, %31 ], [ %4, %34 ]
  ret ptr %48
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_cstringpool.cc() #16 section ".text.startup" !prof !149 !PGOFuncName !150 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { cold }
attributes #23 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!58}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 91660338266}
!8 = !{!"MaxCount", i64 5757400812}
!9 = !{!"MaxInternalCount", i64 5721102715}
!10 = !{!"MaxFunctionCount", i64 5757400812}
!11 = !{!"NumCounts", i64 33643}
!12 = !{!"NumFunctions", i64 6537}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 5757400812, i32 1}
!18 = !{i32 100000, i64 5721102715, i32 2}
!19 = !{i32 200000, i64 5600627346, i32 4}
!20 = !{i32 300000, i64 2776518954, i32 6}
!21 = !{i32 400000, i64 1274069204, i32 12}
!22 = !{i32 500000, i64 494191607, i32 29}
!23 = !{i32 600000, i64 467312602, i32 58}
!24 = !{i32 700000, i64 347140078, i32 66}
!25 = !{i32 800000, i64 202389109, i32 102}
!26 = !{i32 900000, i64 186403596, i32 151}
!27 = !{i32 950000, i64 106255111, i32 185}
!28 = !{i32 990000, i64 47565111, i32 237}
!29 = !{i32 999000, i64 420988, i32 424}
!30 = !{i32 999900, i64 30990, i32 1111}
!31 = !{i32 999990, i64 4995, i32 1638}
!32 = !{i32 999999, i64 219, i32 2228}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!35 = !{ptr @_ZN11cStringPoolC2EPKc, ptr @strlen, i64 4}
!36 = !{ptr @_ZN11cStringPoolC2EPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 4}
!37 = !{ptr @_ZN11cStringPool3getEPKc, ptr @strcmp, i64 2428386}
!38 = !{ptr @_ZN11cStringPool3getEPKc, ptr @strlen, i64 166}
!39 = !{ptr @_ZN11cStringPool3getEPKc, ptr @_Znam, i64 166}
!40 = !{ptr @_ZN11cStringPool3getEPKc, ptr @strcpy, i64 166}
!41 = !{ptr @_ZN11cStringPool3getEPKc, ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_, i64 166}
!42 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_, ptr @strcmp, i64 415}
!43 = !{ptr @_ZNSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEEixERS4_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_, i64 166}
!44 = !{ptr @_ZN11cStringPool7releaseEPKc, ptr @strcmp, i64 2428386}
!45 = !{ptr @_ZN11cStringPool7releaseEPKc, ptr @_ZdaPv, i64 166}
!46 = !{ptr @_ZN11cStringPool7releaseEPKc, ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_, i64 166}
!47 = !{ptr @_ZN11cStringPool7releaseEPKc, ptr @_ZdlPv, i64 166}
!48 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_, ptr @_Znwm, i64 166}
!49 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, i64 166}
!50 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS2_EESE_IJEEEEESt17_Rb_tree_iteratorIS3_ESt23_Rb_tree_const_iteratorIS3_EDpOT_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E, i64 166}
!51 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @strcmp, i64 173}
!52 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE24_M_get_insert_unique_posERS2_, i64 18}
!53 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS3_ERS2_, ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base, i64 124}
!54 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E, ptr @strcmp, i64 43}
!55 = !{ptr @_ZNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE14_M_insert_nodeEPSt18_Rb_tree_node_baseSB_PSt13_Rb_tree_nodeIS3_E, ptr @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_, i64 166}
!56 = !{ptr @_GLOBAL__sub_I_cstringpool.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!57 = !{ptr @_GLOBAL__sub_I_cstringpool.cc, ptr @__cxa_atexit, i64 1}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = !{!"function_entry_count", i64 4}
!60 = !{!61, !62, i64 0}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !62, i64 0}
!62 = !{!"any pointer", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C++ TBAA"}
!65 = !{!66, !67, i64 8}
!66 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !61, i64 0, !67, i64 8, !63, i64 16}
!67 = !{!"long", !63, i64 0}
!68 = !{!63, !63, i64 0}
!69 = !{!70, !72, i64 0}
!70 = !{!"_ZTSSt15_Rb_tree_header", !71, i64 0, !67, i64 32}
!71 = !{!"_ZTSSt18_Rb_tree_node_base", !72, i64 0, !62, i64 8, !62, i64 16, !62, i64 24}
!72 = !{!"_ZTSSt14_Rb_tree_color", !63, i64 0}
!73 = !{!70, !62, i64 8}
!74 = !{!70, !62, i64 16}
!75 = !{!70, !62, i64 24}
!76 = !{!70, !67, i64 32}
!77 = !{!"branch_weights", i32 0, i32 4}
!78 = !{!"branch_weights", i32 4, i32 0}
!79 = !{!80, !86, i64 80}
!80 = !{!"_ZTS11cStringPool", !66, i64 0, !81, i64 32, !86, i64 80}
!81 = !{!"_ZTSSt3mapIPciN11cStringPool7strlessESaISt4pairIKS0_iEEE", !82, i64 0}
!82 = !{!"_ZTSSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE", !83, i64 0}
!83 = !{!"_ZTSNSt8_Rb_treeIPcSt4pairIKS0_iESt10_Select1stIS3_EN11cStringPool7strlessESaIS3_EE13_Rb_tree_implIS7_Lb1EEE", !84, i64 0, !70, i64 8}
!84 = !{!"_ZTSSt20_Rb_tree_key_compareIN11cStringPool7strlessEE", !85, i64 0}
!85 = !{!"_ZTSN11cStringPool7strlessE"}
!86 = !{!"bool", !63, i64 0}
!87 = !{!66, !62, i64 0}
!88 = !{!"function_entry_count", i64 0}
!89 = !{!90, !62, i64 0}
!90 = !{!"_ZTSSt4pairIKPciE", !62, i64 0, !91, i64 8}
!91 = !{!"int", !63, i64 0}
!92 = !{!90, !91, i64 8}
!93 = distinct !{!93, !94, !95}
!94 = !{!"llvm.loop.mustprogress"}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = !{!"function_entry_count", i64 495769}
!97 = !{!86, !86, i64 0}
!98 = !{i8 0, i8 2}
!99 = !{}
!100 = !{!"branch_weights", i32 0, i32 495769}
!101 = !{!62, !62, i64 0}
!102 = !{!"branch_weights", i32 8854, i32 486915}
!103 = !{!"branch_weights", i32 1, i32 973829}
!104 = !{!"branch_weights", i32 2016732, i32 5378263}
!105 = !{!"branch_weights", i32 3883016, i32 1495247}
!106 = !{!"branch_weights", i32 1570976, i32 2312040}
!107 = !{!"branch_weights", i32 973829, i32 6421166}
!108 = distinct !{!108, !94, !95}
!109 = !{!"branch_weights", i32 31, i32 973799}
!110 = !{!"branch_weights", i32 42, i32 973757}
!111 = !{!"branch_weights", i32 973757, i32 0}
!112 = !{!"branch_weights", i32 93, i32 973664}
!113 = !{!"branch_weights", i32 166, i32 486749}
!114 = !{!91, !91, i64 0}
!115 = !{!"function_entry_count", i64 166}
!116 = !{!"branch_weights", i32 1, i32 165}
!117 = !{!"branch_weights", i32 314, i32 550}
!118 = !{!"branch_weights", i32 322, i32 228}
!119 = !{!"branch_weights", i32 152, i32 170}
!120 = !{!"branch_weights", i32 165, i32 699}
!121 = !{!"branch_weights", i32 31, i32 135}
!122 = !{!"branch_weights", i32 42, i32 93}
!123 = !{!"branch_weights", i32 93, i32 0}
!124 = !{!"function_entry_count", i64 514519}
!125 = !{!"branch_weights", i32 27604, i32 486915}
!126 = !{!"branch_weights", i32 0, i32 486915}
!127 = !{!"branch_weights", i32 486915, i32 0}
!128 = !{!71, !62, i64 24}
!129 = !{!71, !62, i64 16}
!130 = distinct !{!130, !94, !95}
!131 = !{!"branch_weights", i32 166, i32 0}
!132 = !{!"branch_weights", i32 0, i32 166}
!133 = !{!"branch_weights", i32 18, i32 13}
!134 = !{!"branch_weights", i32 11, i32 2}
!135 = !{!"branch_weights", i32 2, i32 0}
!136 = !{!"branch_weights", i32 11, i32 124}
!137 = !{!"branch_weights", i32 46, i32 78}
!138 = !{!"branch_weights", i32 78, i32 0}
!139 = !{!"branch_weights", i32 57, i32 67}
!140 = !{!"function_entry_count", i64 18}
!141 = !{!"branch_weights", i32 1, i32 0}
!142 = distinct !{!142, !94, !95}
!143 = !{!"branch_weights", i32 18, i32 0}
!144 = !{!"branch_weights", i32 78, i32 88}
!145 = !{!"branch_weights", i32 96, i32 70}
!146 = !{!"branch_weights", i32 0, i32 70}
!147 = !{!"branch_weights", i32 43, i32 27}
!148 = distinct !{!148, !94, !95}
!149 = !{!"function_entry_count", i64 1}
!150 = !{!"simulator/cstringpool.cc;_GLOBAL__sub_I_cstringpool.cc"}
