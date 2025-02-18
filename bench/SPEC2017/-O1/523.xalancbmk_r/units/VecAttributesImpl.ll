; ModuleID = 'VecAttributesImpl.cpp'
source_filename = "VecAttributesImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::VecAttributesImpl" = type { %"class.xercesc_2_7::Attributes", i8, i32, ptr, ptr }
%"class.xercesc_2_7::Attributes" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZTSN11xercesc_2_710AttributesE = comdat any

$_ZTIN11xercesc_2_710AttributesE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_717VecAttributesImplE = dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717VecAttributesImplE, ptr @_ZN11xercesc_2_717VecAttributesImplD2Ev, ptr @_ZN11xercesc_2_717VecAttributesImplD0Ev, ptr @_ZNK11xercesc_2_717VecAttributesImpl9getLengthEv, ptr @_ZNK11xercesc_2_717VecAttributesImpl6getURIEj, ptr @_ZNK11xercesc_2_717VecAttributesImpl12getLocalNameEj, ptr @_ZNK11xercesc_2_717VecAttributesImpl8getQNameEj, ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEj, ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEj, ptr @_ZNK11xercesc_2_717VecAttributesImpl8getIndexEPKtS2_, ptr @_ZNK11xercesc_2_717VecAttributesImpl8getIndexEPKt, ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEPKtS2_, ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEPKt, ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEPKtS2_, ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEPKt] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717VecAttributesImplE = dso_local constant [35 x i8] c"N11xercesc_2_717VecAttributesImplE\00", align 1
@_ZTSN11xercesc_2_710AttributesE = linkonce_odr dso_local constant [28 x i8] c"N11xercesc_2_710AttributesE\00", comdat, align 1
@_ZTIN11xercesc_2_710AttributesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710AttributesE }, comdat, align 8
@_ZTIN11xercesc_2_717VecAttributesImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717VecAttributesImplE, ptr @_ZTIN11xercesc_2_710AttributesE }, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_717VecAttributesImplC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717VecAttributesImplC2Ev
@_ZN11xercesc_2_717VecAttributesImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717VecAttributesImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat !prof !40 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717VecAttributesImplC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !41 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_717VecAttributesImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 1
  store i8 0, ptr %2, align 8, !tbaa !45
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i64 20, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717VecAttributesImplD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 !prof !41 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_717VecAttributesImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !45, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5, !prof !54

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !42
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(40) %7) #12
  br label %13

13:                                               ; preds = %5, %9, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717VecAttributesImplD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 align 2 !prof !40 {
  store ptr getelementptr inbounds ({ [16 x ptr] }, ptr @_ZTVN11xercesc_2_717VecAttributesImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !45, !range !52, !noundef !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !42
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(40) %7) #12
  br label %13

13:                                               ; preds = %1, %5, %9
  tail call void @_ZdlPv(ptr noundef %0) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717VecAttributesImpl9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #5 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !57
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl6getURIEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %32, !prof !59

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !60
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %19, label %12, !prof !62

12:                                               ; preds = %6
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 116, ptr noundef %15)
          to label %16 unwind label %17

16:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #12
  resume { ptr, i32 } %18

19:                                               ; preds = %6
  %20 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  %24 = zext i32 %1 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !66
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !67
  %29 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %28, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !70
  %31 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %21, i32 noundef %30)
  br label %32

32:                                               ; preds = %2, %19
  %33 = phi ptr [ %31, %19 ], [ null, %2 ]
  ret ptr %33
}

declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !60
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !62

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !66
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl12getLocalNameEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #8 align 2 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %14, !prof !75

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1)
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !67
  %12 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  br label %14

14:                                               ; preds = %2, %6
  %15 = phi ptr [ %13, %6 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl8getQNameEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %26, !prof !78

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !60
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %19, label %12, !prof !62

12:                                               ; preds = %6
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 116, ptr noundef %15)
          to label %16 unwind label %17

16:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #12
  resume { ptr, i32 } %18

