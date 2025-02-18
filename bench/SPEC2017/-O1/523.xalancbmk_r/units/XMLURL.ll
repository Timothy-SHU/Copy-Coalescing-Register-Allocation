; ModuleID = 'XMLURL.cpp'
source_filename = "XMLURL.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.xercesc_2_7::ProtoEntry" = type { i32, ptr, i32 }
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::BinFileInputStream" = type { %"class.xercesc_2_7::BinInputStream", ptr, ptr }
%"class.xercesc_2_7::BinInputStream" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_76XMLURL12lookupByNameEPKt(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !53 {
  br label %5

2:                                                ; preds = %5
  %3 = add nuw nsw i64 %6, 1
  %4 = icmp eq i64 %3, 3
  br i1 %4, label %14, label %5, !llvm.loop !54

5:                                                ; preds = %1, %2
  %6 = phi i64 [ 0, %1 ], [ %3, %2 ]
  %7 = getelementptr inbounds [3 x %"struct.xercesc_2_7::ProtoEntry"], ptr @_ZN11xercesc_2_7L10gProtoListE, i64 0, i64 %6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef %0, ptr noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %2

11:                                               ; preds = %5
  %12 = getelementptr inbounds [3 x %"struct.xercesc_2_7::ProtoEntry"], ptr @_ZN11xercesc_2_7L10gProtoListE, i64 0, i64 %6
  %13 = load i32, ptr %12, align 8, !tbaa !64
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi i32 [ %13, %11 ], [ 4, %2 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(81) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !65 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !68
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %4, i8 0, i64 36, i1 false)
  store i32 4, ptr %5, align 4, !tbaa !71
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %6, i8 0, i64 25, i1 false)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, i8 0, i64 36, i1 false)
  store i32 4, ptr %7, align 4, !tbaa !71
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %8, i8 0, i64 25, i1 false)
  invoke void @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2)
          to label %19 unwind label %9

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %11 = extractvalue { ptr, i32 } %10, 1
  %12 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = extractvalue { ptr, i32 } %10, 0
  %16 = tail call ptr @__cxa_begin_catch(ptr %15) #14
  invoke void @__cxa_rethrow() #15
          to label %34 unwind label %17

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %31

19:                                               ; preds = %4
  ret void

20:                                               ; preds = %17, %9
  %21 = phi ptr [ null, %17 ], [ @_ZN11xercesc_2_76XMLURL7cleanUpEv, %9 ]
  %22 = phi ptr [ null, %17 ], [ %0, %9 ]
  %23 = phi { ptr, i32 } [ %18, %17 ], [ %10, %9 ]
  %24 = icmp eq ptr %22, null
  %25 = or i1 %13, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(81) %22)
          to label %30 unwind label %27

27:                                               ; preds = %26
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #16
  unreachable

30:                                               ; preds = %20, %26
  resume { ptr, i32 } %23

31:                                               ; preds = %17
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #16
  unreachable

34:                                               ; preds = %14
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0) #0 align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = load ptr, ptr %3, align 8, !tbaa !66
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5), !prof !74
  %9 = load ptr, ptr %2, align 8, !tbaa !68
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = load ptr, ptr %9, align 8, !tbaa !66
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11), !prof !74
  %15 = load ptr, ptr %2, align 8, !tbaa !68
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  %18 = load ptr, ptr %15, align 8, !tbaa !66
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %17), !prof !74
  %21 = load ptr, ptr %2, align 8, !tbaa !68
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  %24 = load ptr, ptr %21, align 8, !tbaa !66
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %23), !prof !74
  %27 = load ptr, ptr %2, align 8, !tbaa !68
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  %29 = load ptr, ptr %28, align 8, !tbaa !78
  %30 = load ptr, ptr %27, align 8, !tbaa !66
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29), !prof !74
  %33 = load ptr, ptr %2, align 8, !tbaa !68
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !79
  %36 = load ptr, ptr %33, align 8, !tbaa !66
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %35), !prof !74
  %39 = load ptr, ptr %2, align 8, !tbaa !68
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 10
  %41 = load ptr, ptr %40, align 8, !tbaa !80
  %42 = load ptr, ptr %39, align 8, !tbaa !66
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41), !prof !74
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  store i32 4, ptr %45, align 4, !tbaa !71
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  store i32 0, ptr %46, align 8, !tbaa !81
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 11
  store i8 0, ptr %47, align 8, !tbaa !82
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %4 = alloca %"class.xercesc_2_7::XMLURL", align 8
  tail call void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0)
  tail call void @_ZN11xercesc_2_76XMLURL5parseEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !71
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i16, ptr %10, align 2, !tbaa !83
  %14 = icmp ne i16 %13, 47
  br label %15

15:                                               ; preds = %3, %8, %12
  %16 = phi i1 [ true, %3 ], [ true, %8 ], [ %14, %12 ]
  %17 = icmp ne ptr %1, null
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %47

19:                                               ; preds = %15
  %20 = load i16, ptr %1, align 2, !tbaa !83
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #14
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  call void @_ZN11xercesc_2_76XMLURLC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %4, ptr noundef nonnull %1, ptr noundef %24)
  %25 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %4, i1 noundef zeroext false)
          to label %26 unwind label %32

26:                                               ; preds = %22
  br i1 %25, label %36, label %27

27:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0)
          to label %28 unwind label %32

28:                                               ; preds = %27
  %29 = call ptr @__cxa_allocate_exception(i64 48) #14
  %30 = load ptr, ptr %23, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull @.str, i32 noundef 509, i32 noundef 107, ptr noundef %30)
          to label %31 unwind label %34

31:                                               ; preds = %28
  invoke void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %48 unwind label %32

32:                                               ; preds = %31, %27, %22
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %41

34:                                               ; preds = %28
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %29) #14
  br label %41

36:                                               ; preds = %26
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %4)
          to label %40 unwind label %37

37:                                               ; preds = %36
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #16
  unreachable

40:                                               ; preds = %36
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #14
  br label %47

41:                                               ; preds = %34, %32
  %42 = phi { ptr, i32 } [ %33, %32 ], [ %35, %34 ]
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %4)
          to label %46 unwind label %43

43:                                               ; preds = %41
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  call void @__clang_call_terminate(ptr %45) #16
  unreachable

46:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #14
  resume { ptr, i32 } %42

47:                                               ; preds = %19, %40, %15
  ret void

48:                                               ; preds = %31
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !53 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2EPKtPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !68
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %7, i8 0, i64 36, i1 false)
  store i32 4, ptr %8, align 4, !tbaa !71
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %9, i8 0, i64 25, i1 false)
  %10 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3)
          to label %11 unwind label %14

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %12 = load ptr, ptr %6, align 8, !tbaa !68
  store ptr %10, ptr %5, align 8, !tbaa !85
  %13 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %10)
          to label %31 unwind label %18

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  br label %37

18:                                               ; preds = %11
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = extractvalue { ptr, i32 } %19, 1
  %22 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = tail call ptr @__cxa_begin_catch(ptr %20) #14
  invoke void @__cxa_rethrow() #15
          to label %56 unwind label %26

26:                                               ; preds = %24
  %27 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %28 unwind label %53

28:                                               ; preds = %26
  %29 = extractvalue { ptr, i32 } %27, 1
  %30 = extractvalue { ptr, i32 } %27, 0
  br label %32

31:                                               ; preds = %11
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  ret void

32:                                               ; preds = %28, %18
  %33 = phi i64 [ 0, %28 ], [ ptrtoint (ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv to i64), %18 ]
  %34 = phi ptr [ null, %28 ], [ %0, %18 ]
  %35 = phi i32 [ %29, %28 ], [ %21, %18 ]
  %36 = phi ptr [ %30, %28 ], [ %20, %18 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  br label %37

37:                                               ; preds = %32, %14
  %38 = phi i64 [ %33, %32 ], [ ptrtoint (ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv to i64), %14 ]
  %39 = phi ptr [ %34, %32 ], [ %0, %14 ]
  %40 = phi i32 [ %35, %32 ], [ %17, %14 ]
  %41 = phi ptr [ %36, %32 ], [ %16, %14 ]
  %42 = icmp eq ptr %39, null
  %43 = icmp eq i64 %38, 0
  %44 = or i1 %43, %42
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = inttoptr i64 %38 to ptr
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(81) %39)
          to label %50 unwind label %47

47:                                               ; preds = %45
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #16
  unreachable

50:                                               ; preds = %37, %45
  %51 = insertvalue { ptr, i32 } poison, ptr %41, 0
  %52 = insertvalue { ptr, i32 } %51, i32 %40, 1
  resume { ptr, i32 } %52

53:                                               ; preds = %26
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  tail call void @__clang_call_terminate(ptr %55) #16
  unreachable

56:                                               ; preds = %24
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !89

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !87
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !90

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !66
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !91

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #17
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #16
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2ERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  store ptr %6, ptr %4, align 8, !tbaa !68
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %7, i8 0, i64 36, i1 false)
  store i32 4, ptr %8, align 4, !tbaa !71
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %9, i8 0, i64 25, i1 false)
  invoke void @_ZN11xercesc_2_76XMLURL6setURLERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef %2)
          to label %20 unwind label %10

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %12 = extractvalue { ptr, i32 } %11, 1
  %13 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = extractvalue { ptr, i32 } %11, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #14
  invoke void @__cxa_rethrow() #15
          to label %35 unwind label %18

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %21 unwind label %32

20:                                               ; preds = %3
  ret void

21:                                               ; preds = %18, %10
  %22 = phi ptr [ null, %18 ], [ @_ZN11xercesc_2_76XMLURL7cleanUpEv, %10 ]
  %23 = phi ptr [ null, %18 ], [ %0, %10 ]
  %24 = phi { ptr, i32 } [ %19, %18 ], [ %11, %10 ]
  %25 = icmp eq ptr %23, null
  %26 = or i1 %14, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(81) %23)
          to label %31 unwind label %28

28:                                               ; preds = %27
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #16
  unreachable

31:                                               ; preds = %21, %27
  resume { ptr, i32 } %24

32:                                               ; preds = %18
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #16
  unreachable

35:                                               ; preds = %15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL6setURLERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %1, ptr noundef %2) local_unnamed_addr #0 align 2 !prof !53 {
  tail call void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0)
  tail call void @_ZN11xercesc_2_76XMLURL5parseEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %2)
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !71
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load i16, ptr %9, align 2, !tbaa !83
  %13 = icmp eq i16 %12, 47
  br i1 %13, label %16, label %14

14:                                               ; preds = %3, %7, %11
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, i1 noundef zeroext true)
  br label %16

16:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2ERKS0_PKc(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  store ptr %7, ptr %5, align 8, !tbaa !68
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %8, i8 0, i64 36, i1 false)
  store i32 4, ptr %9, align 4, !tbaa !71
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %10, i8 0, i64 25, i1 false)
  %11 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %7)
          to label %12 unwind label %15

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %13 = load ptr, ptr %5, align 8, !tbaa !68
  store ptr %11, ptr %4, align 8, !tbaa !85
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_76XMLURL6setURLERKS0_PKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef %11)
          to label %32 unwind label %19

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = extractvalue { ptr, i32 } %16, 0
  %18 = extractvalue { ptr, i32 } %16, 1
  br label %38

19:                                               ; preds = %12
  %20 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  %23 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = tail call ptr @__cxa_begin_catch(ptr %21) #14
  invoke void @__cxa_rethrow() #15
          to label %57 unwind label %27

27:                                               ; preds = %25
  %28 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %29 unwind label %54

29:                                               ; preds = %27
  %30 = extractvalue { ptr, i32 } %28, 1
  %31 = extractvalue { ptr, i32 } %28, 0
  br label %33

32:                                               ; preds = %12
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void

33:                                               ; preds = %29, %19
  %34 = phi i64 [ 0, %29 ], [ ptrtoint (ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv to i64), %19 ]
  %35 = phi ptr [ null, %29 ], [ %0, %19 ]
  %36 = phi i32 [ %30, %29 ], [ %22, %19 ]
  %37 = phi ptr [ %31, %29 ], [ %21, %19 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  br label %38

38:                                               ; preds = %33, %15
  %39 = phi i64 [ %34, %33 ], [ ptrtoint (ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv to i64), %15 ]
  %40 = phi ptr [ %35, %33 ], [ %0, %15 ]
  %41 = phi i32 [ %36, %33 ], [ %18, %15 ]
  %42 = phi ptr [ %37, %33 ], [ %17, %15 ]
  %43 = icmp eq ptr %40, null
  %44 = icmp eq i64 %39, 0
  %45 = or i1 %44, %43
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = inttoptr i64 %39 to ptr
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(81) %40)
          to label %51 unwind label %48

48:                                               ; preds = %46
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  call void @__clang_call_terminate(ptr %50) #16
  unreachable

51:                                               ; preds = %38, %46
  %52 = insertvalue { ptr, i32 } poison, ptr %42, 0
  %53 = insertvalue { ptr, i32 } %52, i32 %41, 1
  resume { ptr, i32 } %53

54:                                               ; preds = %27
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  tail call void @__clang_call_terminate(ptr %56) #16
  unreachable

57:                                               ; preds = %25
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %5, i8 0, i64 36, i1 false)
  store i32 4, ptr %6, align 4, !tbaa !71
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %7, i8 0, i64 25, i1 false)
  invoke void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0)
          to label %8 unwind label %9

8:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_76XMLURL5parseEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1)
          to label %19 unwind label %9

9:                                                ; preds = %8, %3
  %10 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %11 = extractvalue { ptr, i32 } %10, 1
  %12 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = extractvalue { ptr, i32 } %10, 0
  %16 = tail call ptr @__cxa_begin_catch(ptr %15) #14
  invoke void @__cxa_rethrow() #15
          to label %34 unwind label %17

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %31

19:                                               ; preds = %8
  ret void

20:                                               ; preds = %17, %9
  %21 = phi ptr [ null, %17 ], [ @_ZN11xercesc_2_76XMLURL7cleanUpEv, %9 ]
  %22 = phi ptr [ null, %17 ], [ %0, %9 ]
  %23 = phi { ptr, i32 } [ %18, %17 ], [ %10, %9 ]
  %24 = icmp eq ptr %22, null
  %25 = or i1 %13, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(81) %22)
          to label %30 unwind label %27

27:                                               ; preds = %26
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #16
  unreachable

30:                                               ; preds = %20, %26
  resume { ptr, i32 } %23

31:                                               ; preds = %17
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  tail call void @__clang_call_terminate(ptr %33) #16
  unreachable

34:                                               ; preds = %14
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL6setURLEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !92 {
  tail call void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0)
  tail call void @_ZN11xercesc_2_76XMLURL5parseEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2EPKcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  store ptr %2, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, i8 0, i64 36, i1 false)
  store i32 4, ptr %7, align 4, !tbaa !71
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %8, i8 0, i64 25, i1 false)
  %9 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2)
          to label %10 unwind label %14

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %11 = load ptr, ptr %5, align 8, !tbaa !68
  store ptr %9, ptr %4, align 8, !tbaa !85
  %12 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0)
          to label %13 unwind label %18

13:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_76XMLURL5parseEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %9)
          to label %31 unwind label %18

14:                                               ; preds = %3
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  br label %37

18:                                               ; preds = %13, %10
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = extractvalue { ptr, i32 } %19, 1
  %22 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = tail call ptr @__cxa_begin_catch(ptr %20) #14
  invoke void @__cxa_rethrow() #15
          to label %56 unwind label %26

26:                                               ; preds = %24
  %27 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %28 unwind label %53

28:                                               ; preds = %26
  %29 = extractvalue { ptr, i32 } %27, 1
  %30 = extractvalue { ptr, i32 } %27, 0
  br label %32

31:                                               ; preds = %13
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void

32:                                               ; preds = %28, %18
  %33 = phi i64 [ 0, %28 ], [ ptrtoint (ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv to i64), %18 ]
  %34 = phi ptr [ null, %28 ], [ %0, %18 ]
  %35 = phi i32 [ %29, %28 ], [ %21, %18 ]
  %36 = phi ptr [ %30, %28 ], [ %20, %18 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  br label %37

37:                                               ; preds = %32, %14
  %38 = phi i64 [ %33, %32 ], [ ptrtoint (ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv to i64), %14 ]
  %39 = phi ptr [ %34, %32 ], [ %0, %14 ]
  %40 = phi i32 [ %35, %32 ], [ %17, %14 ]
  %41 = phi ptr [ %36, %32 ], [ %16, %14 ]
  %42 = icmp eq ptr %39, null
  %43 = icmp eq i64 %38, 0
  %44 = or i1 %43, %42
  br i1 %44, label %50, label %45

45:                                               ; preds = %37
  %46 = inttoptr i64 %38 to ptr
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(81) %39)
          to label %50 unwind label %47

47:                                               ; preds = %45
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #16
  unreachable

50:                                               ; preds = %37, %45
  %51 = insertvalue { ptr, i32 } poison, ptr %41, 0
  %52 = insertvalue { ptr, i32 } %51, i32 %40, 1
  resume { ptr, i32 } %52

53:                                               ; preds = %26
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  tail call void @__clang_call_terminate(ptr %55) #16
  unreachable

56:                                               ; preds = %24
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !68
  store ptr %5, ptr %3, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %12 = load i32, ptr %11, align 8, !tbaa !81
  store i32 %12, ptr %10, align 8, !tbaa !81
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !71
  store i32 %15, ptr %13, align 4, !tbaa !71
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 11
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  %20 = load i8, ptr %19, align 8, !tbaa !82, !range !93, !noundef !94
  store i8 %20, ptr %18, align 8, !tbaa !82
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = icmp eq ptr %22, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %2
  %25 = load i16, ptr %22, align 2, !tbaa !83
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %29, %27 ], [ %22, %24 ]
  %29 = getelementptr inbounds i16, ptr %28, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !83
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %27, !llvm.loop !95

32:                                               ; preds = %27
  %33 = ptrtoint ptr %29 to i64
  %34 = ptrtoint ptr %22 to i64
  %35 = sub i64 %33, %34
  %36 = add i64 %35, 2
  %37 = and i64 %36, 8589934590
  br label %38

38:                                               ; preds = %32, %24
  %39 = phi i64 [ %37, %32 ], [ 2, %24 ]
  %40 = load ptr, ptr %5, align 8, !tbaa !66
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %39)
          to label %44 unwind label %210

44:                                               ; preds = %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %43, ptr nonnull align 2 %22, i64 %39, i1 false)
  br label %45

45:                                               ; preds = %44, %2
  %46 = phi ptr [ %43, %44 ], [ null, %2 ]
  store ptr %46, ptr %6, align 8, !tbaa !73
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !75
  %49 = load ptr, ptr %3, align 8, !tbaa !68
  %50 = icmp eq ptr %48, null
  br i1 %50, label %72, label %51

51:                                               ; preds = %45
  %52 = load i16, ptr %48, align 2, !tbaa !83
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %51, %54
  %55 = phi ptr [ %56, %54 ], [ %48, %51 ]
  %56 = getelementptr inbounds i16, ptr %55, i64 1
  %57 = load i16, ptr %56, align 2, !tbaa !83
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %59, label %54, !llvm.loop !95

59:                                               ; preds = %54
  %60 = ptrtoint ptr %56 to i64
  %61 = ptrtoint ptr %48 to i64
  %62 = sub i64 %60, %61
  %63 = add i64 %62, 2
  %64 = and i64 %63, 8589934590
  br label %65

65:                                               ; preds = %59, %51
  %66 = phi i64 [ %64, %59 ], [ 2, %51 ]
  %67 = load ptr, ptr %49, align 8, !tbaa !66
  %68 = getelementptr inbounds ptr, ptr %67, i64 2
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %49, i64 noundef %66)
          to label %71 unwind label %210

71:                                               ; preds = %65
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %70, ptr nonnull align 2 %48, i64 %66, i1 false)
  br label %72

72:                                               ; preds = %71, %45
  %73 = phi ptr [ %70, %71 ], [ null, %45 ]
  store ptr %73, ptr %7, align 8, !tbaa !75
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !76
  %76 = load ptr, ptr %3, align 8, !tbaa !68
  %77 = icmp eq ptr %75, null
  br i1 %77, label %99, label %78

78:                                               ; preds = %72
  %79 = load i16, ptr %75, align 2, !tbaa !83
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %83, %81 ], [ %75, %78 ]
  %83 = getelementptr inbounds i16, ptr %82, i64 1
  %84 = load i16, ptr %83, align 2, !tbaa !83
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %81, !llvm.loop !95

86:                                               ; preds = %81
  %87 = ptrtoint ptr %83 to i64
  %88 = ptrtoint ptr %75 to i64
  %89 = sub i64 %87, %88
  %90 = add i64 %89, 2
  %91 = and i64 %90, 8589934590
  br label %92

