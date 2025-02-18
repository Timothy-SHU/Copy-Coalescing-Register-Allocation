; ModuleID = 'simulator/cmathfunction.cc'
source_filename = "simulator/cmathfunction.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.cGlobalRegistrationList = type { ptr, ptr }
%class.cMathFunction = type { %class.cNoncopyableOwnedObject.base, ptr, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
%class.cNoncopyableOwnedObject.base = type { %class.cOwnedObject.base }
%class.cOwnedObject.base = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32 }>
%class.cNamedObject.base = type <{ %class.cObject, ptr, i16, i16 }>
%class.cObject = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
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
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
%class.cOwnedObject = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32, [4 x i8] }>
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }

$_ZNK7cObject6isNameEPKc = comdat any

$_ZN13cMathFunctionD2Ev = comdat any

$_ZN13cMathFunctionD0Ev = comdat any

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK12cOwnedObject8getOwnerEv = comdat any

$_ZNK12cOwnedObject13isOwnedObjectEv = comdat any

$_ZN12cNamedObject14getNamePoolingEv = comdat any

$_ZNK12cOwnedObject11isSoftOwnerEv = comdat any

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

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTV13cMathFunction = dso_local unnamed_addr constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTI13cMathFunction, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN13cMathFunctionD2Ev, ptr @_ZN13cMathFunctionD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK13cMathFunction4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK23cNoncopyableOwnedObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN23cNoncopyableOwnedObject10parsimPackEP11cCommBuffer, ptr @_ZN23cNoncopyableOwnedObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cOwnedObject11isSoftOwnerEv] }, align 8
@.str = private unnamed_addr constant [119 x i8] c"Register_Function() or cMathFunction: attempt to register function \22%s\22 with wrong number of arguments %d, should be 0\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@.str.1 = private unnamed_addr constant [119 x i8] c"Register_Function() or cMathFunction: attempt to register function \22%s\22 with wrong number of arguments %d, should be 1\00", align 1
@.str.2 = private unnamed_addr constant [119 x i8] c"Register_Function() or cMathFunction: attempt to register function \22%s\22 with wrong number of arguments %d, should be 2\00", align 1
@.str.3 = private unnamed_addr constant [119 x i8] c"Register_Function() or cMathFunction: attempt to register function \22%s\22 with wrong number of arguments %d, should be 3\00", align 1
@.str.4 = private unnamed_addr constant [119 x i8] c"Register_Function() or cMathFunction: attempt to register function \22%s\22 with wrong number of arguments %d, should be 4\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"double \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"getMathFuncNoArg(): arg count mismatch (argc=%d)\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"getMathFunc1Arg(): arg count mismatch (argc=%d)\00", align 1
@.str.13 = private unnamed_addr constant [49 x i8] c"getMathFunc2Args(): arg count mismatch (argc=%d)\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"getMathFunc3Args(): arg count mismatch (argc=%d)\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"getMathFunc4Args(): arg count mismatch (argc=%d)\00", align 1
@nedFunctions = external global %class.cGlobalRegistrationList, align 8
@_ZTI12cOwnedObject = external constant ptr
@_ZTS13cMathFunction = dso_local constant [16 x i8] c"13cMathFunction\00", align 1
@_ZTI23cNoncopyableOwnedObject = external constant ptr
@_ZTI13cMathFunction = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cMathFunction, ptr @_ZTI23cNoncopyableOwnedObject }, align 8
@.str.16 = private unnamed_addr constant [139 x i8] c"Math function \22%s\22 with %d args not found -- perhaps it wasn't registered with the Register_Function() macro, or its code is not linked in\00", align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.17 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cmathfunction.cc, ptr null }]

@_ZN13cMathFunctionC1EPKcPFdvEiS1_S1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN13cMathFunctionC2EPKcPFdvEiS1_S1_
@_ZN13cMathFunctionC1EPKcPFddEiS1_S1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN13cMathFunctionC2EPKcPFddEiS1_S1_
@_ZN13cMathFunctionC1EPKcPFdddEiS1_S1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN13cMathFunctionC2EPKcPFdddEiS1_S1_
@_ZN13cMathFunctionC1EPKcPFddddEiS1_S1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN13cMathFunctionC2EPKcPFddddEiS1_S1_
@_ZN13cMathFunctionC1EPKcPFdddddEiS1_S1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN13cMathFunctionC2EPKcPFdddddEiS1_S1_

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13cMathFunctionC2EPKcPFdvEiS1_S1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  tail call void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false)
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cMathFunction, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %7 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3, i32 2
  store ptr %8, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %9, align 8, !tbaa !64
  store i8 0, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4, i32 2
  store ptr %11, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %12, align 8, !tbaa !64
  store i8 0, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %4, null
  %14 = select i1 %13, ptr @.str.8, ptr %4
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #17
  %16 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %14, i64 noundef %15)
          to label %17 unwind label %31

17:                                               ; preds = %6
  %18 = icmp eq ptr %5, null
  %19 = select i1 %18, ptr @.str.8, ptr %5
  %20 = load i64, ptr %12, align 8, !tbaa !64
  %21 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #17
  %22 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef %20, ptr noundef nonnull %19, i64 noundef %21)
          to label %23 unwind label %31

