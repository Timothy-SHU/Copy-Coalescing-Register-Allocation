; ModuleID = 'simulator/cconfiguration.cc'
source_filename = "simulator/cconfiguration.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon }
%union.anon = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.0 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.0 = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.FilenamesListTokenizer = type { ptr, ptr }
%class.StringTokenizer = type { ptr, ptr, %"class.std::__cxx11::basic_string" }
%class.cConfigOption = type { %class.cNoncopyableOwnedObject.base, i8, i8, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN14cConfigurationD0Ev = comdat any

$_ZNK7cObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK7cObject8getOwnerEv = comdat any

$_ZNK7cObject13isOwnedObjectEv = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZN10cExceptionD2Ev = comdat any

$_ZN10cExceptionD0Ev = comdat any

$_ZNK10cException4whatEv = comdat any

$_ZNK10cException3dupEv = comdat any

$_ZNK10cException12getErrorCodeEv = comdat any

$_ZN10cException10setMessageEPKc = comdat any

$_ZN10cException14prependMessageEPKc = comdat any

$_ZNK10cException10hasContextEv = comdat any

$_ZNK10cException19getContextClassNameEv = comdat any

$_ZNK10cException18getContextFullPathEv = comdat any

$_ZNK10cException11getModuleIDEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV17opp_runtime_error = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"`%s' is not a valid boolean value, use true/false\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"@@\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c":;\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c";\00", align 1
@_ZTISt9exception = external constant ptr
@.str.10 = private unnamed_addr constant [52 x i8] c"Error getting option %s= from the configuration: %s\00", align 1
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@_ZTV14cConfiguration = dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTI14cConfiguration, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN7cObjectD2Ev, ptr @_ZN14cConfigurationD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK7cObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK7cObject4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK7cObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN7cObject10parsimPackEP11cCommBuffer, ptr @_ZN7cObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK7cObject8getOwnerEv, ptr @_ZNK7cObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN14cConfiguration11getAsCustomEP13cConfigOptionPKc, ptr @_ZN14cConfiguration9getAsBoolEP13cConfigOptionb, ptr @_ZN14cConfiguration8getAsIntEP13cConfigOptionl, ptr @_ZN14cConfiguration11getAsDoubleEP13cConfigOptiond, ptr @_ZN14cConfiguration11getAsStringB5cxx11EP13cConfigOptionPKc, ptr @_ZN14cConfiguration13getAsFilenameB5cxx11EP13cConfigOption, ptr @_ZN14cConfiguration14getAsFilenamesB5cxx11EP13cConfigOption, ptr @_ZN14cConfiguration9getAsPathB5cxx11EP13cConfigOption, ptr @_ZN14cConfiguration11getAsCustomEPKcP13cConfigOptionS1_, ptr @_ZN14cConfiguration9getAsBoolEPKcP13cConfigOptionb, ptr @_ZN14cConfiguration8getAsIntEPKcP13cConfigOptionl, ptr @_ZN14cConfiguration11getAsDoubleEPKcP13cConfigOptiond, ptr @_ZN14cConfiguration11getAsStringB5cxx11EPKcP13cConfigOptionS1_, ptr @_ZN14cConfiguration13getAsFilenameB5cxx11EPKcP13cConfigOption, ptr @_ZN14cConfiguration14getAsFilenamesB5cxx11EPKcP13cConfigOption, ptr @_ZN14cConfiguration9getAsPathB5cxx11EPKcP13cConfigOption] }, align 8
@_ZTS14cConfiguration = dso_local constant [17 x i8] c"14cConfiguration\00", align 1
@_ZTI7cObject = external constant ptr
@_ZTI14cConfiguration = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS14cConfiguration, ptr @_ZTI7cObject }, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@.str.11 = private unnamed_addr constant [91 x i8] c"Option %s= is read from the configuration in the wrong way: it is per-object configuration\00", align 1
@.str.12 = private unnamed_addr constant [104 x i8] c"Option %s= is read from the configuration in the wrong way: it is global (not per-object) configuration\00", align 1
@.str.13 = private unnamed_addr constant [83 x i8] c"Option %s= is read from the configuration with the wrong type (type=%s, actual=%s)\00", align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.14 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cconfiguration.cc, ptr null }]

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN14cConfiguration9parseBoolEPKcS1_b(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %4 = icmp eq ptr %0, null
  %5 = select i1 %4, ptr %1, ptr %0, !prof !80
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7, !prof !81

7:                                                ; preds = %3
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str) #22
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10, !prof !81

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.1) #22
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13, !prof !82

13:                                               ; preds = %10
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(3) @.str.2) #22
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16, !prof !83

16:                                               ; preds = %13
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(6) @.str.3) #22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !prof !84

19:                                               ; preds = %16
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #23
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str.4, ptr noundef nonnull %5)
          to label %21 unwind label %22

21:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #24
  unreachable

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %20) #23
  resume { ptr, i32 } %23

24:                                               ; preds = %13, %16, %7, %10, %3
  %25 = phi i1 [ %2, %3 ], [ true, %10 ], [ true, %7 ], [ false, %16 ], [ false, %13 ]
  ret i1 %25
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !95
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #25
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i64 @_ZN14cConfiguration9parseLongEPKcS1_l(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 align 2 !prof !96 {
  %4 = icmp eq ptr %0, null
  %5 = select i1 %4, ptr %1, ptr %0, !prof !97
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !97

7:                                                ; preds = %3
  %8 = tail call noundef i64 @_Z8opp_atolPKc(ptr noundef nonnull %5)
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi i64 [ %8, %7 ], [ %2, %3 ]
  ret i64 %10
}

declare noundef i64 @_Z8opp_atolPKc(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZN14cConfiguration11parseDoubleEPKcS1_S1_d(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3) local_unnamed_addr #6 align 2 !prof !85 {
  %5 = icmp eq ptr %0, null
  %6 = select i1 %5, ptr %2, ptr %0
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call noundef double @_ZN14UnitConversion13parseQuantityEPKcS1_(ptr noundef nonnull %6, ptr noundef %1)
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi double [ %9, %8 ], [ %3, %4 ]
  ret double %11
}

declare noundef double @_ZN14UnitConversion13parseQuantityEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !98 {
  %5 = alloca %"class.std::allocator", align 1
  %6 = icmp eq ptr %1, null
  %7 = select i1 %6, ptr %2, ptr %1, !prof !99
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !100

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #23
  br label %18

10:                                               ; preds = %4
  %11 = load i8, ptr %7, align 1, !tbaa !101
  %12 = icmp eq i8 %11, 34
  br i1 %12, label %13, label %14, !prof !102

13:                                               ; preds = %10
  tail call void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull %7)
  br label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %15, ptr %0, align 8, !tbaa !103
  %16 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #23
  %17 = getelementptr inbounds i8, ptr %7, i64 %16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %7, ptr noundef nonnull %17)
  br label %18

18:                                               ; preds = %14, %13, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !103
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.16) #24
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  store i64 %9, ptr %4, align 8, !tbaa !104
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !105

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !89
  %13 = load i64, ptr %4, align 8, !tbaa !104
  store i64 %13, ptr %5, align 8, !tbaa !101
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !89
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !106

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !101
  store i8 %17, ptr %15, align 1, !tbaa !101
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !107
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !104
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !95
  %22 = load ptr, ptr %0, align 8, !tbaa !89
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !101
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

declare void @_Z18opp_parsequotedstrB5cxx11PKc(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = icmp eq ptr %1, null
  %7 = select i1 %6, ptr %3, ptr %1, !prof !109
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !110

9:                                                ; preds = %4
  %10 = load i8, ptr %7, align 1, !tbaa !101
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15, !prof !111

12:                                               ; preds = %9, %4
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %13, ptr %0, align 8, !tbaa !103
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !95
  store i8 0, ptr %13, align 8, !tbaa !101
  br label %38

15:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @_Z16concatDirAndFileB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef %2, ptr noundef nonnull %7)
  %16 = load ptr, ptr %5, align 8, !tbaa !89
  invoke void @_Z12tidyFilenameB5cxx11PKcb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %16, i1 noundef zeroext false)
          to label %17 unwind label %27, !prof !112

17:                                               ; preds = %15
  %18 = load ptr, ptr %5, align 8, !tbaa !89
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %25, !prof !111

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !95
  %24 = icmp ult i64 %23, 16
  call void @llvm.assume(i1 %24)
  br label %26

25:                                               ; preds = %17
  call void @_ZdlPv(ptr noundef %18) #25
  br label %26

26:                                               ; preds = %21, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  br label %38

27:                                               ; preds = %15
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load ptr, ptr %5, align 8, !tbaa !89
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !95
  %35 = icmp ult i64 %34, 16
  call void @llvm.assume(i1 %35)
  br label %37

36:                                               ; preds = %27
  call void @_ZdlPv(ptr noundef %29) #25
  br label %37

37:                                               ; preds = %32, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  resume { ptr, i32 } %28

38:                                               ; preds = %12, %26
  ret void
}

declare void @_Z12tidyFilenameB5cxx11PKcb(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

declare void @_Z16concatDirAndFileB5cxx11PKcS0_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %5 = alloca %class.FilenamesListTokenizer, align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = alloca %"class.std::__cxx11::basic_string", align 8
  %9 = alloca %"class.std::__cxx11::basic_string", align 8
  %10 = alloca %"class.std::__cxx11::basic_string", align 8
  %11 = alloca %"class.std::__cxx11::basic_string", align 8
  %12 = alloca %"class.std::__cxx11::basic_string", align 8
  %13 = alloca %"class.std::__cxx11::basic_string", align 8
  %14 = icmp eq ptr %1, null
  %15 = select i1 %14, ptr %3, ptr %1, !prof !114
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.5, ptr %15, !prof !114
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  invoke void @_ZN22FilenamesListTokenizerC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %17)
          to label %18 unwind label %81, !prof !114

18:                                               ; preds = %4
  %19 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 2
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %9, i64 0, i32 1
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  br label %23

23:                                               ; preds = %169, %18
  %24 = invoke noundef ptr @_ZN22FilenamesListTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %25 unwind label %83, !prof !114

25:                                               ; preds = %23
  %26 = icmp eq ptr %24, null
  br i1 %26, label %256, label %27, !prof !114

27:                                               ; preds = %25
  %28 = load i8, ptr %24, align 1, !tbaa !101
  %29 = icmp eq i8 %28, 64
  br i1 %29, label %30, label %206

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %24, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !101
  %33 = icmp eq i8 %32, 64
  br i1 %33, label %34, label %121

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #23
  %35 = getelementptr inbounds i8, ptr %24, i64 2
  invoke void @_Z16concatDirAndFileB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef %2, ptr noundef nonnull %35)
          to label %36 unwind label %85

36:                                               ; preds = %34
  %37 = load ptr, ptr %8, align 8, !tbaa !89
  invoke void @_Z12tidyFilenameB5cxx11PKcb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %37, i1 noundef zeroext false)
          to label %38 unwind label %87

38:                                               ; preds = %36
  %39 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.6, i64 noundef 2)
          to label %40 unwind label %89

40:                                               ; preds = %38
  store ptr %21, ptr %6, align 8, !tbaa !103, !alias.scope !115
  %41 = load ptr, ptr %39, align 8, !tbaa !89
  %42 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %39, i64 0, i32 2
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %39, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !95
  %47 = icmp ult i64 %46, 16
  call void @llvm.assume(i1 %47)
  %48 = add nuw nsw i64 %46, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(1) %42, i64 %48, i1 false)
  br label %51

49:                                               ; preds = %40
  store ptr %41, ptr %6, align 8, !tbaa !89, !alias.scope !115
  %50 = load i64, ptr %42, align 8, !tbaa !101
  store i64 %50, ptr %21, align 8, !tbaa !101, !alias.scope !115
  br label %51

51:                                               ; preds = %44, %49
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %39, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !95
  store i64 %53, ptr %22, align 8, !tbaa !95, !alias.scope !115
  store ptr %42, ptr %39, align 8, !tbaa !89
  store i64 0, ptr %52, align 8, !tbaa !95
  store i8 0, ptr %42, align 8, !tbaa !101
  %54 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %55 unwind label %91

55:                                               ; preds = %51
  %56 = load ptr, ptr %6, align 8, !tbaa !89
  %57 = icmp eq ptr %56, %21
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, ptr %22, align 8, !tbaa !95
  %60 = icmp ult i64 %59, 16
  call void @llvm.assume(i1 %60)
  br label %62

61:                                               ; preds = %55
  call void @_ZdlPv(ptr noundef %56) #25
  br label %62

