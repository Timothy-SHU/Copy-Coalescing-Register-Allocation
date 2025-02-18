; ModuleID = 'simulator/nedtypeinfo.cc'
source_filename = "simulator/nedtypeinfo.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.NEDLookupContext = type { ptr, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%class.NEDTypeInfo = type { ptr, ptr, i32, %"class.std::__cxx11::basic_string", ptr, ptr, %"class.std::vector", %"class.std::vector", %"class.std::__cxx11::basic_string" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.ExtendsElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.NEDElement = type { ptr, i64, %"class.std::__cxx11::basic_string", %struct.NEDSourceRegion, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.NEDSourceRegion = type { i32, i32, i32, i32 }
%class.InterfaceNameElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.NEDException = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.3 }
%union.anon.3 = type { ptr }
%class.ParamElement = type <{ %class.NEDElement, i32, i8, [3 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, [7 x i8] }>
%class.GateElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", i32, i8, %"class.std::__cxx11::basic_string" }
%class.PackageElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%class.NEDErrorStore = type <{ %"class.std::vector.22", i8, [7 x i8] }>
%"class.std::vector.22" = type { %"struct.std::_Vector_base.23" }
%"struct.std::_Vector_base.23" = type { %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl" }
%"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl" = type { %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data" }
%"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.SubmoduleElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.ConnectionsElement = type <{ %class.NEDElement, i8, [7 x i8] }>
%class.PropertyElement = type { %class.NEDElement, i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.PropertyKeyElement = type { %class.NEDElement, %"class.std::__cxx11::basic_string" }
%class.LiteralElement = type { %class.NEDElement, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%"struct.NEDErrorStore::Entry" = type { ptr, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }

$_ZN12NEDExceptionD2Ev = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$_ZNK11NEDTypeInfo7getTypeEv = comdat any

$_ZNK11NEDTypeInfo15numExtendsNamesEv = comdat any

$_ZNK11NEDTypeInfo17numInterfaceNamesEv = comdat any

$_ZN12NEDExceptionD0Ev = comdat any

$_ZNK12NEDException4whatEv = comdat any

$_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag = comdat any

$_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZTS12NEDException = comdat any

$_ZTI12NEDException = comdat any

$_ZTV12NEDException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTV11NEDTypeInfo = dso_local unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr @_ZTI11NEDTypeInfo, ptr @_ZN11NEDTypeInfoD2Ev, ptr @_ZN11NEDTypeInfoD0Ev, ptr @_ZNK11NEDTypeInfo7getNameEv, ptr @_ZNK11NEDTypeInfo11getFullNameEv, ptr @_ZNK11NEDTypeInfo7getTreeEv, ptr @_ZNK11NEDTypeInfo16getFlattenedTreeEv, ptr @_ZNK11NEDTypeInfo7getTypeEv, ptr @_ZNK11NEDTypeInfo10getPackageB5cxx11Ev, ptr @_ZNK11NEDTypeInfo4infoB5cxx11Ev, ptr @_ZNK11NEDTypeInfo9nedSourceB5cxx11Ev, ptr @_ZNK11NEDTypeInfo15numExtendsNamesEv, ptr @_ZNK11NEDTypeInfo11extendsNameEi, ptr @_ZNK11NEDTypeInfo17numInterfaceNamesEv, ptr @_ZNK11NEDTypeInfo13interfaceNameEi, ptr @_ZN11NEDTypeInfo17supportsInterfaceEPKc, ptr @_ZN11NEDTypeInfo9isNetworkEv, ptr @_ZNK11NEDTypeInfo23implementationClassNameEv, ptr @_ZNK11NEDTypeInfo18getPackagePropertyB5cxx11EPKc, ptr @_ZNK11NEDTypeInfo15getCxxNamespaceB5cxx11Ev, ptr @_ZNK11NEDTypeInfo12getSuperDeclEv] }, align 8
@.str = private unnamed_addr constant [66 x i8] c"NEDTypeInfo: element of wrong type (<%s>) passed into constructor\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS12NEDException = linkonce_odr dso_local constant [15 x i8] c"12NEDException\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI12NEDException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS12NEDException, ptr @_ZTISt13runtime_error }, comdat, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"a %s cannot extend a %s (%s)\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"base type %s is expected to be a %s interface\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"extends \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"like \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"C++ class: \00", align 1
@.str.14 = private unnamed_addr constant [51 x i8] c"NEDTypeInfo: interface index %d out of range 0..%d\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"NEDTypeInfo: extendsName(): index %d out of range 0..%d\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"isNetwork\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"%s type has no parameter `%s', required by interface `%s'\00", align 1
@.str.19 = private unnamed_addr constant [65 x i8] c"type of parameter `%s' must be %s, as required by interface `%s'\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.21 = private unnamed_addr constant [67 x i8] c"parameter `%s' must not be volatile, as required by interface `%s'\00", align 1
@.str.22 = private unnamed_addr constant [63 x i8] c"parameter `%s' must be volatile, as required by interface `%s'\00", align 1
@.str.23 = private unnamed_addr constant [53 x i8] c"%s type has no gate `%s', required by interface `%s'\00", align 1
@.str.24 = private unnamed_addr constant [60 x i8] c"type of gate `%s' must be %s, as required by interface `%s'\00", align 1
@.str.25 = private unnamed_addr constant [67 x i8] c"gate `%s' must not be a vector gate, as required by interface `%s'\00", align 1
@.str.26 = private unnamed_addr constant [63 x i8] c"gate `%s' must be a vector gate, as required by interface `%s'\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"vector-size\00", align 1
@.str.29 = private unnamed_addr constant [81 x i8] c"size of gate vector `%s' must be left unspecified, as required by interface `%s'\00", align 1
@.str.30 = private unnamed_addr constant [64 x i8] c"size of gate vector `%s' must be specified as in interface `%s'\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"redeclaration of parameter `%s'\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"redeclaration of gate `%s'\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"redeclaration of inner type `%s'\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"redeclaration of submodule `%s'\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS11NEDTypeInfo = dso_local constant [14 x i8] c"11NEDTypeInfo\00", align 1
@_ZTI11NEDTypeInfo = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS11NEDTypeInfo }, align 8
@_ZTV12NEDException = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI12NEDException, ptr @_ZN12NEDExceptionD2Ev, ptr @_ZN12NEDExceptionD0Ev, ptr @_ZNK12NEDException4whatEv] }, comdat, align 8
@.str.36 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.37 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_nedtypeinfo.cc, ptr null }]
@switch.table._ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement = private unnamed_addr constant [5 x i32] [i32 0, i32 2, i32 1, i32 4, i32 3], align 4

@_ZN11NEDTypeInfoC1EP16NEDResourceCachePKcP10NEDElement = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement
@_ZN11NEDTypeInfoD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11NEDTypeInfoD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %5 = alloca %struct.NEDLookupContext, align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::allocator", align 1
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::allocator", align 1
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::allocator", align 1
  %14 = alloca %"class.std::__cxx11::basic_string", align 8
  %15 = alloca %"class.std::__cxx11::basic_string", align 8
  %16 = alloca %"class.std::__cxx11::basic_string", align 8
  %17 = alloca %"class.std::__cxx11::basic_string", align 8
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTV11NEDTypeInfo, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !102
  %18 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 3
  %19 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 3, i32 2
  store ptr %19, ptr %18, align 8, !tbaa !105
  %20 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %20, align 8, !tbaa !109
  store i8 0, ptr %19, align 8, !tbaa !112
  %21 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 6
  %22 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 7
  %23 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 7, i32 0, i32 0, i32 0, i32 1
  %24 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 8
  %25 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 8, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %21, i8 0, i64 48, i1 false)
  store ptr %25, ptr %24, align 8, !tbaa !105
  %26 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 8, i32 1
  store i64 0, ptr %26, align 8, !tbaa !109
  store i8 0, ptr %25, align 8, !tbaa !112
  %27 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 1
  store ptr %1, ptr %27, align 8, !tbaa !113
  %28 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20
  %29 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef %2, i64 noundef %28)
          to label %30 unwind label %40, !prof !120

30:                                               ; preds = %4
  %31 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 4
  store ptr %3, ptr %31, align 8, !tbaa !121
  %32 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 5
  store ptr null, ptr %32, align 8, !tbaa !122
  %33 = load ptr, ptr %3, align 8, !tbaa !102
  %34 = getelementptr inbounds ptr, ptr %33, i64 5
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef i32 %35(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %37 unwind label %40, !prof !123

37:                                               ; preds = %30
  %38 = add i32 %36, -9
  %39 = icmp ult i32 %38, 5
  br i1 %39, label %52, label %42

40:                                               ; preds = %4, %49, %30
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %600

42:                                               ; preds = %37
  %43 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %44 = load ptr, ptr %3, align 8, !tbaa !102
  %45 = getelementptr inbounds ptr, ptr %44, i64 4
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %48 unwind label %50

48:                                               ; preds = %42
  invoke void (ptr, ptr, ...) @_ZN12NEDExceptionC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %43, ptr noundef nonnull @.str, ptr noundef %47)
          to label %49 unwind label %50

49:                                               ; preds = %48
  invoke void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
          to label %616 unwind label %40

50:                                               ; preds = %48, %42
  %51 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %43) #20
  br label %600

52:                                               ; preds = %37
  %53 = zext nneg i32 %38 to i64
  %54 = getelementptr inbounds [5 x i32], ptr @switch.table._ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 2
  store i32 %55, ptr %56, align 8, !tbaa !124
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #20
  invoke void @_ZN16NEDResourceCache18getParentContextOfEPKcP10NEDElement(ptr dead_on_unwind nonnull writable sret(%struct.NEDLookupContext) align 8 %5, ptr noundef %2, ptr noundef nonnull %3)
          to label %57 unwind label %75, !prof !120

57:                                               ; preds = %52
  %58 = load ptr, ptr %3, align 8, !tbaa !102
  %59 = getelementptr inbounds ptr, ptr %58, i64 23
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %62 unwind label %79, !prof !125

62:                                               ; preds = %57, %405
  %63 = phi ptr [ %409, %405 ], [ %61, %57 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %81, !prof !126

65:                                               ; preds = %62
  switch i32 %55, label %66 [
    i32 4, label %433
    i32 2, label %433
  ], !prof !127

66:                                               ; preds = %65
  %67 = load ptr, ptr %23, align 8, !tbaa !128
  %68 = load ptr, ptr %22, align 8, !tbaa !129
  %69 = ptrtoint ptr %67 to i64
  %70 = ptrtoint ptr %68 to i64
  %71 = sub i64 %69, %70
  %72 = lshr exact i64 %71, 5
  %73 = trunc i64 %72 to i32
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %410, label %433, !prof !130

75:                                               ; preds = %52
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %598

77:                                               ; preds = %81, %273, %405
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %587

79:                                               ; preds = %57
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %587

81:                                               ; preds = %62
  %82 = load ptr, ptr %63, align 8, !tbaa !102
  %83 = getelementptr inbounds ptr, ptr %82, i64 5
  %84 = load ptr, ptr %83, align 8
  %85 = invoke noundef i32 %84(ptr noundef nonnull align 8 dereferenceable(112) %63)
          to label %86 unwind label %77, !prof !131

86:                                               ; preds = %81
  %87 = icmp eq i32 %85, 7
  br i1 %87, label %88, label %273, !prof !132

88:                                               ; preds = %86
  %89 = getelementptr inbounds %class.ExtendsElement, ptr %63, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #20
  %91 = load ptr, ptr %27, align 8, !tbaa !113
  %92 = load ptr, ptr %91, align 8, !tbaa !102
  %93 = getelementptr inbounds ptr, ptr %92, i64 23
  %94 = load ptr, ptr %93, align 8
  invoke void %94(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(200) %91, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %90)
          to label %95 unwind label %145, !prof !134

95:                                               ; preds = %88
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %96 unwind label %147, !prof !135

96:                                               ; preds = %95
  %97 = load ptr, ptr %27, align 8, !tbaa !113
  %98 = load ptr, ptr %6, align 8, !tbaa !133
  %99 = load ptr, ptr %97, align 8, !tbaa !102
  %100 = getelementptr inbounds ptr, ptr %99, i64 20
  %101 = load ptr, ptr %100, align 8
  %102 = invoke noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(200) %97, ptr noundef %98)
          to label %103 unwind label %149, !prof !136

103:                                              ; preds = %96
  %104 = load ptr, ptr %0, align 8, !tbaa !102
  %105 = getelementptr inbounds ptr, ptr %104, i64 6
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef i32 %106(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %108 unwind label %149, !prof !137

108:                                              ; preds = %103
  %109 = load ptr, ptr %102, align 8, !tbaa !102
  %110 = getelementptr inbounds ptr, ptr %109, i64 6
  %111 = load ptr, ptr %110, align 8
  %112 = invoke noundef i32 %111(ptr noundef nonnull align 8 dereferenceable(152) %102)
          to label %113 unwind label %149, !prof !137

113:                                              ; preds = %108
  %114 = icmp eq i32 %107, %112
  br i1 %114, label %155, label %115, !prof !135

115:                                              ; preds = %113
  %116 = call ptr @__cxa_allocate_exception(i64 48) #20
  %117 = load ptr, ptr %0, align 8, !tbaa !102
  %118 = getelementptr inbounds ptr, ptr %117, i64 4
  %119 = load ptr, ptr %118, align 8
  %120 = invoke noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %121 unwind label %153

121:                                              ; preds = %115
  %122 = load ptr, ptr %0, align 8, !tbaa !102
  %123 = getelementptr inbounds ptr, ptr %122, i64 4
  %124 = load ptr, ptr %123, align 8
  %125 = invoke noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %126 unwind label %153

126:                                              ; preds = %121
  %127 = load ptr, ptr %125, align 8, !tbaa !102
  %128 = getelementptr inbounds ptr, ptr %127, i64 4
  %129 = load ptr, ptr %128, align 8
  %130 = invoke noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(112) %125)
          to label %131 unwind label %153

131:                                              ; preds = %126
  %132 = load ptr, ptr %102, align 8, !tbaa !102
  %133 = getelementptr inbounds ptr, ptr %132, i64 4
  %134 = load ptr, ptr %133, align 8
  %135 = invoke noundef ptr %134(ptr noundef nonnull align 8 dereferenceable(152) %102)
          to label %136 unwind label %153

136:                                              ; preds = %131
  %137 = load ptr, ptr %135, align 8, !tbaa !102
  %138 = getelementptr inbounds ptr, ptr %137, i64 4
  %139 = load ptr, ptr %138, align 8
  %140 = invoke noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(112) %135)
          to label %141 unwind label %153

141:                                              ; preds = %136
  %142 = load ptr, ptr %6, align 8, !tbaa !133
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %116, ptr noundef %120, ptr noundef nonnull @.str.1, ptr noundef %130, ptr noundef %140, ptr noundef %142)
          to label %143 unwind label %153

143:                                              ; preds = %141
  invoke void @__cxa_throw(ptr nonnull %116, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
          to label %144 unwind label %151

144:                                              ; preds = %143
  unreachable

145:                                              ; preds = %88
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %271

147:                                              ; preds = %95
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %261

149:                                              ; preds = %96, %103, %108
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %261

151:                                              ; preds = %143
  %152 = landingpad { ptr, i32 }
          cleanup
  br label %261

153:                                              ; preds = %141, %136, %131, %126, %121, %115
  %154 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %116) #20
  br label %261

155:                                              ; preds = %113
  switch i32 %55, label %204 [
    i32 4, label %156
    i32 2, label %156
  ], !prof !138

156:                                              ; preds = %155, %155
  %157 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %158 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  br label %159

159:                                              ; preds = %156, %184
  %160 = phi i32 [ %185, %184 ], [ 0, %156 ]
  %161 = load ptr, ptr %102, align 8, !tbaa !102
  %162 = getelementptr inbounds ptr, ptr %161, i64 10
  %163 = load ptr, ptr %162, align 8
  %164 = invoke noundef i32 %163(ptr noundef nonnull align 8 dereferenceable(152) %102)
          to label %165 unwind label %167

165:                                              ; preds = %159
  %166 = icmp slt i32 %160, %164
  br i1 %166, label %169, label %251

167:                                              ; preds = %159
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %261

169:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #20
  %170 = load ptr, ptr %102, align 8, !tbaa !102
  %171 = getelementptr inbounds ptr, ptr %170, i64 11
  %172 = load ptr, ptr %171, align 8
  %173 = invoke noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(152) %102, i32 noundef %160)
          to label %174 unwind label %186

174:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %173, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %175 unwind label %188

175:                                              ; preds = %174
  %176 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %21, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %177 unwind label %190

177:                                              ; preds = %175
  %178 = load ptr, ptr %7, align 8, !tbaa !133
  %179 = icmp eq ptr %178, %157
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i64, ptr %158, align 8, !tbaa !109
  %182 = icmp ult i64 %181, 16
  call void @llvm.assume(i1 %182)
  br label %184

183:                                              ; preds = %177
  call void @_ZdlPv(ptr noundef %178) #22
  br label %184

184:                                              ; preds = %180, %183
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #20
  %185 = add nuw nsw i32 %160, 1
  br label %159, !llvm.loop !139

186:                                              ; preds = %169
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %202

188:                                              ; preds = %174
  %189 = landingpad { ptr, i32 }
          cleanup
  br label %200

190:                                              ; preds = %175
  %191 = landingpad { ptr, i32 }
          cleanup
  %192 = load ptr, ptr %7, align 8, !tbaa !133
  %193 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %194 = icmp eq ptr %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %197 = load i64, ptr %196, align 8, !tbaa !109
  %198 = icmp ult i64 %197, 16
  call void @llvm.assume(i1 %198)
  br label %200

199:                                              ; preds = %190
  call void @_ZdlPv(ptr noundef %192) #22
  br label %200

