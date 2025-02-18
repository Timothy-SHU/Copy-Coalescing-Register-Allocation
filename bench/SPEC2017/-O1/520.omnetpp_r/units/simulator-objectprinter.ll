; ModuleID = 'simulator/objectprinter.cc'
source_filename = "simulator/objectprinter.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl" }
%"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl" = type { %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.StringTokenizer = type { ptr, ptr, %"class.std::__cxx11::basic_string" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.8" = type { %"struct.std::_Vector_base.9" }
%"struct.std::_Vector_base.9" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.ObjectPrinter = type { i32, [1024 x i8], %"class.std::vector", %"class.std::vector.0" }
%class.MatchExpression = type { i8, i8, i8, %"class.std::vector.13" }
%"class.std::vector.13" = type { %"struct.std::_Vector_base.14" }
%"struct.std::_Vector_base.14" = type { %"struct.std::_Vector_base<MatchExpression::Elem, std::allocator<MatchExpression::Elem>>::_Vector_impl" }
%"struct.std::_Vector_base<MatchExpression::Elem, std::allocator<MatchExpression::Elem>>::_Vector_impl" = type { %"struct.std::_Vector_base<MatchExpression::Elem, std::allocator<MatchExpression::Elem>>::_Vector_impl_data" }
%"struct.std::_Vector_base<MatchExpression::Elem, std::allocator<MatchExpression::Elem>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.MatchExpression::Elem" = type { i32, %"class.std::__cxx11::basic_string", ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%class.cArray = type { %class.cOwnedObject.base, ptr, i32, i32, i32, i32 }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { ptr, i64 }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%class.MatchableObjectAdapter = type { %"class.MatchExpression::Matchable", i32, ptr, ptr, %"class.std::__cxx11::basic_string" }
%"class.MatchExpression::Matchable" = type { ptr }
%class.MatchableFieldAdapter = type <{ %"class.MatchExpression::Matchable", ptr, ptr, i32, [4 x i8] }>

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE9push_backERKS3_ = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EEaSERKS3_ = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEaSERKS5_ = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorIP15MatchExpressionE8allocateEmPKv = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_ = comdat any

$_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2ERKS3_ = comdat any

$_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE8allocateEmPKv = comdat any

$_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_ = comdat any

$_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_ = comdat any

$_ZSt16__do_uninit_copyIPSt6vectorIP15MatchExpressionSaIS2_EES5_ET0_T_S7_S6_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" {\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"{...}\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"<NULL>\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"owner\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"className\00", align 1
@_ZTI7cObject = external constant ptr
@_ZTI6cArray = external constant ptr
@_ZTI7cModule = external constant ptr
@_ZTI5cGate = external constant ptr
@_ZTV22MatchableObjectAdapter = external unnamed_addr constant { [6 x ptr] }, align 8
@.str.18 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_objectprinter.cc, ptr null }]

@_ZN13ObjectPrinterC1EPKci = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN13ObjectPrinterC2EPKci
@_ZN13ObjectPrinterC1ERKSt6vectorIP15MatchExpressionSaIS2_EERKS0_IS4_SaIS4_EEi = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32), ptr @_ZN13ObjectPrinterC2ERKSt6vectorIP15MatchExpressionSaIS2_EERKS0_IS4_SaIS4_EEi
@_ZN13ObjectPrinterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13ObjectPrinterD2Ev

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ObjectPrinterC2EPKci(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca %"class.std::vector", align 8
  %5 = alloca %"class.std::vector.0", align 8
  %6 = alloca %class.StringTokenizer, align 8
  %7 = alloca %"class.std::vector.8", align 8
  %8 = alloca %class.StringTokenizer, align 8
  %9 = alloca %"class.std::vector.8", align 8
  %10 = alloca %"class.std::vector", align 8
  %11 = alloca ptr, align 8
  %12 = alloca %"class.std::vector", align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %15, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %17 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %4, i64 0, i32 1
  %18 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %4, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %19 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #18
  invoke void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1, ptr noundef nonnull @.str)
          to label %20 unwind label %41

20:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  invoke void @_ZN15StringTokenizer8asVectorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %7, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %21 unwind label %43

21:                                               ; preds = %20
  %22 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = load ptr, ptr %7, align 8, !tbaa !44
  %25 = ptrtoint ptr %23 to i64
  %26 = ptrtoint ptr %24 to i64
  %27 = sub i64 %25, %26
  %28 = lshr exact i64 %27, 5
  %29 = trunc i64 %28 to i32
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %10, i64 0, i32 1
  %33 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %10, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %9, i64 0, i32 1
  %35 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %9, i64 0, i32 1
  %36 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %12, i64 0, i32 1
  %37 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %12, i64 0, i32 2
  br label %45

38:                                               ; preds = %218, %21
  %39 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  %40 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %237 unwind label %281

41:                                               ; preds = %3
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %308

43:                                               ; preds = %20
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %306

45:                                               ; preds = %31, %218
  %46 = phi i64 [ 0, %31 ], [ %219, %218 ]
  %47 = phi ptr [ %24, %31 ], [ %221, %218 ]
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %47, i64 %46
  %49 = load ptr, ptr %48, align 8, !tbaa !45
  %50 = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %49, i32 noundef 58) #19
  %51 = icmp eq ptr %50, null
  br i1 %51, label %171, label %52

52:                                               ; preds = %45
  store i8 0, ptr %50, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #18
  %53 = getelementptr inbounds i8, ptr %50, i64 1
  invoke void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull %53, ptr noundef nonnull @.str.1)
          to label %54 unwind label %65

54:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  invoke void @_ZN15StringTokenizer8asVectorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.8") align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %55 unwind label %68

55:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %56 = load ptr, ptr %34, align 8, !tbaa !39
  %57 = load ptr, ptr %9, align 8, !tbaa !44
  %58 = ptrtoint ptr %56 to i64
  %59 = ptrtoint ptr %57 to i64
  %60 = sub i64 %58, %59
  %61 = lshr exact i64 %60, 5
  %62 = trunc i64 %61 to i32
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %86, %55
  invoke void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %10)
          to label %108 unwind label %134

65:                                               ; preds = %52
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  br label %168

68:                                               ; preds = %54
  %69 = landingpad { ptr, i32 }
          cleanup
  %70 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  br label %165