19:                                               ; preds = %6
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !66
  %25 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %24)
  br label %26

26:                                               ; preds = %2, %19
  %27 = phi ptr [ %25, %19 ], [ null, %2 ]
  ret ptr %27
}

declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %30, !prof !59

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !60
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %19, label %12, !prof !62

12:                                               ; preds = %6
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 116, ptr noundef %15)
          to label %16 unwind label %17

16:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #12
  resume { ptr, i32 } %18

19:                                               ; preds = %6
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !66
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %24, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !79
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = tail call noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef %26, ptr noundef %28)
  br label %30

30:                                               ; preds = %2, %19
  %31 = phi ptr [ %29, %19 ], [ null, %2 ]
  ret ptr %31
}

declare noundef ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %6, label %27, !prof !59

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !60
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %19, label %12, !prof !62

12:                                               ; preds = %6
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 241, i32 noundef 116, ptr noundef %15)
          to label %16 unwind label %17

16:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #12
  resume { ptr, i32 } %18

19:                                               ; preds = %6
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %8, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = zext i32 %1 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !66
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %24, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !80
  br label %27

27:                                               ; preds = %2, %19
  %28 = phi ptr [ %26, %19 ], [ null, %2 ]
  ret ptr %28
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717VecAttributesImpl8getIndexEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #12
  %5 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  store i32 0, ptr %4, align 8, !tbaa !81
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 1
  store i32 1023, ptr %9, align 4, !tbaa !83
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 2
  store i32 0, ptr %10, align 8, !tbaa !84
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 3
  store i8 0, ptr %11, align 4, !tbaa !85
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 4
  store ptr %8, ptr %12, align 8, !tbaa !86
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 5
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %15 = load ptr, ptr %8, align 8, !tbaa !42
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 2048)
  store ptr %18, ptr %14, align 8, !tbaa !87
  store i16 0, ptr %18, align 2, !tbaa !88
  %19 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !57
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %116, label %22

22:                                               ; preds = %3
  %23 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 4
  %24 = icmp eq ptr %2, null
  %25 = icmp eq ptr %1, null
  br label %30

26:                                               ; preds = %113
  %27 = add nuw i32 %32, 1
  %28 = load i32, ptr %19, align 4, !tbaa !57
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %116, !llvm.loop !90

30:                                               ; preds = %22, %26
  %31 = phi i32 [ undef, %22 ], [ %115, %26 ]
  %32 = phi i32 [ 0, %22 ], [ %27, %26 ]
  %33 = load ptr, ptr %5, align 8, !tbaa !55
  %34 = invoke noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef %32)
          to label %35 unwind label %102

35:                                               ; preds = %30
  %36 = load ptr, ptr %23, align 8, !tbaa !64
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %34, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !67
  %39 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %38, i64 0, i32 4
  %40 = load i32, ptr %39, align 4, !tbaa !70
  %41 = invoke noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %36, i32 noundef %40, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %42 unwind label %102

42:                                               ; preds = %35
  %43 = load ptr, ptr %37, align 8, !tbaa !67
  %44 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %43, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !76
  %46 = icmp eq ptr %45, null
  %47 = or i1 %24, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %42
  %49 = load i16, ptr %45, align 2, !tbaa !88
  %50 = load i16, ptr %2, align 2, !tbaa !88
  %51 = icmp eq i16 %49, %50
  br i1 %51, label %60, label %113

52:                                               ; preds = %42
  br i1 %46, label %56, label %53

53:                                               ; preds = %52
  %54 = load i16, ptr %45, align 2, !tbaa !88
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %113

56:                                               ; preds = %53, %52
  br i1 %24, label %71, label %57

57:                                               ; preds = %56
  %58 = load i16, ptr %2, align 2, !tbaa !88
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %71, label %113

