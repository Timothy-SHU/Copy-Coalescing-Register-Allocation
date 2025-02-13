; ModuleID = 'XMLURL.cpp'
source_filename = "XMLURL.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.xercesc_2_7::ProtoEntry" = type { i32, ptr, i32 }
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::BinFileInputStream" = type { %"class.xercesc_2_7::BinInputStream", ptr, ptr }
%"class.xercesc_2_7::BinInputStream" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_76XMLURL10getURLTextEv = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_718BinFileInputStream9getIsOpenEv = comdat any

$_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTIN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTVN11xercesc_2_721MalformedURLExceptionE = comdat any

@_ZN11xercesc_2_7L10gProtoListE = internal unnamed_addr constant [3 x %"struct.xercesc_2_7::ProtoEntry"] [%"struct.xercesc_2_7::ProtoEntry" { i32 0, ptr @_ZN11xercesc_2_7L11gFileStringE, i32 0 }, %"struct.xercesc_2_7::ProtoEntry" { i32 1, ptr @_ZN11xercesc_2_7L11gHTTPStringE, i32 80 }, %"struct.xercesc_2_7::ProtoEntry" { i32 2, ptr @_ZN11xercesc_2_7L10gFTPStringE, i32 21 }], align 16
@_ZTVN11xercesc_2_76XMLURLE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76XMLURLE, ptr @_ZN11xercesc_2_76XMLURLD2Ev, ptr @_ZN11xercesc_2_76XMLURLD0Ev] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [11 x i8] c"XMLURL.cpp\00", align 1
@_ZTSN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721MalformedURLExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721MalformedURLExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni17fgLocalHostStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_716XMLPlatformUtils13fgNetAccessorE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L8gListOneE = internal constant [3 x i16] [i16 58, i16 47, i16 0], align 2
@_ZN11xercesc_2_7L9gListFourE = internal constant [2 x i16] [i16 47, i16 0], align 2
@_ZN11xercesc_2_7L8gListTwoE = internal constant [2 x i16] [i16 64, i16 0], align 2
@_ZN11xercesc_2_7L10gListThreeE = internal constant [2 x i16] [i16 58, i16 0], align 2
@_ZN11xercesc_2_7L9gListFiveE = internal constant [3 x i16] [i16 35, i16 63, i16 0], align 2
@_ZN11xercesc_2_7L8gListSixE = internal constant [2 x i16] [i16 35, i16 0], align 2
@_ZTSN11xercesc_2_76XMLURLE = dso_local constant [23 x i8] c"N11xercesc_2_76XMLURLE\00", align 1
@_ZTIN11xercesc_2_76XMLURLE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76XMLURLE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@_ZN11xercesc_2_7L11gFileStringE = internal constant [5 x i16] [i16 102, i16 105, i16 108, i16 101, i16 0], align 2
@_ZN11xercesc_2_7L11gHTTPStringE = internal constant [5 x i16] [i16 104, i16 116, i16 116, i16 112, i16 0], align 2
@_ZN11xercesc_2_7L10gFTPStringE = internal constant [4 x i16] [i16 102, i16 116, i16 112, i16 0], align 2
@_ZTVN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721MalformedURLExceptionD0Ev, ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv, ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E = external local_unnamed_addr global [65536 x i8], align 16

@_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_76XMLURLC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_76XMLURLC1EPKtS2_PNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_76XMLURLC2EPKtS2_PNS_13MemoryManagerE
@_ZN11xercesc_2_76XMLURLC1EPKtPKcPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_76XMLURLC2EPKtPKcPNS_13MemoryManagerE
@_ZN11xercesc_2_76XMLURLC1ERKS0_PKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_76XMLURLC2ERKS0_PKt
@_ZN11xercesc_2_76XMLURLC1ERKS0_PKc = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_76XMLURLC2ERKS0_PKc
@_ZN11xercesc_2_76XMLURLC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_76XMLURLC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_76XMLURLC1EPKcPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_76XMLURLC2EPKcPNS_13MemoryManagerE
@_ZN11xercesc_2_76XMLURLC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_76XMLURLC2ERKS0_
@_ZN11xercesc_2_76XMLURLD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_76XMLURLD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_76XMLURL12lookupByNameEPKt(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !70 {
  br label %5

2:                                                ; preds = %5
  %3 = add nuw nsw i64 %6, 1
  %4 = icmp eq i64 %3, 3
  br i1 %4, label %14, label %5, !prof !71, !llvm.loop !72

5:                                                ; preds = %1, %2
  %6 = phi i64 [ 0, %1 ], [ %3, %2 ]
  %7 = getelementptr inbounds [3 x %"struct.xercesc_2_7::ProtoEntry"], ptr @_ZN11xercesc_2_7L10gProtoListE, i64 0, i64 %6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %0, ptr noundef %8) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %2, !prof !81

11:                                               ; preds = %5
  %12 = getelementptr inbounds [3 x %"struct.xercesc_2_7::ProtoEntry"], ptr @_ZN11xercesc_2_7L10gProtoListE, i64 0, i64 %6
  %13 = load i32, ptr %12, align 8, !tbaa !82
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi i32 [ %13, %11 ], [ 4, %2 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !83 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !86
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  store i32 4, ptr %5, align 4, !tbaa !89
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %6, i8 0, i64 25, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !90 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !86
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %7, i8 0, i64 36, i1 false)
  store i32 4, ptr %8, align 4, !tbaa !89
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %9, i8 0, i64 25, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv to i64), i64 0) #13
  invoke void @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2) #13
          to label %20 unwind label %10

10:                                               ; preds = %4
  %11 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %12 = extractvalue { ptr, i32 } %11, 1
  %13 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = extractvalue { ptr, i32 } %11, 0
  %17 = call ptr @__cxa_begin_catch(ptr %16) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  invoke void @__cxa_rethrow() #15
          to label %26 unwind label %18

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %23

20:                                               ; preds = %4
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void

21:                                               ; preds = %18, %10
  %22 = phi { ptr, i32 } [ %11, %10 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  resume { ptr, i32 } %22

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #17
  unreachable

26:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0) #0 align 2 !prof !92 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = load ptr, ptr %3, align 8, !tbaa !84
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
  %9 = load ptr, ptr %2, align 8, !tbaa !86
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = load ptr, ptr %9, align 8, !tbaa !84
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #13
  %15 = load ptr, ptr %2, align 8, !tbaa !86
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !95
  %18 = load ptr, ptr %15, align 8, !tbaa !84
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17) #13
  %21 = load ptr, ptr %2, align 8, !tbaa !86
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = load ptr, ptr %21, align 8, !tbaa !84
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %23) #13
  %27 = load ptr, ptr %2, align 8, !tbaa !86
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !97
  %30 = load ptr, ptr %27, align 8, !tbaa !84
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #13
  %33 = load ptr, ptr %2, align 8, !tbaa !86
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !98
  %36 = load ptr, ptr %33, align 8, !tbaa !84
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %35) #13
  %39 = load ptr, ptr %2, align 8, !tbaa !86
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = load ptr, ptr %39, align 8, !tbaa !84
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41) #13
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  store i32 4, ptr %45, align 4, !tbaa !89
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  store i32 0, ptr %46, align 8, !tbaa !100
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 11
  store i8 0, ptr %47, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #3 comdat align 2 !prof !91 {
  store ptr %1, ptr %0, align 8, !tbaa !102
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !104
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !104
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %4 = alloca %"class.xercesc_2_7::XMLURL", align 8
  tail call void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
  tail call void @_ZN11xercesc_2_76XMLURL5parseEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %2) #13
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
  %6 = icmp ne ptr %1, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = load i16, ptr %1, align 2, !tbaa !105
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  call void @_ZN11xercesc_2_76XMLURLC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %4, ptr noundef nonnull %1, ptr noundef %13) #13
  %14 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %4, i1 noundef zeroext false) #13
          to label %15 unwind label %21

15:                                               ; preds = %11
  br i1 %14, label %25, label %16

16:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
          to label %17 unwind label %21

17:                                               ; preds = %16
  %18 = call ptr @__cxa_allocate_exception(i64 48) #14
  %19 = load ptr, ptr %12, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 509, i32 noundef 107, ptr noundef %19) #13
          to label %20 unwind label %23

20:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %29 unwind label %21

21:                                               ; preds = %20, %16, %11
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %26

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %18) #14
  br label %26

25:                                               ; preds = %15
  call void @_ZN11xercesc_2_76XMLURLD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %4) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #14
  br label %28

26:                                               ; preds = %23, %21
  %27 = phi { ptr, i32 } [ %22, %21 ], [ %24, %23 ]
  call void @_ZN11xercesc_2_76XMLURLD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %4) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #14
  resume { ptr, i32 } %27

28:                                               ; preds = %8, %25, %3
  ret void

29:                                               ; preds = %20
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !91 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !104
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !104
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !84
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !107
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(81) %11) #13
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2EPKtPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  store ptr %3, ptr %7, align 8, !tbaa !86
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %8, i8 0, i64 36, i1 false)
  store i32 4, ptr %9, align 4, !tbaa !89
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %10, i8 0, i64 25, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv to i64), i64 0) #13
  %11 = load ptr, ptr %7, align 8, !tbaa !86
  %12 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %11) #13
          to label %13 unwind label %15

13:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %14 = load ptr, ptr %7, align 8, !tbaa !86
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %12, ptr noundef %14) #13
  invoke void @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %12) #13
          to label %32 unwind label %19

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = extractvalue { ptr, i32 } %16, 0
  %18 = extractvalue { ptr, i32 } %16, 1
  br label %36

19:                                               ; preds = %13
  %20 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  %23 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = call ptr @__cxa_begin_catch(ptr %21) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  invoke void @__cxa_rethrow() #15
          to label %44 unwind label %27

27:                                               ; preds = %25
  %28 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %29 unwind label %41

29:                                               ; preds = %27
  %30 = extractvalue { ptr, i32 } %28, 1
  %31 = extractvalue { ptr, i32 } %28, 0
  br label %33

32:                                               ; preds = %13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void

33:                                               ; preds = %29, %19
  %34 = phi i32 [ %30, %29 ], [ %22, %19 ]
  %35 = phi ptr [ %31, %29 ], [ %21, %19 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %36

36:                                               ; preds = %33, %15
  %37 = phi i32 [ %34, %33 ], [ %18, %15 ]
  %38 = phi ptr [ %35, %33 ], [ %17, %15 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  %39 = insertvalue { ptr, i32 } poison, ptr %38, 0
  %40 = insertvalue { ptr, i32 } %39, i32 %37, 1
  resume { ptr, i32 } %40

41:                                               ; preds = %27
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #17
  unreachable

44:                                               ; preds = %25
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !108 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !109
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !112 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2ERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  store ptr %7, ptr %5, align 8, !tbaa !86
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %8, i8 0, i64 36, i1 false)
  store i32 4, ptr %9, align 4, !tbaa !89
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %10, i8 0, i64 25, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv to i64), i64 0) #13
  invoke void @_ZN11xercesc_2_76XMLURL6setURLERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef %2) #13
          to label %21 unwind label %11

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %13 = extractvalue { ptr, i32 } %12, 1
  %14 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = extractvalue { ptr, i32 } %12, 0
  %18 = call ptr @__cxa_begin_catch(ptr %17) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  invoke void @__cxa_rethrow() #15
          to label %27 unwind label %19

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %22 unwind label %24

21:                                               ; preds = %3
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void

22:                                               ; preds = %19, %11
  %23 = phi { ptr, i32 } [ %12, %11 ], [ %20, %19 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  resume { ptr, i32 } %23

24:                                               ; preds = %19
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #17
  unreachable

27:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL6setURLERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !91 {
  tail call void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
  tail call void @_ZN11xercesc_2_76XMLURL5parseEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %2) #13
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, i1 noundef zeroext true) #13
  br label %7

7:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2ERKS0_PKc(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  store ptr %8, ptr %6, align 8, !tbaa !86
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %9, i8 0, i64 36, i1 false)
  store i32 4, ptr %10, align 4, !tbaa !89
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %11, i8 0, i64 25, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv to i64), i64 0) #13
  %12 = load ptr, ptr %6, align 8, !tbaa !86
  %13 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %12) #13
          to label %14 unwind label %16

14:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %15 = load ptr, ptr %6, align 8, !tbaa !86
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %13, ptr noundef %15) #13
  invoke void @_ZN11xercesc_2_76XMLURL6setURLERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef %13) #13
          to label %33 unwind label %20

16:                                               ; preds = %3
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = extractvalue { ptr, i32 } %17, 0
  %19 = extractvalue { ptr, i32 } %17, 1
  br label %37

20:                                               ; preds = %14
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = call ptr @__cxa_begin_catch(ptr %22) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  invoke void @__cxa_rethrow() #15
          to label %45 unwind label %28

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %30 unwind label %42

30:                                               ; preds = %28
  %31 = extractvalue { ptr, i32 } %29, 1
  %32 = extractvalue { ptr, i32 } %29, 0
  br label %34

33:                                               ; preds = %14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void

34:                                               ; preds = %30, %20
  %35 = phi i32 [ %31, %30 ], [ %23, %20 ]
  %36 = phi ptr [ %32, %30 ], [ %22, %20 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %37

37:                                               ; preds = %34, %16
  %38 = phi i32 [ %35, %34 ], [ %19, %16 ]
  %39 = phi ptr [ %36, %34 ], [ %18, %16 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %40 = insertvalue { ptr, i32 } poison, ptr %39, 0
  %41 = insertvalue { ptr, i32 } %40, i32 %38, 1
  resume { ptr, i32 } %41

42:                                               ; preds = %28
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #17
  unreachable

45:                                               ; preds = %26
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !86
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, i8 0, i64 36, i1 false)
  store i32 4, ptr %7, align 4, !tbaa !89
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %8, i8 0, i64 25, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv to i64), i64 0) #13
  invoke void @_ZN11xercesc_2_76XMLURL6setURLEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) #13
          to label %19 unwind label %9

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %11 = extractvalue { ptr, i32 } %10, 1
  %12 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = extractvalue { ptr, i32 } %10, 0
  %16 = call ptr @__cxa_begin_catch(ptr %15) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  invoke void @__cxa_rethrow() #15
          to label %25 unwind label %17

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %22

19:                                               ; preds = %3
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void

20:                                               ; preds = %17, %9
  %21 = phi { ptr, i32 } [ %10, %9 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  resume { ptr, i32 } %21

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #17
  unreachable

25:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL6setURLEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !70 {
  tail call void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
  tail call void @_ZN11xercesc_2_76XMLURL5parseEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !86
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %7, i8 0, i64 36, i1 false)
  store i32 4, ptr %8, align 4, !tbaa !89
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %9, i8 0, i64 25, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv to i64), i64 0) #13
  %10 = load ptr, ptr %6, align 8, !tbaa !86
  %11 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #13
          to label %12 unwind label %14

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %13 = load ptr, ptr %6, align 8, !tbaa !86
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %11, ptr noundef %13) #13
  invoke void @_ZN11xercesc_2_76XMLURL6setURLEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %11) #13
          to label %31 unwind label %18

14:                                               ; preds = %3
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  br label %35

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = extractvalue { ptr, i32 } %19, 1
  %22 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = call ptr @__cxa_begin_catch(ptr %20) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  invoke void @__cxa_rethrow() #15
          to label %43 unwind label %26

26:                                               ; preds = %24
  %27 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %28 unwind label %40

28:                                               ; preds = %26
  %29 = extractvalue { ptr, i32 } %27, 1
  %30 = extractvalue { ptr, i32 } %27, 0
  br label %32

31:                                               ; preds = %12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret void

32:                                               ; preds = %28, %18
  %33 = phi i32 [ %29, %28 ], [ %21, %18 ]
  %34 = phi ptr [ %30, %28 ], [ %20, %18 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %35

35:                                               ; preds = %32, %14
  %36 = phi i32 [ %33, %32 ], [ %17, %14 ]
  %37 = phi ptr [ %34, %32 ], [ %16, %14 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  %38 = insertvalue { ptr, i32 } poison, ptr %37, 0
  %39 = insertvalue { ptr, i32 } %38, i32 %36, 1
  resume { ptr, i32 } %39

40:                                               ; preds = %26
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %24
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  store ptr %6, ptr %4, align 8, !tbaa !86
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %13 = load <2 x i32>, ptr %12, align 8, !tbaa !113
  store <2 x i32> %13, ptr %11, align 8, !tbaa !113
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 11
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %18 = load i8, ptr %17, align 8, !tbaa !101, !range !114, !noundef !107
  store i8 %18, ptr %16, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv to i64), i64 0) #13
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = load ptr, ptr %4, align 8, !tbaa !86
  %22 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %20, ptr noundef %21) #13
          to label %23 unwind label %55

23:                                               ; preds = %2
  store ptr %22, ptr %7, align 8, !tbaa !93
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !94
  %26 = load ptr, ptr %4, align 8, !tbaa !86
  %27 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %25, ptr noundef %26) #13
          to label %28 unwind label %55

28:                                               ; preds = %23
  store ptr %27, ptr %8, align 8, !tbaa !94
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  %31 = load ptr, ptr %4, align 8, !tbaa !86
  %32 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %30, ptr noundef %31) #13
          to label %33 unwind label %55

33:                                               ; preds = %28
  store ptr %32, ptr %9, align 8, !tbaa !95
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !96
  %36 = load ptr, ptr %4, align 8, !tbaa !86
  %37 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %35, ptr noundef %36) #13
          to label %38 unwind label %55

38:                                               ; preds = %33
  store ptr %37, ptr %10, align 8, !tbaa !96
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !97
  %41 = load ptr, ptr %4, align 8, !tbaa !86
  %42 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %40, ptr noundef %41) #13
          to label %43 unwind label %55

43:                                               ; preds = %38
  store ptr %42, ptr %14, align 8, !tbaa !97
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !98
  %46 = load ptr, ptr %4, align 8, !tbaa !86
  %47 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %45, ptr noundef %46) #13
          to label %48 unwind label %55

48:                                               ; preds = %43
  store ptr %47, ptr %15, align 8, !tbaa !98
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !99
  %51 = load ptr, ptr %4, align 8, !tbaa !86
  %52 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %50, ptr noundef %51) #13
          to label %53 unwind label %55

53:                                               ; preds = %48
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 10
  store ptr %52, ptr %54, align 8, !tbaa !99
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void

55:                                               ; preds = %48, %43, %38, %33, %28, %23, %2
  %56 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %57 = extractvalue { ptr, i32 } %56, 1
  %58 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = extractvalue { ptr, i32 } %56, 0
  %62 = call ptr @__cxa_begin_catch(ptr %61) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  invoke void @__cxa_rethrow() #15
          to label %70 unwind label %63

63:                                               ; preds = %60
  %64 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %65 unwind label %67

65:                                               ; preds = %63, %55
  %66 = phi { ptr, i32 } [ %56, %55 ], [ %64, %63 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  resume { ptr, i32 } %66

67:                                               ; preds = %63
  %68 = landingpad { ptr, i32 }
          catch ptr null
  %69 = extractvalue { ptr, i32 } %68, 0
  call void @__clang_call_terminate(ptr %69) #17
  unreachable

70:                                               ; preds = %60
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !115 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !116

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !84
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLD0Ev(ptr noundef nonnull align 8 dereferenceable(81) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_76XMLURLD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(81) ptr @_ZN11xercesc_2_76XMLURLaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(81) %0, ptr noundef nonnull readonly align 8 dereferenceable(81) %1) local_unnamed_addr #0 align 2 !prof !91 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %48, label %4

4:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !86
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  %10 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %6) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !93
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !94
  %14 = load ptr, ptr %7, align 8, !tbaa !86
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %14) #13
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !94
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !95
  %19 = load ptr, ptr %7, align 8, !tbaa !86
  %20 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %19) #13
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  store ptr %20, ptr %21, align 8, !tbaa !95
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = load ptr, ptr %7, align 8, !tbaa !86
  %25 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %24) #13
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !96
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 6
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  %29 = load <2 x i32>, ptr %27, align 8, !tbaa !113
  store <2 x i32> %29, ptr %28, align 8, !tbaa !113
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !97
  %32 = load ptr, ptr %7, align 8, !tbaa !86
  %33 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %31, ptr noundef %32) #13
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  store ptr %33, ptr %34, align 8, !tbaa !97
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 9
  %36 = load ptr, ptr %35, align 8, !tbaa !98
  %37 = load ptr, ptr %7, align 8, !tbaa !86
  %38 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %36, ptr noundef %37) #13
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  store ptr %38, ptr %39, align 8, !tbaa !98
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !99
  %42 = load ptr, ptr %7, align 8, !tbaa !86
  %43 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %41, ptr noundef %42) #13
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 10
  store ptr %43, ptr %44, align 8, !tbaa !99
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 11
  %46 = load i8, ptr %45, align 8, !tbaa !101, !range !114, !noundef !107
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 11
  store i8 %46, ptr %47, align 8, !tbaa !101
  br label %48

48:                                               ; preds = %2, %4
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76XMLURLeqERKS0_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %1) local_unnamed_addr #0 align 2 !prof !91 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_76XMLURL10getURLTextEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
  %4 = tail call noundef ptr @_ZNK11xercesc_2_76XMLURL10getURLTextEv(ptr noundef nonnull align 8 dereferenceable(81) %1) #13
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %3, ptr noundef %4) #13
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !117 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !118

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !105
  %8 = load i16, ptr %1, align 2, !tbaa !105
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !119

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !120

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !105
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !121

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !122

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !105
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !123

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !124

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !105
  %28 = load i16, ptr %26, align 2, !tbaa !105
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !125, !llvm.loop !126

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_76XMLURL10getURLTextEv(ptr noundef nonnull align 8 dereferenceable(81) %0) local_unnamed_addr #0 comdat align 2 !prof !91 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !99
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_76XMLURL13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
  %6 = load ptr, ptr %2, align 8, !tbaa !99
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %3, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_76XMLURL10getPortNumEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %0) local_unnamed_addr #7 align 2 !prof !91 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !100
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !89
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds [3 x %"struct.xercesc_2_7::ProtoEntry"], ptr @_ZN11xercesc_2_7L10gProtoListE, i64 0, i64 %10, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !127
  br label %13

13:                                               ; preds = %1, %5, %9
  %14 = phi i32 [ %12, %9 ], [ 0, %5 ], [ %3, %1 ]
  ret i32 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_76XMLURL15getProtocolNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !89
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 471, i32 noundef 103, ptr noundef %8) #13
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #14
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = zext i32 %3 to i64
  %14 = getelementptr inbounds [3 x %"struct.xercesc_2_7::ProtoEntry"], ptr @_ZN11xercesc_2_7L10gProtoListE, i64 0, i64 %13, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  ret ptr %15
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL5parseEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = load i16, ptr %1, align 2, !tbaa !105
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %13, !prof !128

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 915, i32 noundef 103, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  br label %345

13:                                               ; preds = %2
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11isURIStringEPKt(ptr noundef nonnull %1) #13
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 11
  store i8 %16, ptr %17, align 8
  %18 = load i16, ptr %1, align 2, !tbaa !105
  %19 = and i16 %18, -33
  %20 = add i16 %19, -65
  %21 = icmp ult i16 %20, 26
  br i1 %21, label %22, label %36, !prof !129

22:                                               ; preds = %13
  %23 = getelementptr inbounds i16, ptr %1, i64 1
  %24 = load i16, ptr %23, align 2, !tbaa !105
  %25 = icmp eq i16 %24, 58
  br i1 %25, label %26, label %36, !prof !128