62:                                               ; preds = %58, %61
  %63 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %64 = load ptr, ptr %7, align 8, !tbaa !89
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !95
  %69 = icmp ult i64 %68, 16
  call void @llvm.assume(i1 %69)
  br label %71

70:                                               ; preds = %62
  call void @_ZdlPv(ptr noundef %64) #25
  br label %71

71:                                               ; preds = %66, %70
  %72 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %73 = load ptr, ptr %8, align 8, !tbaa !89
  %74 = icmp eq ptr %73, %72
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !95
  %78 = icmp ult i64 %77, 16
  call void @llvm.assume(i1 %78)
  br label %80

79:                                               ; preds = %71
  call void @_ZdlPv(ptr noundef %73) #25
  br label %80

80:                                               ; preds = %75, %79
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  br label %169

81:                                               ; preds = %4
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %259

83:                                               ; preds = %23
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %257

85:                                               ; preds = %34
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %119

87:                                               ; preds = %36
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %109

89:                                               ; preds = %38
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %99

91:                                               ; preds = %51
  %92 = landingpad { ptr, i32 }
          cleanup
  %93 = load ptr, ptr %6, align 8, !tbaa !89
  %94 = icmp eq ptr %93, %21
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i64, ptr %22, align 8, !tbaa !95
  %97 = icmp ult i64 %96, 16
  call void @llvm.assume(i1 %97)
  br label %99

98:                                               ; preds = %91
  call void @_ZdlPv(ptr noundef %93) #25
  br label %99

99:                                               ; preds = %98, %95, %89
  %100 = phi { ptr, i32 } [ %90, %89 ], [ %92, %95 ], [ %92, %98 ]
  %101 = load ptr, ptr %7, align 8, !tbaa !89
  %102 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %103 = icmp eq ptr %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %99
  %105 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !95
  %107 = icmp ult i64 %106, 16
  call void @llvm.assume(i1 %107)
  br label %109

108:                                              ; preds = %99
  call void @_ZdlPv(ptr noundef %101) #25
  br label %109

109:                                              ; preds = %108, %104, %87
  %110 = phi { ptr, i32 } [ %88, %87 ], [ %100, %104 ], [ %100, %108 ]
  %111 = load ptr, ptr %8, align 8, !tbaa !89
  %112 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 2
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %8, i64 0, i32 1
  %116 = load i64, ptr %115, align 8, !tbaa !95
  %117 = icmp ult i64 %116, 16
  call void @llvm.assume(i1 %117)
  br label %119

118:                                              ; preds = %109
  call void @_ZdlPv(ptr noundef %111) #25
  br label %119

119:                                              ; preds = %118, %114, %85
  %120 = phi { ptr, i32 } [ %86, %85 ], [ %110, %114 ], [ %110, %118 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  br label %257

121:                                              ; preds = %30
  br i1 %29, label %122, label %206

122:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #23
  %123 = getelementptr inbounds i8, ptr %24, i64 1
  invoke void @_Z16concatDirAndFileB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef %2, ptr noundef nonnull %123)
          to label %124 unwind label %170

124:                                              ; preds = %122
  %125 = load ptr, ptr %11, align 8, !tbaa !89
  invoke void @_Z12tidyFilenameB5cxx11PKcb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef %125, i1 noundef zeroext false)
          to label %126 unwind label %172

126:                                              ; preds = %124
  %127 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.7, i64 noundef 1)
          to label %128 unwind label %174

128:                                              ; preds = %126
  store ptr %19, ptr %9, align 8, !tbaa !103, !alias.scope !118
  %129 = load ptr, ptr %127, align 8, !tbaa !89
  %130 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %127, i64 0, i32 2
  %131 = icmp eq ptr %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %127, i64 0, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !95
  %135 = icmp ult i64 %134, 16
  call void @llvm.assume(i1 %135)
  %136 = add nuw nsw i64 %134, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(1) %130, i64 %136, i1 false)
  br label %139

137:                                              ; preds = %128
  store ptr %129, ptr %9, align 8, !tbaa !89, !alias.scope !118
  %138 = load i64, ptr %130, align 8, !tbaa !101
  store i64 %138, ptr %19, align 8, !tbaa !101, !alias.scope !118
  br label %139

139:                                              ; preds = %132, %137
  %140 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %127, i64 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !95
  store i64 %141, ptr %20, align 8, !tbaa !95, !alias.scope !118
  store ptr %130, ptr %127, align 8, !tbaa !89
  store i64 0, ptr %140, align 8, !tbaa !95
  store i8 0, ptr %130, align 8, !tbaa !101
  %142 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %143 unwind label %176

143:                                              ; preds = %139
  %144 = load ptr, ptr %9, align 8, !tbaa !89
  %145 = icmp eq ptr %144, %19
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i64, ptr %20, align 8, !tbaa !95
  %148 = icmp ult i64 %147, 16
  call void @llvm.assume(i1 %148)
  br label %150

149:                                              ; preds = %143
  call void @_ZdlPv(ptr noundef %144) #25
  br label %150

150:                                              ; preds = %146, %149
  %151 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %152 = load ptr, ptr %10, align 8, !tbaa !89
  %153 = icmp eq ptr %152, %151
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !95
  %157 = icmp ult i64 %156, 16
  call void @llvm.assume(i1 %157)
  br label %159

158:                                              ; preds = %150
  call void @_ZdlPv(ptr noundef %152) #25
  br label %159

159:                                              ; preds = %154, %158
  %160 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %161 = load ptr, ptr %11, align 8, !tbaa !89
  %162 = icmp eq ptr %161, %160
  br i1 %162, label %163, label %167

163:                                              ; preds = %159
  %164 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %165 = load i64, ptr %164, align 8, !tbaa !95
  %166 = icmp ult i64 %165, 16
  call void @llvm.assume(i1 %166)
  br label %168

167:                                              ; preds = %159
  call void @_ZdlPv(ptr noundef %161) #25
  br label %168

168:                                              ; preds = %163, %167
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #23
  br label %169

169:                                              ; preds = %168, %229, %80
  br label %23, !llvm.loop !121

170:                                              ; preds = %122
  %171 = landingpad { ptr, i32 }
          cleanup
  br label %204

172:                                              ; preds = %124
  %173 = landingpad { ptr, i32 }
          cleanup
  br label %194

174:                                              ; preds = %126
  %175 = landingpad { ptr, i32 }
          cleanup
  br label %184

176:                                              ; preds = %139
  %177 = landingpad { ptr, i32 }
          cleanup
  %178 = load ptr, ptr %9, align 8, !tbaa !89
  %179 = icmp eq ptr %178, %19
  br i1 %179, label %180, label %183

180:                                              ; preds = %176
  %181 = load i64, ptr %20, align 8, !tbaa !95
  %182 = icmp ult i64 %181, 16
  call void @llvm.assume(i1 %182)
  br label %184

183:                                              ; preds = %176
  call void @_ZdlPv(ptr noundef %178) #25
  br label %184

184:                                              ; preds = %183, %180, %174
  %185 = phi { ptr, i32 } [ %175, %174 ], [ %177, %180 ], [ %177, %183 ]
  %186 = load ptr, ptr %10, align 8, !tbaa !89
  %187 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 2
  %188 = icmp eq ptr %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %184
  %190 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %10, i64 0, i32 1
  %191 = load i64, ptr %190, align 8, !tbaa !95
  %192 = icmp ult i64 %191, 16
  call void @llvm.assume(i1 %192)
  br label %194

193:                                              ; preds = %184
  call void @_ZdlPv(ptr noundef %186) #25
  br label %194

194:                                              ; preds = %193, %189, %172
  %195 = phi { ptr, i32 } [ %173, %172 ], [ %185, %189 ], [ %185, %193 ]
  %196 = load ptr, ptr %11, align 8, !tbaa !89
  %197 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 2
  %198 = icmp eq ptr %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %11, i64 0, i32 1
  %201 = load i64, ptr %200, align 8, !tbaa !95
  %202 = icmp ult i64 %201, 16
  call void @llvm.assume(i1 %202)
  br label %204

203:                                              ; preds = %194
  call void @_ZdlPv(ptr noundef %196) #25
  br label %204

204:                                              ; preds = %203, %199, %170
  %205 = phi { ptr, i32 } [ %171, %170 ], [ %195, %199 ], [ %195, %203 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #23
  br label %257

206:                                              ; preds = %27, %121
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #23
  invoke void @_Z16concatDirAndFileB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef %2, ptr noundef nonnull %24)
          to label %207 unwind label %230

207:                                              ; preds = %206
  %208 = load ptr, ptr %13, align 8, !tbaa !89
  invoke void @_Z12tidyFilenameB5cxx11PKcb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef %208, i1 noundef zeroext false)
          to label %209 unwind label %232

209:                                              ; preds = %207
  %210 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %211 unwind label %234

211:                                              ; preds = %209
  %212 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %213 = load ptr, ptr %12, align 8, !tbaa !89
  %214 = icmp eq ptr %213, %212
  br i1 %214, label %215, label %219

215:                                              ; preds = %211
  %216 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %217 = load i64, ptr %216, align 8, !tbaa !95
  %218 = icmp ult i64 %217, 16
  call void @llvm.assume(i1 %218)
  br label %220

219:                                              ; preds = %211
  call void @_ZdlPv(ptr noundef %213) #25
  br label %220

220:                                              ; preds = %215, %219
  %221 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %222 = load ptr, ptr %13, align 8, !tbaa !89
  %223 = icmp eq ptr %222, %221
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %226 = load i64, ptr %225, align 8, !tbaa !95
  %227 = icmp ult i64 %226, 16
  call void @llvm.assume(i1 %227)
  br label %229

228:                                              ; preds = %220
  call void @_ZdlPv(ptr noundef %222) #25
  br label %229

229:                                              ; preds = %224, %228
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #23
  br label %169

230:                                              ; preds = %206
  %231 = landingpad { ptr, i32 }
          cleanup
  br label %254

232:                                              ; preds = %207
  %233 = landingpad { ptr, i32 }
          cleanup
  br label %244

234:                                              ; preds = %209
  %235 = landingpad { ptr, i32 }
          cleanup
  %236 = load ptr, ptr %12, align 8, !tbaa !89
  %237 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 2
  %238 = icmp eq ptr %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %234
  %240 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %12, i64 0, i32 1
  %241 = load i64, ptr %240, align 8, !tbaa !95
  %242 = icmp ult i64 %241, 16
  call void @llvm.assume(i1 %242)
  br label %244

243:                                              ; preds = %234
  call void @_ZdlPv(ptr noundef %236) #25
  br label %244

244:                                              ; preds = %243, %239, %232
  %245 = phi { ptr, i32 } [ %233, %232 ], [ %235, %239 ], [ %235, %243 ]
  %246 = load ptr, ptr %13, align 8, !tbaa !89
  %247 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 2
  %248 = icmp eq ptr %246, %247
  br i1 %248, label %249, label %253

249:                                              ; preds = %244
  %250 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %13, i64 0, i32 1
  %251 = load i64, ptr %250, align 8, !tbaa !95
  %252 = icmp ult i64 %251, 16
  call void @llvm.assume(i1 %252)
  br label %254

253:                                              ; preds = %244
  call void @_ZdlPv(ptr noundef %246) #25
  br label %254