92:                                               ; preds = %86, %78
  %93 = phi i64 [ %91, %86 ], [ 2, %78 ]
  %94 = load ptr, ptr %76, align 8, !tbaa !66
  %95 = getelementptr inbounds ptr, ptr %94, i64 2
  %96 = load ptr, ptr %95, align 8
  %97 = invoke noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(8) %76, i64 noundef %93)
          to label %98 unwind label %210

98:                                               ; preds = %92
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %97, ptr nonnull align 2 %75, i64 %93, i1 false)
  br label %99

99:                                               ; preds = %98, %72
  %100 = phi ptr [ %97, %98 ], [ null, %72 ]
  store ptr %100, ptr %8, align 8, !tbaa !76
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 5
  %102 = load ptr, ptr %101, align 8, !tbaa !77
  %103 = load ptr, ptr %3, align 8, !tbaa !68
  %104 = icmp eq ptr %102, null
  br i1 %104, label %126, label %105

105:                                              ; preds = %99
  %106 = load i16, ptr %102, align 2, !tbaa !83
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %105, %108
  %109 = phi ptr [ %110, %108 ], [ %102, %105 ]
  %110 = getelementptr inbounds i16, ptr %109, i64 1
  %111 = load i16, ptr %110, align 2, !tbaa !83
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %113, label %108, !llvm.loop !95

113:                                              ; preds = %108
  %114 = ptrtoint ptr %110 to i64
  %115 = ptrtoint ptr %102 to i64
  %116 = sub i64 %114, %115
  %117 = add i64 %116, 2
  %118 = and i64 %117, 8589934590
  br label %119

119:                                              ; preds = %113, %105
  %120 = phi i64 [ %118, %113 ], [ 2, %105 ]
  %121 = load ptr, ptr %103, align 8, !tbaa !66
  %122 = getelementptr inbounds ptr, ptr %121, i64 2
  %123 = load ptr, ptr %122, align 8
  %124 = invoke noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(8) %103, i64 noundef %120)
          to label %125 unwind label %210

125:                                              ; preds = %119
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %124, ptr nonnull align 2 %102, i64 %120, i1 false)
  br label %126

126:                                              ; preds = %125, %99
  %127 = phi ptr [ %124, %125 ], [ null, %99 ]
  store ptr %127, ptr %9, align 8, !tbaa !77
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 8
  %129 = load ptr, ptr %128, align 8, !tbaa !78
  %130 = load ptr, ptr %3, align 8, !tbaa !68
  %131 = icmp eq ptr %129, null
  br i1 %131, label %153, label %132

132:                                              ; preds = %126
  %133 = load i16, ptr %129, align 2, !tbaa !83
  %134 = icmp eq i16 %133, 0
  br i1 %134, label %146, label %135

135:                                              ; preds = %132, %135
  %136 = phi ptr [ %137, %135 ], [ %129, %132 ]
  %137 = getelementptr inbounds i16, ptr %136, i64 1
  %138 = load i16, ptr %137, align 2, !tbaa !83
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %140, label %135, !llvm.loop !95

140:                                              ; preds = %135
  %141 = ptrtoint ptr %137 to i64
  %142 = ptrtoint ptr %129 to i64
  %143 = sub i64 %141, %142
  %144 = add i64 %143, 2
  %145 = and i64 %144, 8589934590
  br label %146

146:                                              ; preds = %140, %132
  %147 = phi i64 [ %145, %140 ], [ 2, %132 ]
  %148 = load ptr, ptr %130, align 8, !tbaa !66
  %149 = getelementptr inbounds ptr, ptr %148, i64 2
  %150 = load ptr, ptr %149, align 8
  %151 = invoke noundef ptr %150(ptr noundef nonnull align 8 dereferenceable(8) %130, i64 noundef %147)
          to label %152 unwind label %210

152:                                              ; preds = %146
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %151, ptr nonnull align 2 %129, i64 %147, i1 false)
  br label %153

153:                                              ; preds = %152, %126
  %154 = phi ptr [ %151, %152 ], [ null, %126 ]
  store ptr %154, ptr %16, align 8, !tbaa !78
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 9
  %156 = load ptr, ptr %155, align 8, !tbaa !79
  %157 = load ptr, ptr %3, align 8, !tbaa !68
  %158 = icmp eq ptr %156, null
  br i1 %158, label %180, label %159

159:                                              ; preds = %153
  %160 = load i16, ptr %156, align 2, !tbaa !83
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %159, %162
  %163 = phi ptr [ %164, %162 ], [ %156, %159 ]
  %164 = getelementptr inbounds i16, ptr %163, i64 1
  %165 = load i16, ptr %164, align 2, !tbaa !83
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %167, label %162, !llvm.loop !95

167:                                              ; preds = %162
  %168 = ptrtoint ptr %164 to i64
  %169 = ptrtoint ptr %156 to i64
  %170 = sub i64 %168, %169
  %171 = add i64 %170, 2
  %172 = and i64 %171, 8589934590
  br label %173

173:                                              ; preds = %167, %159
  %174 = phi i64 [ %172, %167 ], [ 2, %159 ]
  %175 = load ptr, ptr %157, align 8, !tbaa !66
  %176 = getelementptr inbounds ptr, ptr %175, i64 2
  %177 = load ptr, ptr %176, align 8
  %178 = invoke noundef ptr %177(ptr noundef nonnull align 8 dereferenceable(8) %157, i64 noundef %174)
          to label %179 unwind label %210

179:                                              ; preds = %173
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %178, ptr nonnull align 2 %156, i64 %174, i1 false)
  br label %180

180:                                              ; preds = %179, %153
  %181 = phi ptr [ %178, %179 ], [ null, %153 ]
  store ptr %181, ptr %17, align 8, !tbaa !79
  %182 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 10
  %183 = load ptr, ptr %182, align 8, !tbaa !80
  %184 = load ptr, ptr %3, align 8, !tbaa !68
  %185 = icmp eq ptr %183, null
  br i1 %185, label %207, label %186

186:                                              ; preds = %180
  %187 = load i16, ptr %183, align 2, !tbaa !83
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %200, label %189

189:                                              ; preds = %186, %189
  %190 = phi ptr [ %191, %189 ], [ %183, %186 ]
  %191 = getelementptr inbounds i16, ptr %190, i64 1
  %192 = load i16, ptr %191, align 2, !tbaa !83
  %193 = icmp eq i16 %192, 0
  br i1 %193, label %194, label %189, !llvm.loop !95

194:                                              ; preds = %189
  %195 = ptrtoint ptr %191 to i64
  %196 = ptrtoint ptr %183 to i64
  %197 = sub i64 %195, %196
  %198 = add i64 %197, 2
  %199 = and i64 %198, 8589934590
  br label %200

200:                                              ; preds = %194, %186
  %201 = phi i64 [ %199, %194 ], [ 2, %186 ]
  %202 = load ptr, ptr %184, align 8, !tbaa !66
  %203 = getelementptr inbounds ptr, ptr %202, i64 2
  %204 = load ptr, ptr %203, align 8
  %205 = invoke noundef ptr %204(ptr noundef nonnull align 8 dereferenceable(8) %184, i64 noundef %201)
          to label %206 unwind label %210

206:                                              ; preds = %200
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %205, ptr nonnull align 2 %183, i64 %201, i1 false)
  br label %207

207:                                              ; preds = %206, %180
  %208 = phi ptr [ %205, %206 ], [ null, %180 ]
  %209 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 10
  store ptr %208, ptr %209, align 8, !tbaa !80
  ret void

210:                                              ; preds = %200, %173, %146, %119, %92, %65, %38
  %211 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %212 = extractvalue { ptr, i32 } %211, 1
  %213 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = extractvalue { ptr, i32 } %211, 0
  %217 = tail call ptr @__cxa_begin_catch(ptr %216) #14
  invoke void @__cxa_rethrow() #15
          to label %234 unwind label %218

218:                                              ; preds = %215
  %219 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %220 unwind label %231

220:                                              ; preds = %218, %210
  %221 = phi ptr [ null, %218 ], [ @_ZN11xercesc_2_76XMLURL7cleanUpEv, %210 ]
  %222 = phi ptr [ null, %218 ], [ %0, %210 ]
  %223 = phi { ptr, i32 } [ %219, %218 ], [ %211, %210 ]
  %224 = icmp eq ptr %222, null
  %225 = or i1 %214, %224
  br i1 %225, label %230, label %226

226:                                              ; preds = %220
  invoke void %221(ptr noundef nonnull align 8 dereferenceable(81) %222)
          to label %230 unwind label %227

227:                                              ; preds = %226
  %228 = landingpad { ptr, i32 }
          catch ptr null
  %229 = extractvalue { ptr, i32 } %228, 0
  tail call void @__clang_call_terminate(ptr %229) #16
  unreachable

230:                                              ; preds = %220, %226
  resume { ptr, i32 } %223

231:                                              ; preds = %218
  %232 = landingpad { ptr, i32 }
          catch ptr null
  %233 = extractvalue { ptr, i32 } %232, 0
  tail call void @__clang_call_terminate(ptr %233) #16
  unreachable

234:                                              ; preds = %215
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0)
          to label %2 unwind label %3, !prof !96

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_76XMLURLD0Ev(ptr noundef nonnull align 8 dereferenceable(81) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0)
          to label %5 unwind label %2

2:                                                ; preds = %1
  %3 = landingpad { ptr, i32 }
          catch ptr null
  %4 = extractvalue { ptr, i32 } %3, 0
  tail call void @__clang_call_terminate(ptr %4) #16
  unreachable

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(81) ptr @_ZN11xercesc_2_76XMLURLaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(81) %0, ptr noundef nonnull readonly align 8 dereferenceable(81) %1) local_unnamed_addr #0 align 2 !prof !53 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %205, label %4

4:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0)
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !68
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %4
  %12 = load i16, ptr %9, align 2, !tbaa !83
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %16, %14 ], [ %9, %11 ]
  %16 = getelementptr inbounds i16, ptr %15, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !83
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %14, !llvm.loop !95

19:                                               ; preds = %14
  %20 = ptrtoint ptr %16 to i64
  %21 = ptrtoint ptr %9 to i64
  %22 = sub i64 %20, %21
  %23 = add i64 %22, 2
  %24 = and i64 %23, 8589934590
  br label %25

25:                                               ; preds = %19, %11
  %26 = phi i64 [ %24, %19 ], [ 2, %11 ]
  %27 = load ptr, ptr %6, align 8, !tbaa !66
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %26)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %30, ptr nonnull align 2 %9, i64 %26, i1 false)
  br label %31

31:                                               ; preds = %4, %25
  %32 = phi ptr [ %30, %25 ], [ null, %4 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  store ptr %32, ptr %33, align 8, !tbaa !73
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !75
  %36 = load ptr, ptr %7, align 8, !tbaa !68
  %37 = icmp eq ptr %35, null
  br i1 %37, label %58, label %38

38:                                               ; preds = %31
  %39 = load i16, ptr %35, align 2, !tbaa !83
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %38, %41
  %42 = phi ptr [ %43, %41 ], [ %35, %38 ]
  %43 = getelementptr inbounds i16, ptr %42, i64 1
  %44 = load i16, ptr %43, align 2, !tbaa !83
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %41, !llvm.loop !95

46:                                               ; preds = %41
  %47 = ptrtoint ptr %43 to i64
  %48 = ptrtoint ptr %35 to i64
  %49 = sub i64 %47, %48
  %50 = add i64 %49, 2
  %51 = and i64 %50, 8589934590
  br label %52

52:                                               ; preds = %46, %38
  %53 = phi i64 [ %51, %46 ], [ 2, %38 ]
  %54 = load ptr, ptr %36, align 8, !tbaa !66
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %53)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %57, ptr nonnull align 2 %35, i64 %53, i1 false)
  br label %58

58:                                               ; preds = %31, %52
  %59 = phi ptr [ %57, %52 ], [ null, %31 ]
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  store ptr %59, ptr %60, align 8, !tbaa !75
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !76
  %63 = load ptr, ptr %7, align 8, !tbaa !68
  %64 = icmp eq ptr %62, null
  br i1 %64, label %85, label %65

65:                                               ; preds = %58
  %66 = load i16, ptr %62, align 2, !tbaa !83
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %65, %68
  %69 = phi ptr [ %70, %68 ], [ %62, %65 ]
  %70 = getelementptr inbounds i16, ptr %69, i64 1
  %71 = load i16, ptr %70, align 2, !tbaa !83
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %68, !llvm.loop !95

73:                                               ; preds = %68
  %74 = ptrtoint ptr %70 to i64
  %75 = ptrtoint ptr %62 to i64
  %76 = sub i64 %74, %75
  %77 = add i64 %76, 2
  %78 = and i64 %77, 8589934590
  br label %79

79:                                               ; preds = %73, %65
  %80 = phi i64 [ %78, %73 ], [ 2, %65 ]
  %81 = load ptr, ptr %63, align 8, !tbaa !66
  %82 = getelementptr inbounds ptr, ptr %81, i64 2
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %63, i64 noundef %80)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %84, ptr nonnull align 2 %62, i64 %80, i1 false)
  br label %85

85:                                               ; preds = %58, %79
  %86 = phi ptr [ %84, %79 ], [ null, %58 ]
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  store ptr %86, ptr %87, align 8, !tbaa !76
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 5
  %89 = load ptr, ptr %88, align 8, !tbaa !77
  %90 = load ptr, ptr %7, align 8, !tbaa !68
  %91 = icmp eq ptr %89, null
  br i1 %91, label %112, label %92

92:                                               ; preds = %85
  %93 = load i16, ptr %89, align 2, !tbaa !83
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %92, %95
  %96 = phi ptr [ %97, %95 ], [ %89, %92 ]
  %97 = getelementptr inbounds i16, ptr %96, i64 1
  %98 = load i16, ptr %97, align 2, !tbaa !83
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %100, label %95, !llvm.loop !95

100:                                              ; preds = %95
  %101 = ptrtoint ptr %97 to i64
  %102 = ptrtoint ptr %89 to i64
  %103 = sub i64 %101, %102
  %104 = add i64 %103, 2
  %105 = and i64 %104, 8589934590
  br label %106

106:                                              ; preds = %100, %92
  %107 = phi i64 [ %105, %100 ], [ 2, %92 ]
  %108 = load ptr, ptr %90, align 8, !tbaa !66
  %109 = getelementptr inbounds ptr, ptr %108, i64 2
  %110 = load ptr, ptr %109, align 8
  %111 = tail call noundef ptr %110(ptr noundef nonnull align 8 dereferenceable(8) %90, i64 noundef %107)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %111, ptr nonnull align 2 %89, i64 %107, i1 false)
  br label %112

112:                                              ; preds = %85, %106
  %113 = phi ptr [ %111, %106 ], [ null, %85 ]
  %114 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  store ptr %113, ptr %114, align 8, !tbaa !77
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 6
  %116 = load i32, ptr %115, align 8, !tbaa !81
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  store i32 %116, ptr %117, align 8, !tbaa !81
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 7
  %119 = load i32, ptr %118, align 4, !tbaa !71
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  store i32 %119, ptr %120, align 4, !tbaa !71
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 8
  %122 = load ptr, ptr %121, align 8, !tbaa !78
  %123 = load ptr, ptr %7, align 8, !tbaa !68
  %124 = icmp eq ptr %122, null
  br i1 %124, label %145, label %125

125:                                              ; preds = %112
  %126 = load i16, ptr %122, align 2, !tbaa !83
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %125, %128
  %129 = phi ptr [ %130, %128 ], [ %122, %125 ]
  %130 = getelementptr inbounds i16, ptr %129, i64 1
  %131 = load i16, ptr %130, align 2, !tbaa !83
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %128, !llvm.loop !95

133:                                              ; preds = %128
  %134 = ptrtoint ptr %130 to i64
  %135 = ptrtoint ptr %122 to i64
  %136 = sub i64 %134, %135
  %137 = add i64 %136, 2
  %138 = and i64 %137, 8589934590
  br label %139

139:                                              ; preds = %133, %125
  %140 = phi i64 [ %138, %133 ], [ 2, %125 ]
  %141 = load ptr, ptr %123, align 8, !tbaa !66
  %142 = getelementptr inbounds ptr, ptr %141, i64 2
  %143 = load ptr, ptr %142, align 8
  %144 = tail call noundef ptr %143(ptr noundef nonnull align 8 dereferenceable(8) %123, i64 noundef %140)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %144, ptr nonnull align 2 %122, i64 %140, i1 false)
  br label %145

145:                                              ; preds = %112, %139
  %146 = phi ptr [ %144, %139 ], [ null, %112 ]
  %147 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  store ptr %146, ptr %147, align 8, !tbaa !78
  %148 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 9
  %149 = load ptr, ptr %148, align 8, !tbaa !79
  %150 = load ptr, ptr %7, align 8, !tbaa !68
  %151 = icmp eq ptr %149, null
  br i1 %151, label %172, label %152

152:                                              ; preds = %145
  %153 = load i16, ptr %149, align 2, !tbaa !83
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %166, label %155

155:                                              ; preds = %152, %155
  %156 = phi ptr [ %157, %155 ], [ %149, %152 ]
  %157 = getelementptr inbounds i16, ptr %156, i64 1
  %158 = load i16, ptr %157, align 2, !tbaa !83
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %160, label %155, !llvm.loop !95

160:                                              ; preds = %155
  %161 = ptrtoint ptr %157 to i64
  %162 = ptrtoint ptr %149 to i64
  %163 = sub i64 %161, %162
  %164 = add i64 %163, 2
  %165 = and i64 %164, 8589934590
  br label %166

166:                                              ; preds = %160, %152
  %167 = phi i64 [ %165, %160 ], [ 2, %152 ]
  %168 = load ptr, ptr %150, align 8, !tbaa !66
  %169 = getelementptr inbounds ptr, ptr %168, i64 2
  %170 = load ptr, ptr %169, align 8
  %171 = tail call noundef ptr %170(ptr noundef nonnull align 8 dereferenceable(8) %150, i64 noundef %167)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %171, ptr nonnull align 2 %149, i64 %167, i1 false)
  br label %172

172:                                              ; preds = %145, %166
  %173 = phi ptr [ %171, %166 ], [ null, %145 ]
  %174 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  store ptr %173, ptr %174, align 8, !tbaa !79
  %175 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 10
  %176 = load ptr, ptr %175, align 8, !tbaa !80
  %177 = load ptr, ptr %7, align 8, !tbaa !68
  %178 = icmp eq ptr %176, null
  br i1 %178, label %199, label %179

179:                                              ; preds = %172
  %180 = load i16, ptr %176, align 2, !tbaa !83
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %179, %182
  %183 = phi ptr [ %184, %182 ], [ %176, %179 ]
  %184 = getelementptr inbounds i16, ptr %183, i64 1
  %185 = load i16, ptr %184, align 2, !tbaa !83
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %182, !llvm.loop !95

187:                                              ; preds = %182
  %188 = ptrtoint ptr %184 to i64
  %189 = ptrtoint ptr %176 to i64
  %190 = sub i64 %188, %189
  %191 = add i64 %190, 2
  %192 = and i64 %191, 8589934590
  br label %193

193:                                              ; preds = %187, %179
  %194 = phi i64 [ %192, %187 ], [ 2, %179 ]
  %195 = load ptr, ptr %177, align 8, !tbaa !66
  %196 = getelementptr inbounds ptr, ptr %195, i64 2
  %197 = load ptr, ptr %196, align 8
  %198 = tail call noundef ptr %197(ptr noundef nonnull align 8 dereferenceable(8) %177, i64 noundef %194)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %198, ptr nonnull align 2 %176, i64 %194, i1 false)
  br label %199

199:                                              ; preds = %172, %193
  %200 = phi ptr [ %198, %193 ], [ null, %172 ]
  %201 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 10
  store ptr %200, ptr %201, align 8, !tbaa !80
  %202 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 11
  %203 = load i8, ptr %202, align 8, !tbaa !82, !range !93, !noundef !94
  %204 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 11
  store i8 %203, ptr %204, align 8, !tbaa !82
  br label %205

205:                                              ; preds = %2, %199
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76XMLURLeqERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0, ptr nocapture noundef nonnull align 8 dereferenceable(81) %1) local_unnamed_addr #0 align 2 !prof !53 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_76XMLURL13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(81) %0)
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %3, align 8, !tbaa !80
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_76XMLURL13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(81) %1)
  br label %13

13:                                               ; preds = %7, %12
  %14 = load ptr, ptr %9, align 8, !tbaa !80
  %15 = icmp eq ptr %8, null
  %16 = icmp eq ptr %14, null
  %17 = or i1 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i16, ptr %8, align 2, !tbaa !83
  %20 = load i16, ptr %14, align 2, !tbaa !83
  %21 = icmp eq i16 %19, %20
  br i1 %21, label %31, label %42

22:                                               ; preds = %13
  br i1 %15, label %26, label %23