23:                                               ; preds = %17
  %24 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  store ptr %2, ptr %24, align 8, !tbaa !68
  %25 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  store i32 0, ptr %25, align 8, !tbaa !76
  %26 = add i32 %3, -1
  %27 = icmp ult i32 %26, -2
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %29, ptr noundef nonnull @.str, ptr noundef %1, i32 noundef %3)
          to label %30 unwind label %33

30:                                               ; preds = %28
  invoke void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %52 unwind label %31

31:                                               ; preds = %17, %6, %30
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %36

33:                                               ; preds = %28
  %34 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %29) #17
  br label %36

35:                                               ; preds = %23
  ret void

36:                                               ; preds = %33, %31
  %37 = phi { ptr, i32 } [ %32, %31 ], [ %34, %33 ]
  %38 = load ptr, ptr %10, align 8, !tbaa !77
  %39 = icmp eq ptr %38, %11
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, ptr %12, align 8, !tbaa !64
  %42 = icmp ult i64 %41, 16
  tail call void @llvm.assume(i1 %42)
  br label %44

43:                                               ; preds = %36
  tail call void @_ZdlPv(ptr noundef %38) #19
  br label %44

44:                                               ; preds = %40, %43
  %45 = load ptr, ptr %7, align 8, !tbaa !77
  %46 = icmp eq ptr %45, %8
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i64, ptr %9, align 8, !tbaa !64
  %49 = icmp ult i64 %48, 16
  tail call void @llvm.assume(i1 %49)
  br label %51

50:                                               ; preds = %44
  tail call void @_ZdlPv(ptr noundef %45) #19
  br label %51

51:                                               ; preds = %47, %50
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  resume { ptr, i32 } %37

52:                                               ; preds = %30
  unreachable
}

declare i32 @__gxx_personality_v0(...)

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13cMathFunctionC2EPKcPFddEiS1_S1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !78 {
  tail call void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false)
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cMathFunction, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %7 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3, i32 2
  store ptr %8, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %9, align 8, !tbaa !64
  store i8 0, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4, i32 2
  store ptr %11, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %12, align 8, !tbaa !64
  store i8 0, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %4, null
  %14 = select i1 %13, ptr @.str.8, ptr %4, !prof !79
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #17
  %16 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %14, i64 noundef %15)
          to label %17 unwind label %29, !prof !80

17:                                               ; preds = %6
  %18 = icmp eq ptr %5, null
  %19 = select i1 %18, ptr @.str.8, ptr %5, !prof !79
  %20 = load i64, ptr %12, align 8, !tbaa !64
  %21 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #17
  %22 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef %20, ptr noundef nonnull %19, i64 noundef %21)
          to label %23 unwind label %29, !prof !80

23:                                               ; preds = %17
  %24 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  store ptr %2, ptr %24, align 8, !tbaa !68
  %25 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  store i32 1, ptr %25, align 8, !tbaa !76
  switch i32 %3, label %26 [
    i32 -1, label %33
    i32 1, label %33
  ], !prof !81

26:                                               ; preds = %23
  %27 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %27, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %3)
          to label %28 unwind label %31

28:                                               ; preds = %26
  invoke void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %50 unwind label %29

29:                                               ; preds = %17, %6, %28
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %34

31:                                               ; preds = %26
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %27) #17
  br label %34

33:                                               ; preds = %23, %23
  ret void

34:                                               ; preds = %31, %29
  %35 = phi { ptr, i32 } [ %30, %29 ], [ %32, %31 ]
  %36 = load ptr, ptr %10, align 8, !tbaa !77
  %37 = icmp eq ptr %36, %11
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, ptr %12, align 8, !tbaa !64
  %40 = icmp ult i64 %39, 16
  tail call void @llvm.assume(i1 %40)
  br label %42

41:                                               ; preds = %34
  tail call void @_ZdlPv(ptr noundef %36) #19
  br label %42

42:                                               ; preds = %38, %41
  %43 = load ptr, ptr %7, align 8, !tbaa !77
  %44 = icmp eq ptr %43, %8
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, ptr %9, align 8, !tbaa !64
  %47 = icmp ult i64 %46, 16
  tail call void @llvm.assume(i1 %47)
  br label %49

48:                                               ; preds = %42
  tail call void @_ZdlPv(ptr noundef %43) #19
  br label %49

49:                                               ; preds = %45, %48
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  resume { ptr, i32 } %35

50:                                               ; preds = %28
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13cMathFunctionC2EPKcPFdddEiS1_S1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  tail call void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false)
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cMathFunction, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %7 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3, i32 2
  store ptr %8, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %9, align 8, !tbaa !64
  store i8 0, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4, i32 2
  store ptr %11, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %12, align 8, !tbaa !64
  store i8 0, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %4, null
  %14 = select i1 %13, ptr @.str.8, ptr %4, !prof !83
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #17
  %16 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %14, i64 noundef %15)
          to label %17 unwind label %29, !prof !84