254:                                              ; preds = %253, %249, %230
  %255 = phi { ptr, i32 } [ %231, %230 ], [ %245, %249 ], [ %245, %253 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #23
  br label %257

256:                                              ; preds = %25
  call void @_ZN22FilenamesListTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  ret void

257:                                              ; preds = %254, %204, %119, %83
  %258 = phi { ptr, i32 } [ %120, %119 ], [ %205, %204 ], [ %255, %254 ], [ %84, %83 ]
  call void @_ZN22FilenamesListTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #23
  br label %259

259:                                              ; preds = %257, %81
  %260 = phi { ptr, i32 } [ %258, %257 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #23
  resume { ptr, i32 } %260
}

declare void @_ZN22FilenamesListTokenizerC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #0

declare noundef ptr @_ZN22FilenamesListTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN22FilenamesListTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !124 {
  %2 = load ptr, ptr %0, align 8, !tbaa !125
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !127
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %19, label %6, !prof !128

6:                                                ; preds = %1, %16
  %7 = phi ptr [ %17, %16 ], [ %2, %1 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %15, !prof !129

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !95
  %14 = icmp ult i64 %13, 16
  tail call void @llvm.assume(i1 %14)
  br label %16

15:                                               ; preds = %6
  tail call void @_ZdlPv(ptr noundef %8) #25
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 1
  %18 = icmp eq ptr %17, %4
  br i1 %18, label %19, label %6, !prof !130, !llvm.loop !131

19:                                               ; preds = %16, %1
  %20 = load ptr, ptr %0, align 8, !tbaa !125
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22, !prof !132

22:                                               ; preds = %19
  tail call void @_ZdlPv(ptr noundef %20) #25
  br label %23

23:                                               ; preds = %19, %22
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %5 = alloca %class.StringTokenizer, align 8
  %6 = alloca %"class.std::__cxx11::basic_string", align 8
  %7 = alloca %"class.std::__cxx11::basic_string", align 8
  %8 = icmp eq ptr %1, null
  %9 = select i1 %8, ptr %3, ptr %1, !prof !133
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, ptr @.str.5, ptr %9, !prof !133
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %12, ptr %0, align 8, !tbaa !103
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 0, ptr %13, align 8, !tbaa !95
  store i8 0, ptr %12, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #23
  invoke void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %11, ptr noundef nonnull @.str.8)
          to label %14 unwind label %25, !prof !114

14:                                               ; preds = %4
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 1
  br label %16

16:                                               ; preds = %14, %59
  %17 = invoke noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %18 unwind label %27, !prof !97

18:                                               ; preds = %16
  %19 = icmp eq ptr %17, null
  br i1 %19, label %89, label %20, !prof !134

20:                                               ; preds = %18
  %21 = load i64, ptr %13, align 8, !tbaa !95
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23, !prof !114

23:                                               ; preds = %20
  %24 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull @.str.9)
          to label %29 unwind label %27

25:                                               ; preds = %4
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %92

27:                                               ; preds = %23, %16
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %90

29:                                               ; preds = %23, %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #23
  invoke void @_Z16concatDirAndFileB5cxx11PKcS0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef %2, ptr noundef nonnull %17)
          to label %30 unwind label %60, !prof !114

30:                                               ; preds = %29
  %31 = load ptr, ptr %7, align 8, !tbaa !89
  invoke void @_Z12tidyFilenameB5cxx11PKcb(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef %31, i1 noundef zeroext false)
          to label %32 unwind label %62, !prof !114

32:                                               ; preds = %30
  %33 = load i64, ptr %15, align 8, !tbaa !95
  %34 = load i64, ptr %13, align 8, !tbaa !95
  %35 = sub i64 4611686018427387903, %34
  %36 = icmp ult i64 %35, %33
  br i1 %36, label %37, label %39, !prof !133

37:                                               ; preds = %32
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #24
          to label %38 unwind label %66

38:                                               ; preds = %37
  unreachable

39:                                               ; preds = %32
  %40 = load ptr, ptr %6, align 8, !tbaa !89
  %41 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %40, i64 noundef %33)
          to label %42 unwind label %64, !prof !114

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %44 = load ptr, ptr %6, align 8, !tbaa !89
  %45 = icmp eq ptr %44, %43
  br i1 %45, label %46, label %49, !prof !133

46:                                               ; preds = %42
  %47 = load i64, ptr %15, align 8, !tbaa !95
  %48 = icmp ult i64 %47, 16
  call void @llvm.assume(i1 %48)
  br label %50

49:                                               ; preds = %42
  call void @_ZdlPv(ptr noundef %44) #25
  br label %50

50:                                               ; preds = %46, %49
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %52 = load ptr, ptr %7, align 8, !tbaa !89
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %54, label %58, !prof !133

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !95
  %57 = icmp ult i64 %56, 16
  call void @llvm.assume(i1 %57)
  br label %59

58:                                               ; preds = %50
  call void @_ZdlPv(ptr noundef %52) #25
  br label %59

59:                                               ; preds = %54, %58
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  br label %16, !llvm.loop !135

60:                                               ; preds = %29
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %87

62:                                               ; preds = %30
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %77

64:                                               ; preds = %39
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %68

66:                                               ; preds = %37
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi { ptr, i32 } [ %65, %64 ], [ %67, %66 ]
  %70 = load ptr, ptr %6, align 8, !tbaa !89
  %71 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %6, i64 0, i32 2
  %72 = icmp eq ptr %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i64, ptr %15, align 8, !tbaa !95
  %75 = icmp ult i64 %74, 16
  call void @llvm.assume(i1 %75)
  br label %77

76:                                               ; preds = %68
  call void @_ZdlPv(ptr noundef %70) #25
  br label %77

77:                                               ; preds = %76, %73, %62
  %78 = phi { ptr, i32 } [ %63, %62 ], [ %69, %73 ], [ %69, %76 ]
  %79 = load ptr, ptr %7, align 8, !tbaa !89
  %80 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !95
  %85 = icmp ult i64 %84, 16
  call void @llvm.assume(i1 %85)
  br label %87

86:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #25
  br label %87

87:                                               ; preds = %86, %82, %60
  %88 = phi { ptr, i32 } [ %61, %60 ], [ %78, %82 ], [ %78, %86 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #23
  br label %90

89:                                               ; preds = %18
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #23
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #23
  ret void

90:                                               ; preds = %87, %27
  %91 = phi { ptr, i32 } [ %88, %87 ], [ %28, %27 ]
  call void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #23
  br label %92

92:                                               ; preds = %90, %25
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #23
  %94 = load ptr, ptr %0, align 8, !tbaa !89
  %95 = icmp eq ptr %94, %12
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i64, ptr %13, align 8, !tbaa !95
  %98 = icmp ult i64 %97, 16
  call void @llvm.assume(i1 %98)
  br label %100

99:                                               ; preds = %92
  call void @_ZdlPv(ptr noundef %94) #25
  br label %100

100:                                              ; preds = %96, %99
  resume { ptr, i32 } %93
}

declare void @_ZN15StringTokenizerC1EPKcS1_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_ZN15StringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN15StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN14cConfiguration11getAsCustomEP13cConfigOptionPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %1, i1 noundef zeroext false, i32 noundef 7)
  %4 = load ptr, ptr %1, align 8, !tbaa !86
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %8 unwind label %29

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !86
  %10 = getelementptr inbounds ptr, ptr %9, i64 20
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7)
          to label %13 unwind label %29

13:                                               ; preds = %8
  %14 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 5
  %15 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 5, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !95
  %17 = icmp eq i64 %16, 0
  %18 = load ptr, ptr %14, align 8
  %19 = select i1 %17, ptr null, ptr %18
  %20 = load ptr, ptr %0, align 8, !tbaa !86
  %21 = getelementptr inbounds ptr, ptr %20, i64 19
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19)
          to label %24 unwind label %29

24:                                               ; preds = %13
  %25 = icmp eq ptr %12, null
  %26 = icmp eq ptr %23, null
  %27 = select i1 %26, ptr %2, ptr %23
  %28 = select i1 %25, ptr %27, ptr %12
  ret ptr %28

29:                                               ; preds = %13, %8, %3
  %30 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %31 = extractvalue { ptr, i32 } %30, 1
  %32 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %29
  %35 = extractvalue { ptr, i32 } %30, 0
  %36 = tail call ptr @__cxa_begin_catch(ptr %35) #23
  %37 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %38 = load ptr, ptr %1, align 8, !tbaa !86
  %39 = getelementptr inbounds ptr, ptr %38, i64 6
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %42 unwind label %48

42:                                               ; preds = %34
  %43 = load ptr, ptr %36, align 8, !tbaa !86
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %36) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %37, ptr noundef nonnull @.str.10, ptr noundef %41, ptr noundef %46)
          to label %47 unwind label %48

47:                                               ; preds = %42
  invoke void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %59 unwind label %50

48:                                               ; preds = %42, %34
  %49 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %37) #23
  br label %52

50:                                               ; preds = %47
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  invoke void @__cxa_end_catch()
          to label %54 unwind label %56

54:                                               ; preds = %52, %29
  %55 = phi { ptr, i32 } [ %30, %29 ], [ %53, %52 ]
  resume { ptr, i32 } %55

56:                                               ; preds = %52
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #26
  unreachable

59:                                               ; preds = %47
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 !prof !136 !PGOFuncName !137 {
  %4 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 4, !tbaa !138, !range !148, !noundef !149
  %6 = icmp ne i8 %5, 0
  %7 = xor i1 %6, %1
  br i1 %7, label %8, label %25, !prof !150

8:                                                ; preds = %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %10 = load ptr, ptr %0, align 8, !tbaa !86
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  br i1 %6, label %13, label %19

13:                                               ; preds = %8
  %14 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(20) %0)
          to label %15 unwind label %17

15:                                               ; preds = %13
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.11, ptr noundef %14)
          to label %16 unwind label %17

16:                                               ; preds = %15
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
  unreachable

17:                                               ; preds = %15, %13
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %45

19:                                               ; preds = %8
  %20 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(20) %0)
          to label %21 unwind label %23

21:                                               ; preds = %19
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %9, ptr noundef nonnull @.str.12, ptr noundef %20)
          to label %22 unwind label %23

22:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
  unreachable

23:                                               ; preds = %21, %19
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %45

25:                                               ; preds = %3
  %26 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !151
  %28 = icmp eq i32 %27, %2
  br i1 %28, label %44, label %29, !prof !152

29:                                               ; preds = %25
  %30 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %31 = load ptr, ptr %0, align 8, !tbaa !86
  %32 = getelementptr inbounds ptr, ptr %31, i64 6
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(20) %0)
          to label %35 unwind label %42

35:                                               ; preds = %29
  %36 = invoke noundef ptr @_ZN13cConfigOption11getTypeNameENS_4TypeE(i32 noundef %2)
          to label %37 unwind label %42

37:                                               ; preds = %35
  %38 = load i32, ptr %26, align 8, !tbaa !151
  %39 = invoke noundef ptr @_ZN13cConfigOption11getTypeNameENS_4TypeE(i32 noundef %38)
          to label %40 unwind label %42

40:                                               ; preds = %37
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %30, ptr noundef nonnull @.str.13, ptr noundef %34, ptr noundef %36, ptr noundef %39)
          to label %41 unwind label %42

41:                                               ; preds = %40
  tail call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
  unreachable

42:                                               ; preds = %40, %37, %35, %29
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %45

44:                                               ; preds = %25
  ret void

45:                                               ; preds = %42, %23, %17
  %46 = phi ptr [ %30, %42 ], [ %9, %23 ], [ %9, %17 ]
  %47 = phi { ptr, i32 } [ %43, %42 ], [ %24, %23 ], [ %18, %17 ]
  tail call void @__cxa_free_exception(ptr %46) #23
  resume { ptr, i32 } %47
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !85 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #23
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN14cConfiguration9getAsBoolEP13cConfigOptionb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !153 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %1, i1 noundef zeroext false, i32 noundef 0)
  %4 = load ptr, ptr %1, align 8, !tbaa !86
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %8 unwind label %27, !prof !154

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !86
  %10 = getelementptr inbounds ptr, ptr %9, i64 20
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7)
          to label %13 unwind label %27, !prof !155

13:                                               ; preds = %8
  %14 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 5
  %15 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 5, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !95
  %17 = icmp eq i64 %16, 0
  %18 = load ptr, ptr %14, align 8
  %19 = select i1 %17, ptr null, ptr %18, !prof !156
  %20 = load ptr, ptr %0, align 8, !tbaa !86
  %21 = getelementptr inbounds ptr, ptr %20, i64 19
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19)
          to label %24 unwind label %27, !prof !157

24:                                               ; preds = %13
  %25 = invoke noundef zeroext i1 @_ZN14cConfiguration9parseBoolEPKcS1_b(ptr noundef %12, ptr noundef %23, i1 noundef zeroext %2)
          to label %26 unwind label %27, !prof !158

26:                                               ; preds = %24
  ret i1 %25

27:                                               ; preds = %24, %13, %8, %3
  %28 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %29 = extractvalue { ptr, i32 } %28, 1
  %30 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = extractvalue { ptr, i32 } %28, 0
  %34 = tail call ptr @__cxa_begin_catch(ptr %33) #23
  %35 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %36 = load ptr, ptr %1, align 8, !tbaa !86
  %37 = getelementptr inbounds ptr, ptr %36, i64 6
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %40 unwind label %46

40:                                               ; preds = %32
  %41 = load ptr, ptr %34, align 8, !tbaa !86
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %34) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %35, ptr noundef nonnull @.str.10, ptr noundef %39, ptr noundef %44)
          to label %45 unwind label %46

45:                                               ; preds = %40
  invoke void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %57 unwind label %48

46:                                               ; preds = %40, %32
  %47 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %35) #23
  br label %50

48:                                               ; preds = %45
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %47, %46 ]
  invoke void @__cxa_end_catch()
          to label %52 unwind label %54

52:                                               ; preds = %50, %27
  %53 = phi { ptr, i32 } [ %28, %27 ], [ %51, %50 ]
  resume { ptr, i32 } %53

54:                                               ; preds = %50
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  tail call void @__clang_call_terminate(ptr %56) #26
  unreachable