60:                                               ; preds = %48, %65
  %61 = phi i16 [ %68, %65 ], [ %49, %48 ]
  %62 = phi ptr [ %67, %65 ], [ %2, %48 ]
  %63 = phi ptr [ %66, %65 ], [ %45, %48 ]
  %64 = icmp eq i16 %61, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds i16, ptr %63, i64 1
  %67 = getelementptr inbounds i16, ptr %62, i64 1
  %68 = load i16, ptr %66, align 2, !tbaa !88
  %69 = load i16, ptr %67, align 2, !tbaa !88
  %70 = icmp eq i16 %68, %69
  br i1 %70, label %60, label %113, !llvm.loop !93

71:                                               ; preds = %60, %57, %56
  %72 = load ptr, ptr %14, align 8, !tbaa !87
  %73 = load i32, ptr %4, align 8, !tbaa !81
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i16, ptr %72, i64 %74
  store i16 0, ptr %75, align 2, !tbaa !88
  %76 = icmp eq ptr %72, null
  %77 = or i1 %25, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %71
  %79 = load i16, ptr %72, align 2, !tbaa !88
  %80 = load i16, ptr %1, align 2, !tbaa !88
  %81 = icmp eq i16 %79, %80
  br i1 %81, label %91, label %113

82:                                               ; preds = %71
  br i1 %76, label %86, label %83

83:                                               ; preds = %82
  %84 = load i16, ptr %72, align 2, !tbaa !88
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %83, %82
  br i1 %25, label %90, label %87

87:                                               ; preds = %86
  %88 = load i16, ptr %1, align 2, !tbaa !88
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %90, label %113

90:                                               ; preds = %87, %86
  br label %113

91:                                               ; preds = %78, %96
  %92 = phi i16 [ %99, %96 ], [ %79, %78 ]
  %93 = phi ptr [ %98, %96 ], [ %1, %78 ]
  %94 = phi ptr [ %97, %96 ], [ %72, %78 ]
  %95 = icmp ne i16 %92, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %91
  %97 = getelementptr inbounds i16, ptr %94, i64 1
  %98 = getelementptr inbounds i16, ptr %93, i64 1
  %99 = load i16, ptr %97, align 2, !tbaa !88
  %100 = load i16, ptr %98, align 2, !tbaa !88
  %101 = icmp eq i16 %99, %100
  br i1 %101, label %91, label %113, !llvm.loop !93

102:                                              ; preds = %35, %30
  %103 = landingpad { ptr, i32 }
          cleanup
  %104 = load ptr, ptr %12, align 8, !tbaa !86
  %105 = load ptr, ptr %14, align 8, !tbaa !87
  %106 = load ptr, ptr %104, align 8, !tbaa !42
  %107 = getelementptr inbounds ptr, ptr %106, i64 3
  %108 = load ptr, ptr %107, align 8
  invoke void %108(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef %105)
          to label %112 unwind label %109

109:                                              ; preds = %102
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #13
  unreachable

112:                                              ; preds = %102
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  resume { ptr, i32 } %103

113:                                              ; preds = %65, %91, %96, %48, %78, %90, %53, %57, %83, %87
  %114 = phi i1 [ true, %87 ], [ true, %83 ], [ true, %57 ], [ true, %53 ], [ false, %90 ], [ true, %78 ], [ true, %48 ], [ %95, %96 ], [ %95, %91 ], [ true, %65 ]
  %115 = phi i32 [ %31, %87 ], [ %31, %83 ], [ %31, %57 ], [ %31, %53 ], [ %32, %90 ], [ %31, %78 ], [ %31, %48 ], [ %32, %91 ], [ %31, %96 ], [ %31, %65 ]
  br i1 %114, label %26, label %116

116:                                              ; preds = %113, %26, %3
  %117 = phi i32 [ -1, %3 ], [ %115, %113 ], [ -1, %26 ]
  %118 = load ptr, ptr %12, align 8, !tbaa !86
  %119 = load ptr, ptr %14, align 8, !tbaa !87
  %120 = load ptr, ptr %118, align 8, !tbaa !42
  %121 = getelementptr inbounds ptr, ptr %120, i64 3
  %122 = load ptr, ptr %121, align 8
  invoke void %122(ptr noundef nonnull align 8 dereferenceable(8) %118, ptr noundef %119)
          to label %126 unwind label %123

