; ModuleID = 'simulator/matchableobject.cc'
source_filename = "simulator/matchableobject.cc"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%class.MatchableObjectAdapter = type { %"class.MatchExpression::Matchable", i32, ptr, ptr, %"class.std::__cxx11::basic_string" }
%"class.MatchExpression::Matchable" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%class.opp_runtime_error = type { %"class.std::runtime_error", %"class.std::__cxx11::basic_string" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.0 }
%union.anon.0 = type { ptr }

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZN22MatchableObjectAdapterD2Ev = comdat any

$_ZN22MatchableObjectAdapterD0Ev = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTSN15MatchExpression9MatchableE = comdat any

$_ZTIN15MatchExpression9MatchableE = comdat any

$_ZTV17opp_runtime_error = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZTV22MatchableObjectAdapter = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTI22MatchableObjectAdapter, ptr @_ZNK22MatchableObjectAdapter19getDefaultAttributeEv, ptr @_ZNK22MatchableObjectAdapter12getAttributeEPKc, ptr @_ZN22MatchableObjectAdapterD2Ev, ptr @_ZN22MatchableObjectAdapterD0Ev] }, align 8
@.str = private unnamed_addr constant [38 x i8] c"unknown setting for default attribute\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS17opp_runtime_error = linkonce_odr dso_local constant [20 x i8] c"17opp_runtime_error\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTI17opp_runtime_error = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS17opp_runtime_error, ptr @_ZTISt13runtime_error }, comdat, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"unmatched '['\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"brackets [] must contain numeric index\00", align 1
@_ZTS22MatchableObjectAdapter = dso_local constant [25 x i8] c"22MatchableObjectAdapter\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN15MatchExpression9MatchableE = linkonce_odr dso_local constant [30 x i8] c"N15MatchExpression9MatchableE\00", comdat, align 1
@_ZTIN15MatchExpression9MatchableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN15MatchExpression9MatchableE }, comdat, align 8
@_ZTI22MatchableObjectAdapter = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS22MatchableObjectAdapter, ptr @_ZTIN15MatchExpression9MatchableE }, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_matchableobject.cc, ptr null }]

@_ZN22MatchableObjectAdapterC1ENS_16DefaultAttributeEP7cObject = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN22MatchableObjectAdapterC2ENS_16DefaultAttributeEP7cObject

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN22MatchableObjectAdapterC2ENS_16DefaultAttributeEP7cObject(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV22MatchableObjectAdapter, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %4 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4, i32 2
  store ptr %5, ptr %4, align 8, !tbaa !42
  %6 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %6, align 8, !tbaa !46
  store i8 0, ptr %5, align 8, !tbaa !49
  %7 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 1
  store i32 %1, ptr %7, align 8, !tbaa !50
  %8 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 3
  store ptr null, ptr %9, align 8, !tbaa !55
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN22MatchableObjectAdapter9setObjectEP7cObject(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !38 {
  %3 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !54
  %4 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 3
  store ptr null, ptr %4, align 8, !tbaa !55
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK22MatchableObjectAdapter19getDefaultAttributeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !50
  switch i32 %4, label %37 [
    i32 1, label %5
    i32 0, label %23
    i32 2, label %30
  ]

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  %6 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = getelementptr inbounds ptr, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %11 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4
  %12 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %2) #15
  %13 = load ptr, ptr %2, align 8, !tbaa !56
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 2
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %5
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", ptr %2, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !46
  %19 = icmp ult i64 %18, 16
  call void @llvm.assume(i1 %19)
  br label %21

20:                                               ; preds = %5
  call void @_ZdlPv(ptr noundef %13) #16
  br label %21

21:                                               ; preds = %16, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  %22 = load ptr, ptr %11, align 8, !tbaa !56
  br label %42

23:                                               ; preds = %1
  %24 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = getelementptr inbounds ptr, ptr %26, i64 7
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25)
  br label %42

30:                                               ; preds = %1
  %31 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !54
  %33 = load ptr, ptr %32, align 8, !tbaa !39
  %34 = getelementptr inbounds ptr, ptr %33, i64 5
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %32)
  br label %42

37:                                               ; preds = %1
  %38 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef nonnull @.str)
          to label %39 unwind label %40

39:                                               ; preds = %37
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #17
  unreachable

40:                                               ; preds = %37
  %41 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %38) #15
  resume { ptr, i32 } %41

42:                                               ; preds = %30, %23, %21
  %43 = phi ptr [ %36, %30 ], [ %29, %23 ], [ %22, %21 ]
  ret ptr %43
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress nounwind uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !46
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #16
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN22MatchableObjectAdapter10splitIndexEPcRi(ptr noundef %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca ptr, align 8
  store i32 0, ptr %1, align 4, !tbaa !57
  %4 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 91) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = getelementptr inbounds i8, ptr %8, i64 -1
  %10 = load i8, ptr %9, align 1, !tbaa !49
  %11 = icmp eq i8 %10, 93
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.1)
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #17
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #15
  br label %29

17:                                               ; preds = %6
  store i8 0, ptr %4, align 1, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %18 = getelementptr inbounds i8, ptr %4, i64 1
  %19 = call i64 @strtol(ptr noundef nonnull %18, ptr noundef nonnull %3, i32 noundef 10) #15
  %20 = trunc i64 %19 to i32
  store i32 %20, ptr %1, align 4, !tbaa !57
  %21 = load ptr, ptr %3, align 8, !tbaa !59
  %22 = icmp eq ptr %21, %9
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull @.str.2)
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %24, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #17
  unreachable

26:                                               ; preds = %23
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %24) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %29

28:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %31