57:                                               ; preds = %45
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i64 @_ZN14cConfiguration8getAsIntEP13cConfigOptionl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !159 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %1, i1 noundef zeroext false, i32 noundef 1)
  %4 = load ptr, ptr %1, align 8, !tbaa !86
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %8 unwind label %32, !prof !160

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !86
  %10 = getelementptr inbounds ptr, ptr %9, i64 20
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7)
          to label %13 unwind label %32, !prof !161

13:                                               ; preds = %8
  %14 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 5
  %15 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 5, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !95
  %17 = icmp eq i64 %16, 0
  %18 = load ptr, ptr %14, align 8
  %19 = select i1 %17, ptr null, ptr %18, !prof !162
  %20 = load ptr, ptr %0, align 8, !tbaa !86
  %21 = getelementptr inbounds ptr, ptr %20, i64 19
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19)
          to label %24 unwind label %32, !prof !163

24:                                               ; preds = %13
  %25 = icmp eq ptr %12, null
  %26 = select i1 %25, ptr %23, ptr %12, !prof !164
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !162

28:                                               ; preds = %24
  %29 = invoke noundef i64 @_Z8opp_atolPKc(ptr noundef nonnull %26)
          to label %30 unwind label %32, !prof !165

30:                                               ; preds = %24, %28
  %31 = phi i64 [ %2, %24 ], [ %29, %28 ]
  ret i64 %31

32:                                               ; preds = %28, %13, %8, %3
  %33 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %34 = extractvalue { ptr, i32 } %33, 1
  %35 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %32
  %38 = extractvalue { ptr, i32 } %33, 0
  %39 = tail call ptr @__cxa_begin_catch(ptr %38) #23
  %40 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %41 = load ptr, ptr %1, align 8, !tbaa !86
  %42 = getelementptr inbounds ptr, ptr %41, i64 6
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %45 unwind label %51

45:                                               ; preds = %37
  %46 = load ptr, ptr %39, align 8, !tbaa !86
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %39) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %40, ptr noundef nonnull @.str.10, ptr noundef %44, ptr noundef %49)
          to label %50 unwind label %51

50:                                               ; preds = %45
  invoke void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %62 unwind label %53

51:                                               ; preds = %45, %37
  %52 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %40) #23
  br label %55

53:                                               ; preds = %50
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %52, %51 ]
  invoke void @__cxa_end_catch()
          to label %57 unwind label %59

57:                                               ; preds = %55, %32
  %58 = phi { ptr, i32 } [ %33, %32 ], [ %56, %55 ]
  resume { ptr, i32 } %58

59:                                               ; preds = %55
  %60 = landingpad { ptr, i32 }
          catch ptr null
  %61 = extractvalue { ptr, i32 } %60, 0
  tail call void @__clang_call_terminate(ptr %61) #26
  unreachable

62:                                               ; preds = %50
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZN14cConfiguration11getAsDoubleEP13cConfigOptiond(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, double noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !166 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %1, i1 noundef zeroext false, i32 noundef 2)
  %4 = load ptr, ptr %1, align 8, !tbaa !86
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %8 unwind label %38, !prof !167

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8, !tbaa !86
  %10 = getelementptr inbounds ptr, ptr %9, i64 20
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7)
          to label %13 unwind label %38, !prof !168

13:                                               ; preds = %8
  %14 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 4
  %15 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 4, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !95
  %17 = icmp eq i64 %16, 0
  %18 = load ptr, ptr %14, align 8
  %19 = select i1 %17, ptr null, ptr %18, !prof !102
  %20 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 5
  %21 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 5, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !95
  %23 = icmp eq i64 %22, 0
  %24 = load ptr, ptr %20, align 8
  %25 = select i1 %23, ptr null, ptr %24, !prof !169
  %26 = load ptr, ptr %0, align 8, !tbaa !86
  %27 = getelementptr inbounds ptr, ptr %26, i64 19
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %25)
          to label %30 unwind label %38, !prof !170

30:                                               ; preds = %13
  %31 = icmp eq ptr %12, null
  %32 = select i1 %31, ptr %29, ptr %12, !prof !171
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !172

34:                                               ; preds = %30
  %35 = invoke noundef double @_ZN14UnitConversion13parseQuantityEPKcS1_(ptr noundef nonnull %32, ptr noundef %19)
          to label %36 unwind label %38, !prof !173

36:                                               ; preds = %30, %34
  %37 = phi double [ %2, %30 ], [ %35, %34 ]
  ret double %37

38:                                               ; preds = %34, %13, %8, %3
  %39 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %40 = extractvalue { ptr, i32 } %39, 1
  %41 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %38
  %44 = extractvalue { ptr, i32 } %39, 0
  %45 = tail call ptr @__cxa_begin_catch(ptr %44) #23
  %46 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %47 = load ptr, ptr %1, align 8, !tbaa !86
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %51 unwind label %57

51:                                               ; preds = %43
  %52 = load ptr, ptr %45, align 8, !tbaa !86
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %45) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %46, ptr noundef nonnull @.str.10, ptr noundef %50, ptr noundef %55)
          to label %56 unwind label %57

56:                                               ; preds = %51
  invoke void @__cxa_throw(ptr nonnull %46, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %68 unwind label %59

57:                                               ; preds = %51, %43
  %58 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %46) #23
  br label %61

59:                                               ; preds = %56
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi { ptr, i32 } [ %60, %59 ], [ %58, %57 ]
  invoke void @__cxa_end_catch()
          to label %63 unwind label %65

63:                                               ; preds = %61, %38
  %64 = phi { ptr, i32 } [ %39, %38 ], [ %62, %61 ]
  resume { ptr, i32 } %64

65:                                               ; preds = %61
  %66 = landingpad { ptr, i32 }
          catch ptr null
  %67 = extractvalue { ptr, i32 } %66, 0
  tail call void @__clang_call_terminate(ptr %67) #26
  unreachable

68:                                               ; preds = %56
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cConfiguration11getAsStringB5cxx11EP13cConfigOptionPKc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !98 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext false, i32 noundef 3)
  %5 = load ptr, ptr %2, align 8, !tbaa !86
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %9 unwind label %27, !prof !174

9:                                                ; preds = %4
  %10 = load ptr, ptr %1, align 8, !tbaa !86
  %11 = getelementptr inbounds ptr, ptr %10, i64 20
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %8)
          to label %14 unwind label %27, !prof !175

14:                                               ; preds = %9
  %15 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5
  %16 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !95
  %18 = icmp eq i64 %17, 0
  %19 = load ptr, ptr %15, align 8
  %20 = select i1 %18, ptr null, ptr %19, !prof !176
  %21 = load ptr, ptr %1, align 8, !tbaa !86
  %22 = getelementptr inbounds ptr, ptr %21, i64 19
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %20)
          to label %25 unwind label %27, !prof !177

25:                                               ; preds = %14
  invoke void @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %13, ptr noundef %24, ptr noundef %3)
          to label %26 unwind label %27, !prof !178

26:                                               ; preds = %25
  ret void

27:                                               ; preds = %25, %14, %9, %4
  %28 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %29 = extractvalue { ptr, i32 } %28, 1
  %30 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %27
  %33 = extractvalue { ptr, i32 } %28, 0
  %34 = tail call ptr @__cxa_begin_catch(ptr %33) #23
  %35 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %36 = load ptr, ptr %2, align 8, !tbaa !86
  %37 = getelementptr inbounds ptr, ptr %36, i64 6
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %40 unwind label %46

40:                                               ; preds = %32
  %41 = load ptr, ptr %34, align 8, !tbaa !86
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %34) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %35, ptr noundef nonnull @.str.10, ptr noundef %39, ptr noundef %44)
          to label %45 unwind label %46

45:                                               ; preds = %40
  invoke void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %57 unwind label %48

46:                                               ; preds = %40, %32
  %47 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %35) #23
  br label %50

48:                                               ; preds = %45
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %47, %46 ]
  invoke void @__cxa_end_catch()
          to label %52 unwind label %54

52:                                               ; preds = %50, %27
  %53 = phi { ptr, i32 } [ %28, %27 ], [ %51, %50 ]
  resume { ptr, i32 } %53

54:                                               ; preds = %50
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  tail call void @__clang_call_terminate(ptr %56) #26
  unreachable

57:                                               ; preds = %45
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cConfiguration13getAsFilenameB5cxx11EP13cConfigOption(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext false, i32 noundef 4)
  %4 = load ptr, ptr %2, align 8, !tbaa !86
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %2), !prof !179
  %8 = load ptr, ptr %1, align 8, !tbaa !86
  %9 = getelementptr inbounds ptr, ptr %8, i64 21
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7), !prof !180
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %16 unwind label %34, !prof !181

16:                                               ; preds = %3
  %17 = load ptr, ptr %11, align 8, !tbaa !86
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %21 unwind label %34, !prof !182

21:                                               ; preds = %16
  %22 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5
  %23 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !95
  %25 = icmp eq i64 %24, 0
  %26 = load ptr, ptr %22, align 8
  %27 = select i1 %25, ptr null, ptr %26, !prof !110
  %28 = load ptr, ptr %1, align 8, !tbaa !86
  %29 = getelementptr inbounds ptr, ptr %28, i64 19
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %27)
          to label %32 unwind label %34, !prof !183

32:                                               ; preds = %21
  invoke void @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %15, ptr noundef %20, ptr noundef %31)
          to label %33 unwind label %34, !prof !173

33:                                               ; preds = %32
  ret void

34:                                               ; preds = %32, %21, %16, %3
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %36 = extractvalue { ptr, i32 } %35, 1
  %37 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = extractvalue { ptr, i32 } %35, 0
  %41 = tail call ptr @__cxa_begin_catch(ptr %40) #23
  %42 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %43 = load ptr, ptr %2, align 8, !tbaa !86
  %44 = getelementptr inbounds ptr, ptr %43, i64 6
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %47 unwind label %53

47:                                               ; preds = %39
  %48 = load ptr, ptr %41, align 8, !tbaa !86
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %41) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %42, ptr noundef nonnull @.str.10, ptr noundef %46, ptr noundef %51)
          to label %52 unwind label %53

52:                                               ; preds = %47
  invoke void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %64 unwind label %55

53:                                               ; preds = %47, %39
  %54 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %42) #23
  br label %57

55:                                               ; preds = %52
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi { ptr, i32 } [ %56, %55 ], [ %54, %53 ]
  invoke void @__cxa_end_catch()
          to label %59 unwind label %61

59:                                               ; preds = %57, %34
  %60 = phi { ptr, i32 } [ %35, %34 ], [ %58, %57 ]
  resume { ptr, i32 } %60

61:                                               ; preds = %57
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  tail call void @__clang_call_terminate(ptr %63) #26
  unreachable

64:                                               ; preds = %52
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cConfiguration14getAsFilenamesB5cxx11EP13cConfigOption(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext false, i32 noundef 5)
  %4 = load ptr, ptr %2, align 8, !tbaa !86
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %2), !prof !184
  %8 = load ptr, ptr %1, align 8, !tbaa !86
  %9 = getelementptr inbounds ptr, ptr %8, i64 21
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7), !prof !185
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %16 unwind label %34, !prof !186

16:                                               ; preds = %3
  %17 = load ptr, ptr %11, align 8, !tbaa !86
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %21 unwind label %34, !prof !187

21:                                               ; preds = %16
  %22 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5
  %23 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !95
  %25 = icmp eq i64 %24, 0
  %26 = load ptr, ptr %22, align 8
  %27 = select i1 %25, ptr null, ptr %26, !prof !114
  %28 = load ptr, ptr %1, align 8, !tbaa !86
  %29 = getelementptr inbounds ptr, ptr %28, i64 19
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %27)
          to label %32 unwind label %34, !prof !188

32:                                               ; preds = %21
  invoke void @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef %15, ptr noundef %20, ptr noundef %31)
          to label %33 unwind label %34, !prof !114

33:                                               ; preds = %32
  ret void

34:                                               ; preds = %32, %21, %16, %3
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %36 = extractvalue { ptr, i32 } %35, 1
  %37 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = extractvalue { ptr, i32 } %35, 0
  %41 = tail call ptr @__cxa_begin_catch(ptr %40) #23
  %42 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %43 = load ptr, ptr %2, align 8, !tbaa !86
  %44 = getelementptr inbounds ptr, ptr %43, i64 6
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %47 unwind label %53

47:                                               ; preds = %39
  %48 = load ptr, ptr %41, align 8, !tbaa !86
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %41) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %42, ptr noundef nonnull @.str.10, ptr noundef %46, ptr noundef %51)
          to label %52 unwind label %53