17:                                               ; preds = %6
  %18 = icmp eq ptr %5, null
  %19 = select i1 %18, ptr @.str.8, ptr %5, !prof !83
  %20 = load i64, ptr %12, align 8, !tbaa !64
  %21 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #17
  %22 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef %20, ptr noundef nonnull %19, i64 noundef %21)
          to label %23 unwind label %29, !prof !84

23:                                               ; preds = %17
  %24 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  store ptr %2, ptr %24, align 8, !tbaa !68
  %25 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  store i32 2, ptr %25, align 8, !tbaa !76
  switch i32 %3, label %26 [
    i32 -1, label %33
    i32 2, label %33
  ], !prof !85

26:                                               ; preds = %23
  %27 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %27, ptr noundef nonnull @.str.2, ptr noundef %1, i32 noundef %3)
          to label %28 unwind label %31

28:                                               ; preds = %26
  invoke void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %50 unwind label %29

29:                                               ; preds = %17, %6, %28
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %34

31:                                               ; preds = %26
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %27) #17
  br label %34

33:                                               ; preds = %23, %23
  ret void

34:                                               ; preds = %31, %29
  %35 = phi { ptr, i32 } [ %30, %29 ], [ %32, %31 ]
  %36 = load ptr, ptr %10, align 8, !tbaa !77
  %37 = icmp eq ptr %36, %11
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, ptr %12, align 8, !tbaa !64
  %40 = icmp ult i64 %39, 16
  tail call void @llvm.assume(i1 %40)
  br label %42

41:                                               ; preds = %34
  tail call void @_ZdlPv(ptr noundef %36) #19
  br label %42

42:                                               ; preds = %38, %41
  %43 = load ptr, ptr %7, align 8, !tbaa !77
  %44 = icmp eq ptr %43, %8
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, ptr %9, align 8, !tbaa !64
  %47 = icmp ult i64 %46, 16
  tail call void @llvm.assume(i1 %47)
  br label %49

48:                                               ; preds = %42
  tail call void @_ZdlPv(ptr noundef %43) #19
  br label %49

49:                                               ; preds = %45, %48
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  resume { ptr, i32 } %35

50:                                               ; preds = %28
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13cMathFunctionC2EPKcPFddddEiS1_S1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  tail call void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false)
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cMathFunction, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %7 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3, i32 2
  store ptr %8, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %9, align 8, !tbaa !64
  store i8 0, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4, i32 2
  store ptr %11, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %12, align 8, !tbaa !64
  store i8 0, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %4, null
  %14 = select i1 %13, ptr @.str.8, ptr %4
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #17
  %16 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %14, i64 noundef %15)
          to label %17 unwind label %29

17:                                               ; preds = %6
  %18 = icmp eq ptr %5, null
  %19 = select i1 %18, ptr @.str.8, ptr %5
  %20 = load i64, ptr %12, align 8, !tbaa !64
  %21 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #17
  %22 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef %20, ptr noundef nonnull %19, i64 noundef %21)
          to label %23 unwind label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  store ptr %2, ptr %24, align 8, !tbaa !68
  %25 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  store i32 3, ptr %25, align 8, !tbaa !76
  switch i32 %3, label %26 [
    i32 -1, label %33
    i32 3, label %33
  ]

26:                                               ; preds = %23
  %27 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %27, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %3)
          to label %28 unwind label %31

28:                                               ; preds = %26
  invoke void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %50 unwind label %29

29:                                               ; preds = %17, %6, %28
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %34

31:                                               ; preds = %26
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %27) #17
  br label %34

33:                                               ; preds = %23, %23
  ret void

34:                                               ; preds = %31, %29
  %35 = phi { ptr, i32 } [ %30, %29 ], [ %32, %31 ]
  %36 = load ptr, ptr %10, align 8, !tbaa !77
  %37 = icmp eq ptr %36, %11
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, ptr %12, align 8, !tbaa !64
  %40 = icmp ult i64 %39, 16
  tail call void @llvm.assume(i1 %40)
  br label %42

41:                                               ; preds = %34
  tail call void @_ZdlPv(ptr noundef %36) #19
  br label %42

42:                                               ; preds = %38, %41
  %43 = load ptr, ptr %7, align 8, !tbaa !77
  %44 = icmp eq ptr %43, %8
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, ptr %9, align 8, !tbaa !64
  %47 = icmp ult i64 %46, 16
  tail call void @llvm.assume(i1 %47)
  br label %49

48:                                               ; preds = %42
  tail call void @_ZdlPv(ptr noundef %43) #19
  br label %49

49:                                               ; preds = %45, %48
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  resume { ptr, i32 } %35

50:                                               ; preds = %28
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13cMathFunctionC2EPKcPFdddddEiS1_S1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  tail call void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false)
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cMathFunction, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %7 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3, i32 2
  store ptr %8, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3, i32 1
  store i64 0, ptr %9, align 8, !tbaa !64
  store i8 0, ptr %8, align 8, !tbaa !67
  %10 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4, i32 2
  store ptr %11, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %12, align 8, !tbaa !64
  store i8 0, ptr %11, align 8, !tbaa !67
  %13 = icmp eq ptr %4, null
  %14 = select i1 %13, ptr @.str.8, ptr %4
  %15 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #17
  %16 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %14, i64 noundef %15)
          to label %17 unwind label %29

