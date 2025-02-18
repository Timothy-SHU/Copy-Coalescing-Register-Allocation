; ModuleID = 'XML256TableTranscoder390.cpp'
source_filename = "XML256TableTranscoder390.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XML256TableTranscoder390" = type { %"class.xercesc_2_7::XMLTranscoder", ptr, i32, ptr }
%"class.xercesc_2_7::XMLTranscoder" = type { ptr, i32, ptr, ptr }
%"struct.xercesc_2_7::XMLTransService::TransRec" = type { i16, i8 }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720TranscodingExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720TranscodingException7getTypeEv = comdat any

$_ZNK11xercesc_2_720TranscodingException9duplicateEv = comdat any

$_ZTSN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTIN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTVN11xercesc_2_720TranscodingExceptionE = comdat any

@.str = private unnamed_addr constant [29 x i8] c"XML256TableTranscoder390.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720TranscodingExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720TranscodingExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724XML256TableTranscoder390E = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724XML256TableTranscoder390E, ptr @_ZN11xercesc_2_724XML256TableTranscoder390D2Ev, ptr @_ZN11xercesc_2_724XML256TableTranscoder390D0Ev, ptr @_ZN11xercesc_2_724XML256TableTranscoder39013transcodeFromEPKhjPtjRjPh, ptr @_ZN11xercesc_2_724XML256TableTranscoder39011transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE, ptr @_ZNK11xercesc_2_724XML256TableTranscoder39014canTranscodeToEj] }, align 8
@_ZTSN11xercesc_2_724XML256TableTranscoder390E = dso_local constant [42 x i8] c"N11xercesc_2_724XML256TableTranscoder390E\00", align 1
@_ZTIN11xercesc_2_713XMLTranscoderE = external constant ptr
@_ZTIN11xercesc_2_724XML256TableTranscoder390E = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724XML256TableTranscoder390E, ptr @_ZTIN11xercesc_2_713XMLTranscoderE }, align 8
@_ZTVN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720TranscodingExceptionD0Ev, ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv, ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_724XML256TableTranscoder390D1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_724XML256TableTranscoder390D2Ev
@_ZN11xercesc_2_724XML256TableTranscoder390C1EPKtjS2_PKNS_15XMLTransService8TransRecEjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_724XML256TableTranscoder390C2EPKtjS2_PKNS_15XMLTransService8TransRecEjPNS_13MemoryManagerE

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_724XML256TableTranscoder390D2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_724XML256TableTranscoder390D0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_724XML256TableTranscoder39013transcodeFromEPKhjPtjRjPh(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 noundef %2, ptr nocapture readnone %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef writeonly %6) unnamed_addr #2 align 2 !prof !34 {
  %8 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4)
  %9 = zext i32 %8 to i64
  store i32 %8, ptr %5, align 4, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 1, i64 %9, i1 false)
  ret i32 %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_724XML256TableTranscoder39011transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, ptr noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, i32 noundef %6) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %8 = alloca [17 x i16], align 16
  %9 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4)
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i16, ptr %1, i64 %10
  %12 = icmp eq i32 %9, 0
  br i1 %12, label %76, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder390", ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder390", ptr %0, i64 0, i32 3
  %16 = icmp ne i32 %6, 0
  br label %17

17:                                               ; preds = %13, %60
  %18 = phi ptr [ %1, %13 ], [ %62, %60 ]
  %19 = phi ptr [ %3, %13 ], [ %63, %60 ]
  %20 = load i16, ptr %18, align 2, !tbaa !39
  %21 = load i32, ptr %14, align 8, !tbaa !41
  %22 = add i32 %21, -1
  %23 = load ptr, ptr %15, align 8, !tbaa !45
  br label %24

24:                                               ; preds = %45, %17
  %25 = phi i32 [ 0, %17 ], [ %41, %45 ]
  %26 = phi i32 [ %22, %17 ], [ %42, %45 ]
  %27 = phi i8 [ undef, %17 ], [ %43, %45 ]
  %28 = sub i32 %26, %25
  %29 = lshr i32 %28, 1
  %30 = add i32 %29, %25
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %23, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !46
  %34 = icmp ult i16 %33, %20
  br i1 %34, label %40, label %35

