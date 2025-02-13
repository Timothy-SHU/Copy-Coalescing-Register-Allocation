; ModuleID = 'XML256TableTranscoder.cpp'
source_filename = "XML256TableTranscoder.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XML256TableTranscoder" = type { %"class.xercesc_2_7::XMLTranscoder", ptr, i32, ptr }
%"class.xercesc_2_7::XMLTranscoder" = type { ptr, i32, ptr, ptr }
%"struct.xercesc_2_7::XMLTransService::TransRec" = type { i16, i8 }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_713XMLTranscoder15getEncodingNameEv = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720TranscodingExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720TranscodingException7getTypeEv = comdat any

$_ZNK11xercesc_2_720TranscodingException9duplicateEv = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTIN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTVN11xercesc_2_720TranscodingExceptionE = comdat any

@.str = private unnamed_addr constant [26 x i8] c"XML256TableTranscoder.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720TranscodingExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720TranscodingExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_721XML256TableTranscoderE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721XML256TableTranscoderE, ptr @_ZN11xercesc_2_721XML256TableTranscoderD2Ev, ptr @_ZN11xercesc_2_721XML256TableTranscoderD0Ev, ptr @_ZN11xercesc_2_721XML256TableTranscoder13transcodeFromEPKhjPtjRjPh, ptr @_ZN11xercesc_2_721XML256TableTranscoder11transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE, ptr @_ZNK11xercesc_2_721XML256TableTranscoder14canTranscodeToEj] }, align 8
@_ZTSN11xercesc_2_721XML256TableTranscoderE = dso_local constant [39 x i8] c"N11xercesc_2_721XML256TableTranscoderE\00", align 1
@_ZTIN11xercesc_2_713XMLTranscoderE = external constant ptr
@_ZTIN11xercesc_2_721XML256TableTranscoderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721XML256TableTranscoderE, ptr @_ZTIN11xercesc_2_713XMLTranscoderE }, align 8
@_ZTVN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720TranscodingExceptionD0Ev, ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv, ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_721XML256TableTranscoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_721XML256TableTranscoderD2Ev
@_ZN11xercesc_2_721XML256TableTranscoderC1EPKtjS2_PKNS_15XMLTransService8TransRecEjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_721XML256TableTranscoderC2EPKtjS2_PKNS_15XMLTransService8TransRecEjPNS_13MemoryManagerE

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_721XML256TableTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_721XML256TableTranscoderD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_721XML256TableTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_721XML256TableTranscoder13transcodeFromEPKhjPtjRjPh(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef writeonly %6) unnamed_addr #2 align 2 !prof !34 {
  %8 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4)
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = icmp eq i32 %8, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  br label %15

15:                                               ; preds = %12, %26
  %16 = phi ptr [ %1, %12 ], [ %18, %26 ]
  %17 = phi ptr [ %3, %12 ], [ %27, %26 ]
  %18 = getelementptr inbounds i8, ptr %16, i64 1
  %19 = load i8, ptr %16, align 1, !tbaa !42
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i16, ptr %14, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !43
  %23 = icmp eq i16 %22, -1
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = getelementptr inbounds i16, ptr %17, i64 1
  store i16 %22, ptr %17, align 2, !tbaa !43
  br label %26, !llvm.loop !45

26:                                               ; preds = %15, %24
  %27 = phi ptr [ %25, %24 ], [ %17, %15 ]
  %28 = icmp ult ptr %18, %10
  br i1 %28, label %15, label %29

29:                                               ; preds = %26, %7
  store i32 %8, ptr %5, align 4, !tbaa !47
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 1, i64 %9, i1 false)
  ret i32 %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_721XML256TableTranscoder11transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, i32 noundef %6) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %8 = alloca [17 x i16], align 16
  %9 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4)
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i16, ptr %1, i64 %10
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %7
  %14 = icmp ne i32 %6, 0
  br label %15

15:                                               ; preds = %13, %22
  %16 = phi ptr [ %1, %13 ], [ %24, %22 ]
  %17 = phi ptr [ %3, %13 ], [ %25, %22 ]
  %18 = load i16, ptr %16, align 2, !tbaa !43
  %19 = tail call noundef zeroext i8 @_ZNK11xercesc_2_721XML256TableTranscoder9xlatOneToEt(ptr noundef nonnull align 8 dereferenceable(56) %0, i16 noundef zeroext %18) #10
  %20 = icmp ne i8 %19, 0
  %21 = or i1 %20, %14
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = select i1 %20, i8 %19, i8 63
  store i8 %23, ptr %17, align 1, !tbaa !42
  %24 = getelementptr inbounds i16, ptr %16, i64 1
  %25 = getelementptr inbounds i8, ptr %17, i64 1
  %26 = icmp ult ptr %24, %11
  br i1 %26, label %15, label %36, !llvm.loop !48

27:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %8) #11
  %28 = zext i16 %18 to i32
  %29 = tail call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %28, ptr noundef nonnull %8, i32 noundef 16, i32 noundef 16, ptr noundef %29) #10
  %30 = call ptr @__cxa_allocate_exception(i64 48) #11
  %31 = call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder15getEncodingNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  %32 = call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull @.str, i32 noundef 151, i32 noundef 92, ptr noundef nonnull %8, ptr noundef %31, ptr noundef null, ptr noundef null, ptr noundef %32) #10
          to label %33 unwind label %34

33:                                               ; preds = %27
  call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %30) #11
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %8) #11
  resume { ptr, i32 } %35

36:                                               ; preds = %22, %7
  store i32 %9, ptr %5, align 4, !tbaa !47
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @_ZNK11xercesc_2_721XML256TableTranscoder9xlatOneToEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i16 noundef zeroext %1) local_unnamed_addr #6 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !49
  %5 = add i32 %4, -1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !50
  br label %8

8:                                                ; preds = %20, %2
  %9 = phi i32 [ 0, %2 ], [ %21, %20 ]
  %10 = phi i32 [ %5, %2 ], [ %22, %20 ]
  %11 = sub i32 %10, %9
  %12 = lshr i32 %11, 1
  %13 = add i32 %12, %9
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %7, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !51
  %17 = icmp ult i16 %16, %1
  br i1 %17, label %20, label %18

18:                                               ; preds = %8
  %19 = icmp ugt i16 %16, %1
  br i1 %19, label %20, label %30

20:                                               ; preds = %18, %8
  %21 = phi i32 [ %9, %18 ], [ %13, %8 ]
  %22 = phi i32 [ %13, %18 ], [ %10, %8 ]
  %23 = add i32 %21, 1
  %24 = icmp ult i32 %23, %22
  br i1 %24, label %8, label %25, !llvm.loop !53

25:                                               ; preds = %20
  %26 = zext i32 %22 to i64
  %27 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %7, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !51
  %29 = icmp eq i16 %28, %1
  br i1 %29, label %30, label %34

30:                                               ; preds = %18, %25
  %31 = phi i64 [ %26, %25 ], [ %14, %18 ]
  %32 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %7, i64 %31, i32 1
  %33 = load i8, ptr %32, align 2, !tbaa !54
  br label %34

34:                                               ; preds = %30, %25
  %35 = phi i8 [ 0, %25 ], [ %33, %30 ]
  ret i8 %35
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLTranscoder15getEncodingNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_721XML256TableTranscoder14canTranscodeToEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1) unnamed_addr #6 align 2 !prof !34 {
  %3 = trunc i32 %1 to i16
  %4 = tail call noundef zeroext i8 @_ZNK11xercesc_2_721XML256TableTranscoder9xlatOneToEt(ptr noundef nonnull align 8 dereferenceable(56) %0, i16 noundef zeroext %3) #10
  %5 = icmp ne i8 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721XML256TableTranscoderC2EPKtjS2_PKNS_15XMLTransService8TransRecEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #5 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %6) #10
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_721XML256TableTranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %8 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder", ptr %0, i64 0, i32 1
  store ptr %3, ptr %8, align 8, !tbaa !35
  %9 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder", ptr %0, i64 0, i32 2
  store i32 %5, ptr %9, align 8, !tbaa !49
  %10 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder", ptr %0, i64 0, i32 3
  store ptr %4, ptr %10, align 8, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #5 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !41, i64 32}
!36 = !{!"_ZTSN11xercesc_2_721XML256TableTranscoderE", !37, i64 0, !41, i64 32, !38, i64 40, !41, i64 48}
!37 = !{!"_ZTSN11xercesc_2_713XMLTranscoderE", !38, i64 8, !41, i64 16, !41, i64 24}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!"any pointer", !39, i64 0}
!42 = !{!39, !39, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"short", !39, i64 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!38, !38, i64 0}
!48 = distinct !{!48, !46}
!49 = !{!36, !38, i64 40}
!50 = !{!36, !41, i64 48}
!51 = !{!52, !44, i64 0}
!52 = !{!"_ZTSN11xercesc_2_715XMLTransService8TransRecE", !44, i64 0, !39, i64 2}
!53 = distinct !{!53, !46}
!54 = !{!52, !39, i64 2}
!55 = !{!37, !41, i64 24}
!56 = !{!37, !41, i64 16}
!57 = !{!58, !58, i64 0}
!58 = !{!"vtable pointer", !40, i64 0}
!59 = !{!60, !41, i64 40}
!60 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !61, i64 8, !41, i64 16, !38, i64 24, !41, i64 32, !41, i64 40}
!61 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !39, i64 0}