17:                                               ; preds = %6
  %18 = icmp eq ptr %5, null
  %19 = select i1 %18, ptr @.str.8, ptr %5
  %20 = load i64, ptr %12, align 8, !tbaa !64
  %21 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #17
  %22 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 0, i64 noundef %20, ptr noundef nonnull %19, i64 noundef %21)
          to label %23 unwind label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  store ptr %2, ptr %24, align 8, !tbaa !68
  %25 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  store i32 4, ptr %25, align 8, !tbaa !76
  switch i32 %3, label %26 [
    i32 -1, label %33
    i32 4, label %33
  ]

26:                                               ; preds = %23
  %27 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %27, ptr noundef nonnull @.str.4, ptr noundef %1, i32 noundef %3)
          to label %28 unwind label %31

28:                                               ; preds = %26
  invoke void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
          to label %50 unwind label %29

29:                                               ; preds = %17, %6, %28
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %34

31:                                               ; preds = %26
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %27) #17
  br label %34

33:                                               ; preds = %23, %23
  ret void

34:                                               ; preds = %31, %29
  %35 = phi { ptr, i32 } [ %30, %29 ], [ %32, %31 ]
  %36 = load ptr, ptr %10, align 8, !tbaa !77
  %37 = icmp eq ptr %36, %11
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, ptr %12, align 8, !tbaa !64
  %40 = icmp ult i64 %39, 16
  tail call void @llvm.assume(i1 %40)
  br label %42

41:                                               ; preds = %34
  tail call void @_ZdlPv(ptr noundef %36) #19
  br label %42

42:                                               ; preds = %38, %41
  %43 = load ptr, ptr %7, align 8, !tbaa !77
  %44 = icmp eq ptr %43, %8
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i64, ptr %9, align 8, !tbaa !64
  %47 = icmp ult i64 %46, 16
  tail call void @llvm.assume(i1 %47)
  br label %49

48:                                               ; preds = %42
  tail call void @_ZdlPv(ptr noundef %43) #19
  br label %49

49:                                               ; preds = %45, %48
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  resume { ptr, i32 } %35

50:                                               ; preds = %28
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK13cMathFunction4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %3) #17
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %4 = getelementptr inbounds i8, ptr %3, i64 16
  %5 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.5, i64 noundef 7)
          to label %6 unwind label %32

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !57
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(20) %1)
          to label %11 unwind label %32

11:                                               ; preds = %6
  %12 = icmp eq ptr %10, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %11
  %14 = load ptr, ptr %4, align 8, !tbaa !57
  %15 = getelementptr i8, ptr %14, i64 -24
  %16 = load i64, ptr %15, align 8
  %17 = getelementptr inbounds i8, ptr %4, i64 %16
  %18 = getelementptr inbounds %"class.std::ios_base", ptr %17, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !86
  %20 = or i32 %19, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %17, i32 noundef %20)
          to label %24 unwind label %32

21:                                               ; preds = %11
  %22 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #17
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %10, i64 noundef %22)
          to label %24 unwind label %32

24:                                               ; preds = %21, %13
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %26 unwind label %32

26:                                               ; preds = %24
  %27 = getelementptr inbounds %class.cMathFunction, ptr %1, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !76
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %42, %26
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.10, i64 noundef 1)
          to label %48 unwind label %32

32:                                               ; preds = %48, %30, %24, %21, %13, %2, %6
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %52

34:                                               ; preds = %26, %42
  %35 = phi i32 [ %43, %42 ], [ 0, %26 ]
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, ptr @.str.8, ptr @.str.7
  %38 = select i1 %36, i64 0, i64 2
  %39 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %37, i64 noundef %38)
          to label %40 unwind label %46

40:                                               ; preds = %34
  %41 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.9, i64 noundef 6)
          to label %42 unwind label %46

42:                                               ; preds = %40
  %43 = add nuw nsw i32 %35, 1
  %44 = load i32, ptr %27, align 8, !tbaa !76
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %34, label %30, !llvm.loop !92

46:                                               ; preds = %40, %34
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %52

48:                                               ; preds = %30
  %49 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %3, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %49)
          to label %50 unwind label %32

50:                                               ; preds = %48
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #17
  %51 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %51) #17
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #17
  ret void

52:                                               ; preds = %46, %32
  %53 = phi { ptr, i32 } [ %47, %46 ], [ %33, %32 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #17
  %54 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %54) #17
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #17
  resume { ptr, i32 } %53
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK13cMathFunction16getMathFuncNoArgEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  %7 = load i32, ptr %2, align 8, !tbaa !76
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef %7)
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #17
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  ret ptr %13
}

declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK13cMathFunction15getMathFunc1ArgEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  %7 = load i32, ptr %2, align 8, !tbaa !76
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.12, i32 noundef %7)
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #17
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK13cMathFunction16getMathFunc2ArgsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  %7 = load i32, ptr %2, align 8, !tbaa !76
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.13, i32 noundef %7)
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #17
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK13cMathFunction16getMathFunc3ArgsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  %7 = load i32, ptr %2, align 8, !tbaa !76
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i32 noundef %7)
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #17
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK13cMathFunction16getMathFunc4ArgsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  %7 = load i32, ptr %2, align 8, !tbaa !76
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.15, i32 noundef %7)
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #17
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN13cMathFunction4findEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !82 {
  %3 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @nedFunctions)
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(144) %3), !prof !95
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %16, label %39, !prof !96

9:                                                ; preds = %36
  %10 = add nuw nsw i32 %18, 1
  %11 = load ptr, ptr %3, align 8, !tbaa !57
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(144) %3), !prof !95
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %39, !prof !97, !llvm.loop !98

16:                                               ; preds = %2, %9
  %17 = phi ptr [ %38, %9 ], [ undef, %2 ]
  %18 = phi i32 [ %10, %9 ], [ 0, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !57
  %20 = getelementptr inbounds ptr, ptr %19, i64 24
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(144) %3, i32 noundef %18), !prof !99
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !100

24:                                               ; preds = %16
  %25 = tail call ptr @__dynamic_cast(ptr nonnull %22, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI13cMathFunction, i64 0) #17
  br label %26

26:                                               ; preds = %16, %24
  %27 = phi ptr [ %25, %24 ], [ null, %16 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29, !prof !101

29:                                               ; preds = %26
  %30 = tail call noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %0)
  br i1 %30, label %31, label %35, !prof !102

31:                                               ; preds = %29
  %32 = getelementptr inbounds %class.cMathFunction, ptr %27, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !76
  %34 = icmp eq i32 %33, %1
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %29, %26
  br label %36

36:                                               ; preds = %31, %35
  %37 = phi i1 [ true, %35 ], [ false, %31 ]
  %38 = phi ptr [ %17, %35 ], [ %27, %31 ]
  br i1 %37, label %9, label %39, !prof !103

39:                                               ; preds = %36, %9, %2
  %40 = phi ptr [ null, %2 ], [ %38, %36 ], [ null, %9 ]
  ret ptr %40
}

declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !104 {
  %3 = load ptr, ptr %0, align 8, !tbaa !57
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !105
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %1, null
  br i1 %7, label %16, label %9, !prof !106

9:                                                ; preds = %2
  br i1 %8, label %12, label %10, !prof !106

10:                                               ; preds = %9
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %1) #20
  br label %21

12:                                               ; preds = %9
  %13 = load i8, ptr %6, align 1, !tbaa !67
  %14 = icmp ne i8 %13, 0
  %15 = zext i1 %14 to i32
  br label %21

16:                                               ; preds = %2
  br i1 %8, label %21, label %17

17:                                               ; preds = %16
  %18 = load i8, ptr %1, align 1, !tbaa !67
  %19 = icmp ne i8 %18, 0
  %20 = sext i1 %19 to i32
  br label %21

21:                                               ; preds = %10, %12, %16, %17
  %22 = phi i32 [ %11, %10 ], [ %15, %12 ], [ 0, %16 ], [ %20, %17 ]
  %23 = icmp eq i32 %22, 0
  ret i1 %23
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN13cMathFunction3getEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = tail call noundef ptr @_ZN13cMathFunction4findEPKci(ptr noundef %0, i32 noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #17
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull @.str.16, ptr noundef %0, i32 noundef %1)
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #18
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #17
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN13cMathFunction13findByPointerEPFdzE(ptr noundef readnone %0) local_unnamed_addr #3 align 2 !prof !56 {
  %2 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @nedFunctions)
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds ptr, ptr %3, i64 23
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(144) %2)
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %15, label %36

8:                                                ; preds = %33
  %9 = add nuw nsw i32 %17, 1
  %10 = load ptr, ptr %2, align 8, !tbaa !57
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(144) %2)
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %36, !llvm.loop !107

15:                                               ; preds = %1, %8
  %16 = phi ptr [ %35, %8 ], [ undef, %1 ]
  %17 = phi i32 [ %9, %8 ], [ 0, %1 ]
  %18 = load ptr, ptr %2, align 8, !tbaa !57
  %19 = getelementptr inbounds ptr, ptr %18, i64 24
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %17)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = tail call ptr @__dynamic_cast(ptr nonnull %21, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI13cMathFunction, i64 0) #17
  br label %25

25:                                               ; preds = %15, %23
  %26 = phi ptr [ %24, %23 ], [ null, %15 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %class.cMathFunction, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !68
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %28, %32
  %34 = phi i1 [ true, %32 ], [ false, %28 ]
  %35 = phi ptr [ %16, %32 ], [ %26, %28 ]
  br i1 %34, label %8, label %36

36:                                               ; preds = %33, %8, %1
  %37 = phi ptr [ null, %1 ], [ %35, %33 ], [ null, %8 ]
  ret ptr %37
}

declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13cMathFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cMathFunction, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !109

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !64
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #19
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !110

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !64
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #19
  br label %21