26:                                               ; preds = %22
  %27 = getelementptr inbounds i16, ptr %1, i64 2
  %28 = load i16, ptr %27, align 2, !tbaa !105
  switch i16 %28, label %36 [
    i16 47, label %29
    i16 92, label %29
  ]

29:                                               ; preds = %26, %26
  %30 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull @.str, i32 noundef 936, i32 noundef 103, ptr noundef %32) #13
          to label %33 unwind label %34

33:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

34:                                               ; preds = %29
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %30) #14
  br label %345

36:                                               ; preds = %13, %26, %22
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !86
  %39 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %38) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %40 = load ptr, ptr %37, align 8, !tbaa !86
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %39, ptr noundef %40) #13
  %41 = load i16, ptr %39, align 2, !tbaa !105
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %56, label %43, !prof !130

43:                                               ; preds = %36, %49
  %44 = phi i16 [ %51, %49 ], [ %41, %36 ]
  %45 = phi ptr [ %50, %49 ], [ %39, %36 ]
  %46 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %44) #13
  br i1 %46, label %49, label %53, !prof !128

47:                                               ; preds = %59
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %343

49:                                               ; preds = %43
  %50 = getelementptr inbounds i16, ptr %45, i64 1
  %51 = load i16, ptr %50, align 2, !tbaa !105
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %56, label %43, !prof !131, !llvm.loop !132

53:                                               ; preds = %43
  %54 = load i16, ptr %45, align 2, !tbaa !105
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %56, label %62, !prof !133

56:                                               ; preds = %49, %36, %53
  %57 = call ptr @__cxa_allocate_exception(i64 48) #14
  %58 = load ptr, ptr %37, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef nonnull @.str, i32 noundef 961, i32 noundef 103, ptr noundef %58) #13
          to label %59 unwind label %60

59:                                               ; preds = %56
  invoke void @__cxa_throw(ptr nonnull %57, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %347 unwind label %47

60:                                               ; preds = %56
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %57) #14
  br label %343

62:                                               ; preds = %53
  %63 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %45, ptr noundef nonnull @_ZN11xercesc_2_7L8gListOneE) #13
          to label %64 unwind label %77

64:                                               ; preds = %62
  %65 = icmp eq ptr %63, null
  br i1 %65, label %85, label %66, !prof !128

66:                                               ; preds = %64
  %67 = load i16, ptr %63, align 2, !tbaa !105
  %68 = icmp eq i16 %67, 58
  br i1 %68, label %69, label %85, !prof !81

69:                                               ; preds = %66
  store i16 0, ptr %63, align 2, !tbaa !105
  %70 = invoke noundef i32 @_ZN11xercesc_2_76XMLURL12lookupByNameEPKt(ptr noundef nonnull %45) #13
          to label %71 unwind label %79

71:                                               ; preds = %69
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  store i32 %70, ptr %72, align 4, !tbaa !89
  %73 = icmp eq i32 %70, 4
  br i1 %73, label %74, label %83, !prof !128

74:                                               ; preds = %71
  %75 = call ptr @__cxa_allocate_exception(i64 48) #14
  %76 = load ptr, ptr %37, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %75, ptr noundef nonnull @.str, i32 noundef 990, i32 noundef 101, ptr noundef nonnull %45, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %76) #13
          to label %214 unwind label %81

77:                                               ; preds = %62
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %343

79:                                               ; preds = %214, %337, %330, %307, %304, %294, %291, %286, %279, %256, %249, %243, %236, %232, %223, %205, %200, %195, %188, %183, %175, %171, %164, %160, %139, %132, %110, %103, %97, %69
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %343

81:                                               ; preds = %74
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %75) #14
  br label %343

83:                                               ; preds = %71
  %84 = getelementptr inbounds i16, ptr %63, i64 1
  br label %85

85:                                               ; preds = %66, %83, %64
  %86 = phi ptr [ %84, %83 ], [ %45, %66 ], [ %45, %64 ]
  %87 = load i16, ptr %86, align 2, !tbaa !105
  %88 = icmp eq i16 %87, 47
  br i1 %88, label %89, label %146, !prof !81

89:                                               ; preds = %85
  %90 = getelementptr inbounds i16, ptr %86, i64 1
  %91 = load i16, ptr %90, align 2, !tbaa !105
  %92 = icmp eq i16 %91, 47
  br i1 %92, label %93, label %146, !prof !81

93:                                               ; preds = %89
  %94 = getelementptr inbounds i16, ptr %86, i64 2
  %95 = load i16, ptr %94, align 2, !tbaa !105
  %96 = icmp eq i16 %95, 0
  br i1 %96, label %155, label %97, !prof !128

97:                                               ; preds = %93
  %98 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %94, ptr noundef nonnull @_ZN11xercesc_2_7L9gListFourE) #13
          to label %99 unwind label %79

99:                                               ; preds = %97
  %100 = icmp eq ptr %98, null
  br i1 %100, label %132, label %101, !prof !128

101:                                              ; preds = %99
  %102 = icmp eq ptr %98, %94
  br i1 %102, label %155, label %103, !prof !81

103:                                              ; preds = %101
  %104 = load ptr, ptr %37, align 8, !tbaa !86
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !94
  %107 = load ptr, ptr %104, align 8, !tbaa !84
  %108 = getelementptr inbounds ptr, ptr %107, i64 3
  %109 = load ptr, ptr %108, align 8
  invoke void %109(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef %106) #13
          to label %110 unwind label %79

110:                                              ; preds = %103
  %111 = load ptr, ptr %37, align 8, !tbaa !86
  %112 = ptrtoint ptr %98 to i64
  %113 = ptrtoint ptr %94 to i64
  %114 = sub i64 %112, %113
  %115 = add i64 %114, 2
  %116 = load ptr, ptr %111, align 8, !tbaa !84
  %117 = getelementptr inbounds ptr, ptr %116, i64 2
  %118 = load ptr, ptr %117, align 8
  %119 = invoke noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(8) %111, i64 noundef %115) #13
          to label %120 unwind label %79

120:                                              ; preds = %110
  store ptr %119, ptr %105, align 8, !tbaa !94
  %121 = icmp ult ptr %94, %98
  br i1 %121, label %122, label %129

122:                                              ; preds = %120, %122
  %123 = phi ptr [ %127, %122 ], [ %119, %120 ]
  %124 = phi ptr [ %125, %122 ], [ %94, %120 ]
  %125 = getelementptr inbounds i16, ptr %124, i64 1
  %126 = load i16, ptr %124, align 2, !tbaa !105
  %127 = getelementptr inbounds i16, ptr %123, i64 1
  store i16 %126, ptr %123, align 2, !tbaa !105
  %128 = icmp ult ptr %125, %98
  br i1 %128, label %122, label %129, !llvm.loop !134

129:                                              ; preds = %122, %120
  %130 = phi ptr [ %94, %120 ], [ %125, %122 ]
  %131 = phi ptr [ %119, %120 ], [ %127, %122 ]
  store i16 0, ptr %131, align 2, !tbaa !105
  br label %155

132:                                              ; preds = %99
  %133 = load ptr, ptr %37, align 8, !tbaa !86
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !94
  %136 = load ptr, ptr %133, align 8, !tbaa !84
  %137 = getelementptr inbounds ptr, ptr %136, i64 3
  %138 = load ptr, ptr %137, align 8
  invoke void %138(ptr noundef nonnull align 8 dereferenceable(8) %133, ptr noundef %135) #13
          to label %139 unwind label %79

139:                                              ; preds = %132
  %140 = load ptr, ptr %37, align 8, !tbaa !86
  %141 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %94, ptr noundef %140) #13
          to label %142 unwind label %79

142:                                              ; preds = %139
  store ptr %141, ptr %134, align 8, !tbaa !94
  %143 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %141) #13
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i16, ptr %94, i64 %144
  br label %155

146:                                              ; preds = %89, %85
  %147 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %148 = load i32, ptr %147, align 4, !tbaa !89
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = call ptr @__cxa_allocate_exception(i64 48) #14
  %152 = load ptr, ptr %37, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %151, ptr noundef nonnull @.str, i32 noundef 1059, i32 noundef 104, ptr noundef %152) #13
          to label %214 unwind label %153

153:                                              ; preds = %150
  %154 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %151) #14
  br label %343

155:                                              ; preds = %146, %93, %101, %129, %142
  %156 = phi ptr [ %130, %129 ], [ %94, %101 ], [ %145, %142 ], [ %94, %93 ], [ %86, %146 ]
  %157 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !94
  %159 = icmp eq ptr %158, null
  br i1 %159, label %229, label %160, !prof !81

160:                                              ; preds = %155
  %161 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %158, ptr noundef nonnull @_ZN11xercesc_2_7L8gListTwoE) #13
          to label %162 unwind label %79

162:                                              ; preds = %160
  %163 = icmp eq ptr %161, null
  br i1 %163, label %200, label %164

164:                                              ; preds = %162
  store i16 0, ptr %161, align 2, !tbaa !105
  %165 = load ptr, ptr %37, align 8, !tbaa !86
  %166 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  %167 = load ptr, ptr %166, align 8, !tbaa !98
  %168 = load ptr, ptr %165, align 8, !tbaa !84
  %169 = getelementptr inbounds ptr, ptr %168, i64 3
  %170 = load ptr, ptr %169, align 8
  invoke void %170(ptr noundef nonnull align 8 dereferenceable(8) %165, ptr noundef %167) #13
          to label %171 unwind label %79

171:                                              ; preds = %164
  %172 = load ptr, ptr %157, align 8, !tbaa !94
  %173 = load ptr, ptr %37, align 8, !tbaa !86
  %174 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %172, ptr noundef %173) #13
          to label %175 unwind label %79

175:                                              ; preds = %171
  store ptr %174, ptr %166, align 8, !tbaa !98
  %176 = getelementptr inbounds i16, ptr %161, i64 1
  %177 = load ptr, ptr %157, align 8, !tbaa !94
  %178 = ptrtoint ptr %176 to i64
  %179 = ptrtoint ptr %177 to i64
  %180 = sub i64 %178, %179
  %181 = lshr exact i64 %180, 1
  %182 = trunc i64 %181 to i32
  invoke void @_ZN11xercesc_2_79XMLString3cutEPtj(ptr noundef %177, i32 noundef %182) #13
          to label %183 unwind label %79

183:                                              ; preds = %175
  %184 = load ptr, ptr %166, align 8, !tbaa !98
  %185 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef %184, ptr noundef nonnull @_ZN11xercesc_2_7L10gListThreeE) #13
          to label %186 unwind label %79

186:                                              ; preds = %183
  %187 = icmp eq ptr %185, null
  br i1 %187, label %200, label %188

188:                                              ; preds = %186
  store i16 0, ptr %185, align 2, !tbaa !105
  %189 = load ptr, ptr %37, align 8, !tbaa !86
  %190 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  %191 = load ptr, ptr %190, align 8, !tbaa !95
  %192 = load ptr, ptr %189, align 8, !tbaa !84
  %193 = getelementptr inbounds ptr, ptr %192, i64 3
  %194 = load ptr, ptr %193, align 8
  invoke void %194(ptr noundef nonnull align 8 dereferenceable(8) %189, ptr noundef %191) #13
          to label %195 unwind label %79

195:                                              ; preds = %188
  %196 = getelementptr inbounds i16, ptr %185, i64 1
  %197 = load ptr, ptr %37, align 8, !tbaa !86
  %198 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %196, ptr noundef %197) #13
          to label %199 unwind label %79

199:                                              ; preds = %195
  store ptr %198, ptr %190, align 8, !tbaa !95
  br label %200

200:                                              ; preds = %186, %199, %162
  %201 = load ptr, ptr %157, align 8, !tbaa !94
  %202 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef %201, ptr noundef nonnull @_ZN11xercesc_2_7L10gListThreeE) #13
          to label %203 unwind label %79