71:                                               ; preds = %55, %86
  %72 = phi i64 [ %87, %86 ], [ 0, %55 ]
  %73 = phi ptr [ %89, %86 ], [ %57, %55 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  %74 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20
          to label %75 unwind label %96

75:                                               ; preds = %71
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 %72
  %77 = load ptr, ptr %76, align 8, !tbaa !45
  invoke void @_ZN15MatchExpressionC1EPKcbbb(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef %77, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %78 unwind label %100

78:                                               ; preds = %75
  store ptr %74, ptr %11, align 8, !tbaa !50
  %79 = load ptr, ptr %32, align 8, !tbaa !50
  %80 = load ptr, ptr %33, align 8, !tbaa !51
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %78
  store ptr %74, ptr %79, align 8, !tbaa !50
  %83 = load ptr, ptr %32, align 8, !tbaa !53
  %84 = getelementptr inbounds ptr, ptr %83, i64 1
  store ptr %84, ptr %32, align 8, !tbaa !53
  br label %86

85:                                               ; preds = %78
  invoke void @_ZNSt6vectorIP15MatchExpressionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %79, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %86 unwind label %96

86:                                               ; preds = %82, %85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  %87 = add nuw nsw i64 %72, 1
  %88 = load ptr, ptr %34, align 8, !tbaa !39
  %89 = load ptr, ptr %9, align 8, !tbaa !44
  %90 = ptrtoint ptr %88 to i64
  %91 = ptrtoint ptr %89 to i64
  %92 = sub i64 %90, %91
  %93 = shl i64 %92, 27
  %94 = ashr i64 %93, 32
  %95 = icmp slt i64 %87, %94
  br i1 %95, label %71, label %64, !llvm.loop !54

96:                                               ; preds = %85, %71
  %97 = landingpad { ptr, i32 }
          cleanup
  %98 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  %99 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %9, i64 0, i32 1
  br label %104

100:                                              ; preds = %75
  %101 = landingpad { ptr, i32 }
          cleanup
  %102 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  %103 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %9, i64 0, i32 1
  call void @_ZdlPv(ptr noundef %74) #21
  br label %104

104:                                              ; preds = %100, %96
  %105 = phi ptr [ %98, %96 ], [ %102, %100 ]
  %106 = phi ptr [ %99, %96 ], [ %103, %100 ]
  %107 = phi { ptr, i32 } [ %97, %96 ], [ %101, %100 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br label %137

108:                                              ; preds = %64
  %109 = load ptr, ptr %10, align 8, !tbaa !57
  %110 = icmp eq ptr %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  call void @_ZdlPv(ptr noundef %109) #21
  br label %112

112:                                              ; preds = %108, %111
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18
  %113 = load ptr, ptr %9, align 8, !tbaa !44
  %114 = load ptr, ptr %35, align 8, !tbaa !39
  %115 = icmp eq ptr %113, %114
  br i1 %115, label %129, label %116

116:                                              ; preds = %112, %126
  %117 = phi ptr [ %127, %126 ], [ %113, %112 ]
  %118 = load ptr, ptr %117, align 8, !tbaa !45
  %119 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %117, i64 0, i32 2
  %120 = icmp eq ptr %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %117, i64 0, i32 1
  %123 = load i64, ptr %122, align 8, !tbaa !58
  %124 = icmp ult i64 %123, 16
  call void @llvm.assume(i1 %124)
  br label %126

125:                                              ; preds = %116
  call void @_ZdlPv(ptr noundef %118) #21
  br label %126

126:                                              ; preds = %125, %121
  %127 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %117, i64 1
  %128 = icmp eq ptr %127, %114
  br i1 %128, label %129, label %116, !llvm.loop !59

129:                                              ; preds = %126, %112
  %130 = load ptr, ptr %9, align 8, !tbaa !44
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  call void @_ZdlPv(ptr noundef %130) #21
  br label %133

133:                                              ; preds = %129, %132
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #18
  br label %207

134:                                              ; preds = %64
  %135 = landingpad { ptr, i32 }
          cleanup
  %136 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  br label %137

137:                                              ; preds = %134, %104
  %138 = phi ptr [ %105, %104 ], [ %136, %134 ]
  %139 = phi ptr [ %106, %104 ], [ %35, %134 ]
  %140 = phi { ptr, i32 } [ %107, %104 ], [ %135, %134 ]
  %141 = load ptr, ptr %10, align 8, !tbaa !57
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %137
  call void @_ZdlPv(ptr noundef %141) #21
  br label %144

144:                                              ; preds = %137, %143
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18
  %145 = load ptr, ptr %9, align 8, !tbaa !44
  %146 = load ptr, ptr %139, align 8, !tbaa !39
  %147 = icmp eq ptr %145, %146
  br i1 %147, label %161, label %148

148:                                              ; preds = %144, %158
  %149 = phi ptr [ %159, %158 ], [ %145, %144 ]
  %150 = load ptr, ptr %149, align 8, !tbaa !45
  %151 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %149, i64 0, i32 2
  %152 = icmp eq ptr %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %149, i64 0, i32 1
  %155 = load i64, ptr %154, align 8, !tbaa !58
  %156 = icmp ult i64 %155, 16
  call void @llvm.assume(i1 %156)
  br label %158

157:                                              ; preds = %148
  call void @_ZdlPv(ptr noundef %150) #21
  br label %158

158:                                              ; preds = %157, %153
  %159 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %149, i64 1
  %160 = icmp eq ptr %159, %146
  br i1 %160, label %161, label %148, !llvm.loop !59

161:                                              ; preds = %158, %144
  %162 = load ptr, ptr %9, align 8, !tbaa !44
  %163 = icmp eq ptr %162, null
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  call void @_ZdlPv(ptr noundef %162) #21
  br label %165

165:                                              ; preds = %164, %161, %68
  %166 = phi ptr [ %70, %68 ], [ %138, %161 ], [ %138, %164 ]
  %167 = phi { ptr, i32 } [ %69, %68 ], [ %140, %161 ], [ %140, %164 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #18
  br label %168

168:                                              ; preds = %165, %65
  %169 = phi ptr [ %166, %165 ], [ %67, %65 ]
  %170 = phi { ptr, i32 } [ %167, %165 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #18
  br label %283

171:                                              ; preds = %45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  %172 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20
          to label %173 unwind label %188

173:                                              ; preds = %171
  invoke void @_ZN15MatchExpressionC1EPKcbbb(ptr noundef nonnull align 8 dereferenceable(32) %172, ptr noundef nonnull @.str.2, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %174 unwind label %191

174:                                              ; preds = %173
  store ptr %172, ptr %13, align 8, !tbaa !50
  %175 = load ptr, ptr %36, align 8, !tbaa !50
  %176 = load ptr, ptr %37, align 8, !tbaa !51
  %177 = icmp eq ptr %175, %176
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  store ptr %172, ptr %175, align 8, !tbaa !50
  %179 = load ptr, ptr %36, align 8, !tbaa !53
  %180 = getelementptr inbounds ptr, ptr %179, i64 1
  store ptr %180, ptr %36, align 8, !tbaa !53
  br label %182

181:                                              ; preds = %174
  invoke void @_ZNSt6vectorIP15MatchExpressionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %175, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %182 unwind label %188

182:                                              ; preds = %178, %181
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  invoke void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %183 unwind label %197

183:                                              ; preds = %182
  %184 = load ptr, ptr %12, align 8, !tbaa !57
  %185 = icmp eq ptr %184, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %183
  call void @_ZdlPv(ptr noundef %184) #21
  br label %187

187:                                              ; preds = %183, %186
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #18
  br label %207

188:                                              ; preds = %181, %171
  %189 = landingpad { ptr, i32 }
          cleanup
  %190 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  br label %194

191:                                              ; preds = %173
  %192 = landingpad { ptr, i32 }
          cleanup
  %193 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  call void @_ZdlPv(ptr noundef %172) #21
  br label %194

194:                                              ; preds = %191, %188
  %195 = phi ptr [ %190, %188 ], [ %193, %191 ]
  %196 = phi { ptr, i32 } [ %189, %188 ], [ %192, %191 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  br label %200

197:                                              ; preds = %182
  %198 = landingpad { ptr, i32 }
          cleanup
  %199 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  br label %200

200:                                              ; preds = %197, %194
  %201 = phi ptr [ %199, %197 ], [ %195, %194 ]
  %202 = phi { ptr, i32 } [ %198, %197 ], [ %196, %194 ]
  %203 = load ptr, ptr %12, align 8, !tbaa !57
  %204 = icmp eq ptr %203, null
  br i1 %204, label %206, label %205

205:                                              ; preds = %200
  call void @_ZdlPv(ptr noundef %203) #21
  br label %206

206:                                              ; preds = %200, %205
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #18
  br label %283

207:                                              ; preds = %187, %133
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #18
  %208 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #20
          to label %209 unwind label %228

209:                                              ; preds = %207
  invoke void @_ZN15MatchExpressionC1EPKcbbb(ptr noundef nonnull align 8 dereferenceable(32) %208, ptr noundef %49, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %210 unwind label %231

210:                                              ; preds = %209
  store ptr %208, ptr %14, align 8, !tbaa !50
  %211 = load ptr, ptr %17, align 8, !tbaa !50
  %212 = load ptr, ptr %18, align 8, !tbaa !51
  %213 = icmp eq ptr %211, %212
  br i1 %213, label %217, label %214

214:                                              ; preds = %210
  store ptr %208, ptr %211, align 8, !tbaa !50
  %215 = load ptr, ptr %17, align 8, !tbaa !53
  %216 = getelementptr inbounds ptr, ptr %215, i64 1
  store ptr %216, ptr %17, align 8, !tbaa !53
  br label %218

217:                                              ; preds = %210
  invoke void @_ZNSt6vectorIP15MatchExpressionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %211, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %218 unwind label %228

218:                                              ; preds = %214, %217
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  %219 = add nuw nsw i64 %46, 1
  %220 = load ptr, ptr %22, align 8, !tbaa !39
  %221 = load ptr, ptr %7, align 8, !tbaa !44
  %222 = ptrtoint ptr %220 to i64
  %223 = ptrtoint ptr %221 to i64
  %224 = sub i64 %222, %223
  %225 = shl i64 %224, 27
  %226 = ashr i64 %225, 32
  %227 = icmp slt i64 %219, %226
  br i1 %227, label %45, label %38, !llvm.loop !60

228:                                              ; preds = %217, %207
  %229 = landingpad { ptr, i32 }
          cleanup
  %230 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  br label %234

231:                                              ; preds = %209
  %232 = landingpad { ptr, i32 }
          cleanup
  %233 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %7, i64 0, i32 1
  call void @_ZdlPv(ptr noundef %208) #21
  br label %234

234:                                              ; preds = %231, %228
  %235 = phi ptr [ %230, %228 ], [ %233, %231 ]
  %236 = phi { ptr, i32 } [ %229, %228 ], [ %232, %231 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #18
  br label %283

237:                                              ; preds = %38
  %238 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %239 unwind label %281

239:                                              ; preds = %237
  store i32 %2, ptr %0, align 8, !tbaa !61
  %240 = load ptr, ptr %7, align 8, !tbaa !44
  %241 = load ptr, ptr %39, align 8, !tbaa !39
  %242 = icmp eq ptr %240, %241
  br i1 %242, label %256, label %243

243:                                              ; preds = %239, %253
  %244 = phi ptr [ %254, %253 ], [ %240, %239 ]
  %245 = load ptr, ptr %244, align 8, !tbaa !45
  %246 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %244, i64 0, i32 2
  %247 = icmp eq ptr %245, %246
  br i1 %247, label %248, label %252

248:                                              ; preds = %243
  %249 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %244, i64 0, i32 1
  %250 = load i64, ptr %249, align 8, !tbaa !58
  %251 = icmp ult i64 %250, 16
  call void @llvm.assume(i1 %251)
  br label %253

252:                                              ; preds = %243
  call void @_ZdlPv(ptr noundef %245) #21
  br label %253

253:                                              ; preds = %252, %248
  %254 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %244, i64 1
  %255 = icmp eq ptr %254, %241
  br i1 %255, label %256, label %243, !llvm.loop !59

256:                                              ; preds = %253, %239
  %257 = load ptr, ptr %7, align 8, !tbaa !44
  %258 = icmp eq ptr %257, null
  br i1 %258, label %260, label %259

259:                                              ; preds = %256
  call void @_ZdlPv(ptr noundef %257) #21
  br label %260

260:                                              ; preds = %256, %259
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #18
  %261 = load ptr, ptr %5, align 8, !tbaa !71
  %262 = load ptr, ptr %19, align 8, !tbaa !72
  %263 = icmp eq ptr %261, %262
  br i1 %263, label %272, label %264

264:                                              ; preds = %260, %269
  %265 = phi ptr [ %270, %269 ], [ %261, %260 ]
  %266 = load ptr, ptr %265, align 8, !tbaa !57
  %267 = icmp eq ptr %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %264
  call void @_ZdlPv(ptr noundef %266) #21
  br label %269

269:                                              ; preds = %268, %264
  %270 = getelementptr inbounds %"class.std::vector", ptr %265, i64 1
  %271 = icmp eq ptr %270, %262
  br i1 %271, label %272, label %264, !llvm.loop !73

272:                                              ; preds = %269, %260
  %273 = load ptr, ptr %5, align 8, !tbaa !71
  %274 = icmp eq ptr %273, null
  br i1 %274, label %276, label %275

275:                                              ; preds = %272
  call void @_ZdlPv(ptr noundef %273) #21
  br label %276

276:                                              ; preds = %272, %275
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %277 = load ptr, ptr %4, align 8, !tbaa !57
  %278 = icmp eq ptr %277, null
  br i1 %278, label %280, label %279

279:                                              ; preds = %276
  call void @_ZdlPv(ptr noundef %277) #21
  br label %280

280:                                              ; preds = %276, %279
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret void

281:                                              ; preds = %237, %38
  %282 = landingpad { ptr, i32 }
          cleanup
  br label %283

283:                                              ; preds = %168, %206, %234, %281
  %284 = phi ptr [ %39, %281 ], [ %169, %168 ], [ %235, %234 ], [ %201, %206 ]
  %285 = phi { ptr, i32 } [ %282, %281 ], [ %170, %168 ], [ %236, %234 ], [ %202, %206 ]
  %286 = load ptr, ptr %7, align 8, !tbaa !44
  %287 = load ptr, ptr %284, align 8, !tbaa !39
  %288 = icmp eq ptr %286, %287
  br i1 %288, label %302, label %289

289:                                              ; preds = %283, %299
  %290 = phi ptr [ %300, %299 ], [ %286, %283 ]
  %291 = load ptr, ptr %290, align 8, !tbaa !45
  %292 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %290, i64 0, i32 2
  %293 = icmp eq ptr %291, %292
  br i1 %293, label %294, label %298

294:                                              ; preds = %289
  %295 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %290, i64 0, i32 1
  %296 = load i64, ptr %295, align 8, !tbaa !58
  %297 = icmp ult i64 %296, 16
  call void @llvm.assume(i1 %297)
  br label %299

298:                                              ; preds = %289
  call void @_ZdlPv(ptr noundef %291) #21
  br label %299

299:                                              ; preds = %298, %294
  %300 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %290, i64 1
  %301 = icmp eq ptr %300, %287
  br i1 %301, label %302, label %289, !llvm.loop !59

302:                                              ; preds = %299, %283
  %303 = load ptr, ptr %7, align 8, !tbaa !44
  %304 = icmp eq ptr %303, null
  br i1 %304, label %306, label %305

305:                                              ; preds = %302
  call void @_ZdlPv(ptr noundef %303) #21
  br label %306

306:                                              ; preds = %305, %302, %43
  %307 = phi { ptr, i32 } [ %44, %43 ], [ %285, %302 ], [ %285, %305 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #18
  br label %308

308:                                              ; preds = %306, %41
  %309 = phi { ptr, i32 } [ %307, %306 ], [ %42, %41 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #18
  %310 = load ptr, ptr %5, align 8, !tbaa !71
  %311 = load ptr, ptr %19, align 8, !tbaa !72
  %312 = icmp eq ptr %310, %311
  br i1 %312, label %321, label %313

313:                                              ; preds = %308, %318
  %314 = phi ptr [ %319, %318 ], [ %310, %308 ]
  %315 = load ptr, ptr %314, align 8, !tbaa !57
  %316 = icmp eq ptr %315, null
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  call void @_ZdlPv(ptr noundef %315) #21
  br label %318

318:                                              ; preds = %317, %313
  %319 = getelementptr inbounds %"class.std::vector", ptr %314, i64 1
  %320 = icmp eq ptr %319, %311
  br i1 %320, label %321, label %313, !llvm.loop !73

321:                                              ; preds = %318, %308
  %322 = load ptr, ptr %5, align 8, !tbaa !71
  %323 = icmp eq ptr %322, null
  br i1 %323, label %325, label %324

324:                                              ; preds = %321
  call void @_ZdlPv(ptr noundef %322) #21
  br label %325

325:                                              ; preds = %321, %324
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %326 = load ptr, ptr %4, align 8, !tbaa !57
  %327 = icmp eq ptr %326, null
  br i1 %327, label %329, label %328

328:                                              ; preds = %325
  call void @_ZdlPv(ptr noundef %326) #21
  br label %329

329:                                              ; preds = %325, %328
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #18
  %330 = load ptr, ptr %15, align 8, !tbaa !57
  %331 = icmp eq ptr %330, null
  br i1 %331, label %333, label %332

332:                                              ; preds = %329
  call void @_ZdlPv(ptr noundef %330) #21
  br label %333

333:                                              ; preds = %329, %332
  resume { ptr, i32 } %309
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @_ZN15StringTokenizer8asVectorB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::vector.8") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

declare void @_ZN15MatchExpressionC1EPKcbbb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 !prof !38 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  tail call void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %9 = load ptr, ptr %3, align 8, !tbaa !72
  %10 = getelementptr inbounds %"class.std::vector", ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !72
  br label %12

11:                                               ; preds = %2
  tail call void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %59, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = load ptr, ptr %1, align 8, !tbaa !50
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = load ptr, ptr %0, align 8, !tbaa !50
  %14 = ptrtoint ptr %12 to i64
  %15 = ptrtoint ptr %13 to i64
  %16 = sub i64 %14, %15
  %17 = icmp ugt i64 %10, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %4
  %19 = ashr exact i64 %10, 3
  %20 = tail call noundef ptr @_ZNSt15__new_allocatorIP15MatchExpressionE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %19, ptr noundef null)
  %21 = icmp eq ptr %6, %7
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %20, ptr align 8 %7, i64 %10, i1 false)
  br label %23

23:                                               ; preds = %18, %22
  %24 = load ptr, ptr %0, align 8, !tbaa !57
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %24) #21
  br label %27

27:                                               ; preds = %23, %26
  store ptr %20, ptr %0, align 8, !tbaa !57
  %28 = getelementptr inbounds i8, ptr %20, i64 %10
  store ptr %28, ptr %11, align 8, !tbaa !51
  br label %55

29:                                               ; preds = %4
  %30 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %32, %15
  %34 = icmp ult i64 %33, %10
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = icmp eq ptr %6, %7
  br i1 %36, label %55, label %37

37:                                               ; preds = %35
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %7, i64 %10, i1 false)
  br label %55

38:                                               ; preds = %29
  %39 = icmp eq ptr %31, %13
  br i1 %39, label %41, label %40

40:                                               ; preds = %38
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %13, ptr align 8 %7, i64 %33, i1 false)
  br label %41

41:                                               ; preds = %38, %40
  %42 = load ptr, ptr %1, align 8, !tbaa !57
  %43 = load ptr, ptr %30, align 8, !tbaa !53
  %44 = load ptr, ptr %0, align 8, !tbaa !57
  %45 = ptrtoint ptr %43 to i64
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %45, %46
  %48 = getelementptr inbounds i8, ptr %42, i64 %47
  %49 = load ptr, ptr %5, align 8, !tbaa !53
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = ptrtoint ptr %49 to i64
  %53 = ptrtoint ptr %48 to i64
  %54 = sub i64 %52, %53
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %43, ptr align 8 %48, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %51, %41, %37, %35, %27
  %56 = load ptr, ptr %0, align 8, !tbaa !57
  %57 = getelementptr inbounds i8, ptr %56, i64 %10
  %58 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !53
  br label %59

59:                                               ; preds = %55, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %99, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !50
  %7 = load ptr, ptr %1, align 8, !tbaa !50
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = sdiv exact i64 %10, 24
  %12 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = load ptr, ptr %0, align 8, !tbaa !50
  %15 = ptrtoint ptr %13 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp ugt i64 %10, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %4
  %20 = tail call noundef ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %11, ptr %7, ptr %6)
  %21 = load ptr, ptr %0, align 8, !tbaa !71
  %22 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %19, %30
  %26 = phi ptr [ %31, %30 ], [ %21, %19 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %27) #21
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %"class.std::vector", ptr %26, i64 1
  %32 = icmp eq ptr %31, %23
  br i1 %32, label %33, label %25, !llvm.loop !73

33:                                               ; preds = %30, %19
  %34 = load ptr, ptr %0, align 8, !tbaa !71
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @_ZdlPv(ptr noundef %34) #21
  br label %37

37:                                               ; preds = %33, %36
  store ptr %20, ptr %0, align 8, !tbaa !71
  %38 = getelementptr inbounds i8, ptr %20, i64 %10
  store ptr %38, ptr %12, align 8, !tbaa !74
  br label %95

39:                                               ; preds = %4
  %40 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !72
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %42, %16
  %44 = icmp ult i64 %43, %10
  br i1 %44, label %72, label %45

45:                                               ; preds = %39
  %46 = icmp sgt i64 %10, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %45, %47
  %48 = phi i64 [ %54, %47 ], [ %11, %45 ]
  %49 = phi ptr [ %53, %47 ], [ %14, %45 ]
  %50 = phi ptr [ %52, %47 ], [ %7, %45 ]
  %51 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr noundef nonnull align 8 dereferenceable(24) %50)
  %52 = getelementptr inbounds %"class.std::vector", ptr %50, i64 1
  %53 = getelementptr inbounds %"class.std::vector", ptr %49, i64 1
  %54 = add nsw i64 %48, -1
  %55 = icmp sgt i64 %48, 1
  br i1 %55, label %47, label %56, !llvm.loop !75

56:                                               ; preds = %47, %45
  %57 = phi ptr [ %14, %45 ], [ %53, %47 ]
  %58 = load ptr, ptr %40, align 8, !tbaa !50
  %59 = icmp eq ptr %57, %58
  br i1 %59, label %95, label %60

60:                                               ; preds = %56
  %61 = ptrtoint ptr %57 to i64
  %62 = sub i64 %61, %16
  %63 = getelementptr inbounds i8, ptr %14, i64 %62
  br label %64

64:                                               ; preds = %60, %69
  %65 = phi ptr [ %70, %69 ], [ %63, %60 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !57
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void @_ZdlPv(ptr noundef %66) #21
  br label %69

69:                                               ; preds = %68, %64
  %70 = getelementptr inbounds %"class.std::vector", ptr %65, i64 1
  %71 = icmp eq ptr %70, %58
  br i1 %71, label %95, label %64, !llvm.loop !76

72:                                               ; preds = %39
  %73 = icmp sgt i64 %43, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %72
  %75 = udiv exact i64 %43, 24
  br label %76

76:                                               ; preds = %74, %76
  %77 = phi i64 [ %83, %76 ], [ %75, %74 ]
  %78 = phi ptr [ %82, %76 ], [ %14, %74 ]
  %79 = phi ptr [ %81, %76 ], [ %7, %74 ]
  %80 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %78, ptr noundef nonnull align 8 dereferenceable(24) %79)
  %81 = getelementptr inbounds %"class.std::vector", ptr %79, i64 1
  %82 = getelementptr inbounds %"class.std::vector", ptr %78, i64 1
  %83 = add nsw i64 %77, -1
  %84 = icmp sgt i64 %77, 1
  br i1 %84, label %76, label %85, !llvm.loop !77

85:                                               ; preds = %76, %72
  %86 = load ptr, ptr %1, align 8, !tbaa !71
  %87 = load ptr, ptr %40, align 8, !tbaa !72
  %88 = load ptr, ptr %0, align 8, !tbaa !71
  %89 = ptrtoint ptr %87 to i64
  %90 = ptrtoint ptr %88 to i64
  %91 = sub i64 %89, %90
  %92 = getelementptr inbounds i8, ptr %86, i64 %91
  %93 = load ptr, ptr %5, align 8, !tbaa !72
  %94 = tail call noundef ptr @_ZSt16__do_uninit_copyIPSt6vectorIP15MatchExpressionSaIS2_EES5_ET0_T_S7_S6_(ptr noundef %92, ptr noundef %93, ptr noundef %87)
  br label %95

95:                                               ; preds = %69, %56, %85, %37
  %96 = load ptr, ptr %0, align 8, !tbaa !71
  %97 = getelementptr inbounds i8, ptr %96, i64 %10
  %98 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %97, ptr %98, align 8, !tbaa !72
  br label %99

99:                                               ; preds = %95, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %1, %11
  %7 = phi ptr [ %12, %11 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %8) #21
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.std::vector", ptr %7, i64 1
  %13 = icmp eq ptr %12, %4
  br i1 %13, label %14, label %6, !llvm.loop !73

14:                                               ; preds = %11, %1
  %15 = load ptr, ptr %0, align 8, !tbaa !71
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @_ZdlPv(ptr noundef %15) #21
  br label %18

18:                                               ; preds = %14, %17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ObjectPrinterC2ERKSt6vectorIP15MatchExpressionSaIS2_EERKS0_IS4_SaIS4_EEi(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, i8 0, i64 48, i1 false)
  %7 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIP15MatchExpressionSaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %8 unwind label %11

8:                                                ; preds = %4
  %9 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %10 unwind label %11

10:                                               ; preds = %8
  store i32 %3, ptr %0, align 8, !tbaa !61
  ret void

11:                                               ; preds = %8, %4
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #18
  %13 = load ptr, ptr %5, align 8, !tbaa !57
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #21
  br label %16

16:                                               ; preds = %11, %15
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN13ObjectPrinterD2Ev(ptr noundef nonnull align 8 dereferenceable(1080) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load ptr, ptr %2, align 8, !tbaa !57
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 3
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 3
  br label %21

14:                                               ; preds = %54, %1
  %15 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 2
  %16 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 3
  tail call void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #18
  %17 = load ptr, ptr %15, align 8, !tbaa !57
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  tail call void @_ZdlPv(ptr noundef %17) #21
  br label %20

20:                                               ; preds = %14, %19
  ret void

21:                                               ; preds = %12, %54
  %22 = phi i64 [ 0, %12 ], [ %55, %54 ]
  %23 = phi ptr [ %5, %12 ], [ %57, %54 ]
  %24 = getelementptr inbounds ptr, ptr %23, i64 %22
  %25 = load ptr, ptr %24, align 8, !tbaa !50
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %class.MatchExpression, ptr %25, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  %30 = getelementptr inbounds %class.MatchExpression, ptr %25, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !80
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %27, %33
  %34 = phi ptr [ %35, %33 ], [ %29, %27 ]
  tail call void @_ZN15MatchExpression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %34) #18
  %35 = getelementptr inbounds %"class.MatchExpression::Elem", ptr %34, i64 1
  %36 = icmp eq ptr %35, %31
  br i1 %36, label %37, label %33, !llvm.loop !81

37:                                               ; preds = %33, %27
  %38 = load ptr, ptr %28, align 8, !tbaa !78
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @_ZdlPv(ptr noundef %38) #21
  br label %41

41:                                               ; preds = %37, %40
  tail call void @_ZdlPv(ptr noundef %25) #21
  br label %42

42:                                               ; preds = %41, %21
  %43 = load ptr, ptr %13, align 8, !tbaa !71
  %44 = getelementptr inbounds %"class.std::vector", ptr %43, i64 %22
  %45 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !53
  %47 = load ptr, ptr %44, align 8, !tbaa !57
  %48 = ptrtoint ptr %46 to i64
  %49 = ptrtoint ptr %47 to i64
  %50 = sub i64 %48, %49
  %51 = lshr exact i64 %50, 3
  %52 = trunc i64 %51 to i32
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %85, %42
  %55 = add nuw nsw i64 %22, 1
  %56 = load ptr, ptr %3, align 8, !tbaa !53
  %57 = load ptr, ptr %2, align 8, !tbaa !57
  %58 = ptrtoint ptr %56 to i64
  %59 = ptrtoint ptr %57 to i64
  %60 = sub i64 %58, %59
  %61 = shl i64 %60, 29
  %62 = ashr i64 %61, 32
  %63 = icmp slt i64 %55, %62
  br i1 %63, label %21, label %14, !llvm.loop !82

64:                                               ; preds = %42, %85
  %65 = phi i64 [ %86, %85 ], [ 0, %42 ]
  %66 = phi ptr [ %88, %85 ], [ %47, %42 ]
  %67 = getelementptr inbounds ptr, ptr %66, i64 %65
  %68 = load ptr, ptr %67, align 8, !tbaa !50
  %69 = icmp eq ptr %68, null
  br i1 %69, label %85, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %class.MatchExpression, ptr %68, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !78
  %73 = getelementptr inbounds %class.MatchExpression, ptr %68, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !80
  %75 = icmp eq ptr %72, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %70, %76
  %77 = phi ptr [ %78, %76 ], [ %72, %70 ]
  tail call void @_ZN15MatchExpression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %77) #18
  %78 = getelementptr inbounds %"class.MatchExpression::Elem", ptr %77, i64 1
  %79 = icmp eq ptr %78, %74
  br i1 %79, label %80, label %76, !llvm.loop !81

80:                                               ; preds = %76, %70
  %81 = load ptr, ptr %71, align 8, !tbaa !78
  %82 = icmp eq ptr %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  tail call void @_ZdlPv(ptr noundef %81) #21
  br label %84

84:                                               ; preds = %80, %83
  tail call void @_ZdlPv(ptr noundef %68) #21
  br label %85

85:                                               ; preds = %64, %84
  %86 = add nuw nsw i64 %65, 1
  %87 = load ptr, ptr %45, align 8, !tbaa !53
  %88 = load ptr, ptr %44, align 8, !tbaa !57
  %89 = ptrtoint ptr %87 to i64
  %90 = ptrtoint ptr %88 to i64
  %91 = sub i64 %89, %90
  %92 = shl i64 %91, 29
  %93 = ashr i64 %92, 32
  %94 = icmp slt i64 %86, %93
  br i1 %94, label %64, label %54, !llvm.loop !83
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ObjectPrinter19printObjectToStreamERSoP7cObject(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #3 align 2 !prof !38 {
  %4 = tail call noundef ptr @_ZN16cClassDescriptor16getDescriptorForEP7cObject(ptr noundef %2)
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 6)
  %6 = load ptr, ptr %4, align 8, !tbaa !84
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(20) %4)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load ptr, ptr %1, align 8, !tbaa !84
  %13 = getelementptr i8, ptr %12, i64 -24
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = getelementptr inbounds %"class.std::ios_base", ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !86
  %18 = or i32 %17, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %15, i32 noundef %18)
  br label %22

19:                                               ; preds = %3
  %20 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #18
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %9, i64 noundef %20)
  br label %22

