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

$_ZN15MatchExpression9MatchableC2Ev = comdat any

$_ZN17opp_runtime_errorD2Ev = comdat any

$_ZN22MatchableObjectAdapterD2Ev = comdat any

$_ZN22MatchableObjectAdapterD0Ev = comdat any

$_ZN15MatchExpression9MatchableD2Ev = comdat any

$_ZN15MatchExpression9MatchableD0Ev = comdat any

$_ZN17opp_runtime_errorD0Ev = comdat any

$_ZNK17opp_runtime_error4whatEv = comdat any

$_ZTS17opp_runtime_error = comdat any

$_ZTI17opp_runtime_error = comdat any

$_ZTSN15MatchExpression9MatchableE = comdat any

$_ZTIN15MatchExpression9MatchableE = comdat any

$_ZTVN15MatchExpression9MatchableE = comdat any

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
@_ZTVN15MatchExpression9MatchableE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN15MatchExpression9MatchableE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN15MatchExpression9MatchableD2Ev, ptr @_ZN15MatchExpression9MatchableD0Ev] }, comdat, align 8
@_ZTV17opp_runtime_error = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17opp_runtime_error, ptr @_ZN17opp_runtime_errorD2Ev, ptr @_ZN17opp_runtime_errorD0Ev, ptr @_ZNK17opp_runtime_error4whatEv] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_matchableobject.cc, ptr null }]

@_ZN22MatchableObjectAdapterC1ENS_16DefaultAttributeEP7cObject = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN22MatchableObjectAdapterC2ENS_16DefaultAttributeEP7cObject

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #14
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN22MatchableObjectAdapterC2ENS_16DefaultAttributeEP7cObject(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN15MatchExpression9MatchableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV22MatchableObjectAdapter, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %5 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !47
  %7 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 3
  store ptr null, ptr %7, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15MatchExpression9MatchableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN15MatchExpression9MatchableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4 align 2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN22MatchableObjectAdapter9setObjectEP7cObject(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !34 {
  %3 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 3
  store ptr null, ptr %4, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK22MatchableObjectAdapter19getDefaultAttributeEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = alloca %"class.std::__cxx11::basic_string", align 8
  %3 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !38
  switch i32 %4, label %28 [
    i32 1, label %5
    i32 0, label %14
    i32 2, label %21
  ]

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #15
  %6 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds ptr, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %7) #14
  %11 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4
  %12 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #15
  %13 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #16
  br label %33

14:                                               ; preds = %1
  %15 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !47
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 7
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16) #14
  br label %33

21:                                               ; preds = %1
  %22 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = load ptr, ptr %23, align 8, !tbaa !35
  %25 = getelementptr inbounds ptr, ptr %24, i64 5
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23) #14
  br label %33

28:                                               ; preds = %1
  %29 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull @.str) #14
          to label %30 unwind label %31

30:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTI17opp_runtime_error, ptr nonnull @_ZN17opp_runtime_errorD2Ev) #17
  unreachable

31:                                               ; preds = %28
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %29) #15
  resume { ptr, i32 } %32

33:                                               ; preds = %21, %14, %5
  %34 = phi ptr [ %27, %21 ], [ %20, %14 ], [ %13, %5 ]
  ret ptr %34
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4 align 2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ...) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTV17opp_runtime_error, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #16
  ret void
}

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN22MatchableObjectAdapter10splitIndexEPcRi(ptr noundef %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = alloca ptr, align 8
  store i32 0, ptr %1, align 4, !tbaa !49
  %4 = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 91) #18
  %5 = icmp eq ptr %4, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %8 = getelementptr inbounds i8, ptr %0, i64 %7
  %9 = getelementptr inbounds i8, ptr %8, i64 -1
  %10 = load i8, ptr %9, align 1, !tbaa !51
  %11 = icmp eq i8 %10, 93
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.1) #14
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
  store i8 0, ptr %4, align 1, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %18 = getelementptr inbounds i8, ptr %4, i64 1
  %19 = call i64 @strtol(ptr noundef nonnull %18, ptr noundef nonnull %3, i32 noundef 10) #16
  %20 = trunc i64 %19 to i32
  store i32 %20, ptr %1, align 4, !tbaa !49
  %21 = load ptr, ptr %3, align 8, !tbaa !52
  %22 = icmp eq ptr %21, %9
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  invoke void (ptr, ptr, ...) @_ZN17opp_runtime_errorC1EPKcz(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull @.str.2) #14
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

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN22MatchableObjectAdapter19findDescriptorFieldEP16cClassDescriptorP7cObjectPcRiS5_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %3, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %4) local_unnamed_addr #6 align 2 !prof !34 {
  tail call void @_ZN22MatchableObjectAdapter10splitIndexEPcRi(ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 27
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) #14
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 28
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef 0) #14
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %15) #18
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %30