200:                                              ; preds = %199, %195, %188
  %201 = phi { ptr, i32 } [ %189, %188 ], [ %191, %195 ], [ %191, %199 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #20
  br label %202

202:                                              ; preds = %200, %186
  %203 = phi { ptr, i32 } [ %201, %200 ], [ %187, %186 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #20
  br label %261

204:                                              ; preds = %155, %231
  %205 = phi i32 [ %232, %231 ], [ 0, %155 ]
  %206 = load ptr, ptr %102, align 8, !tbaa !102
  %207 = getelementptr inbounds ptr, ptr %206, i64 12
  %208 = load ptr, ptr %207, align 8
  %209 = invoke noundef i32 %208(ptr noundef nonnull align 8 dereferenceable(152) %102)
          to label %210 unwind label %212, !prof !142

210:                                              ; preds = %204
  %211 = icmp slt i32 %205, %209
  br i1 %211, label %214, label %251, !prof !143

212:                                              ; preds = %204
  %213 = landingpad { ptr, i32 }
          cleanup
  br label %261

214:                                              ; preds = %210
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #20
  %215 = load ptr, ptr %102, align 8, !tbaa !102
  %216 = getelementptr inbounds ptr, ptr %215, i64 13
  %217 = load ptr, ptr %216, align 8
  %218 = invoke noundef ptr %217(ptr noundef nonnull align 8 dereferenceable(152) %102, i32 noundef %205)
          to label %219 unwind label %233

219:                                              ; preds = %214
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %218, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %220 unwind label %235

220:                                              ; preds = %219
  %221 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %222 unwind label %237

222:                                              ; preds = %220
  %223 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %224 = load ptr, ptr %9, align 8, !tbaa !133
  %225 = icmp eq ptr %224, %223
  br i1 %225, label %226, label %230

226:                                              ; preds = %222
  %227 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %228 = load i64, ptr %227, align 8, !tbaa !109
  %229 = icmp ult i64 %228, 16
  call void @llvm.assume(i1 %229)
  br label %231

230:                                              ; preds = %222
  call void @_ZdlPv(ptr noundef %224) #22
  br label %231

231:                                              ; preds = %226, %230
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #20
  %232 = add nuw nsw i32 %205, 1
  br label %204, !llvm.loop !144

233:                                              ; preds = %214
  %234 = landingpad { ptr, i32 }
          cleanup
  br label %249

235:                                              ; preds = %219
  %236 = landingpad { ptr, i32 }
          cleanup
  br label %247

237:                                              ; preds = %220
  %238 = landingpad { ptr, i32 }
          cleanup
  %239 = load ptr, ptr %9, align 8, !tbaa !133
  %240 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %241 = icmp eq ptr %239, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %237
  %243 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %244 = load i64, ptr %243, align 8, !tbaa !109
  %245 = icmp ult i64 %244, 16
  call void @llvm.assume(i1 %245)
  br label %247

246:                                              ; preds = %237
  call void @_ZdlPv(ptr noundef %239) #22
  br label %247

247:                                              ; preds = %246, %242, %235
  %248 = phi { ptr, i32 } [ %236, %235 ], [ %238, %242 ], [ %238, %246 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #20
  br label %249

249:                                              ; preds = %247, %233
  %250 = phi { ptr, i32 } [ %248, %247 ], [ %234, %233 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #20
  br label %261

251:                                              ; preds = %165, %210
  %252 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %253 = load ptr, ptr %6, align 8, !tbaa !133
  %254 = icmp eq ptr %253, %252
  br i1 %254, label %255, label %259, !prof !143

255:                                              ; preds = %251
  %256 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %257 = load i64, ptr %256, align 8, !tbaa !109
  %258 = icmp ult i64 %257, 16
  call void @llvm.assume(i1 %258)
  br label %260

259:                                              ; preds = %251
  call void @_ZdlPv(ptr noundef %253) #22
  br label %260

260:                                              ; preds = %255, %259
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  br label %273

261:                                              ; preds = %149, %151, %153, %202, %167, %249, %212, %147
  %262 = phi { ptr, i32 } [ %148, %147 ], [ %154, %153 ], [ %203, %202 ], [ %168, %167 ], [ %250, %249 ], [ %213, %212 ], [ %150, %149 ], [ %152, %151 ]
  %263 = load ptr, ptr %6, align 8, !tbaa !133
  %264 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %265 = icmp eq ptr %263, %264
  br i1 %265, label %266, label %270

266:                                              ; preds = %261
  %267 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %268 = load i64, ptr %267, align 8, !tbaa !109
  %269 = icmp ult i64 %268, 16
  call void @llvm.assume(i1 %269)
  br label %271

270:                                              ; preds = %261
  call void @_ZdlPv(ptr noundef %263) #22
  br label %271

271:                                              ; preds = %270, %266, %145
  %272 = phi { ptr, i32 } [ %146, %145 ], [ %262, %266 ], [ %262, %270 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  br label %587

273:                                              ; preds = %260, %86
  %274 = load ptr, ptr %63, align 8, !tbaa !102
  %275 = getelementptr inbounds ptr, ptr %274, i64 5
  %276 = load ptr, ptr %275, align 8
  %277 = invoke noundef i32 %276(ptr noundef nonnull align 8 dereferenceable(112) %63)
          to label %278 unwind label %77, !prof !131

278:                                              ; preds = %273
  %279 = icmp eq i32 %277, 8
  br i1 %279, label %280, label %405, !prof !145

280:                                              ; preds = %278
  %281 = getelementptr inbounds %class.InterfaceNameElement, ptr %63, i64 0, i32 1
  %282 = load ptr, ptr %281, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #20
  %283 = load ptr, ptr %27, align 8, !tbaa !113
  %284 = load ptr, ptr %283, align 8, !tbaa !102
  %285 = getelementptr inbounds ptr, ptr %284, i64 23
  %286 = load ptr, ptr %285, align 8
  invoke void %286(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(200) %283, ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %282)
          to label %287 unwind label %326, !prof !146

287:                                              ; preds = %280
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %288 unwind label %328, !prof !147

288:                                              ; preds = %287
  %289 = load ptr, ptr %27, align 8, !tbaa !113
  %290 = load ptr, ptr %11, align 8, !tbaa !133
  %291 = load ptr, ptr %289, align 8, !tbaa !102
  %292 = getelementptr inbounds ptr, ptr %291, i64 20
  %293 = load ptr, ptr %292, align 8
  %294 = invoke noundef ptr %293(ptr noundef nonnull align 8 dereferenceable(200) %289, ptr noundef %290)
          to label %295 unwind label %330, !prof !148

295:                                              ; preds = %288
  %296 = load ptr, ptr %294, align 8, !tbaa !102
  %297 = getelementptr inbounds ptr, ptr %296, i64 6
  %298 = load ptr, ptr %297, align 8
  %299 = invoke noundef i32 %298(ptr noundef nonnull align 8 dereferenceable(152) %294)
          to label %300 unwind label %330, !prof !149

300:                                              ; preds = %295
  %301 = load ptr, ptr %0, align 8, !tbaa !102
  %302 = getelementptr inbounds ptr, ptr %301, i64 6
  %303 = load ptr, ptr %302, align 8
  %304 = invoke noundef i32 %303(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %305 unwind label %330, !prof !149

305:                                              ; preds = %300
  %306 = icmp eq i32 %304, 3
  %307 = select i1 %306, i32 4, i32 2, !prof !150
  %308 = icmp eq i32 %299, %307
  br i1 %308, label %336, label %309, !prof !147

309:                                              ; preds = %305
  %310 = call ptr @__cxa_allocate_exception(i64 48) #20
  %311 = load ptr, ptr %0, align 8, !tbaa !102
  %312 = getelementptr inbounds ptr, ptr %311, i64 4
  %313 = load ptr, ptr %312, align 8
  %314 = invoke noundef ptr %313(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %315 unwind label %334

315:                                              ; preds = %309
  %316 = load ptr, ptr %11, align 8, !tbaa !133
  %317 = load ptr, ptr %0, align 8, !tbaa !102
  %318 = getelementptr inbounds ptr, ptr %317, i64 6
  %319 = load ptr, ptr %318, align 8
  %320 = invoke noundef i32 %319(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %321 unwind label %334

321:                                              ; preds = %315
  %322 = icmp eq i32 %320, 3
  %323 = select i1 %322, ptr @.str.3, ptr @.str.4
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %310, ptr noundef %314, ptr noundef nonnull @.str.2, ptr noundef %316, ptr noundef nonnull %323)
          to label %324 unwind label %334

324:                                              ; preds = %321
  invoke void @__cxa_throw(ptr nonnull %310, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
          to label %325 unwind label %332

325:                                              ; preds = %324
  unreachable

326:                                              ; preds = %280
  %327 = landingpad { ptr, i32 }
          cleanup
  br label %403

328:                                              ; preds = %287
  %329 = landingpad { ptr, i32 }
          cleanup
  br label %393

330:                                              ; preds = %288, %295, %300
  %331 = landingpad { ptr, i32 }
          cleanup
  br label %393

332:                                              ; preds = %324
  %333 = landingpad { ptr, i32 }
          cleanup
  br label %393

334:                                              ; preds = %321, %315, %309
  %335 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %310) #20
  br label %393

336:                                              ; preds = %305, %373
  %337 = phi i32 [ %374, %373 ], [ 0, %305 ]
  %338 = load ptr, ptr %294, align 8, !tbaa !102
  %339 = getelementptr inbounds ptr, ptr %338, i64 10
  %340 = load ptr, ptr %339, align 8
  %341 = invoke noundef i32 %340(ptr noundef nonnull align 8 dereferenceable(152) %294)
          to label %342 unwind label %354, !prof !151

342:                                              ; preds = %336
  %343 = icmp slt i32 %337, %341
  br i1 %343, label %356, label %344, !prof !150

344:                                              ; preds = %342
  %345 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %346 = load ptr, ptr %11, align 8, !tbaa !133
  %347 = icmp eq ptr %346, %345
  br i1 %347, label %348, label %352, !prof !147

348:                                              ; preds = %344
  %349 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %350 = load i64, ptr %349, align 8, !tbaa !109
  %351 = icmp ult i64 %350, 16
  call void @llvm.assume(i1 %351)
  br label %353

352:                                              ; preds = %344
  call void @_ZdlPv(ptr noundef %346) #22
  br label %353

353:                                              ; preds = %348, %352
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #20
  br label %405

354:                                              ; preds = %336
  %355 = landingpad { ptr, i32 }
          cleanup
  br label %393

356:                                              ; preds = %342
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #20
  %357 = load ptr, ptr %294, align 8, !tbaa !102
  %358 = getelementptr inbounds ptr, ptr %357, i64 11
  %359 = load ptr, ptr %358, align 8
  %360 = invoke noundef ptr %359(ptr noundef nonnull align 8 dereferenceable(152) %294, i32 noundef %337)
          to label %361 unwind label %375

361:                                              ; preds = %356
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %360, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %362 unwind label %377

362:                                              ; preds = %361
  %363 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %364 unwind label %379

364:                                              ; preds = %362
  %365 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %366 = load ptr, ptr %12, align 8, !tbaa !133
  %367 = icmp eq ptr %366, %365
  br i1 %367, label %368, label %372

368:                                              ; preds = %364
  %369 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %370 = load i64, ptr %369, align 8, !tbaa !109
  %371 = icmp ult i64 %370, 16
  call void @llvm.assume(i1 %371)
  br label %373

372:                                              ; preds = %364
  call void @_ZdlPv(ptr noundef %366) #22
  br label %373

373:                                              ; preds = %368, %372
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #20
  %374 = add nuw nsw i32 %337, 1
  br label %336, !llvm.loop !152

375:                                              ; preds = %356
  %376 = landingpad { ptr, i32 }
          cleanup
  br label %391

377:                                              ; preds = %361
  %378 = landingpad { ptr, i32 }
          cleanup
  br label %389

379:                                              ; preds = %362
  %380 = landingpad { ptr, i32 }
          cleanup
  %381 = load ptr, ptr %12, align 8, !tbaa !133
  %382 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %383 = icmp eq ptr %381, %382
  br i1 %383, label %384, label %388

384:                                              ; preds = %379
  %385 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %386 = load i64, ptr %385, align 8, !tbaa !109
  %387 = icmp ult i64 %386, 16
  call void @llvm.assume(i1 %387)
  br label %389

388:                                              ; preds = %379
  call void @_ZdlPv(ptr noundef %381) #22
  br label %389

389:                                              ; preds = %388, %384, %377
  %390 = phi { ptr, i32 } [ %378, %377 ], [ %380, %384 ], [ %380, %388 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #20
  br label %391

391:                                              ; preds = %389, %375
  %392 = phi { ptr, i32 } [ %390, %389 ], [ %376, %375 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #20
  br label %393

393:                                              ; preds = %330, %332, %334, %391, %354, %328
  %394 = phi { ptr, i32 } [ %329, %328 ], [ %335, %334 ], [ %392, %391 ], [ %355, %354 ], [ %331, %330 ], [ %333, %332 ]
  %395 = load ptr, ptr %11, align 8, !tbaa !133
  %396 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %397 = icmp eq ptr %395, %396
  br i1 %397, label %398, label %402

398:                                              ; preds = %393
  %399 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %400 = load i64, ptr %399, align 8, !tbaa !109
  %401 = icmp ult i64 %400, 16
  call void @llvm.assume(i1 %401)
  br label %403

402:                                              ; preds = %393
  call void @_ZdlPv(ptr noundef %395) #22
  br label %403

403:                                              ; preds = %402, %398, %326
  %404 = phi { ptr, i32 } [ %327, %326 ], [ %394, %398 ], [ %394, %402 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #20
  br label %587

405:                                              ; preds = %278, %353
  %406 = load ptr, ptr %63, align 8, !tbaa !102
  %407 = getelementptr inbounds ptr, ptr %406, i64 25
  %408 = load ptr, ptr %407, align 8
  %409 = invoke noundef ptr %408(ptr noundef nonnull align 8 dereferenceable(112) %63)
          to label %62 unwind label %77, !prof !153, !llvm.loop !154

410:                                              ; preds = %66, %421
  %411 = phi i64 [ %422, %421 ], [ 0, %66 ]
  %412 = phi ptr [ %424, %421 ], [ %68, %66 ]
  %413 = load ptr, ptr %27, align 8, !tbaa !113
  %414 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %412, i64 %411
  %415 = load ptr, ptr %414, align 8, !tbaa !133
  %416 = load ptr, ptr %413, align 8, !tbaa !102
  %417 = getelementptr inbounds ptr, ptr %416, i64 20
  %418 = load ptr, ptr %417, align 8
  %419 = invoke noundef ptr %418(ptr noundef nonnull align 8 dereferenceable(200) %413, ptr noundef %415)
          to label %420 unwind label %431, !prof !148

420:                                              ; preds = %410
  invoke void @_ZN11NEDTypeInfo26checkComplianceToInterfaceEPS_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %419)
          to label %421 unwind label %431, !prof !147

421:                                              ; preds = %420
  %422 = add nuw nsw i64 %411, 1
  %423 = load ptr, ptr %23, align 8, !tbaa !128
  %424 = load ptr, ptr %22, align 8, !tbaa !129
  %425 = ptrtoint ptr %423 to i64
  %426 = ptrtoint ptr %424 to i64
  %427 = sub i64 %425, %426
  %428 = shl i64 %427, 27
  %429 = ashr i64 %428, 32
  %430 = icmp slt i64 %422, %429
  br i1 %430, label %410, label %433, !prof !150, !llvm.loop !155

431:                                              ; preds = %420, %410
  %432 = landingpad { ptr, i32 }
          cleanup
  br label %587

433:                                              ; preds = %421, %66, %65, %65
  %434 = load ptr, ptr %0, align 8, !tbaa !102
  %435 = getelementptr inbounds ptr, ptr %434, i64 6
  %436 = load ptr, ptr %435, align 8
  %437 = invoke noundef i32 %436(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %438 unwind label %485, !prof !156

438:                                              ; preds = %433
  %439 = icmp eq i32 %437, 0
  br i1 %439, label %447, label %440, !prof !157

440:                                              ; preds = %438
  %441 = load ptr, ptr %0, align 8, !tbaa !102
  %442 = getelementptr inbounds ptr, ptr %441, i64 6
  %443 = load ptr, ptr %442, align 8
  %444 = invoke noundef i32 %443(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %445 unwind label %485, !prof !158

445:                                              ; preds = %440
  %446 = icmp eq i32 %444, 3
  br i1 %446, label %447, label %571, !prof !159

447:                                              ; preds = %445, %438
  %448 = load ptr, ptr %0, align 8, !tbaa !102
  %449 = getelementptr inbounds ptr, ptr %448, i64 4
  %450 = load ptr, ptr %449, align 8
  %451 = invoke noundef ptr %450(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %452 unwind label %487, !prof !160

452:                                              ; preds = %447
  %453 = invoke noundef ptr @_ZN14NEDElementUtil22getLocalStringPropertyEP10NEDElementPKc(ptr noundef %451, ptr noundef nonnull @.str.5)
          to label %454 unwind label %487, !prof !161

454:                                              ; preds = %452
  %455 = icmp eq ptr %453, null
  br i1 %455, label %503, label %456, !prof !162

456:                                              ; preds = %454
  %457 = load i8, ptr %453, align 1, !tbaa !112
  %458 = icmp eq i8 %457, 0
  br i1 %458, label %503, label %459, !prof !163

459:                                              ; preds = %456
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #20
  %460 = load ptr, ptr %0, align 8, !tbaa !102
  %461 = getelementptr inbounds ptr, ptr %460, i64 18
  %462 = load ptr, ptr %461, align 8
  invoke void %462(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %463 unwind label %489, !prof !164

463:                                              ; preds = %459
  %464 = load ptr, ptr %15, align 8, !tbaa !133
  invoke void @_Z8opp_joinB5cxx11PKcS0_S0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull @.str.6, ptr noundef %464, ptr noundef nonnull %453)
          to label %465 unwind label %491, !prof !165

465:                                              ; preds = %463
  %466 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %14) #20
  %467 = load ptr, ptr %14, align 8, !tbaa !133
  %468 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 2
  %469 = icmp eq ptr %467, %468
  br i1 %469, label %470, label %474, !prof !165

470:                                              ; preds = %465
  %471 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 0, i32 1
  %472 = load i64, ptr %471, align 8, !tbaa !109
  %473 = icmp ult i64 %472, 16
  call void @llvm.assume(i1 %473)
  br label %475

474:                                              ; preds = %465
  call void @_ZdlPv(ptr noundef %467) #22
  br label %475

475:                                              ; preds = %470, %474
  %476 = load ptr, ptr %15, align 8, !tbaa !133
  %477 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  %478 = icmp eq ptr %476, %477
  br i1 %478, label %479, label %483, !prof !165

479:                                              ; preds = %475
  %480 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  %481 = load i64, ptr %480, align 8, !tbaa !109
  %482 = icmp ult i64 %481, 16
  call void @llvm.assume(i1 %482)
  br label %484

483:                                              ; preds = %475
  call void @_ZdlPv(ptr noundef %476) #22
  br label %484

484:                                              ; preds = %479, %483
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #20
  br label %571

485:                                              ; preds = %571, %440, %433
  %486 = landingpad { ptr, i32 }
          cleanup
  br label %587

487:                                              ; preds = %520, %515, %510, %503, %452, %447
  %488 = landingpad { ptr, i32 }
          cleanup
  br label %587

489:                                              ; preds = %459
  %490 = landingpad { ptr, i32 }
          cleanup
  br label %501

491:                                              ; preds = %463
  %492 = landingpad { ptr, i32 }
          cleanup
  %493 = load ptr, ptr %15, align 8, !tbaa !133
  %494 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 2
  %495 = icmp eq ptr %493, %494
  br i1 %495, label %496, label %500

496:                                              ; preds = %491
  %497 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %15, i64 0, i32 1
  %498 = load i64, ptr %497, align 8, !tbaa !109
  %499 = icmp ult i64 %498, 16
  call void @llvm.assume(i1 %499)
  br label %501

500:                                              ; preds = %491
  call void @_ZdlPv(ptr noundef %493) #22
  br label %501

501:                                              ; preds = %500, %496, %489
  %502 = phi { ptr, i32 } [ %490, %489 ], [ %492, %496 ], [ %492, %500 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #20
  br label %587

503:                                              ; preds = %454, %456
  %504 = load ptr, ptr %0, align 8, !tbaa !102
  %505 = getelementptr inbounds ptr, ptr %504, i64 10
  %506 = load ptr, ptr %505, align 8
  %507 = invoke noundef i32 %506(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %508 unwind label %487, !prof !166

508:                                              ; preds = %503
  %509 = icmp eq i32 %507, 0
  br i1 %509, label %526, label %510, !prof !167

510:                                              ; preds = %508
  %511 = load ptr, ptr %0, align 8, !tbaa !102
  %512 = getelementptr inbounds ptr, ptr %511, i64 19
  %513 = load ptr, ptr %512, align 8
  %514 = invoke noundef ptr %513(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %515 unwind label %487, !prof !168

515:                                              ; preds = %510
  %516 = load ptr, ptr %514, align 8, !tbaa !102
  %517 = getelementptr inbounds ptr, ptr %516, i64 16
  %518 = load ptr, ptr %517, align 8
  %519 = invoke noundef ptr %518(ptr noundef nonnull align 8 dereferenceable(152) %514)
          to label %520 unwind label %487, !prof !169

520:                                              ; preds = %515
  %521 = icmp eq ptr %519, null
  %522 = select i1 %521, ptr @.str.7, ptr %519, !prof !143
  %523 = load i64, ptr %26, align 8, !tbaa !109
  %524 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %522) #20
  %525 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %24, i64 noundef 0, i64 noundef %523, ptr noundef nonnull %522, i64 noundef %524)
          to label %571 unwind label %487, !prof !135

526:                                              ; preds = %508
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #20
  %527 = load ptr, ptr %0, align 8, !tbaa !102
  %528 = getelementptr inbounds ptr, ptr %527, i64 18
  %529 = load ptr, ptr %528, align 8
  invoke void %529(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %530 unwind label %557, !prof !170

530:                                              ; preds = %526
  %531 = load ptr, ptr %17, align 8, !tbaa !133
  %532 = load ptr, ptr %0, align 8, !tbaa !102
  %533 = getelementptr inbounds ptr, ptr %532, i64 2
  %534 = load ptr, ptr %533, align 8
  %535 = invoke noundef ptr %534(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %536 unwind label %559, !prof !171

536:                                              ; preds = %530
  invoke void @_Z8opp_joinB5cxx11PKcS0_S0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull @.str.6, ptr noundef %531, ptr noundef %535)
          to label %537 unwind label %559, !prof !172

537:                                              ; preds = %536
  %538 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %16) #20
  %539 = load ptr, ptr %16, align 8, !tbaa !133
  %540 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 2
  %541 = icmp eq ptr %539, %540
  br i1 %541, label %542, label %546, !prof !172

542:                                              ; preds = %537
  %543 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %16, i64 0, i32 1
  %544 = load i64, ptr %543, align 8, !tbaa !109
  %545 = icmp ult i64 %544, 16
  call void @llvm.assume(i1 %545)
  br label %547

546:                                              ; preds = %537
  call void @_ZdlPv(ptr noundef %539) #22
  br label %547

547:                                              ; preds = %542, %546
  %548 = load ptr, ptr %17, align 8, !tbaa !133
  %549 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  %550 = icmp eq ptr %548, %549
  br i1 %550, label %551, label %555, !prof !172

551:                                              ; preds = %547
  %552 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  %553 = load i64, ptr %552, align 8, !tbaa !109
  %554 = icmp ult i64 %553, 16
  call void @llvm.assume(i1 %554)
  br label %556

555:                                              ; preds = %547
  call void @_ZdlPv(ptr noundef %548) #22
  br label %556

556:                                              ; preds = %551, %555
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #20
  br label %571

557:                                              ; preds = %526
  %558 = landingpad { ptr, i32 }
          cleanup
  br label %569

559:                                              ; preds = %536, %530
  %560 = landingpad { ptr, i32 }
          cleanup
  %561 = load ptr, ptr %17, align 8, !tbaa !133
  %562 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 2
  %563 = icmp eq ptr %561, %562
  br i1 %563, label %564, label %568

564:                                              ; preds = %559
  %565 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %17, i64 0, i32 1
  %566 = load i64, ptr %565, align 8, !tbaa !109
  %567 = icmp ult i64 %566, 16
  call void @llvm.assume(i1 %567)
  br label %569

568:                                              ; preds = %559
  call void @_ZdlPv(ptr noundef %561) #22
  br label %569

569:                                              ; preds = %568, %564, %557
  %570 = phi { ptr, i32 } [ %558, %557 ], [ %560, %564 ], [ %560, %568 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #20
  br label %587

571:                                              ; preds = %520, %484, %556, %445
  %572 = load ptr, ptr %0, align 8, !tbaa !102
  %573 = getelementptr inbounds ptr, ptr %572, i64 5
  %574 = load ptr, ptr %573, align 8
  %575 = invoke noundef ptr %574(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %576 unwind label %485, !prof !173

576:                                              ; preds = %571
  %577 = getelementptr inbounds %struct.NEDLookupContext, ptr %5, i64 0, i32 1
  %578 = load ptr, ptr %577, align 8, !tbaa !133
  %579 = getelementptr inbounds %struct.NEDLookupContext, ptr %5, i64 0, i32 1, i32 2
  %580 = icmp eq ptr %578, %579
  br i1 %580, label %581, label %585, !prof !120

581:                                              ; preds = %576
  %582 = getelementptr inbounds %struct.NEDLookupContext, ptr %5, i64 0, i32 1, i32 1
  %583 = load i64, ptr %582, align 8, !tbaa !109
  %584 = icmp ult i64 %583, 16
  call void @llvm.assume(i1 %584)
  br label %586

585:                                              ; preds = %576
  call void @_ZdlPv(ptr noundef %578) #22
  br label %586

586:                                              ; preds = %581, %585
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #20
  ret void

587:                                              ; preds = %77, %79, %487, %501, %569, %271, %403, %485, %431
  %588 = phi { ptr, i32 } [ %486, %485 ], [ %432, %431 ], [ %272, %271 ], [ %404, %403 ], [ %488, %487 ], [ %570, %569 ], [ %502, %501 ], [ %78, %77 ], [ %80, %79 ]
  %589 = getelementptr inbounds %struct.NEDLookupContext, ptr %5, i64 0, i32 1
  %590 = load ptr, ptr %589, align 8, !tbaa !133
  %591 = getelementptr inbounds %struct.NEDLookupContext, ptr %5, i64 0, i32 1, i32 2
  %592 = icmp eq ptr %590, %591
  br i1 %592, label %593, label %597

593:                                              ; preds = %587
  %594 = getelementptr inbounds %struct.NEDLookupContext, ptr %5, i64 0, i32 1, i32 1
  %595 = load i64, ptr %594, align 8, !tbaa !109
  %596 = icmp ult i64 %595, 16
  call void @llvm.assume(i1 %596)
  br label %598

597:                                              ; preds = %587
  call void @_ZdlPv(ptr noundef %590) #22
  br label %598

598:                                              ; preds = %597, %593, %75
  %599 = phi { ptr, i32 } [ %76, %75 ], [ %588, %593 ], [ %588, %597 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #20
  br label %600

600:                                              ; preds = %598, %50, %40
  %601 = phi { ptr, i32 } [ %41, %40 ], [ %51, %50 ], [ %599, %598 ]
  %602 = load ptr, ptr %24, align 8, !tbaa !133
  %603 = icmp eq ptr %602, %25
  br i1 %603, label %604, label %607

604:                                              ; preds = %600
  %605 = load i64, ptr %26, align 8, !tbaa !109
  %606 = icmp ult i64 %605, 16
  call void @llvm.assume(i1 %606)
  br label %608

607:                                              ; preds = %600
  call void @_ZdlPv(ptr noundef %602) #22
  br label %608

608:                                              ; preds = %604, %607
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #20
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %21) #20
  %609 = load ptr, ptr %18, align 8, !tbaa !133
  %610 = icmp eq ptr %609, %19
  br i1 %610, label %611, label %614

611:                                              ; preds = %608
  %612 = load i64, ptr %20, align 8, !tbaa !109
  %613 = icmp ult i64 %612, 16
  call void @llvm.assume(i1 %613)
  br label %615

614:                                              ; preds = %608
  call void @_ZdlPv(ptr noundef %609) #22
  br label %615

615:                                              ; preds = %611, %614
  resume { ptr, i32 } %601

616:                                              ; preds = %49
  unreachable
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN12NEDExceptionC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12NEDExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV12NEDException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !109
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #22
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN16NEDResourceCache18getParentContextOfEPKcP10NEDElement(ptr dead_on_unwind writable sret(%struct.NEDLookupContext) align 8, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !175 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !176
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %16, label %8, !prof !165

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !105
  %10 = load ptr, ptr %1, align 8, !tbaa !133
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !109
  %13 = getelementptr inbounds i8, ptr %10, i64 %12
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %10, ptr noundef %13)
  %14 = load ptr, ptr %3, align 8, !tbaa !128
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %14, i64 1
  store ptr %15, ptr %3, align 8, !tbaa !128
  br label %17

16:                                               ; preds = %2
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %17

17:                                               ; preds = %16, %8
  ret void
}

declare void @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef, ...) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !105
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.36) #21
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store i64 %9, ptr %4, align 8, !tbaa !178
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !179

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !133
  %13 = load i64, ptr %4, align 8, !tbaa !178
  store i64 %13, ptr %5, align 8, !tbaa !112
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !133
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !180

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !112
  store i8 %17, ptr %15, align 1, !tbaa !112
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !181
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !178
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !109
  %22 = load ptr, ptr %0, align 8, !tbaa !133
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11NEDTypeInfo26checkComplianceToInterfaceEPS_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %3 = load ptr, ptr %1, align 8, !tbaa !102
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(152) %1), !prof !183
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds ptr, ptr %7, i64 30
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(112) %6, i32 noundef 14), !prof !184
  %11 = icmp eq ptr %10, null
  br i1 %11, label %114, label %12, !prof !150

12:                                               ; preds = %2
  %13 = load ptr, ptr %10, align 8, !tbaa !102
  %14 = getelementptr inbounds ptr, ptr %13, i64 39
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(113) %10), !prof !185
  %17 = icmp eq ptr %16, null
  br i1 %17, label %114, label %18, !prof !186

18:                                               ; preds = %12, %108
  %19 = phi ptr [ %112, %108 ], [ %16, %12 ]
  %20 = getelementptr inbounds %class.ParamElement, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !133
  %22 = tail call noundef ptr @_ZNK11NEDTypeInfo13findParamDeclEPKc(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %21)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %48, !prof !187

24:                                               ; preds = %18
  %25 = getelementptr inbounds %class.ParamElement, ptr %19, i64 0, i32 4
  %26 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %27 = load ptr, ptr %0, align 8, !tbaa !102
  %28 = getelementptr inbounds ptr, ptr %27, i64 4
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %31 unwind label %46

31:                                               ; preds = %24
  %32 = load ptr, ptr %0, align 8, !tbaa !102
  %33 = getelementptr inbounds ptr, ptr %32, i64 6
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef i32 %34(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %36 unwind label %46

36:                                               ; preds = %31
  %37 = load ptr, ptr %25, align 8, !tbaa !133
  %38 = load ptr, ptr %1, align 8, !tbaa !102
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %42 unwind label %46

42:                                               ; preds = %36
  %43 = icmp eq i32 %35, 3
  %44 = select i1 %43, ptr @.str.3, ptr @.str.4
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef %30, ptr noundef nonnull @.str.18, ptr noundef nonnull %44, ptr noundef %37, ptr noundef %41)
          to label %45 unwind label %46

45:                                               ; preds = %42
  tail call void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

46:                                               ; preds = %42, %36, %31, %24
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %320

48:                                               ; preds = %18
  %49 = getelementptr inbounds %class.ParamElement, ptr %22, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !188
  %51 = getelementptr inbounds %class.ParamElement, ptr %19, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !188
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %71, label %54, !prof !194

54:                                               ; preds = %48
  %55 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %56 = getelementptr inbounds %class.ParamElement, ptr %22, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !133
  %58 = load ptr, ptr %19, align 8, !tbaa !102
  %59 = getelementptr inbounds ptr, ptr %58, i64 17
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(185) %19, ptr noundef nonnull @.str.20)
          to label %62 unwind label %69

62:                                               ; preds = %54
  %63 = load ptr, ptr %1, align 8, !tbaa !102
  %64 = getelementptr inbounds ptr, ptr %63, i64 3
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %67 unwind label %69

67:                                               ; preds = %62
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull %22, ptr noundef nonnull @.str.19, ptr noundef %57, ptr noundef %61, ptr noundef %66)
          to label %68 unwind label %69

68:                                               ; preds = %67
  tail call void @__cxa_throw(ptr nonnull %55, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

69:                                               ; preds = %67, %62, %54
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %320

71:                                               ; preds = %48
  %72 = getelementptr inbounds %class.ParamElement, ptr %22, i64 0, i32 2
  %73 = load i8, ptr %72, align 4, !tbaa !195, !range !196, !noundef !197
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %92, label %75, !prof !194

75:                                               ; preds = %71
  %76 = getelementptr inbounds %class.ParamElement, ptr %19, i64 0, i32 2
  %77 = load i8, ptr %76, align 4, !tbaa !195, !range !196, !noundef !197
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %81 = getelementptr inbounds %class.ParamElement, ptr %22, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !133
  %83 = load ptr, ptr %1, align 8, !tbaa !102
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  %86 = invoke noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %87 unwind label %89

87:                                               ; preds = %79
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %80, ptr noundef nonnull %22, ptr noundef nonnull @.str.21, ptr noundef %82, ptr noundef %86)
          to label %88 unwind label %89

88:                                               ; preds = %87
  tail call void @__cxa_throw(ptr nonnull %80, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

89:                                               ; preds = %87, %79
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %320

91:                                               ; preds = %75
  br i1 %74, label %92, label %108, !prof !194

92:                                               ; preds = %71, %91
  %93 = getelementptr inbounds %class.ParamElement, ptr %19, i64 0, i32 2
  %94 = load i8, ptr %93, align 4, !tbaa !195, !range !196, !noundef !197
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %108, label %96, !prof !194

96:                                               ; preds = %92
  %97 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %98 = getelementptr inbounds %class.ParamElement, ptr %22, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !133
  %100 = load ptr, ptr %1, align 8, !tbaa !102
  %101 = getelementptr inbounds ptr, ptr %100, i64 3
  %102 = load ptr, ptr %101, align 8
  %103 = invoke noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %104 unwind label %106

104:                                              ; preds = %96
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %97, ptr noundef nonnull %22, ptr noundef nonnull @.str.22, ptr noundef %99, ptr noundef %103)
          to label %105 unwind label %106

105:                                              ; preds = %104
  tail call void @__cxa_throw(ptr nonnull %97, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

106:                                              ; preds = %104, %96
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %320

108:                                              ; preds = %92, %91
  %109 = load ptr, ptr %19, align 8, !tbaa !102
  %110 = getelementptr inbounds ptr, ptr %109, i64 36
  %111 = load ptr, ptr %110, align 8
  %112 = tail call noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(185) %19), !prof !198
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %18, !prof !199, !llvm.loop !200

114:                                              ; preds = %108, %12, %2
  %115 = load ptr, ptr %1, align 8, !tbaa !102
  %116 = getelementptr inbounds ptr, ptr %115, i64 4
  %117 = load ptr, ptr %116, align 8
  %118 = tail call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(152) %1), !prof !183
  %119 = load ptr, ptr %118, align 8, !tbaa !102
  %120 = getelementptr inbounds ptr, ptr %119, i64 30
  %121 = load ptr, ptr %120, align 8
  %122 = tail call noundef ptr %121(ptr noundef nonnull align 8 dereferenceable(112) %118, i32 noundef 19), !prof !184
  %123 = icmp eq ptr %122, null
  br i1 %123, label %319, label %124, !prof !150

124:                                              ; preds = %114
  %125 = load ptr, ptr %122, align 8, !tbaa !102
  %126 = getelementptr inbounds ptr, ptr %125, i64 38
  %127 = load ptr, ptr %126, align 8
  %128 = tail call noundef ptr %127(ptr noundef nonnull align 8 dereferenceable(112) %122), !prof !201
  %129 = icmp eq ptr %128, null
  br i1 %129, label %319, label %130, !prof !186

130:                                              ; preds = %124, %313
  %131 = phi ptr [ %317, %313 ], [ %128, %124 ]
  %132 = getelementptr inbounds %class.GateElement, ptr %131, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !133
  %134 = tail call noundef ptr @_ZNK11NEDTypeInfo12findGateDeclEPKc(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %133)
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %160, !prof !202

136:                                              ; preds = %130
  %137 = getelementptr inbounds %class.GateElement, ptr %131, i64 0, i32 1
  %138 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %139 = load ptr, ptr %0, align 8, !tbaa !102
  %140 = getelementptr inbounds ptr, ptr %139, i64 4
  %141 = load ptr, ptr %140, align 8
  %142 = invoke noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %143 unwind label %158

143:                                              ; preds = %136
  %144 = load ptr, ptr %0, align 8, !tbaa !102
  %145 = getelementptr inbounds ptr, ptr %144, i64 6
  %146 = load ptr, ptr %145, align 8
  %147 = invoke noundef i32 %146(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %148 unwind label %158

148:                                              ; preds = %143
  %149 = load ptr, ptr %137, align 8, !tbaa !133
  %150 = load ptr, ptr %1, align 8, !tbaa !102
  %151 = getelementptr inbounds ptr, ptr %150, i64 3
  %152 = load ptr, ptr %151, align 8
  %153 = invoke noundef ptr %152(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %154 unwind label %158

154:                                              ; preds = %148
  %155 = icmp eq i32 %147, 3
  %156 = select i1 %155, ptr @.str.3, ptr @.str.4
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %138, ptr noundef %142, ptr noundef nonnull @.str.23, ptr noundef nonnull %156, ptr noundef %149, ptr noundef %153)
          to label %157 unwind label %158

157:                                              ; preds = %154
  tail call void @__cxa_throw(ptr nonnull %138, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

158:                                              ; preds = %154, %148, %143, %136
  %159 = landingpad { ptr, i32 }
          cleanup
  br label %320

160:                                              ; preds = %130
  %161 = getelementptr inbounds %class.GateElement, ptr %134, i64 0, i32 2
  %162 = load i32, ptr %161, align 8, !tbaa !203
  %163 = getelementptr inbounds %class.GateElement, ptr %131, i64 0, i32 2
  %164 = load i32, ptr %163, align 8, !tbaa !203
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %183, label %166, !prof !205

166:                                              ; preds = %160
  %167 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %168 = getelementptr inbounds %class.GateElement, ptr %134, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !133
  %170 = load ptr, ptr %131, align 8, !tbaa !102
  %171 = getelementptr inbounds ptr, ptr %170, i64 17
  %172 = load ptr, ptr %171, align 8
  %173 = invoke noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(184) %131, ptr noundef nonnull @.str.20)
          to label %174 unwind label %181

174:                                              ; preds = %166
  %175 = load ptr, ptr %1, align 8, !tbaa !102
  %176 = getelementptr inbounds ptr, ptr %175, i64 3
  %177 = load ptr, ptr %176, align 8
  %178 = invoke noundef ptr %177(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %179 unwind label %181

179:                                              ; preds = %174
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %167, ptr noundef nonnull %134, ptr noundef nonnull @.str.24, ptr noundef %169, ptr noundef %173, ptr noundef %178)
          to label %180 unwind label %181

180:                                              ; preds = %179
  tail call void @__cxa_throw(ptr nonnull %167, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

181:                                              ; preds = %179, %174, %166
  %182 = landingpad { ptr, i32 }
          cleanup
  br label %320

183:                                              ; preds = %160
  %184 = getelementptr inbounds %class.GateElement, ptr %131, i64 0, i32 3
  %185 = load i8, ptr %184, align 4, !tbaa !206, !range !196, !noundef !197
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %204, !prof !202

187:                                              ; preds = %183
  %188 = getelementptr inbounds %class.GateElement, ptr %134, i64 0, i32 3
  %189 = load i8, ptr %188, align 4, !tbaa !206, !range !196, !noundef !197
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %203, label %191

191:                                              ; preds = %187
  %192 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %193 = getelementptr inbounds %class.GateElement, ptr %134, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !133
  %195 = load ptr, ptr %1, align 8, !tbaa !102
  %196 = getelementptr inbounds ptr, ptr %195, i64 3
  %197 = load ptr, ptr %196, align 8
  %198 = invoke noundef ptr %197(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %199 unwind label %201

199:                                              ; preds = %191
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %192, ptr noundef nonnull %134, ptr noundef nonnull @.str.25, ptr noundef %194, ptr noundef %198)
          to label %200 unwind label %201

200:                                              ; preds = %199
  tail call void @__cxa_throw(ptr nonnull %192, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

201:                                              ; preds = %199, %191
  %202 = landingpad { ptr, i32 }
          cleanup
  br label %320

203:                                              ; preds = %187
  br i1 %186, label %313, label %204, !prof !202

204:                                              ; preds = %183, %203
  %205 = getelementptr inbounds %class.GateElement, ptr %134, i64 0, i32 3
  %206 = load i8, ptr %205, align 4, !tbaa !206, !range !196, !noundef !197
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %208, label %220, !prof !202

208:                                              ; preds = %204
  %209 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %210 = getelementptr inbounds %class.GateElement, ptr %134, i64 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !133
  %212 = load ptr, ptr %1, align 8, !tbaa !102
  %213 = getelementptr inbounds ptr, ptr %212, i64 3
  %214 = load ptr, ptr %213, align 8
  %215 = invoke noundef ptr %214(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %216 unwind label %218

216:                                              ; preds = %208
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %209, ptr noundef nonnull %134, ptr noundef nonnull @.str.26, ptr noundef %211, ptr noundef %215)
          to label %217 unwind label %218

217:                                              ; preds = %216
  tail call void @__cxa_throw(ptr nonnull %209, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

218:                                              ; preds = %216, %208
  %219 = landingpad { ptr, i32 }
          cleanup
  br label %320

220:                                              ; preds = %204
  br i1 %186, label %313, label %221, !prof !202

221:                                              ; preds = %220
  %222 = getelementptr inbounds %class.GateElement, ptr %134, i64 0, i32 3
  %223 = load i8, ptr %222, align 4, !tbaa !206, !range !196, !noundef !197
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %313, label %225, !prof !202

225:                                              ; preds = %221
  %226 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %134, i32 noundef 30, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28)
  %227 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %131, i32 noundef 30, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28)
  %228 = getelementptr inbounds %class.GateElement, ptr %134, i64 0, i32 4
  %229 = load ptr, ptr %228, align 8, !tbaa !133
  %230 = icmp eq ptr %229, null
  br i1 %230, label %234, label %231, !prof !202

231:                                              ; preds = %225
  %232 = load i8, ptr %229, align 1, !tbaa !112
  %233 = icmp eq i8 %232, 0
  br label %234

234:                                              ; preds = %225, %231
  %235 = phi i1 [ true, %225 ], [ %233, %231 ]
  %236 = icmp ne ptr %226, null
  %237 = xor i1 %235, true
  %238 = or i1 %236, %237
  %239 = getelementptr inbounds %class.GateElement, ptr %131, i64 0, i32 4
  %240 = load ptr, ptr %239, align 8, !tbaa !133
  %241 = icmp eq ptr %240, null
  br i1 %241, label %245, label %242, !prof !202

242:                                              ; preds = %234
  %243 = load i8, ptr %240, align 1, !tbaa !112
  %244 = icmp eq i8 %243, 0
  br label %245

245:                                              ; preds = %234, %242
  %246 = phi i1 [ true, %234 ], [ %244, %242 ]
  %247 = icmp ne ptr %227, null
  %248 = xor i1 %246, true
  %249 = or i1 %247, %248
  %250 = xor i1 %238, true
  %251 = or i1 %249, %250
  br i1 %251, label %264, label %252, !prof !205

252:                                              ; preds = %245
  %253 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %254 = getelementptr inbounds %class.GateElement, ptr %134, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !133
  %256 = load ptr, ptr %1, align 8, !tbaa !102
  %257 = getelementptr inbounds ptr, ptr %256, i64 3
  %258 = load ptr, ptr %257, align 8
  %259 = invoke noundef ptr %258(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %260 unwind label %262

260:                                              ; preds = %252
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %253, ptr noundef nonnull %134, ptr noundef nonnull @.str.29, ptr noundef %255, ptr noundef %259)
          to label %261 unwind label %262

261:                                              ; preds = %260
  tail call void @__cxa_throw(ptr nonnull %253, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

262:                                              ; preds = %260, %252
  %263 = landingpad { ptr, i32 }
          cleanup
  br label %320

264:                                              ; preds = %245
  %265 = xor i1 %249, true
  %266 = or i1 %238, %265
  br i1 %266, label %279, label %267, !prof !205

267:                                              ; preds = %264
  %268 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %269 = getelementptr inbounds %class.GateElement, ptr %134, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !133
  %271 = load ptr, ptr %1, align 8, !tbaa !102
  %272 = getelementptr inbounds ptr, ptr %271, i64 3
  %273 = load ptr, ptr %272, align 8
  %274 = invoke noundef ptr %273(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %275 unwind label %277

275:                                              ; preds = %267
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %268, ptr noundef nonnull %134, ptr noundef nonnull @.str.30, ptr noundef %270, ptr noundef %274)
          to label %276 unwind label %277

276:                                              ; preds = %275
  tail call void @__cxa_throw(ptr nonnull %268, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

277:                                              ; preds = %275, %267
  %278 = landingpad { ptr, i32 }
          cleanup
  br label %320

279:                                              ; preds = %264
  %280 = or i1 %250, %265
  br i1 %280, label %313, label %281, !prof !205

281:                                              ; preds = %279
  %282 = and i1 %236, %247
  br i1 %282, label %283, label %285

283:                                              ; preds = %281
  %284 = tail call noundef i32 @_ZN14NEDElementUtil11compareTreeEP10NEDElementS1_(ptr noundef nonnull %226, ptr noundef nonnull %227)
  br label %298

285:                                              ; preds = %281
  br i1 %230, label %293, label %286

286:                                              ; preds = %285
  br i1 %241, label %289, label %287

287:                                              ; preds = %286
  %288 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %229, ptr noundef nonnull dereferenceable(1) %240) #23
  br label %298

289:                                              ; preds = %286
  %290 = load i8, ptr %229, align 1, !tbaa !112
  %291 = icmp ne i8 %290, 0
  %292 = zext i1 %291 to i32
  br label %298

293:                                              ; preds = %285
  br i1 %241, label %298, label %294

294:                                              ; preds = %293
  %295 = load i8, ptr %240, align 1, !tbaa !112
  %296 = icmp ne i8 %295, 0
  %297 = sext i1 %296 to i32
  br label %298

298:                                              ; preds = %294, %293, %289, %287, %283
  %299 = phi i32 [ %284, %283 ], [ %288, %287 ], [ %292, %289 ], [ 0, %293 ], [ %297, %294 ]
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %313, label %301

301:                                              ; preds = %298
  %302 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %303 = getelementptr inbounds %class.GateElement, ptr %134, i64 0, i32 1
  %304 = load ptr, ptr %303, align 8, !tbaa !133
  %305 = load ptr, ptr %1, align 8, !tbaa !102
  %306 = getelementptr inbounds ptr, ptr %305, i64 3
  %307 = load ptr, ptr %306, align 8
  %308 = invoke noundef ptr %307(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %309 unwind label %311

309:                                              ; preds = %301
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %302, ptr noundef nonnull %134, ptr noundef nonnull @.str.30, ptr noundef %304, ptr noundef %308)
          to label %310 unwind label %311

310:                                              ; preds = %309
  tail call void @__cxa_throw(ptr nonnull %302, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

311:                                              ; preds = %309, %301
  %312 = landingpad { ptr, i32 }
          cleanup
  br label %320

313:                                              ; preds = %203, %279, %298, %221, %220
  %314 = load ptr, ptr %131, align 8, !tbaa !102
  %315 = getelementptr inbounds ptr, ptr %314, i64 36
  %316 = load ptr, ptr %315, align 8
  %317 = tail call noundef ptr %316(ptr noundef nonnull align 8 dereferenceable(184) %131), !prof !207
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %130, !prof !208, !llvm.loop !209

319:                                              ; preds = %313, %124, %114
  ret void

320:                                              ; preds = %158, %181, %201, %218, %311, %277, %262, %46, %69, %89, %106
  %321 = phi ptr [ %138, %158 ], [ %167, %181 ], [ %192, %201 ], [ %209, %218 ], [ %302, %311 ], [ %268, %277 ], [ %253, %262 ], [ %26, %46 ], [ %55, %69 ], [ %80, %89 ], [ %97, %106 ]
  %322 = phi { ptr, i32 } [ %159, %158 ], [ %182, %181 ], [ %202, %201 ], [ %219, %218 ], [ %312, %311 ], [ %278, %277 ], [ %263, %262 ], [ %47, %46 ], [ %70, %69 ], [ %90, %89 ], [ %107, %106 ]
  tail call void @__cxa_free_exception(ptr %321) #20
  resume { ptr, i32 } %322
}

declare noundef ptr @_ZN14NEDElementUtil22getLocalStringPropertyEP10NEDElementPKc(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_Z8opp_joinB5cxx11PKcS0_S0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !210 {
  %2 = load ptr, ptr %0, align 8, !tbaa !129
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %19, label %6, !prof !211

6:                                                ; preds = %1, %16
  %7 = phi ptr [ %17, %16 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !133
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %15, !prof !212

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !109
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  br label %16

15:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %8) #22
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 1
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %19, label %6, !prof !213, !llvm.loop !214

19:                                               ; preds = %16, %1
  %20 = load ptr, ptr %0, align 8, !tbaa !129
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !215

22:                                               ; preds = %19
  tail call void @_ZdlPv(ptr noundef %20) #22
  br label %23

23:                                               ; preds = %19, %22
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11NEDTypeInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTV11NEDTypeInfo, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %3, %6
  %8 = select i1 %4, i1 true, i1 %7, !prof !216
  br i1 %8, label %13, label %9, !prof !217

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !tbaa !102
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(112) %3) #20, !prof !218
  br label %13

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !133
  %16 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 8, i32 2
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %22, !prof !219

18:                                               ; preds = %13
  %19 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 8, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !109
  %21 = icmp ult i64 %20, 16
  tail call void @llvm.assume(i1 %21)
  br label %23

22:                                               ; preds = %13
  tail call void @_ZdlPv(ptr noundef %15) #22
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 7
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %24) #20
  %25 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 6
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %25) #20
  %26 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !133
  %28 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 3, i32 2
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %34, !prof !220

30:                                               ; preds = %23
  %31 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 3, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !109
  %33 = icmp ult i64 %32, 16
  tail call void @llvm.assume(i1 %33)
  br label %35

34:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %27) #22
  br label %35

35:                                               ; preds = %30, %34
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11NEDTypeInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #4 align 2 !prof !174 {
  tail call void @_ZN11NEDTypeInfoD2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) #20
  tail call void @_ZdlPv(ptr noundef %0) #22
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo7getNameEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #3 align 2 !prof !221 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(152) %0), !prof !222
  %6 = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 46) #23
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds i8, ptr %6, i64 1
  %9 = select i1 %7, ptr %5, ptr %8, !prof !172
  ret ptr %9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo11getFullNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(152) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !223 {
  %2 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  ret ptr %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo7getTreeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(152) %0) unnamed_addr #9 align 2 !prof !224 {
  %2 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo16getFlattenedTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #3 align 2 !prof !225 {
  %2 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !226

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11NEDTypeInfo18buildFlattenedTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %0)
  store ptr %6, ptr %2, align 8, !tbaa !122
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %2, align 8, !tbaa !122
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo18buildFlattenedTreeEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %2 = alloca %struct.NEDLookupContext, align 8
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #20
  %4 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  call void @_ZN16NEDResourceCache18getParentContextOfEPKcP10NEDElement(ptr dead_on_unwind nonnull writable sret(%struct.NEDLookupContext) align 8 %2, ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %6, align 8, !tbaa !121
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = getelementptr inbounds ptr, ptr %9, i64 30
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(112) %8, i32 noundef 7)
          to label %13 unwind label %22, !prof !227

13:                                               ; preds = %1, %113
  %14 = phi ptr [ %117, %113 ], [ %12, %1 ]
  %15 = phi ptr [ %104, %113 ], [ null, %1 ]
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %24, !prof !226

17:                                               ; preds = %13
  %18 = icmp eq ptr %15, null
  %19 = load ptr, ptr %6, align 8, !tbaa !121
  br i1 %18, label %133, label %130, !prof !217

20:                                               ; preds = %113
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %145

22:                                               ; preds = %1
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %145

24:                                               ; preds = %13
  %25 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 1
  %26 = getelementptr inbounds %class.ExtendsElement, ptr %14, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !133
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %28 = load ptr, ptr %25, align 8, !tbaa !113
  %29 = load ptr, ptr %28, align 8, !tbaa !102
  %30 = getelementptr inbounds ptr, ptr %29, i64 23
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(200) %28, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %27)
          to label %32 unwind label %80, !prof !134

32:                                               ; preds = %24
  %33 = load ptr, ptr %25, align 8, !tbaa !113
  %34 = load ptr, ptr %3, align 8, !tbaa !133
  %35 = load ptr, ptr %33, align 8, !tbaa !102
  %36 = getelementptr inbounds ptr, ptr %35, i64 20
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(200) %33, ptr noundef %34)
          to label %39 unwind label %82, !prof !136

39:                                               ; preds = %32
  %40 = load ptr, ptr %0, align 8, !tbaa !102
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef i32 %42(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %44 unwind label %82, !prof !137

44:                                               ; preds = %39
  %45 = load ptr, ptr %38, align 8, !tbaa !102
  %46 = getelementptr inbounds ptr, ptr %45, i64 6
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef i32 %47(ptr noundef nonnull align 8 dereferenceable(152) %38)
          to label %49 unwind label %82, !prof !137

49:                                               ; preds = %44
  %50 = icmp eq i32 %43, %48
  br i1 %50, label %88, label %51, !prof !135

51:                                               ; preds = %49
  %52 = call ptr @__cxa_allocate_exception(i64 48) #20
  %53 = load ptr, ptr %0, align 8, !tbaa !102
  %54 = getelementptr inbounds ptr, ptr %53, i64 4
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %57 unwind label %86

57:                                               ; preds = %51
  %58 = load ptr, ptr %0, align 8, !tbaa !102
  %59 = getelementptr inbounds ptr, ptr %58, i64 4
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(152) %0)
          to label %62 unwind label %86

62:                                               ; preds = %57
  %63 = load ptr, ptr %61, align 8, !tbaa !102
  %64 = getelementptr inbounds ptr, ptr %63, i64 4
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef ptr %65(ptr noundef nonnull align 8 dereferenceable(112) %61)
          to label %67 unwind label %86

67:                                               ; preds = %62
  %68 = load ptr, ptr %38, align 8, !tbaa !102
  %69 = getelementptr inbounds ptr, ptr %68, i64 4
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(152) %38)
          to label %72 unwind label %86

