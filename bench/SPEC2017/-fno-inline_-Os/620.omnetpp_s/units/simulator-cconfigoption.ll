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

$_ZN13cConfigOptionD2Ev = comdat any

$_ZN13cConfigOptionD0Ev = comdat any

$_ZNK12cNamedObject7getNameEv = comdat any

$_ZNK7cObject11getFullNameEv = comdat any

$_ZNK12cOwnedObject8getOwnerEv = comdat any

$_ZNK12cOwnedObject13isOwnedObjectEv = comdat any

$_ZN12cNamedObject14getNamePoolingEv = comdat any

$_ZNK12cOwnedObject11isSoftOwnerEv = comdat any

$_ZN23cNoncopyableOwnedObjectC2EPKcb = comdat any

$_ZN23cNoncopyableOwnedObjectD2Ev = comdat any

$_ZN11noncopyableC2Ev = comdat any

$_ZN11noncopyableD2Ev = comdat any

@_ZTV13cConfigOption = dso_local unnamed_addr constant { [26 x ptr] } { [26 x ptr] [ptr null, ptr @_ZTI13cConfigOption, ptr @_ZN7cObject13getDescriptorEv, ptr @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject, ptr @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_, ptr @_ZN13cConfigOptionD2Ev, ptr @_ZN13cConfigOptionD0Ev, ptr @_ZNK7cObject12getClassNameEv, ptr @_ZNK12cNamedObject7getNameEv, ptr @_ZNK7cObject11getFullNameEv, ptr @_ZNK7cObject11getFullPathB5cxx11Ev, ptr @_ZNK13cConfigOption4infoB5cxx11Ev, ptr @_ZNK7cObject12detailedInfoB5cxx11Ev, ptr @_ZNK23cNoncopyableOwnedObject3dupEv, ptr @_ZN7cObject4takeEP12cOwnedObject, ptr @_ZN7cObject4dropEP12cOwnedObject, ptr @_ZN23cNoncopyableOwnedObject10parsimPackEP11cCommBuffer, ptr @_ZN23cNoncopyableOwnedObject12parsimUnpackEP11cCommBuffer, ptr @_ZNK12cOwnedObject8getOwnerEv, ptr @_ZNK12cOwnedObject13isOwnedObjectEv, ptr @_ZN7cObject12forEachChildEP8cVisitor, ptr @_ZN12cNamedObject7setNameEPKc, ptr @_ZN12cNamedObject14setNamePoolingEb, ptr @_ZN12cNamedObject14getNamePoolingEv, ptr @_ZN12cOwnedObject23removeFromOwnershipTreeEv, ptr @_ZNK12cOwnedObject11isSoftOwnerEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13cConfigOption = dso_local constant [16 x i8] c"13cConfigOption\00", align 1
@_ZTI23cNoncopyableOwnedObject = external constant ptr
@_ZTI13cConfigOption = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13cConfigOption, ptr @_ZTI23cNoncopyableOwnedObject }, align 8
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@_ZTV23cNoncopyableOwnedObject = external unnamed_addr constant { [26 x ptr] }, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"per-object \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"per-run\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c", type=\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c", unit=\22\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c", default=\22\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c", hint: \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"bool\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"double\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"filenames\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cconfigoption.cc, ptr null }]
@reltable._ZN13cConfigOption11getTypeNameENS_4TypeE = private unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable._ZN13cConfigOption11getTypeNameENS_4TypeE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.14 to i64), i64 ptrtoint (ptr @reltable._ZN13cConfigOption11getTypeNameENS_4TypeE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.15 to i64), i64 ptrtoint (ptr @reltable._ZN13cConfigOption11getTypeNameENS_4TypeE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.16 to i64), i64 ptrtoint (ptr @reltable._ZN13cConfigOption11getTypeNameENS_4TypeE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.17 to i64), i64 ptrtoint (ptr @reltable._ZN13cConfigOption11getTypeNameENS_4TypeE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.18 to i64), i64 ptrtoint (ptr @reltable._ZN13cConfigOption11getTypeNameENS_4TypeE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.19 to i64), i64 ptrtoint (ptr @reltable._ZN13cConfigOption11getTypeNameENS_4TypeE to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable._ZN13cConfigOption11getTypeNameENS_4TypeE to i64)) to i32)], align 4

@_ZN13cConfigOptionC1EPKcbbNS_4TypeES1_S1_S1_ = dso_local unnamed_addr alias void (ptr, ptr, i1, i1, i32, ptr, ptr, ptr), ptr @_ZN13cConfigOptionC2EPKcbbNS_4TypeES1_S1_S1_

; Function Attrs: optsize
declare noundef ptr @_ZN7cObject13getDescriptorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject18ownedObjectDeletedEP12cOwnedObject(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN7cObject14yieldOwnershipEP12cOwnedObjectPS_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13cConfigOptionD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cConfigOption, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #10
  %3 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 5
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #10
  %4 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #10
  tail call void @_ZN23cNoncopyableOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN13cConfigOptionD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN13cConfigOptionD2Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) #10
  tail call void @_ZdlPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK7cObject12getClassNameEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK12cNamedObject7getNameEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @.str, ptr %3, !prof !52
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7cObject11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !53 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %3 = getelementptr inbounds ptr, ptr %2, i64 6
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret ptr %5
}

