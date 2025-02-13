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
%class.cNamedObject = type <{ %class.cObject, ptr, i16, i16, [4 x i8] }>
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
%class.cOwnedObject = type <{ %class.cNamedObject.base, [4 x i8], ptr, i32, [4 x i8] }>
%class.cException = type <{ %"class.std::exception", i32, [4 x i8], %"class.std::__cxx11::basic_string", i8, [7 x i8], %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i32, [4 x i8] }>
%"class.std::exception" = type { ptr }
%"class.std::allocator" = type { i8 }
%struct._Guard = type { ptr }

$_ZN13cMathFunctionD2Ev = comdat any

$_ZN13cMathFunctionD0Ev = comdat any

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK12cOwnedObject8getOwnerEv = comdat any

$_ZNK12cOwnedObject13isOwnedObjectEv = comdat any

$_ZN12cNamedObject14getNamePoolingEv = comdat any

$_ZNK12cOwnedObject11isSoftOwnerEv = comdat any

$_ZN23cNoncopyableOwnedObjectC2EPKcb = comdat any

$_Z15opp_nulltoemptyPKc = comdat any

$_ZN23cNoncopyableOwnedObjectD2Ev = comdat any

$_ZN11noncopyableC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

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

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag = comdat any

$_ZNSt15__new_allocatorIcED2Ev = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_ = comdat any

$_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11noncopyableD2Ev = comdat any

$_ZNK7cObject6isNameEPKc = comdat any

$_ZNK13cMathFunction10getNumArgsEv = comdat any

$_Z10opp_strcmpPKcS0_ = comdat any

$_ZNK13cMathFunction11getMathFuncEv = comdat any

$_ZTS13cRuntimeError = comdat any

$_ZTS10cException = comdat any

$_ZTI10cException = comdat any

$_ZTI13cRuntimeError = comdat any

$_ZTV10cException = comdat any

@_ZTV13cMathFunction = dso_local unnamed_addr constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTI13cMathFunction, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN13cMathFunctionD2Ev, ptr @_ZN13cMathFunctionD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK13cMathFunction4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK23cNoncopyableOwnedObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN23cNoncopyableOwnedObject10parsimPackEP11cCommBuffer, ptr @_ZN23cNoncopyableOwnedObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cOwnedObject11isSoftOwnerEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cMathFunction = dso_local constant [16 x i8] c"13cMathFunction\00", align 1
@_ZTI23cNoncopyableOwnedObject = external constant ptr
@_ZTI13cMathFunction = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cMathFunction, ptr @_ZTI23cNoncopyableOwnedObject }, align 8
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [119 x i8] c"Register_Function() or cMathFunction: attempt to register function \22%s\22 with wrong number of arguments %d, should be 0\00", align 1
@_ZTS13cRuntimeError = linkonce_odr dso_local constant [16 x i8] c"13cRuntimeError\00", comdat, align 1
@_ZTS10cException = linkonce_odr dso_local constant [13 x i8] c"10cException\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTI10cException = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10cException, ptr @_ZTISt9exception }, comdat, align 8
@_ZTI13cRuntimeError = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cRuntimeError, ptr @_ZTI10cException }, comdat, align 8
@_ZTV23cNoncopyableOwnedObject = external unnamed_addr constant { [26 x ptr] }, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_ZTV10cException = linkonce_odr dso_local unnamed_addr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTI10cException, ptr @_ZN10cExceptionD2Ev, ptr @_ZN10cExceptionD0Ev, ptr @_ZNK10cException4whatEv, ptr @_ZNK10cException3dupEv, ptr @_ZNK10cException12getErrorCodeEv, ptr @_ZN10cException10setMessageEPKc, ptr @_ZN10cException14prependMessageEPKc, ptr @_ZNK10cException10hasContextEv, ptr @_ZNK10cException19getContextClassNameEv, ptr @_ZNK10cException18getContextFullPathEv, ptr @_ZNK10cException11getModuleIDEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.5 = private unnamed_addr constant [119 x i8] c"Register_Function() or cMathFunction: attempt to register function \22%s\22 with wrong number of arguments %d, should be 1\00", align 1
@.str.6 = private unnamed_addr constant [119 x i8] c"Register_Function() or cMathFunction: attempt to register function \22%s\22 with wrong number of arguments %d, should be 2\00", align 1
@.str.7 = private unnamed_addr constant [119 x i8] c"Register_Function() or cMathFunction: attempt to register function \22%s\22 with wrong number of arguments %d, should be 3\00", align 1
@.str.8 = private unnamed_addr constant [119 x i8] c"Register_Function() or cMathFunction: attempt to register function \22%s\22 with wrong number of arguments %d, should be 4\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"double \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"getMathFuncNoArg(): arg count mismatch (argc=%d)\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"getMathFunc1Arg(): arg count mismatch (argc=%d)\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"getMathFunc2Args(): arg count mismatch (argc=%d)\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"getMathFunc3Args(): arg count mismatch (argc=%d)\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"getMathFunc4Args(): arg count mismatch (argc=%d)\00", align 1
@nedFunctions = external global %class.cGlobalRegistrationList, align 8
@_ZTI12cOwnedObject = external constant ptr
@.str.21 = private unnamed_addr constant [139 x i8] c"Math function \22%s\22 with %d args not found -- perhaps it wasn't registered with the Register_Function() macro, or its code is not linked in\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cmathfunction.cc, ptr null }]