22:                                               ; preds = %11, %19
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 3)
  tail call void @_ZN13ObjectPrinter19printObjectToStreamERSoPvP16cClassDescriptori(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull %4, i32 noundef 1)
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 2)
  ret void
}

declare noundef ptr @_ZN16cClassDescriptor16getDescriptorForEP7cObject(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ObjectPrinter19printObjectToStreamERSoPvP16cClassDescriptori(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %3, align 8, !tbaa !84
  %11 = getelementptr inbounds ptr, ptr %10, i64 27
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2)
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %340

15:                                               ; preds = %9
  %16 = icmp slt i32 %4, 5
  %17 = add nsw i32 %4, 1
  %18 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %21 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 1
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  br label %39

24:                                               ; preds = %5
  %25 = load i32, ptr %0, align 8, !tbaa !61
  %26 = mul nsw i32 %25, %4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %28
  %29 = phi i32 [ %31, %28 ], [ 0, %24 ]
  %30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 1)
  %31 = add nuw nsw i32 %29, 1
  %32 = icmp eq i32 %31, %26
  br i1 %32, label %33, label %28, !llvm.loop !92

33:                                               ; preds = %28, %24
  %34 = icmp eq i32 %4, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.6, i64 noundef 6)
  br label %340

37:                                               ; preds = %33
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.7, i64 noundef 4)
  br label %340