23:                                               ; preds = %22
  %24 = load i16, ptr %8, align 2, !tbaa !83
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %23, %22
  br i1 %16, label %30, label %27

27:                                               ; preds = %26
  %28 = load i16, ptr %14, align 2, !tbaa !83
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %27, %26
  br label %42

31:                                               ; preds = %18, %36
  %32 = phi i16 [ %39, %36 ], [ %19, %18 ]
  %33 = phi ptr [ %38, %36 ], [ %14, %18 ]
  %34 = phi ptr [ %37, %36 ], [ %8, %18 ]
  %35 = icmp eq i16 %32, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds i16, ptr %34, i64 1
  %38 = getelementptr inbounds i16, ptr %33, i64 1
  %39 = load i16, ptr %37, align 2, !tbaa !83
  %40 = load i16, ptr %38, align 2, !tbaa !83
  %41 = icmp eq i16 %39, %40
  br i1 %41, label %31, label %42, !llvm.loop !97

42:                                               ; preds = %31, %36, %18, %23, %27, %30
  %43 = phi i1 [ true, %30 ], [ false, %27 ], [ false, %23 ], [ false, %18 ], [ %35, %36 ], [ %35, %31 ]
  ret i1 %43
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_76XMLURL10getPortNumEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %0) local_unnamed_addr #9 align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !81
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !71
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds [3 x %"struct.xercesc_2_7::ProtoEntry"], ptr @_ZN11xercesc_2_7L10gProtoListE, i64 0, i64 %10, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !98
  br label %13

13:                                               ; preds = %1, %5, %9
  %14 = phi i32 [ %12, %9 ], [ 0, %5 ], [ %3, %1 ]
  ret i32 %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_76XMLURL15getProtocolNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !71
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 471, i32 noundef 103, ptr noundef %8)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  ret ptr %15
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL5parseEPKt(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !92 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = load i16, ptr %1, align 2, !tbaa !83
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %13, !prof !99

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 915, i32 noundef 103, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  br label %533

13:                                               ; preds = %2
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11isURIStringEPKt(ptr noundef nonnull %1)
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 11
  %16 = xor i1 %14, true
  %17 = zext i1 %16 to i8
  store i8 %17, ptr %15, align 8, !tbaa !82
  %18 = load i16, ptr %1, align 2, !tbaa !83
  %19 = and i16 %18, -33
  %20 = add i16 %19, -65
  %21 = icmp ult i16 %20, 26
  br i1 %21, label %22, label %36, !prof !100

22:                                               ; preds = %13
  %23 = getelementptr inbounds i16, ptr %1, i64 1
  %24 = load i16, ptr %23, align 2, !tbaa !83
  %25 = icmp eq i16 %24, 58
  br i1 %25, label %26, label %36, !prof !99

26:                                               ; preds = %22
  %27 = getelementptr inbounds i16, ptr %1, i64 2
  %28 = load i16, ptr %27, align 2, !tbaa !83
  switch i16 %28, label %36 [
    i16 47, label %29
    i16 92, label %29
  ]

29:                                               ; preds = %26, %26
  %30 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef nonnull @.str, i32 noundef 936, i32 noundef 103, ptr noundef %32)
          to label %33 unwind label %34

33:                                               ; preds = %29
  tail call void @__cxa_throw(ptr nonnull %30, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

34:                                               ; preds = %29
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %30) #14
  br label %533

36:                                               ; preds = %13, %26, %22
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !68
  %39 = icmp eq i16 %18, 0
  br i1 %39, label %51, label %40, !prof !99

40:                                               ; preds = %36, %40
  %41 = phi ptr [ %42, %40 ], [ %1, %36 ]
  %42 = getelementptr inbounds i16, ptr %41, i64 1
  %43 = load i16, ptr %42, align 2, !tbaa !83
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %40, !prof !101, !llvm.loop !95

45:                                               ; preds = %40
  %46 = ptrtoint ptr %42 to i64
  %47 = ptrtoint ptr %1 to i64
  %48 = sub i64 %46, %47
  %49 = add i64 %48, 2
  %50 = and i64 %49, 8589934590
  br label %51

51:                                               ; preds = %45, %36
  %52 = phi i64 [ %50, %45 ], [ 2, %36 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !66
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef %52), !prof !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %56, ptr nonnull align 2 %1, i64 %52, i1 false), !prof !103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %57 = load ptr, ptr %37, align 8, !tbaa !68
  store ptr %56, ptr %3, align 8, !tbaa !85
  %58 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !87
  %59 = load i16, ptr %56, align 2, !tbaa !83
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %81, label %61, !prof !104

61:                                               ; preds = %51
  %62 = zext i16 %59 to i64
  %63 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !105
  %65 = icmp slt i8 %64, 0
  br i1 %65, label %73, label %78, !prof !104

66:                                               ; preds = %73
  %67 = zext i16 %76 to i64
  %68 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !105
  %70 = icmp slt i8 %69, 0
  br i1 %70, label %73, label %78, !prof !104, !llvm.loop !106

71:                                               ; preds = %84
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %531

73:                                               ; preds = %61, %66
  %74 = phi ptr [ %75, %66 ], [ %56, %61 ]
  %75 = getelementptr inbounds i16, ptr %74, i64 1
  %76 = load i16, ptr %75, align 2, !tbaa !83
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %81, label %66, !prof !99, !llvm.loop !106

78:                                               ; preds = %66, %61
  %79 = phi i1 [ %60, %61 ], [ %77, %66 ]
  %80 = phi ptr [ %56, %61 ], [ %75, %66 ]
  br i1 %79, label %81, label %87, !prof !99

81:                                               ; preds = %73, %51, %78
  %82 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %83 = load ptr, ptr %37, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %82, ptr noundef nonnull @.str, i32 noundef 961, i32 noundef 103, ptr noundef %83)
          to label %84 unwind label %85

84:                                               ; preds = %81
  invoke void @__cxa_throw(ptr nonnull %82, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %535 unwind label %71

85:                                               ; preds = %81
  %86 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %82) #14
  br label %531

87:                                               ; preds = %78
  %88 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %80, ptr noundef nonnull @_ZN11xercesc_2_7L8gListOneE)
          to label %89 unwind label %118, !prof !107

89:                                               ; preds = %87
  %90 = icmp eq ptr %88, null
  br i1 %90, label %128, label %91, !prof !99

91:                                               ; preds = %89
  %92 = load i16, ptr %88, align 2, !tbaa !83
  %93 = icmp eq i16 %92, 58
  br i1 %93, label %94, label %128, !prof !107

94:                                               ; preds = %91
  store i16 0, ptr %88, align 2, !tbaa !83
  br label %98

95:                                               ; preds = %103
  %96 = add nuw nsw i64 %99, 1
  %97 = icmp eq i64 %96, 3
  br i1 %97, label %108, label %98, !prof !99, !llvm.loop !54

98:                                               ; preds = %94, %95
  %99 = phi i64 [ 0, %94 ], [ %96, %95 ]
  %100 = getelementptr inbounds [3 x %"struct.xercesc_2_7::ProtoEntry"], ptr @_ZN11xercesc_2_7L10gProtoListE, i64 0, i64 %99, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !57
  %102 = invoke noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef nonnull %80, ptr noundef %101)
          to label %103 unwind label %120, !prof !107

103:                                              ; preds = %98
  %104 = icmp eq i32 %102, 0
  br i1 %104, label %105, label %95, !prof !107

105:                                              ; preds = %103
  %106 = getelementptr inbounds [3 x %"struct.xercesc_2_7::ProtoEntry"], ptr @_ZN11xercesc_2_7L10gProtoListE, i64 0, i64 %99
  %107 = load i32, ptr %106, align 8, !tbaa !64
  br label %108

108:                                              ; preds = %95, %105
  %109 = phi i32 [ %107, %105 ], [ 4, %95 ]
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  store i32 %109, ptr %110, align 4, !tbaa !71
  %111 = icmp eq i32 %109, 4
  br i1 %111, label %112, label %126, !prof !99

112:                                              ; preds = %108
  %113 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %114 = load ptr, ptr %37, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %113, ptr noundef nonnull @.str, i32 noundef 990, i32 noundef 101, ptr noundef nonnull %80, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %114)
          to label %115 unwind label %124

115:                                              ; preds = %112, %327, %226
  %116 = phi ptr [ %227, %226 ], [ %328, %327 ], [ %113, %112 ]
  invoke void @__cxa_throw(ptr nonnull %116, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %117 unwind label %122

117:                                              ; preds = %115
  unreachable

118:                                              ; preds = %87
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %531

120:                                              ; preds = %98
  %121 = landingpad { ptr, i32 }
          cleanup
  br label %531

122:                                              ; preds = %115, %140, %146, %153, %175, %236, %240, %272, %281, %286, %316, %321, %336, %345, %349, %380, %387, %413, %443, %446, %477, %500, %197, %265, %309, %371, %436, %470, %523
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %531

124:                                              ; preds = %112
  %125 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %113) #14
  br label %531

126:                                              ; preds = %108
  %127 = getelementptr inbounds i16, ptr %88, i64 1
  br label %128

128:                                              ; preds = %91, %126, %89
  %129 = phi ptr [ %127, %126 ], [ %80, %91 ], [ %80, %89 ]
  %130 = load i16, ptr %129, align 2, !tbaa !83
  %131 = icmp eq i16 %130, 47
  br i1 %131, label %132, label %222, !prof !107

132:                                              ; preds = %128
  %133 = getelementptr inbounds i16, ptr %129, i64 1
  %134 = load i16, ptr %133, align 2, !tbaa !83
  %135 = icmp eq i16 %134, 47
  br i1 %135, label %136, label %222, !prof !107

136:                                              ; preds = %132
  %137 = getelementptr inbounds i16, ptr %129, i64 2
  %138 = load i16, ptr %137, align 2, !tbaa !83
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %231, label %140, !prof !99

140:                                              ; preds = %136
  %141 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %137, ptr noundef nonnull @_ZN11xercesc_2_7L9gListFourE)
          to label %142 unwind label %122, !prof !107

142:                                              ; preds = %140
  %143 = icmp eq ptr %141, null
  br i1 %143, label %175, label %144, !prof !99

144:                                              ; preds = %142
  %145 = icmp eq ptr %141, %137
  br i1 %145, label %231, label %146, !prof !107

146:                                              ; preds = %144
  %147 = load ptr, ptr %37, align 8, !tbaa !68
  %148 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %149 = load ptr, ptr %148, align 8, !tbaa !75
  %150 = load ptr, ptr %147, align 8, !tbaa !66
  %151 = getelementptr inbounds ptr, ptr %150, i64 3
  %152 = load ptr, ptr %151, align 8
  invoke void %152(ptr noundef nonnull align 8 dereferenceable(8) %147, ptr noundef %149)
          to label %153 unwind label %122

153:                                              ; preds = %146
  %154 = load ptr, ptr %37, align 8, !tbaa !68
  %155 = ptrtoint ptr %141 to i64
  %156 = ptrtoint ptr %137 to i64
  %157 = sub i64 %155, %156
  %158 = add i64 %157, 2
  %159 = load ptr, ptr %154, align 8, !tbaa !66
  %160 = getelementptr inbounds ptr, ptr %159, i64 2
  %161 = load ptr, ptr %160, align 8
  %162 = invoke noundef ptr %161(ptr noundef nonnull align 8 dereferenceable(8) %154, i64 noundef %158)
          to label %163 unwind label %122

163:                                              ; preds = %153
  store ptr %162, ptr %148, align 8, !tbaa !75
  %164 = icmp ult ptr %137, %141
  br i1 %164, label %165, label %172

165:                                              ; preds = %163, %165
  %166 = phi ptr [ %170, %165 ], [ %162, %163 ]
  %167 = phi ptr [ %168, %165 ], [ %137, %163 ]
  %168 = getelementptr inbounds i16, ptr %167, i64 1
  %169 = load i16, ptr %167, align 2, !tbaa !83
  %170 = getelementptr inbounds i16, ptr %166, i64 1
  store i16 %169, ptr %166, align 2, !tbaa !83
  %171 = icmp ult ptr %168, %141
  br i1 %171, label %165, label %172, !llvm.loop !108

172:                                              ; preds = %165, %163
  %173 = phi ptr [ %137, %163 ], [ %168, %165 ]
  %174 = phi ptr [ %162, %163 ], [ %170, %165 ]
  store i16 0, ptr %174, align 2, !tbaa !83
  br label %231

175:                                              ; preds = %142
  %176 = load ptr, ptr %37, align 8, !tbaa !68
  %177 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !75
  %179 = load ptr, ptr %176, align 8, !tbaa !66
  %180 = getelementptr inbounds ptr, ptr %179, i64 3
  %181 = load ptr, ptr %180, align 8
  invoke void %181(ptr noundef nonnull align 8 dereferenceable(8) %176, ptr noundef %178)
          to label %182 unwind label %122

182:                                              ; preds = %175
  %183 = load ptr, ptr %37, align 8, !tbaa !68
  %184 = load i16, ptr %137, align 2, !tbaa !83
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %197, label %186

186:                                              ; preds = %182, %186
  %187 = phi ptr [ %188, %186 ], [ %137, %182 ]
  %188 = getelementptr inbounds i16, ptr %187, i64 1
  %189 = load i16, ptr %188, align 2, !tbaa !83
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %191, label %186, !llvm.loop !95

191:                                              ; preds = %186
  %192 = ptrtoint ptr %188 to i64
  %193 = ptrtoint ptr %137 to i64
  %194 = sub i64 %192, %193
  %195 = add i64 %194, 2
  %196 = and i64 %195, 8589934590
  br label %197

197:                                              ; preds = %191, %182
  %198 = phi i64 [ %196, %191 ], [ 2, %182 ]
  %199 = load ptr, ptr %183, align 8, !tbaa !66
  %200 = getelementptr inbounds ptr, ptr %199, i64 2
  %201 = load ptr, ptr %200, align 8
  %202 = invoke noundef ptr %201(ptr noundef nonnull align 8 dereferenceable(8) %183, i64 noundef %198)
          to label %203 unwind label %122

203:                                              ; preds = %197
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %202, ptr nonnull align 2 %137, i64 %198, i1 false)
  store ptr %202, ptr %177, align 8, !tbaa !75
  %204 = icmp eq ptr %202, null
  br i1 %204, label %218, label %205

205:                                              ; preds = %203
  %206 = load i16, ptr %202, align 2, !tbaa !83
  %207 = icmp eq i16 %206, 0
  br i1 %207, label %218, label %208

208:                                              ; preds = %205, %208
  %209 = phi ptr [ %210, %208 ], [ %202, %205 ]
  %210 = getelementptr inbounds i16, ptr %209, i64 1
  %211 = load i16, ptr %210, align 2, !tbaa !83
  %212 = icmp eq i16 %211, 0
  br i1 %212, label %213, label %208, !llvm.loop !95

213:                                              ; preds = %208
  %214 = ptrtoint ptr %210 to i64
  %215 = ptrtoint ptr %202 to i64
  %216 = sub i64 %214, %215
  %217 = lshr exact i64 %216, 1
  br label %218

218:                                              ; preds = %203, %205, %213
  %219 = phi i64 [ %217, %213 ], [ 0, %205 ], [ 0, %203 ]
  %220 = and i64 %219, 4294967295
  %221 = getelementptr inbounds i16, ptr %137, i64 %220
  br label %231

222:                                              ; preds = %132, %128
  %223 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %224 = load i32, ptr %223, align 4, !tbaa !71
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %231

226:                                              ; preds = %222
  %227 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %228 = load ptr, ptr %37, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %227, ptr noundef nonnull @.str, i32 noundef 1059, i32 noundef 104, ptr noundef %228)
          to label %115 unwind label %229

229:                                              ; preds = %226
  %230 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %227) #14
  br label %531

231:                                              ; preds = %222, %136, %144, %172, %218
  %232 = phi ptr [ %173, %172 ], [ %137, %144 ], [ %221, %218 ], [ %137, %136 ], [ %129, %222 ]
  %233 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %234 = load ptr, ptr %233, align 8, !tbaa !75
  %235 = icmp eq ptr %234, null
  br i1 %235, label %342, label %236, !prof !107

236:                                              ; preds = %231
  %237 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %234, ptr noundef nonnull @_ZN11xercesc_2_7L8gListTwoE)
          to label %238 unwind label %122

238:                                              ; preds = %236
  %239 = icmp eq ptr %237, null
  br i1 %239, label %316, label %240

240:                                              ; preds = %238
  store i16 0, ptr %237, align 2, !tbaa !83
  %241 = load ptr, ptr %37, align 8, !tbaa !68
  %242 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  %243 = load ptr, ptr %242, align 8, !tbaa !79
  %244 = load ptr, ptr %241, align 8, !tbaa !66
  %245 = getelementptr inbounds ptr, ptr %244, i64 3
  %246 = load ptr, ptr %245, align 8
  invoke void %246(ptr noundef nonnull align 8 dereferenceable(8) %241, ptr noundef %243)
          to label %247 unwind label %122

247:                                              ; preds = %240
  %248 = load ptr, ptr %233, align 8, !tbaa !75
  %249 = load ptr, ptr %37, align 8, !tbaa !68
  %250 = icmp eq ptr %248, null
  br i1 %250, label %272, label %251

251:                                              ; preds = %247
  %252 = load i16, ptr %248, align 2, !tbaa !83
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %265, label %254

254:                                              ; preds = %251, %254
  %255 = phi ptr [ %256, %254 ], [ %248, %251 ]
  %256 = getelementptr inbounds i16, ptr %255, i64 1
  %257 = load i16, ptr %256, align 2, !tbaa !83
  %258 = icmp eq i16 %257, 0
  br i1 %258, label %259, label %254, !llvm.loop !95

259:                                              ; preds = %254
  %260 = ptrtoint ptr %256 to i64
  %261 = ptrtoint ptr %248 to i64
  %262 = sub i64 %260, %261
  %263 = add i64 %262, 2
  %264 = and i64 %263, 8589934590
  br label %265

265:                                              ; preds = %259, %251
  %266 = phi i64 [ %264, %259 ], [ 2, %251 ]
  %267 = load ptr, ptr %249, align 8, !tbaa !66
  %268 = getelementptr inbounds ptr, ptr %267, i64 2
  %269 = load ptr, ptr %268, align 8
  %270 = invoke noundef ptr %269(ptr noundef nonnull align 8 dereferenceable(8) %249, i64 noundef %266)
          to label %271 unwind label %122

271:                                              ; preds = %265
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %270, ptr nonnull align 2 %248, i64 %266, i1 false)
  br label %272

272:                                              ; preds = %271, %247
  %273 = phi ptr [ %270, %271 ], [ null, %247 ]
  store ptr %273, ptr %242, align 8, !tbaa !79
  %274 = getelementptr inbounds i16, ptr %237, i64 1
  %275 = load ptr, ptr %233, align 8, !tbaa !75
  %276 = ptrtoint ptr %274 to i64
  %277 = ptrtoint ptr %275 to i64
  %278 = sub i64 %276, %277
  %279 = lshr exact i64 %278, 1
  %280 = trunc i64 %279 to i32
  invoke void @_ZN11xercesc_2_79XMLString3cutEPtj(ptr noundef %275, i32 noundef %280)
          to label %281 unwind label %122

281:                                              ; preds = %272
  %282 = load ptr, ptr %242, align 8, !tbaa !79
  %283 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef %282, ptr noundef nonnull @_ZN11xercesc_2_7L10gListThreeE)
          to label %284 unwind label %122

284:                                              ; preds = %281
  %285 = icmp eq ptr %283, null
  br i1 %285, label %316, label %286

286:                                              ; preds = %284
  store i16 0, ptr %283, align 2, !tbaa !83
  %287 = load ptr, ptr %37, align 8, !tbaa !68
  %288 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  %289 = load ptr, ptr %288, align 8, !tbaa !76
  %290 = load ptr, ptr %287, align 8, !tbaa !66
  %291 = getelementptr inbounds ptr, ptr %290, i64 3
  %292 = load ptr, ptr %291, align 8
  invoke void %292(ptr noundef nonnull align 8 dereferenceable(8) %287, ptr noundef %289)
          to label %293 unwind label %122

293:                                              ; preds = %286
  %294 = getelementptr inbounds i16, ptr %283, i64 1
  %295 = load ptr, ptr %37, align 8, !tbaa !68
  %296 = load i16, ptr %294, align 2, !tbaa !83
  %297 = icmp eq i16 %296, 0
  br i1 %297, label %309, label %298

298:                                              ; preds = %293, %298
  %299 = phi ptr [ %300, %298 ], [ %294, %293 ]
  %300 = getelementptr inbounds i16, ptr %299, i64 1
  %301 = load i16, ptr %300, align 2, !tbaa !83
  %302 = icmp eq i16 %301, 0
  br i1 %302, label %303, label %298, !llvm.loop !95

