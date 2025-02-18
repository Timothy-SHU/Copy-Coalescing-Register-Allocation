; ModuleID = 'simulator/cconfigoption.cc'
source_filename = "simulator/cconfigoption.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.cConfigOption = type { %class.cNoncopyableOwnedObject.base, i8, i8, i32, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string" }
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

$_ZN13cConfigOptionD2Ev = comdat any

$_ZN13cConfigOptionD0Ev = comdat any

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK12cOwnedObject8getOwnerEv = comdat any

$_ZNK12cOwnedObject13isOwnedObjectEv = comdat any

$_ZN12cNamedObject14getNamePoolingEv = comdat any

$_ZNK12cOwnedObject11isSoftOwnerEv = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTV13cConfigOption = dso_local unnamed_addr constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTI13cConfigOption, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN13cConfigOptionD2Ev, ptr @_ZN13cConfigOptionD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK13cConfigOption4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK23cNoncopyableOwnedObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN23cNoncopyableOwnedObject10parsimPackEP11cCommBuffer, ptr @_ZN23cNoncopyableOwnedObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cOwnedObject11isSoftOwnerEv] }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"per-object \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"per-run\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c", type=\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c", unit=\22\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c", default=\22\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c", hint: \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"filenames\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cConfigOption = dso_local constant [16 x i8] c"13cConfigOption\00", align 1
@_ZTI23cNoncopyableOwnedObject = external constant ptr
@_ZTI13cConfigOption = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cConfigOption, ptr @_ZTI23cNoncopyableOwnedObject }, align 8
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x ptr], align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cconfigoption.cc, ptr null }]
@switch.table._ZN13cConfigOption11getTypeNameENS_4TypeE = private unnamed_addr constant [8 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], align 8

@_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_ = dso_local unnamed_addr alias void (ptr, ptr, i1, i1, i32, ptr, ptr, ptr), ptr @_ZN13cConfigOptionC2EPKcbbNS_4TypeES1_S1_S1_

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13cConfigOptionC2EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %9 = zext i1 %2 to i8
  %10 = zext i1 %3 to i8
  tail call void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false)
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cConfigOption, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %11 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 4, i32 2
  store ptr %12, ptr %11, align 8, !tbaa !48
  %13 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %13, align 8, !tbaa !52
  store i8 0, ptr %12, align 8, !tbaa !55
  %14 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 5, i32 2
  store ptr %15, ptr %14, align 8, !tbaa !48
  %16 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 5, i32 1
  store i64 0, ptr %16, align 8, !tbaa !52
  store i8 0, ptr %15, align 8, !tbaa !55
  %17 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 6, i32 2
  store ptr %18, ptr %17, align 8, !tbaa !48
  %19 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 6, i32 1
  store i64 0, ptr %19, align 8, !tbaa !52
  store i8 0, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 1
  store i8 %9, ptr %20, align 4, !tbaa !56
  %21 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 2
  store i8 %10, ptr %21, align 1, !tbaa !66
  %22 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 3
  store i32 %4, ptr %22, align 8, !tbaa !67
  %23 = icmp eq ptr %5, null
  %24 = select i1 %23, ptr @.str, ptr %5, !prof !68
  %25 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #14
  %26 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %24, i64 noundef %25)
          to label %27 unwind label %38, !prof !69

27:                                               ; preds = %8
  %28 = load i32, ptr %22, align 8, !tbaa !67
  %29 = icmp eq i32 %28, 0
  %30 = icmp ne ptr %6, null
  %31 = and i1 %30, %29
  br i1 %31, label %32, label %61, !prof !70

32:                                               ; preds = %27
  %33 = load i8, ptr %6, align 1, !tbaa !55
  %34 = icmp eq i8 %33, 48
  %35 = icmp eq i8 %33, 102
  %36 = or i1 %34, %35
  %37 = select i1 %36, ptr @.str.1, ptr @.str.2, !prof !71
  br label %61

38:                                               ; preds = %68, %61, %8
  %39 = landingpad { ptr, i32 }
          cleanup
  %40 = load ptr, ptr %17, align 8, !tbaa !72
  %41 = icmp eq ptr %40, %18
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i64, ptr %19, align 8, !tbaa !52
  %44 = icmp ult i64 %43, 16
  tail call void @llvm.assume(i1 %44)
  br label %46

45:                                               ; preds = %38
  tail call void @_ZdlPv(ptr noundef %40) #15
  br label %46

46:                                               ; preds = %42, %45
  %47 = load ptr, ptr %14, align 8, !tbaa !72
  %48 = icmp eq ptr %47, %15
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, ptr %16, align 8, !tbaa !52
  %51 = icmp ult i64 %50, 16
  tail call void @llvm.assume(i1 %51)
  br label %53

52:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef %47) #15
  br label %53