72:                                               ; preds = %67
  %73 = load ptr, ptr %71, align 8, !tbaa !102
  %74 = getelementptr inbounds ptr, ptr %73, i64 4
  %75 = load ptr, ptr %74, align 8
  %76 = invoke noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(112) %71)
          to label %77 unwind label %86

77:                                               ; preds = %72
  %78 = load ptr, ptr %3, align 8, !tbaa !133
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef %56, ptr noundef nonnull @.str.1, ptr noundef %66, ptr noundef %76, ptr noundef %78)
          to label %79 unwind label %86

79:                                               ; preds = %77
  invoke void @__cxa_throw(ptr nonnull %52, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
          to label %157 unwind label %84

80:                                               ; preds = %24
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %128

82:                                               ; preds = %32, %39, %44
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %118

84:                                               ; preds = %79
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %118

86:                                               ; preds = %77, %72, %67, %62, %57, %51
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %52) #20
  br label %118

88:                                               ; preds = %49
  %89 = load ptr, ptr %38, align 8, !tbaa !102
  %90 = getelementptr inbounds ptr, ptr %89, i64 5
  %91 = load ptr, ptr %90, align 8
  %92 = invoke noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(152) %38)
          to label %93 unwind label %100, !prof !228

93:                                               ; preds = %88
  %94 = icmp eq ptr %15, null
  br i1 %94, label %95, label %102, !prof !135

