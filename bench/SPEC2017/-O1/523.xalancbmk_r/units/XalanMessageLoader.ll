; ModuleID = 'XalanMessageLoader.cpp'
source_filename = "XalanMessageLoader.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanMessageLoader::XalanMessageLoaderCreateFunct" = type { i8 }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>

$_ZN11xalanc_1_1018XalanMessageLoader29XalanMessageLoaderCreateFunctINS_26XalanInMemoryMessageLoaderEEclERN11xercesc_2_713MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_1018XalanMessageLoader11s_msgLoaderE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xalanc_1_10L13s_initManagerE = internal unnamed_addr global ptr null, align 8
@_ZTVN11xalanc_1_1018XalanMessageLoaderE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1018XalanMessageLoaderE, ptr @_ZN11xalanc_1_1018XalanMessageLoaderD2Ev, ptr @_ZN11xalanc_1_1018XalanMessageLoaderD0Ev, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1018XalanMessageLoaderE = dso_local constant [36 x i8] c"N11xalanc_1_1018XalanMessageLoaderE\00", align 1
@_ZTIN11xalanc_1_1018XalanMessageLoaderE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1018XalanMessageLoaderE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1018XalanMessageLoaderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018XalanMessageLoaderD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1018XalanMessageLoaderD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #0 align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1018XalanMessageLoaderD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !39 {
  tail call void @llvm.trap() #7
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XalanMessageLoader10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 align 2 !prof !38 {
  %2 = alloca %"class.xalanc_1_10::XalanMessageLoader::XalanMessageLoaderCreateFunct", align 1
  %3 = load ptr, ptr @_ZN11xalanc_1_1018XalanMessageLoader11s_msgLoaderE, align 8, !tbaa !40
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !44

5:                                                ; preds = %1
  store ptr %0, ptr @_ZN11xalanc_1_10L13s_initManagerE, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  %6 = call noundef ptr @_ZN11xalanc_1_1018XalanMessageLoader29XalanMessageLoaderCreateFunctINS_26XalanInMemoryMessageLoaderEEclERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr %6, ptr @_ZN11xalanc_1_1018XalanMessageLoader11s_msgLoaderE, align 8, !tbaa !40
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanMessageLoader29XalanMessageLoaderCreateFunctINS_26XalanInMemoryMessageLoaderEEclERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 48), !prof !47
  invoke void @_ZN11xalanc_1_1026XalanInMemoryMessageLoaderC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %7 unwind label %8, !prof !44

7:                                                ; preds = %2
  ret ptr %6

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = icmp eq ptr %6, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 8, !tbaa !45
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %6)
          to label %18 unwind label %15

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #7
  unreachable

18:                                               ; preds = %8, %11
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018XalanMessageLoader9terminateEv() local_unnamed_addr #3 align 2 !prof !38 {
  %1 = load ptr, ptr @_ZN11xalanc_1_1018XalanMessageLoader11s_msgLoaderE, align 8, !tbaa !40
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3, !prof !48

3:                                                ; preds = %0
  %4 = load ptr, ptr @_ZN11xalanc_1_10L13s_initManagerE, align 8, !tbaa !40
  %5 = load ptr, ptr %1, align 8, !tbaa !45
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #8, !prof !49
  %7 = load ptr, ptr %4, align 8, !tbaa !45
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %1), !prof !50
  br label %10

10:                                               ; preds = %0, %3
  store ptr null, ptr @_ZN11xalanc_1_1018XalanMessageLoader11s_msgLoaderE, align 8, !tbaa !40
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %2) local_unnamed_addr #3 align 2 !prof !39 {
  %4 = alloca [1024 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %4) #8
  %5 = load ptr, ptr @_ZN11xalanc_1_1018XalanMessageLoader11s_msgLoaderE, align 8, !tbaa !40
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !54
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %5, align 8, !tbaa !45
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 1024)
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = icmp eq i64 %8, 0
  %17 = select i1 %16, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10
  %18 = call noundef i32 @_ZN11xercesc_2_79XMLString13replaceTokensEPtjPKtS3_S3_S3_PNS_13MemoryManagerE(ptr noundef nonnull %4, i32 noundef 1024, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %6)
  br label %19