52:                                               ; preds = %47
  invoke void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %64 unwind label %55

53:                                               ; preds = %47, %39
  %54 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %42) #23
  br label %57

55:                                               ; preds = %52
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi { ptr, i32 } [ %56, %55 ], [ %54, %53 ]
  invoke void @__cxa_end_catch()
          to label %59 unwind label %61

59:                                               ; preds = %57, %34
  %60 = phi { ptr, i32 } [ %35, %34 ], [ %58, %57 ]
  resume { ptr, i32 } %60

61:                                               ; preds = %57
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  tail call void @__clang_call_terminate(ptr %63) #26
  unreachable

64:                                               ; preds = %52
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cConfiguration9getAsPathB5cxx11EP13cConfigOption(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext false, i32 noundef 6)
  %4 = load ptr, ptr %2, align 8, !tbaa !86
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(20) %2), !prof !184
  %8 = load ptr, ptr %1, align 8, !tbaa !86
  %9 = getelementptr inbounds ptr, ptr %8, i64 21
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7), !prof !185
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %16 unwind label %34, !prof !189

16:                                               ; preds = %3
  %17 = load ptr, ptr %11, align 8, !tbaa !86
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %21 unwind label %34, !prof !190

21:                                               ; preds = %16
  %22 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5
  %23 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !95
  %25 = icmp eq i64 %24, 0
  %26 = load ptr, ptr %22, align 8
  %27 = select i1 %25, ptr null, ptr %26, !prof !114
  %28 = load ptr, ptr %1, align 8, !tbaa !86
  %29 = getelementptr inbounds ptr, ptr %28, i64 19
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %27)
          to label %32 unwind label %34, !prof !188

32:                                               ; preds = %21
  invoke void @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %15, ptr noundef %20, ptr noundef %31)
          to label %33 unwind label %34, !prof !114

33:                                               ; preds = %32
  ret void

34:                                               ; preds = %32, %21, %16, %3
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %36 = extractvalue { ptr, i32 } %35, 1
  %37 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = extractvalue { ptr, i32 } %35, 0
  %41 = tail call ptr @__cxa_begin_catch(ptr %40) #23
  %42 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %43 = load ptr, ptr %2, align 8, !tbaa !86
  %44 = getelementptr inbounds ptr, ptr %43, i64 6
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %47 unwind label %53

47:                                               ; preds = %39
  %48 = load ptr, ptr %41, align 8, !tbaa !86
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %41) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %42, ptr noundef nonnull @.str.10, ptr noundef %46, ptr noundef %51)
          to label %52 unwind label %53

52:                                               ; preds = %47
  invoke void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %64 unwind label %55

53:                                               ; preds = %47, %39
  %54 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %42) #23
  br label %57

55:                                               ; preds = %52
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi { ptr, i32 } [ %56, %55 ], [ %54, %53 ]
  invoke void @__cxa_end_catch()
          to label %59 unwind label %61

59:                                               ; preds = %57, %34
  %60 = phi { ptr, i32 } [ %35, %34 ], [ %58, %57 ]
  resume { ptr, i32 } %60

61:                                               ; preds = %57
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  tail call void @__clang_call_terminate(ptr %63) #26
  unreachable

64:                                               ; preds = %52
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN14cConfiguration11getAsCustomEPKcP13cConfigOptionS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, ptr noundef readnone %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext true, i32 noundef 7)
  %5 = load ptr, ptr %2, align 8, !tbaa !86
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %9 unwind label %30, !prof !192

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !86
  %11 = getelementptr inbounds ptr, ptr %10, i64 22
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %8)
          to label %14 unwind label %30, !prof !193

14:                                               ; preds = %9
  %15 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5
  %16 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !95
  %18 = icmp eq i64 %17, 0
  %19 = load ptr, ptr %15, align 8
  %20 = select i1 %18, ptr null, ptr %19, !prof !194
  %21 = load ptr, ptr %0, align 8, !tbaa !86
  %22 = getelementptr inbounds ptr, ptr %21, i64 19
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %20)
          to label %25 unwind label %30, !prof !195

25:                                               ; preds = %14
  %26 = icmp eq ptr %13, null
  %27 = icmp eq ptr %24, null
  %28 = select i1 %27, ptr %3, ptr %24, !prof !194
  %29 = select i1 %26, ptr %28, ptr %13, !prof !194
  ret ptr %29

30:                                               ; preds = %14, %9, %4
  %31 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %32 = extractvalue { ptr, i32 } %31, 1
  %33 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %30
  %36 = extractvalue { ptr, i32 } %31, 0
  %37 = tail call ptr @__cxa_begin_catch(ptr %36) #23
  %38 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %39 = load ptr, ptr %2, align 8, !tbaa !86
  %40 = getelementptr inbounds ptr, ptr %39, i64 6
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %43 unwind label %49

43:                                               ; preds = %35
  %44 = load ptr, ptr %37, align 8, !tbaa !86
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %37) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %38, ptr noundef nonnull @.str.10, ptr noundef %42, ptr noundef %47)
          to label %48 unwind label %49

48:                                               ; preds = %43
  invoke void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %60 unwind label %51

49:                                               ; preds = %43, %35
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %38) #23
  br label %53

51:                                               ; preds = %48
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  invoke void @__cxa_end_catch()
          to label %55 unwind label %57

55:                                               ; preds = %53, %30
  %56 = phi { ptr, i32 } [ %31, %30 ], [ %54, %53 ]
  resume { ptr, i32 } %56

57:                                               ; preds = %53
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #26
  unreachable

60:                                               ; preds = %48
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN14cConfiguration9getAsBoolEPKcP13cConfigOptionb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !196 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext true, i32 noundef 0)
  %5 = load ptr, ptr %2, align 8, !tbaa !86
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %9 unwind label %28, !prof !197

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !86
  %11 = getelementptr inbounds ptr, ptr %10, i64 22
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %8)
          to label %14 unwind label %28, !prof !198

14:                                               ; preds = %9
  %15 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5
  %16 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !95
  %18 = icmp eq i64 %17, 0
  %19 = load ptr, ptr %15, align 8
  %20 = select i1 %18, ptr null, ptr %19, !prof !199
  %21 = load ptr, ptr %0, align 8, !tbaa !86
  %22 = getelementptr inbounds ptr, ptr %21, i64 19
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %20)
          to label %25 unwind label %28, !prof !200

25:                                               ; preds = %14
  %26 = invoke noundef zeroext i1 @_ZN14cConfiguration9parseBoolEPKcS1_b(ptr noundef %13, ptr noundef %24, i1 noundef zeroext %3)
          to label %27 unwind label %28, !prof !201

27:                                               ; preds = %25
  ret i1 %26

28:                                               ; preds = %25, %14, %9, %4
  %29 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %30 = extractvalue { ptr, i32 } %29, 1
  %31 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = extractvalue { ptr, i32 } %29, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #23
  %36 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %37 = load ptr, ptr %2, align 8, !tbaa !86
  %38 = getelementptr inbounds ptr, ptr %37, i64 6
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %41 unwind label %47

41:                                               ; preds = %33
  %42 = load ptr, ptr %35, align 8, !tbaa !86
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %35) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %36, ptr noundef nonnull @.str.10, ptr noundef %40, ptr noundef %45)
          to label %46 unwind label %47

46:                                               ; preds = %41
  invoke void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %58 unwind label %49

47:                                               ; preds = %41, %33
  %48 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %36) #23
  br label %51

49:                                               ; preds = %46
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %48, %47 ]
  invoke void @__cxa_end_catch()
          to label %53 unwind label %55

53:                                               ; preds = %51, %28
  %54 = phi { ptr, i32 } [ %29, %28 ], [ %52, %51 ]
  resume { ptr, i32 } %54

55:                                               ; preds = %51
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #26
  unreachable

58:                                               ; preds = %46
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZN14cConfiguration8getAsIntEPKcP13cConfigOptionl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext true, i32 noundef 1)
  %5 = load ptr, ptr %2, align 8, !tbaa !86
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %9 unwind label %33, !prof !192

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !86
  %11 = getelementptr inbounds ptr, ptr %10, i64 22
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %8)
          to label %14 unwind label %33, !prof !193

14:                                               ; preds = %9
  %15 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5
  %16 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !95
  %18 = icmp eq i64 %17, 0
  %19 = load ptr, ptr %15, align 8
  %20 = select i1 %18, ptr null, ptr %19, !prof !194
  %21 = load ptr, ptr %0, align 8, !tbaa !86
  %22 = getelementptr inbounds ptr, ptr %21, i64 19
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %20)
          to label %25 unwind label %33, !prof !195

25:                                               ; preds = %14
  %26 = icmp eq ptr %13, null
  %27 = select i1 %26, ptr %24, ptr %13, !prof !194
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !194

29:                                               ; preds = %25
  %30 = invoke noundef i64 @_Z8opp_atolPKc(ptr noundef nonnull %27)
          to label %31 unwind label %33

31:                                               ; preds = %25, %29
  %32 = phi i64 [ %3, %25 ], [ %30, %29 ]
  ret i64 %32

33:                                               ; preds = %29, %14, %9, %4
  %34 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %35 = extractvalue { ptr, i32 } %34, 1
  %36 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %33
  %39 = extractvalue { ptr, i32 } %34, 0
  %40 = tail call ptr @__cxa_begin_catch(ptr %39) #23
  %41 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %42 = load ptr, ptr %2, align 8, !tbaa !86
  %43 = getelementptr inbounds ptr, ptr %42, i64 6
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %46 unwind label %52

46:                                               ; preds = %38
  %47 = load ptr, ptr %40, align 8, !tbaa !86
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %40) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %41, ptr noundef nonnull @.str.10, ptr noundef %45, ptr noundef %50)
          to label %51 unwind label %52

51:                                               ; preds = %46
  invoke void @__cxa_throw(ptr nonnull %41, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %63 unwind label %54

52:                                               ; preds = %46, %38
  %53 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %41) #23
  br label %56

54:                                               ; preds = %51
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi { ptr, i32 } [ %55, %54 ], [ %53, %52 ]
  invoke void @__cxa_end_catch()
          to label %58 unwind label %60

58:                                               ; preds = %56, %33
  %59 = phi { ptr, i32 } [ %34, %33 ], [ %57, %56 ]
  resume { ptr, i32 } %59

60:                                               ; preds = %56
  %61 = landingpad { ptr, i32 }
          catch ptr null
  %62 = extractvalue { ptr, i32 } %61, 0
  tail call void @__clang_call_terminate(ptr %62) #26
  unreachable

63:                                               ; preds = %51
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef double @_ZN14cConfiguration11getAsDoubleEPKcP13cConfigOptiond(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, double noundef %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %2, i1 noundef zeroext true, i32 noundef 2)
  %5 = load ptr, ptr %2, align 8, !tbaa !86
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %9 unwind label %39

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !86
  %11 = getelementptr inbounds ptr, ptr %10, i64 22
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %8)
          to label %14 unwind label %39

14:                                               ; preds = %9
  %15 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 4
  %16 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 4, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !95
  %18 = icmp eq i64 %17, 0
  %19 = load ptr, ptr %15, align 8
  %20 = select i1 %18, ptr null, ptr %19
  %21 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5
  %22 = getelementptr inbounds %class.cConfigOption, ptr %2, i64 0, i32 5, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !95
  %24 = icmp eq i64 %23, 0
  %25 = load ptr, ptr %21, align 8
  %26 = select i1 %24, ptr null, ptr %25
  %27 = load ptr, ptr %0, align 8, !tbaa !86
  %28 = getelementptr inbounds ptr, ptr %27, i64 19
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %26)
          to label %31 unwind label %39

31:                                               ; preds = %14
  %32 = icmp eq ptr %13, null
  %33 = select i1 %32, ptr %30, ptr %13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = invoke noundef double @_ZN14UnitConversion13parseQuantityEPKcS1_(ptr noundef nonnull %33, ptr noundef %20)
          to label %37 unwind label %39

37:                                               ; preds = %31, %35
  %38 = phi double [ %3, %31 ], [ %36, %35 ]
  ret double %38

39:                                               ; preds = %35, %14, %9, %4
  %40 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %41 = extractvalue { ptr, i32 } %40, 1
  %42 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %39
  %45 = extractvalue { ptr, i32 } %40, 0
  %46 = tail call ptr @__cxa_begin_catch(ptr %45) #23
  %47 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %48 = load ptr, ptr %2, align 8, !tbaa !86
  %49 = getelementptr inbounds ptr, ptr %48, i64 6
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(20) %2)
          to label %52 unwind label %58