95:                                               ; preds = %93
  %96 = load ptr, ptr %92, align 8, !tbaa !102
  %97 = getelementptr inbounds ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  %99 = invoke noundef ptr %98(ptr noundef nonnull align 8 dereferenceable(112) %92)
          to label %103 unwind label %100, !prof !229

100:                                              ; preds = %102, %95, %88
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %118

102:                                              ; preds = %93
  invoke void @_ZNK11NEDTypeInfo12mergeNEDTypeEP10NEDElementPKS0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %15, ptr noundef %92)
          to label %103 unwind label %100

103:                                              ; preds = %95, %102
  %104 = phi ptr [ %15, %102 ], [ %99, %95 ]
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %106 = load ptr, ptr %3, align 8, !tbaa !133
  %107 = icmp eq ptr %106, %105
  br i1 %107, label %108, label %112, !prof !143

108:                                              ; preds = %103
  %109 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %110 = load i64, ptr %109, align 8, !tbaa !109
  %111 = icmp ult i64 %110, 16
  call void @llvm.assume(i1 %111)
  br label %113

112:                                              ; preds = %103
  call void @_ZdlPv(ptr noundef %106) #22
  br label %113

113:                                              ; preds = %108, %112
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  %114 = load ptr, ptr %14, align 8, !tbaa !102
  %115 = getelementptr inbounds ptr, ptr %114, i64 31
  %116 = load ptr, ptr %115, align 8
  %117 = invoke noundef ptr %116(ptr noundef nonnull align 8 dereferenceable(112) %14, i32 noundef 7)
          to label %13 unwind label %20, !prof !230, !llvm.loop !231

118:                                              ; preds = %82, %84, %100, %86
  %119 = phi { ptr, i32 } [ %87, %86 ], [ %101, %100 ], [ %83, %82 ], [ %85, %84 ]
  %120 = load ptr, ptr %3, align 8, !tbaa !133
  %121 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  %122 = icmp eq ptr %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !109
  %126 = icmp ult i64 %125, 16
  call void @llvm.assume(i1 %126)
  br label %128

127:                                              ; preds = %118
  call void @_ZdlPv(ptr noundef %120) #22
  br label %128

128:                                              ; preds = %127, %123, %80
  %129 = phi { ptr, i32 } [ %81, %80 ], [ %119, %123 ], [ %119, %127 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  br label %145

130:                                              ; preds = %17
  invoke void @_ZNK11NEDTypeInfo12mergeNEDTypeEP10NEDElementPKS0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %15, ptr noundef %19)
          to label %133 unwind label %131, !prof !135

131:                                              ; preds = %130
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %145

133:                                              ; preds = %17, %130
  %134 = phi ptr [ %15, %130 ], [ %19, %17 ]
  %135 = getelementptr inbounds %struct.NEDLookupContext, ptr %2, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !133
  %137 = getelementptr inbounds %struct.NEDLookupContext, ptr %2, i64 0, i32 1, i32 2
  %138 = icmp eq ptr %136, %137
  br i1 %138, label %139, label %143, !prof !120

139:                                              ; preds = %133
  %140 = getelementptr inbounds %struct.NEDLookupContext, ptr %2, i64 0, i32 1, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !109
  %142 = icmp ult i64 %141, 16
  call void @llvm.assume(i1 %142)
  br label %144

143:                                              ; preds = %133
  call void @_ZdlPv(ptr noundef %136) #22
  br label %144

144:                                              ; preds = %139, %143
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #20
  ret ptr %134

145:                                              ; preds = %20, %22, %128, %131
  %146 = phi { ptr, i32 } [ %132, %131 ], [ %129, %128 ], [ %21, %20 ], [ %23, %22 ]
  %147 = getelementptr inbounds %struct.NEDLookupContext, ptr %2, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !133
  %149 = getelementptr inbounds %struct.NEDLookupContext, ptr %2, i64 0, i32 1, i32 2
  %150 = icmp eq ptr %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.NEDLookupContext, ptr %2, i64 0, i32 1, i32 1
  %153 = load i64, ptr %152, align 8, !tbaa !109
  %154 = icmp ult i64 %153, 16
  call void @llvm.assume(i1 %154)
  br label %156

155:                                              ; preds = %145
  call void @_ZdlPv(ptr noundef %148) #22
  br label %156

156:                                              ; preds = %151, %155
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #20
  resume { ptr, i32 } %146

157:                                              ; preds = %79
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11NEDTypeInfo10getPackageB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = load ptr, ptr %1, align 8, !tbaa !102
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(152) %1)
  %8 = tail call noundef ptr @_ZN10NEDElement16getParentWithTagEi(ptr noundef nonnull align 8 dereferenceable(112) %7, i32 noundef 2)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %8, align 8, !tbaa !102
  %12 = getelementptr inbounds ptr, ptr %11, i64 30
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(112) %8, i32 noundef 4)
  br label %15

15:                                               ; preds = %2, %10
  %16 = phi ptr [ %14, %10 ], [ null, %2 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %class.PackageElement, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !133
  br label %21

21:                                               ; preds = %15, %18
  %22 = phi ptr [ %20, %18 ], [ @.str.7, %15 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %22, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #20
  ret void
}

declare noundef ptr @_ZN10NEDElement16getParentWithTagEi(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11NEDTypeInfo18getPackagePropertyB5cxx11EPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !232 {
  %4 = load ptr, ptr %1, align 8, !tbaa !102
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(152) %1), !prof !233
  %8 = tail call noundef ptr @_ZN10NEDElement16getParentWithTagEi(ptr noundef nonnull align 8 dereferenceable(112) %7, i32 noundef 2)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %31, label %10, !prof !234

10:                                               ; preds = %3
  %11 = getelementptr inbounds %class.NEDTypeInfo, ptr %1, i64 0, i32 1
  %12 = tail call noundef ptr @_ZN14NEDElementUtil22getLocalStringPropertyEP10NEDElementPKc(ptr noundef nonnull %8, ptr noundef %2)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %17, !prof !235

14:                                               ; preds = %23
  %15 = tail call noundef ptr @_ZN14NEDElementUtil22getLocalStringPropertyEP10NEDElementPKc(ptr noundef nonnull %29, ptr noundef %2)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17, !prof !236, !llvm.loop !237

17:                                               ; preds = %14, %10
  %18 = phi i1 [ %9, %10 ], [ %30, %14 ]
  %19 = phi ptr [ %12, %10 ], [ %15, %14 ]
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %20, ptr %0, align 8, !tbaa !105
  %21 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #20
  %22 = getelementptr inbounds i8, ptr %19, i64 %21
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %19, ptr noundef nonnull %22)
  br i1 %18, label %31, label %34, !prof !238

23:                                               ; preds = %10, %14
  %24 = phi ptr [ %29, %14 ], [ %8, %10 ]
  %25 = load ptr, ptr %11, align 8, !tbaa !113
  %26 = load ptr, ptr %25, align 8, !tbaa !102
  %27 = getelementptr inbounds ptr, ptr %26, i64 19
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(200) %25, ptr noundef nonnull %24), !prof !239
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %14, !prof !240, !llvm.loop !237

31:                                               ; preds = %23, %3, %17
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %32, ptr %0, align 8, !tbaa !105
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %33, align 8, !tbaa !109
  store i8 0, ptr %32, align 8, !tbaa !112
  br label %34

34:                                               ; preds = %31, %17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11NEDTypeInfo15getCxxNamespaceB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #3 align 2 !prof !232 {
  %3 = load ptr, ptr %1, align 8, !tbaa !102
  %4 = getelementptr inbounds ptr, ptr %3, i64 17
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1, ptr noundef nonnull @.str.8), !prof !241
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11NEDTypeInfo4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %3) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %4 = load ptr, ptr %1, align 8, !tbaa !102
  %5 = getelementptr inbounds ptr, ptr %4, i64 10
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %8 unwind label %23

8:                                                ; preds = %2
  %9 = icmp sgt i32 %7, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %8
  %11 = getelementptr inbounds i8, ptr %3, i64 16
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.9, i64 noundef 8)
          to label %13 unwind label %23

13:                                               ; preds = %10, %50
  %14 = phi i32 [ %51, %50 ], [ 0, %10 ]
  %15 = load ptr, ptr %1, align 8, !tbaa !102
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %19 unwind label %25

19:                                               ; preds = %13
  %20 = icmp slt i32 %14, %18
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %52 unwind label %23

23:                                               ; preds = %111, %107, %104, %70, %59, %21, %10, %52, %2
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %115

25:                                               ; preds = %47, %39, %27, %32, %13
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %115

27:                                               ; preds = %19
  %28 = icmp eq i32 %14, 0
  %29 = select i1 %28, ptr @.str.7, ptr @.str.10
  %30 = select i1 %28, i64 0, i64 2
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %29, i64 noundef %30)
          to label %32 unwind label %25

32:                                               ; preds = %27
  %33 = load ptr, ptr %1, align 8, !tbaa !102
  %34 = getelementptr inbounds ptr, ptr %33, i64 11
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(152) %1, i32 noundef %14)
          to label %37 unwind label %25

37:                                               ; preds = %32
  %38 = icmp eq ptr %36, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %37
  %40 = load ptr, ptr %11, align 8, !tbaa !102
  %41 = getelementptr i8, ptr %40, i64 -24
  %42 = load i64, ptr %41, align 8
  %43 = getelementptr inbounds i8, ptr %11, i64 %42
  %44 = getelementptr inbounds %"class.std::ios_base", ptr %43, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !242
  %46 = or i32 %45, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %43, i32 noundef %46)
          to label %50 unwind label %25

47:                                               ; preds = %37
  %48 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %36) #20
  %49 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %36, i64 noundef %48)
          to label %50 unwind label %25

50:                                               ; preds = %39, %47
  %51 = add nuw nsw i32 %14, 1
  br label %13, !llvm.loop !248

52:                                               ; preds = %21, %8
  %53 = load ptr, ptr %1, align 8, !tbaa !102
  %54 = getelementptr inbounds ptr, ptr %53, i64 12
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef i32 %55(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %57 unwind label %23

57:                                               ; preds = %52
  %58 = icmp sgt i32 %56, 0
  br i1 %58, label %59, label %99

59:                                               ; preds = %57
  %60 = getelementptr inbounds i8, ptr %3, i64 16
  %61 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @.str.12, i64 noundef 5)
          to label %62 unwind label %23

62:                                               ; preds = %59, %97
  %63 = phi i32 [ %98, %97 ], [ 0, %59 ]
  %64 = load ptr, ptr %1, align 8, !tbaa !102
  %65 = getelementptr inbounds ptr, ptr %64, i64 12
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef i32 %66(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %68 unwind label %72

68:                                               ; preds = %62
  %69 = icmp slt i32 %63, %67
  br i1 %69, label %74, label %70

70:                                               ; preds = %68
  %71 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull @.str.11, i64 noundef 2)
          to label %99 unwind label %23

72:                                               ; preds = %94, %86, %74, %79, %62
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %115

74:                                               ; preds = %68
  %75 = icmp eq i32 %63, 0
  %76 = select i1 %75, ptr @.str.7, ptr @.str.10
  %77 = select i1 %75, i64 0, i64 2
  %78 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull %76, i64 noundef %77)
          to label %79 unwind label %72

79:                                               ; preds = %74
  %80 = load ptr, ptr %1, align 8, !tbaa !102
  %81 = getelementptr inbounds ptr, ptr %80, i64 13
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(152) %1, i32 noundef %63)
          to label %84 unwind label %72

84:                                               ; preds = %79
  %85 = icmp eq ptr %83, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %84
  %87 = load ptr, ptr %60, align 8, !tbaa !102
  %88 = getelementptr i8, ptr %87, i64 -24
  %89 = load i64, ptr %88, align 8
  %90 = getelementptr inbounds i8, ptr %60, i64 %89
  %91 = getelementptr inbounds %"class.std::ios_base", ptr %90, i64 0, i32 5
  %92 = load i32, ptr %91, align 8, !tbaa !242
  %93 = or i32 %92, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %90, i32 noundef %93)
          to label %97 unwind label %72

94:                                               ; preds = %84
  %95 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %83) #20
  %96 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull %83, i64 noundef %95)
          to label %97 unwind label %72

97:                                               ; preds = %86, %94
  %98 = add nuw nsw i32 %63, 1
  br label %62, !llvm.loop !249

99:                                               ; preds = %70, %57
  %100 = getelementptr inbounds %class.NEDTypeInfo, ptr %1, i64 0, i32 8
  %101 = getelementptr inbounds %class.NEDTypeInfo, ptr %1, i64 0, i32 8, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !109
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %99
  %105 = getelementptr inbounds i8, ptr %3, i64 16
  %106 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull @.str.13, i64 noundef 11)
          to label %107 unwind label %23

107:                                              ; preds = %104
  %108 = load ptr, ptr %100, align 8, !tbaa !133
  %109 = load i64, ptr %101, align 8, !tbaa !109
  %110 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef %108, i64 noundef %109)
          to label %111 unwind label %23

111:                                              ; preds = %107, %99
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %3, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %112)
          to label %113 unwind label %23

113:                                              ; preds = %111
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #20
  %114 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %114) #20
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #20
  ret void

115:                                              ; preds = %72, %25, %23
  %116 = phi { ptr, i32 } [ %26, %25 ], [ %73, %72 ], [ %24, %23 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #20
  %117 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %117) #20
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #20
  resume { ptr, i32 } %116
}

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11NEDTypeInfo9nedSourceB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %4 = alloca %class.NEDErrorStore, align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %3) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %4, i8 0, i64 25, i1 false)
  %5 = load ptr, ptr %1, align 8, !tbaa !102
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(152) %1)
          to label %9 unwind label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %3, i64 16
  invoke void @_Z12generateNED2RSoP10NEDElementP13NEDErrorStore(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %8, ptr noundef nonnull %4)
          to label %11 unwind label %15

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %3, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %12)
          to label %13 unwind label %15

13:                                               ; preds = %11
  call void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #20
  %14 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %14) #20
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #20
  ret void

15:                                               ; preds = %11, %9, %2
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #20
  %17 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %17) #20
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #20
  resume { ptr, i32 } %16
}

declare void @_Z12generateNED2RSoP10NEDElementP13NEDErrorStore(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo13interfaceNameEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(152) %0, i32 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 7
  %6 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 7, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = load ptr, ptr %5, align 8, !tbaa !129
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 5
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, %1
  br i1 %14, label %29, label %15

15:                                               ; preds = %4, %2
  %16 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %17 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 7
  %18 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 7, i32 0, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  %20 = load ptr, ptr %17, align 8, !tbaa !129
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 5
  %25 = add nsw i64 %24, -1
  invoke void (ptr, ptr, ...) @_ZN12NEDExceptionC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull @.str.14, i32 noundef %1, i64 noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

27:                                               ; preds = %15
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %16) #20
  resume { ptr, i32 } %28

29:                                               ; preds = %4
  %30 = zext nneg i32 %1 to i64
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !133
  ret ptr %32
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN11NEDTypeInfo17supportsInterfaceEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(152) %0, ptr noundef %1) unnamed_addr #10 align 2 !prof !250 {
  %3 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 7
  %4 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 7, i32 0, i32 0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = load ptr, ptr %3, align 8, !tbaa !129
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = lshr exact i64 %9, 5
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %31, !prof !135

13:                                               ; preds = %2
  %14 = tail call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef %1) #20
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %31, label %16, !prof !135

16:                                               ; preds = %13, %27
  %17 = phi i64 [ %18, %27 ], [ 0, %13 ]
  %18 = add nuw nsw i64 %17, 1
  %19 = load ptr, ptr %4, align 8, !tbaa !128
  %20 = load ptr, ptr %3, align 8, !tbaa !129
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = shl i64 %23, 27
  %25 = ashr i64 %24, 32
  %26 = icmp slt i64 %18, %25
  br i1 %26, label %27, label %31, !prof !251, !llvm.loop !252

27:                                               ; preds = %16
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %20, i64 %18
  %29 = tail call noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef %1) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %16, !prof !135, !llvm.loop !252

31:                                               ; preds = %27, %16, %13, %2
  %32 = phi i1 [ %12, %2 ], [ %12, %13 ], [ %26, %16 ], [ %26, %27 ]
  ret i1 %32
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo11extendsNameEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(152) %0, i32 noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !253 {
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %15, label %4, !prof !254

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 6
  %6 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = load ptr, ptr %5, align 8, !tbaa !129
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = lshr exact i64 %11, 5
  %13 = trunc i64 %12 to i32
  %14 = icmp sgt i32 %13, %1
  br i1 %14, label %29, label %15, !prof !255

15:                                               ; preds = %4, %2
  %16 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %17 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !128
  %20 = load ptr, ptr %17, align 8, !tbaa !129
  %21 = ptrtoint ptr %19 to i64
  %22 = ptrtoint ptr %20 to i64
  %23 = sub i64 %21, %22
  %24 = ashr exact i64 %23, 5
  %25 = add nsw i64 %24, -1
  invoke void (ptr, ptr, ...) @_ZN12NEDExceptionC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull @.str.15, i32 noundef %1, i64 noundef %25)
          to label %26 unwind label %27

26:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %16, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

27:                                               ; preds = %15
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %16) #20
  resume { ptr, i32 } %28

29:                                               ; preds = %4
  %30 = zext nneg i32 %1 to i64
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !133
  ret ptr %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo23implementationClassNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(152) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !prof !256 {
  %2 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 8
  %3 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !109
  %5 = icmp eq i64 %4, 0
  %6 = load ptr, ptr %2, align 8
  %7 = select i1 %5, ptr null, ptr %6, !prof !257
  ret ptr %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo12getSuperDeclEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #3 align 2 !prof !258 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds ptr, ptr %2, i64 11
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef 0), !prof !259
  %6 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = getelementptr inbounds ptr, ptr %8, i64 21
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(200) %7, ptr noundef %5), !prof !260
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11NEDTypeInfo9isNetworkEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #3 align 2 !prof !182 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(152) %0), !prof !183
  %6 = tail call noundef zeroext i1 @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc(ptr noundef %5, ptr noundef nonnull @.str.16)
  ret i1 %6
}

declare noundef zeroext i1 @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo20getParametersElementEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #6 align 2 !prof !261 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(152) %0), !prof !262
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = getelementptr inbounds ptr, ptr %6, i64 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %5, i32 noundef 14), !prof !263
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo15getGatesElementEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #6 align 2 !prof !264 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(152) %0), !prof !265
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = getelementptr inbounds ptr, ptr %6, i64 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %5, i32 noundef 19), !prof !266
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo20getSubmodulesElementEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #6 align 2 !prof !267 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(152) %0), !prof !268
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = getelementptr inbounds ptr, ptr %6, i64 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %5, i32 noundef 22), !prof !269
  ret ptr %9
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo21getConnectionsElementEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #6 align 2 !prof !270 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(152) %0), !prof !271
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = getelementptr inbounds ptr, ptr %6, i64 30
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(112) %5, i32 noundef 24), !prof !272
  ret ptr %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo19getSubmoduleElementEPKc(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !174 {
  %3 = load ptr, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds ptr, ptr %7, i64 30
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(112) %6, i32 noundef 22)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %10, i32 noundef 23, ptr noundef nonnull @.str.17, ptr noundef %1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  br label %16

16:                                               ; preds = %12, %15
  %17 = phi ptr [ null, %15 ], [ %13, %12 ]
  ret ptr %17
}