19:                                               ; preds = %3, %15
  call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %20 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %4)
  %21 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %4, i32 noundef %20)
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %4) #8
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1018XalanMessageLoader4loadENS_13XalanMessages5CodesERN11xercesc_2_713MemoryManagerEPtjPKtS8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #3 align 2 !prof !39 {
  %10 = load ptr, ptr %0, align 8, !tbaa !45
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %3, i32 noundef %4)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13replaceTokensEPtjPKtS3_S3_S3_PNS_13MemoryManagerE(ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef nonnull %2)
  br label %16

16:                                               ; preds = %9, %14
  ret i1 %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %3) local_unnamed_addr #3 align 2 !prof !39 {
  %5 = alloca [1024 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %5) #8
  %6 = load ptr, ptr @_ZN11xalanc_1_1018XalanMessageLoader11s_msgLoaderE, align 8, !tbaa !40
  %7 = load ptr, ptr %0, align 8, !tbaa !51
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !54
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %6, align 8, !tbaa !45
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %1, ptr noundef nonnull %5, i32 noundef 1024)
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = icmp eq i64 %13, 0
  %22 = select i1 %21, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %15
  %23 = icmp eq i64 %9, 0
  %24 = select i1 %23, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %11
  %25 = call noundef i32 @_ZN11xercesc_2_79XMLString13replaceTokensEPtjPKtS3_S3_S3_PNS_13MemoryManagerE(ptr noundef nonnull %5, i32 noundef 1024, ptr noundef %24, ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef nonnull %7)
  br label %26

26:                                               ; preds = %4, %20
  call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %27 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %5)
  %28 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %5, i32 noundef %27)
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %5) #8
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_S6_(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %4) local_unnamed_addr #3 align 2 !prof !39 {
  %6 = alloca [1024 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %6) #8
  %7 = load ptr, ptr @_ZN11xalanc_1_1018XalanMessageLoader11s_msgLoaderE, align 8, !tbaa !40
  %8 = load ptr, ptr %0, align 8, !tbaa !51
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !54
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !54
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %7, align 8, !tbaa !45
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %1, ptr noundef nonnull %6, i32 noundef 1024)
  br i1 %24, label %25, label %33

25:                                               ; preds = %5
  %26 = icmp eq i64 %18, 0
  %27 = select i1 %26, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %20
  %28 = icmp eq i64 %14, 0
  %29 = select i1 %28, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %16
  %30 = icmp eq i64 %10, 0
  %31 = select i1 %30, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %12
  %32 = call noundef i32 @_ZN11xercesc_2_79XMLString13replaceTokensEPtjPKtS3_S3_S3_PNS_13MemoryManagerE(ptr noundef nonnull %6, i32 noundef 1024, ptr noundef %31, ptr noundef %29, ptr noundef %27, ptr noundef null, ptr noundef nonnull %8)
  br label %33

33:                                               ; preds = %5, %25
  call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %34 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %6)
  %35 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %6, i32 noundef %34)
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %6) #8
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !39 {
  %3 = alloca [1024 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #8
  %4 = load ptr, ptr @_ZN11xalanc_1_1018XalanMessageLoader11s_msgLoaderE, align 8, !tbaa !40
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 1024)
  call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %9 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %3)
  %10 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %3, i32 noundef %9)
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #8
  ret ptr %0
}

declare noundef i32 @_ZN11xercesc_2_79XMLString13replaceTokensEPtjPKtS3_S3_S3_PNS_13MemoryManagerE(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 !prof !39 {
  %7 = alloca [1024 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %7) #8
  %8 = load ptr, ptr @_ZN11xalanc_1_1018XalanMessageLoader11s_msgLoaderE, align 8, !tbaa !40
  %9 = load ptr, ptr %0, align 8, !tbaa !51
  %10 = call noundef zeroext i1 @_ZN11xalanc_1_1018XalanMessageLoader4loadENS_13XalanMessages5CodesERN11xercesc_2_713MemoryManagerEPtjPKcS8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %7, i32 noundef 1024, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %11 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %7)
  %12 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %7, i32 noundef %11)
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %7) #8
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1018XalanMessageLoader4loadENS_13XalanMessages5CodesERN11xercesc_2_713MemoryManagerEPtjPKcS8_S8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %10 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %11 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %12 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %13 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #8
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %14 = icmp eq ptr %5, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %9
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 0, i32 noundef -1)
          to label %16 unwind label %20