@_ZN13cMathFunctionC1EPKcPFdvEiS1_S1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN13cMathFunctionC2EPKcPFdvEiS1_S1_
@_ZN13cMathFunctionC1EPKcPFddEiS1_S1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN13cMathFunctionC2EPKcPFddEiS1_S1_
@_ZN13cMathFunctionC1EPKcPFdddEiS1_S1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN13cMathFunctionC2EPKcPFdddEiS1_S1_
@_ZN13cMathFunctionC1EPKcPFddddEiS1_S1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN13cMathFunctionC2EPKcPFddddEiS1_S1_
@_ZN13cMathFunctionC1EPKcPFdddddEiS1_S1_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, ptr, ptr), ptr @_ZN13cMathFunctionC2EPKcPFdddddEiS1_S1_

; Function Attrs: optsize
declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13cMathFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 comdat align 2 !prof !75 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cMathFunction, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %3 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  tail call void @_ZN23cNoncopyableOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13cMathFunctionD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN13cMathFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str.1, ptr %3, !prof !86
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !87 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  ret ptr %5
}

; Function Attrs: optsize
declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK13cMathFunction4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %3) #16
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #15
  %4 = getelementptr inbounds i8, ptr %3, i64 16
  %5 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.9) #15
          to label %6 unwind label %21

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 8, !tbaa !76
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(20) %1) #15
          to label %11 unwind label %21

11:                                               ; preds = %6
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %10) #15
          to label %13 unwind label %21

13:                                               ; preds = %11
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.10) #15
          to label %15 unwind label %21

15:                                               ; preds = %13
  %16 = getelementptr inbounds %class.cMathFunction, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !89
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %30, %15
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.13) #15
          to label %36 unwind label %21

21:                                               ; preds = %36, %19, %13, %11, %6, %2
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %38

23:                                               ; preds = %15, %30
  %24 = phi i32 [ %31, %30 ], [ 0, %15 ]
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @.str.1, ptr @.str.11
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %26) #15
          to label %28 unwind label %34

28:                                               ; preds = %23
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull @.str.12) #15
          to label %30 unwind label %34

30:                                               ; preds = %28
  %31 = add nuw nsw i32 %24, 1
  %32 = load i32, ptr %16, align 8, !tbaa !89
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %23, label %19, !llvm.loop !97

34:                                               ; preds = %28, %23
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %38

36:                                               ; preds = %19
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %3) #15
          to label %37 unwind label %21

37:                                               ; preds = %36
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #13
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #16
  ret void

38:                                               ; preds = %34, %21
  %39 = phi { ptr, i32 } [ %35, %34 ], [ %22, %21 ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #13
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #16
  resume { ptr, i32 } %39
}