39:                                               ; preds = %15, %84
  %40 = phi i32 [ 0, %15 ], [ %85, %84 ]
  %41 = load ptr, ptr %3, align 8, !tbaa !84
  %42 = getelementptr inbounds ptr, ptr %41, i64 29
  %43 = load ptr, ptr %42, align 8
  %44 = call noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40)
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr %3, align 8, !tbaa !84
  %48 = getelementptr inbounds ptr, ptr %47, i64 29
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef i32 %49(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40)
  %51 = and i32 %50, 4
  %52 = icmp eq i32 %51, 0
  %53 = load ptr, ptr %3, align 8, !tbaa !84
  %54 = getelementptr inbounds ptr, ptr %53, i64 29
  %55 = load ptr, ptr %54, align 8
  %56 = call noundef i32 %55(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40)
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  %59 = load ptr, ptr %3, align 8, !tbaa !84
  %60 = getelementptr inbounds ptr, ptr %59, i64 29
  %61 = load ptr, ptr %60, align 8
  %62 = call noundef i32 %61(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40)
  %63 = and i32 %62, 16
  %64 = icmp eq i32 %63, 0
  %65 = load ptr, ptr %3, align 8, !tbaa !84
  %66 = getelementptr inbounds ptr, ptr %65, i64 31
  %67 = load ptr, ptr %66, align 8
  %68 = call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40)
  %69 = load ptr, ptr %3, align 8, !tbaa !84
  %70 = getelementptr inbounds ptr, ptr %69, i64 28
  %71 = load ptr, ptr %70, align 8
  %72 = call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40)
  br i1 %46, label %78, label %73