203:                                              ; preds = %200
  %204 = icmp eq ptr %202, null
  br i1 %204, label %219, label %205

205:                                              ; preds = %203
  store i16 0, ptr %202, align 2, !tbaa !105
  %206 = getelementptr inbounds i16, ptr %202, i64 1
  %207 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  %208 = load ptr, ptr %37, align 8, !tbaa !86
  %209 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString9textToBinEPKtRjPNS_13MemoryManagerE(ptr noundef nonnull %206, ptr noundef nonnull align 4 dereferenceable(4) %207, ptr noundef %208) #13
          to label %210 unwind label %79

210:                                              ; preds = %205
  br i1 %209, label %219, label %211

211:                                              ; preds = %210
  %212 = call ptr @__cxa_allocate_exception(i64 48) #14
  %213 = load ptr, ptr %37, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %212, ptr noundef nonnull @.str, i32 noundef 1114, i32 noundef 109, ptr noundef %213) #13
          to label %214 unwind label %217

214:                                              ; preds = %74, %211, %150
  %215 = phi ptr [ %151, %150 ], [ %212, %211 ], [ %75, %74 ]
  invoke void @__cxa_throw(ptr nonnull %215, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %216 unwind label %79

216:                                              ; preds = %214
  unreachable

217:                                              ; preds = %211
  %218 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %212) #14
  br label %343

219:                                              ; preds = %210, %203
  %220 = load ptr, ptr %157, align 8, !tbaa !94
  %221 = load i16, ptr %220, align 2, !tbaa !105
  %222 = icmp eq i16 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %219
  %224 = load ptr, ptr %37, align 8, !tbaa !86
  %225 = load ptr, ptr %224, align 8, !tbaa !84
  %226 = getelementptr inbounds ptr, ptr %225, i64 3
  %227 = load ptr, ptr %226, align 8
  invoke void %227(ptr noundef nonnull align 8 dereferenceable(8) %224, ptr noundef nonnull %220) #13
          to label %228 unwind label %79

228:                                              ; preds = %223
  store ptr null, ptr %157, align 8, !tbaa !94
  br label %229

229:                                              ; preds = %219, %228, %155
  %230 = load i16, ptr %156, align 2, !tbaa !105
  %231 = icmp eq i16 %230, 0
  br i1 %231, label %342, label %232, !prof !128

232:                                              ; preds = %229
  %233 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %156, ptr noundef nonnull @_ZN11xercesc_2_7L9gListFiveE) #13
          to label %234 unwind label %79

234:                                              ; preds = %232
  %235 = icmp eq ptr %233, null
  br i1 %235, label %236, label %247, !prof !81

236:                                              ; preds = %234
  %237 = load ptr, ptr %37, align 8, !tbaa !86
  %238 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %239 = load ptr, ptr %238, align 8, !tbaa !96
  %240 = load ptr, ptr %237, align 8, !tbaa !84
  %241 = getelementptr inbounds ptr, ptr %240, i64 3
  %242 = load ptr, ptr %241, align 8
  invoke void %242(ptr noundef nonnull align 8 dereferenceable(8) %237, ptr noundef %239) #13
          to label %243 unwind label %79

243:                                              ; preds = %236
  %244 = load ptr, ptr %37, align 8, !tbaa !86
  %245 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %156, ptr noundef %244) #13
          to label %246 unwind label %79

246:                                              ; preds = %243
  store ptr %245, ptr %238, align 8, !tbaa !96
  br label %342

247:                                              ; preds = %234
  %248 = icmp ugt ptr %233, %156
  br i1 %248, label %249, label %275

249:                                              ; preds = %247
  %250 = load ptr, ptr %37, align 8, !tbaa !86
  %251 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %252 = load ptr, ptr %251, align 8, !tbaa !96
  %253 = load ptr, ptr %250, align 8, !tbaa !84
  %254 = getelementptr inbounds ptr, ptr %253, i64 3
  %255 = load ptr, ptr %254, align 8
  invoke void %255(ptr noundef nonnull align 8 dereferenceable(8) %250, ptr noundef %252) #13
          to label %256 unwind label %79

256:                                              ; preds = %249
  %257 = load ptr, ptr %37, align 8, !tbaa !86
  %258 = ptrtoint ptr %233 to i64
  %259 = ptrtoint ptr %156 to i64
  %260 = sub i64 %258, %259
  %261 = add i64 %260, 2
  %262 = load ptr, ptr %257, align 8, !tbaa !84
  %263 = getelementptr inbounds ptr, ptr %262, i64 2
  %264 = load ptr, ptr %263, align 8
  %265 = invoke noundef ptr %264(ptr noundef nonnull align 8 dereferenceable(8) %257, i64 noundef %261) #13
          to label %266 unwind label %79

266:                                              ; preds = %256
  store ptr %265, ptr %251, align 8, !tbaa !96
  br label %267

267:                                              ; preds = %266, %267
  %268 = phi ptr [ %272, %267 ], [ %265, %266 ]
  %269 = phi ptr [ %270, %267 ], [ %156, %266 ]
  %270 = getelementptr inbounds i16, ptr %269, i64 1
  %271 = load i16, ptr %269, align 2, !tbaa !105
  %272 = getelementptr inbounds i16, ptr %268, i64 1
  store i16 %271, ptr %268, align 2, !tbaa !105
  %273 = icmp ult ptr %270, %233
  br i1 %273, label %267, label %274, !llvm.loop !135

274:                                              ; preds = %267
  store i16 0, ptr %272, align 2, !tbaa !105
  br label %275

275:                                              ; preds = %274, %247
  %276 = phi ptr [ %270, %274 ], [ %156, %247 ]
  %277 = load i16, ptr %276, align 2, !tbaa !105
  %278 = icmp eq i16 %277, 35
  br i1 %278, label %279, label %291

279:                                              ; preds = %275
  %280 = load ptr, ptr %37, align 8, !tbaa !86
  %281 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !93
  %283 = load ptr, ptr %280, align 8, !tbaa !84
  %284 = getelementptr inbounds ptr, ptr %283, i64 3
  %285 = load ptr, ptr %284, align 8
  invoke void %285(ptr noundef nonnull align 8 dereferenceable(8) %280, ptr noundef %282) #13
          to label %286 unwind label %79

286:                                              ; preds = %279
  %287 = getelementptr inbounds i16, ptr %276, i64 1
  %288 = load ptr, ptr %37, align 8, !tbaa !86
  %289 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %287, ptr noundef %288) #13
          to label %290 unwind label %79

290:                                              ; preds = %286
  store ptr %289, ptr %281, align 8, !tbaa !93
  br label %342

291:                                              ; preds = %275
  %292 = getelementptr inbounds i16, ptr %276, i64 1
  %293 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %292, ptr noundef nonnull @_ZN11xercesc_2_7L8gListSixE) #13
          to label %294 unwind label %79

294:                                              ; preds = %291
  %295 = load ptr, ptr %37, align 8, !tbaa !86
  %296 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  %297 = load ptr, ptr %296, align 8, !tbaa !97
  %298 = load ptr, ptr %295, align 8, !tbaa !84
  %299 = getelementptr inbounds ptr, ptr %298, i64 3
  %300 = load ptr, ptr %299, align 8
  invoke void %300(ptr noundef nonnull align 8 dereferenceable(8) %295, ptr noundef %297) #13
          to label %301 unwind label %79

301:                                              ; preds = %294
  %302 = icmp eq ptr %293, null
  %303 = load ptr, ptr %37, align 8, !tbaa !86
  br i1 %302, label %304, label %307

304:                                              ; preds = %301
  %305 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %292, ptr noundef %303) #13
          to label %306 unwind label %79

306:                                              ; preds = %304
  store ptr %305, ptr %296, align 8, !tbaa !97
  br label %342

307:                                              ; preds = %301
  %308 = ptrtoint ptr %293 to i64
  %309 = ptrtoint ptr %292 to i64
  %310 = sub i64 %308, %309
  %311 = add i64 %310, 2
  %312 = load ptr, ptr %303, align 8, !tbaa !84
  %313 = getelementptr inbounds ptr, ptr %312, i64 2
  %314 = load ptr, ptr %313, align 8
  %315 = invoke noundef ptr %314(ptr noundef nonnull align 8 dereferenceable(8) %303, i64 noundef %311) #13
          to label %316 unwind label %79

316:                                              ; preds = %307
  store ptr %315, ptr %296, align 8, !tbaa !97
  %317 = icmp ult ptr %292, %293
  br i1 %317, label %318, label %325

318:                                              ; preds = %316, %318
  %319 = phi ptr [ %323, %318 ], [ %315, %316 ]
  %320 = phi ptr [ %321, %318 ], [ %292, %316 ]
  %321 = getelementptr inbounds i16, ptr %320, i64 1
  %322 = load i16, ptr %320, align 2, !tbaa !105
  %323 = getelementptr inbounds i16, ptr %319, i64 1
  store i16 %322, ptr %319, align 2, !tbaa !105
  %324 = icmp ult ptr %321, %293
  br i1 %324, label %318, label %325, !llvm.loop !136

325:                                              ; preds = %318, %316
  %326 = phi ptr [ %292, %316 ], [ %321, %318 ]
  %327 = phi ptr [ %315, %316 ], [ %323, %318 ]
  store i16 0, ptr %327, align 2, !tbaa !105
  %328 = load i16, ptr %326, align 2, !tbaa !105
  %329 = icmp eq i16 %328, 35
  br i1 %329, label %330, label %342

330:                                              ; preds = %325
  %331 = load ptr, ptr %37, align 8, !tbaa !86
  %332 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %333 = load ptr, ptr %332, align 8, !tbaa !93
  %334 = load ptr, ptr %331, align 8, !tbaa !84
  %335 = getelementptr inbounds ptr, ptr %334, i64 3
  %336 = load ptr, ptr %335, align 8
  invoke void %336(ptr noundef nonnull align 8 dereferenceable(8) %331, ptr noundef %333) #13
          to label %337 unwind label %79

337:                                              ; preds = %330
  %338 = getelementptr inbounds i16, ptr %326, i64 1
  %339 = load ptr, ptr %37, align 8, !tbaa !86
  %340 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %338, ptr noundef %339) #13
          to label %341 unwind label %79

341:                                              ; preds = %337
  store ptr %340, ptr %332, align 8, !tbaa !93
  br label %342

342:                                              ; preds = %325, %341, %229, %306, %290, %246
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret void