123:                                              ; preds = %116
  %124 = landingpad { ptr, i32 }
          catch ptr null
  %125 = extractvalue { ptr, i32 } %124, 0
  call void @__clang_call_terminate(ptr %125) #13
  unreachable

126:                                              ; preds = %116
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #12
  ret i32 %117
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

declare noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_717VecAttributesImpl8getIndexEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef readonly %1) unnamed_addr #8 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !57
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %48, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %8 = icmp eq ptr %1, null
  br label %13

9:                                                ; preds = %45
  %10 = add nuw i32 %15, 1
  %11 = load i32, ptr %3, align 4, !tbaa !57
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %48, !llvm.loop !94

13:                                               ; preds = %6, %9
  %14 = phi i32 [ undef, %6 ], [ %47, %9 ]
  %15 = phi i32 [ 0, %6 ], [ %10, %9 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !55
  %17 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef %15)
  %18 = tail call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %17)
  %19 = icmp eq ptr %18, null
  %20 = or i1 %8, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %13
  %22 = load i16, ptr %18, align 2, !tbaa !88
  %23 = load i16, ptr %1, align 2, !tbaa !88
  %24 = icmp eq i16 %22, %23
  br i1 %24, label %34, label %45

25:                                               ; preds = %13
  br i1 %19, label %29, label %26

26:                                               ; preds = %25
  %27 = load i16, ptr %18, align 2, !tbaa !88
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26, %25
  br i1 %8, label %33, label %30

30:                                               ; preds = %29
  %31 = load i16, ptr %1, align 2, !tbaa !88
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %30, %29
  br label %45

34:                                               ; preds = %21, %39
  %35 = phi i16 [ %42, %39 ], [ %22, %21 ]
  %36 = phi ptr [ %41, %39 ], [ %1, %21 ]
  %37 = phi ptr [ %40, %39 ], [ %18, %21 ]
  %38 = icmp eq i16 %35, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds i16, ptr %37, i64 1
  %41 = getelementptr inbounds i16, ptr %36, i64 1
  %42 = load i16, ptr %40, align 2, !tbaa !88
  %43 = load i16, ptr %41, align 2, !tbaa !88
  %44 = icmp eq i16 %42, %43
  br i1 %44, label %34, label %45, !llvm.loop !93

45:                                               ; preds = %34, %39, %21, %26, %30, %33
  %46 = phi i1 [ true, %33 ], [ false, %30 ], [ false, %26 ], [ false, %21 ], [ %38, %39 ], [ %38, %34 ]
  %47 = select i1 %46, i32 %15, i32 %14
  br i1 %46, label %48, label %9