16:                                               ; preds = %15
  %17 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull %5)
          to label %18 unwind label %20

18:                                               ; preds = %16
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull %5, i32 noundef %17)
          to label %22 unwind label %20

20:                                               ; preds = %18, %16, %15
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %192

22:                                               ; preds = %18, %9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #8
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %23 unwind label %30

23:                                               ; preds = %22
  %24 = icmp eq ptr %6, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %23
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %11, i32 noundef 0, i32 noundef -1)
          to label %26 unwind label %32

26:                                               ; preds = %25
  %27 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull %6)
          to label %28 unwind label %32

28:                                               ; preds = %26
  %29 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull %6, i32 noundef %27)
          to label %34 unwind label %32

30:                                               ; preds = %22
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %190

32:                                               ; preds = %28, %26, %25
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %175

34:                                               ; preds = %28, %23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #8
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %35 unwind label %42

35:                                               ; preds = %34
  %36 = icmp eq ptr %7, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %35
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %12, i32 noundef 0, i32 noundef -1)
          to label %38 unwind label %44

38:                                               ; preds = %37
  %39 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull %7)
          to label %40 unwind label %44

40:                                               ; preds = %38
  %41 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull %7, i32 noundef %39)
          to label %46 unwind label %44

42:                                               ; preds = %34
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %173

44:                                               ; preds = %40, %38, %37
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %158

46:                                               ; preds = %40, %35
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #8
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %47 unwind label %54

47:                                               ; preds = %46
  %48 = icmp eq ptr %8, null
  br i1 %48, label %71, label %49

49:                                               ; preds = %47
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef 0, i32 noundef -1)
          to label %50 unwind label %56

50:                                               ; preds = %49
  %51 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull %8)
          to label %52 unwind label %56

52:                                               ; preds = %50
  %53 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull %8, i32 noundef %51)
          to label %71 unwind label %56

54:                                               ; preds = %46
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %156

56:                                               ; preds = %101, %71, %52, %50, %49
  %57 = landingpad { ptr, i32 }
          cleanup
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !55
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %156, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !56
  %64 = load ptr, ptr %13, align 8, !tbaa !51
  %65 = load ptr, ptr %64, align 8, !tbaa !45
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef %63)
          to label %156 unwind label %68

68:                                               ; preds = %61
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  call void @__clang_call_terminate(ptr %70) #7
  unreachable

71:                                               ; preds = %52, %47
  %72 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !54
  %74 = icmp eq i64 %73, 0
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8
  %77 = select i1 %74, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %76
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !54
  %80 = icmp eq i64 %79, 0
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8
  %83 = select i1 %80, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %82
  %84 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !54
  %86 = icmp eq i64 %85, 0
  %87 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8
  %89 = select i1 %86, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %88
  %90 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !54
  %92 = icmp eq i64 %91, 0
  %93 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8
  %95 = select i1 %92, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %94
  %96 = load ptr, ptr %0, align 8, !tbaa !45
  %97 = getelementptr inbounds ptr, ptr %96, i64 2
  %98 = load ptr, ptr %97, align 8
  %99 = invoke noundef zeroext i1 %98(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %3, i32 noundef %4)
          to label %100 unwind label %56

100:                                              ; preds = %71
  br i1 %99, label %101, label %103

101:                                              ; preds = %100
  %102 = invoke noundef i32 @_ZN11xercesc_2_79XMLString13replaceTokensEPtjPKtS3_S3_S3_PNS_13MemoryManagerE(ptr noundef %3, i32 noundef %4, ptr noundef %77, ptr noundef %83, ptr noundef %89, ptr noundef %95, ptr noundef nonnull %2)
          to label %103 unwind label %56