343:                                              ; preds = %77, %217, %153, %81, %79, %60, %47
  %344 = phi { ptr, i32 } [ %48, %47 ], [ %61, %60 ], [ %78, %77 ], [ %80, %79 ], [ %82, %81 ], [ %218, %217 ], [ %154, %153 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %345

345:                                              ; preds = %343, %34, %11
  %346 = phi { ptr, i32 } [ %35, %34 ], [ %344, %343 ], [ %12, %11 ]
  resume { ptr, i32 } %346

347:                                              ; preds = %59
  unreachable
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %0) local_unnamed_addr #8 align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !89
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %12, label %5, !prof !81

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i16, ptr %7, align 2, !tbaa !105
  %11 = icmp ne i16 %10, 47
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi i1 [ true, %1 ], [ true, %5 ], [ %11, %9 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !137 {
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %1) #13
  br i1 %4, label %5, label %13, !prof !138

5:                                                ; preds = %3
  br i1 %2, label %6, label %153, !prof !71

6:                                                ; preds = %5
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 811, i32 noundef 107, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !89
  %16 = icmp eq i32 %15, 4
  br i1 %16, label %17, label %153

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !94
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %62

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = icmp ne ptr %23, null
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = icmp eq ptr %26, null
  %28 = select i1 %24, i1 true, i1 %27
  br i1 %28, label %62, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  %33 = load ptr, ptr %32, align 8, !tbaa !98
  %34 = load ptr, ptr %31, align 8, !tbaa !84
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %33) #13
  store ptr null, ptr %32, align 8, !tbaa !98
  %37 = load ptr, ptr %30, align 8, !tbaa !86
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !95
  %40 = load ptr, ptr %37, align 8, !tbaa !84
  %41 = getelementptr inbounds ptr, ptr %40, i64 3
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef %39) #13
  store ptr null, ptr %38, align 8, !tbaa !95
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 6
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  %45 = load <2 x i32>, ptr %43, align 8, !tbaa !113
  store <2 x i32> %45, ptr %44, align 8, !tbaa !113
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !94
  %48 = load ptr, ptr %30, align 8, !tbaa !86
  %49 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %47, ptr noundef %48) #13
  store ptr %49, ptr %18, align 8, !tbaa !94
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 9
  %51 = load ptr, ptr %50, align 8, !tbaa !98
  %52 = load ptr, ptr %30, align 8, !tbaa !86
  %53 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %51, ptr noundef %52) #13
  store ptr %53, ptr %32, align 8, !tbaa !98
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !95
  %56 = load ptr, ptr %30, align 8, !tbaa !86
  %57 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %55, ptr noundef %56) #13
  store ptr %57, ptr %38, align 8, !tbaa !95
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !96
  %60 = load ptr, ptr %30, align 8, !tbaa !86
  %61 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %59, ptr noundef %60) #13
  store ptr %61, ptr %22, align 8, !tbaa !96
  br label %153

62:                                               ; preds = %21, %17
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 7
  %64 = load i32, ptr %63, align 4, !tbaa !89
  store i32 %64, ptr %14, align 4, !tbaa !89
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = icmp ne ptr %19, null
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = icmp eq ptr %69, null
  %71 = select i1 %67, i1 true, i1 %70
  br i1 %71, label %153, label %76

72:                                               ; preds = %62
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !94
  %75 = icmp eq ptr %74, null
  br i1 %75, label %110, label %76

76:                                               ; preds = %66, %72
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !86
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  %81 = load ptr, ptr %80, align 8, !tbaa !98
  %82 = load ptr, ptr %79, align 8, !tbaa !84
  %83 = getelementptr inbounds ptr, ptr %82, i64 3
  %84 = load ptr, ptr %83, align 8
  tail call void %84(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %81) #13
  store ptr null, ptr %80, align 8, !tbaa !98
  %85 = load ptr, ptr %78, align 8, !tbaa !86
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !95
  %88 = load ptr, ptr %85, align 8, !tbaa !84
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8
  tail call void %90(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %87) #13
  store ptr null, ptr %86, align 8, !tbaa !95
  %91 = load ptr, ptr %78, align 8, !tbaa !86
  %92 = load ptr, ptr %18, align 8, !tbaa !94
  %93 = load ptr, ptr %91, align 8, !tbaa !84
  %94 = getelementptr inbounds ptr, ptr %93, i64 3
  %95 = load ptr, ptr %94, align 8
  tail call void %95(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef %92) #13
  store ptr null, ptr %18, align 8, !tbaa !94
  %96 = load ptr, ptr %77, align 8, !tbaa !94
  %97 = load ptr, ptr %78, align 8, !tbaa !86
  %98 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %96, ptr noundef %97) #13
  store ptr %98, ptr %18, align 8, !tbaa !94
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !98
  %101 = load ptr, ptr %78, align 8, !tbaa !86
  %102 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %100, ptr noundef %101) #13
  store ptr %102, ptr %80, align 8, !tbaa !98
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !95
  %105 = load ptr, ptr %78, align 8, !tbaa !86
  %106 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %104, ptr noundef %105) #13
  store ptr %106, ptr %86, align 8, !tbaa !95
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 6
  %108 = load i32, ptr %107, align 8, !tbaa !100
  %109 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  store i32 %108, ptr %109, align 8, !tbaa !100
  br label %110

110:                                              ; preds = %76, %72
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %112 = load ptr, ptr %111, align 8, !tbaa !96
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = load i16, ptr %112, align 2, !tbaa !105
  %116 = icmp eq i16 %115, 47
  br i1 %116, label %153, label %117

117:                                              ; preds = %114, %110
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 5
  %119 = load ptr, ptr %118, align 8, !tbaa !96
  %120 = icmp eq ptr %119, null
  br i1 %120, label %130, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !86
  %124 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull %119, ptr noundef %112, ptr noundef %123) #13
  %125 = load ptr, ptr %122, align 8, !tbaa !86
  %126 = load ptr, ptr %111, align 8, !tbaa !96
  %127 = load ptr, ptr %125, align 8, !tbaa !84
  %128 = getelementptr inbounds ptr, ptr %127, i64 3
  %129 = load ptr, ptr %128, align 8
  tail call void %129(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef %126) #13
  store ptr %124, ptr %111, align 8, !tbaa !96
  br label %130

130:                                              ; preds = %121, %117
  br i1 %113, label %131, label %153

131:                                              ; preds = %130
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  %133 = load ptr, ptr %132, align 8, !tbaa !97
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %153

135:                                              ; preds = %131
  %136 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 8
  %137 = load ptr, ptr %136, align 8, !tbaa !97
  %138 = icmp eq ptr %137, null
  br i1 %138, label %153, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !86
  %142 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %137, ptr noundef %141) #13
  store ptr %142, ptr %132, align 8, !tbaa !97
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !93
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %139
  %147 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !93
  %149 = icmp eq ptr %148, null
  br i1 %149, label %153, label %150

150:                                              ; preds = %146
  %151 = load ptr, ptr %140, align 8, !tbaa !86
  %152 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %148, ptr noundef %151) #13
  store ptr %152, ptr %143, align 8, !tbaa !93
  br label %153

153:                                              ; preds = %13, %150, %114, %130, %135, %131, %146, %139, %66, %5, %29
  %154 = xor i1 %4, true
  ret i1 %154
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(81) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !137 {
  %5 = alloca %"class.xercesc_2_7::XMLURL", align 8
  tail call void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(81) %3) #13
  br i1 %6, label %7, label %26, !prof !138

7:                                                ; preds = %4
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
  %9 = icmp ne ptr %1, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %26, !prof !139

11:                                               ; preds = %7
  %12 = load i16, ptr %1, align 2, !tbaa !105
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %26, label %14, !prof !71

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #14
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  call void @_ZN11xercesc_2_76XMLURLC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %5, ptr noundef %16) #13
  %17 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(81) %5) #13
          to label %18 unwind label %22

18:                                               ; preds = %14
  br i1 %17, label %19, label %24, !prof !138

19:                                               ; preds = %18
  %20 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %5, i1 noundef zeroext false) #13
          to label %21 unwind label %22

21:                                               ; preds = %19
  br i1 %20, label %25, label %24, !prof !71

22:                                               ; preds = %19, %14
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_76XMLURLD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %5) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #14
  resume { ptr, i32 } %23

24:                                               ; preds = %18, %21
  call void @_ZN11xercesc_2_76XMLURLD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %5) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #14
  br label %26

25:                                               ; preds = %21
  call void @_ZN11xercesc_2_76XMLURLD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %5) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #14
  br label %26

26:                                               ; preds = %4, %24, %25, %7, %11
  %27 = phi i1 [ true, %25 ], [ true, %11 ], [ true, %7 ], [ false, %24 ], [ false, %4 ]
  ret i1 %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(81) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = load i16, ptr %0, align 2, !tbaa !105
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %252, label %6, !prof !128

6:                                                ; preds = %2
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11isURIStringEPKt(ptr noundef nonnull %0) #13
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 11
  store i8 %9, ptr %10, align 8
  %11 = load i16, ptr %0, align 2, !tbaa !105
  %12 = and i16 %11, -33
  %13 = add i16 %12, -65
  %14 = icmp ult i16 %13, 26
  br i1 %14, label %15, label %22, !prof !140

15:                                               ; preds = %6
  %16 = getelementptr inbounds i16, ptr %0, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !105
  %18 = icmp eq i16 %17, 58
  br i1 %18, label %19, label %22, !prof !71

19:                                               ; preds = %15
  %20 = getelementptr inbounds i16, ptr %0, i64 2
  %21 = load i16, ptr %20, align 2, !tbaa !105
  switch i16 %21, label %22 [
    i16 47, label %252
    i16 92, label %252
  ]

22:                                               ; preds = %6, %19, %15
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !86
  %25 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %0, ptr noundef %24) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %26 = load ptr, ptr %23, align 8, !tbaa !86
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %25, ptr noundef %26) #13
  %27 = load i16, ptr %25, align 2, !tbaa !105
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %250, label %29, !prof !130

29:                                               ; preds = %22, %33
  %30 = phi i16 [ %35, %33 ], [ %27, %22 ]
  %31 = phi ptr [ %34, %33 ], [ %25, %22 ]
  %32 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %30) #13
  br i1 %32, label %33, label %37, !prof !128

33:                                               ; preds = %29
  %34 = getelementptr inbounds i16, ptr %31, i64 1
  %35 = load i16, ptr %34, align 2, !tbaa !105
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %250, label %29, !prof !131, !llvm.loop !141

37:                                               ; preds = %29
  %38 = load i16, ptr %31, align 2, !tbaa !105
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %250, label %40, !prof !133

40:                                               ; preds = %37
  %41 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %31, ptr noundef nonnull @_ZN11xercesc_2_7L8gListOneE) #13
          to label %42 unwind label %52

42:                                               ; preds = %40
  %43 = icmp eq ptr %41, null
  br i1 %43, label %58, label %44, !prof !81

44:                                               ; preds = %42
  %45 = load i16, ptr %41, align 2, !tbaa !105
  %46 = icmp eq i16 %45, 58
  br i1 %46, label %47, label %58

47:                                               ; preds = %44
  store i16 0, ptr %41, align 2, !tbaa !105
  %48 = invoke noundef i32 @_ZN11xercesc_2_76XMLURL12lookupByNameEPKt(ptr noundef nonnull %31) #13
          to label %49 unwind label %54

49:                                               ; preds = %47
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 7
  store i32 %48, ptr %50, align 4, !tbaa !89
  %51 = icmp eq i32 %48, 4
  br i1 %51, label %250, label %56

52:                                               ; preds = %40
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %248

54:                                               ; preds = %242, %218, %214, %209, %204, %179, %172, %168, %159, %149, %144, %138, %133, %124, %120, %116, %99, %76, %70, %47
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %248

56:                                               ; preds = %49
  %57 = getelementptr inbounds i16, ptr %41, i64 1
  br label %58

58:                                               ; preds = %44, %56, %42
  %59 = phi ptr [ %57, %56 ], [ %31, %44 ], [ %31, %42 ]
  %60 = load i16, ptr %59, align 2, !tbaa !105
  %61 = icmp eq i16 %60, 47
  br i1 %61, label %62, label %107, !prof !128

62:                                               ; preds = %58
  %63 = getelementptr inbounds i16, ptr %59, i64 1
  %64 = load i16, ptr %63, align 2, !tbaa !105
  %65 = icmp eq i16 %64, 47
  br i1 %65, label %66, label %107

66:                                               ; preds = %62
  %67 = getelementptr inbounds i16, ptr %59, i64 2
  %68 = load i16, ptr %67, align 2, !tbaa !105
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %111, label %70

70:                                               ; preds = %66
  %71 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %67, ptr noundef nonnull @_ZN11xercesc_2_7L9gListFourE) #13
          to label %72 unwind label %54

72:                                               ; preds = %70
  %73 = icmp eq ptr %71, null
  br i1 %73, label %99, label %74

74:                                               ; preds = %72
  %75 = icmp eq ptr %71, %67
  br i1 %75, label %111, label %76