21:                                               ; preds = %16, %20
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13cMathFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #7 comdat align 2 !prof !108 {
  tail call void @_ZN13cMathFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #8 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.8, ptr %3, !prof !113
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !114 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !115
  ret ptr %5
}

declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare noundef ptr @_ZNK23cNoncopyableOwnedObject3dupEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN23cNoncopyableOwnedObject10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #0

declare void @_ZN23cNoncopyableOwnedObject12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #8 comdat align 2 !prof !116 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #8 comdat align 2 !prof !118 {
  ret i1 true
}

declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !119
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  ret i1 false
}

declare void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !121

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !64
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #19
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !121

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !64
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #19
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !122

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !64
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #19
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !120 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #21
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %2) #19
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !123
  ret i32 %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !56 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !64
  %6 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %5, ptr noundef %1, i64 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #17
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %7 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.17)
          to label %8 unwind label %75

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 2
  store ptr %9, ptr %4, align 8, !tbaa !60, !alias.scope !127
  %10 = load ptr, ptr %7, align 8, !tbaa !77
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !64
  %16 = icmp ult i64 %15, 16
  call void @llvm.assume(i1 %16)
  %17 = add nuw nsw i64 %15, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, ptr noundef nonnull align 8 dereferenceable(1) %11, i64 %17, i1 false)
  br label %20

18:                                               ; preds = %8
  store ptr %10, ptr %4, align 8, !tbaa !77, !alias.scope !127
  %19 = load i64, ptr %11, align 8, !tbaa !67
  store i64 %19, ptr %9, align 8, !tbaa !67, !alias.scope !127
  br label %20

20:                                               ; preds = %13, %18
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %7, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !64
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %4, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !64, !alias.scope !127
  store ptr %11, ptr %7, align 8, !tbaa !77
  store i64 0, ptr %21, align 8, !tbaa !64
  store i8 0, ptr %11, align 8, !tbaa !67
  %24 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %25 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !64, !noalias !130
  %27 = load i64, ptr %23, align 8, !tbaa !64, !noalias !130
  %28 = sub i64 4611686018427387903, %27
  %29 = icmp ult i64 %28, %26
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #18
          to label %31 unwind label %77

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %20
  %33 = load ptr, ptr %24, align 8, !tbaa !77, !noalias !130
  %34 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %33, i64 noundef %26)
          to label %35 unwind label %77

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 2
  store ptr %36, ptr %3, align 8, !tbaa !60, !alias.scope !130
  %37 = load ptr, ptr %34, align 8, !tbaa !77
  %38 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 2
  %39 = icmp eq ptr %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !64
  %43 = icmp ult i64 %42, 16
  call void @llvm.assume(i1 %43)
  %44 = add nuw nsw i64 %42, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %36, ptr noundef nonnull align 8 dereferenceable(1) %38, i64 %44, i1 false)
  br label %47

45:                                               ; preds = %35
  store ptr %37, ptr %3, align 8, !tbaa !77, !alias.scope !130
  %46 = load i64, ptr %38, align 8, !tbaa !67
  store i64 %46, ptr %36, align 8, !tbaa !67, !alias.scope !130
  br label %47

47:                                               ; preds = %40, %45
  %48 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %34, i64 0, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !64
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %3, i64 0, i32 1
  store i64 %49, ptr %50, align 8, !tbaa !64, !alias.scope !130
  store ptr %38, ptr %34, align 8, !tbaa !77
  store i64 0, ptr %48, align 8, !tbaa !64
  store i8 0, ptr %38, align 8, !tbaa !67
  %51 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
  %52 = load ptr, ptr %3, align 8, !tbaa !77
  %53 = icmp eq ptr %52, %36
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i64, ptr %50, align 8, !tbaa !64
  %56 = icmp ult i64 %55, 16
  call void @llvm.assume(i1 %56)
  br label %58

57:                                               ; preds = %47
  call void @_ZdlPv(ptr noundef %52) #19
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %4, align 8, !tbaa !77
  %60 = icmp eq ptr %59, %9
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, ptr %23, align 8, !tbaa !64
  %63 = icmp ult i64 %62, 16
  call void @llvm.assume(i1 %63)
  br label %65

64:                                               ; preds = %58
  call void @_ZdlPv(ptr noundef %59) #19
  br label %65

65:                                               ; preds = %61, %64
  %66 = load ptr, ptr %5, align 8, !tbaa !77
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !64
  %72 = icmp ult i64 %71, 16
  call void @llvm.assume(i1 %72)
  br label %74

73:                                               ; preds = %65
  call void @_ZdlPv(ptr noundef %66) #19
  br label %74

74:                                               ; preds = %69, %73
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void

75:                                               ; preds = %2
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %85

77:                                               ; preds = %32, %30
  %78 = landingpad { ptr, i32 }
          cleanup
  %79 = load ptr, ptr %4, align 8, !tbaa !77
  %80 = icmp eq ptr %79, %9
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i64, ptr %23, align 8, !tbaa !64
  %83 = icmp ult i64 %82, 16
  call void @llvm.assume(i1 %83)
  br label %85