18:                                               ; preds = %30
  %19 = load ptr, ptr %0, align 8, !tbaa !35
  %20 = getelementptr inbounds ptr, ptr %19, i64 28
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %32) #14
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %22) #18
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30, !llvm.loop !53

25:                                               ; preds = %18
  %26 = icmp slt i32 %32, %9
  br label %27

27:                                               ; preds = %25, %11
  %28 = phi i1 [ true, %11 ], [ %26, %25 ]
  %29 = phi i32 [ 0, %11 ], [ %32, %25 ]
  store i32 %29, ptr %3, align 4, !tbaa !49
  br label %34

30:                                               ; preds = %11, %18
  %31 = phi i32 [ %32, %18 ], [ 0, %11 ]
  %32 = add nuw nsw i32 %31, 1
  %33 = icmp eq i32 %32, %9
  br i1 %33, label %34, label %18, !llvm.loop !53

34:                                               ; preds = %30, %5, %27
  %35 = phi i1 [ %28, %27 ], [ false, %5 ], [ false, %30 ]
  ret i1 %35
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK22MatchableObjectAdapter12getAttributeEPKc(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr nocapture noundef readonly %1) unnamed_addr #6 align 2 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %11) #14
  store ptr %14, ptr %6, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %39, label %16

16:                                               ; preds = %9, %2
  %17 = phi ptr [ %14, %9 ], [ %7, %2 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #18
  %19 = add i64 %18, 1
  %20 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %19) #19
  %21 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %1) #16
  %22 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = call noundef zeroext i1 @_ZN22MatchableObjectAdapter19findDescriptorFieldEP16cClassDescriptorP7cObjectPcRiS5_(ptr noundef nonnull %17, ptr noundef %23, ptr noundef nonnull %20, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  br i1 %24, label %25, label %37

25:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #15
  %26 = load ptr, ptr %6, align 8, !tbaa !48
  %27 = load ptr, ptr %22, align 8, !tbaa !47
  %28 = load i32, ptr %3, align 4, !tbaa !49
  %29 = load i32, ptr %4, align 4, !tbaa !49
  %30 = load ptr, ptr %26, align 8, !tbaa !35
  %31 = getelementptr inbounds ptr, ptr %30, i64 34
  %32 = load ptr, ptr %31, align 8
  %33 = call noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(88) %26, ptr noundef %27, i32 noundef %28, i32 noundef %29, ptr noundef nonnull %5, i32 noundef 256) #14
  %34 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4
  %35 = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull %5) #14
  %36 = call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %34) #16
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #15
  br label %37

37:                                               ; preds = %16, %25
  %38 = phi ptr [ %36, %25 ], [ null, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %39

39:                                               ; preds = %9, %37
  %40 = phi ptr [ %38, %37 ], [ null, %9 ]
  ret ptr %40
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN22MatchableObjectAdapterD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTV22MatchableObjectAdapter, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %class.MatchableObjectAdapter, ptr %0, i64 0, i32 4
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  tail call void @_ZN15MatchExpression9MatchableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN22MatchableObjectAdapterD0Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN22MatchableObjectAdapterD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %0) #16
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15MatchExpression9MatchableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN15MatchExpression9MatchableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

; Function Attrs: nounwind optsize
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN17opp_runtime_errorD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN17opp_runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZdlPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK17opp_runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %class.opp_runtime_error, ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_matchableobject.cc() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { noreturn }
attributes #18 = { nounwind optsize willreturn memory(read) }
attributes #19 = { builtin optsize allocsize(0) }
attributes #20 = { builtin nounwind optsize }
attributes #21 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 349786412141}
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
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !41, i64 8}
!39 = !{!"_ZTS22MatchableObjectAdapter", !40, i64 0, !41, i64 8, !43, i64 16, !43, i64 24, !44, i64 32}
!40 = !{!"_ZTSN15MatchExpression9MatchableE"}
!41 = !{!"_ZTSN22MatchableObjectAdapter16DefaultAttributeE", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !46, i64 8, !42, i64 16}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !43, i64 0}
!46 = !{!"long", !42, i64 0}
!47 = !{!39, !43, i64 16}
!48 = !{!39, !43, i64 24}
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !42, i64 0}
!51 = !{!42, !42, i64 0}
!52 = !{!43, !43, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