303:                                              ; preds = %298
  %304 = ptrtoint ptr %300 to i64
  %305 = ptrtoint ptr %294 to i64
  %306 = sub i64 %304, %305
  %307 = add i64 %306, 2
  %308 = and i64 %307, 8589934590
  br label %309

309:                                              ; preds = %303, %293
  %310 = phi i64 [ %308, %303 ], [ 2, %293 ]
  %311 = load ptr, ptr %295, align 8, !tbaa !66
  %312 = getelementptr inbounds ptr, ptr %311, i64 2
  %313 = load ptr, ptr %312, align 8
  %314 = invoke noundef ptr %313(ptr noundef nonnull align 8 dereferenceable(8) %295, i64 noundef %310)
          to label %315 unwind label %122

315:                                              ; preds = %309
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %314, ptr nonnull align 2 %294, i64 %310, i1 false)
  store ptr %314, ptr %288, align 8, !tbaa !76
  br label %316

316:                                              ; preds = %284, %315, %238
  %317 = load ptr, ptr %233, align 8, !tbaa !75
  %318 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef %317, ptr noundef nonnull @_ZN11xercesc_2_7L10gListThreeE)
          to label %319 unwind label %122

319:                                              ; preds = %316
  %320 = icmp eq ptr %318, null
  br i1 %320, label %332, label %321

321:                                              ; preds = %319
  store i16 0, ptr %318, align 2, !tbaa !83
  %322 = getelementptr inbounds i16, ptr %318, i64 1
  %323 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  %324 = load ptr, ptr %37, align 8, !tbaa !68
  %325 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString9textToBinEPKtRjPNS_13MemoryManagerE(ptr noundef nonnull %322, ptr noundef nonnull align 4 dereferenceable(4) %323, ptr noundef %324)
          to label %326 unwind label %122

326:                                              ; preds = %321
  br i1 %325, label %332, label %327

327:                                              ; preds = %326
  %328 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %329 = load ptr, ptr %37, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %328, ptr noundef nonnull @.str, i32 noundef 1114, i32 noundef 109, ptr noundef %329)
          to label %115 unwind label %330

330:                                              ; preds = %327
  %331 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %328) #14
  br label %531

332:                                              ; preds = %326, %319
  %333 = load ptr, ptr %233, align 8, !tbaa !75
  %334 = load i16, ptr %333, align 2, !tbaa !83
  %335 = icmp eq i16 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %332
  %337 = load ptr, ptr %37, align 8, !tbaa !68
  %338 = load ptr, ptr %337, align 8, !tbaa !66
  %339 = getelementptr inbounds ptr, ptr %338, i64 3
  %340 = load ptr, ptr %339, align 8
  invoke void %340(ptr noundef nonnull align 8 dereferenceable(8) %337, ptr noundef nonnull %333)
          to label %341 unwind label %122

341:                                              ; preds = %336
  store ptr null, ptr %233, align 8, !tbaa !75
  br label %342

342:                                              ; preds = %332, %341, %231
  %343 = load i16, ptr %232, align 2, !tbaa !83
  %344 = icmp eq i16 %343, 0
  br i1 %344, label %530, label %345, !prof !99

345:                                              ; preds = %342
  %346 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %232, ptr noundef nonnull @_ZN11xercesc_2_7L9gListFiveE)
          to label %347 unwind label %122, !prof !107

347:                                              ; preds = %345
  %348 = icmp eq ptr %346, null
  br i1 %348, label %349, label %378, !prof !107

349:                                              ; preds = %347
  %350 = load ptr, ptr %37, align 8, !tbaa !68
  %351 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %352 = load ptr, ptr %351, align 8, !tbaa !77
  %353 = load ptr, ptr %350, align 8, !tbaa !66
  %354 = getelementptr inbounds ptr, ptr %353, i64 3
  %355 = load ptr, ptr %354, align 8
  invoke void %355(ptr noundef nonnull align 8 dereferenceable(8) %350, ptr noundef %352)
          to label %356 unwind label %122, !prof !109

356:                                              ; preds = %349
  %357 = load ptr, ptr %37, align 8, !tbaa !68
  %358 = load i16, ptr %232, align 2, !tbaa !83
  %359 = icmp eq i16 %358, 0
  br i1 %359, label %371, label %360, !prof !99

360:                                              ; preds = %356, %360
  %361 = phi ptr [ %362, %360 ], [ %232, %356 ]
  %362 = getelementptr inbounds i16, ptr %361, i64 1
  %363 = load i16, ptr %362, align 2, !tbaa !83
  %364 = icmp eq i16 %363, 0
  br i1 %364, label %365, label %360, !prof !110, !llvm.loop !95

365:                                              ; preds = %360
  %366 = ptrtoint ptr %362 to i64
  %367 = ptrtoint ptr %232 to i64
  %368 = sub i64 %366, %367
  %369 = add i64 %368, 2
  %370 = and i64 %369, 8589934590
  br label %371

371:                                              ; preds = %365, %356
  %372 = phi i64 [ %370, %365 ], [ 2, %356 ]
  %373 = load ptr, ptr %357, align 8, !tbaa !66
  %374 = getelementptr inbounds ptr, ptr %373, i64 2
  %375 = load ptr, ptr %374, align 8
  %376 = invoke noundef ptr %375(ptr noundef nonnull align 8 dereferenceable(8) %357, i64 noundef %372)
          to label %377 unwind label %122, !prof !102

377:                                              ; preds = %371
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %376, ptr nonnull align 2 %232, i64 %372, i1 false), !prof !103
  store ptr %376, ptr %351, align 8, !tbaa !77
  br label %530

378:                                              ; preds = %347
  %379 = icmp ugt ptr %346, %232
  br i1 %379, label %380, label %409

380:                                              ; preds = %378
  %381 = load ptr, ptr %37, align 8, !tbaa !68
  %382 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %383 = load ptr, ptr %382, align 8, !tbaa !77
  %384 = load ptr, ptr %381, align 8, !tbaa !66
  %385 = getelementptr inbounds ptr, ptr %384, i64 3
  %386 = load ptr, ptr %385, align 8
  invoke void %386(ptr noundef nonnull align 8 dereferenceable(8) %381, ptr noundef %383)
          to label %387 unwind label %122

387:                                              ; preds = %380
  %388 = load ptr, ptr %37, align 8, !tbaa !68
  %389 = ptrtoint ptr %346 to i64
  %390 = ptrtoint ptr %232 to i64
  %391 = sub i64 %389, %390
  %392 = add i64 %391, 2
  %393 = load ptr, ptr %388, align 8, !tbaa !66
  %394 = getelementptr inbounds ptr, ptr %393, i64 2
  %395 = load ptr, ptr %394, align 8
  %396 = invoke noundef ptr %395(ptr noundef nonnull align 8 dereferenceable(8) %388, i64 noundef %392)
          to label %397 unwind label %122

397:                                              ; preds = %387
  store ptr %396, ptr %382, align 8, !tbaa !77
  %398 = icmp ult ptr %232, %346
  br i1 %398, label %399, label %406

399:                                              ; preds = %397, %399
  %400 = phi ptr [ %404, %399 ], [ %396, %397 ]
  %401 = phi ptr [ %402, %399 ], [ %232, %397 ]
  %402 = getelementptr inbounds i16, ptr %401, i64 1
  %403 = load i16, ptr %401, align 2, !tbaa !83
  %404 = getelementptr inbounds i16, ptr %400, i64 1
  store i16 %403, ptr %400, align 2, !tbaa !83
  %405 = icmp ult ptr %402, %346
  br i1 %405, label %399, label %406, !llvm.loop !111

406:                                              ; preds = %399, %397
  %407 = phi ptr [ %232, %397 ], [ %402, %399 ]
  %408 = phi ptr [ %396, %397 ], [ %404, %399 ]
  store i16 0, ptr %408, align 2, !tbaa !83
  br label %409

409:                                              ; preds = %406, %378
  %410 = phi ptr [ %407, %406 ], [ %232, %378 ]
  %411 = load i16, ptr %410, align 2, !tbaa !83
  %412 = icmp eq i16 %411, 35
  br i1 %412, label %413, label %443

413:                                              ; preds = %409
  %414 = load ptr, ptr %37, align 8, !tbaa !68
  %415 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !73
  %417 = load ptr, ptr %414, align 8, !tbaa !66
  %418 = getelementptr inbounds ptr, ptr %417, i64 3
  %419 = load ptr, ptr %418, align 8
  invoke void %419(ptr noundef nonnull align 8 dereferenceable(8) %414, ptr noundef %416)
          to label %420 unwind label %122

420:                                              ; preds = %413
  %421 = getelementptr inbounds i16, ptr %410, i64 1
  %422 = load ptr, ptr %37, align 8, !tbaa !68
  %423 = load i16, ptr %421, align 2, !tbaa !83
  %424 = icmp eq i16 %423, 0
  br i1 %424, label %436, label %425

425:                                              ; preds = %420, %425
  %426 = phi ptr [ %427, %425 ], [ %421, %420 ]
  %427 = getelementptr inbounds i16, ptr %426, i64 1
  %428 = load i16, ptr %427, align 2, !tbaa !83
  %429 = icmp eq i16 %428, 0
  br i1 %429, label %430, label %425, !llvm.loop !95

430:                                              ; preds = %425
  %431 = ptrtoint ptr %427 to i64
  %432 = ptrtoint ptr %421 to i64
  %433 = sub i64 %431, %432
  %434 = add i64 %433, 2
  %435 = and i64 %434, 8589934590
  br label %436

436:                                              ; preds = %430, %420
  %437 = phi i64 [ %435, %430 ], [ 2, %420 ]
  %438 = load ptr, ptr %422, align 8, !tbaa !66
  %439 = getelementptr inbounds ptr, ptr %438, i64 2
  %440 = load ptr, ptr %439, align 8
  %441 = invoke noundef ptr %440(ptr noundef nonnull align 8 dereferenceable(8) %422, i64 noundef %437)
          to label %442 unwind label %122

442:                                              ; preds = %436
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %441, ptr nonnull align 2 %421, i64 %437, i1 false)
  store ptr %441, ptr %415, align 8, !tbaa !73
  br label %530

443:                                              ; preds = %409
  %444 = getelementptr inbounds i16, ptr %410, i64 1
  %445 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %444, ptr noundef nonnull @_ZN11xercesc_2_7L8gListSixE)
          to label %446 unwind label %122

446:                                              ; preds = %443
  %447 = load ptr, ptr %37, align 8, !tbaa !68
  %448 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  %449 = load ptr, ptr %448, align 8, !tbaa !78
  %450 = load ptr, ptr %447, align 8, !tbaa !66
  %451 = getelementptr inbounds ptr, ptr %450, i64 3
  %452 = load ptr, ptr %451, align 8
  invoke void %452(ptr noundef nonnull align 8 dereferenceable(8) %447, ptr noundef %449)
          to label %453 unwind label %122

453:                                              ; preds = %446
  %454 = icmp eq ptr %445, null
  %455 = load ptr, ptr %37, align 8, !tbaa !68
  br i1 %454, label %456, label %477

456:                                              ; preds = %453
  %457 = load i16, ptr %444, align 2, !tbaa !83
  %458 = icmp eq i16 %457, 0
  br i1 %458, label %470, label %459

459:                                              ; preds = %456, %459
  %460 = phi ptr [ %461, %459 ], [ %444, %456 ]
  %461 = getelementptr inbounds i16, ptr %460, i64 1
  %462 = load i16, ptr %461, align 2, !tbaa !83
  %463 = icmp eq i16 %462, 0
  br i1 %463, label %464, label %459, !llvm.loop !95

464:                                              ; preds = %459
  %465 = ptrtoint ptr %461 to i64
  %466 = ptrtoint ptr %444 to i64
  %467 = sub i64 %465, %466
  %468 = add i64 %467, 2
  %469 = and i64 %468, 8589934590
  br label %470

470:                                              ; preds = %464, %456
  %471 = phi i64 [ %469, %464 ], [ 2, %456 ]
  %472 = load ptr, ptr %455, align 8, !tbaa !66
  %473 = getelementptr inbounds ptr, ptr %472, i64 2
  %474 = load ptr, ptr %473, align 8
  %475 = invoke noundef ptr %474(ptr noundef nonnull align 8 dereferenceable(8) %455, i64 noundef %471)
          to label %476 unwind label %122

476:                                              ; preds = %470
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %475, ptr nonnull align 2 %444, i64 %471, i1 false)
  store ptr %475, ptr %448, align 8, !tbaa !78
  br label %530

477:                                              ; preds = %453
  %478 = ptrtoint ptr %445 to i64
  %479 = ptrtoint ptr %444 to i64
  %480 = sub i64 %478, %479
  %481 = add i64 %480, 2
  %482 = load ptr, ptr %455, align 8, !tbaa !66
  %483 = getelementptr inbounds ptr, ptr %482, i64 2
  %484 = load ptr, ptr %483, align 8
  %485 = invoke noundef ptr %484(ptr noundef nonnull align 8 dereferenceable(8) %455, i64 noundef %481)
          to label %486 unwind label %122

486:                                              ; preds = %477
  store ptr %485, ptr %448, align 8, !tbaa !78
  %487 = icmp ult ptr %444, %445
  br i1 %487, label %488, label %495

488:                                              ; preds = %486, %488
  %489 = phi ptr [ %493, %488 ], [ %485, %486 ]
  %490 = phi ptr [ %491, %488 ], [ %444, %486 ]
  %491 = getelementptr inbounds i16, ptr %490, i64 1
  %492 = load i16, ptr %490, align 2, !tbaa !83
  %493 = getelementptr inbounds i16, ptr %489, i64 1
  store i16 %492, ptr %489, align 2, !tbaa !83
  %494 = icmp ult ptr %491, %445
  br i1 %494, label %488, label %495, !llvm.loop !112

495:                                              ; preds = %488, %486
  %496 = phi ptr [ %444, %486 ], [ %491, %488 ]
  %497 = phi ptr [ %485, %486 ], [ %493, %488 ]
  store i16 0, ptr %497, align 2, !tbaa !83
  %498 = load i16, ptr %496, align 2, !tbaa !83
  %499 = icmp eq i16 %498, 35
  br i1 %499, label %500, label %530

500:                                              ; preds = %495
  %501 = load ptr, ptr %37, align 8, !tbaa !68
  %502 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %503 = load ptr, ptr %502, align 8, !tbaa !73
  %504 = load ptr, ptr %501, align 8, !tbaa !66
  %505 = getelementptr inbounds ptr, ptr %504, i64 3
  %506 = load ptr, ptr %505, align 8
  invoke void %506(ptr noundef nonnull align 8 dereferenceable(8) %501, ptr noundef %503)
          to label %507 unwind label %122

507:                                              ; preds = %500
  %508 = getelementptr inbounds i16, ptr %496, i64 1
  %509 = load ptr, ptr %37, align 8, !tbaa !68
  %510 = load i16, ptr %508, align 2, !tbaa !83
  %511 = icmp eq i16 %510, 0
  br i1 %511, label %523, label %512

512:                                              ; preds = %507, %512
  %513 = phi ptr [ %514, %512 ], [ %508, %507 ]
  %514 = getelementptr inbounds i16, ptr %513, i64 1
  %515 = load i16, ptr %514, align 2, !tbaa !83
  %516 = icmp eq i16 %515, 0
  br i1 %516, label %517, label %512, !llvm.loop !95

517:                                              ; preds = %512
  %518 = ptrtoint ptr %514 to i64
  %519 = ptrtoint ptr %508 to i64
  %520 = sub i64 %518, %519
  %521 = add i64 %520, 2
  %522 = and i64 %521, 8589934590
  br label %523

523:                                              ; preds = %517, %507
  %524 = phi i64 [ %522, %517 ], [ 2, %507 ]
  %525 = load ptr, ptr %509, align 8, !tbaa !66
  %526 = getelementptr inbounds ptr, ptr %525, i64 2
  %527 = load ptr, ptr %526, align 8
  %528 = invoke noundef ptr %527(ptr noundef nonnull align 8 dereferenceable(8) %509, i64 noundef %524)
          to label %529 unwind label %122

529:                                              ; preds = %523
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %528, ptr nonnull align 2 %508, i64 %524, i1 false)
  store ptr %528, ptr %502, align 8, !tbaa !73
  br label %530

530:                                              ; preds = %495, %529, %342, %476, %442, %377
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret void

531:                                              ; preds = %120, %122, %118, %330, %229, %124, %85, %71
  %532 = phi { ptr, i32 } [ %72, %71 ], [ %86, %85 ], [ %119, %118 ], [ %125, %124 ], [ %331, %330 ], [ %230, %229 ], [ %121, %120 ], [ %123, %122 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %533

533:                                              ; preds = %531, %34, %11
  %534 = phi { ptr, i32 } [ %35, %34 ], [ %532, %531 ], [ %12, %11 ]
  resume { ptr, i32 } %534

535:                                              ; preds = %84
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %0) local_unnamed_addr #10 align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !71
  %4 = icmp eq i32 %3, 4
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i16, ptr %7, align 2, !tbaa !83
  %11 = icmp ne i16 %10, 47
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi i1 [ true, %1 ], [ true, %5 ], [ %11, %9 ]
  ret i1 %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !71
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %14, label %7, !prof !114

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load i16, ptr %9, align 2, !tbaa !83
  %13 = icmp ne i16 %12, 47
  br label %14

14:                                               ; preds = %3, %7, %11
  %15 = phi i1 [ true, %3 ], [ true, %7 ], [ %13, %11 ]
  br i1 %15, label %16, label %24, !prof !114

16:                                               ; preds = %14
  br i1 %2, label %17, label %356, !prof !104

17:                                               ; preds = %16
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 811, i32 noundef 107, ptr noundef %20)
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #14
  resume { ptr, i32 } %23

24:                                               ; preds = %14
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %26 = load i32, ptr %25, align 4, !tbaa !71
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %356

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !75
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %162

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = icmp ne ptr %34, null
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  %39 = select i1 %35, i1 true, i1 %38
  br i1 %39, label %162, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !68
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !79
  %45 = load ptr, ptr %42, align 8, !tbaa !66
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %44)
  store ptr null, ptr %43, align 8, !tbaa !79
  %48 = load ptr, ptr %41, align 8, !tbaa !68
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !76
  %51 = load ptr, ptr %48, align 8, !tbaa !66
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef %50)
  store ptr null, ptr %49, align 8, !tbaa !76
  %54 = load i32, ptr %4, align 4, !tbaa !71
  store i32 %54, ptr %25, align 4, !tbaa !71
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !81
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  store i32 %56, ptr %57, align 8, !tbaa !81
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !75
  %60 = load ptr, ptr %41, align 8, !tbaa !68
  %61 = icmp eq ptr %59, null
  br i1 %61, label %82, label %62

62:                                               ; preds = %40
  %63 = load i16, ptr %59, align 2, !tbaa !83
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %62, %65
  %66 = phi ptr [ %67, %65 ], [ %59, %62 ]
  %67 = getelementptr inbounds i16, ptr %66, i64 1
  %68 = load i16, ptr %67, align 2, !tbaa !83
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %65, !llvm.loop !95

70:                                               ; preds = %65
  %71 = ptrtoint ptr %67 to i64
  %72 = ptrtoint ptr %59 to i64
  %73 = sub i64 %71, %72
  %74 = add i64 %73, 2
  %75 = and i64 %74, 8589934590
  br label %76

76:                                               ; preds = %70, %62
  %77 = phi i64 [ %75, %70 ], [ 2, %62 ]
  %78 = load ptr, ptr %60, align 8, !tbaa !66
  %79 = getelementptr inbounds ptr, ptr %78, i64 2
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(8) %60, i64 noundef %77)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %81, ptr nonnull align 2 %59, i64 %77, i1 false)
  br label %82

82:                                               ; preds = %40, %76
  %83 = phi ptr [ %81, %76 ], [ null, %40 ]
  store ptr %83, ptr %29, align 8, !tbaa !75
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !79
  %86 = load ptr, ptr %41, align 8, !tbaa !68
  %87 = icmp eq ptr %85, null
  br i1 %87, label %108, label %88

88:                                               ; preds = %82
  %89 = load i16, ptr %85, align 2, !tbaa !83
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %102, label %91

91:                                               ; preds = %88, %91
  %92 = phi ptr [ %93, %91 ], [ %85, %88 ]
  %93 = getelementptr inbounds i16, ptr %92, i64 1
  %94 = load i16, ptr %93, align 2, !tbaa !83
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %96, label %91, !llvm.loop !95

96:                                               ; preds = %91
  %97 = ptrtoint ptr %93 to i64
  %98 = ptrtoint ptr %85 to i64
  %99 = sub i64 %97, %98
  %100 = add i64 %99, 2
  %101 = and i64 %100, 8589934590
  br label %102