76:                                               ; preds = %74
  %77 = load ptr, ptr %23, align 8, !tbaa !86
  %78 = ptrtoint ptr %71 to i64
  %79 = ptrtoint ptr %67 to i64
  %80 = sub i64 %78, %79
  %81 = add i64 %80, 2
  %82 = load ptr, ptr %77, align 8, !tbaa !84
  %83 = getelementptr inbounds ptr, ptr %82, i64 2
  %84 = load ptr, ptr %83, align 8
  %85 = invoke noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %77, i64 noundef %81) #13
          to label %86 unwind label %54

86:                                               ; preds = %76
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  store ptr %85, ptr %87, align 8, !tbaa !94
  %88 = icmp ult ptr %67, %71
  br i1 %88, label %89, label %96

89:                                               ; preds = %86, %89
  %90 = phi ptr [ %94, %89 ], [ %85, %86 ]
  %91 = phi ptr [ %92, %89 ], [ %67, %86 ]
  %92 = getelementptr inbounds i16, ptr %91, i64 1
  %93 = load i16, ptr %91, align 2, !tbaa !105
  %94 = getelementptr inbounds i16, ptr %90, i64 1
  store i16 %93, ptr %90, align 2, !tbaa !105
  %95 = icmp ult ptr %92, %71
  br i1 %95, label %89, label %96, !llvm.loop !142

96:                                               ; preds = %89, %86
  %97 = phi ptr [ %67, %86 ], [ %92, %89 ]
  %98 = phi ptr [ %85, %86 ], [ %94, %89 ]
  store i16 0, ptr %98, align 2, !tbaa !105
  br label %111

99:                                               ; preds = %72
  %100 = load ptr, ptr %23, align 8, !tbaa !86
  %101 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %67, ptr noundef %100) #13
          to label %102 unwind label %54

102:                                              ; preds = %99
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  store ptr %101, ptr %103, align 8, !tbaa !94
  %104 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %101) #13
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i16, ptr %67, i64 %105
  br label %111

107:                                              ; preds = %62, %58
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 7
  %109 = load i32, ptr %108, align 4, !tbaa !89
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %250, label %111, !prof !128

111:                                              ; preds = %107, %66, %74, %96, %102
  %112 = phi ptr [ %97, %96 ], [ %67, %74 ], [ %106, %102 ], [ %67, %66 ], [ %59, %107 ]
  %113 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !94
  %115 = icmp eq ptr %114, null
  br i1 %115, label %165, label %116, !prof !81

116:                                              ; preds = %111
  %117 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %114, ptr noundef nonnull @_ZN11xercesc_2_7L8gListTwoE) #13
          to label %118 unwind label %54

118:                                              ; preds = %116
  %119 = icmp eq ptr %117, null
  br i1 %119, label %144, label %120

120:                                              ; preds = %118
  store i16 0, ptr %117, align 2, !tbaa !105
  %121 = load ptr, ptr %113, align 8, !tbaa !94
  %122 = load ptr, ptr %23, align 8, !tbaa !86
  %123 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %121, ptr noundef %122) #13
          to label %124 unwind label %54

124:                                              ; preds = %120
  %125 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 9
  store ptr %123, ptr %125, align 8, !tbaa !98
  %126 = getelementptr inbounds i16, ptr %117, i64 1
  %127 = load ptr, ptr %113, align 8, !tbaa !94
  %128 = ptrtoint ptr %126 to i64
  %129 = ptrtoint ptr %127 to i64
  %130 = sub i64 %128, %129
  %131 = lshr exact i64 %130, 1
  %132 = trunc i64 %131 to i32
  invoke void @_ZN11xercesc_2_79XMLString3cutEPtj(ptr noundef %127, i32 noundef %132) #13
          to label %133 unwind label %54

133:                                              ; preds = %124
  %134 = load ptr, ptr %125, align 8, !tbaa !98
  %135 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef %134, ptr noundef nonnull @_ZN11xercesc_2_7L10gListThreeE) #13
          to label %136 unwind label %54

136:                                              ; preds = %133
  %137 = icmp eq ptr %135, null
  br i1 %137, label %144, label %138

138:                                              ; preds = %136
  store i16 0, ptr %135, align 2, !tbaa !105
  %139 = getelementptr inbounds i16, ptr %135, i64 1
  %140 = load ptr, ptr %23, align 8, !tbaa !86
  %141 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %139, ptr noundef %140) #13
          to label %142 unwind label %54

142:                                              ; preds = %138
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 4
  store ptr %141, ptr %143, align 8, !tbaa !95
  br label %144

144:                                              ; preds = %136, %142, %118
  %145 = load ptr, ptr %113, align 8, !tbaa !94
  %146 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef %145, ptr noundef nonnull @_ZN11xercesc_2_7L10gListThreeE) #13
          to label %147 unwind label %54

147:                                              ; preds = %144
  %148 = icmp eq ptr %146, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %147
  store i16 0, ptr %146, align 2, !tbaa !105
  %150 = getelementptr inbounds i16, ptr %146, i64 1
  %151 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 6
  %152 = load ptr, ptr %23, align 8, !tbaa !86
  %153 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString9textToBinEPKtRjPNS_13MemoryManagerE(ptr noundef nonnull %150, ptr noundef nonnull align 4 dereferenceable(4) %151, ptr noundef %152) #13
          to label %154 unwind label %54

154:                                              ; preds = %149
  br i1 %153, label %155, label %250

155:                                              ; preds = %154, %147
  %156 = load ptr, ptr %113, align 8, !tbaa !94
  %157 = load i16, ptr %156, align 2, !tbaa !105
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %155
  %160 = load ptr, ptr %23, align 8, !tbaa !86
  %161 = load ptr, ptr %160, align 8, !tbaa !84
  %162 = getelementptr inbounds ptr, ptr %161, i64 3
  %163 = load ptr, ptr %162, align 8
  invoke void %163(ptr noundef nonnull align 8 dereferenceable(8) %160, ptr noundef nonnull %156) #13
          to label %164 unwind label %54

164:                                              ; preds = %159
  store ptr null, ptr %113, align 8, !tbaa !94
  br label %165

165:                                              ; preds = %155, %164, %111
  %166 = load i16, ptr %112, align 2, !tbaa !105
  %167 = icmp eq i16 %166, 0
  br i1 %167, label %250, label %168, !prof !128

168:                                              ; preds = %165
  %169 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %112, ptr noundef nonnull @_ZN11xercesc_2_7L9gListFiveE) #13
          to label %170 unwind label %54

170:                                              ; preds = %168
  %171 = icmp eq ptr %169, null
  br i1 %171, label %172, label %177, !prof !81

172:                                              ; preds = %170
  %173 = load ptr, ptr %23, align 8, !tbaa !86
  %174 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %112, ptr noundef %173) #13
          to label %175 unwind label %54

175:                                              ; preds = %172
  %176 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 5
  store ptr %174, ptr %176, align 8, !tbaa !96
  br label %250

177:                                              ; preds = %170
  %178 = icmp ugt ptr %169, %112
  br i1 %178, label %179, label %199

179:                                              ; preds = %177
  %180 = load ptr, ptr %23, align 8, !tbaa !86
  %181 = ptrtoint ptr %169 to i64
  %182 = ptrtoint ptr %112 to i64
  %183 = sub i64 %181, %182
  %184 = add i64 %183, 2
  %185 = load ptr, ptr %180, align 8, !tbaa !84
  %186 = getelementptr inbounds ptr, ptr %185, i64 2
  %187 = load ptr, ptr %186, align 8
  %188 = invoke noundef ptr %187(ptr noundef nonnull align 8 dereferenceable(8) %180, i64 noundef %184) #13
          to label %189 unwind label %54

189:                                              ; preds = %179
  %190 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 5
  store ptr %188, ptr %190, align 8, !tbaa !96
  br label %191

191:                                              ; preds = %189, %191
  %192 = phi ptr [ %196, %191 ], [ %188, %189 ]
  %193 = phi ptr [ %194, %191 ], [ %112, %189 ]
  %194 = getelementptr inbounds i16, ptr %193, i64 1
  %195 = load i16, ptr %193, align 2, !tbaa !105
  %196 = getelementptr inbounds i16, ptr %192, i64 1
  store i16 %195, ptr %192, align 2, !tbaa !105
  %197 = icmp ult ptr %194, %169
  br i1 %197, label %191, label %198, !llvm.loop !143

198:                                              ; preds = %191
  store i16 0, ptr %196, align 2, !tbaa !105
  br label %199

199:                                              ; preds = %198, %177
  %200 = phi ptr [ %194, %198 ], [ %112, %177 ]
  %201 = load i16, ptr %200, align 2, !tbaa !105
  %202 = icmp eq i16 %201, 35
  %203 = getelementptr inbounds i16, ptr %200, i64 1
  br i1 %202, label %204, label %209

204:                                              ; preds = %199
  %205 = load ptr, ptr %23, align 8, !tbaa !86
  %206 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %203, ptr noundef %205) #13
          to label %207 unwind label %54

207:                                              ; preds = %204
  %208 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 2
  store ptr %206, ptr %208, align 8, !tbaa !93
  br label %250

209:                                              ; preds = %199
  %210 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %203, ptr noundef nonnull @_ZN11xercesc_2_7L8gListSixE) #13
          to label %211 unwind label %54

211:                                              ; preds = %209
  %212 = icmp eq ptr %210, null
  %213 = load ptr, ptr %23, align 8, !tbaa !86
  br i1 %212, label %214, label %218

214:                                              ; preds = %211
  %215 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %203, ptr noundef %213) #13
          to label %216 unwind label %54

216:                                              ; preds = %214
  %217 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 8
  store ptr %215, ptr %217, align 8, !tbaa !97
  br label %250

218:                                              ; preds = %211
  %219 = ptrtoint ptr %210 to i64
  %220 = ptrtoint ptr %203 to i64
  %221 = sub i64 %219, %220
  %222 = add i64 %221, 2
  %223 = load ptr, ptr %213, align 8, !tbaa !84
  %224 = getelementptr inbounds ptr, ptr %223, i64 2
  %225 = load ptr, ptr %224, align 8
  %226 = invoke noundef ptr %225(ptr noundef nonnull align 8 dereferenceable(8) %213, i64 noundef %222) #13
          to label %227 unwind label %54

227:                                              ; preds = %218
  %228 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 8
  store ptr %226, ptr %228, align 8, !tbaa !97
  %229 = icmp ult ptr %203, %210
  br i1 %229, label %230, label %237

230:                                              ; preds = %227, %230
  %231 = phi ptr [ %235, %230 ], [ %226, %227 ]
  %232 = phi ptr [ %233, %230 ], [ %203, %227 ]
  %233 = getelementptr inbounds i16, ptr %232, i64 1
  %234 = load i16, ptr %232, align 2, !tbaa !105
  %235 = getelementptr inbounds i16, ptr %231, i64 1
  store i16 %234, ptr %231, align 2, !tbaa !105
  %236 = icmp ult ptr %233, %210
  br i1 %236, label %230, label %237, !llvm.loop !144

237:                                              ; preds = %230, %227
  %238 = phi ptr [ %203, %227 ], [ %233, %230 ]
  %239 = phi ptr [ %226, %227 ], [ %235, %230 ]
  store i16 0, ptr %239, align 2, !tbaa !105
  %240 = load i16, ptr %238, align 2, !tbaa !105
  %241 = icmp eq i16 %240, 35
  br i1 %241, label %242, label %250

242:                                              ; preds = %237
  %243 = getelementptr inbounds i16, ptr %238, i64 1
  %244 = load ptr, ptr %23, align 8, !tbaa !86
  %245 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %243, ptr noundef %244) #13
          to label %246 unwind label %54

246:                                              ; preds = %242
  %247 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 2
  store ptr %245, ptr %247, align 8, !tbaa !93
  br label %250