84:                                               ; preds = %77
  call void @_ZdlPv(ptr noundef %79) #19
  br label %85

85:                                               ; preds = %84, %81, %75
  %86 = phi { ptr, i32 } [ %76, %75 ], [ %78, %81 ], [ %78, %84 ]
  %87 = load ptr, ptr %5, align 8, !tbaa !77
  %88 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 2
  %89 = icmp eq ptr %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %5, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !64
  %93 = icmp ult i64 %92, 16
  call void @llvm.assume(i1 %93)
  br label %95

94:                                               ; preds = %85
  call void @_ZdlPv(ptr noundef %87) #19
  br label %95

95:                                               ; preds = %94, %90
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %86
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !120 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !133, !range !134, !noundef !135
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !136
  ret i32 %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca i64, align 8
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 2
  store ptr %5, ptr %0, align 8, !tbaa !60
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.19) #18
  unreachable

8:                                                ; preds = %3
  %9 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store i64 %9, ptr %4, align 8, !tbaa !137
  %10 = icmp ugt i64 %9, 15
  br i1 %10, label %11, label %14, !prof !138

11:                                               ; preds = %8
  %12 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0)
  store ptr %12, ptr %0, align 8, !tbaa !77
  %13 = load i64, ptr %4, align 8, !tbaa !137
  store i64 %13, ptr %5, align 8, !tbaa !67
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %0, align 8, !tbaa !77
  switch i64 %9, label %18 [
    i64 1, label %16
    i64 0, label %19
  ], !prof !139

16:                                               ; preds = %14
  %17 = load i8, ptr %1, align 1, !tbaa !67
  store i8 %17, ptr %15, align 1, !tbaa !67
  br label %19

18:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %15, ptr nonnull align 1 %1, i64 %9, i1 false), !prof !140
  br label %19