; Function Attrs: optsize
declare void @_ZNK7cObject12detailedInfoB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: optsize
declare noundef ptr @_ZNK23cNoncopyableOwnedObject3dupEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject4takeEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject4dropEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN23cNoncopyableOwnedObject10parsimPackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN23cNoncopyableOwnedObject12parsimUnpackEP11cCommBuffer(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !99 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !101 {
  ret i1 true
}

; Function Attrs: optsize
declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !102
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !88 {
  ret i1 false
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #15
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13cMathFunctionC2EPKcPFdvEiS1_S1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  tail call void @_ZN23cNoncopyableOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false) #15
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cMathFunction, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !76
  %7 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  %8 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  %9 = tail call noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %4) #15
  %10 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %9) #15
          to label %11 unwind label %22

11:                                               ; preds = %6
  %12 = tail call noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %5) #15
  %13 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %12) #15
          to label %14 unwind label %22

14:                                               ; preds = %11
  %15 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  store ptr %2, ptr %15, align 8, !tbaa !103
  %16 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  store i32 0, ptr %16, align 8, !tbaa !89
  %17 = add i32 %3, -1
  %18 = icmp ult i32 %17, -2
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %20, ptr noundef nonnull @.str, ptr noundef %1, i32 noundef %3) #15
          to label %21 unwind label %24

21:                                               ; preds = %19
  invoke void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #17
          to label %29 unwind label %22

22:                                               ; preds = %21, %11, %6
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %27

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %20) #16
  br label %27

26:                                               ; preds = %14
  ret void

27:                                               ; preds = %24, %22
  %28 = phi { ptr, i32 } [ %23, %22 ], [ %25, %24 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  tail call void @_ZN23cNoncopyableOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  resume { ptr, i32 } %28

29:                                               ; preds = %21
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN23cNoncopyableOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  tail call void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext %2) #15
  tail call void @_ZN11noncopyableC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV23cNoncopyableOwnedObject, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %0) local_unnamed_addr #1 comdat !prof !105 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @.str.1, ptr %0, !prof !106
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ...) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN23cNoncopyableOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11noncopyableD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11noncopyableC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !107 {
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %0) local_unnamed_addr #1 comdat align 2 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #13
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !108 {
  store ptr getelementptr inbounds ({ [13 x ptr] }, ptr @_ZTV10cException, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !76
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  %4 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10cExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN10cExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(124) %0) #13
  tail call void @_ZdlPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException4whatEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException3dupEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #19
  invoke void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(124) %0) #15
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #14
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException12getErrorCodeEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !109
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException10setMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !88 {
  %3 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN10cException14prependMessageEPKc(ptr noundef nonnull align 8 dereferenceable(124) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  %6 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  call void @_ZNSaIcEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #13
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %6) #15
          to label %7 unwind label %12

7:                                                ; preds = %2
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.2) #15
          to label %8 unwind label %14

8:                                                ; preds = %7
  %9 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 3
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %9) #15
          to label %10 unwind label %16

10:                                               ; preds = %8
  %11 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %20

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  br label %20

20:                                               ; preds = %18, %12
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %13, %12 ]
  call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK10cException10hasContextEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !108 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 8, !tbaa !113, !range !114, !noundef !115
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException19getContextClassNameEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 6
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK10cException18getContextFullPathEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 7
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK10cException11getModuleIDEv(ptr noundef nonnull align 8 dereferenceable(124) %0) unnamed_addr #1 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %class.cException, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !116
  ret i32 %3
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZN10cExceptionC1ERKS_(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef nonnull align 8 dereferenceable(124)) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat !prof !117 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #2 comdat !prof !118 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
  %4 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #15
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #20
          to label %7 unwind label %8

7:                                                ; preds = %6
  unreachable

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %16

10:                                               ; preds = %3
  %11 = tail call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %1) #15
  %12 = getelementptr inbounds i8, ptr %1, i64 %11
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %12) #15
          to label %13 unwind label %14

13:                                               ; preds = %10
  ret void

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %15, %14 ]
  tail call void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC2EPcRKS3_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1 align 2

; Function Attrs: noreturn optsize
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %4 = alloca i64, align 8
  %5 = alloca %struct._Guard, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %6 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #15
  store i64 %6, ptr %4, align 8, !tbaa !120
  %7 = icmp ugt i64 %6, 15
  br i1 %7, label %8, label %11, !prof !121