102:                                              ; preds = %96, %88
  %103 = phi i64 [ %101, %96 ], [ 2, %88 ]
  %104 = load ptr, ptr %86, align 8, !tbaa !66
  %105 = getelementptr inbounds ptr, ptr %104, i64 2
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(8) %86, i64 noundef %103)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %107, ptr nonnull align 2 %85, i64 %103, i1 false)
  br label %108

108:                                              ; preds = %82, %102
  %109 = phi ptr [ %107, %102 ], [ null, %82 ]
  store ptr %109, ptr %43, align 8, !tbaa !79
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !76
  %112 = load ptr, ptr %41, align 8, !tbaa !68
  %113 = icmp eq ptr %111, null
  br i1 %113, label %134, label %114

114:                                              ; preds = %108
  %115 = load i16, ptr %111, align 2, !tbaa !83
  %116 = icmp eq i16 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %114, %117
  %118 = phi ptr [ %119, %117 ], [ %111, %114 ]
  %119 = getelementptr inbounds i16, ptr %118, i64 1
  %120 = load i16, ptr %119, align 2, !tbaa !83
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %117, !llvm.loop !95

122:                                              ; preds = %117
  %123 = ptrtoint ptr %119 to i64
  %124 = ptrtoint ptr %111 to i64
  %125 = sub i64 %123, %124
  %126 = add i64 %125, 2
  %127 = and i64 %126, 8589934590
  br label %128

128:                                              ; preds = %122, %114
  %129 = phi i64 [ %127, %122 ], [ 2, %114 ]
  %130 = load ptr, ptr %112, align 8, !tbaa !66
  %131 = getelementptr inbounds ptr, ptr %130, i64 2
  %132 = load ptr, ptr %131, align 8
  %133 = tail call noundef ptr %132(ptr noundef nonnull align 8 dereferenceable(8) %112, i64 noundef %129)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %133, ptr nonnull align 2 %111, i64 %129, i1 false)
  br label %134

134:                                              ; preds = %108, %128
  %135 = phi ptr [ %133, %128 ], [ null, %108 ]
  store ptr %135, ptr %49, align 8, !tbaa !76
  %136 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 5
  %137 = load ptr, ptr %136, align 8, !tbaa !77
  %138 = load ptr, ptr %41, align 8, !tbaa !68
  %139 = icmp eq ptr %137, null
  br i1 %139, label %160, label %140

140:                                              ; preds = %134
  %141 = load i16, ptr %137, align 2, !tbaa !83
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %140, %143
  %144 = phi ptr [ %145, %143 ], [ %137, %140 ]
  %145 = getelementptr inbounds i16, ptr %144, i64 1
  %146 = load i16, ptr %145, align 2, !tbaa !83
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %143, !llvm.loop !95

148:                                              ; preds = %143
  %149 = ptrtoint ptr %145 to i64
  %150 = ptrtoint ptr %137 to i64
  %151 = sub i64 %149, %150
  %152 = add i64 %151, 2
  %153 = and i64 %152, 8589934590
  br label %154

154:                                              ; preds = %148, %140
  %155 = phi i64 [ %153, %148 ], [ 2, %140 ]
  %156 = load ptr, ptr %138, align 8, !tbaa !66
  %157 = getelementptr inbounds ptr, ptr %156, i64 2
  %158 = load ptr, ptr %157, align 8
  %159 = tail call noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(8) %138, i64 noundef %155)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %159, ptr nonnull align 2 %137, i64 %155, i1 false)
  br label %160

160:                                              ; preds = %134, %154
  %161 = phi ptr [ %159, %154 ], [ null, %134 ]
  store ptr %161, ptr %33, align 8, !tbaa !77
  br label %356

162:                                              ; preds = %32, %28
  br i1 %27, label %163, label %356

163:                                              ; preds = %162
  store i32 %5, ptr %25, align 4, !tbaa !71
  %164 = icmp eq i32 %5, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %163
  %166 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %167 = load ptr, ptr %166, align 8, !tbaa !75
  %168 = icmp ne ptr %167, null
  %169 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8
  %171 = icmp eq ptr %170, null
  %172 = select i1 %168, i1 true, i1 %171
  br i1 %172, label %356, label %173

173:                                              ; preds = %165, %163
  %174 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !75
  %176 = icmp eq ptr %175, null
  br i1 %176, label %277, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !68
  %180 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  %181 = load ptr, ptr %180, align 8, !tbaa !79
  %182 = load ptr, ptr %179, align 8, !tbaa !66
  %183 = getelementptr inbounds ptr, ptr %182, i64 3
  %184 = load ptr, ptr %183, align 8
  tail call void %184(ptr noundef nonnull align 8 dereferenceable(8) %179, ptr noundef %181)
  store ptr null, ptr %180, align 8, !tbaa !79
  %185 = load ptr, ptr %178, align 8, !tbaa !68
  %186 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  %187 = load ptr, ptr %186, align 8, !tbaa !76
  %188 = load ptr, ptr %185, align 8, !tbaa !66
  %189 = getelementptr inbounds ptr, ptr %188, i64 3
  %190 = load ptr, ptr %189, align 8
  tail call void %190(ptr noundef nonnull align 8 dereferenceable(8) %185, ptr noundef %187)
  store ptr null, ptr %186, align 8, !tbaa !76
  %191 = load ptr, ptr %178, align 8, !tbaa !68
  %192 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !75
  %194 = load ptr, ptr %191, align 8, !tbaa !66
  %195 = getelementptr inbounds ptr, ptr %194, i64 3
  %196 = load ptr, ptr %195, align 8
  tail call void %196(ptr noundef nonnull align 8 dereferenceable(8) %191, ptr noundef %193)
  store ptr null, ptr %192, align 8, !tbaa !75
  %197 = load ptr, ptr %174, align 8, !tbaa !75
  %198 = load ptr, ptr %178, align 8, !tbaa !68
  %199 = icmp eq ptr %197, null
  br i1 %199, label %220, label %200

200:                                              ; preds = %177
  %201 = load i16, ptr %197, align 2, !tbaa !83
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %214, label %203

203:                                              ; preds = %200, %203
  %204 = phi ptr [ %205, %203 ], [ %197, %200 ]
  %205 = getelementptr inbounds i16, ptr %204, i64 1
  %206 = load i16, ptr %205, align 2, !tbaa !83
  %207 = icmp eq i16 %206, 0
  br i1 %207, label %208, label %203, !llvm.loop !95

208:                                              ; preds = %203
  %209 = ptrtoint ptr %205 to i64
  %210 = ptrtoint ptr %197 to i64
  %211 = sub i64 %209, %210
  %212 = add i64 %211, 2
  %213 = and i64 %212, 8589934590
  br label %214

214:                                              ; preds = %208, %200
  %215 = phi i64 [ %213, %208 ], [ 2, %200 ]
  %216 = load ptr, ptr %198, align 8, !tbaa !66
  %217 = getelementptr inbounds ptr, ptr %216, i64 2
  %218 = load ptr, ptr %217, align 8
  %219 = tail call noundef ptr %218(ptr noundef nonnull align 8 dereferenceable(8) %198, i64 noundef %215)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %219, ptr nonnull align 2 %197, i64 %215, i1 false)
  br label %220

220:                                              ; preds = %177, %214
  %221 = phi ptr [ %219, %214 ], [ null, %177 ]
  store ptr %221, ptr %192, align 8, !tbaa !75
  %222 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 9
  %223 = load ptr, ptr %222, align 8, !tbaa !79
  %224 = load ptr, ptr %178, align 8, !tbaa !68
  %225 = icmp eq ptr %223, null
  br i1 %225, label %246, label %226

226:                                              ; preds = %220
  %227 = load i16, ptr %223, align 2, !tbaa !83
  %228 = icmp eq i16 %227, 0
  br i1 %228, label %240, label %229

229:                                              ; preds = %226, %229
  %230 = phi ptr [ %231, %229 ], [ %223, %226 ]
  %231 = getelementptr inbounds i16, ptr %230, i64 1
  %232 = load i16, ptr %231, align 2, !tbaa !83
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %234, label %229, !llvm.loop !95

234:                                              ; preds = %229
  %235 = ptrtoint ptr %231 to i64
  %236 = ptrtoint ptr %223 to i64
  %237 = sub i64 %235, %236
  %238 = add i64 %237, 2
  %239 = and i64 %238, 8589934590
  br label %240

240:                                              ; preds = %234, %226
  %241 = phi i64 [ %239, %234 ], [ 2, %226 ]
  %242 = load ptr, ptr %224, align 8, !tbaa !66
  %243 = getelementptr inbounds ptr, ptr %242, i64 2
  %244 = load ptr, ptr %243, align 8
  %245 = tail call noundef ptr %244(ptr noundef nonnull align 8 dereferenceable(8) %224, i64 noundef %241)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %245, ptr nonnull align 2 %223, i64 %241, i1 false)
  br label %246

246:                                              ; preds = %220, %240
  %247 = phi ptr [ %245, %240 ], [ null, %220 ]
  store ptr %247, ptr %180, align 8, !tbaa !79
  %248 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 4
  %249 = load ptr, ptr %248, align 8, !tbaa !76
  %250 = load ptr, ptr %178, align 8, !tbaa !68
  %251 = icmp eq ptr %249, null
  br i1 %251, label %272, label %252

252:                                              ; preds = %246
  %253 = load i16, ptr %249, align 2, !tbaa !83
  %254 = icmp eq i16 %253, 0
  br i1 %254, label %266, label %255

255:                                              ; preds = %252, %255
  %256 = phi ptr [ %257, %255 ], [ %249, %252 ]
  %257 = getelementptr inbounds i16, ptr %256, i64 1
  %258 = load i16, ptr %257, align 2, !tbaa !83
  %259 = icmp eq i16 %258, 0
  br i1 %259, label %260, label %255, !llvm.loop !95

260:                                              ; preds = %255
  %261 = ptrtoint ptr %257 to i64
  %262 = ptrtoint ptr %249 to i64
  %263 = sub i64 %261, %262
  %264 = add i64 %263, 2
  %265 = and i64 %264, 8589934590
  br label %266

266:                                              ; preds = %260, %252
  %267 = phi i64 [ %265, %260 ], [ 2, %252 ]
  %268 = load ptr, ptr %250, align 8, !tbaa !66
  %269 = getelementptr inbounds ptr, ptr %268, i64 2
  %270 = load ptr, ptr %269, align 8
  %271 = tail call noundef ptr %270(ptr noundef nonnull align 8 dereferenceable(8) %250, i64 noundef %267)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %271, ptr nonnull align 2 %249, i64 %267, i1 false)
  br label %272

272:                                              ; preds = %246, %266
  %273 = phi ptr [ %271, %266 ], [ null, %246 ]
  store ptr %273, ptr %186, align 8, !tbaa !76
  %274 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 6
  %275 = load i32, ptr %274, align 8, !tbaa !81
  %276 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  store i32 %275, ptr %276, align 8, !tbaa !81
  br label %277

277:                                              ; preds = %272, %173
  %278 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %279 = load ptr, ptr %278, align 8, !tbaa !77
  %280 = icmp eq ptr %279, null
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = load i16, ptr %279, align 2, !tbaa !83
  %283 = icmp eq i16 %282, 47
  br i1 %283, label %356, label %284

284:                                              ; preds = %281, %277
  %285 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 5
  %286 = load ptr, ptr %285, align 8, !tbaa !77
  %287 = icmp eq ptr %286, null
  br i1 %287, label %297, label %288

288:                                              ; preds = %284
  %289 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !68
  %291 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull %286, ptr noundef %279, ptr noundef %290)
  %292 = load ptr, ptr %289, align 8, !tbaa !68
  %293 = load ptr, ptr %278, align 8, !tbaa !77
  %294 = load ptr, ptr %292, align 8, !tbaa !66
  %295 = getelementptr inbounds ptr, ptr %294, i64 3
  %296 = load ptr, ptr %295, align 8
  tail call void %296(ptr noundef nonnull align 8 dereferenceable(8) %292, ptr noundef %293)
  store ptr %291, ptr %278, align 8, !tbaa !77
  br label %297

297:                                              ; preds = %284, %288
  br i1 %280, label %298, label %356

298:                                              ; preds = %297
  %299 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  %300 = load ptr, ptr %299, align 8, !tbaa !78
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %356

302:                                              ; preds = %298
  %303 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 8
  %304 = load ptr, ptr %303, align 8, !tbaa !78
  %305 = icmp eq ptr %304, null
  br i1 %305, label %356, label %306

306:                                              ; preds = %302
  %307 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %308 = load ptr, ptr %307, align 8, !tbaa !68
  %309 = load i16, ptr %304, align 2, !tbaa !83
  %310 = icmp eq i16 %309, 0
  br i1 %310, label %322, label %311

311:                                              ; preds = %306, %311
  %312 = phi ptr [ %313, %311 ], [ %304, %306 ]
  %313 = getelementptr inbounds i16, ptr %312, i64 1
  %314 = load i16, ptr %313, align 2, !tbaa !83
  %315 = icmp eq i16 %314, 0
  br i1 %315, label %316, label %311, !llvm.loop !95

316:                                              ; preds = %311
  %317 = ptrtoint ptr %313 to i64
  %318 = ptrtoint ptr %304 to i64
  %319 = sub i64 %317, %318
  %320 = add i64 %319, 2
  %321 = and i64 %320, 8589934590
  br label %322

322:                                              ; preds = %316, %306
  %323 = phi i64 [ %321, %316 ], [ 2, %306 ]
  %324 = load ptr, ptr %308, align 8, !tbaa !66
  %325 = getelementptr inbounds ptr, ptr %324, i64 2
  %326 = load ptr, ptr %325, align 8
  %327 = tail call noundef ptr %326(ptr noundef nonnull align 8 dereferenceable(8) %308, i64 noundef %323)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %327, ptr nonnull align 2 %304, i64 %323, i1 false)
  store ptr %327, ptr %299, align 8, !tbaa !78
  %328 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !73
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %356

331:                                              ; preds = %322
  %332 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 2
  %333 = load ptr, ptr %332, align 8, !tbaa !73
  %334 = icmp eq ptr %333, null
  br i1 %334, label %356, label %335

335:                                              ; preds = %331
  %336 = load ptr, ptr %307, align 8, !tbaa !68
  %337 = load i16, ptr %333, align 2, !tbaa !83
  %338 = icmp eq i16 %337, 0
  br i1 %338, label %350, label %339

339:                                              ; preds = %335, %339
  %340 = phi ptr [ %341, %339 ], [ %333, %335 ]
  %341 = getelementptr inbounds i16, ptr %340, i64 1
  %342 = load i16, ptr %341, align 2, !tbaa !83
  %343 = icmp eq i16 %342, 0
  br i1 %343, label %344, label %339, !llvm.loop !95

344:                                              ; preds = %339
  %345 = ptrtoint ptr %341 to i64
  %346 = ptrtoint ptr %333 to i64
  %347 = sub i64 %345, %346
  %348 = add i64 %347, 2
  %349 = and i64 %348, 8589934590
  br label %350

350:                                              ; preds = %344, %335
  %351 = phi i64 [ %349, %344 ], [ 2, %335 ]
  %352 = load ptr, ptr %336, align 8, !tbaa !66
  %353 = getelementptr inbounds ptr, ptr %352, i64 2
  %354 = load ptr, ptr %353, align 8
  %355 = tail call noundef ptr %354(ptr noundef nonnull align 8 dereferenceable(8) %336, i64 noundef %351)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %355, ptr nonnull align 2 %333, i64 %351, i1 false)
  store ptr %355, ptr %328, align 8, !tbaa !73
  br label %356

356:                                              ; preds = %24, %350, %281, %297, %302, %298, %331, %322, %165, %162, %16, %160
  %357 = xor i1 %15, true
  ret i1 %357
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(81) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %5 = alloca %"class.xercesc_2_7::XMLURL", align 8
  tail call void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %0)
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(81) %3)
  br i1 %6, label %7, label %50, !prof !114

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !71
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %18, label %11, !prof !114

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i16, ptr %13, align 2, !tbaa !83
  %17 = icmp ne i16 %16, 47
  br label %18

18:                                               ; preds = %7, %11, %15
  %19 = phi i1 [ true, %7 ], [ true, %11 ], [ %17, %15 ]
  %20 = icmp ne ptr %1, null
  %21 = and i1 %20, %19
  br i1 %21, label %22, label %51, !prof !114

22:                                               ; preds = %18
  %23 = load i16, ptr %1, align 2, !tbaa !83
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %51, label %25, !prof !104

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %5) #14
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !68
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !66
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %5, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !68
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %5, i64 0, i32 2
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %5, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %29, i8 0, i64 36, i1 false)
  store i32 4, ptr %30, align 4, !tbaa !71
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %5, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %31, i8 0, i64 25, i1 false)
  %32 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(81) %5)
          to label %33 unwind label %37, !prof !114

33:                                               ; preds = %25
  br i1 %32, label %34, label %43, !prof !114

34:                                               ; preds = %33
  %35 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %5, i1 noundef zeroext false)
          to label %36 unwind label %37, !prof !114

36:                                               ; preds = %34
  br i1 %35, label %44, label %43, !prof !104

37:                                               ; preds = %34, %25
  %38 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %5)
          to label %42 unwind label %39

39:                                               ; preds = %37
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #16
  unreachable

42:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #14
  resume { ptr, i32 } %38

43:                                               ; preds = %36, %33
  br label %44

44:                                               ; preds = %36, %43
  %45 = phi i1 [ true, %43 ], [ false, %36 ]
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %5)
          to label %49 unwind label %46, !prof !114

46:                                               ; preds = %44
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @__clang_call_terminate(ptr %48) #16
  unreachable

49:                                               ; preds = %44
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %5) #14
  br i1 %45, label %50, label %51, !prof !114

50:                                               ; preds = %49, %4
  br label %51

51:                                               ; preds = %18, %22, %49, %50
  %52 = phi i1 [ true, %49 ], [ false, %50 ], [ true, %22 ], [ true, %18 ]
  ret i1 %52
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(81) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !92 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = load i16, ptr %0, align 2, !tbaa !83
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %440, label %6, !prof !99

6:                                                ; preds = %2
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11isURIStringEPKt(ptr noundef nonnull %0)
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 11
  %9 = xor i1 %7, true
  %10 = zext i1 %9 to i8
  store i8 %10, ptr %8, align 8, !tbaa !82
  %11 = load i16, ptr %0, align 2, !tbaa !83
  %12 = and i16 %11, -33
  %13 = add i16 %12, -65
  %14 = icmp ult i16 %13, 26
  br i1 %14, label %15, label %22, !prof !115

15:                                               ; preds = %6
  %16 = getelementptr inbounds i16, ptr %0, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !83
  %18 = icmp eq i16 %17, 58
  br i1 %18, label %19, label %22, !prof !104

19:                                               ; preds = %15
  %20 = getelementptr inbounds i16, ptr %0, i64 2
  %21 = load i16, ptr %20, align 2, !tbaa !83
  switch i16 %21, label %22 [
    i16 47, label %440
    i16 92, label %440
  ]

22:                                               ; preds = %6, %19, %15
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !68
  %25 = icmp eq i16 %11, 0
  br i1 %25, label %37, label %26, !prof !99

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %28, %26 ], [ %0, %22 ]
  %28 = getelementptr inbounds i16, ptr %27, i64 1
  %29 = load i16, ptr %28, align 2, !tbaa !83
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %26, !prof !116, !llvm.loop !95

31:                                               ; preds = %26
  %32 = ptrtoint ptr %28 to i64
  %33 = ptrtoint ptr %0 to i64
  %34 = sub i64 %32, %33
  %35 = add i64 %34, 2
  %36 = and i64 %35, 8589934590
  br label %37

37:                                               ; preds = %31, %22
  %38 = phi i64 [ %36, %31 ], [ 2, %22 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !66
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %38), !prof !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %42, ptr nonnull align 2 %0, i64 %38, i1 false), !prof !117
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %43 = load ptr, ptr %23, align 8, !tbaa !68
  store ptr %42, ptr %3, align 8, !tbaa !85
  %44 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %43, ptr %44, align 8, !tbaa !87
  %45 = load i16, ptr %42, align 2, !tbaa !83
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %438, label %47, !prof !104

47:                                               ; preds = %37
  %48 = zext i16 %45 to i64
  %49 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !105
  %51 = icmp slt i8 %50, 0
  br i1 %51, label %57, label %62, !prof !104

52:                                               ; preds = %57
  %53 = zext i16 %60 to i64
  %54 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !105
  %56 = icmp slt i8 %55, 0
  br i1 %56, label %57, label %62, !prof !104, !llvm.loop !118