73:                                               ; preds = %39
  %74 = load ptr, ptr %3, align 8, !tbaa !84
  %75 = getelementptr inbounds ptr, ptr %74, i64 33
  %76 = load ptr, ptr %75, align 8
  %77 = call noundef i32 %76(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40)
  br label %78

78:                                               ; preds = %39, %73
  %79 = phi i32 [ %77, %73 ], [ 1, %39 ]
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = icmp eq ptr %68, null
  %83 = icmp eq ptr %72, null
  br label %91

84:                                               ; preds = %335, %78
  %85 = add nuw nsw i32 %40, 1
  %86 = load ptr, ptr %3, align 8, !tbaa !84
  %87 = getelementptr inbounds ptr, ptr %86, i64 27
  %88 = load ptr, ptr %87, align 8
  %89 = call noundef i32 %88(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2)
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %39, label %340, !llvm.loop !93

91:                                               ; preds = %81, %335
  %92 = phi i32 [ 0, %81 ], [ %336, %335 ]
  br i1 %58, label %98, label %93

93:                                               ; preds = %91
  %94 = load ptr, ptr %3, align 8, !tbaa !84
  %95 = getelementptr inbounds ptr, ptr %94, i64 37
  %96 = load ptr, ptr %95, align 8
  %97 = call noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40, i32 noundef %92)
  br label %98

98:                                               ; preds = %91, %93
  %99 = phi ptr [ %97, %93 ], [ null, %91 ]
  %100 = load ptr, ptr %3, align 8, !tbaa !84
  %101 = getelementptr inbounds ptr, ptr %100, i64 28
  %102 = load ptr, ptr %101, align 8
  %103 = call noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40)
  %104 = load ptr, ptr %3, align 8, !tbaa !84
  %105 = getelementptr inbounds ptr, ptr %104, i64 29
  %106 = load ptr, ptr %105, align 8
  %107 = call noundef i32 %106(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40)
  br i1 %16, label %108, label %335

108:                                              ; preds = %98
  %109 = and i32 %107, 16
  %110 = icmp eq i32 %109, 0
  %111 = icmp eq ptr %99, null
  %112 = or i1 %111, %110
  br i1 %112, label %126, label %113

113:                                              ; preds = %108
  %114 = call ptr @__dynamic_cast(ptr %99, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI6cArray, i64 0) #18
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %class.cArray, ptr %114, i64 0, i32 5
  %118 = load i32, ptr %117, align 4, !tbaa !94
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %335, label %120

120:                                              ; preds = %116, %113
  %121 = call ptr @__dynamic_cast(ptr %99, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI7cModule, i64 0) #18
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %335

123:                                              ; preds = %120
  %124 = call ptr @__dynamic_cast(ptr %99, ptr nonnull @_ZTI7cObject, ptr nonnull @_ZTI5cGate, i64 0) #18
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %335

126:                                              ; preds = %123, %108
  %127 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %103, ptr noundef nonnull dereferenceable(6) @.str.16) #19
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %335, label %129

129:                                              ; preds = %126
  %130 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %103, ptr noundef nonnull dereferenceable(10) @.str.17) #19
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %335, label %132

132:                                              ; preds = %129
  %133 = call noundef zeroext i1 @_ZNK16cClassDescriptor14extendsCObjectEv(ptr noundef nonnull align 8 dereferenceable(88) %3)
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  %135 = call noundef zeroext i1 @_ZN13ObjectPrinter18matchesObjectFieldEP7cObjecti(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef %2, i32 noundef %40)
  br i1 %135, label %136, label %335

136:                                              ; preds = %134, %132
  %137 = load i32, ptr %0, align 8, !tbaa !61
  %138 = mul nsw i32 %137, %4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136, %140
  %141 = phi i32 [ %143, %140 ], [ 0, %136 ]
  %142 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 1)
  %143 = add nuw nsw i32 %141, 1
  %144 = icmp eq i32 %143, %138
  br i1 %144, label %145, label %140, !llvm.loop !92

145:                                              ; preds = %140, %136
  br i1 %82, label %146, label %154

146:                                              ; preds = %145
  %147 = load ptr, ptr %1, align 8, !tbaa !84
  %148 = getelementptr i8, ptr %147, i64 -24
  %149 = load i64, ptr %148, align 8
  %150 = getelementptr inbounds i8, ptr %1, i64 %149
  %151 = getelementptr inbounds %"class.std::ios_base", ptr %150, i64 0, i32 5
  %152 = load i32, ptr %151, align 8, !tbaa !86
  %153 = or i32 %152, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %150, i32 noundef %153)
  br label %157

154:                                              ; preds = %145
  %155 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %68) #18
  %156 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %68, i64 noundef %155)
  br label %157

157:                                              ; preds = %146, %154
  %158 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 1)
  br i1 %52, label %161, label %159

159:                                              ; preds = %157
  %160 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.2, i64 noundef 1)
  br label %161

161:                                              ; preds = %159, %157
  br i1 %83, label %162, label %170

162:                                              ; preds = %161
  %163 = load ptr, ptr %1, align 8, !tbaa !84
  %164 = getelementptr i8, ptr %163, i64 -24
  %165 = load i64, ptr %164, align 8
  %166 = getelementptr inbounds i8, ptr %1, i64 %165
  %167 = getelementptr inbounds %"class.std::ios_base", ptr %166, i64 0, i32 5
  %168 = load i32, ptr %167, align 8, !tbaa !86
  %169 = or i32 %168, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %166, i32 noundef %169)
  br label %173

170:                                              ; preds = %161
  %171 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #18
  %172 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %72, i64 noundef %171)
  br label %173

173:                                              ; preds = %162, %170
  br i1 %46, label %178, label %174

174:                                              ; preds = %173
  %175 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.9, i64 noundef 1)
  %176 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %92)
  %177 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %176, ptr noundef nonnull @.str.10, i64 noundef 1)
  br label %178

178:                                              ; preds = %174, %173
  %179 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.11, i64 noundef 3)
  br i1 %58, label %290, label %180

180:                                              ; preds = %178
  br i1 %111, label %288, label %181

181:                                              ; preds = %180
  br i1 %64, label %184, label %182

182:                                              ; preds = %181
  %183 = call noundef ptr @_ZN16cClassDescriptor16getDescriptorForEP7cObject(ptr noundef nonnull %99)
  br label %190

184:                                              ; preds = %181
  %185 = load ptr, ptr %3, align 8, !tbaa !84
  %186 = getelementptr inbounds ptr, ptr %185, i64 36
  %187 = load ptr, ptr %186, align 8
  %188 = call noundef ptr %187(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40)
  %189 = call noundef ptr @_ZN16cClassDescriptor16getDescriptorForEPKc(ptr noundef %188)
  br label %190

190:                                              ; preds = %184, %182
  %191 = phi ptr [ %183, %182 ], [ %189, %184 ]
  %192 = icmp eq ptr %191, null
  br i1 %192, label %243, label %193

193:                                              ; preds = %190
  br i1 %64, label %212, label %194

194:                                              ; preds = %193
  %195 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 6)
  %196 = load ptr, ptr %99, align 8, !tbaa !84
  %197 = getelementptr inbounds ptr, ptr %196, i64 5
  %198 = load ptr, ptr %197, align 8
  %199 = call noundef ptr %198(ptr noundef nonnull align 8 dereferenceable(8) %99)
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %209

201:                                              ; preds = %194
  %202 = load ptr, ptr %1, align 8, !tbaa !84
  %203 = getelementptr i8, ptr %202, i64 -24
  %204 = load i64, ptr %203, align 8
  %205 = getelementptr inbounds i8, ptr %1, i64 %204
  %206 = getelementptr inbounds %"class.std::ios_base", ptr %205, i64 0, i32 5
  %207 = load i32, ptr %206, align 8, !tbaa !86
  %208 = or i32 %207, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %205, i32 noundef %208)
  br label %230

209:                                              ; preds = %194
  %210 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %199) #18
  %211 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %199, i64 noundef %210)
  br label %230

212:                                              ; preds = %193
  %213 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.12, i64 noundef 7)
  %214 = load ptr, ptr %3, align 8, !tbaa !84
  %215 = getelementptr inbounds ptr, ptr %214, i64 36
  %216 = load ptr, ptr %215, align 8
  %217 = call noundef ptr %216(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40)
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %227

219:                                              ; preds = %212
  %220 = load ptr, ptr %1, align 8, !tbaa !84
  %221 = getelementptr i8, ptr %220, i64 -24
  %222 = load i64, ptr %221, align 8
  %223 = getelementptr inbounds i8, ptr %1, i64 %222
  %224 = getelementptr inbounds %"class.std::ios_base", ptr %223, i64 0, i32 5
  %225 = load i32, ptr %224, align 8, !tbaa !86
  %226 = or i32 %225, 1
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %223, i32 noundef %226)
  br label %230

227:                                              ; preds = %212
  %228 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %217) #18
  %229 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %217, i64 noundef %228)
  br label %230

230:                                              ; preds = %227, %219, %209, %201
  %231 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 1)
  %232 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.13, i64 noundef 2)
  call void @_ZN13ObjectPrinter19printObjectToStreamERSoPvP16cClassDescriptori(ptr noundef nonnull align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %99, ptr noundef nonnull %191, i32 noundef %17)
  %233 = load i32, ptr %0, align 8, !tbaa !61
  %234 = mul nsw i32 %233, %4
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %230, %236
  %237 = phi i32 [ %239, %236 ], [ 0, %230 ]
  %238 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 1)
  %239 = add nuw nsw i32 %237, 1
  %240 = icmp eq i32 %239, %234
  br i1 %240, label %241, label %236, !llvm.loop !92