35:                                               ; preds = %24
  %36 = icmp ugt i16 %33, %20
  br i1 %36, label %40, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %23, i64 %31, i32 1
  %39 = load i8, ptr %38, align 2, !tbaa !48
  br label %40

40:                                               ; preds = %37, %35, %24
  %41 = phi i32 [ %25, %37 ], [ %30, %24 ], [ %25, %35 ]
  %42 = phi i32 [ %26, %37 ], [ %26, %24 ], [ %30, %35 ]
  %43 = phi i8 [ %39, %37 ], [ %27, %24 ], [ %27, %35 ]
  %44 = phi i1 [ false, %37 ], [ true, %24 ], [ true, %35 ]
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = add i32 %41, 1
  %47 = icmp ult i32 %46, %42
  br i1 %47, label %24, label %48, !llvm.loop !49

48:                                               ; preds = %45
  %49 = zext i32 %42 to i64
  %50 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %23, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !46
  %52 = icmp eq i16 %51, %20
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %23, i64 %49, i32 1
  %55 = load i8, ptr %54, align 2, !tbaa !48
  br label %56

56:                                               ; preds = %40, %48, %53
  %57 = phi i8 [ %55, %53 ], [ 0, %48 ], [ %43, %40 ]
  %58 = icmp ne i8 %57, 0
  %59 = or i1 %58, %16
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = select i1 %58, i8 %57, i8 63
  store i8 %61, ptr %19, align 1, !tbaa !52
  %62 = getelementptr inbounds i16, ptr %18, i64 1
  %63 = getelementptr inbounds i8, ptr %19, i64 1
  %64 = icmp ult ptr %62, %11
  br i1 %64, label %17, label %76, !llvm.loop !53

65:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %8) #9
  %66 = zext i16 %20 to i32
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !54
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %66, ptr noundef nonnull %8, i32 noundef 16, i32 noundef 16, ptr noundef %68)
  %69 = call ptr @__cxa_allocate_exception(i64 48) #9
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !55
  %72 = load ptr, ptr %67, align 8, !tbaa !54
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %69, ptr noundef nonnull @.str, i32 noundef 155, i32 noundef 92, ptr noundef nonnull %8, ptr noundef %71, ptr noundef null, ptr noundef null, ptr noundef %72)
          to label %73 unwind label %74

73:                                               ; preds = %65
  call void @__cxa_throw(ptr nonnull %69, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

74:                                               ; preds = %65
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %69) #9
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %8) #9
  resume { ptr, i32 } %75

76:                                               ; preds = %60, %7
  store i32 %9, ptr %5, align 4, !tbaa !35
  ret i32 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @_ZNK11xercesc_2_724XML256TableTranscoder3909xlatOneToEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i16 noundef zeroext %1) local_unnamed_addr #6 align 2 !prof !34 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder390", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !41
  %5 = add i32 %4, -1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder390", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !45
  br label %8

8:                                                ; preds = %29, %2
  %9 = phi i32 [ 0, %2 ], [ %25, %29 ]
  %10 = phi i32 [ %5, %2 ], [ %26, %29 ]
  %11 = phi i8 [ undef, %2 ], [ %27, %29 ]
  %12 = sub i32 %10, %9
  %13 = lshr i32 %12, 1
  %14 = add i32 %13, %9
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %7, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !46
  %18 = icmp ult i16 %17, %1
  br i1 %18, label %24, label %19

19:                                               ; preds = %8
  %20 = icmp ugt i16 %17, %1
  br i1 %20, label %24, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %7, i64 %15, i32 1
  %23 = load i8, ptr %22, align 2, !tbaa !48
  br label %24

24:                                               ; preds = %8, %19, %21
  %25 = phi i32 [ %9, %21 ], [ %14, %8 ], [ %9, %19 ]
  %26 = phi i32 [ %10, %21 ], [ %10, %8 ], [ %14, %19 ]
  %27 = phi i8 [ %23, %21 ], [ %11, %8 ], [ %11, %19 ]
  %28 = phi i1 [ false, %21 ], [ true, %8 ], [ true, %19 ]
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = add i32 %25, 1
  %31 = icmp ult i32 %30, %26
  br i1 %31, label %8, label %32, !llvm.loop !49

32:                                               ; preds = %29
  %33 = zext i32 %26 to i64
  %34 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %7, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !46
  %36 = icmp eq i16 %35, %1
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %7, i64 %33, i32 1
  %39 = load i8, ptr %38, align 2, !tbaa !48
  br label %40