57:                                               ; preds = %47, %52
  %58 = phi ptr [ %59, %52 ], [ %42, %47 ]
  %59 = getelementptr inbounds i16, ptr %58, i64 1
  %60 = load i16, ptr %59, align 2, !tbaa !83
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %438, label %52, !prof !99, !llvm.loop !118

62:                                               ; preds = %52, %47
  %63 = phi i1 [ %46, %47 ], [ %61, %52 ]
  %64 = phi ptr [ %42, %47 ], [ %59, %52 ]
  br i1 %63, label %438, label %65, !prof !99

65:                                               ; preds = %62
  %66 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %64, ptr noundef nonnull @_ZN11xercesc_2_7L8gListOneE)
          to label %67 unwind label %90, !prof !107

67:                                               ; preds = %65
  %68 = icmp eq ptr %66, null
  br i1 %68, label %98, label %69, !prof !107

69:                                               ; preds = %67
  %70 = load i16, ptr %66, align 2, !tbaa !83
  %71 = icmp eq i16 %70, 58
  br i1 %71, label %72, label %98

72:                                               ; preds = %69
  store i16 0, ptr %66, align 2, !tbaa !83
  br label %76

73:                                               ; preds = %81
  %74 = add nuw nsw i64 %77, 1
  %75 = icmp eq i64 %74, 3
  br i1 %75, label %86, label %76, !llvm.loop !54

76:                                               ; preds = %72, %73
  %77 = phi i64 [ 0, %72 ], [ %74, %73 ]
  %78 = getelementptr inbounds [3 x %"struct.xercesc_2_7::ProtoEntry"], ptr @_ZN11xercesc_2_7L10gProtoListE, i64 0, i64 %77, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  %80 = invoke noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef nonnull %64, ptr noundef %79)
          to label %81 unwind label %92

81:                                               ; preds = %76
  %82 = icmp eq i32 %80, 0
  br i1 %82, label %83, label %73

83:                                               ; preds = %81
  %84 = getelementptr inbounds [3 x %"struct.xercesc_2_7::ProtoEntry"], ptr @_ZN11xercesc_2_7L10gProtoListE, i64 0, i64 %77
  %85 = load i32, ptr %84, align 8, !tbaa !64
  br label %86

86:                                               ; preds = %73, %83
  %87 = phi i32 [ %85, %83 ], [ 4, %73 ]
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 7
  store i32 %87, ptr %88, align 4, !tbaa !71
  %89 = icmp eq i32 %87, 4
  br i1 %89, label %438, label %96

90:                                               ; preds = %65
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %436

92:                                               ; preds = %76
  %93 = landingpad { ptr, i32 }
          cleanup
  br label %436

94:                                               ; preds = %110, %116, %189, %218, %228, %257, %262, %272, %281, %310, %361, %388, %154, %211, %249, %300, %353, %380, %428
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %436

96:                                               ; preds = %86
  %97 = getelementptr inbounds i16, ptr %66, i64 1
  br label %98

98:                                               ; preds = %69, %96, %67
  %99 = phi ptr [ %97, %96 ], [ %64, %69 ], [ %64, %67 ]
  %100 = load i16, ptr %99, align 2, !tbaa !83
  %101 = icmp eq i16 %100, 47
  br i1 %101, label %102, label %180, !prof !99

102:                                              ; preds = %98
  %103 = getelementptr inbounds i16, ptr %99, i64 1
  %104 = load i16, ptr %103, align 2, !tbaa !83
  %105 = icmp eq i16 %104, 47
  br i1 %105, label %106, label %180

106:                                              ; preds = %102
  %107 = getelementptr inbounds i16, ptr %99, i64 2
  %108 = load i16, ptr %107, align 2, !tbaa !83
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %184, label %110

110:                                              ; preds = %106
  %111 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %107, ptr noundef nonnull @_ZN11xercesc_2_7L9gListFourE)
          to label %112 unwind label %94

112:                                              ; preds = %110
  %113 = icmp eq ptr %111, null
  br i1 %113, label %139, label %114

114:                                              ; preds = %112
  %115 = icmp eq ptr %111, %107
  br i1 %115, label %184, label %116

116:                                              ; preds = %114
  %117 = load ptr, ptr %23, align 8, !tbaa !68
  %118 = ptrtoint ptr %111 to i64
  %119 = ptrtoint ptr %107 to i64
  %120 = sub i64 %118, %119
  %121 = add i64 %120, 2
  %122 = load ptr, ptr %117, align 8, !tbaa !66
  %123 = getelementptr inbounds ptr, ptr %122, i64 2
  %124 = load ptr, ptr %123, align 8
  %125 = invoke noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(8) %117, i64 noundef %121)
          to label %126 unwind label %94

126:                                              ; preds = %116
  %127 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  store ptr %125, ptr %127, align 8, !tbaa !75
  %128 = icmp ult ptr %107, %111
  br i1 %128, label %129, label %136

129:                                              ; preds = %126, %129
  %130 = phi ptr [ %134, %129 ], [ %125, %126 ]
  %131 = phi ptr [ %132, %129 ], [ %107, %126 ]
  %132 = getelementptr inbounds i16, ptr %131, i64 1
  %133 = load i16, ptr %131, align 2, !tbaa !83
  %134 = getelementptr inbounds i16, ptr %130, i64 1
  store i16 %133, ptr %130, align 2, !tbaa !83
  %135 = icmp ult ptr %132, %111
  br i1 %135, label %129, label %136, !llvm.loop !119

136:                                              ; preds = %129, %126
  %137 = phi ptr [ %107, %126 ], [ %132, %129 ]
  %138 = phi ptr [ %125, %126 ], [ %134, %129 ]
  store i16 0, ptr %138, align 2, !tbaa !83
  br label %184

139:                                              ; preds = %112
  %140 = load ptr, ptr %23, align 8, !tbaa !68
  %141 = load i16, ptr %107, align 2, !tbaa !83
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %139, %143
  %144 = phi ptr [ %145, %143 ], [ %107, %139 ]
  %145 = getelementptr inbounds i16, ptr %144, i64 1
  %146 = load i16, ptr %145, align 2, !tbaa !83
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %143, !llvm.loop !95

148:                                              ; preds = %143
  %149 = ptrtoint ptr %145 to i64
  %150 = ptrtoint ptr %107 to i64
  %151 = sub i64 %149, %150
  %152 = add i64 %151, 2
  %153 = and i64 %152, 8589934590
  br label %154

154:                                              ; preds = %148, %139
  %155 = phi i64 [ %153, %148 ], [ 2, %139 ]
  %156 = load ptr, ptr %140, align 8, !tbaa !66
  %157 = getelementptr inbounds ptr, ptr %156, i64 2
  %158 = load ptr, ptr %157, align 8
  %159 = invoke noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(8) %140, i64 noundef %155)
          to label %160 unwind label %94

160:                                              ; preds = %154
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %159, ptr nonnull align 2 %107, i64 %155, i1 false)
  %161 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  store ptr %159, ptr %161, align 8, !tbaa !75
  %162 = icmp eq ptr %159, null
  br i1 %162, label %176, label %163

163:                                              ; preds = %160
  %164 = load i16, ptr %159, align 2, !tbaa !83
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %163, %166
  %167 = phi ptr [ %168, %166 ], [ %159, %163 ]
  %168 = getelementptr inbounds i16, ptr %167, i64 1
  %169 = load i16, ptr %168, align 2, !tbaa !83
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %171, label %166, !llvm.loop !95

171:                                              ; preds = %166
  %172 = ptrtoint ptr %168 to i64
  %173 = ptrtoint ptr %159 to i64
  %174 = sub i64 %172, %173
  %175 = lshr exact i64 %174, 1
  br label %176

176:                                              ; preds = %160, %163, %171
  %177 = phi i64 [ %175, %171 ], [ 0, %163 ], [ 0, %160 ]
  %178 = and i64 %177, 4294967295
  %179 = getelementptr inbounds i16, ptr %107, i64 %178
  br label %184

180:                                              ; preds = %102, %98
  %181 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 7
  %182 = load i32, ptr %181, align 4, !tbaa !71
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %438, label %184, !prof !99

184:                                              ; preds = %180, %106, %114, %136, %176
  %185 = phi ptr [ %137, %136 ], [ %107, %114 ], [ %179, %176 ], [ %107, %106 ], [ %99, %180 ]
  %186 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !75
  %188 = icmp eq ptr %187, null
  br i1 %188, label %278, label %189, !prof !107

189:                                              ; preds = %184
  %190 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %187, ptr noundef nonnull @_ZN11xercesc_2_7L8gListTwoE)
          to label %191 unwind label %94

191:                                              ; preds = %189
  %192 = icmp eq ptr %190, null
  br i1 %192, label %257, label %193

193:                                              ; preds = %191
  store i16 0, ptr %190, align 2, !tbaa !83
  %194 = load ptr, ptr %186, align 8, !tbaa !75
  %195 = load ptr, ptr %23, align 8, !tbaa !68
  %196 = icmp eq ptr %194, null
  br i1 %196, label %218, label %197

197:                                              ; preds = %193
  %198 = load i16, ptr %194, align 2, !tbaa !83
  %199 = icmp eq i16 %198, 0
  br i1 %199, label %211, label %200

200:                                              ; preds = %197, %200
  %201 = phi ptr [ %202, %200 ], [ %194, %197 ]
  %202 = getelementptr inbounds i16, ptr %201, i64 1
  %203 = load i16, ptr %202, align 2, !tbaa !83
  %204 = icmp eq i16 %203, 0
  br i1 %204, label %205, label %200, !llvm.loop !95

205:                                              ; preds = %200
  %206 = ptrtoint ptr %202 to i64
  %207 = ptrtoint ptr %194 to i64
  %208 = sub i64 %206, %207
  %209 = add i64 %208, 2
  %210 = and i64 %209, 8589934590
  br label %211

211:                                              ; preds = %205, %197
  %212 = phi i64 [ %210, %205 ], [ 2, %197 ]
  %213 = load ptr, ptr %195, align 8, !tbaa !66
  %214 = getelementptr inbounds ptr, ptr %213, i64 2
  %215 = load ptr, ptr %214, align 8
  %216 = invoke noundef ptr %215(ptr noundef nonnull align 8 dereferenceable(8) %195, i64 noundef %212)
          to label %217 unwind label %94

217:                                              ; preds = %211
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %216, ptr nonnull align 2 %194, i64 %212, i1 false)
  br label %218

218:                                              ; preds = %217, %193
  %219 = phi ptr [ %216, %217 ], [ null, %193 ]
  %220 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 9
  store ptr %219, ptr %220, align 8, !tbaa !79
  %221 = getelementptr inbounds i16, ptr %190, i64 1
  %222 = load ptr, ptr %186, align 8, !tbaa !75
  %223 = ptrtoint ptr %221 to i64
  %224 = ptrtoint ptr %222 to i64
  %225 = sub i64 %223, %224
  %226 = lshr exact i64 %225, 1
  %227 = trunc i64 %226 to i32
  invoke void @_ZN11xercesc_2_79XMLString3cutEPtj(ptr noundef %222, i32 noundef %227)
          to label %228 unwind label %94

228:                                              ; preds = %218
  %229 = load ptr, ptr %220, align 8, !tbaa !79
  %230 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef %229, ptr noundef nonnull @_ZN11xercesc_2_7L10gListThreeE)
          to label %231 unwind label %94

231:                                              ; preds = %228
  %232 = icmp eq ptr %230, null
  br i1 %232, label %257, label %233

233:                                              ; preds = %231
  store i16 0, ptr %230, align 2, !tbaa !83
  %234 = getelementptr inbounds i16, ptr %230, i64 1
  %235 = load ptr, ptr %23, align 8, !tbaa !68
  %236 = load i16, ptr %234, align 2, !tbaa !83
  %237 = icmp eq i16 %236, 0
  br i1 %237, label %249, label %238

238:                                              ; preds = %233, %238
  %239 = phi ptr [ %240, %238 ], [ %234, %233 ]
  %240 = getelementptr inbounds i16, ptr %239, i64 1
  %241 = load i16, ptr %240, align 2, !tbaa !83
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %243, label %238, !llvm.loop !95

243:                                              ; preds = %238
  %244 = ptrtoint ptr %240 to i64
  %245 = ptrtoint ptr %234 to i64
  %246 = sub i64 %244, %245
  %247 = add i64 %246, 2
  %248 = and i64 %247, 8589934590
  br label %249

249:                                              ; preds = %243, %233
  %250 = phi i64 [ %248, %243 ], [ 2, %233 ]
  %251 = load ptr, ptr %235, align 8, !tbaa !66
  %252 = getelementptr inbounds ptr, ptr %251, i64 2
  %253 = load ptr, ptr %252, align 8
  %254 = invoke noundef ptr %253(ptr noundef nonnull align 8 dereferenceable(8) %235, i64 noundef %250)
          to label %255 unwind label %94

255:                                              ; preds = %249
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %254, ptr nonnull align 2 %234, i64 %250, i1 false)
  %256 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 4
  store ptr %254, ptr %256, align 8, !tbaa !76
  br label %257

257:                                              ; preds = %231, %255, %191
  %258 = load ptr, ptr %186, align 8, !tbaa !75
  %259 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef %258, ptr noundef nonnull @_ZN11xercesc_2_7L10gListThreeE)
          to label %260 unwind label %94

260:                                              ; preds = %257
  %261 = icmp eq ptr %259, null
  br i1 %261, label %268, label %262

262:                                              ; preds = %260
  store i16 0, ptr %259, align 2, !tbaa !83
  %263 = getelementptr inbounds i16, ptr %259, i64 1
  %264 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 6
  %265 = load ptr, ptr %23, align 8, !tbaa !68
  %266 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString9textToBinEPKtRjPNS_13MemoryManagerE(ptr noundef nonnull %263, ptr noundef nonnull align 4 dereferenceable(4) %264, ptr noundef %265)
          to label %267 unwind label %94

267:                                              ; preds = %262
  br i1 %266, label %268, label %438

268:                                              ; preds = %267, %260
  %269 = load ptr, ptr %186, align 8, !tbaa !75
  %270 = load i16, ptr %269, align 2, !tbaa !83
  %271 = icmp eq i16 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %268
  %273 = load ptr, ptr %23, align 8, !tbaa !68
  %274 = load ptr, ptr %273, align 8, !tbaa !66
  %275 = getelementptr inbounds ptr, ptr %274, i64 3
  %276 = load ptr, ptr %275, align 8
  invoke void %276(ptr noundef nonnull align 8 dereferenceable(8) %273, ptr noundef nonnull %269)
          to label %277 unwind label %94

277:                                              ; preds = %272
  store ptr null, ptr %186, align 8, !tbaa !75
  br label %278

278:                                              ; preds = %268, %277, %184
  %279 = load i16, ptr %185, align 2, !tbaa !83
  %280 = icmp eq i16 %279, 0
  br i1 %280, label %438, label %281, !prof !99

281:                                              ; preds = %278
  %282 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %185, ptr noundef nonnull @_ZN11xercesc_2_7L9gListFiveE)
          to label %283 unwind label %94, !prof !107

283:                                              ; preds = %281
  %284 = icmp eq ptr %282, null
  br i1 %284, label %285, label %308, !prof !107

285:                                              ; preds = %283
  %286 = load ptr, ptr %23, align 8, !tbaa !68
  %287 = load i16, ptr %185, align 2, !tbaa !83
  %288 = icmp eq i16 %287, 0
  br i1 %288, label %300, label %289, !prof !99

289:                                              ; preds = %285, %289
  %290 = phi ptr [ %291, %289 ], [ %185, %285 ]
  %291 = getelementptr inbounds i16, ptr %290, i64 1
  %292 = load i16, ptr %291, align 2, !tbaa !83
  %293 = icmp eq i16 %292, 0
  br i1 %293, label %294, label %289, !prof !116, !llvm.loop !95

294:                                              ; preds = %289
  %295 = ptrtoint ptr %291 to i64
  %296 = ptrtoint ptr %185 to i64
  %297 = sub i64 %295, %296
  %298 = add i64 %297, 2
  %299 = and i64 %298, 8589934590
  br label %300

300:                                              ; preds = %294, %285
  %301 = phi i64 [ %299, %294 ], [ 2, %285 ]
  %302 = load ptr, ptr %286, align 8, !tbaa !66
  %303 = getelementptr inbounds ptr, ptr %302, i64 2
  %304 = load ptr, ptr %303, align 8
  %305 = invoke noundef ptr %304(ptr noundef nonnull align 8 dereferenceable(8) %286, i64 noundef %301)
          to label %306 unwind label %94, !prof !102

306:                                              ; preds = %300
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %305, ptr nonnull align 2 %185, i64 %301, i1 false), !prof !117
  %307 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 5
  store ptr %305, ptr %307, align 8, !tbaa !77
  br label %438

308:                                              ; preds = %283
  %309 = icmp ugt ptr %282, %185
  br i1 %309, label %310, label %333

310:                                              ; preds = %308
  %311 = load ptr, ptr %23, align 8, !tbaa !68
  %312 = ptrtoint ptr %282 to i64
  %313 = ptrtoint ptr %185 to i64
  %314 = sub i64 %312, %313
  %315 = add i64 %314, 2
  %316 = load ptr, ptr %311, align 8, !tbaa !66
  %317 = getelementptr inbounds ptr, ptr %316, i64 2
  %318 = load ptr, ptr %317, align 8
  %319 = invoke noundef ptr %318(ptr noundef nonnull align 8 dereferenceable(8) %311, i64 noundef %315)
          to label %320 unwind label %94

320:                                              ; preds = %310
  %321 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 5
  store ptr %319, ptr %321, align 8, !tbaa !77
  %322 = icmp ult ptr %185, %282
  br i1 %322, label %323, label %330

323:                                              ; preds = %320, %323
  %324 = phi ptr [ %328, %323 ], [ %319, %320 ]
  %325 = phi ptr [ %326, %323 ], [ %185, %320 ]
  %326 = getelementptr inbounds i16, ptr %325, i64 1
  %327 = load i16, ptr %325, align 2, !tbaa !83
  %328 = getelementptr inbounds i16, ptr %324, i64 1
  store i16 %327, ptr %324, align 2, !tbaa !83
  %329 = icmp ult ptr %326, %282
  br i1 %329, label %323, label %330, !llvm.loop !120

330:                                              ; preds = %323, %320
  %331 = phi ptr [ %185, %320 ], [ %326, %323 ]
  %332 = phi ptr [ %319, %320 ], [ %328, %323 ]
  store i16 0, ptr %332, align 2, !tbaa !83
  br label %333

333:                                              ; preds = %330, %308
  %334 = phi ptr [ %331, %330 ], [ %185, %308 ]
  %335 = load i16, ptr %334, align 2, !tbaa !83
  %336 = icmp eq i16 %335, 35
  %337 = getelementptr inbounds i16, ptr %334, i64 1
  br i1 %336, label %338, label %361

338:                                              ; preds = %333
  %339 = load ptr, ptr %23, align 8, !tbaa !68
  %340 = load i16, ptr %337, align 2, !tbaa !83
  %341 = icmp eq i16 %340, 0
  br i1 %341, label %353, label %342

342:                                              ; preds = %338, %342
  %343 = phi ptr [ %344, %342 ], [ %337, %338 ]
  %344 = getelementptr inbounds i16, ptr %343, i64 1
  %345 = load i16, ptr %344, align 2, !tbaa !83
  %346 = icmp eq i16 %345, 0
  br i1 %346, label %347, label %342, !llvm.loop !95

347:                                              ; preds = %342
  %348 = ptrtoint ptr %344 to i64
  %349 = ptrtoint ptr %337 to i64
  %350 = sub i64 %348, %349
  %351 = add i64 %350, 2
  %352 = and i64 %351, 8589934590
  br label %353

353:                                              ; preds = %347, %338
  %354 = phi i64 [ %352, %347 ], [ 2, %338 ]
  %355 = load ptr, ptr %339, align 8, !tbaa !66
  %356 = getelementptr inbounds ptr, ptr %355, i64 2
  %357 = load ptr, ptr %356, align 8
  %358 = invoke noundef ptr %357(ptr noundef nonnull align 8 dereferenceable(8) %339, i64 noundef %354)
          to label %359 unwind label %94

359:                                              ; preds = %353
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %358, ptr nonnull align 2 %337, i64 %354, i1 false)
  %360 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 2
  store ptr %358, ptr %360, align 8, !tbaa !73
  br label %438

361:                                              ; preds = %333
  %362 = invoke noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef nonnull %337, ptr noundef nonnull @_ZN11xercesc_2_7L8gListSixE)
          to label %363 unwind label %94

363:                                              ; preds = %361
  %364 = icmp eq ptr %362, null
  %365 = load ptr, ptr %23, align 8, !tbaa !68
  br i1 %364, label %366, label %388

366:                                              ; preds = %363
  %367 = load i16, ptr %337, align 2, !tbaa !83
  %368 = icmp eq i16 %367, 0
  br i1 %368, label %380, label %369