53:                                               ; preds = %49, %52
  %54 = load ptr, ptr %11, align 8, !tbaa !72
  %55 = icmp eq ptr %54, %12
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i64, ptr %13, align 8, !tbaa !52
  %58 = icmp ult i64 %57, 16
  tail call void @llvm.assume(i1 %58)
  br label %60

59:                                               ; preds = %53
  tail call void @_ZdlPv(ptr noundef %54) #15
  br label %60

60:                                               ; preds = %56, %59
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #14
  resume { ptr, i32 } %39

61:                                               ; preds = %32, %27
  %62 = phi ptr [ %37, %32 ], [ %6, %27 ]
  %63 = icmp eq ptr %62, null
  %64 = select i1 %63, ptr @.str, ptr %62, !prof !70
  %65 = load i64, ptr %16, align 8, !tbaa !52
  %66 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %64) #14
  %67 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef %65, ptr noundef nonnull %64, i64 noundef %66)
          to label %68 unwind label %38, !prof !69

68:                                               ; preds = %61
  %69 = icmp eq ptr %7, null
  %70 = select i1 %69, ptr @.str, ptr %7, !prof !73
  %71 = load i64, ptr %19, align 8, !tbaa !52
  %72 = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %70) #14
  %73 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 0, i64 noundef %71, ptr noundef nonnull %70, i64 noundef %72)
          to label %74 unwind label %38, !prof !69

74:                                               ; preds = %68
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK13cConfigOption4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(144) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %3) #14
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3)
  %4 = getelementptr inbounds i8, ptr %3, i64 16
  %5 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 1
  %6 = load i8, ptr %5, align 4, !tbaa !56, !range !75, !noundef !76
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, ptr @.str, ptr @.str.3
  %9 = select i1 %7, i64 0, i64 11
  %10 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %8, i64 noundef %9)
          to label %11 unwind label %45

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 2
  %13 = load i8, ptr %12, align 1, !tbaa !66, !range !75, !noundef !76
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, ptr @.str.5, ptr @.str.4
  %16 = select i1 %14, i64 7, i64 6
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15, i64 noundef %16)
          to label %18 unwind label %45

18:                                               ; preds = %11
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.6, i64 noundef 7)
          to label %20 unwind label %45

20:                                               ; preds = %18
  %21 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !67
  %23 = icmp ult i32 %22, 8
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = zext nneg i32 %22 to i64
  %26 = getelementptr inbounds [8 x ptr], ptr @switch.table._ZN13cConfigOption11getTypeNameENS_4TypeE, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8
  br label %28

28:                                               ; preds = %20, %24
  %29 = phi ptr [ %27, %24 ], [ @.str.19, %20 ]
  %30 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #14
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %29, i64 noundef %30)
          to label %32 unwind label %45

32:                                               ; preds = %28
  %33 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 4
  %34 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 4, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !52
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %32
  %38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.7, i64 noundef 8)
          to label %39 unwind label %45

39:                                               ; preds = %37
  %40 = load ptr, ptr %33, align 8, !tbaa !72
  %41 = load i64, ptr %34, align 8, !tbaa !52
  %42 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %40, i64 noundef %41)
          to label %43 unwind label %45

43:                                               ; preds = %39
  %44 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %48 unwind label %45

45:                                               ; preds = %72, %68, %66, %59, %55, %53, %43, %39, %37, %28, %18, %11, %2
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #14
  %47 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %47) #14
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #14
  resume { ptr, i32 } %46

48:                                               ; preds = %43, %32
  %49 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 5
  %50 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 5, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !52
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.9, i64 noundef 11)
          to label %55 unwind label %45

55:                                               ; preds = %53
  %56 = load ptr, ptr %49, align 8, !tbaa !72
  %57 = load i64, ptr %50, align 8, !tbaa !52
  %58 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %56, i64 noundef %57)
          to label %59 unwind label %45

59:                                               ; preds = %55
  %60 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef nonnull @.str.8, i64 noundef 1)
          to label %61 unwind label %45

61:                                               ; preds = %48, %59
  %62 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 6
  %63 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 6, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !52
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.10, i64 noundef 8)
          to label %68 unwind label %45

68:                                               ; preds = %66
  %69 = load ptr, ptr %62, align 8, !tbaa !72
  %70 = load i64, ptr %63, align 8, !tbaa !52
  %71 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %69, i64 noundef %70)
          to label %72 unwind label %45

72:                                               ; preds = %68, %61
  %73 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", ptr %3, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(104) %73)
          to label %74 unwind label %45