8:                                                ; preds = %3
  %9 = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 0) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %9) #15
  %10 = load i64, ptr %4, align 8, !tbaa !120
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #15
  br label %13

11:                                               ; preds = %3
  %12 = tail call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  br label %13

13:                                               ; preds = %11, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0) #15
  %14 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef %14, ptr noundef %1, ptr noundef %2) #13
  store ptr null, ptr %5, align 8, !tbaa !122
  %15 = load i64, ptr %4, align 8, !tbaa !120
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %15) #15
          to label %16 unwind label %17

16:                                               ; preds = %13
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIcED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !124 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !119 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !125
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #15
  ret i64 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !119 {
  store ptr %1, ptr %0, align 8, !tbaa !122
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = load ptr, ptr %0, align 8, !tbaa !122
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !126

4:                                                ; preds = %1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #15
          to label %5 unwind label %6

5:                                                ; preds = %4, %1
  ret void

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #18
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !119 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 comdat !prof !119 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11noncopyableD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !127 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13cMathFunctionC2EPKcPFddEiS1_S1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  tail call void @_ZN23cNoncopyableOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false) #15
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cMathFunction, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !76
  %7 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  %8 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  %9 = tail call noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %4) #15
  %10 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %9) #15
          to label %11 unwind label %20

11:                                               ; preds = %6
  %12 = tail call noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %5) #15
  %13 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %12) #15
          to label %14 unwind label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  store ptr %2, ptr %15, align 8, !tbaa !103
  %16 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  store i32 1, ptr %16, align 8, !tbaa !89
  switch i32 %3, label %17 [
    i32 -1, label %24
    i32 1, label %24
  ]

17:                                               ; preds = %14
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull @.str.5, ptr noundef %1, i32 noundef %3) #15
          to label %19 unwind label %22

19:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #17
          to label %27 unwind label %20

20:                                               ; preds = %19, %11, %6
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %25

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #16
  br label %25

24:                                               ; preds = %14, %14
  ret void

25:                                               ; preds = %22, %20
  %26 = phi { ptr, i32 } [ %21, %20 ], [ %23, %22 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  tail call void @_ZN23cNoncopyableOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  resume { ptr, i32 } %26

27:                                               ; preds = %19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13cMathFunctionC2EPKcPFdddEiS1_S1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  tail call void @_ZN23cNoncopyableOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false) #15
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cMathFunction, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !76
  %7 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  %8 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  %9 = tail call noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %4) #15
  %10 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %9) #15
          to label %11 unwind label %20

11:                                               ; preds = %6
  %12 = tail call noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %5) #15
  %13 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %12) #15
          to label %14 unwind label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  store ptr %2, ptr %15, align 8, !tbaa !103
  %16 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  store i32 2, ptr %16, align 8, !tbaa !89
  switch i32 %3, label %17 [
    i32 -1, label %24
    i32 2, label %24
  ]

17:                                               ; preds = %14
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef %3) #15
          to label %19 unwind label %22

19:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #17
          to label %27 unwind label %20

20:                                               ; preds = %19, %11, %6
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %25

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #16
  br label %25

24:                                               ; preds = %14, %14
  ret void

25:                                               ; preds = %22, %20
  %26 = phi { ptr, i32 } [ %21, %20 ], [ %23, %22 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  tail call void @_ZN23cNoncopyableOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  resume { ptr, i32 } %26

27:                                               ; preds = %19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13cMathFunctionC2EPKcPFddddEiS1_S1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  tail call void @_ZN23cNoncopyableOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false) #15
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cMathFunction, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !76
  %7 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  %8 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  %9 = tail call noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %4) #15
  %10 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %9) #15
          to label %11 unwind label %20

11:                                               ; preds = %6
  %12 = tail call noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %5) #15
  %13 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %12) #15
          to label %14 unwind label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  store ptr %2, ptr %15, align 8, !tbaa !103
  %16 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  store i32 3, ptr %16, align 8, !tbaa !89
  switch i32 %3, label %17 [
    i32 -1, label %24
    i32 3, label %24
  ]

17:                                               ; preds = %14
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull @.str.7, ptr noundef %1, i32 noundef %3) #15
          to label %19 unwind label %22

19:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #17
          to label %27 unwind label %20