48:                                               ; preds = %45, %9, %2
  %49 = phi i32 [ -1, %2 ], [ %47, %45 ], [ -1, %9 ]
  ret i32 %49
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 align 2 !prof !40 {
  %4 = load ptr, ptr %0, align 8, !tbaa !42
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !42
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %7)
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #8 align 2 !prof !40 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds ptr, ptr %3, i64 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %6)
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi ptr [ %12, %8 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEPKtS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 align 2 !prof !40 {
  %4 = load ptr, ptr %0, align 8, !tbaa !42
  %5 = getelementptr inbounds ptr, ptr %4, i64 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !42
  %11 = getelementptr inbounds ptr, ptr %10, i64 7
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %7)
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717VecAttributesImpl8getValueEPKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #8 align 2 !prof !40 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds ptr, ptr %3, i64 9
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 7
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %6)
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi ptr [ %12, %8 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717VecAttributesImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjPKNS_10XMLScannerEb(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #10 align 2 !prof !95 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 1
  %7 = load i8, ptr %6, align 8, !tbaa !45, !range !52, !noundef !53
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9, !prof !96

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !42
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(40) %11) #12
  br label %17

17:                                               ; preds = %9, %13, %5
  %18 = zext i1 %4 to i8
  store i8 %18, ptr %6, align 8, !tbaa !45
  %19 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 2
  store i32 %2, ptr %19, align 4, !tbaa !57
  %20 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 3
  store ptr %1, ptr %20, align 8, !tbaa !55
  %21 = getelementptr inbounds %"class.xercesc_2_7::VecAttributesImpl", ptr %0, i64 0, i32 4
  store ptr %3, ptr %21, align 8, !tbaa !64
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !40 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !42
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl6getURIEj, ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj, i64 200913}
!36 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl12getLocalNameEj, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 2}
!37 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl8getQNameEj, ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv, i64 401829}
!38 = !{ptr @_ZNK11xercesc_2_717VecAttributesImpl7getTypeEj, ptr @_ZN11xercesc_2_79XMLAttDef16getAttTypeStringENS0_8AttTypesEPNS_13MemoryManagerE, i64 200913}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!"function_entry_count", i64 1}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!46, !48, i64 8}
!46 = !{!"_ZTSN11xercesc_2_717VecAttributesImplE", !47, i64 0, !48, i64 8, !50, i64 12, !51, i64 16, !51, i64 24}
!47 = !{!"_ZTSN11xercesc_2_710AttributesE"}
!48 = !{!"bool", !49, i64 0}
!49 = !{!"omnipotent char", !44, i64 0}
!50 = !{!"int", !49, i64 0}
!51 = !{!"any pointer", !49, i64 0}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!"branch_weights", i32 1, i32 0}
!55 = !{!46, !51, i64 16}
!56 = !{!"function_entry_count", i64 1211984}
!57 = !{!46, !50, i64 12}
!58 = !{!"function_entry_count", i64 200913}
!59 = !{!"branch_weights", i32 200913, i32 0}
!60 = !{!61, !50, i64 12}
!61 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !48, i64 8, !50, i64 12, !50, i64 16, !51, i64 24, !51, i64 32}
!62 = !{!"branch_weights", i32 1366334, i32 0}
!63 = !{!61, !51, i64 32}
!64 = !{!46, !51, i64 24}
!65 = !{!61, !51, i64 24}
!66 = !{!51, !51, i64 0}
!67 = !{!68, !51, i64 24}
!68 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !48, i64 0, !69, i64 4, !50, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !51, i64 40, !48, i64 48}
!69 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !49, i64 0}
!70 = !{!71, !50, i64 20}
!71 = !{!"_ZTSN11xercesc_2_75QNameE", !72, i64 0, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48}
!72 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!73 = !{!"function_entry_count", i64 361766}
!74 = !{!"function_entry_count", i64 2}
!75 = !{!"branch_weights", i32 2, i32 0}
!76 = !{!71, !51, i64 32}
!77 = !{!"function_entry_count", i64 401829}
!78 = !{!"branch_weights", i32 401829, i32 0}
!79 = !{!68, !69, i64 4}
!80 = !{!68, !51, i64 16}
!81 = !{!82, !50, i64 0}
!82 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !50, i64 0, !50, i64 4, !50, i64 8, !48, i64 12, !51, i64 16, !51, i64 24, !51, i64 32}
!83 = !{!82, !50, i64 4}
!84 = !{!82, !50, i64 8}
!85 = !{!82, !48, i64 12}
!86 = !{!82, !51, i64 16}
!87 = !{!82, !51, i64 32}
!88 = !{!89, !89, i64 0}
!89 = !{!"short", !49, i64 0}
!90 = distinct !{!90, !91, !92}
!91 = !{!"llvm.loop.mustprogress"}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !91, !92}
!94 = distinct !{!94, !91, !92}
!95 = !{!"function_entry_count", i64 832911}
!96 = !{!"branch_weights", i32 832911, i32 0}
!97 = !{!98, !51, i64 40}
!98 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !99, i64 8, !51, i64 16, !50, i64 24, !51, i64 32, !51, i64 40}
!99 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !49, i64 0}