248:                                              ; preds = %54, %52
  %249 = phi { ptr, i32 } [ %55, %54 ], [ %53, %52 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  resume { ptr, i32 } %249

250:                                              ; preds = %33, %22, %175, %207, %216, %49, %107, %154, %165, %246, %237, %37
  %251 = phi i1 [ false, %37 ], [ true, %207 ], [ true, %216 ], [ true, %175 ], [ false, %49 ], [ false, %107 ], [ false, %154 ], [ true, %165 ], [ true, %246 ], [ true, %237 ], [ false, %22 ], [ false, %33 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %252

252:                                              ; preds = %19, %19, %2, %250
  %253 = phi i1 [ %251, %250 ], [ false, %2 ], [ false, %19 ], [ false, %19 ]
  ret i1 %253
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %0) local_unnamed_addr #7 align 2 !prof !91 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 11
  %3 = load i8, ptr %2, align 8, !tbaa !101, !range !114, !noundef !107
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv(ptr noundef nonnull align 8 dereferenceable(81) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = alloca [4 x i16], align 2
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %104, !prof !81

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !94
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !81

11:                                               ; preds = %7
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef nonnull %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgLocalHostStringE) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %104

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %18) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %20 = load ptr, ptr %17, align 8, !tbaa !86
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %19, ptr noundef %20) #13
  %21 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %19) #13
  %22 = load ptr, ptr %17, align 8, !tbaa !86
  %23 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKttjPNS_13MemoryManagerE(ptr noundef %19, i16 noundef zeroext 37, i32 noundef 0, ptr noundef %22) #13
          to label %24 unwind label %49

24:                                               ; preds = %14, %77
  %25 = phi i32 [ %82, %77 ], [ %23, %14 ]
  %26 = phi i32 [ %79, %77 ], [ %21, %14 ]
  %27 = icmp eq i32 %25, -1
  br i1 %27, label %85, label %28, !prof !81

28:                                               ; preds = %24
  %29 = add nsw i32 %25, 2
  %30 = icmp slt i32 %29, %26
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = add nuw nsw i32 %25, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, ptr %19, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !105
  %36 = call fastcc noundef zeroext i1 @_ZN11xercesc_2_7L10isHexDigitEt(i16 noundef zeroext %35) #13
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = sext i32 %29 to i64
  %39 = getelementptr inbounds i16, ptr %19, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !105
  %41 = call fastcc noundef zeroext i1 @_ZN11xercesc_2_7L10isHexDigitEt(i16 noundef zeroext %40) #13
  br i1 %41, label %57, label %42

42:                                               ; preds = %37, %31, %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %43 = sext i32 %25 to i64
  %44 = getelementptr inbounds i16, ptr %19, i64 %43
  call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef nonnull %3, ptr noundef %44, i32 noundef 3) #13
  %45 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 3
  store i16 0, ptr %45, align 2, !tbaa !105
  %46 = call ptr @__cxa_allocate_exception(i64 48) #14
  %47 = load ptr, ptr %17, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %46, ptr noundef nonnull @.str, i32 noundef 618, i32 noundef 268, ptr noundef %19, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %47) #13
          to label %48 unwind label %53

48:                                               ; preds = %42
  invoke void @__cxa_throw(ptr nonnull %46, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %123 unwind label %51

49:                                               ; preds = %14
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %102

51:                                               ; preds = %48
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %55

53:                                               ; preds = %42
  %54 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %46) #14
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %102

57:                                               ; preds = %37
  %58 = call fastcc noundef i32 @_ZN11xercesc_2_7L12xlatHexDigitEt(i16 noundef zeroext %35) #13, !range !145
  %59 = shl nsw i32 %58, 4
  %60 = call fastcc noundef i32 @_ZN11xercesc_2_7L12xlatHexDigitEt(i16 noundef zeroext %40) #13, !range !145
  %61 = add nsw i32 %59, %60
  %62 = trunc i32 %61 to i16
  %63 = sext i32 %25 to i64
  %64 = getelementptr inbounds i16, ptr %19, i64 %63
  store i16 %62, ptr %64, align 2, !tbaa !105
  %65 = add nsw i32 %26, -2
  %66 = icmp slt i32 %32, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %57, %67
  %68 = phi i64 [ %72, %67 ], [ %33, %57 ]
  %69 = getelementptr i16, ptr %19, i64 %68
  %70 = getelementptr i16, ptr %69, i64 2
  %71 = load i16, ptr %70, align 2, !tbaa !105
  store i16 %71, ptr %69, align 2, !tbaa !105
  %72 = add nsw i64 %68, 1
  %73 = trunc i64 %72 to i32
  %74 = icmp eq i32 %65, %73
  br i1 %74, label %75, label %67, !llvm.loop !146

75:                                               ; preds = %67
  %76 = sext i32 %65 to i64
  br label %77

77:                                               ; preds = %75, %57
  %78 = phi i64 [ %76, %75 ], [ %33, %57 ]
  %79 = phi i32 [ %65, %75 ], [ %32, %57 ]
  %80 = getelementptr inbounds i16, ptr %19, i64 %78
  store i16 0, ptr %80, align 2, !tbaa !105
  %81 = load ptr, ptr %17, align 8, !tbaa !86
  %82 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKttjPNS_13MemoryManagerE(ptr noundef nonnull %19, i16 noundef zeroext 37, i32 noundef %25, ptr noundef %81) #13
          to label %24 unwind label %83, !llvm.loop !147

83:                                               ; preds = %77
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %102

85:                                               ; preds = %24
  %86 = load ptr, ptr %17, align 8, !tbaa !86
  %87 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %86) #13
          to label %88 unwind label %96

88:                                               ; preds = %85
  %89 = load ptr, ptr %17, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_718BinFileInputStreamC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %87, ptr noundef %19, ptr noundef %89) #13
          to label %90 unwind label %98

90:                                               ; preds = %88
  %91 = call noundef zeroext i1 @_ZNK11xercesc_2_718BinFileInputStream9getIsOpenEv(ptr noundef nonnull align 8 dereferenceable(24) %87) #13
  br i1 %91, label %100, label %92, !prof !81

92:                                               ; preds = %90
  %93 = load ptr, ptr %87, align 8, !tbaa !84
  %94 = getelementptr inbounds ptr, ptr %93, i64 1
  %95 = load ptr, ptr %94, align 8
  call void %95(ptr noundef nonnull align 8 dereferenceable(24) %87) #16
  br label %100

96:                                               ; preds = %85
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %102

98:                                               ; preds = %88
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %87, ptr noundef %86) #16
  br label %102

100:                                              ; preds = %90, %92
  %101 = phi ptr [ null, %92 ], [ %87, %90 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  br label %119

102:                                              ; preds = %96, %98, %83, %55, %49
  %103 = phi { ptr, i32 } [ %56, %55 ], [ %84, %83 ], [ %50, %49 ], [ %99, %98 ], [ %97, %96 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  br label %121

104:                                              ; preds = %11, %1
  %105 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgNetAccessorE, align 8, !tbaa !148
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %109 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %108, ptr noundef nonnull @.str, i32 noundef 650, i32 noundef 100, ptr noundef %110) #13
          to label %111 unwind label %112

111:                                              ; preds = %107
  tail call void @__cxa_throw(ptr nonnull %108, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

112:                                              ; preds = %107
  %113 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %108) #14
  br label %121

114:                                              ; preds = %104
  %115 = load ptr, ptr %105, align 8, !tbaa !84
  %116 = getelementptr inbounds ptr, ptr %115, i64 3
  %117 = load ptr, ptr %116, align 8
  %118 = tail call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef null) #13
  br label %119

119:                                              ; preds = %114, %100
  %120 = phi ptr [ %118, %114 ], [ %101, %100 ]
  ret ptr %120

121:                                              ; preds = %112, %102
  %122 = phi { ptr, i32 } [ %113, %112 ], [ %103, %102 ]
  resume { ptr, i32 } %122

123:                                              ; preds = %48
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #3 comdat align 2 !prof !149 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !150

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !105
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !151

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !105
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !152, !llvm.loop !153

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKttjPNS_13MemoryManagerE(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN11xercesc_2_7L10isHexDigitEt(i16 noundef zeroext %0) unnamed_addr #9 !prof !91 !PGOFuncName !154 {
  %2 = add i16 %0, -48
  %3 = icmp ult i16 %2, 10
  %4 = and i16 %0, -33
  %5 = add i16 %4, -65
  %6 = icmp ult i16 %5, 26
  %7 = or i1 %3, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !155 {
  %4 = zext i32 %2 to i64
  %5 = shl nuw nsw i64 %4, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %0, ptr align 2 %1, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @_ZN11xercesc_2_7L12xlatHexDigitEt(i16 noundef zeroext %0) unnamed_addr #9 !prof !91 !PGOFuncName !156 {
  %2 = zext i16 %0 to i32
  %3 = add i16 %0, -48
  %4 = icmp ult i16 %3, 10
  %5 = add i16 %0, -65
  %6 = icmp ult i16 %5, 26
  %7 = select i1 %6, i32 -55, i32 -87
  %8 = select i1 %4, i32 -48, i32 %7
  %9 = add nsw i32 %8, %2
  ret i32 %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718BinFileInputStreamC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_718BinFileInputStream9getIsOpenEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !157 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !158
  %4 = icmp ne ptr %3, null
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL14makeRelativeToEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %3 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
  br i1 %4, label %5, label %10

5:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #14
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  call void @_ZN11xercesc_2_76XMLURLC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %3, ptr noundef %1, ptr noundef %7) #13
  %8 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %3, i1 noundef zeroext true) #13
          to label %9 unwind label %11

9:                                                ; preds = %5
  call void @_ZN11xercesc_2_76XMLURLD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %3) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #14
  br label %10

10:                                               ; preds = %2, %9
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_76XMLURLD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %3) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #14
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL14makeRelativeToERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %1) local_unnamed_addr #0 align 2 !prof !91 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, i1 noundef zeroext true) #13
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL13buildFullTextEv(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0) local_unnamed_addr #0 align 2 !prof !91 {
  %2 = alloca [17 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %4) #13
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %7) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  %11 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %10) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  %14 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %13) #13
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %16) #13
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !98
  %20 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %19) #13
  %21 = add i32 %5, 43
  %22 = add i32 %21, %8
  %23 = add i32 %22, %11
  %24 = add i32 %23, %14
  %25 = add i32 %24, %17
  %26 = add i32 %25, %20
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !86
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !99
  %31 = load ptr, ptr %28, align 8, !tbaa !84
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30) #13
  %34 = load ptr, ptr %27, align 8, !tbaa !86
  %35 = zext i32 %26 to i64
  %36 = shl nuw nsw i64 %35, 1
  %37 = load ptr, ptr %34, align 8, !tbaa !84
  %38 = getelementptr inbounds ptr, ptr %37, i64 2
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %36) #13
  store ptr %40, ptr %29, align 8, !tbaa !99
  store i16 0, ptr %40, align 2, !tbaa !105
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !89
  %43 = icmp eq i32 %42, 4
  br i1 %43, label %53, label %44

44:                                               ; preds = %1
  %45 = tail call noundef ptr @_ZNK11xercesc_2_76XMLURL15getProtocolNameEv(ptr noundef nonnull align 8 dereferenceable(81) %0) #13
  tail call void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %40, ptr noundef %45) #13
  %46 = load ptr, ptr %29, align 8, !tbaa !99
  %47 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %46) #13
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i16, ptr %40, i64 %48
  %50 = getelementptr inbounds i16, ptr %49, i64 1
  store i16 58, ptr %49, align 2, !tbaa !105
  %51 = getelementptr inbounds i16, ptr %49, i64 2
  store i16 47, ptr %50, align 2, !tbaa !105
  %52 = getelementptr inbounds i16, ptr %49, i64 3
  store i16 47, ptr %51, align 2, !tbaa !105
  br label %53

