; ModuleID = 'CMAny.cpp'
source_filename = "CMAny.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::CMStateSet" = type { i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::CMAny" = type { %"class.xercesc_2_7::CMNode.base", i32, i32, [4 x i8] }
%"class.xercesc_2_7::CMNode.base" = type <{ ptr, ptr, i32, [4 x i8], ptr, ptr, i32 }>
%"class.xercesc_2_7::CMNode" = type <{ ptr, ptr, i32, [4 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_710CMStateSetD2Ev = comdat any

$_ZN11xercesc_2_76CMNodeD0Ev = comdat any

$_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710CMStateSet8zeroBitsEv = comdat any

$_ZN11xercesc_2_710CMStateSet6setBitEj = comdat any

$_ZN11xercesc_2_76CMNodeD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZTVN11xercesc_2_76CMNodeE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_76CMNodeE = comdat any

$_ZTIN11xercesc_2_76CMNodeE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_76CMNodeE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76CMNodeE, ptr @_ZN11xercesc_2_76CMNodeD2Ev, ptr @_ZN11xercesc_2_76CMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_75CMAnyE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_75CMAnyE, ptr @_ZN11xercesc_2_75CMAnyD2Ev, ptr @_ZN11xercesc_2_75CMAnyD0Ev, ptr @_ZNK11xercesc_2_75CMAny10isNullableEv, ptr @_ZNK11xercesc_2_75CMAny12calcFirstPosERNS_10CMStateSetE, ptr @_ZNK11xercesc_2_75CMAny11calcLastPosERNS_10CMStateSetE] }, align 8
@.str = private unnamed_addr constant [10 x i8] c"CMAny.cpp\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"CMAny\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_76CMNodeE = linkonce_odr dso_local constant [23 x i8] c"N11xercesc_2_76CMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_76CMNodeE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76CMNodeE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_75CMAnyE = dso_local constant [22 x i8] c"N11xercesc_2_75CMAnyE\00", align 1
@_ZTIN11xercesc_2_75CMAnyE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_75CMAnyE, ptr @_ZTIN11xercesc_2_76CMNodeE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [43 x i8] c"./xercesc/validators/common/CMStateSet.hpp\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_75CMAnyC1ENS_15ContentSpecNode9NodeTypesEjjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, i32, i32, ptr), ptr @_ZN11xercesc_2_75CMAnyC2ENS_15ContentSpecNode9NodeTypesEjjPNS_13MemoryManagerE
@_ZN11xercesc_2_75CMAnyD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_75CMAnyD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !42
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !48

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !49
  %8 = load ptr, ptr %7, align 8, !tbaa !50
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #9
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #2 comdat align 2 {
  tail call void @llvm.trap() #10
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_75CMAnyC2ENS_15ContentSpecNode9NodeTypesEjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(52) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  tail call void @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_75CMAnyE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMAny", ptr %0, i64 0, i32 1
  store i32 %2, ptr %6, align 4, !tbaa !53
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMAny", ptr %0, i64 0, i32 2
  store i32 %3, ptr %7, align 8, !tbaa !57
  %8 = and i32 %1, 15
  %9 = add nsw i32 %8, -6
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %18, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 24, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4) #9
          to label %13 unwind label %14

13:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
          to label %21 unwind label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #11
  br label %19

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %19

18:                                               ; preds = %5
  ret void

19:                                               ; preds = %16, %14
  %20 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  tail call void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) #13
  resume { ptr, i32 } %20

21:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(44) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !58 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %4 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !59
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store i32 -1, ptr %7, align 8, !tbaa !61
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %12
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_75CMAnyD2Ev(ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #2 align 2 !prof !52 {
  tail call void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_75CMAnyD0Ev(ptr noundef nonnull align 8 dereferenceable(52) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xercesc_2_75CMAnyD2Ev(ptr noundef nonnull align 8 dereferenceable(52) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_75CMAny6getURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %0) local_unnamed_addr #4 align 2 !prof !52 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMAny", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !53
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_75CMAny11getPositionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %0) local_unnamed_addr #4 align 2 !prof !52 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMAny", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !57
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_75CMAny11setPositionEj(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(52) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !52 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CMAny", ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_75CMAny10isNullableEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %0) unnamed_addr #4 align 2 !prof !52 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMAny", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !57
  %4 = icmp eq i32 %3, -1
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_75CMAny12calcFirstPosERNS_10CMStateSetE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 align 2 !prof !52 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CMAny", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710CMStateSet8zeroBitsEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  br label %8

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710CMStateSet6setBitEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %4) #9
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSet8zeroBitsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !62 {
  %2 = load i32, ptr %0, align 8, !tbaa !63
  %3 = icmp ult i32 %2, 65
  br i1 %3, label %10, label %4, !prof !64

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !65
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  br label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  store i32 0, ptr %11, align 8, !tbaa !66
  %12 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  store i32 0, ptr %12, align 4, !tbaa !67
  br label %21

13:                                               ; preds = %8, %13
  %14 = phi i64 [ 0, %8 ], [ %17, %13 ]
  %15 = load ptr, ptr %9, align 8, !tbaa !42
  %16 = getelementptr inbounds i8, ptr %15, i64 %14
  store i8 0, ptr %16, align 1, !tbaa !68
  %17 = add nuw nsw i64 %14, 1
  %18 = load i32, ptr %5, align 4, !tbaa !65
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %13, label %21, !llvm.loop !69

21:                                               ; preds = %13, %4, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710CMStateSet6setBitEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = load i32, ptr %0, align 8, !tbaa !63
  %4 = icmp ugt i32 %3, %1
  br i1 %4, label %12, label %5, !prof !72

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.2, i32 noundef 233, i32 noundef 11, ptr noundef %8) #9
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #11
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = icmp ult i32 %3, 65
  br i1 %13, label %14, label %26, !prof !72

14:                                               ; preds = %12
  %15 = and i32 %1, 31
  %16 = shl nuw i32 1, %15
  %17 = icmp ult i32 %1, 32
  br i1 %17, label %18, label %22, !prof !72

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !66
  %21 = or i32 %20, %16
  store i32 %21, ptr %19, align 8, !tbaa !66
  br label %42

22:                                               ; preds = %14
  %23 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !67
  %25 = or i32 %24, %16
  store i32 %25, ptr %23, align 4, !tbaa !67
  br label %42

26:                                               ; preds = %12
  %27 = and i32 %1, 7
  %28 = shl nuw nsw i32 1, %27
  %29 = lshr i32 %1, 3
  %30 = getelementptr inbounds %"class.xercesc_2_7::CMStateSet", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = zext nneg i32 %29 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !68
  %35 = trunc i32 %28 to i8
  %36 = xor i8 %35, -1
  %37 = and i8 %34, %36
  store i8 %37, ptr %33, align 1, !tbaa !68
  %38 = load ptr, ptr %30, align 8, !tbaa !42
  %39 = getelementptr inbounds i8, ptr %38, i64 %32
  %40 = load i8, ptr %39, align 1, !tbaa !68
  %41 = or i8 %40, %35
  store i8 %41, ptr %39, align 1, !tbaa !68
  br label %42

42:                                               ; preds = %18, %22, %26
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_75CMAny11calcLastPosERNS_10CMStateSetE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(52) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #3 align 2 !prof !52 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::CMAny", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710CMStateSet8zeroBitsEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #9
  br label %8

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710CMStateSet6setBitEj(ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %4) #9
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76CMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #2 comdat align 2 !prof !58 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76CMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #13
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::CMNode", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_710CMStateSetD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #13
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !75 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !52 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !52 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !52 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !52 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!40}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @_ZN11xercesc_2_76CMNodeC2ENS_15ContentSpecNode9NodeTypesEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 233}
!36 = !{ptr @_ZN11xercesc_2_710CMStateSet6setBitEj, ptr @__cxa_allocate_exception, i64 1}
!37 = !{ptr @_ZN11xercesc_2_710CMStateSet6setBitEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_76CMNodeD2Ev, ptr @_ZN11xercesc_2_710CMStateSetD2Ev, i64 292}
!39 = !{ptr @_ZN11xercesc_2_76CMNodeD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 292}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 452}
!42 = !{!43, !47, i64 16}
!43 = !{!"_ZTSN11xercesc_2_710CMStateSetE", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !47, i64 16, !47, i64 24}
!44 = !{!"int", !45, i64 0}
!45 = !{!"omnipotent char", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"any pointer", !45, i64 0}
!48 = !{!"branch_weights", i32 453, i32 1}
!49 = !{!43, !47, i64 24}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !46, i64 0}
!52 = !{!"function_entry_count", i64 0}
!53 = !{!54, !44, i64 44}
!54 = !{!"_ZTSN11xercesc_2_75CMAnyE", !55, i64 0, !44, i64 44, !44, i64 48}
!55 = !{!"_ZTSN11xercesc_2_76CMNodeE", !47, i64 8, !56, i64 16, !47, i64 24, !47, i64 32, !44, i64 40}
!56 = !{!"_ZTSN11xercesc_2_715ContentSpecNode9NodeTypesE", !45, i64 0}
!57 = !{!54, !44, i64 48}
!58 = !{!"function_entry_count", i64 233}
!59 = !{!55, !47, i64 8}
!60 = !{!55, !56, i64 16}
!61 = !{!55, !44, i64 40}
!62 = !{!"function_entry_count", i64 938}
!63 = !{!43, !44, i64 0}
!64 = !{!"branch_weights", i32 939, i32 1}
!65 = !{!43, !44, i64 4}
!66 = !{!43, !44, i64 8}
!67 = !{!43, !44, i64 12}
!68 = !{!45, !45, i64 0}
!69 = distinct !{!69, !70}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"function_entry_count", i64 141}
!72 = !{!"branch_weights", i32 142, i32 1}
!73 = !{!55, !47, i64 24}
!74 = !{!55, !47, i64 32}
!75 = !{!"function_entry_count", i64 5836268}
!76 = !{!77, !47, i64 40}
!77 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !78, i64 8, !47, i64 16, !44, i64 24, !47, i64 32, !47, i64 40}
!78 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !45, i64 0}