40:                                               ; preds = %24, %32, %37
  %41 = phi i8 [ %39, %37 ], [ 0, %32 ], [ %27, %24 ]
  ret i8 %41
}

declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_724XML256TableTranscoder39014canTranscodeToEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0, i32 noundef %1) unnamed_addr #6 align 2 !prof !34 {
  %3 = trunc i32 %1 to i16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder390", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !41
  %6 = add i32 %5, -1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder390", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  br label %9

9:                                                ; preds = %30, %2
  %10 = phi i32 [ 0, %2 ], [ %26, %30 ]
  %11 = phi i32 [ %6, %2 ], [ %27, %30 ]
  %12 = phi i8 [ undef, %2 ], [ %28, %30 ]
  %13 = sub i32 %11, %10
  %14 = lshr i32 %13, 1
  %15 = add i32 %14, %10
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %8, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !46
  %19 = icmp ult i16 %18, %3
  br i1 %19, label %25, label %20

20:                                               ; preds = %9
  %21 = icmp ugt i16 %18, %3
  br i1 %21, label %25, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %8, i64 %16, i32 1
  %24 = load i8, ptr %23, align 2, !tbaa !48
  br label %25

25:                                               ; preds = %22, %20, %9
  %26 = phi i32 [ %10, %22 ], [ %15, %9 ], [ %10, %20 ]
  %27 = phi i32 [ %11, %22 ], [ %11, %9 ], [ %15, %20 ]
  %28 = phi i8 [ %24, %22 ], [ %12, %9 ], [ %12, %20 ]
  %29 = phi i1 [ false, %22 ], [ true, %9 ], [ true, %20 ]
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = add i32 %26, 1
  %32 = icmp ult i32 %31, %27
  br i1 %32, label %9, label %33, !llvm.loop !49

33:                                               ; preds = %30
  %34 = zext i32 %27 to i64
  %35 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %8, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !46
  %37 = icmp eq i16 %36, %3
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds %"struct.xercesc_2_7::XMLTransService::TransRec", ptr %8, i64 %34, i32 1
  %40 = load i8, ptr %39, align 2, !tbaa !48
  br label %41

41:                                               ; preds = %25, %33, %38
  %42 = phi i8 [ %40, %38 ], [ 0, %33 ], [ %28, %25 ]
  %43 = icmp ne i8 %42, 0
  ret i1 %43
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_724XML256TableTranscoder390C2EPKtjS2_PKNS_15XMLTransService8TransRecEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #5 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %6)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724XML256TableTranscoder390E, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder390", ptr %0, i64 0, i32 1
  store ptr %3, ptr %8, align 8, !tbaa !58
  %9 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder390", ptr %0, i64 0, i32 2
  store i32 %5, ptr %9, align 8, !tbaa !41
  %10 = getelementptr inbounds %"class.xercesc_2_7::XML256TableTranscoder390", ptr %0, i64 0, i32 3
  store ptr %4, ptr %10, align 8, !tbaa !45
  ret void
}

declare void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !56
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!40, !40, i64 0}
!40 = !{!"short", !37, i64 0}
!41 = !{!42, !36, i64 40}
!42 = !{!"_ZTSN11xercesc_2_724XML256TableTranscoder390E", !43, i64 0, !44, i64 32, !36, i64 40, !44, i64 48}
!43 = !{!"_ZTSN11xercesc_2_713XMLTranscoderE", !36, i64 8, !44, i64 16, !44, i64 24}
!44 = !{!"any pointer", !37, i64 0}
!45 = !{!42, !44, i64 48}
!46 = !{!47, !40, i64 0}
!47 = !{!"_ZTSN11xercesc_2_715XMLTransService8TransRecE", !40, i64 0, !37, i64 2}
!48 = !{!47, !37, i64 2}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!37, !37, i64 0}
!53 = distinct !{!53, !50, !51}
!54 = !{!43, !44, i64 24}
!55 = !{!43, !44, i64 16}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !38, i64 0}
!58 = !{!42, !44, i64 32}
!59 = !{!60, !44, i64 40}
!60 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !61, i64 8, !44, i64 16, !36, i64 24, !44, i64 32, !44, i64 40}
!61 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !37, i64 0}