19:                                               ; preds = %14, %16, %18
  %20 = load i64, ptr %4, align 8, !tbaa !137
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %0, i64 0, i32 1
  store i64 %20, ptr %21, align 8, !tbaa !64
  %22 = load ptr, ptr %0, align 8, !tbaa !77
  %23 = getelementptr inbounds i8, ptr %22, i64 %20
  store i8 0, ptr %23, align 1, !tbaa !67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #7 align 2

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3 align 2

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_cmathfunction.cc() #14 section ".text.startup" !prof !120 !PGOFuncName !141 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind memory(read) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!55}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54}
!35 = !{ptr @_ZN13cMathFunctionC2EPKcPFddEiS1_S1_, ptr @_ZN12cOwnedObjectC2EPKcb, i64 12}
!36 = !{ptr @_ZN13cMathFunctionC2EPKcPFddEiS1_S1_, ptr @strlen, i64 24}
!37 = !{ptr @_ZN13cMathFunctionC2EPKcPFddEiS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 24}
!38 = !{ptr @_ZN13cMathFunctionC2EPKcPFdddEiS1_S1_, ptr @_ZN12cOwnedObjectC2EPKcb, i64 3}
!39 = !{ptr @_ZN13cMathFunctionC2EPKcPFdddEiS1_S1_, ptr @strlen, i64 6}
!40 = !{ptr @_ZN13cMathFunctionC2EPKcPFdddEiS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 6}
!41 = !{ptr @_ZN13cMathFunction4findEPKci, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 3}
!42 = !{ptr @_ZN13cMathFunction4findEPKci, ptr @__dynamic_cast, i64 201}
!43 = !{ptr @_ZN13cMathFunction4findEPKci, ptr @_ZNK7cObject6isNameEPKc, i64 45}
!44 = !{ptr @_ZNK7cObject6isNameEPKc, ptr @_ZNK12cNamedObject7getNameEv, i64 1400883}
!45 = !{ptr @_ZNK7cObject6isNameEPKc, ptr @strcmp, i64 2470429}
!46 = !{ptr @_ZN13cMathFunctionD2Ev, ptr @_ZdlPv, i64 15}
!47 = !{ptr @_ZN13cMathFunctionD2Ev, ptr @_ZN12cOwnedObjectD2Ev, i64 15}
!48 = !{ptr @_ZN13cMathFunctionD0Ev, ptr @_ZN13cMathFunctionD2Ev, i64 15}
!49 = !{ptr @_ZN13cMathFunctionD0Ev, ptr @_ZdlPv, i64 15}
!50 = !{ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK12cNamedObject7getNameEv, i64 97893}
!51 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZdlPv, i64 1}
!52 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!53 = !{ptr @_GLOBAL__sub_I_cmathfunction.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!54 = !{ptr @_GLOBAL__sub_I_cmathfunction.cc, ptr @__cxa_atexit, i64 1}
!55 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!56 = !{!"function_entry_count", i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"vtable pointer", !59, i64 0}
!59 = !{!"Simple C++ TBAA"}
!60 = !{!61, !62, i64 0}
!61 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !62, i64 0}
!62 = !{!"any pointer", !63, i64 0}
!63 = !{!"omnipotent char", !59, i64 0}
!64 = !{!65, !66, i64 8}
!65 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !61, i64 0, !66, i64 8, !63, i64 16}
!66 = !{!"long", !63, i64 0}
!67 = !{!63, !63, i64 0}
!68 = !{!69, !62, i64 40}
!69 = !{!"_ZTS13cMathFunction", !70, i64 0, !62, i64 40, !75, i64 48, !65, i64 56, !65, i64 88}
!70 = !{!"_ZTS23cNoncopyableOwnedObject", !71, i64 0}
!71 = !{!"_ZTS12cOwnedObject", !72, i64 0, !62, i64 24, !75, i64 32}
!72 = !{!"_ZTS12cNamedObject", !73, i64 0, !62, i64 8, !74, i64 16, !74, i64 18}
!73 = !{!"_ZTS7cObject"}
!74 = !{!"short", !63, i64 0}
!75 = !{!"int", !63, i64 0}
!76 = !{!69, !75, i64 48}
!77 = !{!65, !62, i64 0}
!78 = !{!"function_entry_count", i64 12}
!79 = !{!"branch_weights", i32 0, i32 12}
!80 = !{!"branch_weights", i32 12, i32 0}
!81 = !{!"branch_weights", i32 0, i32 0, i32 12}
!82 = !{!"function_entry_count", i64 3}
!83 = !{!"branch_weights", i32 0, i32 3}
!84 = !{!"branch_weights", i32 3, i32 0}
!85 = !{!"branch_weights", i32 0, i32 0, i32 3}
!86 = !{!87, !89, i64 32}
!87 = !{!"_ZTSSt8ios_base", !66, i64 8, !66, i64 16, !88, i64 24, !89, i64 28, !89, i64 32, !62, i64 40, !90, i64 48, !63, i64 64, !75, i64 192, !62, i64 200, !91, i64 208}
!88 = !{!"_ZTSSt13_Ios_Fmtflags", !63, i64 0}
!89 = !{!"_ZTSSt12_Ios_Iostate", !63, i64 0}
!90 = !{!"_ZTSNSt8ios_base6_WordsE", !62, i64 0, !66, i64 8}
!91 = !{!"_ZTSSt6locale", !62, i64 0}
!92 = distinct !{!92, !93, !94}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!"VP", i32 0, i64 204, i64 1695622185779208943, i64 204}
!96 = !{!"branch_weights", i32 191, i32 1}
!97 = !{!"branch_weights", i32 12673, i32 191}
!98 = distinct !{!98, !93, !94}
!99 = !{!"VP", i32 0, i64 201, i64 -1448180630179907869, i64 201}
!100 = !{!"branch_weights", i32 0, i32 201}
!101 = !{!"branch_weights", i32 156, i32 45}
!102 = !{!"branch_weights", i32 0, i32 45}
!103 = !{!"branch_weights", i32 201, i32 0}
!104 = !{!"function_entry_count", i64 2470429}
!105 = !{!"VP", i32 0, i64 2470429, i64 -1846066915438621208, i64 1400883, i64 8390818187414654894, i64 911292, i64 -3513973037635291526, i64 158254}
!106 = !{!"branch_weights", i32 0, i32 2470429}
!107 = distinct !{!107, !93, !94}
!108 = !{!"function_entry_count", i64 15}
!109 = !{!"branch_weights", i32 0, i32 15}
!110 = !{!"branch_weights", i32 15, i32 0}
!111 = !{!"function_entry_count", i64 192538233}
!112 = !{!72, !62, i64 8}
!113 = !{!"branch_weights", i32 0, i32 192538233}
!114 = !{!"function_entry_count", i64 235321}
!115 = !{!"VP", i32 0, i64 235321, i64 8390818187414654894, i64 137428, i64 -1846066915438621208, i64 97893}
!116 = !{!"function_entry_count", i64 542987320}
!117 = !{!71, !62, i64 24}
!118 = !{!"function_entry_count", i64 147484992}
!119 = !{!72, !74, i64 16}
!120 = !{!"function_entry_count", i64 1}
!121 = !{!"branch_weights", i32 1, i32 0}
!122 = !{!"branch_weights", i32 0, i32 1}
!123 = !{!124, !75, i64 8}
!124 = !{!"_ZTS10cException", !125, i64 0, !75, i64 8, !65, i64 16, !126, i64 48, !65, i64 56, !65, i64 88, !75, i64 120}
!125 = !{!"_ZTSSt9exception"}
!126 = !{!"bool", !63, i64 0}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: argument 0"}
!129 = distinct !{!129, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_: argument 0"}
!132 = distinct !{!132, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_"}
!133 = !{!124, !126, i64 48}
!134 = !{i8 0, i8 2}
!135 = !{}
!136 = !{!124, !75, i64 120}
!137 = !{!66, !66, i64 0}
!138 = !{!"branch_weights", i32 1257662, i32 631781}
!139 = !{!"branch_weights", i32 1856863, i32 32338, i32 242}
!140 = !{!"VP", i32 1, i64 0, i64 17, i64 0, i64 16, i64 0, i64 9, i64 0, i64 8, i64 0}
!141 = !{!"simulator/cmathfunction.cc;_GLOBAL__sub_I_cmathfunction.cc"}