241:                                              ; preds = %236, %230
  %242 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.5, i64 noundef 2)
  br label %335

243:                                              ; preds = %190
  %244 = load ptr, ptr %3, align 8, !tbaa !84
  %245 = getelementptr inbounds ptr, ptr %244, i64 34
  %246 = load ptr, ptr %245, align 8
  %247 = call noundef zeroext i1 %246(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40, i32 noundef %92, ptr noundef nonnull %18, i32 noundef 1024)
  %248 = call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %18)
  br i1 %248, label %249, label %251

249:                                              ; preds = %243
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull %18)
  %250 = load ptr, ptr %6, align 8, !tbaa !45
  br label %251

251:                                              ; preds = %243, %249
  %252 = phi ptr [ %250, %249 ], [ %18, %243 ]
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %262

254:                                              ; preds = %251
  %255 = load ptr, ptr %1, align 8, !tbaa !84
  %256 = getelementptr i8, ptr %255, i64 -24
  %257 = load i64, ptr %256, align 8
  %258 = getelementptr inbounds i8, ptr %1, i64 %257
  %259 = getelementptr inbounds %"class.std::ios_base", ptr %258, i64 0, i32 5
  %260 = load i32, ptr %259, align 8, !tbaa !86
  %261 = or i32 %260, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %258, i32 noundef %261)
          to label %265 unwind label %276

262:                                              ; preds = %251
  %263 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %252) #18
  %264 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %252, i64 noundef %263)
          to label %265 unwind label %276

265:                                              ; preds = %262, %254
  %266 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %267 unwind label %276

267:                                              ; preds = %265
  br i1 %248, label %268, label %335

268:                                              ; preds = %267
  %269 = load ptr, ptr %6, align 8, !tbaa !45
  %270 = icmp eq ptr %269, %19
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i64, ptr %20, align 8, !tbaa !58
  %273 = icmp ult i64 %272, 16
  call void @llvm.assume(i1 %273)
  br label %275

274:                                              ; preds = %268
  call void @_ZdlPv(ptr noundef %269) #21
  br label %275

275:                                              ; preds = %271, %274
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  br label %335

276:                                              ; preds = %265, %262, %254
  %277 = landingpad { ptr, i32 }
          cleanup
  br i1 %248, label %278, label %338

278:                                              ; preds = %276
  %279 = load ptr, ptr %6, align 8, !tbaa !45
  %280 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %281 = icmp eq ptr %279, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %278
  %283 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  %284 = load i64, ptr %283, align 8, !tbaa !58
  %285 = icmp ult i64 %284, 16
  call void @llvm.assume(i1 %285)
  br label %287

286:                                              ; preds = %278
  call void @_ZdlPv(ptr noundef %279) #21
  br label %287

287:                                              ; preds = %282, %286
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #18
  br label %338

288:                                              ; preds = %180
  %289 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.15, i64 noundef 7)
  br label %335

290:                                              ; preds = %178
  %291 = load ptr, ptr %3, align 8, !tbaa !84
  %292 = getelementptr inbounds ptr, ptr %291, i64 34
  %293 = load ptr, ptr %292, align 8
  %294 = call noundef zeroext i1 %293(ptr noundef nonnull align 8 dereferenceable(88) %3, ptr noundef %2, i32 noundef %40, i32 noundef %92, ptr noundef nonnull %21, i32 noundef 1024)
  %295 = call noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef nonnull %21)
  br i1 %295, label %296, label %298

296:                                              ; preds = %290
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #18
  call void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull %21)
  %297 = load ptr, ptr %7, align 8, !tbaa !45
  br label %298

298:                                              ; preds = %290, %296
  %299 = phi ptr [ %297, %296 ], [ %21, %290 ]
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %309

301:                                              ; preds = %298
  %302 = load ptr, ptr %1, align 8, !tbaa !84
  %303 = getelementptr i8, ptr %302, i64 -24
  %304 = load i64, ptr %303, align 8
  %305 = getelementptr inbounds i8, ptr %1, i64 %304
  %306 = getelementptr inbounds %"class.std::ios_base", ptr %305, i64 0, i32 5
  %307 = load i32, ptr %306, align 8, !tbaa !86
  %308 = or i32 %307, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %305, i32 noundef %308)
          to label %312 unwind label %323

309:                                              ; preds = %298
  %310 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %299) #18
  %311 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %299, i64 noundef %310)
          to label %312 unwind label %323

312:                                              ; preds = %309, %301
  %313 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.14, i64 noundef 1)
          to label %314 unwind label %323

314:                                              ; preds = %312
  br i1 %295, label %315, label %335

315:                                              ; preds = %314
  %316 = load ptr, ptr %7, align 8, !tbaa !45
  %317 = icmp eq ptr %316, %22
  br i1 %317, label %318, label %321

318:                                              ; preds = %315
  %319 = load i64, ptr %23, align 8, !tbaa !58
  %320 = icmp ult i64 %319, 16
  call void @llvm.assume(i1 %320)
  br label %322

321:                                              ; preds = %315
  call void @_ZdlPv(ptr noundef %316) #21
  br label %322

322:                                              ; preds = %318, %321
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %335

323:                                              ; preds = %312, %309, %301
  %324 = landingpad { ptr, i32 }
          cleanup
  br i1 %295, label %325, label %338

325:                                              ; preds = %323
  %326 = load ptr, ptr %7, align 8, !tbaa !45
  %327 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %328 = icmp eq ptr %326, %327
  br i1 %328, label %329, label %333

329:                                              ; preds = %325
  %330 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %331 = load i64, ptr %330, align 8, !tbaa !58
  %332 = icmp ult i64 %331, 16
  call void @llvm.assume(i1 %332)
  br label %334

333:                                              ; preds = %325
  call void @_ZdlPv(ptr noundef %326) #21
  br label %334

334:                                              ; preds = %329, %333
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #18
  br label %338

335:                                              ; preds = %116, %126, %123, %98, %120, %288, %322, %267, %275, %241, %314, %129, %134
  %336 = add nuw nsw i32 %92, 1
  %337 = icmp eq i32 %336, %79
  br i1 %337, label %84, label %91, !llvm.loop !100

338:                                              ; preds = %276, %323, %287, %334
  %339 = phi { ptr, i32 } [ %324, %334 ], [ %277, %287 ], [ %324, %323 ], [ %277, %276 ]
  resume { ptr, i32 } %339

340:                                              ; preds = %84, %9, %35, %37
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ObjectPrinter19printObjectToStringB5cxx11EP7cObject(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1080) %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %4) #18
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %5 = getelementptr inbounds i8, ptr %4, i64 16
  invoke void @_ZN13ObjectPrinter19printObjectToStreamERSoP7cObject(ptr noundef nonnull align 8 dereferenceable(1080) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2)
          to label %6 unwind label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %4, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %7)
          to label %8 unwind label %10

8:                                                ; preds = %6
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #18
  %9 = getelementptr inbounds i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %9) #18
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #18
  ret void

10:                                               ; preds = %6, %3
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #18
  %12 = getelementptr inbounds i8, ptr %4, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %12) #18
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %4) #18
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ObjectPrinter11printIndentERSoi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1080) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !38 {
  %4 = load i32, ptr %0, align 8, !tbaa !61
  %5 = mul nsw i32 %4, %2
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %8, %3
  ret void

8:                                                ; preds = %3, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %3 ]
  %10 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.8, i64 noundef 1)
  %11 = add nuw nsw i32 %9, 1
  %12 = icmp eq i32 %11, %5
  br i1 %12, label %7, label %8, !llvm.loop !92
}

declare noundef zeroext i1 @_ZNK16cClassDescriptor14extendsCObjectEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN13ObjectPrinter18matchesObjectFieldEP7cObjecti(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1080) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca %class.MatchableObjectAdapter, align 8
  %5 = alloca %class.MatchableFieldAdapter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  call void @_ZN22MatchableObjectAdapterC1ENS_16DefaultAttributeEP7cObject(ptr noundef nonnull align 8 dereferenceable(64) %4, i32 noundef 2, ptr noundef %1)
  %6 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = load ptr, ptr %6, align 8, !tbaa !57
  %10 = ptrtoint ptr %8 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = lshr exact i64 %12, 3
  %14 = trunc i64 %13 to i32
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %94

16:                                               ; preds = %3
  %17 = getelementptr inbounds %class.ObjectPrinter, ptr %0, i64 0, i32 3
  br label %28

18:                                               ; preds = %79
  %19 = add nuw nsw i64 %29, 1
  %20 = load ptr, ptr %7, align 8, !tbaa !53
  %21 = load ptr, ptr %6, align 8, !tbaa !57
  %22 = ptrtoint ptr %20 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = shl i64 %24, 29
  %26 = ashr i64 %25, 32
  %27 = icmp slt i64 %19, %26
  br i1 %27, label %28, label %94, !llvm.loop !101

28:                                               ; preds = %16, %18
  %29 = phi i64 [ 0, %16 ], [ %19, %18 ]
  %30 = phi i1 [ %15, %16 ], [ %27, %18 ]
  %31 = phi ptr [ %9, %16 ], [ %21, %18 ]
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = invoke noundef zeroext i1 @_ZN15MatchExpression7matchesEPKNS_9MatchableE(ptr noundef nonnull align 8 dereferenceable(32) %33, ptr noundef nonnull %4)
          to label %35 unwind label %58

35:                                               ; preds = %28
  br i1 %34, label %36, label %78

36:                                               ; preds = %35
  %37 = load ptr, ptr %17, align 8, !tbaa !71
  %38 = getelementptr inbounds %"class.std::vector", ptr %37, i64 %29
  %39 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  %41 = load ptr, ptr %38, align 8, !tbaa !57
  %42 = ptrtoint ptr %40 to i64
  %43 = ptrtoint ptr %41 to i64
  %44 = sub i64 %42, %43
  %45 = lshr exact i64 %44, 3
  %46 = trunc i64 %45 to i32
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %60, label %75