52:                                               ; preds = %44
  %53 = load ptr, ptr %46, align 8, !tbaa !86
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %46) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %47, ptr noundef nonnull @.str.10, ptr noundef %51, ptr noundef %56)
          to label %57 unwind label %58

57:                                               ; preds = %52
  invoke void @__cxa_throw(ptr nonnull %47, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %69 unwind label %60

58:                                               ; preds = %52, %44
  %59 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %47) #23
  br label %62

60:                                               ; preds = %57
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi { ptr, i32 } [ %61, %60 ], [ %59, %58 ]
  invoke void @__cxa_end_catch()
          to label %64 unwind label %66

64:                                               ; preds = %62, %39
  %65 = phi { ptr, i32 } [ %40, %39 ], [ %63, %62 ]
  resume { ptr, i32 } %65

66:                                               ; preds = %62
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #26
  unreachable

69:                                               ; preds = %57
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cConfiguration11getAsStringB5cxx11EPKcP13cConfigOptionS1_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %3, i1 noundef zeroext true, i32 noundef 3)
  %6 = load ptr, ptr %3, align 8, !tbaa !86
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = invoke noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(20) %3)
          to label %10 unwind label %28

10:                                               ; preds = %5
  %11 = load ptr, ptr %1, align 8, !tbaa !86
  %12 = getelementptr inbounds ptr, ptr %11, i64 22
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %9)
          to label %15 unwind label %28

15:                                               ; preds = %10
  %16 = getelementptr inbounds %class.cConfigOption, ptr %3, i64 0, i32 5
  %17 = getelementptr inbounds %class.cConfigOption, ptr %3, i64 0, i32 5, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !95
  %19 = icmp eq i64 %18, 0
  %20 = load ptr, ptr %16, align 8
  %21 = select i1 %19, ptr null, ptr %20
  %22 = load ptr, ptr %1, align 8, !tbaa !86
  %23 = getelementptr inbounds ptr, ptr %22, i64 19
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %21)
          to label %26 unwind label %28

26:                                               ; preds = %15
  invoke void @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %14, ptr noundef %25, ptr noundef %4)
          to label %27 unwind label %28

27:                                               ; preds = %26
  ret void

28:                                               ; preds = %26, %15, %10, %5
  %29 = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
  %30 = extractvalue { ptr, i32 } %29, 1
  %31 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %28
  %34 = extractvalue { ptr, i32 } %29, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #23
  %36 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %37 = load ptr, ptr %3, align 8, !tbaa !86
  %38 = getelementptr inbounds ptr, ptr %37, i64 6
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(20) %3)
          to label %41 unwind label %47

41:                                               ; preds = %33
  %42 = load ptr, ptr %35, align 8, !tbaa !86
  %43 = getelementptr inbounds ptr, ptr %42, i64 2
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %35) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %36, ptr noundef nonnull @.str.10, ptr noundef %40, ptr noundef %45)
          to label %46 unwind label %47

46:                                               ; preds = %41
  invoke void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %58 unwind label %49

47:                                               ; preds = %41, %33
  %48 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %36) #23
  br label %51

49:                                               ; preds = %46
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %48, %47 ]
  invoke void @__cxa_end_catch()
          to label %53 unwind label %55

53:                                               ; preds = %51, %28
  %54 = phi { ptr, i32 } [ %29, %28 ], [ %52, %51 ]
  resume { ptr, i32 } %54

55:                                               ; preds = %51
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #26
  unreachable

58:                                               ; preds = %46
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cConfiguration13getAsFilenameB5cxx11EPKcP13cConfigOption(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture readnone %2, ptr noundef %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %3, i1 noundef zeroext true, i32 noundef 4)
  %5 = load ptr, ptr %3, align 8, !tbaa !86
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %3)
  %9 = load ptr, ptr %1, align 8, !tbaa !86
  %10 = getelementptr inbounds ptr, ptr %9, i64 21
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %8)
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %17 unwind label %35

17:                                               ; preds = %4
  %18 = load ptr, ptr %12, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %22 unwind label %35

22:                                               ; preds = %17
  %23 = getelementptr inbounds %class.cConfigOption, ptr %3, i64 0, i32 5
  %24 = getelementptr inbounds %class.cConfigOption, ptr %3, i64 0, i32 5, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !95
  %26 = icmp eq i64 %25, 0
  %27 = load ptr, ptr %23, align 8
  %28 = select i1 %26, ptr null, ptr %27
  %29 = load ptr, ptr %1, align 8, !tbaa !86
  %30 = getelementptr inbounds ptr, ptr %29, i64 19
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %28)
          to label %33 unwind label %35

33:                                               ; preds = %22
  invoke void @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %16, ptr noundef %21, ptr noundef %32)
          to label %34 unwind label %35

34:                                               ; preds = %33
  ret void

35:                                               ; preds = %33, %22, %17, %4
  %36 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %37 = extractvalue { ptr, i32 } %36, 1
  %38 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = extractvalue { ptr, i32 } %36, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #23
  %43 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %44 = load ptr, ptr %3, align 8, !tbaa !86
  %45 = getelementptr inbounds ptr, ptr %44, i64 6
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(20) %3)
          to label %48 unwind label %54

48:                                               ; preds = %40
  %49 = load ptr, ptr %42, align 8, !tbaa !86
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %42) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %43, ptr noundef nonnull @.str.10, ptr noundef %47, ptr noundef %52)
          to label %53 unwind label %54

53:                                               ; preds = %48
  invoke void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %65 unwind label %56

54:                                               ; preds = %48, %40
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %43) #23
  br label %58

56:                                               ; preds = %53
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %55, %54 ]
  invoke void @__cxa_end_catch()
          to label %60 unwind label %62

60:                                               ; preds = %58, %35
  %61 = phi { ptr, i32 } [ %36, %35 ], [ %59, %58 ]
  resume { ptr, i32 } %61

62:                                               ; preds = %58
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #26
  unreachable

65:                                               ; preds = %53
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cConfiguration14getAsFilenamesB5cxx11EPKcP13cConfigOption(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture readnone %2, ptr noundef %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %3, i1 noundef zeroext true, i32 noundef 5)
  %5 = load ptr, ptr %3, align 8, !tbaa !86
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %3)
  %9 = load ptr, ptr %1, align 8, !tbaa !86
  %10 = getelementptr inbounds ptr, ptr %9, i64 21
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %8)
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %17 unwind label %35

17:                                               ; preds = %4
  %18 = load ptr, ptr %12, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %22 unwind label %35

22:                                               ; preds = %17
  %23 = getelementptr inbounds %class.cConfigOption, ptr %3, i64 0, i32 5
  %24 = getelementptr inbounds %class.cConfigOption, ptr %3, i64 0, i32 5, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !95
  %26 = icmp eq i64 %25, 0
  %27 = load ptr, ptr %23, align 8
  %28 = select i1 %26, ptr null, ptr %27
  %29 = load ptr, ptr %1, align 8, !tbaa !86
  %30 = getelementptr inbounds ptr, ptr %29, i64 19
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %28)
          to label %33 unwind label %35

33:                                               ; preds = %22
  invoke void @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef %16, ptr noundef %21, ptr noundef %32)
          to label %34 unwind label %35

34:                                               ; preds = %33
  ret void

35:                                               ; preds = %33, %22, %17, %4
  %36 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %37 = extractvalue { ptr, i32 } %36, 1
  %38 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = extractvalue { ptr, i32 } %36, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #23
  %43 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %44 = load ptr, ptr %3, align 8, !tbaa !86
  %45 = getelementptr inbounds ptr, ptr %44, i64 6
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(20) %3)
          to label %48 unwind label %54

48:                                               ; preds = %40
  %49 = load ptr, ptr %42, align 8, !tbaa !86
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %42) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %43, ptr noundef nonnull @.str.10, ptr noundef %47, ptr noundef %52)
          to label %53 unwind label %54

53:                                               ; preds = %48
  invoke void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %65 unwind label %56

54:                                               ; preds = %48, %40
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %43) #23
  br label %58

56:                                               ; preds = %53
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %55, %54 ]
  invoke void @__cxa_end_catch()
          to label %60 unwind label %62

60:                                               ; preds = %58, %35
  %61 = phi { ptr, i32 } [ %36, %35 ], [ %59, %58 ]
  resume { ptr, i32 } %61

62:                                               ; preds = %58
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #26
  unreachable

65:                                               ; preds = %53
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN14cConfiguration9getAsPathB5cxx11EPKcP13cConfigOption(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nocapture readnone %2, ptr noundef %3) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  tail call fastcc void @_ZL10assertTypeP13cConfigOptionbNS_4TypeE(ptr noundef %3, i1 noundef zeroext true, i32 noundef 5)
  %5 = load ptr, ptr %3, align 8, !tbaa !86
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(20) %3)
  %9 = load ptr, ptr %1, align 8, !tbaa !86
  %10 = getelementptr inbounds ptr, ptr %9, i64 21
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %8)
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %17 unwind label %35

17:                                               ; preds = %4
  %18 = load ptr, ptr %12, align 8, !tbaa !86
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %22 unwind label %35

22:                                               ; preds = %17
  %23 = getelementptr inbounds %class.cConfigOption, ptr %3, i64 0, i32 5
  %24 = getelementptr inbounds %class.cConfigOption, ptr %3, i64 0, i32 5, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !95
  %26 = icmp eq i64 %25, 0
  %27 = load ptr, ptr %23, align 8
  %28 = select i1 %26, ptr null, ptr %27
  %29 = load ptr, ptr %1, align 8, !tbaa !86
  %30 = getelementptr inbounds ptr, ptr %29, i64 19
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %28)
          to label %33 unwind label %35

33:                                               ; preds = %22
  invoke void @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %16, ptr noundef %21, ptr noundef %32)
          to label %34 unwind label %35

34:                                               ; preds = %33
  ret void

35:                                               ; preds = %33, %22, %17, %4
  %36 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9exception
  %37 = extractvalue { ptr, i32 } %36, 1
  %38 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTISt9exception) #23
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %35
  %41 = extractvalue { ptr, i32 } %36, 0
  %42 = tail call ptr @__cxa_begin_catch(ptr %41) #23
  %43 = tail call ptr @__cxa_allocate_exception(i64 128) #23
  %44 = load ptr, ptr %3, align 8, !tbaa !86
  %45 = getelementptr inbounds ptr, ptr %44, i64 6
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(20) %3)
          to label %48 unwind label %54

48:                                               ; preds = %40
  %49 = load ptr, ptr %42, align 8, !tbaa !86
  %50 = getelementptr inbounds ptr, ptr %49, i64 2
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %42) #23
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %43, ptr noundef nonnull @.str.10, ptr noundef %47, ptr noundef %52)
          to label %53 unwind label %54

53:                                               ; preds = %48
  invoke void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #24
          to label %65 unwind label %56

54:                                               ; preds = %48, %40
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %43) #23
  br label %58

56:                                               ; preds = %53
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %55, %54 ]
  invoke void @__cxa_end_catch()
          to label %60 unwind label %62

60:                                               ; preds = %58, %35
  %61 = phi { ptr, i32 } [ %36, %35 ], [ %59, %58 ]
  resume { ptr, i32 } %61

62:                                               ; preds = %58
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #26
  unreachable

65:                                               ; preds = %53
  unreachable
}

declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7cObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14cConfigurationD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 comdat align 2 !prof !85 {
  tail call void @llvm.trap() #26
  unreachable
}

declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !85 {
  ret ptr @.str.5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !202 {
  %2 = load ptr, ptr %0, align 8, !tbaa !86
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !203
  ret ptr %5
}

declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNK7cObject4infoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare noundef ptr @_ZNK7cObject3dupEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !85 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #11 comdat align 2 !prof !204 {
  ret i1 false
}

declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !95
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #25
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #25
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