103:                                              ; preds = %100, %101
  %104 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 2
  %105 = load i64, ptr %104, align 8, !tbaa !55
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %93, align 8, !tbaa !56
  %109 = load ptr, ptr %13, align 8, !tbaa !51
  %110 = load ptr, ptr %109, align 8, !tbaa !45
  %111 = getelementptr inbounds ptr, ptr %110, i64 3
  %112 = load ptr, ptr %111, align 8
  invoke void %112(ptr noundef nonnull align 8 dereferenceable(8) %109, ptr noundef %108)
          to label %116 unwind label %113

113:                                              ; preds = %107
  %114 = landingpad { ptr, i32 }
          catch ptr null
  %115 = extractvalue { ptr, i32 } %114, 0
  call void @__clang_call_terminate(ptr %115) #7
  unreachable

116:                                              ; preds = %103, %107
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #8
  %117 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa !55
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %116
  %121 = load ptr, ptr %87, align 8, !tbaa !56
  %122 = load ptr, ptr %12, align 8, !tbaa !51
  %123 = load ptr, ptr %122, align 8, !tbaa !45
  %124 = getelementptr inbounds ptr, ptr %123, i64 3
  %125 = load ptr, ptr %124, align 8
  invoke void %125(ptr noundef nonnull align 8 dereferenceable(8) %122, ptr noundef %121)
          to label %129 unwind label %126

126:                                              ; preds = %120
  %127 = landingpad { ptr, i32 }
          catch ptr null
  %128 = extractvalue { ptr, i32 } %127, 0
  call void @__clang_call_terminate(ptr %128) #7
  unreachable

129:                                              ; preds = %116, %120
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #8
  %130 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 2
  %131 = load i64, ptr %130, align 8, !tbaa !55
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %142, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %81, align 8, !tbaa !56
  %135 = load ptr, ptr %11, align 8, !tbaa !51
  %136 = load ptr, ptr %135, align 8, !tbaa !45
  %137 = getelementptr inbounds ptr, ptr %136, i64 3
  %138 = load ptr, ptr %137, align 8
  invoke void %138(ptr noundef nonnull align 8 dereferenceable(8) %135, ptr noundef %134)
          to label %142 unwind label %139

139:                                              ; preds = %133
  %140 = landingpad { ptr, i32 }
          catch ptr null
  %141 = extractvalue { ptr, i32 } %140, 0
  call void @__clang_call_terminate(ptr %141) #7
  unreachable

142:                                              ; preds = %129, %133
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #8
  %143 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %144 = load i64, ptr %143, align 8, !tbaa !55
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %142
  %147 = load ptr, ptr %75, align 8, !tbaa !56
  %148 = load ptr, ptr %10, align 8, !tbaa !51
  %149 = load ptr, ptr %148, align 8, !tbaa !45
  %150 = getelementptr inbounds ptr, ptr %149, i64 3
  %151 = load ptr, ptr %150, align 8
  invoke void %151(ptr noundef nonnull align 8 dereferenceable(8) %148, ptr noundef %147)
          to label %155 unwind label %152

152:                                              ; preds = %146
  %153 = landingpad { ptr, i32 }
          catch ptr null
  %154 = extractvalue { ptr, i32 } %153, 0
  call void @__clang_call_terminate(ptr %154) #7
  unreachable

155:                                              ; preds = %142, %146
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #8
  ret i1 %99