369:                                              ; preds = %366, %369
  %370 = phi ptr [ %371, %369 ], [ %337, %366 ]
  %371 = getelementptr inbounds i16, ptr %370, i64 1
  %372 = load i16, ptr %371, align 2, !tbaa !83
  %373 = icmp eq i16 %372, 0
  br i1 %373, label %374, label %369, !llvm.loop !95

374:                                              ; preds = %369
  %375 = ptrtoint ptr %371 to i64
  %376 = ptrtoint ptr %337 to i64
  %377 = sub i64 %375, %376
  %378 = add i64 %377, 2
  %379 = and i64 %378, 8589934590
  br label %380

380:                                              ; preds = %374, %366
  %381 = phi i64 [ %379, %374 ], [ 2, %366 ]
  %382 = load ptr, ptr %365, align 8, !tbaa !66
  %383 = getelementptr inbounds ptr, ptr %382, i64 2
  %384 = load ptr, ptr %383, align 8
  %385 = invoke noundef ptr %384(ptr noundef nonnull align 8 dereferenceable(8) %365, i64 noundef %381)
          to label %386 unwind label %94

386:                                              ; preds = %380
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %385, ptr nonnull align 2 %337, i64 %381, i1 false)
  %387 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 8
  store ptr %385, ptr %387, align 8, !tbaa !78
  br label %438

388:                                              ; preds = %363
  %389 = ptrtoint ptr %362 to i64
  %390 = ptrtoint ptr %337 to i64
  %391 = sub i64 %389, %390
  %392 = add i64 %391, 2
  %393 = load ptr, ptr %365, align 8, !tbaa !66
  %394 = getelementptr inbounds ptr, ptr %393, i64 2
  %395 = load ptr, ptr %394, align 8
  %396 = invoke noundef ptr %395(ptr noundef nonnull align 8 dereferenceable(8) %365, i64 noundef %392)
          to label %397 unwind label %94

397:                                              ; preds = %388
  %398 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 8
  store ptr %396, ptr %398, align 8, !tbaa !78
  %399 = icmp ult ptr %337, %362
  br i1 %399, label %400, label %407

400:                                              ; preds = %397, %400
  %401 = phi ptr [ %405, %400 ], [ %396, %397 ]
  %402 = phi ptr [ %403, %400 ], [ %337, %397 ]
  %403 = getelementptr inbounds i16, ptr %402, i64 1
  %404 = load i16, ptr %402, align 2, !tbaa !83
  %405 = getelementptr inbounds i16, ptr %401, i64 1
  store i16 %404, ptr %401, align 2, !tbaa !83
  %406 = icmp ult ptr %403, %362
  br i1 %406, label %400, label %407, !llvm.loop !121

407:                                              ; preds = %400, %397
  %408 = phi ptr [ %337, %397 ], [ %403, %400 ]
  %409 = phi ptr [ %396, %397 ], [ %405, %400 ]
  store i16 0, ptr %409, align 2, !tbaa !83
  %410 = load i16, ptr %408, align 2, !tbaa !83
  %411 = icmp eq i16 %410, 35
  br i1 %411, label %412, label %438

412:                                              ; preds = %407
  %413 = getelementptr inbounds i16, ptr %408, i64 1
  %414 = load ptr, ptr %23, align 8, !tbaa !68
  %415 = load i16, ptr %413, align 2, !tbaa !83
  %416 = icmp eq i16 %415, 0
  br i1 %416, label %428, label %417

417:                                              ; preds = %412, %417
  %418 = phi ptr [ %419, %417 ], [ %413, %412 ]
  %419 = getelementptr inbounds i16, ptr %418, i64 1
  %420 = load i16, ptr %419, align 2, !tbaa !83
  %421 = icmp eq i16 %420, 0
  br i1 %421, label %422, label %417, !llvm.loop !95

422:                                              ; preds = %417
  %423 = ptrtoint ptr %419 to i64
  %424 = ptrtoint ptr %413 to i64
  %425 = sub i64 %423, %424
  %426 = add i64 %425, 2
  %427 = and i64 %426, 8589934590
  br label %428

428:                                              ; preds = %422, %412
  %429 = phi i64 [ %427, %422 ], [ 2, %412 ]
  %430 = load ptr, ptr %414, align 8, !tbaa !66
  %431 = getelementptr inbounds ptr, ptr %430, i64 2
  %432 = load ptr, ptr %431, align 8
  %433 = invoke noundef ptr %432(ptr noundef nonnull align 8 dereferenceable(8) %414, i64 noundef %429)
          to label %434 unwind label %94

434:                                              ; preds = %428
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %433, ptr nonnull align 2 %413, i64 %429, i1 false)
  %435 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %1, i64 0, i32 2
  store ptr %433, ptr %435, align 8, !tbaa !73
  br label %438

436:                                              ; preds = %92, %94, %90
  %437 = phi { ptr, i32 } [ %91, %90 ], [ %93, %92 ], [ %95, %94 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  resume { ptr, i32 } %437

438:                                              ; preds = %57, %37, %278, %267, %306, %359, %386, %86, %180, %434, %407, %62
  %439 = phi i1 [ false, %62 ], [ true, %359 ], [ true, %386 ], [ true, %306 ], [ false, %86 ], [ false, %180 ], [ true, %434 ], [ true, %407 ], [ false, %267 ], [ true, %278 ], [ false, %37 ], [ false, %57 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  br label %440

440:                                              ; preds = %19, %19, %2, %438
  %441 = phi i1 [ %439, %438 ], [ false, %2 ], [ false, %19 ], [ false, %19 ]
  ret i1 %441
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %0) local_unnamed_addr #9 align 2 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 11
  %3 = load i8, ptr %2, align 8, !tbaa !82, !range !93, !noundef !94
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv(ptr noundef nonnull align 8 dereferenceable(81) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !92 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = alloca [4 x i16], align 2
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !71
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %171, !prof !107

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !107

11:                                               ; preds = %7
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_(ptr noundef nonnull %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgLocalHostStringE)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %171

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !68
  %19 = icmp eq ptr %16, null
  br i1 %19, label %40, label %20, !prof !99

20:                                               ; preds = %14
  %21 = load i16, ptr %16, align 2, !tbaa !83
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %34, label %23, !prof !99

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %25, %23 ], [ %16, %20 ]
  %25 = getelementptr inbounds i16, ptr %24, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !83
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %23, !prof !110, !llvm.loop !95

28:                                               ; preds = %23
  %29 = ptrtoint ptr %25 to i64
  %30 = ptrtoint ptr %16 to i64
  %31 = sub i64 %29, %30
  %32 = add i64 %31, 2
  %33 = and i64 %32, 8589934590
  br label %34

34:                                               ; preds = %28, %20
  %35 = phi i64 [ %33, %28 ], [ 2, %20 ]
  %36 = load ptr, ptr %18, align 8, !tbaa !66
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %18, i64 noundef %35), !prof !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %39, ptr nonnull align 2 %16, i64 %35, i1 false), !prof !103
  br label %40

40:                                               ; preds = %14, %34
  %41 = phi ptr [ %39, %34 ], [ null, %14 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %42 = load ptr, ptr %17, align 8, !tbaa !68
  store ptr %41, ptr %2, align 8, !tbaa !85
  %43 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !87
  %44 = icmp eq ptr %41, null
  br i1 %44, label %59, label %45, !prof !99

45:                                               ; preds = %40
  %46 = load i16, ptr %41, align 2, !tbaa !83
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %59, label %48, !prof !99

48:                                               ; preds = %45, %48
  %49 = phi ptr [ %50, %48 ], [ %41, %45 ]
  %50 = getelementptr inbounds i16, ptr %49, i64 1
  %51 = load i16, ptr %50, align 2, !tbaa !83
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %48, !prof !110, !llvm.loop !95

53:                                               ; preds = %48
  %54 = ptrtoint ptr %50 to i64
  %55 = ptrtoint ptr %41 to i64
  %56 = sub i64 %54, %55
  %57 = lshr exact i64 %56, 1
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %40, %45, %53
  %60 = phi i32 [ %58, %53 ], [ 0, %45 ], [ 0, %40 ]
  %61 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKttjPNS_13MemoryManagerE(ptr noundef %41, i16 noundef zeroext 37, i32 noundef 0, ptr noundef %42)
          to label %62 unwind label %97, !prof !107

62:                                               ; preds = %59, %142
  %63 = phi i32 [ %147, %142 ], [ %61, %59 ]
  %64 = phi i32 [ %143, %142 ], [ %60, %59 ]
  %65 = icmp eq i32 %63, -1
  br i1 %65, label %150, label %66, !prof !107

66:                                               ; preds = %62
  %67 = add nsw i32 %63, 2
  %68 = icmp slt i32 %67, %64
  br i1 %68, label %69, label %90

69:                                               ; preds = %66
  %70 = add nuw nsw i32 %63, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, ptr %41, i64 %71
  %73 = load i16, ptr %72, align 2, !tbaa !83
  %74 = add i16 %73, -48
  %75 = icmp ult i16 %74, 10
  %76 = and i16 %73, -33
  %77 = add i16 %76, -65
  %78 = icmp ult i16 %77, 26
  %79 = or i1 %75, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %69
  %81 = sext i32 %67 to i64
  %82 = getelementptr inbounds i16, ptr %41, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !83
  %84 = add i16 %83, -48
  %85 = icmp ult i16 %84, 10
  %86 = and i16 %83, -33
  %87 = add i16 %86, -65
  %88 = icmp ult i16 %87, 26
  %89 = or i1 %85, %88
  br i1 %89, label %105, label %90

90:                                               ; preds = %80, %69, %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %91 = sext i32 %63 to i64
  %92 = getelementptr inbounds i16, ptr %41, i64 %91
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %3, ptr noundef nonnull align 2 dereferenceable(6) %92, i64 6, i1 false)
  %93 = getelementptr inbounds [4 x i16], ptr %3, i64 0, i64 3
  store i16 0, ptr %93, align 2, !tbaa !83
  %94 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %95 = load ptr, ptr %17, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %94, ptr noundef nonnull @.str, i32 noundef 618, i32 noundef 268, ptr noundef %41, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %95)
          to label %96 unwind label %101

96:                                               ; preds = %90
  invoke void @__cxa_throw(ptr nonnull %94, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %190 unwind label %99

97:                                               ; preds = %59
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %169

99:                                               ; preds = %96
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %103

101:                                              ; preds = %90
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %94) #14
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi { ptr, i32 } [ %100, %99 ], [ %102, %101 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %169

105:                                              ; preds = %80
  br i1 %75, label %113, label %106

106:                                              ; preds = %105
  %107 = add i16 %73, -65
  %108 = icmp ult i16 %107, 26
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = add nsw i16 %73, -55
  br label %113

111:                                              ; preds = %106
  %112 = add i16 %73, -87
  br label %113

113:                                              ; preds = %105, %109, %111
  %114 = phi i16 [ %110, %109 ], [ %112, %111 ], [ %74, %105 ]
  %115 = shl i16 %114, 4
  br i1 %85, label %123, label %116

116:                                              ; preds = %113
  %117 = add i16 %83, -65
  %118 = icmp ult i16 %117, 26
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = add nsw i16 %83, -55
  br label %123

121:                                              ; preds = %116
  %122 = add i16 %83, -87
  br label %123

123:                                              ; preds = %113, %119, %121
  %124 = phi i16 [ %120, %119 ], [ %122, %121 ], [ %84, %113 ]
  %125 = add i16 %124, %115
  %126 = sext i32 %63 to i64
  %127 = getelementptr inbounds i16, ptr %41, i64 %126
  store i16 %125, ptr %127, align 2, !tbaa !83
  %128 = add nsw i32 %64, -2
  %129 = icmp slt i32 %70, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %123
  %131 = sext i32 %70 to i64
  br label %132

132:                                              ; preds = %130, %132
  %133 = phi i64 [ %131, %130 ], [ %137, %132 ]
  %134 = getelementptr i16, ptr %41, i64 %133
  %135 = getelementptr i16, ptr %134, i64 2
  %136 = load i16, ptr %135, align 2, !tbaa !83
  store i16 %136, ptr %134, align 2, !tbaa !83
  %137 = add nsw i64 %133, 1
  %138 = trunc i64 %137 to i32
  %139 = icmp eq i32 %128, %138
  br i1 %139, label %140, label %132, !llvm.loop !122

140:                                              ; preds = %132
  %141 = trunc i64 %137 to i32
  br label %142

142:                                              ; preds = %140, %123
  %143 = phi i32 [ %70, %123 ], [ %141, %140 ]
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i16, ptr %41, i64 %144
  store i16 0, ptr %145, align 2, !tbaa !83
  %146 = load ptr, ptr %17, align 8, !tbaa !68
  %147 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKttjPNS_13MemoryManagerE(ptr noundef %41, i16 noundef zeroext 37, i32 noundef %63, ptr noundef %146)
          to label %62 unwind label %148, !llvm.loop !123

148:                                              ; preds = %142
  %149 = landingpad { ptr, i32 }
          cleanup
  br label %169

150:                                              ; preds = %62
  %151 = load ptr, ptr %17, align 8, !tbaa !68
  %152 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %151)
          to label %153 unwind label %163, !prof !107

153:                                              ; preds = %150
  %154 = load ptr, ptr %17, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_718BinFileInputStreamC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %152, ptr noundef %41, ptr noundef %154)
          to label %155 unwind label %165, !prof !107

155:                                              ; preds = %153
  %156 = getelementptr inbounds %"class.xercesc_2_7::BinFileInputStream", ptr %152, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !124
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %167, !prof !99

159:                                              ; preds = %155
  %160 = load ptr, ptr %152, align 8, !tbaa !66
  %161 = getelementptr inbounds ptr, ptr %160, i64 1
  %162 = load ptr, ptr %161, align 8
  tail call void %162(ptr noundef nonnull align 8 dereferenceable(24) %152) #14
  br label %167

163:                                              ; preds = %150
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %169

165:                                              ; preds = %153
  %166 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %152, ptr noundef %151) #14
  br label %169

167:                                              ; preds = %155, %159
  %168 = phi ptr [ null, %159 ], [ %152, %155 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  br label %186

169:                                              ; preds = %163, %165, %148, %103, %97
  %170 = phi { ptr, i32 } [ %104, %103 ], [ %149, %148 ], [ %98, %97 ], [ %166, %165 ], [ %164, %163 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  br label %188

171:                                              ; preds = %11, %1
  %172 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgNetAccessorE, align 8, !tbaa !127
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %176 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %175, ptr noundef nonnull @.str, i32 noundef 650, i32 noundef 100, ptr noundef %177)
          to label %178 unwind label %179

178:                                              ; preds = %174
  tail call void @__cxa_throw(ptr nonnull %175, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

179:                                              ; preds = %174
  %180 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %175) #14
  br label %188

181:                                              ; preds = %171
  %182 = load ptr, ptr %172, align 8, !tbaa !66
  %183 = getelementptr inbounds ptr, ptr %182, i64 3
  %184 = load ptr, ptr %183, align 8
  %185 = tail call noundef ptr %184(ptr noundef nonnull align 8 dereferenceable(8) %172, ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef null)
  br label %186

186:                                              ; preds = %181, %167
  %187 = phi ptr [ %185, %181 ], [ %168, %167 ]
  ret ptr %187

188:                                              ; preds = %179, %169
  %189 = phi { ptr, i32 } [ %180, %179 ], [ %170, %169 ]
  resume { ptr, i32 } %189

190:                                              ; preds = %96
  unreachable
}

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKttjPNS_13MemoryManagerE(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %12
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_718BinFileInputStreamC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL14makeRelativeToEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %3 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !71
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = load i16, ptr %9, align 2, !tbaa !83
  %13 = icmp eq i16 %12, 47
  br i1 %13, label %23, label %14

14:                                               ; preds = %2, %7, %11
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #14
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  call void @_ZN11xercesc_2_76XMLURLC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %3, ptr noundef %1, ptr noundef %16)
  %17 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %3, i1 noundef zeroext true)
          to label %18 unwind label %24

18:                                               ; preds = %14
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %3)
          to label %22 unwind label %19

19:                                               ; preds = %18
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  call void @__clang_call_terminate(ptr %21) #16
  unreachable

22:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #14
  br label %23

23:                                               ; preds = %11, %22
  ret void

24:                                               ; preds = %14
  %25 = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLURLE, i64 0, inrange i32 0, i64 2), ptr %3, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_76XMLURL7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(81) %3)
          to label %29 unwind label %26

26:                                               ; preds = %24
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #16
  unreachable

29:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #14
  resume { ptr, i32 } %25
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL14makeRelativeToERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(81) %1) local_unnamed_addr #0 align 2 !prof !53 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !71
  %5 = icmp eq i32 %4, 4
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i16, ptr %8, align 2, !tbaa !83
  %12 = icmp eq i16 %11, 47
  br i1 %12, label %15, label %13

13:                                               ; preds = %2, %6, %10
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b(ptr noundef nonnull align 8 dereferenceable(81) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, i1 noundef zeroext true)
  br label %15

15:                                               ; preds = %10, %13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_76XMLURL13buildFullTextEv(ptr nocapture noundef nonnull align 8 dereferenceable(81) %0) local_unnamed_addr #0 align 2 !prof !53 {
  %2 = alloca [17 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = load i16, ptr %4, align 2, !tbaa !83
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %11, %9 ], [ %4, %6 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !83
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !llvm.loop !95

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %4 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 1
  br label %19

19:                                               ; preds = %1, %6, %14
  %20 = phi i64 [ %18, %14 ], [ 0, %6 ], [ 0, %1 ]
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %19
  %25 = load i16, ptr %22, align 2, !tbaa !83
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %24, %27
  %28 = phi ptr [ %29, %27 ], [ %22, %24 ]
  %29 = getelementptr inbounds i16, ptr %28, i64 1
  %30 = load i16, ptr %29, align 2, !tbaa !83
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %27, !llvm.loop !95

32:                                               ; preds = %27
  %33 = ptrtoint ptr %29 to i64
  %34 = ptrtoint ptr %22 to i64
  %35 = sub i64 %33, %34
  %36 = lshr exact i64 %35, 1
  br label %37

37:                                               ; preds = %19, %24, %32
  %38 = phi i64 [ %36, %32 ], [ 0, %24 ], [ 0, %19 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %37
  %43 = load i16, ptr %40, align 2, !tbaa !83
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %42, %45
  %46 = phi ptr [ %47, %45 ], [ %40, %42 ]
  %47 = getelementptr inbounds i16, ptr %46, i64 1
  %48 = load i16, ptr %47, align 2, !tbaa !83
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %45, !llvm.loop !95

50:                                               ; preds = %45
  %51 = ptrtoint ptr %47 to i64
  %52 = ptrtoint ptr %40 to i64
  %53 = sub i64 %51, %52
  %54 = lshr exact i64 %53, 1
  br label %55

55:                                               ; preds = %37, %42, %50
  %56 = phi i64 [ %54, %50 ], [ 0, %42 ], [ 0, %37 ]
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !77
  %59 = icmp eq ptr %58, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %55
  %61 = load i16, ptr %58, align 2, !tbaa !83
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %60, %63
  %64 = phi ptr [ %65, %63 ], [ %58, %60 ]
  %65 = getelementptr inbounds i16, ptr %64, i64 1
  %66 = load i16, ptr %65, align 2, !tbaa !83
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %68, label %63, !llvm.loop !95

68:                                               ; preds = %63
  %69 = ptrtoint ptr %65 to i64
  %70 = ptrtoint ptr %58 to i64
  %71 = sub i64 %69, %70
  %72 = lshr exact i64 %71, 1
  br label %73

73:                                               ; preds = %55, %60, %68
  %74 = phi i64 [ %72, %68 ], [ 0, %60 ], [ 0, %55 ]
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !78
  %77 = icmp eq ptr %76, null
  br i1 %77, label %91, label %78

78:                                               ; preds = %73
  %79 = load i16, ptr %76, align 2, !tbaa !83
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78, %81
  %82 = phi ptr [ %83, %81 ], [ %76, %78 ]
  %83 = getelementptr inbounds i16, ptr %82, i64 1
  %84 = load i16, ptr %83, align 2, !tbaa !83
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %86, label %81, !llvm.loop !95

86:                                               ; preds = %81
  %87 = ptrtoint ptr %83 to i64
  %88 = ptrtoint ptr %76 to i64
  %89 = sub i64 %87, %88
  %90 = lshr exact i64 %89, 1
  br label %91

91:                                               ; preds = %73, %78, %86
  %92 = phi i64 [ %90, %86 ], [ 0, %78 ], [ 0, %73 ]
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 9
  %94 = load ptr, ptr %93, align 8, !tbaa !79
  %95 = icmp eq ptr %94, null
  br i1 %95, label %109, label %96

96:                                               ; preds = %91
  %97 = load i16, ptr %94, align 2, !tbaa !83
  %98 = icmp eq i16 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %96, %99
  %100 = phi ptr [ %101, %99 ], [ %94, %96 ]
  %101 = getelementptr inbounds i16, ptr %100, i64 1
  %102 = load i16, ptr %101, align 2, !tbaa !83
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %104, label %99, !llvm.loop !95

104:                                              ; preds = %99
  %105 = ptrtoint ptr %101 to i64
  %106 = ptrtoint ptr %94 to i64
  %107 = sub i64 %105, %106
  %108 = lshr exact i64 %107, 1
  br label %109

109:                                              ; preds = %91, %96, %104
  %110 = phi i64 [ %108, %104 ], [ 0, %96 ], [ 0, %91 ]
  %111 = add nuw i64 %20, 10
  %112 = add i64 %111, %38
  %113 = add i64 %112, %56
  %114 = add i64 %113, %74
  %115 = add i64 %114, %92
  %116 = add i64 %115, %110
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !68
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 10
  %120 = load ptr, ptr %119, align 8, !tbaa !80
  %121 = load ptr, ptr %118, align 8, !tbaa !66
  %122 = getelementptr inbounds ptr, ptr %121, i64 3
  %123 = load ptr, ptr %122, align 8
  tail call void %123(ptr noundef nonnull align 8 dereferenceable(8) %118, ptr noundef %120)
  %124 = load ptr, ptr %117, align 8, !tbaa !68
  %125 = shl i64 %116, 1
  %126 = add i64 %125, 66
  %127 = and i64 %126, 8589934590
  %128 = load ptr, ptr %124, align 8, !tbaa !66
  %129 = getelementptr inbounds ptr, ptr %128, i64 2
  %130 = load ptr, ptr %129, align 8
  %131 = tail call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(8) %124, i64 noundef %127)
  store ptr %131, ptr %119, align 8, !tbaa !80
  store i16 0, ptr %131, align 2, !tbaa !83
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 7
  %133 = load i32, ptr %132, align 4, !tbaa !71
  %134 = icmp eq i32 %133, 4
  br i1 %134, label %159, label %135

135:                                              ; preds = %109
  %136 = tail call noundef ptr @_ZNK11xercesc_2_76XMLURL15getProtocolNameEv(ptr noundef nonnull align 8 dereferenceable(81) %0)
  tail call void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %131, ptr noundef %136)
  %137 = load ptr, ptr %119, align 8, !tbaa !80
  %138 = icmp eq ptr %137, null
  br i1 %138, label %152, label %139