declare noundef ptr @_ZN13cConfigOption11getTypeNameENS_4TypeE(i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !114

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !95
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #25
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !114

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !95
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #25
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !89
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !133

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !95
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #25
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !85 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #23
  tail call void @_ZdlPv(ptr noundef %0) #25
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #27
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #25
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !205
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !85 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !95
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #23
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.14)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !103, !alias.scope !208
  %10 = load ptr, ptr %7, align 8, !tbaa !89
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !95
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !89, !alias.scope !208
  %19 = load i64, ptr %11, align 8, !tbaa !101
  store i64 %19, ptr %9, align 8, !tbaa !101, !alias.scope !208
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !95
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !95, !alias.scope !208
  store ptr %11, ptr %7, align 8, !tbaa !89
  store i64 0, ptr %21, align 8, !tbaa !95
  store i8 0, ptr %11, align 8, !tbaa !101
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !95, !noalias !211
  %27 = load i64, ptr %23, align 8, !tbaa !95, !noalias !211
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #24
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !89, !noalias !211
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !103, !alias.scope !211
  %37 = load ptr, ptr %34, align 8, !tbaa !89
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !95
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !89, !alias.scope !211
  %46 = load i64, ptr %38, align 8, !tbaa !101
  store i64 %46, ptr %36, align 8, !tbaa !101, !alias.scope !211
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !95
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !95, !alias.scope !211
  store ptr %38, ptr %34, align 8, !tbaa !89
  store i64 0, ptr %48, align 8, !tbaa !95
  store i8 0, ptr %38, align 8, !tbaa !101
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #23
  %52 = load ptr, ptr %3, align 8, !tbaa !89
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !95
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #25
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !89
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !95
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #25
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !89
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !95
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #25
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !89
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !95
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #25
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !89
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !95
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #25
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !214, !range !148, !noundef !149
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #5 comdat align 2 !prof !85 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !215
  ret i32 %3
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !216 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  %5 = ptrtoint ptr %2 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = sub i64 %5, %6
  store i64 %7, ptr %4, align 8, !tbaa !104
  %8 = icmp ugt i64 %7, 15
  br i1 %8, label %9, label %13, !prof !105

9:                                                ; preds = %3
  %10 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %10, ptr %0, align 8, !tbaa !89
  %11 = load i64, ptr %4, align 8, !tbaa !104
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store i64 %11, ptr %12, align 8, !tbaa !101
  br label %13

13:                                               ; preds = %3, %9
  %14 = load ptr, ptr %0, align 8, !tbaa !89
  switch i64 %7, label %17 [
    i64 1, label %15
    i64 0, label %18
  ], !prof !106

15:                                               ; preds = %13
  %16 = load i8, ptr %1, align 1, !tbaa !101
  store i8 %16, ptr %14, align 1, !tbaa !101
  br label %18

17:                                               ; preds = %13
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %1, i64 %7, i1 false), !prof !217
  br label %18

18:                                               ; preds = %13, %15, %17
  %19 = load i64, ptr %4, align 8, !tbaa !104
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %19, ptr %20, align 8, !tbaa !95
  %21 = load ptr, ptr %0, align 8, !tbaa !89
  %22 = getelementptr inbounds i8, ptr %21, i64 %19
  store i8 0, ptr %22, align 1, !tbaa !101
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  ret void
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !218
  %5 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !219
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %26, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !103
  %10 = load ptr, ptr %1, align 8, !tbaa !89
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !95
  %16 = icmp ult i64 %15, 16
  tail call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !89
  %19 = load i64, ptr %11, align 8, !tbaa !101
  store i64 %19, ptr %9, align 8, !tbaa !101
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %1, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !95
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !95
  store ptr %11, ptr %1, align 8, !tbaa !89
  store i64 0, ptr %21, align 8, !tbaa !95
  store i8 0, ptr %11, align 8, !tbaa !101
  %24 = load ptr, ptr %3, align 8, !tbaa !127
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %24, i64 1
  store ptr %25, ptr %3, align 8, !tbaa !127
  br label %27

26:                                               ; preds = %2
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %27

27:                                               ; preds = %26, %20
  %28 = load ptr, ptr %3, align 8, !tbaa !218
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %28, i64 -1
  ret ptr %29
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !220 {
  %4 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = load ptr, ptr %0, align 8, !tbaa !218
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = icmp eq i64 %9, 9223372036854775776
  br i1 %10, label %11, label %12, !prof !221

11:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #24
  unreachable

12:                                               ; preds = %3
  %13 = ashr exact i64 %9, 5
  %14 = tail call i64 @llvm.umax.i64(i64 %13, i64 1)
  %15 = add i64 %14, %13
  %16 = icmp ult i64 %15, %13
  %17 = tail call i64 @llvm.umin.i64(i64 %15, i64 288230376151711743)
  %18 = select i1 %16, i64 288230376151711743, i64 %17, !prof !221
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %19, %8
  %21 = ashr exact i64 %20, 5
  %22 = icmp eq i64 %18, 0
  br i1 %22, label %26, label %23, !prof !221

23:                                               ; preds = %12
  %24 = shl nuw nsw i64 %18, 5
  %25 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %24) #27
  br label %26

26:                                               ; preds = %12, %23
  %27 = phi ptr [ %25, %23 ], [ null, %12 ]
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21, i32 2
  store ptr %29, ptr %28, align 8, !tbaa !103
  %30 = load ptr, ptr %2, align 8, !tbaa !89
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %38, !prof !222

33:                                               ; preds = %26
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !95
  %36 = icmp ult i64 %35, 16
  tail call void @llvm.assume(i1 %36)
  %37 = add nuw nsw i64 %35, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(1) %31, i64 %37, i1 false), !prof !223
  br label %40

38:                                               ; preds = %26
  store ptr %30, ptr %28, align 8, !tbaa !89
  %39 = load i64, ptr %31, align 8, !tbaa !101
  store i64 %39, ptr %29, align 8, !tbaa !101
  br label %40

40:                                               ; preds = %33, %38
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !95
  %43 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %21, i32 1
  store i64 %42, ptr %43, align 8, !tbaa !95
  store ptr %31, ptr %2, align 8, !tbaa !89
  store i64 0, ptr %41, align 8, !tbaa !95
  store i8 0, ptr %31, align 8, !tbaa !101
  %44 = icmp eq ptr %6, %1
  br i1 %44, label %45, label %49, !prof !224

45:                                               ; preds = %63, %40
  %46 = phi ptr [ %27, %40 ], [ %68, %63 ]
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %46, i64 1
  %48 = icmp eq ptr %5, %1
  br i1 %48, label %92, label %70, !prof !114

49:                                               ; preds = %40, %63
  %50 = phi ptr [ %68, %63 ], [ %27, %40 ]
  %51 = phi ptr [ %67, %63 ], [ %6, %40 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !225)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %52 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 2
  store ptr %52, ptr %50, align 8, !tbaa !103, !alias.scope !225, !noalias !228
  %53 = load ptr, ptr %51, align 8, !tbaa !89, !alias.scope !228, !noalias !225
  %54 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 2
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %61, !prof !230

56:                                               ; preds = %49
  %57 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !95, !alias.scope !228, !noalias !225
  %59 = icmp ult i64 %58, 16
  tail call void @llvm.assume(i1 %59)
  %60 = add nuw nsw i64 %58, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %52, ptr noundef nonnull align 8 dereferenceable(1) %54, i64 %60, i1 false), !prof !231, !alias.scope !232
  br label %63

61:                                               ; preds = %49
  store ptr %53, ptr %50, align 8, !tbaa !89, !alias.scope !225, !noalias !228
  %62 = load i64, ptr %54, align 8, !tbaa !101, !alias.scope !228, !noalias !225
  store i64 %62, ptr %52, align 8, !tbaa !101, !alias.scope !225, !noalias !228
  br label %63

63:                                               ; preds = %61, %56
  %64 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !95, !alias.scope !228, !noalias !225
  %66 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 0, i32 1
  store i64 %65, ptr %66, align 8, !tbaa !95, !alias.scope !225, !noalias !228
  store ptr %54, ptr %51, align 8, !tbaa !89, !alias.scope !228, !noalias !225
  store i64 0, ptr %64, align 8, !tbaa !95, !alias.scope !228, !noalias !225
  store i8 0, ptr %54, align 1, !tbaa !101, !alias.scope !228, !noalias !225
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %51, i64 1
  %68 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %50, i64 1
  %69 = icmp eq ptr %67, %1
  br i1 %69, label %45, label %49, !prof !233, !llvm.loop !234

70:                                               ; preds = %45, %85
  %71 = phi ptr [ %90, %85 ], [ %47, %45 ]
  %72 = phi ptr [ %71, %85 ], [ %46, %45 ]
  %73 = phi ptr [ %89, %85 ], [ %1, %45 ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %74 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 1, i32 2
  store ptr %74, ptr %71, align 8, !tbaa !103, !alias.scope !235, !noalias !238
  %75 = load ptr, ptr %73, align 8, !tbaa !89, !alias.scope !238, !noalias !235
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 2
  %77 = icmp eq ptr %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 1
  %80 = load i64, ptr %79, align 8, !tbaa !95, !alias.scope !238, !noalias !235
  %81 = icmp ult i64 %80, 16
  tail call void @llvm.assume(i1 %81)
  %82 = add nuw nsw i64 %80, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %74, ptr noundef nonnull align 8 dereferenceable(1) %76, i64 %82, i1 false), !alias.scope !240
  br label %85

83:                                               ; preds = %70
  store ptr %75, ptr %71, align 8, !tbaa !89, !alias.scope !235, !noalias !238
  %84 = load i64, ptr %76, align 8, !tbaa !101, !alias.scope !238, !noalias !235
  store i64 %84, ptr %74, align 8, !tbaa !101, !alias.scope !235, !noalias !238
  br label %85

85:                                               ; preds = %83, %78
  %86 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 0, i32 1
  %87 = load i64, ptr %86, align 8, !tbaa !95, !alias.scope !238, !noalias !235
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %72, i64 1, i32 1
  store i64 %87, ptr %88, align 8, !tbaa !95, !alias.scope !235, !noalias !238
  store ptr %76, ptr %73, align 8, !tbaa !89, !alias.scope !238, !noalias !235
  store i64 0, ptr %86, align 8, !tbaa !95, !alias.scope !238, !noalias !235
  store i8 0, ptr %76, align 1, !tbaa !101, !alias.scope !238, !noalias !235
  %89 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %73, i64 1
  %90 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %71, i64 1
  %91 = icmp eq ptr %89, %5
  br i1 %91, label %92, label %70, !prof !114, !llvm.loop !234

92:                                               ; preds = %85, %45
  %93 = phi ptr [ %47, %45 ], [ %90, %85 ]
  %94 = icmp eq ptr %6, null
  br i1 %94, label %96, label %95, !prof !241

95:                                               ; preds = %92
  tail call void @_ZdlPv(ptr noundef %6) #25
  br label %96