74:                                               ; preds = %72
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE) #14
  %75 = getelementptr inbounds i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %75) #14
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3 align 2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN13cConfigOption11getTypeNameENS_4TypeE(i32 noundef %0) local_unnamed_addr #5 align 2 !prof !74 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = getelementptr inbounds [8 x ptr], ptr @switch.table._ZN13cConfigOption11getTypeNameENS_4TypeE, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @.str.19, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13cConfigOptionD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cConfigOption, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 6, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 6, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !52
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #15
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 5, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 5, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !52
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #15
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 4, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 4, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !52
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #15
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #14
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13cConfigOptionD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cConfigOption, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %2 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 6, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10, !prof !73

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 6, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !52
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #15
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 5, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20, !prof !77

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 5, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !52
  %19 = icmp ult i64 %18, 16
  tail call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %11
  tail call void @_ZdlPv(ptr noundef %13) #15
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 4, i32 2
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %26, label %30, !prof !69

26:                                               ; preds = %21
  %27 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 4, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !52
  %29 = icmp ult i64 %28, 16
  tail call void @llvm.assume(i1 %29)
  br label %31

30:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #15
  br label %31

31:                                               ; preds = %26, %30
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #14
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #7 comdat align 2 !prof !78 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !79
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str, ptr %3, !prof !80
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 comdat align 2 !prof !81 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !82
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
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 !prof !83 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 !prof !85 {
  ret i1 true
}

declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #9 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !86
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #9 comdat align 2 !prof !74 {
  ret i1 false
}

declare void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #9 align 2

; Function Attrs: cold mustprogress uwtable
declare void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3 align 2

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_cconfigoption.cc() #12 section ".text.startup" !prof !87 !PGOFuncName !88 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN13cConfigOptionC2EPKcbbNS_4TypeES1_S1_S1_, ptr @_ZN12cOwnedObjectC2EPKcb, i64 74}
!36 = !{ptr @_ZN13cConfigOptionC2EPKcbbNS_4TypeES1_S1_S1_, ptr @strlen, i64 222}
!37 = !{ptr @_ZN13cConfigOptionC2EPKcbbNS_4TypeES1_S1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm, i64 222}
!38 = !{ptr @_ZN13cConfigOptionD0Ev, ptr @_ZdlPv, i64 160}
!39 = !{ptr @_ZN13cConfigOptionD0Ev, ptr @_ZN12cOwnedObjectD2Ev, i64 74}
!40 = !{ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK12cNamedObject7getNameEv, i64 97893}
!41 = !{ptr @_GLOBAL__sub_I_cconfigoption.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!42 = !{ptr @_GLOBAL__sub_I_cconfigoption.cc, ptr @__cxa_atexit, i64 1}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 74}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!49, !50, i64 0}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !50, i64 0}
!50 = !{!"any pointer", !51, i64 0}
!51 = !{!"omnipotent char", !47, i64 0}
!52 = !{!53, !54, i64 8}
!53 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0, !54, i64 8, !51, i64 16}
!54 = !{!"long", !51, i64 0}
!55 = !{!51, !51, i64 0}
!56 = !{!57, !64, i64 36}
!57 = !{!"_ZTS13cConfigOption", !58, i64 0, !64, i64 36, !64, i64 37, !65, i64 40, !53, i64 48, !53, i64 80, !53, i64 112}
!58 = !{!"_ZTS23cNoncopyableOwnedObject", !59, i64 0}
!59 = !{!"_ZTS12cOwnedObject", !60, i64 0, !50, i64 24, !63, i64 32}
!60 = !{!"_ZTS12cNamedObject", !61, i64 0, !50, i64 8, !62, i64 16, !62, i64 18}
!61 = !{!"_ZTS7cObject"}
!62 = !{!"short", !51, i64 0}
!63 = !{!"int", !51, i64 0}
!64 = !{!"bool", !51, i64 0}
!65 = !{!"_ZTSN13cConfigOption4TypeE", !51, i64 0}
!66 = !{!57, !64, i64 37}
!67 = !{!57, !65, i64 40}
!68 = !{!"branch_weights", i32 68, i32 6}
!69 = !{!"branch_weights", i32 74, i32 0}
!70 = !{!"branch_weights", i32 21, i32 53}
!71 = !{!"branch_weights", i32 10, i32 11}
!72 = !{!53, !50, i64 0}
!73 = !{!"branch_weights", i32 0, i32 74}
!74 = !{!"function_entry_count", i64 0}
!75 = !{i8 0, i8 2}
!76 = !{}
!77 = !{!"branch_weights", i32 62, i32 12}
!78 = !{!"function_entry_count", i64 192538233}
!79 = !{!60, !50, i64 8}
!80 = !{!"branch_weights", i32 0, i32 192538233}
!81 = !{!"function_entry_count", i64 235321}
!82 = !{!"VP", i32 0, i64 235321, i64 8390818187414654894, i64 137428, i64 -1846066915438621208, i64 97893}
!83 = !{!"function_entry_count", i64 542987320}
!84 = !{!59, !50, i64 24}
!85 = !{!"function_entry_count", i64 147484992}
!86 = !{!60, !62, i64 16}
!87 = !{!"function_entry_count", i64 1}
!88 = !{!"simulator/cconfigoption.cc;_GLOBAL__sub_I_cconfigoption.cc"}