; Function Attrs: optsize
declare void @_ZNK7cObject11getFullPathB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK13cConfigOption4infoB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %3 = alloca %"class.std::__cxx11::basic_stringstream", align 8
  call void @llvm.lifetime.start.p0(i64 392, ptr nonnull %3) #13
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #12
  %4 = getelementptr inbounds i8, ptr %3, i64 16
  %5 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 1
  %6 = load i8, ptr %5, align 4, !tbaa !55, !range !65, !noundef !66
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %7, ptr @.str, ptr @.str.3
  %9 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %8) #12
          to label %10 unwind label %32

10:                                               ; preds = %2
  %11 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 2
  %12 = load i8, ptr %11, align 1, !tbaa !67, !range !65, !noundef !66
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, ptr @.str.5, ptr @.str.4
  %15 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %14) #12
          to label %16 unwind label %32

16:                                               ; preds = %10
  %17 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.6) #12
          to label %18 unwind label %32

18:                                               ; preds = %16
  %19 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !68
  %21 = call noundef ptr @_ZN13cConfigOption11getTypeNameENS_4TypeE(i32 noundef %20) #12
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull %21) #12
          to label %23 unwind label %32

23:                                               ; preds = %18
  %24 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 4
  %25 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %24) #10
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.7) #12
          to label %28 unwind label %32

28:                                               ; preds = %26
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(32) %24) #12
          to label %30 unwind label %32

30:                                               ; preds = %28
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull @.str.8) #12
          to label %34 unwind label %32

32:                                               ; preds = %50, %48, %46, %41, %39, %37, %30, %28, %26, %18, %16, %10, %2
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #10
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #13
  resume { ptr, i32 } %33

34:                                               ; preds = %30, %23
  %35 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 5
  %36 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #10
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.9) #12
          to label %39 unwind label %32

39:                                               ; preds = %37
  %40 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(32) %35) #12
          to label %41 unwind label %32

41:                                               ; preds = %39
  %42 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull @.str.8) #12
          to label %43 unwind label %32

43:                                               ; preds = %41, %34
  %44 = getelementptr inbounds %class.cConfigOption, ptr %1, i64 0, i32 6
  %45 = call noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %44) #10
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.10) #12
          to label %48 unwind label %32

48:                                               ; preds = %46
  %49 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(32) %44) #12
          to label %50 unwind label %32

50:                                               ; preds = %48, %43
  invoke void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %3) #12
          to label %51 unwind label %32

51:                                               ; preds = %50
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #10
  call void @llvm.lifetime.end.p0(i64 392, ptr nonnull %3) #13
  ret void
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
define linkonce_odr dso_local noundef ptr @_ZNK12cOwnedObject8getOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %class.cOwnedObject, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject13isOwnedObjectEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !71 {
  ret i1 true
}