96:                                               ; preds = %92, %95
  %97 = getelementptr inbounds %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %27, ptr %0, align 8, !tbaa !125
  store ptr %93, ptr %4, align 8, !tbaa !127
  %98 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %27, i64 %18
  store ptr %98, ptr %97, align 8, !tbaa !219
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_cconfiguration.cc() #17 section ".text.startup" !prof !113 !PGOFuncName !242 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #21

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #17 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind }
attributes #24 = { noreturn }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!78}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!35 = !{ptr @_ZN14cConfiguration9parseBoolEPKcS1_b, ptr @strcmp, i64 1829080}
!36 = !{ptr @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, i64 5}
!37 = !{ptr @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_, ptr @strlen, i64 6}
!38 = !{ptr @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, i64 6}
!39 = !{ptr @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_, ptr @_Z16concatDirAndFileB5cxx11PKcS0_, i64 3}
!40 = !{ptr @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_, ptr @_Z12tidyFilenameB5cxx11PKcb, i64 3}
!41 = !{ptr @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_, ptr @_ZdlPv, i64 3}
!42 = !{ptr @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_, ptr @_ZN22FilenamesListTokenizerC1EPKc, i64 1}
!43 = !{ptr @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_, ptr @_ZN22FilenamesListTokenizer9nextTokenEv, i64 1}
!44 = !{ptr @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_, ptr @_ZN22FilenamesListTokenizerD1Ev, i64 1}
!45 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, ptr @_ZdlPv, i64 10}
!46 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_ZN15StringTokenizerC1EPKcS1_, i64 1}
!47 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_ZN15StringTokenizer9nextTokenEv, i64 2}
!48 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_Z16concatDirAndFileB5cxx11PKcS0_, i64 1}
!49 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_Z12tidyFilenameB5cxx11PKcb, i64 1}
!50 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm, i64 1}
!51 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_ZdlPv, i64 2}
!52 = !{ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, ptr @_ZN15StringTokenizerD1Ev, i64 1}
!53 = !{ptr @_ZN14cConfiguration9getAsBoolEP13cConfigOptionb, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 15}
!54 = !{ptr @_ZN14cConfiguration9getAsBoolEP13cConfigOptionb, ptr @_ZN14cConfiguration9parseBoolEPKcS1_b, i64 15}
!55 = !{ptr @_ZN14cConfiguration8getAsIntEP13cConfigOptionl, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 116}
!56 = !{ptr @_ZN14cConfiguration8getAsIntEP13cConfigOptionl, ptr @_Z8opp_atolPKc, i64 116}
!57 = !{ptr @_ZN14cConfiguration11getAsDoubleEP13cConfigOptiond, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 6}
!58 = !{ptr @_ZN14cConfiguration11getAsDoubleEP13cConfigOptiond, ptr @_ZN14UnitConversion13parseQuantityEPKcS1_, i64 4}
!59 = !{ptr @_ZN14cConfiguration11getAsStringB5cxx11EP13cConfigOptionPKc, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 11}
!60 = !{ptr @_ZN14cConfiguration11getAsStringB5cxx11EP13cConfigOptionPKc, ptr @_ZN14cConfiguration11parseStringB5cxx11EPKcS1_S1_, i64 11}
!61 = !{ptr @_ZN14cConfiguration13getAsFilenameB5cxx11EP13cConfigOption, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 4}
!62 = !{ptr @_ZN14cConfiguration13getAsFilenameB5cxx11EP13cConfigOption, ptr @_ZN14cConfiguration13parseFilenameB5cxx11EPKcS1_S1_, i64 4}
!63 = !{ptr @_ZN14cConfiguration14getAsFilenamesB5cxx11EP13cConfigOption, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 1}
!64 = !{ptr @_ZN14cConfiguration14getAsFilenamesB5cxx11EP13cConfigOption, ptr @_ZN14cConfiguration14parseFilenamesB5cxx11EPKcS1_S1_, i64 1}
!65 = !{ptr @_ZN14cConfiguration9getAsPathB5cxx11EP13cConfigOption, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 1}
!66 = !{ptr @_ZN14cConfiguration9getAsPathB5cxx11EP13cConfigOption, ptr @_ZN14cConfiguration10adjustPathB5cxx11EPKcS1_S1_, i64 1}
!67 = !{ptr @_ZN14cConfiguration11getAsCustomEPKcP13cConfigOptionS1_, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 112694}
!68 = !{ptr @_ZN14cConfiguration9getAsBoolEPKcP13cConfigOptionb, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 664393}
!69 = !{ptr @_ZN14cConfiguration9getAsBoolEPKcP13cConfigOptionb, ptr @_ZN14cConfiguration9parseBoolEPKcS1_b, i64 664391}
!70 = !{ptr @_ZN14cConfiguration8getAsIntEPKcP13cConfigOptionl, ptr @_ZL10assertTypeP13cConfigOptionbNS_4TypeE, i64 112694}
!71 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!72 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!73 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257661}
!74 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_Znwm, i64 1136}
!75 = !{ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_, ptr @_ZdlPv, i64 581}
!76 = !{ptr @_GLOBAL__sub_I_cconfiguration.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!77 = !{ptr @_GLOBAL__sub_I_cconfiguration.cc, ptr @__cxa_atexit, i64 1}
!78 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!79 = !{!"function_entry_count", i64 664408}
!80 = !{!"branch_weights", i32 279558, i32 384850}
!81 = !{!"branch_weights", i32 0, i32 664408}
!82 = !{!"branch_weights", i32 414276, i32 250132}
!83 = !{!"branch_weights", i32 0, i32 250132}
!84 = !{!"branch_weights", i32 250132, i32 0}
!85 = !{!"function_entry_count", i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"vtable pointer", !88, i64 0}
!88 = !{!"Simple C++ TBAA"}
!89 = !{!90, !92, i64 0}
!90 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !91, i64 0, !94, i64 8, !93, i64 16}
!91 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !92, i64 0}
!92 = !{!"any pointer", !93, i64 0}
!93 = !{!"omnipotent char", !88, i64 0}
!94 = !{!"long", !93, i64 0}
!95 = !{!90, !94, i64 8}
!96 = !{!"function_entry_count", i64 2}
!97 = !{!"branch_weights", i32 2, i32 0}
!98 = !{!"function_entry_count", i64 11}
!99 = !{!"branch_weights", i32 10, i32 1}
!100 = !{!"branch_weights", i32 5, i32 6}
!101 = !{!93, !93, i64 0}
!102 = !{!"branch_weights", i32 0, i32 6}
!103 = !{!91, !92, i64 0}
!104 = !{!94, !94, i64 0}
!105 = !{!"branch_weights", i32 1257662, i32 631781}
!106 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!107 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!108 = !{!"function_entry_count", i64 4}
!109 = !{!"branch_weights", i32 3, i32 1}
!110 = !{!"branch_weights", i32 1, i32 3}
!111 = !{!"branch_weights", i32 0, i32 3}
!112 = !{!"branch_weights", i32 3, i32 0}
!113 = !{!"function_entry_count", i64 1}
!114 = !{!"branch_weights", i32 1, i32 0}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!117 = distinct !{!117, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!120 = distinct !{!120, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!121 = distinct !{!121, !122, !123}
!122 = !{!"llvm.loop.mustprogress"}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = !{!"function_entry_count", i64 55}
!125 = !{!126, !92, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !92, i64 0, !92, i64 8, !92, i64 16}
!127 = !{!126, !92, i64 8}
!128 = !{!"branch_weights", i32 50, i32 5}
!129 = !{!"branch_weights", i32 4, i32 1}
!130 = !{!"branch_weights", i32 5, i32 0}
!131 = distinct !{!131, !122, !123}
!132 = !{!"branch_weights", i32 46, i32 9}
!133 = !{!"branch_weights", i32 0, i32 1}
!134 = !{!"branch_weights", i32 1, i32 1}
!135 = distinct !{!135, !122, !123}
!136 = !{!"function_entry_count", i64 889935}
!137 = !{!"simulator/cconfiguration.cc;_ZL10assertTypeP13cConfigOptionbNS_4TypeE"}
!138 = !{!139, !146, i64 36}
!139 = !{!"_ZTS13cConfigOption", !140, i64 0, !146, i64 36, !146, i64 37, !147, i64 40, !90, i64 48, !90, i64 80, !90, i64 112}
!140 = !{!"_ZTS23cNoncopyableOwnedObject", !141, i64 0}
!141 = !{!"_ZTS12cOwnedObject", !142, i64 0, !92, i64 24, !145, i64 32}
!142 = !{!"_ZTS12cNamedObject", !143, i64 0, !92, i64 8, !144, i64 16, !144, i64 18}
!143 = !{!"_ZTS7cObject"}
!144 = !{!"short", !93, i64 0}
!145 = !{!"int", !93, i64 0}
!146 = !{!"bool", !93, i64 0}
!147 = !{!"_ZTSN13cConfigOption4TypeE", !93, i64 0}
!148 = !{i8 0, i8 2}
!149 = !{}
!150 = !{!"branch_weights", i32 0, i32 889935}
!151 = !{!139, !147, i64 40}
!152 = !{!"branch_weights", i32 889935, i32 0}
!153 = !{!"function_entry_count", i64 15}
!154 = !{!"VP", i32 0, i64 15, i64 -1846066915438621208, i64 15}
!155 = !{!"VP", i32 0, i64 15, i64 3160484124303838182, i64 15}
!156 = !{!"branch_weights", i32 0, i32 15}
!157 = !{!"VP", i32 0, i64 15, i64 9094224025399815052, i64 15}
!158 = !{!"branch_weights", i32 15, i32 0}
!159 = !{!"function_entry_count", i64 116}
!160 = !{!"VP", i32 0, i64 116, i64 -1846066915438621208, i64 116}
!161 = !{!"VP", i32 0, i64 116, i64 3160484124303838182, i64 116}
!162 = !{!"branch_weights", i32 0, i32 116}
!163 = !{!"VP", i32 0, i64 116, i64 9094224025399815052, i64 116}
!164 = !{!"branch_weights", i32 115, i32 1}
!165 = !{!"branch_weights", i32 116, i32 0}
!166 = !{!"function_entry_count", i64 6}
!167 = !{!"VP", i32 0, i64 6, i64 -1846066915438621208, i64 6}
!168 = !{!"VP", i32 0, i64 6, i64 3160484124303838182, i64 6}
!169 = !{!"branch_weights", i32 3, i32 3}
!170 = !{!"VP", i32 0, i64 6, i64 9094224025399815052, i64 6}
!171 = !{!"branch_weights", i32 4, i32 2}
!172 = !{!"branch_weights", i32 2, i32 4}
!173 = !{!"branch_weights", i32 4, i32 0}
!174 = !{!"VP", i32 0, i64 11, i64 -1846066915438621208, i64 11}
!175 = !{!"VP", i32 0, i64 11, i64 3160484124303838182, i64 11}
!176 = !{!"branch_weights", i32 6, i32 5}
!177 = !{!"VP", i32 0, i64 11, i64 9094224025399815052, i64 11}
!178 = !{!"branch_weights", i32 11, i32 0}
!179 = !{!"VP", i32 0, i64 4, i64 -1846066915438621208, i64 4}
!180 = !{!"VP", i32 0, i64 4, i64 757112140975147491, i64 4}
!181 = !{!"VP", i32 0, i64 4, i64 -6687103799538989992, i64 3, i64 4227123699848355226, i64 1}
!182 = !{!"VP", i32 0, i64 4, i64 -2081172509043847685, i64 3, i64 9210391634245380122, i64 1}
!183 = !{!"VP", i32 0, i64 4, i64 9094224025399815052, i64 4}
!184 = !{!"VP", i32 0, i64 1, i64 -1846066915438621208, i64 1}
!185 = !{!"VP", i32 0, i64 1, i64 757112140975147491, i64 1}
!186 = !{!"VP", i32 0, i64 1, i64 -6687103799538989992, i64 1}
!187 = !{!"VP", i32 0, i64 1, i64 -2081172509043847685, i64 1}
!188 = !{!"VP", i32 0, i64 1, i64 9094224025399815052, i64 1}
!189 = !{!"VP", i32 0, i64 1, i64 4227123699848355226, i64 1}
!190 = !{!"VP", i32 0, i64 1, i64 9210391634245380122, i64 1}
!191 = !{!"function_entry_count", i64 112694}
!192 = !{!"VP", i32 0, i64 112694, i64 -1846066915438621208, i64 112694}
!193 = !{!"VP", i32 0, i64 112694, i64 198371727066245492, i64 112694}
!194 = !{!"branch_weights", i32 112694, i32 0}
!195 = !{!"VP", i32 0, i64 112694, i64 9094224025399815052, i64 112694}
!196 = !{!"function_entry_count", i64 664393}
!197 = !{!"VP", i32 0, i64 664393, i64 -1846066915438621208, i64 664393}
!198 = !{!"VP", i32 0, i64 664393, i64 198371727066245492, i64 664393}
!199 = !{!"branch_weights", i32 0, i32 664393}
!200 = !{!"VP", i32 0, i64 664393, i64 9094224025399815052, i64 664393}
!201 = !{!"branch_weights", i32 664393, i32 0}
!202 = !{!"function_entry_count", i64 235321}
!203 = !{!"VP", i32 0, i64 235321, i64 8390818187414654894, i64 137428, i64 -1846066915438621208, i64 97893}
!204 = !{!"function_entry_count", i64 26398}
!205 = !{!206, !145, i64 8}
!206 = !{!"_ZTS10cException", !207, i64 0, !145, i64 8, !90, i64 16, !146, i64 48, !90, i64 56, !90, i64 88, !145, i64 120}
!207 = !{!"_ZTSSt9exception"}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!210 = distinct !{!210, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!213 = distinct !{!213, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!214 = !{!206, !146, i64 48}
!215 = !{!206, !145, i64 120}
!216 = !{!"function_entry_count", i64 1889442}
!217 = !{!"VP", i32 1, i64 1856863, i64 17, i64 729444, i64 16, i64 433786, i64 9, i64 266579, i64 8, i64 130021}
!218 = !{!92, !92, i64 0}
!219 = !{!126, !92, i64 16}
!220 = !{!"function_entry_count", i64 1136}
!221 = !{!"branch_weights", i32 0, i32 1136}
!222 = !{!"branch_weights", i32 1130, i32 6}
!223 = !{!"VP", i32 1, i64 1130, i64 9, i64 506, i64 5, i64 264, i64 4, i64 98, i64 6, i64 97}
!224 = !{!"branch_weights", i32 1, i32 1135}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!227 = distinct !{!227, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!228 = !{!229}
!229 = distinct !{!229, !227, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!230 = !{!"branch_weights", i32 1581, i32 3}
!231 = !{!"VP", i32 1, i64 1581, i64 9, i64 730, i64 5, i64 677, i64 6, i64 91, i64 7, i64 78}
!232 = !{!226, !229}
!233 = !{!"branch_weights", i32 1135, i32 449}
!234 = distinct !{!234, !122, !123}
!235 = !{!236}
!236 = distinct !{!236, !237, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!237 = distinct !{!237, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!238 = !{!239}
!239 = distinct !{!239, !237, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!240 = !{!236, !239}
!241 = !{!"branch_weights", i32 555, i32 581}
!242 = !{!"simulator/cconfiguration.cc;_GLOBAL__sub_I_cconfiguration.cc"}