20:                                               ; preds = %19, %11, %6
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %25

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #16
  br label %25

24:                                               ; preds = %14, %14
  ret void

25:                                               ; preds = %22, %20
  %26 = phi { ptr, i32 } [ %21, %20 ], [ %23, %22 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  tail call void @_ZN23cNoncopyableOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  resume { ptr, i32 } %26

27:                                               ; preds = %19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13cMathFunctionC2EPKcPFdddddEiS1_S1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  tail call void @_ZN23cNoncopyableOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false) #15
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cMathFunction, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !76
  %7 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 3
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  %8 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  %9 = tail call noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %4) #15
  %10 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %9) #15
          to label %11 unwind label %20

11:                                               ; preds = %6
  %12 = tail call noundef ptr @_Z15opp_nulltoemptyPKc(ptr noundef %5) #15
  %13 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %12) #15
          to label %14 unwind label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  store ptr %2, ptr %15, align 8, !tbaa !103
  %16 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  store i32 4, ptr %16, align 8, !tbaa !89
  switch i32 %3, label %17 [
    i32 -1, label %24
    i32 4, label %24
  ]

17:                                               ; preds = %14
  %18 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %18, ptr noundef nonnull @.str.8, ptr noundef %1, i32 noundef %3) #15
          to label %19 unwind label %22

19:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #17
          to label %27 unwind label %20

20:                                               ; preds = %19, %11, %6
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %25

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #16
  br label %25

24:                                               ; preds = %14, %14
  ret void

25:                                               ; preds = %22, %20
  %26 = phi { ptr, i32 } [ %21, %20 ], [ %23, %22 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  tail call void @_ZN23cNoncopyableOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
  resume { ptr, i32 } %26

27:                                               ; preds = %19
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13cMathFunction16getMathFuncNoArgEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !89
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %7 = load i32, ptr %2, align 8, !tbaa !89
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.16, i32 noundef %7) #15
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #17
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #16
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  ret ptr %13
}

; Function Attrs: optsize
declare void @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124), ptr noundef, ptr noundef, ...) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13cMathFunction15getMathFunc1ArgEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !89
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %7 = load i32, ptr %2, align 8, !tbaa !89
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.17, i32 noundef %7) #15
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #17
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #16
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13cMathFunction16getMathFunc2ArgsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !89
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %7 = load i32, ptr %2, align 8, !tbaa !89
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.18, i32 noundef %7) #15
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #17
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #16
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13cMathFunction16getMathFunc3ArgsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !89
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %7 = load i32, ptr %2, align 8, !tbaa !89
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.19, i32 noundef %7) #15
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #17
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #16
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK13cMathFunction16getMathFunc4ArgsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !89
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  %7 = load i32, ptr %2, align 8, !tbaa !89
  invoke void (ptr, ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPK7cObjectPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull %0, ptr noundef nonnull @.str.20, i32 noundef %7) #15
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #17
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #16
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN13cMathFunction4findEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !129 {
  %3 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @nedFunctions) #15
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(144) %3) #15
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %31, !prof !130

9:                                                ; preds = %2, %24
  %10 = phi i32 [ %25, %24 ], [ 0, %2 ]
  %11 = load ptr, ptr %3, align 8, !tbaa !76
  %12 = getelementptr inbounds ptr, ptr %11, i64 24
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(144) %3, i32 noundef %10) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = tail call ptr @__dynamic_cast(ptr nonnull %14, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI13cMathFunction, i64 0) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19, !prof !131

19:                                               ; preds = %16
  %20 = tail call noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %0) #15
  br i1 %20, label %21, label %24, !prof !132

21:                                               ; preds = %19
  %22 = tail call noundef i32 @_ZNK13cMathFunction10getNumArgsEv(ptr noundef nonnull align 8 dereferenceable(120) %17) #15
  %23 = icmp eq i32 %22, %1
  br i1 %23, label %31, label %24

24:                                               ; preds = %9, %16, %19, %21
  %25 = add nuw nsw i32 %10, 1
  %26 = load ptr, ptr %3, align 8, !tbaa !76
  %27 = getelementptr inbounds ptr, ptr %26, i64 23
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef i32 %28(ptr noundef nonnull align 8 dereferenceable(144) %3) #15
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %9, label %31, !prof !133, !llvm.loop !134