; Function Attrs: optsize
declare void @_ZN7cObject12forEachChildEP8cVisitor(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN12cNamedObject7setNameEPKc(ptr noundef nonnull align 8 dereferenceable(20), ptr noundef) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN12cNamedObject14setNamePoolingEb(ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN12cNamedObject14getNamePoolingEv(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #1 comdat align 2 !prof !54 {
  %2 = getelementptr inbounds %class.cNamedObject, ptr %0, i64 0, i32 2
  %3 = load i16, ptr %2, align 8, !tbaa !72
  %4 = and i16 %3, 1
  %5 = icmp ne i16 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN12cOwnedObject23removeFromOwnershipTreeEv(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK12cOwnedObject11isSoftOwnerEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !54 {
  ret i1 false
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #12
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN13cConfigOptionC2EPKcbbNS_4TypeES1_S1_S1_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %9 = zext i1 %2 to i8
  %10 = zext i1 %3 to i8
  tail call void @_ZN23cNoncopyableOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext false) #12
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV13cConfigOption, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %11 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  %12 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 5
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #10
  %13 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 6
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #10
  %14 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 1
  store i8 %9, ptr %14, align 4, !tbaa !55
  %15 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 2
  store i8 %10, ptr %15, align 1, !tbaa !67
  %16 = getelementptr inbounds %class.cConfigOption, ptr %0, i64 0, i32 3
  store i32 %4, ptr %16, align 8, !tbaa !68
  %17 = icmp eq ptr %5, null
  %18 = select i1 %17, ptr @.str, ptr %5, !prof !74
  %19 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %18) #12
          to label %20 unwind label %31

20:                                               ; preds = %8
  %21 = load i32, ptr %16, align 8, !tbaa !68
  %22 = icmp eq i32 %21, 0
  %23 = icmp ne ptr %6, null
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %33, !prof !75

25:                                               ; preds = %20
  %26 = load i8, ptr %6, align 1, !tbaa !76
  %27 = icmp eq i8 %26, 48
  %28 = icmp eq i8 %26, 102
  %29 = or i1 %27, %28
  %30 = select i1 %29, ptr @.str.1, ptr @.str.2, !prof !77
  br label %33

31:                                               ; preds = %38, %33, %8
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #10
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #10
  tail call void @_ZN23cNoncopyableOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  resume { ptr, i32 } %32

33:                                               ; preds = %25, %20
  %34 = phi ptr [ %30, %25 ], [ %6, %20 ]
  %35 = icmp eq ptr %34, null
  %36 = select i1 %35, ptr @.str, ptr %34, !prof !78
  %37 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull %36) #12
          to label %38 unwind label %31

38:                                               ; preds = %33
  %39 = icmp eq ptr %7, null
  %40 = select i1 %39, ptr @.str, ptr %7, !prof !79
  %41 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull %40) #12
          to label %42 unwind label %31

42:                                               ; preds = %38
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN23cNoncopyableOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  tail call void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i1 noundef zeroext %2) #12
  tail call void @_ZN11noncopyableC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [26 x ptr] }, ptr @_ZTV23cNoncopyableOwnedObject, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2 align 2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN23cNoncopyableOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11noncopyableD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  tail call void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN12cOwnedObjectC2EPKcb(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11noncopyableC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !81 {
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN12cOwnedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11noncopyableD2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !82 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN13cConfigOption11getTypeNameENS_4TypeE(i32 noundef %0) local_unnamed_addr #8 align 2 !prof !54 {
  %2 = icmp ult i32 %0, 8
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i32 %0 to i64
  %5 = shl i64 %4, 2
  %6 = call ptr @llvm.load.relative.i64(ptr @reltable._ZN13cConfigOption11getTypeNameENS_4TypeE, i64 %5)
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ @.str.21, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef zeroext i1 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(128)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1 align 2

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_cconfigoption.cc() #3 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #9

attributes #0 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nounwind optsize }
attributes #11 = { builtin nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!41}

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
!35 = distinct !{!36, !37, !38, !39, !40}
!36 = !{ptr @_ZN13cConfigOptionC2EPKcbbNS_4TypeES1_S1_S1_, ptr @_ZN23cNoncopyableOwnedObjectC2EPKcb, i64 74}
!37 = !{ptr @_ZN13cConfigOptionC2EPKcbbNS_4TypeES1_S1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev, i64 222}
!38 = !{ptr @_ZN13cConfigOptionC2EPKcbbNS_4TypeES1_S1_S1_, ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc, i64 222}
!39 = !{ptr @_ZN23cNoncopyableOwnedObjectC2EPKcb, ptr @_ZN12cOwnedObjectC2EPKcb, i64 469428}
!40 = !{ptr @_ZN23cNoncopyableOwnedObjectC2EPKcb, ptr @_ZN11noncopyableC2Ev, i64 469428}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!"function_entry_count", i64 192538233}
!46 = !{!47, !49, i64 8}
!47 = !{!"_ZTS12cNamedObject", !48, i64 0, !49, i64 8, !51, i64 16, !51, i64 18}
!48 = !{!"_ZTS7cObject"}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !44, i64 0}
!51 = !{!"short", !50, i64 0}
!52 = !{!"branch_weights", i32 1, i32 192538234}
!53 = !{!"function_entry_count", i64 235321}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!56, !60, i64 36}
!56 = !{!"_ZTS13cConfigOption", !57, i64 0, !60, i64 36, !60, i64 37, !61, i64 40, !62, i64 48, !62, i64 80, !62, i64 112}
!57 = !{!"_ZTS23cNoncopyableOwnedObject", !58, i64 0}
!58 = !{!"_ZTS12cOwnedObject", !47, i64 0, !49, i64 24, !59, i64 32}
!59 = !{!"int", !50, i64 0}
!60 = !{!"bool", !50, i64 0}
!61 = !{!"_ZTSN13cConfigOption4TypeE", !50, i64 0}
!62 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !63, i64 0, !64, i64 8, !50, i64 16}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !49, i64 0}
!64 = !{!"long", !50, i64 0}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!56, !60, i64 37}
!68 = !{!56, !61, i64 40}
!69 = !{!"function_entry_count", i64 542987320}
!70 = !{!58, !49, i64 24}
!71 = !{!"function_entry_count", i64 147484992}
!72 = !{!47, !51, i64 16}
!73 = !{!"function_entry_count", i64 74}
!74 = !{!"branch_weights", i32 69, i32 7}
!75 = !{!"branch_weights", i32 484, i32 1264}
!76 = !{!50, !50, i64 0}
!77 = !{!"branch_weights", i32 1, i32 22}
!78 = !{!"branch_weights", i32 22, i32 54}
!79 = !{!"branch_weights", i32 1, i32 75}
!80 = !{!"function_entry_count", i64 469428}
!81 = !{!"function_entry_count", i64 582939}
!82 = !{!"function_entry_count", i64 582938}