156:                                              ; preds = %61, %56, %54
  %157 = phi { ptr, i32 } [ %55, %54 ], [ %57, %56 ], [ %57, %61 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #8
  br label %158

158:                                              ; preds = %156, %44
  %159 = phi { ptr, i32 } [ %157, %156 ], [ %45, %44 ]
  %160 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 2
  %161 = load i64, ptr %160, align 8, !tbaa !55
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %12, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !56
  %166 = load ptr, ptr %12, align 8, !tbaa !51
  %167 = load ptr, ptr %166, align 8, !tbaa !45
  %168 = getelementptr inbounds ptr, ptr %167, i64 3
  %169 = load ptr, ptr %168, align 8
  invoke void %169(ptr noundef nonnull align 8 dereferenceable(8) %166, ptr noundef %165)
          to label %173 unwind label %170

170:                                              ; preds = %163
  %171 = landingpad { ptr, i32 }
          catch ptr null
  %172 = extractvalue { ptr, i32 } %171, 0
  call void @__clang_call_terminate(ptr %172) #7
  unreachable

173:                                              ; preds = %163, %158, %42
  %174 = phi { ptr, i32 } [ %43, %42 ], [ %159, %158 ], [ %159, %163 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #8
  br label %175

175:                                              ; preds = %173, %32
  %176 = phi { ptr, i32 } [ %174, %173 ], [ %33, %32 ]
  %177 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 2
  %178 = load i64, ptr %177, align 8, !tbaa !55
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %190, label %180

180:                                              ; preds = %175
  %181 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !56
  %183 = load ptr, ptr %11, align 8, !tbaa !51
  %184 = load ptr, ptr %183, align 8, !tbaa !45
  %185 = getelementptr inbounds ptr, ptr %184, i64 3
  %186 = load ptr, ptr %185, align 8
  invoke void %186(ptr noundef nonnull align 8 dereferenceable(8) %183, ptr noundef %182)
          to label %190 unwind label %187

187:                                              ; preds = %180
  %188 = landingpad { ptr, i32 }
          catch ptr null
  %189 = extractvalue { ptr, i32 } %188, 0
  call void @__clang_call_terminate(ptr %189) #7
  unreachable

190:                                              ; preds = %180, %175, %30
  %191 = phi { ptr, i32 } [ %31, %30 ], [ %176, %175 ], [ %176, %180 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #8
  br label %192

192:                                              ; preds = %190, %20
  %193 = phi { ptr, i32 } [ %191, %190 ], [ %21, %20 ]
  %194 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %195 = load i64, ptr %194, align 8, !tbaa !55
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !56
  %200 = load ptr, ptr %10, align 8, !tbaa !51
  %201 = load ptr, ptr %200, align 8, !tbaa !45
  %202 = getelementptr inbounds ptr, ptr %201, i64 3
  %203 = load ptr, ptr %202, align 8
  invoke void %203(ptr noundef nonnull align 8 dereferenceable(8) %200, ptr noundef %199)
          to label %207 unwind label %204

204:                                              ; preds = %197
  %205 = landingpad { ptr, i32 }
          catch ptr null
  %206 = extractvalue { ptr, i32 } %205, 0
  call void @__clang_call_terminate(ptr %206) #7
  unreachable

207:                                              ; preds = %192, %197
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #8
  resume { ptr, i32 } %193
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKtS6_S6_S6_(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 align 2 !prof !39 {
  %7 = alloca [1024 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %7) #8
  %8 = load ptr, ptr @_ZN11xalanc_1_1018XalanMessageLoader11s_msgLoaderE, align 8, !tbaa !40
  %9 = load ptr, ptr %0, align 8, !tbaa !51
  %10 = load ptr, ptr %8, align 8, !tbaa !45
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 1024)
  br i1 %13, label %14, label %16

14:                                               ; preds = %6
  %15 = call noundef i32 @_ZN11xercesc_2_79XMLString13replaceTokensEPtjPKtS3_S3_S3_PNS_13MemoryManagerE(ptr noundef nonnull %7, i32 noundef 1024, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %9)
  br label %16

16:                                               ; preds = %6, %14
  call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %17 = call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %7)
  %18 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %7, i32 noundef %17)
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %7) #8
  ret ptr %0
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !39 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #8
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1026XalanInMemoryMessageLoaderC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xalanc_1_1018XalanMessageLoader10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMessageLoader29XalanMessageLoaderCreateFunctINS_26XalanInMemoryMessageLoaderEEclERN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1018XalanMessageLoader29XalanMessageLoaderCreateFunctINS_26XalanInMemoryMessageLoaderEEclERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1026XalanInMemoryMessageLoaderC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!"branch_weights", i32 1, i32 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !43, i64 0}
!47 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!48 = !{!"branch_weights", i32 0, i32 1}
!49 = !{!"VP", i32 0, i64 1, i64 4917671870090999170, i64 1}
!50 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!51 = !{!52, !41, i64 0}
!52 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !41, i64 0, !53, i64 8, !53, i64 16, !41, i64 24}
!53 = !{!"long", !42, i64 0}
!54 = !{!52, !53, i64 8}
!55 = !{!52, !53, i64 16}
!56 = !{!52, !41, i64 24}