48:                                               ; preds = %72
  %49 = add nuw nsw i64 %61, 1
  %50 = load ptr, ptr %39, align 8, !tbaa !53
  %51 = load ptr, ptr %38, align 8, !tbaa !57
  %52 = ptrtoint ptr %50 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = shl i64 %54, 29
  %56 = ashr i64 %55, 32
  %57 = icmp slt i64 %49, %56
  br i1 %57, label %60, label %75, !llvm.loop !102

58:                                               ; preds = %28
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %82

60:                                               ; preds = %36, %48
  %61 = phi i64 [ %49, %48 ], [ 0, %36 ]
  %62 = phi i1 [ %57, %48 ], [ %47, %36 ]
  %63 = phi ptr [ %51, %48 ], [ %41, %36 ]
  %64 = getelementptr inbounds ptr, ptr %63, i64 %61
  %65 = load ptr, ptr %64, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  invoke void @_ZN21MatchableFieldAdapterC1EP7cObjecti(ptr noundef nonnull align 8 dereferenceable(28) %5, ptr noundef %1, i32 noundef %2)
          to label %66 unwind label %68

66:                                               ; preds = %60
  %67 = invoke noundef zeroext i1 @_ZN15MatchExpression7matchesEPKNS_9MatchableE(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull %5)
          to label %72 unwind label %70

68:                                               ; preds = %60
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %73

70:                                               ; preds = %66
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %73

72:                                               ; preds = %66
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br i1 %67, label %75, label %48

73:                                               ; preds = %70, %68
  %74 = phi { ptr, i32 } [ %71, %70 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  br label %82

75:                                               ; preds = %72, %48, %36
  %76 = phi i1 [ %47, %36 ], [ %62, %72 ], [ %57, %48 ]
  %77 = phi i32 [ 0, %36 ], [ 1, %72 ], [ 0, %48 ]
  br i1 %76, label %79, label %78

78:                                               ; preds = %75, %35
  br label %79

79:                                               ; preds = %75, %78
  %80 = phi i32 [ 0, %78 ], [ %77, %75 ]
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %18, label %94

82:                                               ; preds = %73, %58
  %83 = phi { ptr, i32 } [ %74, %73 ], [ %59, %58 ]
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV22MatchableObjectAdapter, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !84
  %84 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %4, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !45
  %86 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %4, i64 0, i32 4, i32 2
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %4, i64 0, i32 4, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !58
  %91 = icmp ult i64 %90, 16
  call void @llvm.assume(i1 %91)
  br label %93

92:                                               ; preds = %82
  call void @_ZdlPv(ptr noundef %85) #21
  br label %93

93:                                               ; preds = %88, %92
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  resume { ptr, i32 } %83

94:                                               ; preds = %79, %18, %3
  %95 = phi i1 [ %15, %3 ], [ %30, %79 ], [ %27, %18 ]
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV22MatchableObjectAdapter, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !84
  %96 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %4, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !45
  %98 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %4, i64 0, i32 4, i32 2
  %99 = icmp eq ptr %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %4, i64 0, i32 4, i32 1
  %102 = load i64, ptr %101, align 8, !tbaa !58
  %103 = icmp ult i64 %102, 16
  call void @llvm.assume(i1 %103)
  br label %105

104:                                              ; preds = %94
  call void @_ZdlPv(ptr noundef %97) #21
  br label %105

105:                                              ; preds = %100, %104
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  ret i1 %95
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN16cClassDescriptor16getDescriptorForEPKc(ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_Z15opp_needsquotesPKc(ptr noundef) local_unnamed_addr #0

declare void @_Z12opp_quotestrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

declare void @_ZN22MatchableObjectAdapterC1ENS_16DefaultAttributeEP7cObject(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef) unnamed_addr #0

declare noundef zeroext i1 @_ZN15MatchExpression7matchesEPKNS_9MatchableE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #0

declare void @_ZN21MatchableFieldAdapterC1EP7cObjecti(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !38 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN15MatchExpression4ElemD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP15MatchExpressionSaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = load ptr, ptr %0, align 8, !tbaa !50
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775800
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #23
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 3
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 1152921504606846975)
  %18 = select i1 %16, i64 1152921504606846975, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 3
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt15__new_allocatorIP15MatchExpressionE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %18, ptr noundef null)
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = getelementptr inbounds ptr, ptr %26, i64 %21
  %28 = load ptr, ptr %2, align 8, !tbaa !50
  store ptr %28, ptr %27, align 8, !tbaa !50
  %29 = icmp sgt i64 %20, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %26, ptr align 8 %6, i64 %20, i1 false)
  br label %31

31:                                               ; preds = %25, %30
  %32 = getelementptr inbounds i8, ptr %26, i64 %20
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  %34 = sub i64 %7, %19
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %33, ptr align 8 %1, i64 %34, i1 false)
  br label %37

37:                                               ; preds = %31, %36
  %38 = icmp eq ptr %6, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %37
  tail call void @_ZdlPv(ptr noundef %6) #21
  br label %40

40:                                               ; preds = %37, %39
  %41 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %42 = getelementptr inbounds i8, ptr %33, i64 %34
  store ptr %26, ptr %0, align 8, !tbaa !57
  store ptr %42, ptr %4, align 8, !tbaa !53
  %43 = getelementptr inbounds ptr, ptr %26, i64 %18
  store ptr %43, ptr %41, align 8, !tbaa !51
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIP15MatchExpressionE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !38 {
  %4 = icmp ugt i64 %1, 1152921504606846975
  br i1 %4, label %5, label %9, !prof !103

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 2305843009213693951
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 3
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #20
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = load ptr, ptr %0, align 8, !tbaa !50
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775800
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #23
  unreachable

12:                                               ; preds = %3
  %13 = sdiv exact i64 %9, 24
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 384307168202282325)
  %18 = select i1 %16, i64 384307168202282325, i64 %17
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = sdiv exact i64 %20, 24
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = tail call noundef ptr @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %18, ptr noundef null)
  br label %25

25:                                               ; preds = %12, %23
  %26 = phi ptr [ %24, %23 ], [ null, %12 ]
  %27 = getelementptr inbounds %"class.std::vector", ptr %26, i64 %21
  invoke void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %28 unwind label %68

28:                                               ; preds = %25
  %29 = icmp eq ptr %6, %1
  br i1 %29, label %30, label %34

30:                                               ; preds = %34, %28
  %31 = phi ptr [ %26, %28 ], [ %45, %34 ]
  %32 = getelementptr inbounds %"class.std::vector", ptr %31, i64 1
  %33 = icmp eq ptr %5, %1
  br i1 %33, label %61, label %47

34:                                               ; preds = %28, %34
  %35 = phi ptr [ %45, %34 ], [ %26, %28 ]
  %36 = phi ptr [ %44, %34 ], [ %6, %28 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %37 = load ptr, ptr %36, align 8, !tbaa !57, !alias.scope !107, !noalias !104
  store ptr %37, ptr %35, align 8, !tbaa !57, !alias.scope !104, !noalias !107
  %38 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %35, i64 0, i32 1
  %39 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %36, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !53, !alias.scope !107, !noalias !104
  store ptr %40, ptr %38, align 8, !tbaa !53, !alias.scope !104, !noalias !107
  %41 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %35, i64 0, i32 2
  %42 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %36, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !51, !alias.scope !107, !noalias !104
  store ptr %43, ptr %41, align 8, !tbaa !51, !alias.scope !104, !noalias !107
  %44 = getelementptr inbounds %"class.std::vector", ptr %36, i64 1
  %45 = getelementptr inbounds %"class.std::vector", ptr %35, i64 1
  %46 = icmp eq ptr %44, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %36, i8 0, i64 24, i1 false)
  br i1 %46, label %30, label %34, !llvm.loop !109

47:                                               ; preds = %30, %47
  %48 = phi ptr [ %59, %47 ], [ %32, %30 ]
  %49 = phi ptr [ %48, %47 ], [ %31, %30 ]
  %50 = phi ptr [ %58, %47 ], [ %1, %30 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %51 = load ptr, ptr %50, align 8, !tbaa !57, !alias.scope !113, !noalias !110
  store ptr %51, ptr %48, align 8, !tbaa !57, !alias.scope !110, !noalias !113
  %52 = getelementptr inbounds %"class.std::vector", ptr %49, i64 1, i32 0, i32 0, i32 0, i32 1
  %53 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %50, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !53, !alias.scope !113, !noalias !110
  store ptr %54, ptr %52, align 8, !tbaa !53, !alias.scope !110, !noalias !113
  %55 = getelementptr inbounds %"class.std::vector", ptr %49, i64 1, i32 0, i32 0, i32 0, i32 2
  %56 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %50, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !51, !alias.scope !113, !noalias !110
  store ptr %57, ptr %55, align 8, !tbaa !51, !alias.scope !110, !noalias !113
  %58 = getelementptr inbounds %"class.std::vector", ptr %50, i64 1
  %59 = getelementptr inbounds %"class.std::vector", ptr %48, i64 1
  %60 = icmp eq ptr %58, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  br i1 %60, label %61, label %47, !llvm.loop !109

61:                                               ; preds = %47, %30
  %62 = phi ptr [ %32, %30 ], [ %59, %47 ]
  %63 = icmp eq ptr %6, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call void @_ZdlPv(ptr noundef %6) #21
  br label %65

65:                                               ; preds = %61, %64
  %66 = getelementptr inbounds %"struct.std::_Vector_base<std::vector<MatchExpression *>, std::allocator<std::vector<MatchExpression *>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %26, ptr %0, align 8, !tbaa !71
  store ptr %62, ptr %4, align 8, !tbaa !72
  %67 = getelementptr inbounds %"class.std::vector", ptr %26, i64 %18
  store ptr %67, ptr %66, align 8, !tbaa !74
  ret void

68:                                               ; preds = %25
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  %71 = tail call ptr @__cxa_begin_catch(ptr %70) #18
  %72 = icmp eq ptr %26, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load ptr, ptr %27, align 8, !tbaa !57
  %75 = icmp eq ptr %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  tail call void @_ZdlPv(ptr noundef %74) #21
  br label %79

77:                                               ; preds = %81
  %78 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %82 unwind label %83

79:                                               ; preds = %76, %73
  br i1 %72, label %81, label %80

80:                                               ; preds = %68, %79
  tail call void @_ZdlPv(ptr noundef %26) #21
  br label %81

81:                                               ; preds = %80, %79
  invoke void @__cxa_rethrow() #23
          to label %86 unwind label %77

82:                                               ; preds = %77
  resume { ptr, i32 } %78

83:                                               ; preds = %77
  %84 = landingpad { ptr, i32 }
          catch ptr null
  %85 = extractvalue { ptr, i32 } %84, 0
  tail call void @__clang_call_terminate(ptr %85) #22
  unreachable

86:                                               ; preds = %81
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = load ptr, ptr %1, align 8, !tbaa !57
  %6 = ptrtoint ptr %4 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %"struct.std::_Vector_base<MatchExpression *, std::allocator<MatchExpression *>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %4, %5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call noundef ptr @_ZNSt15__new_allocatorIP15MatchExpressionE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %9, ptr noundef null)
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi ptr [ null, %2 ], [ %14, %13 ]
  store ptr %16, ptr %0, align 8, !tbaa !57
  store ptr %16, ptr %10, align 8, !tbaa !53
  %17 = getelementptr inbounds ptr, ptr %16, i64 %9
  store ptr %17, ptr %11, align 8, !tbaa !51
  %18 = load ptr, ptr %1, align 8, !tbaa !50
  %19 = load ptr, ptr %3, align 8, !tbaa !50
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %18 to i64
  %22 = sub i64 %20, %21
  %23 = icmp eq ptr %19, %18
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %16, ptr align 8 %18, i64 %22, i1 false)
  br label %25