declare noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo20getConnectionElementEl(ptr noundef nonnull align 8 dereferenceable(152) %0, i64 noundef %1) local_unnamed_addr #3 align 2 !prof !174 {
  %3 = icmp eq i64 %1, -1
  br i1 %3, label %80, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !102
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = getelementptr inbounds ptr, ptr %9, i64 30
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(112) %8, i32 noundef 24)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %79, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %12, align 8, !tbaa !102
  %16 = getelementptr inbounds ptr, ptr %15, i64 23
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(112) %12)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %76, label %20

20:                                               ; preds = %14, %69
  %21 = phi i1 [ %75, %69 ], [ %19, %14 ]
  %22 = phi ptr [ %70, %69 ], [ undef, %14 ]
  %23 = phi ptr [ %74, %69 ], [ %18, %14 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !102
  %25 = getelementptr inbounds ptr, ptr %24, i64 5
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef i32 %26(ptr noundef nonnull align 8 dereferenceable(112) %23)
  %28 = icmp eq i32 %27, 25
  %29 = load ptr, ptr %23, align 8, !tbaa !102
  br i1 %28, label %30, label %35

30:                                               ; preds = %20
  %31 = getelementptr inbounds ptr, ptr %29, i64 6
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef i64 %32(ptr noundef nonnull align 8 dereferenceable(112) %23)
  %34 = icmp eq i64 %33, %1
  br i1 %34, label %76, label %69

35:                                               ; preds = %20
  %36 = getelementptr inbounds ptr, ptr %29, i64 5
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef i32 %37(ptr noundef nonnull align 8 dereferenceable(112) %23)
  %39 = icmp eq i32 %38, 27
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = load ptr, ptr %23, align 8, !tbaa !102
  %42 = getelementptr inbounds ptr, ptr %41, i64 23
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(112) %23)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %66, label %46

46:                                               ; preds = %40, %60
  %47 = phi i1 [ %65, %60 ], [ %45, %40 ]
  %48 = phi ptr [ %64, %60 ], [ %44, %40 ]
  %49 = load ptr, ptr %48, align 8, !tbaa !102
  %50 = getelementptr inbounds ptr, ptr %49, i64 6
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef i64 %51(ptr noundef nonnull align 8 dereferenceable(112) %48)
  %53 = icmp eq i64 %52, %1
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load ptr, ptr %48, align 8, !tbaa !102
  %56 = getelementptr inbounds ptr, ptr %55, i64 5
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef i32 %57(ptr noundef nonnull align 8 dereferenceable(112) %48)
  %59 = icmp eq i32 %58, 25
  br i1 %59, label %66, label %60

60:                                               ; preds = %46, %54
  %61 = load ptr, ptr %48, align 8, !tbaa !102
  %62 = getelementptr inbounds ptr, ptr %61, i64 25
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(112) %48)
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %46, !llvm.loop !273

66:                                               ; preds = %60, %54, %40
  %67 = phi i1 [ %45, %40 ], [ %65, %60 ], [ %47, %54 ]
  %68 = phi ptr [ %22, %40 ], [ %22, %60 ], [ %48, %54 ]
  br i1 %67, label %69, label %76

69:                                               ; preds = %30, %66, %35
  %70 = phi ptr [ %22, %30 ], [ %68, %66 ], [ %22, %35 ]
  %71 = load ptr, ptr %23, align 8, !tbaa !102
  %72 = getelementptr inbounds ptr, ptr %71, i64 25
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(112) %23)
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %20, !llvm.loop !274

76:                                               ; preds = %69, %30, %66, %14
  %77 = phi i1 [ %19, %14 ], [ %75, %69 ], [ %21, %30 ], [ %21, %66 ]
  %78 = phi ptr [ undef, %14 ], [ %70, %69 ], [ %23, %30 ], [ %68, %66 ]
  br i1 %77, label %79, label %80

79:                                               ; preds = %76, %4
  br label %80

80:                                               ; preds = %79, %76, %2
  %81 = phi ptr [ null, %2 ], [ null, %79 ], [ %78, %76 ]
  ret ptr %81
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo18findLocalParamDeclEPKc(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef readonly %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !258 {
  %3 = load ptr, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(152) %0), !prof !275
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds ptr, ptr %7, i64 30
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(112) %6, i32 noundef 14), !prof !276
  %11 = icmp eq ptr %10, null
  br i1 %11, label %51, label %12, !prof !187

12:                                               ; preds = %2
  %13 = load ptr, ptr %10, align 8, !tbaa !102
  %14 = getelementptr inbounds ptr, ptr %13, i64 39
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(113) %10), !prof !277
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18, !prof !143

18:                                               ; preds = %12
  %19 = icmp eq ptr %1, null
  br label %20

20:                                               ; preds = %18, %45
  %21 = phi ptr [ %16, %18 ], [ %49, %45 ]
  %22 = getelementptr inbounds %class.ParamElement, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !188
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %45, label %25, !prof !278

25:                                               ; preds = %20
  %26 = getelementptr inbounds %class.ParamElement, ptr %21, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !133
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29, !prof !278

29:                                               ; preds = %25
  br i1 %19, label %32, label %30, !prof !278

30:                                               ; preds = %29
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %1) #23
  br label %42

32:                                               ; preds = %29
  %33 = load i8, ptr %27, align 1, !tbaa !112
  %34 = icmp ne i8 %33, 0
  %35 = zext i1 %34 to i32
  br label %42

36:                                               ; preds = %25
  %37 = icmp eq ptr %1, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %36
  %39 = load i8, ptr %1, align 1, !tbaa !112
  %40 = icmp ne i8 %39, 0
  %41 = sext i1 %40 to i32
  br label %42

42:                                               ; preds = %30, %32, %36, %38
  %43 = phi i32 [ %31, %30 ], [ %35, %32 ], [ 0, %36 ], [ %41, %38 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45, !prof !279

45:                                               ; preds = %20, %42
  %46 = load ptr, ptr %21, align 8, !tbaa !102
  %47 = getelementptr inbounds ptr, ptr %46, i64 36
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(185) %21), !prof !198
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %20, !prof !278, !llvm.loop !280

51:                                               ; preds = %42, %45, %12, %2
  %52 = phi ptr [ null, %2 ], [ null, %12 ], [ null, %45 ], [ %21, %42 ]
  ret ptr %52
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo13findParamDeclEPKc(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !258 {
  %3 = tail call noundef ptr @_ZNK11NEDTypeInfo18findLocalParamDeclEPKc(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %32, !prof !187

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %0, align 8, !tbaa !102
  %8 = getelementptr inbounds ptr, ptr %7, i64 10
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %19, label %32

12:                                               ; preds = %19
  %13 = add nuw nsw i32 %20, 1
  %14 = load ptr, ptr %0, align 8, !tbaa !102
  %15 = getelementptr inbounds ptr, ptr %14, i64 10
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %32, !llvm.loop !281

19:                                               ; preds = %5, %12
  %20 = phi i32 [ %13, %12 ], [ 0, %5 ]
  %21 = load ptr, ptr %6, align 8, !tbaa !113
  %22 = load ptr, ptr %0, align 8, !tbaa !102
  %23 = getelementptr inbounds ptr, ptr %22, i64 11
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %20)
  %26 = load ptr, ptr %21, align 8, !tbaa !102
  %27 = getelementptr inbounds ptr, ptr %26, i64 20
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(200) %21, ptr noundef %25)
  %30 = tail call noundef ptr @_ZNK11NEDTypeInfo18findLocalParamDeclEPKc(ptr noundef nonnull align 8 dereferenceable(152) %29, ptr noundef %1)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %12, label %32

32:                                               ; preds = %19, %12, %5, %2
  %33 = phi ptr [ %3, %2 ], [ null, %5 ], [ null, %12 ], [ %30, %19 ]
  ret ptr %33
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo17findLocalGateDeclEPKc(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef readonly %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !282 {
  %3 = load ptr, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(152) %0), !prof !283
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds ptr, ptr %7, i64 30
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(112) %6, i32 noundef 19), !prof !284
  %11 = icmp eq ptr %10, null
  br i1 %11, label %51, label %12, !prof !202

12:                                               ; preds = %2
  %13 = load ptr, ptr %10, align 8, !tbaa !102
  %14 = getelementptr inbounds ptr, ptr %13, i64 38
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(112) %10), !prof !285
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18, !prof !143

18:                                               ; preds = %12
  %19 = icmp eq ptr %1, null
  br label %20

20:                                               ; preds = %18, %45
  %21 = phi ptr [ %16, %18 ], [ %49, %45 ]
  %22 = getelementptr inbounds %class.GateElement, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !203
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %45, label %25, !prof !187

25:                                               ; preds = %20
  %26 = getelementptr inbounds %class.GateElement, ptr %21, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !133
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29, !prof !187

29:                                               ; preds = %25
  br i1 %19, label %32, label %30, !prof !187

30:                                               ; preds = %29
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) %1) #23
  br label %42

32:                                               ; preds = %29
  %33 = load i8, ptr %27, align 1, !tbaa !112
  %34 = icmp ne i8 %33, 0
  %35 = zext i1 %34 to i32
  br label %42

36:                                               ; preds = %25
  %37 = icmp eq ptr %1, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %36
  %39 = load i8, ptr %1, align 1, !tbaa !112
  %40 = icmp ne i8 %39, 0
  %41 = sext i1 %40 to i32
  br label %42

42:                                               ; preds = %30, %32, %36, %38
  %43 = phi i32 [ %31, %30 ], [ %35, %32 ], [ 0, %36 ], [ %41, %38 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45, !prof !286

45:                                               ; preds = %20, %42
  %46 = load ptr, ptr %21, align 8, !tbaa !102
  %47 = getelementptr inbounds ptr, ptr %46, i64 36
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(184) %21), !prof !287
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %20, !prof !187, !llvm.loop !288

51:                                               ; preds = %42, %45, %12, %2
  %52 = phi ptr [ null, %2 ], [ null, %12 ], [ null, %45 ], [ %21, %42 ]
  ret ptr %52
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11NEDTypeInfo12findGateDeclEPKc(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !282 {
  %3 = tail call noundef ptr @_ZNK11NEDTypeInfo17findLocalGateDeclEPKc(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %32, !prof !202

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %0, align 8, !tbaa !102
  %8 = getelementptr inbounds ptr, ptr %7, i64 10
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %19, label %32

12:                                               ; preds = %19
  %13 = add nuw nsw i32 %20, 1
  %14 = load ptr, ptr %0, align 8, !tbaa !102
  %15 = getelementptr inbounds ptr, ptr %14, i64 10
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(152) %0)
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %32, !llvm.loop !289

19:                                               ; preds = %5, %12
  %20 = phi i32 [ %13, %12 ], [ 0, %5 ]
  %21 = load ptr, ptr %6, align 8, !tbaa !113
  %22 = load ptr, ptr %0, align 8, !tbaa !102
  %23 = getelementptr inbounds ptr, ptr %22, i64 11
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %20)
  %26 = load ptr, ptr %21, align 8, !tbaa !102
  %27 = getelementptr inbounds ptr, ptr %26, i64 20
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(200) %21, ptr noundef %25)
  %30 = tail call noundef ptr @_ZNK11NEDTypeInfo17findLocalGateDeclEPKc(ptr noundef nonnull align 8 dereferenceable(152) %29, ptr noundef %1)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %12, label %32

32:                                               ; preds = %19, %12, %5, %2
  %33 = phi ptr [ %3, %2 ], [ null, %5 ], [ null, %12 ], [ %30, %19 ]
  ret ptr %33
}

declare noundef i32 @_ZN14NEDElementUtil11compareTreeEP10NEDElementS1_(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11NEDTypeInfo12mergeNEDTypeEP10NEDElementPKS0_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !290 {
  %4 = load ptr, ptr %1, align 8, !tbaa !102
  %5 = getelementptr inbounds ptr, ptr %4, i64 30
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 7), !prof !291
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %15, !prof !135

9:                                                ; preds = %26, %3
  %10 = load ptr, ptr %2, align 8, !tbaa !102
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 8), !prof !291
  %14 = icmp eq ptr %13, null
  br i1 %14, label %32, label %44, !prof !135

15:                                               ; preds = %3, %26
  %16 = phi ptr [ %30, %26 ], [ %7, %3 ]
  %17 = load ptr, ptr %1, align 8, !tbaa !102
  %18 = getelementptr inbounds ptr, ptr %17, i64 29
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %16)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %20, align 8, !tbaa !102
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(112) %20) #20
  br label %26

26:                                               ; preds = %15, %22
  %27 = load ptr, ptr %16, align 8, !tbaa !102
  %28 = getelementptr inbounds ptr, ptr %27, i64 31
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(112) %16, i32 noundef 7)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %9, label %15, !prof !135, !llvm.loop !292

32:                                               ; preds = %44, %9
  %33 = load ptr, ptr %2, align 8, !tbaa !102
  %34 = getelementptr inbounds ptr, ptr %33, i64 30
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 14), !prof !291
  %37 = load ptr, ptr %1, align 8, !tbaa !102
  %38 = getelementptr inbounds ptr, ptr %37, i64 30
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 14), !prof !291
  %41 = icmp eq ptr %36, null
  %42 = icmp ne ptr %40, null
  %43 = or i1 %41, %42
  br i1 %43, label %66, label %58, !prof !135

44:                                               ; preds = %9, %44
  %45 = phi ptr [ %56, %44 ], [ %13, %9 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !102
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(112) %45)
  %50 = load ptr, ptr %1, align 8, !tbaa !102
  %51 = getelementptr inbounds ptr, ptr %50, i64 27
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %49)
  %53 = load ptr, ptr %45, align 8, !tbaa !102
  %54 = getelementptr inbounds ptr, ptr %53, i64 31
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(112) %45, i32 noundef 8)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %32, label %44, !prof !135, !llvm.loop !293

58:                                               ; preds = %32
  %59 = load ptr, ptr %36, align 8, !tbaa !102
  %60 = getelementptr inbounds ptr, ptr %59, i64 3
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(112) %36)
  %63 = load ptr, ptr %1, align 8, !tbaa !102
  %64 = getelementptr inbounds ptr, ptr %63, i64 27
  %65 = load ptr, ptr %64, align 8
  tail call void %65(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %62)
  br label %151

66:                                               ; preds = %32
  %67 = icmp ne ptr %36, null
  %68 = and i1 %67, %42
  br i1 %68, label %69, label %151, !prof !135

69:                                               ; preds = %66
  %70 = load ptr, ptr %36, align 8, !tbaa !102
  %71 = getelementptr inbounds ptr, ptr %70, i64 39
  %72 = load ptr, ptr %71, align 8
  %73 = tail call noundef ptr %72(ptr noundef nonnull align 8 dereferenceable(113) %36), !prof !294
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76, !prof !186

75:                                               ; preds = %145, %69
  tail call void @_ZNK11NEDTypeInfo15mergePropertiesEP10NEDElementPKS0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %40, ptr noundef nonnull %36)
  br label %151

76:                                               ; preds = %69, %145
  %77 = phi ptr [ %149, %145 ], [ %73, %69 ]
  %78 = getelementptr inbounds %class.ParamElement, ptr %77, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !133
  %80 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %40, i32 noundef 15, ptr noundef nonnull @.str.17, ptr noundef %79)
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %90, !prof !143

82:                                               ; preds = %76
  %83 = load ptr, ptr %77, align 8, !tbaa !102
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(112) %77)
  %87 = load ptr, ptr %40, align 8, !tbaa !102
  %88 = getelementptr inbounds ptr, ptr %87, i64 27
  %89 = load ptr, ptr %88, align 8
  tail call void %89(ptr noundef nonnull align 8 dereferenceable(112) %40, ptr noundef %86)
  br label %145

90:                                               ; preds = %76
  %91 = getelementptr inbounds %class.ParamElement, ptr %77, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !188
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94, !prof !135

94:                                               ; preds = %90
  %95 = getelementptr inbounds %class.ParamElement, ptr %77, i64 0, i32 4
  %96 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %97 = load ptr, ptr %95, align 8, !tbaa !133
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %96, ptr noundef nonnull %77, ptr noundef nonnull @.str.31, ptr noundef %97)
          to label %98 unwind label %99

98:                                               ; preds = %94
  tail call void @__cxa_throw(ptr nonnull %96, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

99:                                               ; preds = %94
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %455

101:                                              ; preds = %90
  %102 = getelementptr inbounds %class.ParamElement, ptr %77, i64 0, i32 5
  %103 = load ptr, ptr %102, align 8, !tbaa !133
  %104 = icmp eq ptr %103, null
  br i1 %104, label %117, label %105, !prof !143

105:                                              ; preds = %101
  %106 = load i8, ptr %103, align 1, !tbaa !112
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %117, label %108, !prof !135

108:                                              ; preds = %105
  %109 = getelementptr inbounds %class.ParamElement, ptr %80, i64 0, i32 5
  %110 = getelementptr inbounds %class.ParamElement, ptr %80, i64 0, i32 5, i32 1
  %111 = load i64, ptr %110, align 8, !tbaa !109
  %112 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %103) #20
  %113 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %109, i64 noundef 0, i64 noundef %111, ptr noundef nonnull %103, i64 noundef %112)
  %114 = getelementptr inbounds %class.ParamElement, ptr %77, i64 0, i32 6
  %115 = load i8, ptr %114, align 8, !tbaa !295, !range !196, !noundef !197
  %116 = getelementptr inbounds %class.ParamElement, ptr %80, i64 0, i32 6
  store i8 %115, ptr %116, align 8, !tbaa !295
  br label %117

117:                                              ; preds = %101, %108, %105
  %118 = load ptr, ptr %77, align 8, !tbaa !102
  %119 = getelementptr inbounds ptr, ptr %118, i64 38
  %120 = load ptr, ptr %119, align 8
  %121 = tail call noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(185) %77), !prof !296
  %122 = icmp eq ptr %121, null
  br i1 %122, label %144, label %123, !prof !143

123:                                              ; preds = %117
  %124 = load ptr, ptr %80, align 8, !tbaa !102
  %125 = getelementptr inbounds ptr, ptr %124, i64 38
  %126 = load ptr, ptr %125, align 8
  %127 = tail call noundef ptr %126(ptr noundef nonnull align 8 dereferenceable(185) %80), !prof !296
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129, !prof !143

129:                                              ; preds = %123
  %130 = load ptr, ptr %127, align 8, !tbaa !102
  %131 = getelementptr inbounds ptr, ptr %130, i64 1
  %132 = load ptr, ptr %131, align 8
  tail call void %132(ptr noundef nonnull align 8 dereferenceable(144) %127) #20, !prof !297
  br label %133

133:                                              ; preds = %129, %123
  %134 = load ptr, ptr %121, align 8, !tbaa !102
  %135 = getelementptr inbounds ptr, ptr %134, i64 3
  %136 = load ptr, ptr %135, align 8
  %137 = tail call noundef ptr %136(ptr noundef nonnull align 8 dereferenceable(112) %121), !prof !229
  %138 = load ptr, ptr %80, align 8, !tbaa !102
  %139 = getelementptr inbounds ptr, ptr %138, i64 27
  %140 = load ptr, ptr %139, align 8
  tail call void %140(ptr noundef nonnull align 8 dereferenceable(112) %80, ptr noundef %137), !prof !298
  %141 = getelementptr inbounds %class.ParamElement, ptr %77, i64 0, i32 6
  %142 = load i8, ptr %141, align 8, !tbaa !295, !range !196, !noundef !197
  %143 = getelementptr inbounds %class.ParamElement, ptr %80, i64 0, i32 6
  store i8 %142, ptr %143, align 8, !tbaa !295
  br label %144

144:                                              ; preds = %133, %117
  tail call void @_ZNK11NEDTypeInfo15mergePropertiesEP10NEDElementPKS0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %80, ptr noundef nonnull %77)
  br label %145

145:                                              ; preds = %144, %82
  %146 = load ptr, ptr %77, align 8, !tbaa !102
  %147 = getelementptr inbounds ptr, ptr %146, i64 36
  %148 = load ptr, ptr %147, align 8
  %149 = tail call noundef ptr %148(ptr noundef nonnull align 8 dereferenceable(185) %77), !prof !299
  %150 = icmp eq ptr %149, null
  br i1 %150, label %75, label %76, !prof !300, !llvm.loop !301

151:                                              ; preds = %66, %75, %58
  %152 = load ptr, ptr %2, align 8, !tbaa !102
  %153 = getelementptr inbounds ptr, ptr %152, i64 30
  %154 = load ptr, ptr %153, align 8
  %155 = tail call noundef ptr %154(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 19), !prof !291
  %156 = load ptr, ptr %1, align 8, !tbaa !102
  %157 = getelementptr inbounds ptr, ptr %156, i64 30
  %158 = load ptr, ptr %157, align 8
  %159 = tail call noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 19), !prof !291
  %160 = icmp eq ptr %155, null
  %161 = icmp ne ptr %159, null
  %162 = or i1 %160, %161
  br i1 %162, label %171, label %163, !prof !135

163:                                              ; preds = %151
  %164 = load ptr, ptr %155, align 8, !tbaa !102
  %165 = getelementptr inbounds ptr, ptr %164, i64 3
  %166 = load ptr, ptr %165, align 8
  %167 = tail call noundef ptr %166(ptr noundef nonnull align 8 dereferenceable(112) %155)
  %168 = load ptr, ptr %1, align 8, !tbaa !102
  %169 = getelementptr inbounds ptr, ptr %168, i64 27
  %170 = load ptr, ptr %169, align 8
  tail call void %170(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %167)
  br label %249

171:                                              ; preds = %151
  %172 = icmp ne ptr %155, null
  %173 = and i1 %172, %161
  br i1 %173, label %174, label %249, !prof !143

174:                                              ; preds = %171
  %175 = load ptr, ptr %155, align 8, !tbaa !102
  %176 = getelementptr inbounds ptr, ptr %175, i64 38
  %177 = load ptr, ptr %176, align 8
  %178 = tail call noundef ptr %177(ptr noundef nonnull align 8 dereferenceable(112) %155)
  %179 = icmp eq ptr %178, null
  br i1 %179, label %249, label %180

180:                                              ; preds = %174, %243
  %181 = phi ptr [ %247, %243 ], [ %178, %174 ]
  %182 = getelementptr inbounds %class.GateElement, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !133
  %184 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %159, i32 noundef 20, ptr noundef nonnull @.str.17, ptr noundef %183)
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %194

186:                                              ; preds = %180
  %187 = load ptr, ptr %181, align 8, !tbaa !102
  %188 = getelementptr inbounds ptr, ptr %187, i64 3
  %189 = load ptr, ptr %188, align 8
  %190 = tail call noundef ptr %189(ptr noundef nonnull align 8 dereferenceable(112) %181)
  %191 = load ptr, ptr %159, align 8, !tbaa !102
  %192 = getelementptr inbounds ptr, ptr %191, i64 27
  %193 = load ptr, ptr %192, align 8
  tail call void %193(ptr noundef nonnull align 8 dereferenceable(112) %159, ptr noundef %190)
  br label %243