31:                                               ; preds = %24, %21, %2
  %32 = phi ptr [ null, %2 ], [ %17, %21 ], [ null, %24 ]
  ret ptr %32
}

; Function Attrs: optsize
declare noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

; Function Attrs: nofree nounwind memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7cObject6isNameEPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !135 {
  %3 = load ptr, ptr %0, align 8, !tbaa !76
  %4 = getelementptr inbounds ptr, ptr %3, i64 6
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %7 = tail call noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %6, ptr noundef %1) #15
  %8 = icmp eq i32 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK13cMathFunction10getNumArgsEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !89
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_Z10opp_strcmpPKcS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat !prof !136 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  br i1 %3, label %12, label %5, !prof !137

5:                                                ; preds = %2
  br i1 %4, label %8, label %6, !prof !138

6:                                                ; preds = %5
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #21
  br label %17

8:                                                ; preds = %5
  %9 = load i8, ptr %0, align 1, !tbaa !139
  %10 = icmp ne i8 %9, 0
  %11 = zext i1 %10 to i32
  br label %17

12:                                               ; preds = %2
  br i1 %4, label %17, label %13, !prof !140

13:                                               ; preds = %12
  %14 = load i8, ptr %1, align 1, !tbaa !139
  %15 = icmp ne i8 %14, 0
  %16 = sext i1 %15 to i32
  br label %17

17:                                               ; preds = %12, %13, %6, %8
  %18 = phi i32 [ %7, %6 ], [ %11, %8 ], [ 0, %12 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN13cMathFunction3getEPKci(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = tail call noundef ptr @_ZN13cMathFunction4findEPKci(ptr noundef %0, i32 noundef %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 128) #16
  invoke void (ptr, ptr, ...) @_ZN13cRuntimeErrorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(124) %6, ptr noundef nonnull @.str.21, ptr noundef %0, i32 noundef %1) #15
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTI13cRuntimeError, ptr nonnull @_ZN10cExceptionD2Ev) #17
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #16
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN13cMathFunction13findByPointerEPFdzE(ptr noundef readnone %0) local_unnamed_addr #2 align 2 !prof !88 {
  %2 = tail call noundef ptr @_ZN23cGlobalRegistrationList11getInstanceEv(ptr noundef nonnull align 8 dereferenceable(16) @nedFunctions) #15
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = getelementptr inbounds ptr, ptr %3, i64 23
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(144) %2) #15
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1, %21
  %9 = phi i32 [ %22, %21 ], [ 0, %1 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !76
  %11 = getelementptr inbounds ptr, ptr %10, i64 24
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef %9) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %8
  %16 = tail call ptr @__dynamic_cast(ptr nonnull %13, ptr nonnull @_ZTI12cOwnedObject, ptr nonnull @_ZTI13cMathFunction, i64 0) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = tail call noundef ptr @_ZNK13cMathFunction11getMathFuncEv(ptr noundef nonnull align 8 dereferenceable(120) %16) #15
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %28, label %21

21:                                               ; preds = %8, %15, %18
  %22 = add nuw nsw i32 %9, 1
  %23 = load ptr, ptr %2, align 8, !tbaa !76
  %24 = getelementptr inbounds ptr, ptr %23, i64 23
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef i32 %25(ptr noundef nonnull align 8 dereferenceable(144) %2) #15
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %8, label %28, !llvm.loop !141

28:                                               ; preds = %21, %18, %1
  %29 = phi ptr [ null, %1 ], [ %16, %18 ], [ null, %21 ]
  ret ptr %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK13cMathFunction11getMathFuncEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #1 comdat align 2 !prof !88 {
  %2 = getelementptr inbounds %class.cMathFunction, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_cmathfunction.cc() #3 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(read) }