29:                                               ; preds = %26, %15
  %30 = phi { ptr, i32 } [ %16, %15 ], [ %27, %26 ]
  resume { ptr, i32 } %30

31:                                               ; preds = %28, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN22MatchableObjectAdapter19findDescriptorFieldEP16cClassDescriptorP7cObjectPcRiS5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %4) local_unnamed_addr #4 align 2 !prof !38 {
  tail call void @_ZN22MatchableObjectAdapter10splitIndexEPcRi(ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %6 = load ptr, ptr %0, align 8, !tbaa !39
  %7 = getelementptr inbounds ptr, ptr %6, i64 27
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1)
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !39
  %13 = getelementptr inbounds ptr, ptr %12, i64 28
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef 0)
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %15) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %30

18:                                               ; preds = %30
  %19 = load ptr, ptr %0, align 8, !tbaa !39
  %20 = getelementptr inbounds ptr, ptr %19, i64 28
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %32)
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %22) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30, !llvm.loop !60

25:                                               ; preds = %18
  %26 = icmp slt i32 %32, %9
  br label %27

27:                                               ; preds = %25, %11
  %28 = phi i1 [ %10, %11 ], [ %26, %25 ]
  %29 = phi i32 [ 0, %11 ], [ %32, %25 ]
  store i32 %29, ptr %3, align 4, !tbaa !57
  br label %34

30:                                               ; preds = %11, %18
  %31 = phi i32 [ %32, %18 ], [ 0, %11 ]
  %32 = add nuw nsw i32 %31, 1
  %33 = icmp eq i32 %32, %9
  br i1 %33, label %34, label %18, !llvm.loop !60

34:                                               ; preds = %30, %5, %27
  %35 = phi i1 [ %28, %27 ], [ %10, %5 ], [ false, %30 ]
  ret i1 %35
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK22MatchableObjectAdapter12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nocapture noundef readonly %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = load ptr, ptr %11, align 8, !tbaa !39
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %11)
  store ptr %14, ptr %6, align 8, !tbaa !55
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %9, %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %18 = add i64 %17, 1
  %19 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %18) #19
  %20 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %1) #15
  %21 = load ptr, ptr %6, align 8, !tbaa !55
  %22 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = call noundef zeroext i1 @_ZN22MatchableObjectAdapter19findDescriptorFieldEP16cClassDescriptorP7cObjectPcRiS5_(ptr noundef %21, ptr noundef %23, ptr noundef nonnull %19, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br i1 %24, label %25, label %40

25:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #15
  %26 = load ptr, ptr %6, align 8, !tbaa !55
  %27 = load ptr, ptr %22, align 8, !tbaa !54
  %28 = load i32, ptr %3, align 4, !tbaa !57
  %29 = load i32, ptr %4, align 4, !tbaa !57
  %30 = load ptr, ptr %26, align 8, !tbaa !39
  %31 = getelementptr inbounds ptr, ptr %30, i64 34
  %32 = load ptr, ptr %31, align 8
  %33 = call noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(88) %26, ptr noundef %27, i32 noundef %28, i32 noundef %29, ptr noundef nonnull %5, i32 noundef 256)
  %34 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4
  %35 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !46
  %37 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #15
  %38 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %34, i64 noundef 0, i64 noundef %36, ptr noundef nonnull %5, i64 noundef %37)
  %39 = load ptr, ptr %34, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #15
  br label %40

40:                                               ; preds = %16, %25
  %41 = phi ptr [ %39, %25 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %42

42:                                               ; preds = %9, %40
  %43 = phi ptr [ %41, %40 ], [ null, %9 ]
  ret ptr %43
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22MatchableObjectAdapterD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV22MatchableObjectAdapter, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !46
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #16
  br label %11

11:                                               ; preds = %6, %10
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN22MatchableObjectAdapterD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV22MatchableObjectAdapter, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !46
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #16
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZdlPv(ptr noundef %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !39
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 2
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !46
  %9 = icmp ult i64 %8, 16
  tail call void @llvm.assume(i1 %9)
  br label %11

10:                                               ; preds = %1
  tail call void @_ZdlPv(ptr noundef %3) #16
  br label %11

11:                                               ; preds = %6, %10
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  tail call void @_ZdlPv(ptr noundef %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_matchableobject.cc() #13 section ".text.startup" !prof !63 !PGOFuncName !64 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { builtin allocsize(0) }

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
!35 = !{ptr @_GLOBAL__sub_I_matchableobject.cc, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!36 = !{ptr @_GLOBAL__sub_I_matchableobject.cc, ptr @__cxa_atexit, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !44, i64 0}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !44, i64 0}
!44 = !{!"any pointer", !45, i64 0}
!45 = !{!"omnipotent char", !41, i64 0}
!46 = !{!47, !48, i64 8}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !43, i64 0, !48, i64 8, !45, i64 16}
!48 = !{!"long", !45, i64 0}
!49 = !{!45, !45, i64 0}
!50 = !{!51, !53, i64 8}
!51 = !{!"_ZTS22MatchableObjectAdapter", !52, i64 0, !53, i64 8, !44, i64 16, !44, i64 24, !47, i64 32}
!52 = !{!"_ZTSN15MatchExpression9MatchableE"}
!53 = !{!"_ZTSN22MatchableObjectAdapter16DefaultAttributeE", !45, i64 0}
!54 = !{!51, !44, i64 16}
!55 = !{!51, !44, i64 24}
!56 = !{!47, !44, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"int", !45, i64 0}
!59 = !{!44, !44, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"function_entry_count", i64 1}
!64 = !{!"simulator/matchableobject.cc;_GLOBAL__sub_I_matchableobject.cc"}