194:                                              ; preds = %180
  %195 = getelementptr inbounds %class.GateElement, ptr %181, i64 0, i32 2
  %196 = load i32, ptr %195, align 8, !tbaa !203
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %class.GateElement, ptr %181, i64 0, i32 1
  %200 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %201 = load ptr, ptr %199, align 8, !tbaa !133
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %200, ptr noundef nonnull %181, ptr noundef nonnull @.str.32, ptr noundef %201)
          to label %202 unwind label %203

202:                                              ; preds = %198
  tail call void @__cxa_throw(ptr nonnull %200, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

203:                                              ; preds = %198
  %204 = landingpad { ptr, i32 }
          cleanup
  br label %455

205:                                              ; preds = %194
  %206 = getelementptr inbounds %class.GateElement, ptr %181, i64 0, i32 4
  %207 = load ptr, ptr %206, align 8, !tbaa !133
  %208 = icmp eq ptr %207, null
  br i1 %208, label %218, label %209

209:                                              ; preds = %205
  %210 = load i8, ptr %207, align 1, !tbaa !112
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds %class.GateElement, ptr %184, i64 0, i32 4
  %214 = getelementptr inbounds %class.GateElement, ptr %184, i64 0, i32 4, i32 1
  %215 = load i64, ptr %214, align 8, !tbaa !109
  %216 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %207) #20
  %217 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %213, i64 noundef 0, i64 noundef %215, ptr noundef nonnull %207, i64 noundef %216)
  br label %218

218:                                              ; preds = %205, %212, %209
  %219 = load ptr, ptr %181, align 8, !tbaa !102
  %220 = getelementptr inbounds ptr, ptr %219, i64 38
  %221 = load ptr, ptr %220, align 8
  %222 = tail call noundef ptr %221(ptr noundef nonnull align 8 dereferenceable(184) %181)
  %223 = icmp eq ptr %222, null
  br i1 %223, label %242, label %224

224:                                              ; preds = %218
  %225 = load ptr, ptr %184, align 8, !tbaa !102
  %226 = getelementptr inbounds ptr, ptr %225, i64 38
  %227 = load ptr, ptr %226, align 8
  %228 = tail call noundef ptr %227(ptr noundef nonnull align 8 dereferenceable(184) %184)
  %229 = icmp eq ptr %228, null
  br i1 %229, label %234, label %230

230:                                              ; preds = %224
  %231 = load ptr, ptr %228, align 8, !tbaa !102
  %232 = getelementptr inbounds ptr, ptr %231, i64 1
  %233 = load ptr, ptr %232, align 8
  tail call void %233(ptr noundef nonnull align 8 dereferenceable(144) %228) #20
  br label %234

234:                                              ; preds = %230, %224
  %235 = load ptr, ptr %222, align 8, !tbaa !102
  %236 = getelementptr inbounds ptr, ptr %235, i64 3
  %237 = load ptr, ptr %236, align 8
  %238 = tail call noundef ptr %237(ptr noundef nonnull align 8 dereferenceable(112) %222)
  %239 = load ptr, ptr %184, align 8, !tbaa !102
  %240 = getelementptr inbounds ptr, ptr %239, i64 27
  %241 = load ptr, ptr %240, align 8
  tail call void %241(ptr noundef nonnull align 8 dereferenceable(112) %184, ptr noundef %238)
  br label %242

242:                                              ; preds = %234, %218
  tail call void @_ZNK11NEDTypeInfo15mergePropertiesEP10NEDElementPKS0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %184, ptr noundef nonnull %181)
  br label %243

243:                                              ; preds = %242, %186
  %244 = load ptr, ptr %181, align 8, !tbaa !102
  %245 = getelementptr inbounds ptr, ptr %244, i64 36
  %246 = load ptr, ptr %245, align 8
  %247 = tail call noundef ptr %246(ptr noundef nonnull align 8 dereferenceable(184) %181)
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %180, !llvm.loop !302

249:                                              ; preds = %243, %174, %171, %163
  %250 = load ptr, ptr %2, align 8, !tbaa !102
  %251 = getelementptr inbounds ptr, ptr %250, i64 30
  %252 = load ptr, ptr %251, align 8
  %253 = tail call noundef ptr %252(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 21), !prof !291
  %254 = load ptr, ptr %1, align 8, !tbaa !102
  %255 = getelementptr inbounds ptr, ptr %254, i64 30
  %256 = load ptr, ptr %255, align 8
  %257 = tail call noundef ptr %256(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 21), !prof !291
  %258 = icmp eq ptr %253, null
  %259 = icmp ne ptr %257, null
  %260 = or i1 %258, %259
  br i1 %260, label %269, label %261, !prof !135

261:                                              ; preds = %249
  %262 = load ptr, ptr %253, align 8, !tbaa !102
  %263 = getelementptr inbounds ptr, ptr %262, i64 3
  %264 = load ptr, ptr %263, align 8
  %265 = tail call noundef ptr %264(ptr noundef nonnull align 8 dereferenceable(112) %253)
  %266 = load ptr, ptr %1, align 8, !tbaa !102
  %267 = getelementptr inbounds ptr, ptr %266, i64 27
  %268 = load ptr, ptr %267, align 8
  tail call void %268(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %265)
  br label %352

269:                                              ; preds = %249
  %270 = icmp ne ptr %253, null
  %271 = and i1 %270, %259
  br i1 %271, label %272, label %352, !prof !143

272:                                              ; preds = %269
  %273 = load ptr, ptr %253, align 8, !tbaa !102
  %274 = getelementptr inbounds ptr, ptr %273, i64 23
  %275 = load ptr, ptr %274, align 8
  %276 = tail call noundef ptr %275(ptr noundef nonnull align 8 dereferenceable(112) %253)
  %277 = icmp eq ptr %276, null
  br i1 %277, label %352, label %278

278:                                              ; preds = %272, %346
  %279 = phi ptr [ %350, %346 ], [ %276, %272 ]
  %280 = load ptr, ptr %279, align 8, !tbaa !102
  %281 = getelementptr inbounds ptr, ptr %280, i64 5
  %282 = load ptr, ptr %281, align 8
  %283 = tail call noundef i32 %282(ptr noundef nonnull align 8 dereferenceable(112) %279)
  %284 = add i32 %283, -9
  %285 = icmp ult i32 %284, 5
  br i1 %285, label %286, label %346

286:                                              ; preds = %278
  %287 = load ptr, ptr %279, align 8, !tbaa !102
  %288 = getelementptr inbounds ptr, ptr %287, i64 17
  %289 = load ptr, ptr %288, align 8
  %290 = tail call noundef ptr %289(ptr noundef nonnull align 8 dereferenceable(112) %279, ptr noundef nonnull @.str.17)
  %291 = load ptr, ptr %257, align 8, !tbaa !102
  %292 = getelementptr inbounds ptr, ptr %291, i64 23
  %293 = load ptr, ptr %292, align 8
  %294 = tail call noundef ptr %293(ptr noundef nonnull align 8 dereferenceable(112) %257)
  %295 = icmp eq ptr %294, null
  br i1 %295, label %333, label %296

296:                                              ; preds = %286
  %297 = icmp eq ptr %290, null
  br label %298

298:                                              ; preds = %296, %327
  %299 = phi ptr [ %294, %296 ], [ %331, %327 ]
  %300 = load ptr, ptr %299, align 8, !tbaa !102
  %301 = getelementptr inbounds ptr, ptr %300, i64 5
  %302 = load ptr, ptr %301, align 8
  %303 = tail call noundef i32 %302(ptr noundef nonnull align 8 dereferenceable(112) %299)
  %304 = add i32 %303, -9
  %305 = icmp ult i32 %304, 5
  br i1 %305, label %306, label %327

306:                                              ; preds = %298
  %307 = load ptr, ptr %299, align 8, !tbaa !102
  %308 = getelementptr inbounds ptr, ptr %307, i64 17
  %309 = load ptr, ptr %308, align 8
  %310 = tail call noundef ptr %309(ptr noundef nonnull align 8 dereferenceable(112) %299, ptr noundef nonnull @.str.17)
  %311 = icmp eq ptr %310, null
  br i1 %297, label %319, label %312

312:                                              ; preds = %306
  br i1 %311, label %315, label %313

313:                                              ; preds = %312
  %314 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %290, ptr noundef nonnull dereferenceable(1) %310) #23
  br label %324

315:                                              ; preds = %312
  %316 = load i8, ptr %290, align 1, !tbaa !112
  %317 = icmp ne i8 %316, 0
  %318 = zext i1 %317 to i32
  br label %324

319:                                              ; preds = %306
  br i1 %311, label %324, label %320

320:                                              ; preds = %319
  %321 = load i8, ptr %310, align 1, !tbaa !112
  %322 = icmp ne i8 %321, 0
  %323 = sext i1 %322 to i32
  br label %324

324:                                              ; preds = %313, %315, %319, %320
  %325 = phi i32 [ %314, %313 ], [ %318, %315 ], [ 0, %319 ], [ %323, %320 ]
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %341, label %327

327:                                              ; preds = %298, %324
  %328 = load ptr, ptr %299, align 8, !tbaa !102
  %329 = getelementptr inbounds ptr, ptr %328, i64 25
  %330 = load ptr, ptr %329, align 8
  %331 = tail call noundef ptr %330(ptr noundef nonnull align 8 dereferenceable(112) %299)
  %332 = icmp eq ptr %331, null
  br i1 %332, label %333, label %298, !llvm.loop !303

333:                                              ; preds = %327, %286
  %334 = load ptr, ptr %279, align 8, !tbaa !102
  %335 = getelementptr inbounds ptr, ptr %334, i64 3
  %336 = load ptr, ptr %335, align 8
  %337 = tail call noundef ptr %336(ptr noundef nonnull align 8 dereferenceable(112) %279)
  %338 = load ptr, ptr %257, align 8, !tbaa !102
  %339 = getelementptr inbounds ptr, ptr %338, i64 27
  %340 = load ptr, ptr %339, align 8
  tail call void %340(ptr noundef nonnull align 8 dereferenceable(112) %257, ptr noundef %337)
  br label %346

341:                                              ; preds = %324
  %342 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %342, ptr noundef nonnull %279, ptr noundef nonnull @.str.33, ptr noundef %290)
          to label %343 unwind label %344

343:                                              ; preds = %341
  tail call void @__cxa_throw(ptr nonnull %342, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

344:                                              ; preds = %341
  %345 = landingpad { ptr, i32 }
          cleanup
  br label %455

346:                                              ; preds = %278, %333
  %347 = load ptr, ptr %279, align 8, !tbaa !102
  %348 = getelementptr inbounds ptr, ptr %347, i64 25
  %349 = load ptr, ptr %348, align 8
  %350 = tail call noundef ptr %349(ptr noundef nonnull align 8 dereferenceable(112) %279)
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %278, !llvm.loop !304

352:                                              ; preds = %346, %272, %269, %261
  %353 = load ptr, ptr %2, align 8, !tbaa !102
  %354 = getelementptr inbounds ptr, ptr %353, i64 30
  %355 = load ptr, ptr %354, align 8
  %356 = tail call noundef ptr %355(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 22), !prof !291
  %357 = load ptr, ptr %1, align 8, !tbaa !102
  %358 = getelementptr inbounds ptr, ptr %357, i64 30
  %359 = load ptr, ptr %358, align 8
  %360 = tail call noundef ptr %359(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 22), !prof !291
  %361 = icmp eq ptr %356, null
  br i1 %361, label %405, label %362, !prof !135

362:                                              ; preds = %352
  %363 = icmp eq ptr %360, null
  br i1 %363, label %364, label %372

364:                                              ; preds = %362
  %365 = load ptr, ptr %356, align 8, !tbaa !102
  %366 = getelementptr inbounds ptr, ptr %365, i64 2
  %367 = load ptr, ptr %366, align 8
  %368 = tail call noundef ptr %367(ptr noundef nonnull align 8 dereferenceable(112) %356)
  %369 = load ptr, ptr %1, align 8, !tbaa !102
  %370 = getelementptr inbounds ptr, ptr %369, i64 27
  %371 = load ptr, ptr %370, align 8
  tail call void %371(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %368)
  br label %372

372:                                              ; preds = %364, %362
  %373 = phi ptr [ %360, %362 ], [ %368, %364 ]
  %374 = load ptr, ptr %356, align 8, !tbaa !102
  %375 = getelementptr inbounds ptr, ptr %374, i64 38
  %376 = load ptr, ptr %375, align 8
  %377 = tail call noundef ptr %376(ptr noundef nonnull align 8 dereferenceable(112) %356)
  %378 = icmp eq ptr %377, null
  br i1 %378, label %405, label %379

379:                                              ; preds = %372, %385
  %380 = phi ptr [ %396, %385 ], [ %377, %372 ]
  %381 = getelementptr inbounds %class.SubmoduleElement, ptr %380, i64 0, i32 1
  %382 = load ptr, ptr %381, align 8, !tbaa !133
  %383 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %373, i32 noundef 23, ptr noundef nonnull @.str.17, ptr noundef %382)
  %384 = icmp eq ptr %383, null
  br i1 %384, label %385, label %398

385:                                              ; preds = %379
  %386 = load ptr, ptr %380, align 8, !tbaa !102
  %387 = getelementptr inbounds ptr, ptr %386, i64 3
  %388 = load ptr, ptr %387, align 8
  %389 = tail call noundef ptr %388(ptr noundef nonnull align 8 dereferenceable(112) %380)
  %390 = load ptr, ptr %373, align 8, !tbaa !102
  %391 = getelementptr inbounds ptr, ptr %390, i64 27
  %392 = load ptr, ptr %391, align 8
  tail call void %392(ptr noundef nonnull align 8 dereferenceable(112) %373, ptr noundef %389)
  %393 = load ptr, ptr %380, align 8, !tbaa !102
  %394 = getelementptr inbounds ptr, ptr %393, i64 36
  %395 = load ptr, ptr %394, align 8
  %396 = tail call noundef ptr %395(ptr noundef nonnull align 8 dereferenceable(272) %380)
  %397 = icmp eq ptr %396, null
  br i1 %397, label %405, label %379, !llvm.loop !305

398:                                              ; preds = %379
  %399 = getelementptr inbounds %class.SubmoduleElement, ptr %380, i64 0, i32 1
  %400 = tail call ptr @__cxa_allocate_exception(i64 48) #20
  %401 = load ptr, ptr %399, align 8, !tbaa !133
  invoke void (ptr, ptr, ptr, ...) @_ZN12NEDExceptionC1EP10NEDElementPKcz(ptr noundef nonnull align 8 dereferenceable(48) %400, ptr noundef nonnull %380, ptr noundef nonnull @.str.34, ptr noundef %401)
          to label %402 unwind label %403

402:                                              ; preds = %398
  tail call void @__cxa_throw(ptr nonnull %400, ptr nonnull @_ZTI12NEDException, ptr nonnull @_ZN12NEDExceptionD2Ev) #21
  unreachable

403:                                              ; preds = %398
  %404 = landingpad { ptr, i32 }
          cleanup
  br label %455

405:                                              ; preds = %385, %372, %352
  %406 = load ptr, ptr %2, align 8, !tbaa !102
  %407 = getelementptr inbounds ptr, ptr %406, i64 30
  %408 = load ptr, ptr %407, align 8
  %409 = tail call noundef ptr %408(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 24), !prof !291
  %410 = load ptr, ptr %1, align 8, !tbaa !102
  %411 = getelementptr inbounds ptr, ptr %410, i64 30
  %412 = load ptr, ptr %411, align 8
  %413 = tail call noundef ptr %412(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 24), !prof !291
  %414 = icmp eq ptr %409, null
  %415 = icmp ne ptr %413, null
  %416 = or i1 %414, %415
  br i1 %416, label %425, label %417, !prof !135

417:                                              ; preds = %405
  %418 = load ptr, ptr %409, align 8, !tbaa !102
  %419 = getelementptr inbounds ptr, ptr %418, i64 3
  %420 = load ptr, ptr %419, align 8
  %421 = tail call noundef ptr %420(ptr noundef nonnull align 8 dereferenceable(112) %409)
  %422 = load ptr, ptr %1, align 8, !tbaa !102
  %423 = getelementptr inbounds ptr, ptr %422, i64 27
  %424 = load ptr, ptr %423, align 8
  tail call void %424(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %421)
  br label %454

425:                                              ; preds = %405
  %426 = icmp ne ptr %409, null
  %427 = and i1 %426, %415
  br i1 %427, label %428, label %454, !prof !143

428:                                              ; preds = %425
  %429 = getelementptr inbounds %class.ConnectionsElement, ptr %409, i64 0, i32 1
  %430 = load i8, ptr %429, align 8, !tbaa !306, !range !196, !noundef !197
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %434, label %432

432:                                              ; preds = %428
  %433 = getelementptr inbounds %class.ConnectionsElement, ptr %413, i64 0, i32 1
  store i8 1, ptr %433, align 8, !tbaa !306
  br label %434

434:                                              ; preds = %432, %428
  %435 = load ptr, ptr %409, align 8, !tbaa !102
  %436 = getelementptr inbounds ptr, ptr %435, i64 23
  %437 = load ptr, ptr %436, align 8
  %438 = tail call noundef ptr %437(ptr noundef nonnull align 8 dereferenceable(112) %409)
  %439 = icmp eq ptr %438, null
  br i1 %439, label %454, label %440

440:                                              ; preds = %434, %440
  %441 = phi ptr [ %452, %440 ], [ %438, %434 ]
  %442 = load ptr, ptr %441, align 8, !tbaa !102
  %443 = getelementptr inbounds ptr, ptr %442, i64 3
  %444 = load ptr, ptr %443, align 8
  %445 = tail call noundef ptr %444(ptr noundef nonnull align 8 dereferenceable(112) %441)
  %446 = load ptr, ptr %413, align 8, !tbaa !102
  %447 = getelementptr inbounds ptr, ptr %446, i64 27
  %448 = load ptr, ptr %447, align 8
  tail call void %448(ptr noundef nonnull align 8 dereferenceable(112) %413, ptr noundef %445)
  %449 = load ptr, ptr %441, align 8, !tbaa !102
  %450 = getelementptr inbounds ptr, ptr %449, i64 25
  %451 = load ptr, ptr %450, align 8
  %452 = tail call noundef ptr %451(ptr noundef nonnull align 8 dereferenceable(112) %441)
  %453 = icmp eq ptr %452, null
  br i1 %453, label %454, label %440, !llvm.loop !308

454:                                              ; preds = %440, %434, %425, %417
  ret void

455:                                              ; preds = %203, %403, %344, %99
  %456 = phi ptr [ %200, %203 ], [ %400, %403 ], [ %342, %344 ], [ %96, %99 ]
  %457 = phi { ptr, i32 } [ %204, %203 ], [ %404, %403 ], [ %345, %344 ], [ %100, %99 ]
  tail call void @__cxa_free_exception(ptr %456) #20
  resume { ptr, i32 } %457
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11NEDTypeInfo15mergePropertiesEP10NEDElementPKS0_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !182 {
  %4 = load ptr, ptr %2, align 8, !tbaa !102
  %5 = getelementptr inbounds ptr, ptr %4, i64 30
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef 17), !prof !184
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !135

9:                                                ; preds = %81, %3
  ret void

10:                                               ; preds = %3, %81
  %11 = phi ptr [ %85, %81 ], [ %7, %3 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !102
  %13 = getelementptr inbounds ptr, ptr %12, i64 30
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 17)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %69, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %class.PropertyElement, ptr %11, i64 0, i32 2
  %19 = getelementptr inbounds %class.PropertyElement, ptr %11, i64 0, i32 3
  br label %20

20:                                               ; preds = %17, %63
  %21 = phi ptr [ %15, %17 ], [ %67, %63 ]
  %22 = load ptr, ptr %18, align 8, !tbaa !133
  %23 = getelementptr inbounds %class.PropertyElement, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !133
  %25 = icmp eq ptr %22, null
  %26 = icmp eq ptr %24, null
  br i1 %25, label %34, label %27

27:                                               ; preds = %20
  br i1 %26, label %30, label %28

28:                                               ; preds = %27
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %24) #23
  br label %39

30:                                               ; preds = %27
  %31 = load i8, ptr %22, align 1, !tbaa !112
  %32 = icmp ne i8 %31, 0
  %33 = zext i1 %32 to i32
  br label %39

34:                                               ; preds = %20
  br i1 %26, label %39, label %35

35:                                               ; preds = %34
  %36 = load i8, ptr %24, align 1, !tbaa !112
  %37 = icmp ne i8 %36, 0
  %38 = sext i1 %37 to i32
  br label %39

39:                                               ; preds = %28, %30, %34, %35
  %40 = phi i32 [ %29, %28 ], [ %33, %30 ], [ 0, %34 ], [ %38, %35 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load ptr, ptr %19, align 8, !tbaa !133
  %44 = getelementptr inbounds %class.PropertyElement, ptr %21, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !133
  %46 = icmp eq ptr %43, null
  %47 = icmp eq ptr %45, null
  br i1 %46, label %55, label %48

48:                                               ; preds = %42
  br i1 %47, label %51, label %49

49:                                               ; preds = %48
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(1) %45) #23
  br label %60

51:                                               ; preds = %48
  %52 = load i8, ptr %43, align 1, !tbaa !112
  %53 = icmp ne i8 %52, 0
  %54 = zext i1 %53 to i32
  br label %60

55:                                               ; preds = %42
  br i1 %47, label %60, label %56

56:                                               ; preds = %55
  %57 = load i8, ptr %45, align 1, !tbaa !112
  %58 = icmp ne i8 %57, 0
  %59 = sext i1 %58 to i32
  br label %60

60:                                               ; preds = %49, %51, %55, %56
  %61 = phi i32 [ %50, %49 ], [ %54, %51 ], [ 0, %55 ], [ %59, %56 ]
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %39, %60
  %64 = load ptr, ptr %21, align 8, !tbaa !102
  %65 = getelementptr inbounds ptr, ptr %64, i64 31
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(112) %21, i32 noundef 17)
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %20, !llvm.loop !309

69:                                               ; preds = %63, %60, %10
  %70 = phi ptr [ null, %10 ], [ null, %63 ], [ %21, %60 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load ptr, ptr %11, align 8, !tbaa !102
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(112) %11)
  %77 = load ptr, ptr %1, align 8, !tbaa !102
  %78 = getelementptr inbounds ptr, ptr %77, i64 27
  %79 = load ptr, ptr %78, align 8
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %76)
  br label %81

80:                                               ; preds = %69
  tail call void @_ZNK11NEDTypeInfo13mergePropertyEP15PropertyElementPKS0_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull %70, ptr noundef nonnull %11)
  br label %81

81:                                               ; preds = %80, %72
  %82 = load ptr, ptr %11, align 8, !tbaa !102
  %83 = getelementptr inbounds ptr, ptr %82, i64 31
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(112) %11, i32 noundef 17)
  %86 = icmp eq ptr %85, null
  br i1 %86, label %9, label %10, !prof !135, !llvm.loop !310
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11NEDTypeInfo13mergePropertyEP15PropertyElementPKS0_(ptr nocapture noundef nonnull readnone align 8 dereferenceable(152) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %4 = load ptr, ptr %2, align 8, !tbaa !102
  %5 = getelementptr inbounds ptr, ptr %4, i64 38
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(184) %2)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %25, %3
  ret void

10:                                               ; preds = %3, %25
  %11 = phi ptr [ %29, %25 ], [ %7, %3 ]
  %12 = getelementptr inbounds %class.PropertyKeyElement, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !133
  %14 = tail call noundef ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 18, ptr noundef nonnull @.str.17, ptr noundef %13)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !102
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(112) %11)
  %21 = load ptr, ptr %1, align 8, !tbaa !102
  %22 = getelementptr inbounds ptr, ptr %21, i64 27
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %20)
  br label %25