139:                                              ; preds = %135
  %140 = load i16, ptr %137, align 2, !tbaa !83
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %139, %142
  %143 = phi ptr [ %144, %142 ], [ %137, %139 ]
  %144 = getelementptr inbounds i16, ptr %143, i64 1
  %145 = load i16, ptr %144, align 2, !tbaa !83
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %147, label %142, !llvm.loop !95

147:                                              ; preds = %142
  %148 = ptrtoint ptr %144 to i64
  %149 = ptrtoint ptr %137 to i64
  %150 = sub i64 %148, %149
  %151 = lshr exact i64 %150, 1
  br label %152

152:                                              ; preds = %135, %139, %147
  %153 = phi i64 [ %151, %147 ], [ 0, %139 ], [ 0, %135 ]
  %154 = and i64 %153, 4294967295
  %155 = getelementptr inbounds i16, ptr %131, i64 %154
  %156 = getelementptr inbounds i16, ptr %155, i64 1
  store i16 58, ptr %155, align 2, !tbaa !83
  %157 = getelementptr inbounds i16, ptr %155, i64 2
  store i16 47, ptr %156, align 2, !tbaa !83
  %158 = getelementptr inbounds i16, ptr %155, i64 3
  store i16 47, ptr %157, align 2, !tbaa !83
  br label %159

159:                                              ; preds = %152, %109
  %160 = phi ptr [ %158, %152 ], [ %131, %109 ]
  %161 = load ptr, ptr %93, align 8, !tbaa !79
  %162 = icmp eq ptr %161, null
  br i1 %162, label %209, label %163

163:                                              ; preds = %159
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %160, ptr noundef nonnull %161)
  %164 = load ptr, ptr %93, align 8, !tbaa !79
  %165 = icmp eq ptr %164, null
  br i1 %165, label %179, label %166

166:                                              ; preds = %163
  %167 = load i16, ptr %164, align 2, !tbaa !83
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %179, label %169

169:                                              ; preds = %166, %169
  %170 = phi ptr [ %171, %169 ], [ %164, %166 ]
  %171 = getelementptr inbounds i16, ptr %170, i64 1
  %172 = load i16, ptr %171, align 2, !tbaa !83
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %174, label %169, !llvm.loop !95

174:                                              ; preds = %169
  %175 = ptrtoint ptr %171 to i64
  %176 = ptrtoint ptr %164 to i64
  %177 = sub i64 %175, %176
  %178 = lshr exact i64 %177, 1
  br label %179

179:                                              ; preds = %163, %166, %174
  %180 = phi i64 [ %178, %174 ], [ 0, %166 ], [ 0, %163 ]
  %181 = and i64 %180, 4294967295
  %182 = getelementptr inbounds i16, ptr %160, i64 %181
  %183 = load ptr, ptr %39, align 8, !tbaa !76
  %184 = icmp eq ptr %183, null
  br i1 %184, label %206, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds i16, ptr %182, i64 1
  store i16 58, ptr %182, align 2, !tbaa !83
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %186, ptr noundef nonnull %183)
  %187 = load ptr, ptr %39, align 8, !tbaa !76
  %188 = icmp eq ptr %187, null
  br i1 %188, label %203, label %189

189:                                              ; preds = %185
  %190 = load i16, ptr %187, align 2, !tbaa !83
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %203, label %192

192:                                              ; preds = %189, %192
  %193 = phi ptr [ %194, %192 ], [ %187, %189 ]
  %194 = getelementptr inbounds i16, ptr %193, i64 1
  %195 = load i16, ptr %194, align 2, !tbaa !83
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %197, label %192, !llvm.loop !95

197:                                              ; preds = %192
  %198 = ptrtoint ptr %194 to i64
  %199 = ptrtoint ptr %187 to i64
  %200 = sub i64 %198, %199
  %201 = lshr exact i64 %200, 1
  %202 = and i64 %201, 4294967295
  br label %203

203:                                              ; preds = %185, %189, %197
  %204 = phi i64 [ %202, %197 ], [ 0, %189 ], [ 0, %185 ]
  %205 = getelementptr inbounds i16, ptr %186, i64 %204
  br label %206

206:                                              ; preds = %203, %179
  %207 = phi ptr [ %205, %203 ], [ %182, %179 ]
  %208 = getelementptr inbounds i16, ptr %207, i64 1
  store i16 64, ptr %207, align 2, !tbaa !83
  br label %209

209:                                              ; preds = %206, %159
  %210 = phi ptr [ %208, %206 ], [ %160, %159 ]
  %211 = load ptr, ptr %21, align 8, !tbaa !75
  %212 = icmp eq ptr %211, null
  br i1 %212, label %255, label %213

213:                                              ; preds = %209
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %210, ptr noundef nonnull %211)
  %214 = load ptr, ptr %21, align 8, !tbaa !75
  %215 = icmp eq ptr %214, null
  br i1 %215, label %230, label %216

216:                                              ; preds = %213
  %217 = load i16, ptr %214, align 2, !tbaa !83
  %218 = icmp eq i16 %217, 0
  br i1 %218, label %230, label %219

219:                                              ; preds = %216, %219
  %220 = phi ptr [ %221, %219 ], [ %214, %216 ]
  %221 = getelementptr inbounds i16, ptr %220, i64 1
  %222 = load i16, ptr %221, align 2, !tbaa !83
  %223 = icmp eq i16 %222, 0
  br i1 %223, label %224, label %219, !llvm.loop !95

224:                                              ; preds = %219
  %225 = ptrtoint ptr %221 to i64
  %226 = ptrtoint ptr %214 to i64
  %227 = sub i64 %225, %226
  %228 = lshr exact i64 %227, 1
  %229 = and i64 %228, 4294967295
  br label %230

230:                                              ; preds = %213, %216, %224
  %231 = phi i64 [ %229, %224 ], [ 0, %216 ], [ 0, %213 ]
  %232 = getelementptr inbounds i16, ptr %210, i64 %231
  %233 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %0, i64 0, i32 6
  %234 = load i32, ptr %233, align 8, !tbaa !81
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %255, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds i16, ptr %232, i64 1
  store i16 58, ptr %232, align 2, !tbaa !83
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %2) #14
  %238 = load ptr, ptr %117, align 8, !tbaa !68
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %234, ptr noundef nonnull %2, i32 noundef 16, i32 noundef 10, ptr noundef %238)
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %237, ptr noundef nonnull %2)
  %239 = load i16, ptr %2, align 16, !tbaa !83
  %240 = icmp eq i16 %239, 0
  br i1 %240, label %252, label %241

241:                                              ; preds = %236, %241
  %242 = phi ptr [ %243, %241 ], [ %2, %236 ]
  %243 = getelementptr inbounds i16, ptr %242, i64 1
  %244 = load i16, ptr %243, align 2, !tbaa !83
  %245 = icmp eq i16 %244, 0
  br i1 %245, label %246, label %241, !llvm.loop !95

246:                                              ; preds = %241
  %247 = ptrtoint ptr %243 to i64
  %248 = ptrtoint ptr %2 to i64
  %249 = sub i64 %247, %248
  %250 = lshr exact i64 %249, 1
  %251 = and i64 %250, 4294967295
  br label %252

252:                                              ; preds = %236, %246
  %253 = phi i64 [ %251, %246 ], [ 0, %236 ]
  %254 = getelementptr inbounds i16, ptr %237, i64 %253
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %2) #14
  br label %255

255:                                              ; preds = %230, %252, %209
  %256 = phi ptr [ %254, %252 ], [ %232, %230 ], [ %210, %209 ]
  %257 = load ptr, ptr %57, align 8, !tbaa !77
  %258 = icmp eq ptr %257, null
  br i1 %258, label %279, label %259

259:                                              ; preds = %255
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %256, ptr noundef nonnull %257)
  %260 = load ptr, ptr %57, align 8, !tbaa !77
  %261 = icmp eq ptr %260, null
  br i1 %261, label %276, label %262

262:                                              ; preds = %259
  %263 = load i16, ptr %260, align 2, !tbaa !83
  %264 = icmp eq i16 %263, 0
  br i1 %264, label %276, label %265

265:                                              ; preds = %262, %265
  %266 = phi ptr [ %267, %265 ], [ %260, %262 ]
  %267 = getelementptr inbounds i16, ptr %266, i64 1
  %268 = load i16, ptr %267, align 2, !tbaa !83
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %270, label %265, !llvm.loop !95

270:                                              ; preds = %265
  %271 = ptrtoint ptr %267 to i64
  %272 = ptrtoint ptr %260 to i64
  %273 = sub i64 %271, %272
  %274 = lshr exact i64 %273, 1
  %275 = and i64 %274, 4294967295
  br label %276

276:                                              ; preds = %259, %262, %270
  %277 = phi i64 [ %275, %270 ], [ 0, %262 ], [ 0, %259 ]
  %278 = getelementptr inbounds i16, ptr %256, i64 %277
  br label %279

279:                                              ; preds = %276, %255
  %280 = phi ptr [ %278, %276 ], [ %256, %255 ]
  %281 = load ptr, ptr %75, align 8, !tbaa !78
  %282 = icmp eq ptr %281, null
  br i1 %282, label %304, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds i16, ptr %280, i64 1
  store i16 63, ptr %280, align 2, !tbaa !83
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %284, ptr noundef nonnull %281)
  %285 = load ptr, ptr %75, align 8, !tbaa !78
  %286 = icmp eq ptr %285, null
  br i1 %286, label %301, label %287

287:                                              ; preds = %283
  %288 = load i16, ptr %285, align 2, !tbaa !83
  %289 = icmp eq i16 %288, 0
  br i1 %289, label %301, label %290

290:                                              ; preds = %287, %290
  %291 = phi ptr [ %292, %290 ], [ %285, %287 ]
  %292 = getelementptr inbounds i16, ptr %291, i64 1
  %293 = load i16, ptr %292, align 2, !tbaa !83
  %294 = icmp eq i16 %293, 0
  br i1 %294, label %295, label %290, !llvm.loop !95

295:                                              ; preds = %290
  %296 = ptrtoint ptr %292 to i64
  %297 = ptrtoint ptr %285 to i64
  %298 = sub i64 %296, %297
  %299 = lshr exact i64 %298, 1
  %300 = and i64 %299, 4294967295
  br label %301

301:                                              ; preds = %283, %287, %295
  %302 = phi i64 [ %300, %295 ], [ 0, %287 ], [ 0, %283 ]
  %303 = getelementptr inbounds i16, ptr %284, i64 %302
  br label %304

304:                                              ; preds = %301, %279
  %305 = phi ptr [ %303, %301 ], [ %280, %279 ]
  %306 = load ptr, ptr %3, align 8, !tbaa !73
  %307 = icmp eq ptr %306, null
  br i1 %307, label %329, label %308

308:                                              ; preds = %304
  %309 = getelementptr inbounds i16, ptr %305, i64 1
  store i16 35, ptr %305, align 2, !tbaa !83
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %309, ptr noundef nonnull %306)
  %310 = load ptr, ptr %3, align 8, !tbaa !73
  %311 = icmp eq ptr %310, null
  br i1 %311, label %326, label %312

312:                                              ; preds = %308
  %313 = load i16, ptr %310, align 2, !tbaa !83
  %314 = icmp eq i16 %313, 0
  br i1 %314, label %326, label %315

315:                                              ; preds = %312, %315
  %316 = phi ptr [ %317, %315 ], [ %310, %312 ]
  %317 = getelementptr inbounds i16, ptr %316, i64 1
  %318 = load i16, ptr %317, align 2, !tbaa !83
  %319 = icmp eq i16 %318, 0
  br i1 %319, label %320, label %315, !llvm.loop !95

320:                                              ; preds = %315
  %321 = ptrtoint ptr %317 to i64
  %322 = ptrtoint ptr %310 to i64
  %323 = sub i64 %321, %322
  %324 = lshr exact i64 %323, 1
  %325 = and i64 %324, 4294967295
  br label %326

326:                                              ; preds = %308, %312, %320
  %327 = phi i64 [ %325, %320 ], [ 0, %312 ], [ 0, %308 ]
  %328 = getelementptr inbounds i16, ptr %309, i64 %327
  br label %329

329:                                              ; preds = %326, %304
  %330 = phi ptr [ %328, %326 ], [ %305, %304 ]
  store i16 0, ptr %330, align 2, !tbaa !83
  ret void
}

declare void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10weavePathsEPKtS2_PNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11isURIStringEPKt(ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_79XMLString3cutEPtj(ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString9textToBinEPKtRjPNS_13MemoryManagerE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !53 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !53 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !53 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !66
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind memory(none) }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!52}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!35 = !{ptr @_ZN11xercesc_2_76XMLURL6setURLEPKt, ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv, i64 2}
!36 = !{ptr @_ZN11xercesc_2_76XMLURL6setURLEPKt, ptr @_ZN11xercesc_2_76XMLURL5parseEPKt, i64 2}
!37 = !{ptr @_ZN11xercesc_2_76XMLURLD2Ev, ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv, i64 3}
!38 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKt, ptr @_ZN11xercesc_2_76XMLUri11isURIStringEPKt, i64 2}
!39 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKt, ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt, i64 6}
!40 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKt, ptr @_ZN11xercesc_2_79XMLString19compareIStringASCIIEPKtS2_, i64 2}
!41 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKt, ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, i64 2}
!42 = !{ptr @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_, ptr @_ZN11xercesc_2_76XMLURL7cleanUpEv, i64 2}
!43 = !{ptr @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_, ptr @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_, i64 2}
!44 = !{ptr @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_, ptr @_ZN11xercesc_2_76XMLURL20conglomerateWithBaseERKS0_b, i64 1}
!45 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_, ptr @_ZN11xercesc_2_76XMLUri11isURIStringEPKt, i64 2}
!46 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_, ptr @_ZN11xercesc_2_79XMLString7findAnyEPtPKt, i64 4}
!47 = !{ptr @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_, ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, i64 2}
!48 = !{ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKttjPNS_13MemoryManagerE, i64 2}
!49 = !{ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 2}
!50 = !{ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, ptr @_ZN11xercesc_2_718BinFileInputStreamC1EPKtPNS_13MemoryManagerE, i64 2}
!51 = !{ptr @_ZNK11xercesc_2_76XMLURL13makeNewStreamEv, ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, i64 2}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 0}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = !{!58, !62, i64 8}
!58 = !{!"_ZTSN11xercesc_2_710ProtoEntryE", !59, i64 0, !62, i64 8, !63, i64 16}
!59 = !{!"_ZTSN11xercesc_2_76XMLURL9ProtocolsE", !60, i64 0}
!60 = !{!"omnipotent char", !61, i64 0}
!61 = !{!"Simple C++ TBAA"}
!62 = !{!"any pointer", !60, i64 0}
!63 = !{!"int", !60, i64 0}
!64 = !{!58, !59, i64 0}
!65 = !{!"function_entry_count", i64 3}
!66 = !{!67, !67, i64 0}
!67 = !{!"vtable pointer", !61, i64 0}
!68 = !{!69, !62, i64 8}
!69 = !{!"_ZTSN11xercesc_2_76XMLURLE", !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !63, i64 48, !59, i64 52, !62, i64 56, !62, i64 64, !62, i64 72, !70, i64 80}
!70 = !{!"bool", !60, i64 0}
!71 = !{!69, !59, i64 52}
!72 = !{!"function_entry_count", i64 7}
!73 = !{!69, !62, i64 16}
!74 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!75 = !{!69, !62, i64 24}
!76 = !{!69, !62, i64 32}
!77 = !{!69, !62, i64 40}
!78 = !{!69, !62, i64 56}
!79 = !{!69, !62, i64 64}
!80 = !{!69, !62, i64 72}
!81 = !{!69, !63, i64 48}
!82 = !{!69, !70, i64 80}
!83 = !{!84, !84, i64 0}
!84 = !{!"short", !60, i64 0}
!85 = !{!86, !62, i64 0}
!86 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !62, i64 0, !62, i64 8}
!87 = !{!86, !62, i64 8}
!88 = !{!"function_entry_count", i64 243874}
!89 = !{!"branch_weights", i32 191815, i32 52059}
!90 = !{!"branch_weights", i32 0, i32 52059}
!91 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!92 = !{!"function_entry_count", i64 2}
!93 = !{i8 0, i8 2}
!94 = !{}
!95 = distinct !{!95, !55, !56}
!96 = !{!"branch_weights", i32 3, i32 0}
!97 = distinct !{!97, !55, !56}
!98 = !{!58, !63, i64 16}
!99 = !{!"branch_weights", i32 0, i32 2}
!100 = !{!"branch_weights", i32 4, i32 0}
!101 = !{!"branch_weights", i32 2, i32 282}
!102 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!103 = !{!"VP", i32 1, i64 2, i64 257, i64 2}
!104 = !{!"branch_weights", i32 0, i32 1}
!105 = !{!60, !60, i64 0}
!106 = distinct !{!106, !55, !56}
!107 = !{!"branch_weights", i32 2, i32 0}
!108 = distinct !{!108, !55, !56}
!109 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!110 = !{!"branch_weights", i32 2, i32 268}
!111 = distinct !{!111, !55, !56}
!112 = distinct !{!112, !55, !56}
!113 = !{!"function_entry_count", i64 1}
!114 = !{!"branch_weights", i32 1, i32 0}
!115 = !{!"branch_weights", i32 2, i32 2}
!116 = !{!"branch_weights", i32 2, i32 13}
!117 = !{!"VP", i32 1, i64 2, i64 17, i64 1, i64 9, i64 1}
!118 = distinct !{!118, !55, !56}
!119 = distinct !{!119, !55, !56}
!120 = distinct !{!120, !55, !56}
!121 = distinct !{!121, !55, !56}
!122 = distinct !{!122, !55, !56}
!123 = distinct !{!123, !55, !56}
!124 = !{!125, !62, i64 8}
!125 = !{!"_ZTSN11xercesc_2_718BinFileInputStreamE", !126, i64 0, !62, i64 8, !62, i64 16}
!126 = !{!"_ZTSN11xercesc_2_714BinInputStreamE"}
!127 = !{!62, !62, i64 0}
!128 = !{!129, !62, i64 40}
!129 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !130, i64 8, !62, i64 16, !63, i64 24, !62, i64 32, !62, i64 40}
!130 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !60, i64 0}