53:                                               ; preds = %44, %1
  %54 = phi ptr [ %52, %44 ], [ %40, %1 ]
  %55 = load ptr, ptr %18, align 8, !tbaa !98
  %56 = icmp eq ptr %55, null
  br i1 %56, label %73, label %57

57:                                               ; preds = %53
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %54, ptr noundef nonnull %55) #13
  %58 = load ptr, ptr %18, align 8, !tbaa !98
  %59 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %58) #13
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i16, ptr %54, i64 %60
  %62 = load ptr, ptr %9, align 8, !tbaa !95
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds i16, ptr %61, i64 1
  store i16 58, ptr %61, align 2, !tbaa !105
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %65, ptr noundef nonnull %62) #13
  %66 = load ptr, ptr %9, align 8, !tbaa !95
  %67 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %66) #13
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i16, ptr %65, i64 %68
  br label %70

70:                                               ; preds = %64, %57
  %71 = phi ptr [ %69, %64 ], [ %61, %57 ]
  %72 = getelementptr inbounds i16, ptr %71, i64 1
  store i16 64, ptr %71, align 2, !tbaa !105
  br label %73

73:                                               ; preds = %70, %53
  %74 = phi ptr [ %72, %70 ], [ %54, %53 ]
  %75 = load ptr, ptr %6, align 8, !tbaa !94
  %76 = icmp eq ptr %75, null
  br i1 %76, label %91, label %77

77:                                               ; preds = %73
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %74, ptr noundef nonnull %75) #13
  %78 = load ptr, ptr %6, align 8, !tbaa !94
  %79 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %78) #13
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i16, ptr %74, i64 %80
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  %83 = load i32, ptr %82, align 8, !tbaa !100
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %77
  %86 = getelementptr inbounds i16, ptr %81, i64 1
  store i16 58, ptr %81, align 2, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %2) #14
  %87 = load ptr, ptr %27, align 8, !tbaa !86
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %83, ptr noundef nonnull %2, i32 noundef 16, i32 noundef 10, ptr noundef %87) #13
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %86, ptr noundef nonnull %2) #13
  %88 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %2) #13
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i16, ptr %86, i64 %89
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %2) #14
  br label %91

91:                                               ; preds = %77, %85, %73
  %92 = phi ptr [ %90, %85 ], [ %81, %77 ], [ %74, %73 ]
  %93 = load ptr, ptr %12, align 8, !tbaa !96
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %92, ptr noundef nonnull %93) #13
  %96 = load ptr, ptr %12, align 8, !tbaa !96
  %97 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %96) #13
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i16, ptr %92, i64 %98
  br label %100

100:                                              ; preds = %95, %91
  %101 = phi ptr [ %99, %95 ], [ %92, %91 ]
  %102 = load ptr, ptr %15, align 8, !tbaa !97
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds i16, ptr %101, i64 1
  store i16 63, ptr %101, align 2, !tbaa !105
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %105, ptr noundef nonnull %102) #13
  %106 = load ptr, ptr %15, align 8, !tbaa !97
  %107 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %106) #13
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i16, ptr %105, i64 %108
  br label %110

110:                                              ; preds = %104, %100
  %111 = phi ptr [ %109, %104 ], [ %101, %100 ]
  %112 = load ptr, ptr %3, align 8, !tbaa !93
  %113 = icmp eq ptr %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds i16, ptr %111, i64 1
  store i16 35, ptr %111, align 2, !tbaa !105
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %115, ptr noundef nonnull %112) #13
  %116 = load ptr, ptr %3, align 8, !tbaa !93
  %117 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %116) #13
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i16, ptr %115, i64 %118
  br label %120

120:                                              ; preds = %114, %110
  %121 = phi ptr [ %119, %114 ], [ %111, %110 ]
  store i16 0, ptr %121, align 2, !tbaa !105
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11isURIStringEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %0) local_unnamed_addr #3 comdat align 2 !prof !161 {
  %2 = zext i16 %0 to i64
  %3 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !113
  %5 = icmp slt i8 %4, 0
  ret i1 %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString3cutEPtj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString9textToBinEPKtRjPNS_13MemoryManagerE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !91 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !91 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !112 {
  %3 = load ptr, ptr %0, align 8, !tbaa !109
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !165

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !166

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !84
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !109
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !111
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(none) }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { nounwind optsize }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!69}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!35 = !{ptr @_ZN11xercesc_2_76XMLURL12lookupByNameEPKt, ptr @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_, i64 2}
!36 = !{ptr @_ZN11xercesc_2_76XMLURLC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!37 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!38 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!39 = !{ptr @_ZN11xercesc_2_76XMLURL6setURLEPKt, ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv, i64 2}
!40 = !{ptr @_ZN11xercesc_2_76XMLURL6setURLEPKt, ptr @_ZN11xercesc_2_76XMLURL5parseEPKt, i64 2}
!41 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!42 = !{ptr @_ZN11xercesc_2_76XMLURLD2Ev, ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv, i64 4}
!43 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKt, ptr @_ZN11xercesc_2_76XMLUri11isURIStringEPKt, i64 1}
!44 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKt, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 2}
!45 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKt, ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, i64 1}
!46 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKt, ptr @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt, i64 2}
!47 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKt, ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt, i64 2}
!48 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKt, ptr @_ZN11xercesc_2_76XMLURL12lookupByNameEPKt, i64 1}
!49 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKt, ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, i64 1}
!50 = !{ptr @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b, ptr @_ZNK11xercesc_2_76XMLURL10isRelativeEv, i64 1}
!51 = !{ptr @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_, ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv, i64 1}
!52 = !{ptr @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_, ptr @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_, i64 1}
!53 = !{ptr @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_, ptr @_ZNK11xercesc_2_76XMLURL10isRelativeEv, i64 1}
!54 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_, ptr @_ZN11xercesc_2_76XMLUri11isURIStringEPKt, i64 1}
!55 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 1}
!56 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_, ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, i64 1}
!57 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_, ptr @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt, i64 2}
!58 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_, ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt, i64 2}
!59 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_, ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, i64 1}
!60 = !{ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 1}
!61 = !{ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, i64 1}
!62 = !{ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 1}
!63 = !{ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKttjPNS_13MemoryManagerE, i64 1}
!64 = !{ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!65 = !{ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, ptr @_ZN11xercesc_2_718BinFileInputStreamC1EPKtPNS_13MemoryManagerE, i64 1}
!66 = !{ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, ptr @_ZNK11xercesc_2_718BinFileInputStream9getIsOpenEv, i64 1}
!67 = !{ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, i64 1}
!68 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!69 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!70 = !{!"function_entry_count", i64 2}
!71 = !{!"branch_weights", i32 1, i32 2}
!72 = distinct !{!72, !73}
!73 = !{!"llvm.loop.mustprogress"}
!74 = !{!75, !79, i64 8}
!75 = !{!"_ZTSN11xercesc_2_710ProtoEntryE", !76, i64 0, !79, i64 8, !80, i64 16}
!76 = !{!"_ZTSN11xercesc_2_76XMLURL9ProtocolsE", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C++ TBAA"}
!79 = !{!"any pointer", !77, i64 0}
!80 = !{!"int", !77, i64 0}
!81 = !{!"branch_weights", i32 3, i32 1}
!82 = !{!75, !76, i64 0}
!83 = !{!"function_entry_count", i64 4}
!84 = !{!85, !85, i64 0}
!85 = !{!"vtable pointer", !78, i64 0}
!86 = !{!87, !79, i64 8}
!87 = !{!"_ZTSN11xercesc_2_76XMLURLE", !79, i64 8, !79, i64 16, !79, i64 24, !79, i64 32, !79, i64 40, !80, i64 48, !76, i64 52, !79, i64 56, !79, i64 64, !79, i64 72, !88, i64 80}
!88 = !{!"bool", !77, i64 0}
!89 = !{!87, !76, i64 52}
!90 = !{!"function_entry_count", i64 5836268}
!91 = !{!"function_entry_count", i64 0}
!92 = !{!"function_entry_count", i64 7}
!93 = !{!87, !79, i64 16}
!94 = !{!87, !79, i64 24}
!95 = !{!87, !79, i64 32}
!96 = !{!87, !79, i64 40}
!97 = !{!87, !79, i64 56}
!98 = !{!87, !79, i64 64}
!99 = !{!87, !79, i64 72}
!100 = !{!87, !80, i64 48}
!101 = !{!87, !88, i64 80}
!102 = !{!103, !79, i64 0}
!103 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_6XMLURLEEE", !79, i64 0, !77, i64 8}
!104 = !{!103, !77, i64 8}
!105 = !{!106, !106, i64 0}
!106 = !{!"short", !77, i64 0}
!107 = !{}
!108 = !{!"function_entry_count", i64 52059}
!109 = !{!110, !79, i64 0}
!110 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !79, i64 0, !79, i64 8}
!111 = !{!110, !79, i64 8}
!112 = !{!"function_entry_count", i64 243874}
!113 = !{!77, !77, i64 0}
!114 = !{i8 0, i8 2}
!115 = !{!"function_entry_count", i64 558789}
!116 = !{!"branch_weights", i32 158605, i32 400186}
!117 = !{!"function_entry_count", i64 1231717351}
!118 = !{!"branch_weights", i32 621, i32 -1469098093}
!119 = !{!"branch_weights", i32 408901017, i32 1}
!120 = !{!"branch_weights", i32 267, i32 4}
!121 = !{!"branch_weights", i32 1, i32 4}
!122 = !{!"branch_weights", i32 156, i32 112}
!123 = !{!"branch_weights", i32 1, i32 112}
!124 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!125 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!126 = distinct !{!126, !73}
!127 = !{!75, !80, i64 16}
!128 = !{!"branch_weights", i32 1, i32 3}
!129 = !{!"branch_weights", i32 165, i32 91}
!130 = !{!"branch_weights", i32 1, i32 127}
!131 = !{!"branch_weights", i32 127, i32 257}
!132 = distinct !{!132, !73}
!133 = !{!"branch_weights", i32 0, i32 -2147483648}
!134 = distinct !{!134, !73}
!135 = distinct !{!135, !73}
!136 = distinct !{!136, !73}
!137 = !{!"function_entry_count", i64 1}
!138 = !{!"branch_weights", i32 2, i32 1}
!139 = !{!"branch_weights", i32 4, i32 5}
!140 = !{!"branch_weights", i32 64, i32 80}
!141 = distinct !{!141, !73}
!142 = distinct !{!142, !73}
!143 = distinct !{!143, !73}
!144 = distinct !{!144, !73}
!145 = !{i32 -87, i32 65449}
!146 = distinct !{!146, !73}
!147 = distinct !{!147, !73}
!148 = !{!79, !79, i64 0}
!149 = !{!"function_entry_count", i64 2453164456}
!150 = !{!"branch_weights", i32 1, i32 -1841802839}
!151 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!152 = !{!"branch_weights", i32 408669070, i32 -279908794}
!153 = distinct !{!153, !73}
!154 = !{!"XMLURL.cpp:_ZN11xercesc_2_7L10isHexDigitEt"}
!155 = !{!"function_entry_count", i64 2499163}
!156 = !{!"XMLURL.cpp:_ZN11xercesc_2_7L12xlatHexDigitEt"}
!157 = !{!"function_entry_count", i64 3}
!158 = !{!159, !79, i64 8}
!159 = !{!"_ZTSN11xercesc_2_718BinFileInputStreamE", !160, i64 0, !79, i64 8, !79, i64 16}
!160 = !{!"_ZTSN11xercesc_2_714BinInputStreamE"}
!161 = !{!"function_entry_count", i64 196710}
!162 = !{!163, !79, i64 40}
!163 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !164, i64 8, !79, i64 16, !80, i64 24, !79, i64 32, !79, i64 40}
!164 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !77, i64 0}
!165 = !{!"branch_weights", i32 191816, i32 52060}
!166 = !{!"branch_weights", i32 1, i32 52060}