24:                                               ; preds = %10
  tail call void @_ZNK11NEDTypeInfo16mergePropertyKeyEP18PropertyKeyElementPKS0_(ptr nonnull align 8 poison, ptr noundef nonnull %14, ptr noundef nonnull %11)
  br label %25

25:                                               ; preds = %24, %16
  %26 = load ptr, ptr %11, align 8, !tbaa !102
  %27 = getelementptr inbounds ptr, ptr %26, i64 36
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(144) %11)
  %30 = icmp eq ptr %29, null
  br i1 %30, label %9, label %10, !llvm.loop !311
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11NEDTypeInfo16mergePropertyKeyEP18PropertyKeyElementPKS0_(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %4 = load ptr, ptr %1, align 8, !tbaa !102
  %5 = getelementptr inbounds ptr, ptr %4, i64 38
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(144) %1)
  %8 = load ptr, ptr %2, align 8, !tbaa !102
  %9 = getelementptr inbounds ptr, ptr %8, i64 38
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(144) %2)
  %12 = icmp ne ptr %7, null
  %13 = icmp ne ptr %11, null
  %14 = and i1 %13, %12
  br i1 %14, label %18, label %15

15:                                               ; preds = %68, %3
  %16 = phi ptr [ %11, %3 ], [ %72, %68 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %90, label %76

18:                                               ; preds = %3, %68
  %19 = phi ptr [ %24, %68 ], [ %7, %3 ]
  %20 = phi ptr [ %72, %68 ], [ %11, %3 ]
  %21 = load ptr, ptr %19, align 8, !tbaa !102
  %22 = getelementptr inbounds ptr, ptr %21, i64 36
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(216) %19)
  %25 = getelementptr inbounds %class.LiteralElement, ptr %20, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !312
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %50

28:                                               ; preds = %18
  %29 = getelementptr inbounds %class.LiteralElement, ptr %20, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !133
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %30, ptr noundef nonnull dereferenceable(2) @.str.35) #23
  br label %34

34:                                               ; preds = %28, %32
  %35 = phi i32 [ %33, %32 ], [ -1, %28 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #24
  invoke void @_ZN14LiteralElementC1Ev(ptr noundef nonnull align 8 dereferenceable(216) %38)
          to label %39 unwind label %48

39:                                               ; preds = %37
  tail call void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216) %38, i32 noundef 4)
  %40 = load ptr, ptr %1, align 8, !tbaa !102
  %41 = getelementptr inbounds ptr, ptr %40, i64 28
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %19, ptr noundef nonnull %38)
  %43 = load ptr, ptr %1, align 8, !tbaa !102
  %44 = getelementptr inbounds ptr, ptr %43, i64 29
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %19)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %68, label %63

48:                                               ; preds = %37
  %49 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %38) #22
  resume { ptr, i32 } %49

50:                                               ; preds = %34, %18
  %51 = load ptr, ptr %20, align 8, !tbaa !102
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(112) %20)
  %55 = load ptr, ptr %1, align 8, !tbaa !102
  %56 = getelementptr inbounds ptr, ptr %55, i64 28
  %57 = load ptr, ptr %56, align 8
  tail call void %57(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %19, ptr noundef %54)
  %58 = load ptr, ptr %1, align 8, !tbaa !102
  %59 = getelementptr inbounds ptr, ptr %58, i64 29
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %19)
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %50, %39
  %64 = phi ptr [ %46, %39 ], [ %61, %50 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !102
  %66 = getelementptr inbounds ptr, ptr %65, i64 1
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(112) %64) #20
  br label %68

68:                                               ; preds = %63, %39, %50
  %69 = load ptr, ptr %20, align 8, !tbaa !102
  %70 = getelementptr inbounds ptr, ptr %69, i64 36
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(216) %20)
  %73 = icmp ne ptr %24, null
  %74 = icmp ne ptr %72, null
  %75 = and i1 %74, %73
  br i1 %75, label %18, label %15, !llvm.loop !314

76:                                               ; preds = %15, %76
  %77 = phi ptr [ %88, %76 ], [ %16, %15 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !102
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(112) %77)
  %82 = load ptr, ptr %1, align 8, !tbaa !102
  %83 = getelementptr inbounds ptr, ptr %82, i64 27
  %84 = load ptr, ptr %83, align 8
  tail call void %84(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %81)
  %85 = load ptr, ptr %77, align 8, !tbaa !102
  %86 = getelementptr inbounds ptr, ptr %85, i64 36
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(216) %77)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %76, !llvm.loop !315

90:                                               ; preds = %76, %15
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

declare void @_ZN14LiteralElementC1Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #0

declare void @_ZN14LiteralElement7setTypeEi(ptr noundef nonnull align 8 dereferenceable(216), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11NEDTypeInfo7getTypeEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #4 comdat align 2 !prof !316 {
  %2 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !124
  ret i32 %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11NEDTypeInfo15numExtendsNamesEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #10 comdat align 2 !prof !317 {
  %2 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 6
  %3 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 6, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = load ptr, ptr %2, align 8, !tbaa !129
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 5
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11NEDTypeInfo17numInterfaceNamesEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #4 comdat align 2 !prof !290 {
  %2 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 7
  %3 = getelementptr inbounds %class.NEDTypeInfo, ptr %0, i64 0, i32 7, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = load ptr, ptr %2, align 8, !tbaa !129
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 5
  %10 = trunc i64 %9 to i32
  ret i32 %10
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN12NEDExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV12NEDException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !109
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #22
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  tail call void @_ZdlPv(ptr noundef %0) #22
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12NEDException4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %2 = getelementptr inbounds %class.NEDException, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN13NEDErrorStore5EntryESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !318 {
  %2 = load ptr, ptr %0, align 8, !tbaa !319
  %3 = getelementptr inbounds %"struct.std::_Vector_base<NEDErrorStore::Entry, std::allocator<NEDErrorStore::Entry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !321
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %30, label %6, !prof !135

6:                                                ; preds = %1, %27
  %7 = phi ptr [ %28, %27 ], [ %2, %1 ]
  %8 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  %10 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 0, i32 3, i32 2
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 0, i32 3, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !109
  %15 = icmp ult i64 %14, 16
  tail call void @llvm.assume(i1 %15)
  br label %17

16:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %9) #22
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !133
  %20 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 0, i32 2, i32 2
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 0, i32 2, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !109
  %25 = icmp ult i64 %24, 16
  tail call void @llvm.assume(i1 %25)
  br label %27

26:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %19) #22
  br label %27

27:                                               ; preds = %26, %22
  %28 = getelementptr inbounds %"struct.NEDErrorStore::Entry", ptr %7, i64 1
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %30, label %6, !prof !135, !llvm.loop !322

30:                                               ; preds = %27, %1
  %31 = load ptr, ptr %0, align 8, !tbaa !319
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33, !prof !323

33:                                               ; preds = %30
  tail call void @_ZdlPv(ptr noundef %31) #22
  br label %34

34:                                               ; preds = %30, %33
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat !prof !174 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !324 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !178
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !179

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !133
  %11 = load i64, ptr %4, align 8, !tbaa !178
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !112
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !133
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !180

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !112
  store i8 %16, ptr %14, align 1, !tbaa !112
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !325
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !178
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !109
  %21 = load ptr, ptr %0, align 8, !tbaa !133
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !175 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = load ptr, ptr %0, align 8, !tbaa !176
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775776
  br i1 %10, label %11, label %12, !prof !163

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #21
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 5
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 288230376151711743)
  %18 = select i1 %16, i64 288230376151711743, i64 %17, !prof !163
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 5
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %25, label %23, !prof !163

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %18, ptr noundef null)
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 %21
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 %21, i32 2
  store ptr %28, ptr %27, align 8, !tbaa !105
  %29 = load ptr, ptr %2, align 8, !tbaa !133
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !109
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef %29, ptr noundef %32)
          to label %33 unwind label %89, !prof !165

33:                                               ; preds = %25
  %34 = icmp eq ptr %6, %1
  br i1 %34, label %35, label %39, !prof !135

35:                                               ; preds = %53, %33
  %36 = phi ptr [ %26, %33 ], [ %58, %53 ]
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %36, i64 1
  %38 = icmp eq ptr %5, %1
  br i1 %38, label %82, label %60, !prof !135

39:                                               ; preds = %33, %53
  %40 = phi ptr [ %58, %53 ], [ %26, %33 ]
  %41 = phi ptr [ %57, %53 ], [ %6, %33 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %40, i64 0, i32 2
  store ptr %42, ptr %40, align 8, !tbaa !105, !alias.scope !326, !noalias !329
  %43 = load ptr, ptr %41, align 8, !tbaa !133, !alias.scope !329, !noalias !326
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %41, i64 0, i32 2
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %41, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !109, !alias.scope !329, !noalias !326
  %49 = icmp ult i64 %48, 16
  tail call void @llvm.assume(i1 %49)
  %50 = add nuw nsw i64 %48, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %42, ptr noundef nonnull align 8 dereferenceable(1) %44, i64 %50, i1 false), !alias.scope !331
  br label %53

51:                                               ; preds = %39
  store ptr %43, ptr %40, align 8, !tbaa !133, !alias.scope !326, !noalias !329
  %52 = load i64, ptr %44, align 8, !tbaa !112, !alias.scope !329, !noalias !326
  store i64 %52, ptr %42, align 8, !tbaa !112, !alias.scope !326, !noalias !329
  br label %53

53:                                               ; preds = %51, %46
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %41, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !109, !alias.scope !329, !noalias !326
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %40, i64 0, i32 1
  store i64 %55, ptr %56, align 8, !tbaa !109, !alias.scope !326, !noalias !329
  store ptr %44, ptr %41, align 8, !tbaa !133, !alias.scope !329, !noalias !326
  store i64 0, ptr %54, align 8, !tbaa !109, !alias.scope !329, !noalias !326
  store i8 0, ptr %44, align 1, !tbaa !112, !alias.scope !329, !noalias !326
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %41, i64 1
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %40, i64 1
  %59 = icmp eq ptr %57, %1
  br i1 %59, label %35, label %39, !prof !135, !llvm.loop !332

60:                                               ; preds = %35, %75
  %61 = phi ptr [ %80, %75 ], [ %37, %35 ]
  %62 = phi ptr [ %61, %75 ], [ %36, %35 ]
  %63 = phi ptr [ %79, %75 ], [ %1, %35 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %62, i64 1, i32 2
  store ptr %64, ptr %61, align 8, !tbaa !105, !alias.scope !333, !noalias !336
  %65 = load ptr, ptr %63, align 8, !tbaa !133, !alias.scope !336, !noalias !333
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %63, i64 0, i32 2
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %63, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !109, !alias.scope !336, !noalias !333
  %71 = icmp ult i64 %70, 16
  tail call void @llvm.assume(i1 %71)
  %72 = add nuw nsw i64 %70, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %64, ptr noundef nonnull align 8 dereferenceable(1) %66, i64 %72, i1 false), !alias.scope !338
  br label %75

73:                                               ; preds = %60
  store ptr %65, ptr %61, align 8, !tbaa !133, !alias.scope !333, !noalias !336
  %74 = load i64, ptr %66, align 8, !tbaa !112, !alias.scope !336, !noalias !333
  store i64 %74, ptr %64, align 8, !tbaa !112, !alias.scope !333, !noalias !336
  br label %75

75:                                               ; preds = %73, %68
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %63, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !109, !alias.scope !336, !noalias !333
  %78 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %62, i64 1, i32 1
  store i64 %77, ptr %78, align 8, !tbaa !109, !alias.scope !333, !noalias !336
  store ptr %66, ptr %63, align 8, !tbaa !133, !alias.scope !336, !noalias !333
  store i64 0, ptr %76, align 8, !tbaa !109, !alias.scope !336, !noalias !333
  store i8 0, ptr %66, align 1, !tbaa !112, !alias.scope !336, !noalias !333
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %63, i64 1
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %61, i64 1
  %81 = icmp eq ptr %79, %5
  br i1 %81, label %82, label %60, !prof !135, !llvm.loop !332

82:                                               ; preds = %75, %35
  %83 = phi ptr [ %37, %35 ], [ %80, %75 ]
  %84 = icmp eq ptr %6, null
  br i1 %84, label %86, label %85, !prof !165

85:                                               ; preds = %82
  tail call void @_ZdlPv(ptr noundef %6) #22
  br label %86

86:                                               ; preds = %82, %85
  %87 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %26, ptr %0, align 8, !tbaa !129
  store ptr %83, ptr %4, align 8, !tbaa !128
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 %18
  store ptr %88, ptr %87, align 8, !tbaa !177
  ret void

89:                                               ; preds = %25
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  %92 = tail call ptr @__cxa_begin_catch(ptr %91) #20
  %93 = icmp eq ptr %26, null
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load ptr, ptr %27, align 8, !tbaa !133
  %96 = icmp eq ptr %95, %28
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %26, i64 %21, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !109
  %100 = icmp ult i64 %99, 16
  tail call void @llvm.assume(i1 %100)
  br label %104

101:                                              ; preds = %94
  tail call void @_ZdlPv(ptr noundef %95) #22
  br label %104

102:                                              ; preds = %106
  %103 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %107 unwind label %108

104:                                              ; preds = %101, %97
  br i1 %93, label %106, label %105

105:                                              ; preds = %89, %104
  tail call void @_ZdlPv(ptr noundef %26) #22
  br label %106

106:                                              ; preds = %105, %104
  invoke void @__cxa_rethrow() #21
          to label %111 unwind label %102

107:                                              ; preds = %102
  resume { ptr, i32 } %103

108:                                              ; preds = %102
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  tail call void @__clang_call_terminate(ptr %110) #25
  unreachable

111:                                              ; preds = %106
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !339 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !178
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !340

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !133
  %11 = load i64, ptr %4, align 8, !tbaa !178
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !112
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !133
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !341

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !112
  store i8 %16, ptr %14, align 1, !tbaa !112
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !342
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !178
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !109
  %21 = load ptr, ptr %0, align 8, !tbaa !133
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !112
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !175 {
  %4 = icmp ugt i64 %1, 288230376151711743
  br i1 %4, label %5, label %9, !prof !343

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 576460752303423487
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #21
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #21
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 5
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #24
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !176
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !177
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !105
  %10 = load ptr, ptr %1, align 8, !tbaa !133
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !109
  %16 = icmp ult i64 %15, 16
  tail call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !133
  %19 = load i64, ptr %11, align 8, !tbaa !112
  store i64 %19, ptr %9, align 8, !tbaa !112
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !109
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !109
  store ptr %11, ptr %1, align 8, !tbaa !133
  store i64 0, ptr %21, align 8, !tbaa !109
  store i8 0, ptr %11, align 8, !tbaa !112
  %24 = load ptr, ptr %3, align 8, !tbaa !128
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 1
  store ptr %25, ptr %3, align 8, !tbaa !128
  br label %27

26:                                               ; preds = %2
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %27

27:                                               ; preds = %26, %20
  %28 = load ptr, ptr %3, align 8, !tbaa !176
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 -1
  ret ptr %29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !344 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = load ptr, ptr %0, align 8, !tbaa !176
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775776
  br i1 %10, label %11, label %12, !prof !345

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #21
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 5
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 288230376151711743)
  %18 = select i1 %16, i64 288230376151711743, i64 %17, !prof !345
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 5
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23, !prof !345

23:                                               ; preds = %12
  %24 = shl nuw nsw i64 %18, 5
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #24
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21, i32 2
  store ptr %29, ptr %28, align 8, !tbaa !105
  %30 = load ptr, ptr %2, align 8, !tbaa !133
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %38, !prof !346

33:                                               ; preds = %26
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !109
  %36 = icmp ult i64 %35, 16
  tail call void @llvm.assume(i1 %36)
  %37 = add nuw nsw i64 %35, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(1) %31, i64 %37, i1 false), !prof !347
  br label %40

38:                                               ; preds = %26
  store ptr %30, ptr %28, align 8, !tbaa !133
  %39 = load i64, ptr %31, align 8, !tbaa !112
  store i64 %39, ptr %29, align 8, !tbaa !112
  br label %40

40:                                               ; preds = %33, %38
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !109
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21, i32 1
  store i64 %42, ptr %43, align 8, !tbaa !109
  store ptr %31, ptr %2, align 8, !tbaa !133
  store i64 0, ptr %41, align 8, !tbaa !109
  store i8 0, ptr %31, align 8, !tbaa !112
  %44 = icmp eq ptr %6, %1
  br i1 %44, label %45, label %49, !prof !348

45:                                               ; preds = %63, %40
  %46 = phi ptr [ %27, %40 ], [ %68, %63 ]
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 1
  %48 = icmp eq ptr %5, %1
  br i1 %48, label %92, label %70, !prof !135

49:                                               ; preds = %40, %63
  %50 = phi ptr [ %68, %63 ], [ %27, %40 ]
  %51 = phi ptr [ %67, %63 ], [ %6, %40 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 2
  store ptr %52, ptr %50, align 8, !tbaa !105, !alias.scope !349, !noalias !352
  %53 = load ptr, ptr %51, align 8, !tbaa !133, !alias.scope !352, !noalias !349
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 2
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61, !prof !354

56:                                               ; preds = %49
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !109, !alias.scope !352, !noalias !349
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false), !prof !355, !alias.scope !356
  br label %63

61:                                               ; preds = %49
  store ptr %53, ptr %50, align 8, !tbaa !133, !alias.scope !349, !noalias !352
  %62 = load i64, ptr %54, align 8, !tbaa !112, !alias.scope !352, !noalias !349
  store i64 %62, ptr %52, align 8, !tbaa !112, !alias.scope !349, !noalias !352
  br label %63

63:                                               ; preds = %61, %56
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !109, !alias.scope !352, !noalias !349
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 1
  store i64 %65, ptr %66, align 8, !tbaa !109, !alias.scope !349, !noalias !352
  store ptr %54, ptr %51, align 8, !tbaa !133, !alias.scope !352, !noalias !349
  store i64 0, ptr %64, align 8, !tbaa !109, !alias.scope !352, !noalias !349
  store i8 0, ptr %54, align 1, !tbaa !112, !alias.scope !352, !noalias !349
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 1
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 1
  %69 = icmp eq ptr %67, %1
  br i1 %69, label %45, label %49, !prof !357, !llvm.loop !332

70:                                               ; preds = %45, %85
  %71 = phi ptr [ %90, %85 ], [ %47, %45 ]
  %72 = phi ptr [ %71, %85 ], [ %46, %45 ]
  %73 = phi ptr [ %89, %85 ], [ %1, %45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 1, i32 2
  store ptr %74, ptr %71, align 8, !tbaa !105, !alias.scope !358, !noalias !361
  %75 = load ptr, ptr %73, align 8, !tbaa !133, !alias.scope !361, !noalias !358
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 2
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !109, !alias.scope !361, !noalias !358
  %81 = icmp ult i64 %80, 16
  tail call void @llvm.assume(i1 %81)
  %82 = add nuw nsw i64 %80, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %74, ptr noundef nonnull align 8 dereferenceable(1) %76, i64 %82, i1 false), !alias.scope !363
  br label %85

83:                                               ; preds = %70
  store ptr %75, ptr %71, align 8, !tbaa !133, !alias.scope !358, !noalias !361
  %84 = load i64, ptr %76, align 8, !tbaa !112, !alias.scope !361, !noalias !358
  store i64 %84, ptr %74, align 8, !tbaa !112, !alias.scope !358, !noalias !361
  br label %85

85:                                               ; preds = %83, %78
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !109, !alias.scope !361, !noalias !358
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 1, i32 1
  store i64 %87, ptr %88, align 8, !tbaa !109, !alias.scope !358, !noalias !361
  store ptr %76, ptr %73, align 8, !tbaa !133, !alias.scope !361, !noalias !358
  store i64 0, ptr %86, align 8, !tbaa !109, !alias.scope !361, !noalias !358
  store i8 0, ptr %76, align 1, !tbaa !112, !alias.scope !361, !noalias !358
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 1
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %71, i64 1
  %91 = icmp eq ptr %89, %5
  br i1 %91, label %92, label %70, !prof !135, !llvm.loop !332

92:                                               ; preds = %85, %45
  %93 = phi ptr [ %47, %45 ], [ %90, %85 ]
  %94 = icmp eq ptr %6, null
  br i1 %94, label %96, label %95, !prof !364

95:                                               ; preds = %92
  tail call void @_ZdlPv(ptr noundef %6) #22
  br label %96

96:                                               ; preds = %92, %95
  %97 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %27, ptr %0, align 8, !tbaa !129
  store ptr %93, ptr %4, align 8, !tbaa !128
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %18
  store ptr %98, ptr %97, align 8, !tbaa !177
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3 align 2