attributes #13 = { nounwind optsize }
attributes #14 = { builtin nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin optsize allocsize(0) }
attributes #20 = { noreturn optsize }
attributes #21 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!74}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412426}
!4 = !{!"MaxCount", i64 61624744013}
!5 = !{!"MaxInternalCount", i64 9097682171}
!6 = !{!"MaxFunctionCount", i64 61624744013}
!7 = !{!"NumCounts", i64 22816}
!8 = !{!"NumFunctions", i64 10273}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 61624744013, i32 1}
!14 = !{i32 100000, i64 61624744013, i32 1}
!15 = !{i32 200000, i64 57319387120, i32 2}
!16 = !{i32 300000, i64 57319387120, i32 2}
!17 = !{i32 400000, i64 48398671114, i32 3}
!18 = !{i32 500000, i64 21674314260, i32 4}
!19 = !{i32 600000, i64 13210012293, i32 6}
!20 = !{i32 700000, i64 9097682171, i32 9}
!21 = !{i32 800000, i64 1685490447, i32 17}
!22 = !{i32 900000, i64 467312602, i32 72}
!23 = !{i32 950000, i64 202351116, i32 133}
!24 = !{i32 990000, i64 73590684, i32 225}
!25 = !{i32 999000, i64 3128957, i32 339}
!26 = !{i32 999900, i64 100587, i32 1069}
!27 = !{i32 999990, i64 10550, i32 1784}
!28 = !{i32 999999, i64 1105, i32 2320}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!36 = !{ptr @_ZN13cMathFunctionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 30}
!37 = !{ptr @_ZN13cMathFunctionD2Ev, ptr @_ZN23cNoncopyableOwnedObjectD2Ev, i64 15}
!38 = !{ptr @_ZN23cNoncopyableOwnedObjectC2EPKcb, ptr @_ZN12cOwnedObjectC2EPKcb, i64 469428}
!39 = !{ptr @_ZN23cNoncopyableOwnedObjectC2EPKcb, ptr @_ZN11noncopyableC2Ev, i64 469428}
!40 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, i64 3}
!41 = !{ptr @_ZN10cExceptionD2Ev, ptr @_ZNSt9exceptionD2Ev, i64 1}
!42 = !{ptr @_ZNK10cException4whatEv, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv, i64 1}
!43 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_, i64 2}
!44 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_RKS8_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2}
!45 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc, i64 2107073}
!46 = !{ptr @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_, i64 2107073}
!47 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 1889443}
!48 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm, i64 1257662}
!49 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc, i64 1257662}
!50 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm, i64 1257662}
!51 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv, i64 631781}
!52 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardC2EPS4_, i64 1889443}
!53 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv, i64 1889443}
!54 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_, i64 1889443}
!55 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm, i64 1889443}
!56 = !{ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag, ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, i64 1889443}
!57 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 1889443}
!58 = !{ptr @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 1889443}
!59 = !{ptr @_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagEN6_GuardD2Ev, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, i64 1}
!60 = !{ptr @_ZN13cMathFunctionC2EPKcPFddEiS1_S1_, ptr @_ZN23cNoncopyableOwnedObjectC2EPKcb, i64 12}
!61 = !{ptr @_ZN13cMathFunctionC2EPKcPFddEiS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 24}
!62 = !{ptr @_ZN13cMathFunctionC2EPKcPFddEiS1_S1_, ptr @_Z15opp_nulltoemptyPKc, i64 24}
!63 = !{ptr @_ZN13cMathFunctionC2EPKcPFddEiS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 24}
!64 = !{ptr @_ZN13cMathFunctionC2EPKcPFdddEiS1_S1_, ptr @_ZN23cNoncopyableOwnedObjectC2EPKcb, i64 3}
!65 = !{ptr @_ZN13cMathFunctionC2EPKcPFdddEiS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 6}
!66 = !{ptr @_ZN13cMathFunctionC2EPKcPFdddEiS1_S1_, ptr @_Z15opp_nulltoemptyPKc, i64 6}
!67 = !{ptr @_ZN13cMathFunctionC2EPKcPFdddEiS1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 6}
!68 = !{ptr @_ZN13cMathFunction4findEPKci, ptr @_ZN23cGlobalRegistrationList11getInstanceEv, i64 3}
!69 = !{ptr @_ZN13cMathFunction4findEPKci, ptr @__dynamic_cast, i64 94}
!70 = !{ptr @_ZN13cMathFunction4findEPKci, ptr @_ZNK7cObject6isNameEPKc, i64 34}
!71 = !{ptr @_ZN13cMathFunction4findEPKci, ptr @_ZNK13cMathFunction10getNumArgsEv, i64 1}
!72 = !{ptr @_ZNK7cObject6isNameEPKc, ptr @_Z10opp_strcmpPKcS0_, i64 2470429}
!73 = !{ptr @_Z10opp_strcmpPKcS0_, ptr @strcmp, i64 3128955}
!74 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!75 = !{!"function_entry_count", i64 15}
!76 = !{!77, !77, i64 0}
!77 = !{!"vtable pointer", !78, i64 0}
!78 = !{!"Simple C++ TBAA"}
!79 = !{!"function_entry_count", i64 192538233}
!80 = !{!81, !83, i64 8}
!81 = !{!"_ZTS12cNamedObject", !82, i64 0, !83, i64 8, !85, i64 16, !85, i64 18}
!82 = !{!"_ZTS7cObject"}
!83 = !{!"any pointer", !84, i64 0}
!84 = !{!"omnipotent char", !78, i64 0}
!85 = !{!"short", !84, i64 0}
!86 = !{!"branch_weights", i32 1, i32 192538234}
!87 = !{!"function_entry_count", i64 235321}
!88 = !{!"function_entry_count", i64 0}
!89 = !{!90, !93, i64 48}
!90 = !{!"_ZTS13cMathFunction", !91, i64 0, !83, i64 40, !93, i64 48, !94, i64 56, !94, i64 88}
!91 = !{!"_ZTS23cNoncopyableOwnedObject", !92, i64 0}
!92 = !{!"_ZTS12cOwnedObject", !81, i64 0, !83, i64 24, !93, i64 32}
!93 = !{!"int", !84, i64 0}
!94 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !95, i64 0, !96, i64 8, !84, i64 16}
!95 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !83, i64 0}
!96 = !{!"long", !84, i64 0}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!"function_entry_count", i64 542987320}
!100 = !{!92, !83, i64 24}
!101 = !{!"function_entry_count", i64 147484992}
!102 = !{!81, !85, i64 16}
!103 = !{!90, !83, i64 40}
!104 = !{!"function_entry_count", i64 469428}
!105 = !{!"function_entry_count", i64 425}
!106 = !{!"branch_weights", i32 4, i32 423}
!107 = !{!"function_entry_count", i64 582939}
!108 = !{!"function_entry_count", i64 1}
!109 = !{!110, !93, i64 8}
!110 = !{!"_ZTS10cException", !111, i64 0, !93, i64 8, !94, i64 16, !112, i64 48, !94, i64 56, !94, i64 88, !93, i64 120}
!111 = !{!"_ZTSSt9exception"}
!112 = !{!"bool", !84, i64 0}
!113 = !{!110, !112, i64 48}
!114 = !{i8 0, i8 2}
!115 = !{}
!116 = !{!110, !93, i64 120}
!117 = !{!"function_entry_count", i64 2}
!118 = !{!"function_entry_count", i64 2107073}
!119 = !{!"function_entry_count", i64 1889443}
!120 = !{!96, !96, i64 0}
!121 = !{!"branch_weights", i32 1257663, i32 631782}
!122 = !{!123, !83, i64 0}
!123 = !{!"_ZTSZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tagE6_Guard", !83, i64 0}
!124 = !{!"function_entry_count", i64 1891507}
!125 = !{!83, !83, i64 0}
!126 = !{!"branch_weights", i32 1889444, i32 1}
!127 = !{!"function_entry_count", i64 582938}
!128 = !{!"function_entry_count", i64 12}
!129 = !{!"function_entry_count", i64 3}
!130 = !{!"branch_weights", i32 127, i32 1}
!131 = !{!"branch_weights", i32 1368888592, i32 778595056}
!132 = !{!"branch_weights", i32 1, i32 46}
!133 = !{!"branch_weights", i32 6337, i32 127}
!134 = distinct !{!134, !98}
!135 = !{!"function_entry_count", i64 2470429}
!136 = !{!"function_entry_count", i64 3403184}
!137 = !{!"branch_weights", i32 274228, i32 3128958}
!138 = !{!"branch_weights", i32 1, i32 3128958}
!139 = !{!84, !84, i64 0}
!140 = !{!"branch_weights", i32 121684, i32 152545}
!141 = distinct !{!141, !98}