25:                                               ; preds = %15, %24
  %26 = getelementptr inbounds i8, ptr %16, i64 %22
  store ptr %26, ptr %10, align 8, !tbaa !53
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !38 {
  %4 = icmp ugt i64 %1, 384307168202282325
  br i1 %4, label %5, label %9, !prof !103

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 768614336404564650
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #23
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

9:                                                ; preds = %3
  %10 = mul nuw i64 %1, 24
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #20
  ret ptr %11
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = icmp eq i64 %1, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = tail call noundef ptr @_ZNSt15__new_allocatorISt6vectorIP15MatchExpressionSaIS2_EEE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null)
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ %7, %6 ], [ null, %4 ]
  %10 = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %2, ptr %3, ptr noundef %9)
          to label %11 unwind label %12

11:                                               ; preds = %8
  ret ptr %9

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #18
  %16 = icmp eq ptr %9, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  tail call void @_ZdlPv(ptr noundef %9) #21
  br label %18

18:                                               ; preds = %17, %12
  invoke void @__cxa_rethrow() #23
          to label %25 unwind label %19

19:                                               ; preds = %18
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %22

21:                                               ; preds = %19
  resume { ptr, i32 } %20

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #22
  unreachable

25:                                               ; preds = %18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIP15MatchExpressionSaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %26, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.std::vector", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.std::vector", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %26, label %5, !llvm.loop !115

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #18
  %16 = icmp eq ptr %6, %2
  br i1 %16, label %25, label %17

17:                                               ; preds = %12, %22
  %18 = phi ptr [ %23, %22 ], [ %2, %12 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %19) #21
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %"class.std::vector", ptr %18, i64 1
  %24 = icmp eq ptr %23, %6
  br i1 %24, label %25, label %17, !llvm.loop !73

25:                                               ; preds = %22, %12
  invoke void @__cxa_rethrow() #23
          to label %34 unwind label %28

26:                                               ; preds = %8, %3
  %27 = phi ptr [ %2, %3 ], [ %10, %8 ]
  ret ptr %27

28:                                               ; preds = %25
  %29 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %30 unwind label %31

30:                                               ; preds = %28
  resume { ptr, i32 } %29

31:                                               ; preds = %28
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %25
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt16__do_uninit_copyIPSt6vectorIP15MatchExpressionSaIS2_EES5_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %26, label %5

5:                                                ; preds = %3, %8
  %6 = phi ptr [ %10, %8 ], [ %2, %3 ]
  %7 = phi ptr [ %9, %8 ], [ %0, %3 ]
  invoke void @_ZNSt6vectorIP15MatchExpressionSaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %8 unwind label %12

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.std::vector", ptr %7, i64 1
  %10 = getelementptr inbounds %"class.std::vector", ptr %6, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %26, label %5, !llvm.loop !116

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #18
  %16 = icmp eq ptr %6, %2
  br i1 %16, label %25, label %17

17:                                               ; preds = %12, %22
  %18 = phi ptr [ %23, %22 ], [ %2, %12 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @_ZdlPv(ptr noundef %19) #21
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr inbounds %"class.std::vector", ptr %18, i64 1
  %24 = icmp eq ptr %23, %6
  br i1 %24, label %25, label %17, !llvm.loop !73

25:                                               ; preds = %22, %12
  invoke void @__cxa_rethrow() #23
          to label %34 unwind label %28

26:                                               ; preds = %8, %3
  %27 = phi ptr [ %2, %3 ], [ %10, %8 ]
  ret ptr %27

28:                                               ; preds = %25
  %29 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %30 unwind label %31

30:                                               ; preds = %28
  resume { ptr, i32 } %29

31:                                               ; preds = %28
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #22
  unreachable

34:                                               ; preds = %25
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #8 align 2

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3 align 2

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_objectprinter.cc() #13 section ".text.startup" !prof !117 !PGOFuncName !118 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind memory(read) }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_GLOBAL__sub_I_objectprinter.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!36 = !{ptr @_GLOBAL__sub_I_objectprinter.cc, ptr @__cxa_atexit, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !41, i64 8}
!40 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!40, !41, i64 0}
!45 = !{!46, !41, i64 0}
!46 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !47, i64 0, !48, i64 8, !42, i64 16}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !41, i64 0}
!48 = !{!"long", !42, i64 0}
!49 = !{!42, !42, i64 0}
!50 = !{!41, !41, i64 0}
!51 = !{!52, !41, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIP15MatchExpressionSaIS1_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!53 = !{!52, !41, i64 8}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!52, !41, i64 0}
!58 = !{!46, !48, i64 8}
!59 = distinct !{!59, !55, !56}
!60 = distinct !{!60, !55, !56}
!61 = !{!62, !63, i64 0}
!62 = !{!"_ZTS13ObjectPrinter", !63, i64 0, !42, i64 4, !64, i64 1032, !67, i64 1056}
!63 = !{!"int", !42, i64 0}
!64 = !{!"_ZTSSt6vectorIP15MatchExpressionSaIS1_EE", !65, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIP15MatchExpressionSaIS1_EE", !66, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIP15MatchExpressionSaIS1_EE12_Vector_implE", !52, i64 0}
!67 = !{!"_ZTSSt6vectorIS_IP15MatchExpressionSaIS1_EESaIS3_EE", !68, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE12_Vector_implE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseISt6vectorIP15MatchExpressionSaIS2_EESaIS4_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!71 = !{!70, !41, i64 0}
!72 = !{!70, !41, i64 8}
!73 = distinct !{!73, !55, !56}
!74 = !{!70, !41, i64 16}
!75 = distinct !{!75, !55, !56}
!76 = distinct !{!76, !55, !56}
!77 = distinct !{!77, !55, !56}
!78 = !{!79, !41, i64 0}
!79 = !{!"_ZTSNSt12_Vector_baseIN15MatchExpression4ElemESaIS1_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!80 = !{!79, !41, i64 8}
!81 = distinct !{!81, !55, !56}
!82 = distinct !{!82, !55, !56}
!83 = distinct !{!83, !55, !56}
!84 = !{!85, !85, i64 0}
!85 = !{!"vtable pointer", !43, i64 0}
!86 = !{!87, !89, i64 32}
!87 = !{!"_ZTSSt8ios_base", !48, i64 8, !48, i64 16, !88, i64 24, !89, i64 28, !89, i64 32, !41, i64 40, !90, i64 48, !42, i64 64, !63, i64 192, !41, i64 200, !91, i64 208}
!88 = !{!"_ZTSSt13_Ios_Fmtflags", !42, i64 0}
!89 = !{!"_ZTSSt12_Ios_Iostate", !42, i64 0}
!90 = !{!"_ZTSNSt8ios_base6_WordsE", !41, i64 0, !48, i64 8}
!91 = !{!"_ZTSSt6locale", !41, i64 0}
!92 = distinct !{!92, !55, !56}
!93 = distinct !{!93, !55, !56}
!94 = !{!95, !63, i64 60}
!95 = !{!"_ZTS6cArray", !96, i64 0, !41, i64 40, !63, i64 48, !63, i64 52, !63, i64 56, !63, i64 60}
!96 = !{!"_ZTS12cOwnedObject", !97, i64 0, !41, i64 24, !63, i64 32}
!97 = !{!"_ZTS12cNamedObject", !98, i64 0, !41, i64 8, !99, i64 16, !99, i64 18}
!98 = !{!"_ZTS7cObject"}
!99 = !{!"short", !42, i64 0}
!100 = distinct !{!100, !55, !56}
!101 = distinct !{!101, !55, !56}
!102 = distinct !{!102, !55, !56}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_ZSt19__relocate_object_aISt6vectorIP15MatchExpressionSaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!106 = distinct !{!106, !"_ZSt19__relocate_object_aISt6vectorIP15MatchExpressionSaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!107 = !{!108}
!108 = distinct !{!108, !106, !"_ZSt19__relocate_object_aISt6vectorIP15MatchExpressionSaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!109 = distinct !{!109, !55, !56}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZSt19__relocate_object_aISt6vectorIP15MatchExpressionSaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!112 = distinct !{!112, !"_ZSt19__relocate_object_aISt6vectorIP15MatchExpressionSaIS2_EES4_SaIS4_EEvPT_PT0_RT1_"}
!113 = !{!114}
!114 = distinct !{!114, !112, !"_ZSt19__relocate_object_aISt6vectorIP15MatchExpressionSaIS2_EES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!115 = distinct !{!115, !55, !56}
!116 = distinct !{!116, !55, !56}
!117 = !{!"function_entry_count", i64 1}
!118 = !{!"simulator/objectprinter.cc;_GLOBAL__sub_I_objectprinter.cc"}