; Function Attrs: nounwind
declare noundef i32 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_nedtypeinfo.cc() #15 section ".text.startup" !prof !290 !PGOFuncName !365 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #20
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!100}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99}
!35 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @strlen, i64 23}
!36 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 23}
!37 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZN16NEDResourceCache18getParentContextOfEPKcP10NEDElement, i64 22}
!38 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, i64 3}
!39 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZNK11NEDTypeInfo7getTypeEv, i64 41}
!40 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZNK11NEDTypeInfo17numInterfaceNamesEv, i64 1}
!41 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZdlPv, i64 1}
!42 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZNK11NEDTypeInfo15numExtendsNamesEv, i64 12}
!43 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZN11NEDTypeInfo26checkComplianceToInterfaceEPS_, i64 2}
!44 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZNK11NEDTypeInfo7getTreeEv, i64 13}
!45 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZN14NEDElementUtil22getLocalStringPropertyEP10NEDElementPKc, i64 13}
!46 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZNK11NEDTypeInfo15getCxxNamespaceB5cxx11Ev, i64 12}
!47 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_Z8opp_joinB5cxx11PKcS0_S0_, i64 12}
!48 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_, i64 12}
!49 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZNK11NEDTypeInfo12getSuperDeclEv, i64 1}
!50 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZNK11NEDTypeInfo23implementationClassNameEv, i64 1}
!51 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZNK11NEDTypeInfo7getNameEv, i64 9}
!52 = !{ptr @_ZN11NEDTypeInfoC2EP16NEDResourceCachePKcP10NEDElement, ptr @_ZNK11NEDTypeInfo16getFlattenedTreeEv, i64 22}
!53 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, i64 3}
!54 = !{ptr @_ZN11NEDTypeInfo26checkComplianceToInterfaceEPS_, ptr @_ZNK11NEDTypeInfo7getTreeEv, i64 4}
!55 = !{ptr @_ZN11NEDTypeInfo26checkComplianceToInterfaceEPS_, ptr @_ZNK11NEDTypeInfo13findParamDeclEPKc, i64 6}
!56 = !{ptr @_ZN11NEDTypeInfo26checkComplianceToInterfaceEPS_, ptr @_ZNK11NEDTypeInfo12findGateDeclEPKc, i64 4}
!57 = !{ptr @_ZN11NEDTypeInfo26checkComplianceToInterfaceEPS_, ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_, i64 8}
!58 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZdlPv, i64 10}
!59 = !{ptr @_ZN11NEDTypeInfoD2Ev, ptr @_ZdlPv, i64 7}
!60 = !{ptr @_ZN11NEDTypeInfoD2Ev, ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, i64 44}
!61 = !{ptr @_ZNK11NEDTypeInfo7getNameEv, ptr @_ZNK11NEDTypeInfo11getFullNameEv, i64 9}
!62 = !{ptr @_ZNK11NEDTypeInfo7getNameEv, ptr @strrchr, i64 9}
!63 = !{ptr @_ZNK11NEDTypeInfo16getFlattenedTreeEv, ptr @_ZNK11NEDTypeInfo18buildFlattenedTreeEv, i64 22}
!64 = !{ptr @_ZNK11NEDTypeInfo18buildFlattenedTreeEv, ptr @_ZN16NEDResourceCache18getParentContextOfEPKcP10NEDElement, i64 22}
!65 = !{ptr @_ZNK11NEDTypeInfo18buildFlattenedTreeEv, ptr @_ZNK11NEDTypeInfo7getTypeEv, i64 2}
!66 = !{ptr @_ZNK11NEDTypeInfo18buildFlattenedTreeEv, ptr @_ZNK11NEDTypeInfo16getFlattenedTreeEv, i64 1}
!67 = !{ptr @_ZNK11NEDTypeInfo18buildFlattenedTreeEv, ptr @_ZdlPv, i64 1}
!68 = !{ptr @_ZNK11NEDTypeInfo18buildFlattenedTreeEv, ptr @_ZNK11NEDTypeInfo12mergeNEDTypeEP10NEDElementPKS0_, i64 1}
!69 = !{ptr @_ZNK11NEDTypeInfo18getPackagePropertyB5cxx11EPKc, ptr @_ZNK11NEDTypeInfo7getTreeEv, i64 12}
!70 = !{ptr @_ZNK11NEDTypeInfo18getPackagePropertyB5cxx11EPKc, ptr @_ZN10NEDElement16getParentWithTagEi, i64 12}
!71 = !{ptr @_ZNK11NEDTypeInfo18getPackagePropertyB5cxx11EPKc, ptr @_ZN14NEDElementUtil22getLocalStringPropertyEP10NEDElementPKc, i64 16}
!72 = !{ptr @_ZNK11NEDTypeInfo18getPackagePropertyB5cxx11EPKc, ptr @strlen, i64 1}
!73 = !{ptr @_ZNK11NEDTypeInfo18getPackagePropertyB5cxx11EPKc, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, i64 1}
!74 = !{ptr @_ZNK11NEDTypeInfo15getCxxNamespaceB5cxx11Ev, ptr @_ZNK11NEDTypeInfo18getPackagePropertyB5cxx11EPKc, i64 12}
!75 = !{ptr @_ZN11NEDTypeInfo17supportsInterfaceEPKc, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc, i64 246}
!76 = !{ptr @_ZNK11NEDTypeInfo12getSuperDeclEv, ptr @_ZNK11NEDTypeInfo11extendsNameEi, i64 6}
!77 = !{ptr @_ZN11NEDTypeInfo9isNetworkEv, ptr @_ZNK11NEDTypeInfo7getTreeEv, i64 2}
!78 = !{ptr @_ZN11NEDTypeInfo9isNetworkEv, ptr @_ZN14NEDElementUtil20getLocalBoolPropertyEP10NEDElementPKc, i64 2}
!79 = !{ptr @_ZNK11NEDTypeInfo20getParametersElementEv, ptr @_ZNK11NEDTypeInfo7getTreeEv, i64 49001}
!80 = !{ptr @_ZNK11NEDTypeInfo15getGatesElementEv, ptr @_ZNK11NEDTypeInfo7getTreeEv, i64 78370}
!81 = !{ptr @_ZNK11NEDTypeInfo20getSubmodulesElementEv, ptr @_ZNK11NEDTypeInfo7getTreeEv, i64 5471}
!82 = !{ptr @_ZNK11NEDTypeInfo21getConnectionsElementEv, ptr @_ZNK11NEDTypeInfo7getTreeEv, i64 10942}
!83 = !{ptr @_ZNK11NEDTypeInfo18findLocalParamDeclEPKc, ptr @_ZNK11NEDTypeInfo7getTreeEv, i64 6}
!84 = !{ptr @_ZNK11NEDTypeInfo18findLocalParamDeclEPKc, ptr @strcmp, i64 12}
!85 = !{ptr @_ZNK11NEDTypeInfo13findParamDeclEPKc, ptr @_ZNK11NEDTypeInfo18findLocalParamDeclEPKc, i64 6}
!86 = !{ptr @_ZNK11NEDTypeInfo17findLocalGateDeclEPKc, ptr @_ZNK11NEDTypeInfo7getTreeEv, i64 4}
!87 = !{ptr @_ZNK11NEDTypeInfo17findLocalGateDeclEPKc, ptr @strcmp, i64 6}
!88 = !{ptr @_ZNK11NEDTypeInfo12findGateDeclEPKc, ptr @_ZNK11NEDTypeInfo17findLocalGateDeclEPKc, i64 4}
!89 = !{ptr @_ZNK11NEDTypeInfo12mergeNEDTypeEP10NEDElementPKS0_, ptr @_ZNK11NEDTypeInfo15mergePropertiesEP10NEDElementPKS0_, i64 2}
!90 = !{ptr @_ZNK11NEDTypeInfo12mergeNEDTypeEP10NEDElementPKS0_, ptr @_ZN10NEDElement26getFirstChildWithAttributeEiPKcS1_, i64 1}
!91 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257656}
!92 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv, i64 3}
!93 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, i64 3}
!94 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1399683}
!95 = !{ptr @_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv, ptr @_Znwm, i64 3}
!96 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_Znwm, i64 1136}
!97 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZdlPv, i64 581}
!98 = !{ptr @_GLOBAL__sub_I_nedtypeinfo.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!99 = !{ptr @_GLOBAL__sub_I_nedtypeinfo.cc, ptr @__cxa_atexit, i64 1}
!100 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!101 = !{!"function_entry_count", i64 22}
!102 = !{!103, !103, i64 0}
!103 = !{!"vtable pointer", !104, i64 0}
!104 = !{!"Simple C++ TBAA"}
!105 = !{!106, !107, i64 0}
!106 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !107, i64 0}
!107 = !{!"any pointer", !108, i64 0}
!108 = !{!"omnipotent char", !104, i64 0}
!109 = !{!110, !111, i64 8}
!110 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !106, i64 0, !111, i64 8, !108, i64 16}
!111 = !{!"long", !108, i64 0}
!112 = !{!108, !108, i64 0}
!113 = !{!114, !107, i64 8}
!114 = !{!"_ZTS11NEDTypeInfo", !107, i64 8, !115, i64 16, !110, i64 24, !107, i64 56, !107, i64 64, !116, i64 72, !116, i64 96, !110, i64 120}
!115 = !{!"_ZTSN11NEDTypeInfo4TypeE", !108, i64 0}
!116 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !117, i64 0}
!117 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !118, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !119, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!120 = !{!"branch_weights", i32 22, i32 0}
!121 = !{!114, !107, i64 56}
!122 = !{!114, !107, i64 64}
!123 = !{!"VP", i32 0, i64 22, i64 4398258357829327654, i64 9, i64 4032464433409280737, i64 6, i64 4861209532456714327, i64 4}
!124 = !{!114, !115, i64 16}
!125 = !{!"VP", i32 0, i64 22, i64 -4535849660517922832, i64 22}
!126 = !{!"branch_weights", i32 22, i32 85}
!127 = !{!"branch_weights", i32 19, i32 0, i32 3}
!128 = !{!119, !107, i64 8}
!129 = !{!119, !107, i64 0}
!130 = !{!"branch_weights", i32 2, i32 17}
!131 = !{!"VP", i32 0, i64 85, i64 5432170427955731470, i64 33, i64 4770267619321349184, i64 20, i64 -3425791859166369719, i64 17}
!132 = !{!"branch_weights", i32 1, i32 84}
!133 = !{!110, !107, i64 0}
!134 = !{!"VP", i32 0, i64 1, i64 -8920427507549629053, i64 1}
!135 = !{!"branch_weights", i32 1, i32 0}
!136 = !{!"VP", i32 0, i64 1, i64 3005355604784832286, i64 1}
!137 = !{!"VP", i32 0, i64 1, i64 -3322676985822989992, i64 1}
!138 = !{!"branch_weights", i32 1, i32 0, i32 0}
!139 = distinct !{!139, !140, !141}
!140 = !{!"llvm.loop.mustprogress"}
!141 = !{!"llvm.loop.unroll.disable"}
!142 = !{!"VP", i32 0, i64 1, i64 -7130918476825110445, i64 1}
!143 = !{!"branch_weights", i32 0, i32 1}
!144 = distinct !{!144, !140, !141}
!145 = !{!"branch_weights", i32 2, i32 83}
!146 = !{!"VP", i32 0, i64 2, i64 -8920427507549629053, i64 2}
!147 = !{!"branch_weights", i32 2, i32 0}
!148 = !{!"VP", i32 0, i64 2, i64 3005355604784832286, i64 2}
!149 = !{!"VP", i32 0, i64 2, i64 -3322676985822989992, i64 2}
!150 = !{!"branch_weights", i32 0, i32 2}
!151 = !{!"VP", i32 0, i64 2, i64 -8588976222160311642, i64 2}
!152 = distinct !{!152, !140, !141}
!153 = !{!"VP", i32 0, i64 85, i64 -7396538328733376965, i64 85}
!154 = distinct !{!154, !140, !141}
!155 = distinct !{!155, !140, !141}
!156 = !{!"VP", i32 0, i64 22, i64 -3322676985822989992, i64 22}
!157 = !{!"branch_weights", i32 9, i32 13}
!158 = !{!"VP", i32 0, i64 13, i64 -3322676985822989992, i64 13}
!159 = !{!"branch_weights", i32 4, i32 9}
!160 = !{!"VP", i32 0, i64 13, i64 8179965290341647283, i64 13}
!161 = !{!"branch_weights", i32 13, i32 0}
!162 = !{!"branch_weights", i32 10, i32 3}
!163 = !{!"branch_weights", i32 0, i32 3}
!164 = !{!"VP", i32 0, i64 3, i64 1511568758528313371, i64 3}
!165 = !{!"branch_weights", i32 3, i32 0}
!166 = !{!"VP", i32 0, i64 10, i64 -8588976222160311642, i64 10}
!167 = !{!"branch_weights", i32 9, i32 1}
!168 = !{!"VP", i32 0, i64 1, i64 -6545883639298716711, i64 1}
!169 = !{!"VP", i32 0, i64 1, i64 -7320137552291488430, i64 1}
!170 = !{!"VP", i32 0, i64 9, i64 1511568758528313371, i64 9}
!171 = !{!"VP", i32 0, i64 9, i64 -3741132754318987830, i64 9}
!172 = !{!"branch_weights", i32 9, i32 0}
!173 = !{!"VP", i32 0, i64 22, i64 -3787866063119610107, i64 22}
!174 = !{!"function_entry_count", i64 0}
!175 = !{!"function_entry_count", i64 3}
!176 = !{!107, !107, i64 0}
!177 = !{!119, !107, i64 16}
!178 = !{!111, !111, i64 0}
!179 = !{!"branch_weights", i32 1257662, i32 631781}
!180 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!181 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!182 = !{!"function_entry_count", i64 2}
!183 = !{!"VP", i32 0, i64 2, i64 8179965290341647283, i64 2}
!184 = !{!"VP", i32 0, i64 2, i64 9115687764015882679, i64 2}
!185 = !{!"VP", i32 0, i64 2, i64 -3651535033184909239, i64 2}
!186 = !{!"branch_weights", i32 1, i32 127}
!187 = !{!"branch_weights", i32 0, i32 6}
!188 = !{!189, !192, i64 112}
!189 = !{!"_ZTS12ParamElement", !190, i64 0, !192, i64 112, !193, i64 116, !110, i64 120, !110, i64 152, !193, i64 184}
!190 = !{!"_ZTS10NEDElement", !111, i64 8, !110, i64 16, !191, i64 48, !107, i64 64, !107, i64 72, !107, i64 80, !107, i64 88, !107, i64 96, !107, i64 104}
!191 = !{!"_ZTS15NEDSourceRegion", !192, i64 0, !192, i64 4, !192, i64 8, !192, i64 12}
!192 = !{!"int", !108, i64 0}
!193 = !{!"bool", !108, i64 0}
!194 = !{!"branch_weights", i32 6, i32 0}
!195 = !{!189, !193, i64 116}
!196 = !{i8 0, i8 2}
!197 = !{}
!198 = !{!"VP", i32 0, i64 6, i64 -6975517344849243322, i64 6}
!199 = !{!"branch_weights", i32 127, i32 257}
!200 = distinct !{!200, !140, !141}
!201 = !{!"VP", i32 0, i64 2, i64 -4932963311304284387, i64 2}
!202 = !{!"branch_weights", i32 0, i32 4}
!203 = !{!204, !192, i64 144}
!204 = !{!"_ZTS11GateElement", !190, i64 0, !110, i64 112, !192, i64 144, !193, i64 148, !110, i64 152}
!205 = !{!"branch_weights", i32 4, i32 0}
!206 = !{!204, !193, i64 148}
!207 = !{!"VP", i32 0, i64 4, i64 -6536168371528631725, i64 4}
!208 = !{!"branch_weights", i32 127, i32 129}
!209 = distinct !{!209, !140, !141}
!210 = !{!"function_entry_count", i64 55}
!211 = !{!"branch_weights", i32 50, i32 5}
!212 = !{!"branch_weights", i32 4, i32 1}
!213 = !{!"branch_weights", i32 5, i32 0}
!214 = distinct !{!214, !140, !141}
!215 = !{!"branch_weights", i32 46, i32 9}
!216 = !{!"branch_weights", i32 0, i32 22}
!217 = !{!"branch_weights", i32 21, i32 1}
!218 = !{!"VP", i32 0, i64 1, i64 -5253373974924679276, i64 1}
!219 = !{!"branch_weights", i32 20, i32 2}
!220 = !{!"branch_weights", i32 17, i32 5}
!221 = !{!"function_entry_count", i64 9}
!222 = !{!"VP", i32 0, i64 9, i64 -1065058582944943345, i64 9}
!223 = !{!"function_entry_count", i64 31223}
!224 = !{!"function_entry_count", i64 175285}
!225 = !{!"function_entry_count", i64 23}
!226 = !{!"branch_weights", i32 22, i32 1}
!227 = !{!"VP", i32 0, i64 22, i64 9115687764015882679, i64 22}
!228 = !{!"VP", i32 0, i64 1, i64 -3787866063119610107, i64 1}
!229 = !{!"VP", i32 0, i64 1, i64 3741342232423672997, i64 1}
!230 = !{!"VP", i32 0, i64 1, i64 -3943398849679104532, i64 1}
!231 = distinct !{!231, !140, !141}
!232 = !{!"function_entry_count", i64 12}
!233 = !{!"VP", i32 0, i64 12, i64 8179965290341647283, i64 12}
!234 = !{!"branch_weights", i32 1, i32 143}
!235 = !{!"branch_weights", i32 191, i32 1}
!236 = !{!"branch_weights", i32 385, i32 191}
!237 = distinct !{!237, !140, !141}
!238 = !{!"branch_weights", i32 9, i32 3}
!239 = !{!"VP", i32 0, i64 9, i64 8373467545882279680, i64 9}
!240 = !{!"branch_weights", i32 143, i32 49}
!241 = !{!"VP", i32 0, i64 12, i64 -6642537441124721202, i64 12}
!242 = !{!243, !245, i64 32}
!243 = !{!"_ZTSSt8ios_base", !111, i64 8, !111, i64 16, !244, i64 24, !245, i64 28, !245, i64 32, !107, i64 40, !246, i64 48, !108, i64 64, !192, i64 192, !107, i64 200, !247, i64 208}
!244 = !{!"_ZTSSt13_Ios_Fmtflags", !108, i64 0}
!245 = !{!"_ZTSSt12_Ios_Iostate", !108, i64 0}
!246 = !{!"_ZTSNSt8ios_base6_WordsE", !107, i64 0, !111, i64 8}
!247 = !{!"_ZTSSt6locale", !107, i64 0}
!248 = distinct !{!248, !140, !141}
!249 = distinct !{!249, !140, !141}
!250 = !{!"function_entry_count", i64 246}
!251 = !{!"branch_weights", i32 246, i32 0}
!252 = distinct !{!252, !140, !141}
!253 = !{!"function_entry_count", i64 9768}
!254 = !{!"branch_weights", i32 0, i32 9768}
!255 = !{!"branch_weights", i32 9768, i32 0}
!256 = !{!"function_entry_count", i64 39186}
!257 = !{!"branch_weights", i32 5471, i32 33715}
!258 = !{!"function_entry_count", i64 6}
!259 = !{!"VP", i32 0, i64 6, i64 8601851698242260768, i64 6}
!260 = !{!"VP", i32 0, i64 6, i64 8912323326101647425, i64 6}
!261 = !{!"function_entry_count", i64 49001}
!262 = !{!"VP", i32 0, i64 49001, i64 8179965290341647283, i64 49001}
!263 = !{!"VP", i32 0, i64 49001, i64 9115687764015882679, i64 49001}
!264 = !{!"function_entry_count", i64 78370}
!265 = !{!"VP", i32 0, i64 78370, i64 8179965290341647283, i64 78370}
!266 = !{!"VP", i32 0, i64 78370, i64 9115687764015882679, i64 78370}
!267 = !{!"function_entry_count", i64 5471}
!268 = !{!"VP", i32 0, i64 5471, i64 8179965290341647283, i64 5471}
!269 = !{!"VP", i32 0, i64 5471, i64 9115687764015882679, i64 5471}
!270 = !{!"function_entry_count", i64 10942}
!271 = !{!"VP", i32 0, i64 10942, i64 8179965290341647283, i64 10942}
!272 = !{!"VP", i32 0, i64 10942, i64 9115687764015882679, i64 10942}
!273 = distinct !{!273, !140, !141}
!274 = distinct !{!274, !140, !141}
!275 = !{!"VP", i32 0, i64 6, i64 8179965290341647283, i64 6}
!276 = !{!"VP", i32 0, i64 6, i64 9115687764015882679, i64 6}
!277 = !{!"VP", i32 0, i64 6, i64 -3651535033184909239, i64 6}
!278 = !{!"branch_weights", i32 0, i32 12}
!279 = !{!"branch_weights", i32 6, i32 6}
!280 = distinct !{!280, !140, !141}
!281 = distinct !{!281, !140, !141}
!282 = !{!"function_entry_count", i64 4}
!283 = !{!"VP", i32 0, i64 4, i64 8179965290341647283, i64 4}
!284 = !{!"VP", i32 0, i64 4, i64 9115687764015882679, i64 4}
!285 = !{!"VP", i32 0, i64 4, i64 -4932963311304284387, i64 4}
!286 = !{!"branch_weights", i32 4, i32 2}
!287 = !{!"VP", i32 0, i64 2, i64 -6536168371528631725, i64 2}
!288 = distinct !{!288, !140, !141}
!289 = distinct !{!289, !140, !141}
!290 = !{!"function_entry_count", i64 1}
!291 = !{!"VP", i32 0, i64 1, i64 9115687764015882679, i64 1}
!292 = distinct !{!292, !140, !141}
!293 = distinct !{!293, !140, !141}
!294 = !{!"VP", i32 0, i64 1, i64 -3651535033184909239, i64 1}
!295 = !{!189, !193, i64 184}
!296 = !{!"VP", i32 0, i64 1, i64 -2722596082469949934, i64 1}
!297 = !{!"VP", i32 0, i64 1, i64 -962419862201197668, i64 1}
!298 = !{!"VP", i32 0, i64 1, i64 3287972012782290276, i64 1}
!299 = !{!"VP", i32 0, i64 1, i64 -6975517344849243322, i64 1}
!300 = !{!"branch_weights", i32 127, i32 1}
!301 = distinct !{!301, !140, !141}
!302 = distinct !{!302, !140, !141}
!303 = distinct !{!303, !140, !141}
!304 = distinct !{!304, !140, !141}
!305 = distinct !{!305, !140, !141}
!306 = !{!307, !193, i64 112}
!307 = !{!"_ZTS18ConnectionsElement", !190, i64 0, !193, i64 112}
!308 = distinct !{!308, !140, !141}
!309 = distinct !{!309, !140, !141}
!310 = distinct !{!310, !140, !141}
!311 = distinct !{!311, !140, !141}
!312 = !{!313, !192, i64 112}
!313 = !{!"_ZTS14LiteralElement", !190, i64 0, !192, i64 112, !110, i64 120, !110, i64 152, !110, i64 184}
!314 = distinct !{!314, !140, !141}
!315 = distinct !{!315, !140, !141}
!316 = !{!"function_entry_count", i64 43}
!317 = !{!"function_entry_count", i64 89378}
!318 = !{!"function_entry_count", i64 14}
!319 = !{!320, !107, i64 0}
!320 = !{!"_ZTSNSt12_Vector_baseIN13NEDErrorStore5EntryESaIS1_EE17_Vector_impl_dataE", !107, i64 0, !107, i64 8, !107, i64 16}
!321 = !{!320, !107, i64 8}
!322 = distinct !{!322, !140, !141}
!323 = !{!"branch_weights", i32 14, i32 0}
!324 = !{!"function_entry_count", i64 1889434}
!325 = !{!"VP", i32 1, i64 1856863, i64 17, i64 729444, i64 16, i64 433786, i64 9, i64 266579, i64 8, i64 130021}
!326 = !{!327}
!327 = distinct !{!327, !328, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!328 = distinct !{!328, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!329 = !{!330}
!330 = distinct !{!330, !328, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!331 = !{!327, !330}
!332 = distinct !{!332, !140, !141}
!333 = !{!334}
!334 = distinct !{!334, !335, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!335 = distinct !{!335, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!336 = !{!337}
!337 = distinct !{!337, !335, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!338 = !{!334, !337}
!339 = !{!"function_entry_count", i64 1974042}
!340 = !{!"branch_weights", i32 1399683, i32 574359}
!341 = !{!"branch_weights", i32 1590758, i32 96, i32 383188}
!342 = !{!"VP", i32 1, i64 1590758, i64 17, i64 829384, i64 32, i64 307024, i64 33, i64 262262, i64 8, i64 98100}
!343 = !{!"branch_weights", i32 0, i32 1139}
!344 = !{!"function_entry_count", i64 1136}
!345 = !{!"branch_weights", i32 0, i32 1136}
!346 = !{!"branch_weights", i32 1130, i32 6}
!347 = !{!"VP", i32 1, i64 1130, i64 9, i64 506, i64 5, i64 264, i64 4, i64 98, i64 6, i64 97}
!348 = !{!"branch_weights", i32 1, i32 1135}
!349 = !{!350}
!350 = distinct !{!350, !351, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!351 = distinct !{!351, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!352 = !{!353}
!353 = distinct !{!353, !351, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!354 = !{!"branch_weights", i32 1581, i32 3}
!355 = !{!"VP", i32 1, i64 1581, i64 9, i64 730, i64 5, i64 677, i64 6, i64 91, i64 7, i64 78}
!356 = !{!350, !353}
!357 = !{!"branch_weights", i32 1135, i32 449}
!358 = !{!359}
!359 = distinct !{!359, !360, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!360 = distinct !{!360, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!361 = !{!362}
!362 = distinct !{!362, !360, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!363 = !{!359, !362}
!364 = !{!"branch_weights", i32 555, i32 581}
!365 = !{!"simulator/nedtypeinfo.cc;_GLOBAL__sub_I_nedtypeinfo.cc"}
