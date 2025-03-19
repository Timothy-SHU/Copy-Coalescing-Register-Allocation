; ModuleID = 'lib/iomap.c'
source_filename = "lib/iomap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioread8: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioread8 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioread16: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioread16 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioread16be: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioread16be ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioread32: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioread32 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioread32be: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioread32be ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioread64_lo_hi: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioread64_lo_hi ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioread64_hi_lo: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioread64_hi_lo ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioread64be_lo_hi: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioread64be_lo_hi ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioread64be_hi_lo: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioread64be_hi_lo ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iowrite8: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iowrite8 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iowrite16: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iowrite16 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iowrite16be: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iowrite16be ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iowrite32: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iowrite32 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iowrite32be: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iowrite32be ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iowrite64_lo_hi: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iowrite64_lo_hi ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iowrite64_hi_lo: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iowrite64_hi_lo ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iowrite64be_lo_hi: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iowrite64be_lo_hi ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iowrite64be_hi_lo: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iowrite64be_hi_lo ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioread8_rep: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioread8_rep ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioread16_rep: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioread16_rep ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioread32_rep: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioread32_rep ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iowrite8_rep: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iowrite8_rep ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iowrite16_rep: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iowrite16_rep ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_iowrite32_rep: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad iowrite32_rep ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioport_map: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioport_map ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ioport_unmap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ioport_unmap ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pci_iounmap: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pci_iounmap ; .previous"

@.str = private unnamed_addr constant [17 x i8] c"return inb(port)\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [17 x i8] c"return inw(port)\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [26 x i8] c"return pio_read16be(port)\00", align 1, !dbg !9
@.str.3 = private unnamed_addr constant [17 x i8] c"return inl(port)\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [26 x i8] c"return pio_read32be(port)\00", align 1, !dbg !16
@__UNIQUE_ID___addressable_ioread8292 = internal global ptr @ioread8, section ".discard.addressable", align 8, !dbg !18
@__UNIQUE_ID___addressable_ioread16293 = internal global ptr @ioread16, section ".discard.addressable", align 8, !dbg !201
@__UNIQUE_ID___addressable_ioread16be294 = internal global ptr @ioread16be, section ".discard.addressable", align 8, !dbg !203
@__UNIQUE_ID___addressable_ioread32295 = internal global ptr @ioread32, section ".discard.addressable", align 8, !dbg !205
@__UNIQUE_ID___addressable_ioread32be296 = internal global ptr @ioread32be, section ".discard.addressable", align 8, !dbg !207
@.str.5 = private unnamed_addr constant [30 x i8] c"return pio_read64_lo_hi(port)\00", align 1, !dbg !209
@.str.6 = private unnamed_addr constant [30 x i8] c"return pio_read64_hi_lo(port)\00", align 1, !dbg !214
@.str.7 = private unnamed_addr constant [32 x i8] c"return pio_read64be_lo_hi(port)\00", align 1, !dbg !216
@.str.8 = private unnamed_addr constant [32 x i8] c"return pio_read64be_hi_lo(port)\00", align 1, !dbg !221
@__UNIQUE_ID___addressable_ioread64_lo_hi297 = internal global ptr @ioread64_lo_hi, section ".discard.addressable", align 8, !dbg !223
@__UNIQUE_ID___addressable_ioread64_hi_lo298 = internal global ptr @ioread64_hi_lo, section ".discard.addressable", align 8, !dbg !225
@__UNIQUE_ID___addressable_ioread64be_lo_hi299 = internal global ptr @ioread64be_lo_hi, section ".discard.addressable", align 8, !dbg !227
@__UNIQUE_ID___addressable_ioread64be_hi_lo300 = internal global ptr @ioread64be_hi_lo, section ".discard.addressable", align 8, !dbg !229
@.str.9 = private unnamed_addr constant [15 x i8] c"outb(val,port)\00", align 1, !dbg !231
@.str.10 = private unnamed_addr constant [15 x i8] c"outw(val,port)\00", align 1, !dbg !236
@.str.11 = private unnamed_addr constant [24 x i8] c"pio_write16be(val,port)\00", align 1, !dbg !238
@.str.12 = private unnamed_addr constant [15 x i8] c"outl(val,port)\00", align 1, !dbg !243
@.str.13 = private unnamed_addr constant [24 x i8] c"pio_write32be(val,port)\00", align 1, !dbg !245
@__UNIQUE_ID___addressable_iowrite8301 = internal global ptr @iowrite8, section ".discard.addressable", align 8, !dbg !247
@__UNIQUE_ID___addressable_iowrite16302 = internal global ptr @iowrite16, section ".discard.addressable", align 8, !dbg !249
@__UNIQUE_ID___addressable_iowrite16be303 = internal global ptr @iowrite16be, section ".discard.addressable", align 8, !dbg !251
@__UNIQUE_ID___addressable_iowrite32304 = internal global ptr @iowrite32, section ".discard.addressable", align 8, !dbg !253
@__UNIQUE_ID___addressable_iowrite32be305 = internal global ptr @iowrite32be, section ".discard.addressable", align 8, !dbg !255
@.str.14 = private unnamed_addr constant [29 x i8] c"pio_write64_lo_hi(val, port)\00", align 1, !dbg !257
@.str.15 = private unnamed_addr constant [29 x i8] c"pio_write64_hi_lo(val, port)\00", align 1, !dbg !262
@.str.16 = private unnamed_addr constant [31 x i8] c"pio_write64be_lo_hi(val, port)\00", align 1, !dbg !264
@.str.17 = private unnamed_addr constant [31 x i8] c"pio_write64be_hi_lo(val, port)\00", align 1, !dbg !269
@__UNIQUE_ID___addressable_iowrite64_lo_hi306 = internal global ptr @iowrite64_lo_hi, section ".discard.addressable", align 8, !dbg !271
@__UNIQUE_ID___addressable_iowrite64_hi_lo307 = internal global ptr @iowrite64_hi_lo, section ".discard.addressable", align 8, !dbg !273
@__UNIQUE_ID___addressable_iowrite64be_lo_hi308 = internal global ptr @iowrite64be_lo_hi, section ".discard.addressable", align 8, !dbg !275
@__UNIQUE_ID___addressable_iowrite64be_hi_lo309 = internal global ptr @iowrite64be_hi_lo, section ".discard.addressable", align 8, !dbg !277
@.str.18 = private unnamed_addr constant [21 x i8] c"insb(port,dst,count)\00", align 1, !dbg !279
@.str.19 = private unnamed_addr constant [21 x i8] c"insw(port,dst,count)\00", align 1, !dbg !284
@.str.20 = private unnamed_addr constant [21 x i8] c"insl(port,dst,count)\00", align 1, !dbg !286
@__UNIQUE_ID___addressable_ioread8_rep310 = internal global ptr @ioread8_rep, section ".discard.addressable", align 8, !dbg !288
@__UNIQUE_ID___addressable_ioread16_rep311 = internal global ptr @ioread16_rep, section ".discard.addressable", align 8, !dbg !290
@__UNIQUE_ID___addressable_ioread32_rep312 = internal global ptr @ioread32_rep, section ".discard.addressable", align 8, !dbg !292
@.str.21 = private unnamed_addr constant [24 x i8] c"outsb(port, src, count)\00", align 1, !dbg !294
@.str.22 = private unnamed_addr constant [24 x i8] c"outsw(port, src, count)\00", align 1, !dbg !296
@.str.23 = private unnamed_addr constant [23 x i8] c"outsl(port, src,count)\00", align 1, !dbg !298
@__UNIQUE_ID___addressable_iowrite8_rep313 = internal global ptr @iowrite8_rep, section ".discard.addressable", align 8, !dbg !303
@__UNIQUE_ID___addressable_iowrite16_rep314 = internal global ptr @iowrite16_rep, section ".discard.addressable", align 8, !dbg !305
@__UNIQUE_ID___addressable_iowrite32_rep315 = internal global ptr @iowrite32_rep, section ".discard.addressable", align 8, !dbg !307
@__UNIQUE_ID___addressable_ioport_map316 = internal global ptr @ioport_map, section ".discard.addressable", align 8, !dbg !309
@__UNIQUE_ID___addressable_ioport_unmap317 = internal global ptr @ioport_unmap, section ".discard.addressable", align 8, !dbg !311
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !313
@__UNIQUE_ID___addressable_pci_iounmap318 = internal global ptr @pci_iounmap, section ".discard.addressable", align 8, !dbg !318
@bad_io_access.count = internal global i32 10, align 4, !dbg !320
@.str.25 = private unnamed_addr constant [35 x i8] c"\013Bad IO access at port %#lx (%s)\0A\00", align 1, !dbg !338
@.str.26 = private unnamed_addr constant [12 x i8] c"lib/iomap.c\00", align 1, !dbg !343
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID___addressable_ioread8292, ptr @__UNIQUE_ID___addressable_ioread16293, ptr @__UNIQUE_ID___addressable_ioread16be294, ptr @__UNIQUE_ID___addressable_ioread32295, ptr @__UNIQUE_ID___addressable_ioread32be296, ptr @__UNIQUE_ID___addressable_ioread64_lo_hi297, ptr @__UNIQUE_ID___addressable_ioread64_hi_lo298, ptr @__UNIQUE_ID___addressable_ioread64be_lo_hi299, ptr @__UNIQUE_ID___addressable_ioread64be_hi_lo300, ptr @__UNIQUE_ID___addressable_iowrite8301, ptr @__UNIQUE_ID___addressable_iowrite16302, ptr @__UNIQUE_ID___addressable_iowrite16be303, ptr @__UNIQUE_ID___addressable_iowrite32304, ptr @__UNIQUE_ID___addressable_iowrite32be305, ptr @__UNIQUE_ID___addressable_iowrite64_lo_hi306, ptr @__UNIQUE_ID___addressable_iowrite64_hi_lo307, ptr @__UNIQUE_ID___addressable_iowrite64be_lo_hi308, ptr @__UNIQUE_ID___addressable_iowrite64be_hi_lo309, ptr @__UNIQUE_ID___addressable_ioread8_rep310, ptr @__UNIQUE_ID___addressable_ioread16_rep311, ptr @__UNIQUE_ID___addressable_ioread32_rep312, ptr @__UNIQUE_ID___addressable_iowrite8_rep313, ptr @__UNIQUE_ID___addressable_iowrite16_rep314, ptr @__UNIQUE_ID___addressable_iowrite32_rep315, ptr @__UNIQUE_ID___addressable_ioport_map316, ptr @__UNIQUE_ID___addressable_ioport_unmap317, ptr @__UNIQUE_ID___addressable_pci_iounmap318], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ioread8(ptr noundef %addr) #0 align 16 !dbg !357 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !363, metadata !DIExpression()), !dbg !366
  br label %do.body, !dbg !367

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !368
  call void @llvm.dbg.declare(metadata ptr %port, metadata !364, metadata !DIExpression()), !dbg !368
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !368
  %1 = ptrtoint ptr %0 to i64, !dbg !368
  store i64 %1, ptr %port, align 8, !dbg !368
  %2 = load i64, ptr %port, align 8, !dbg !369
  %cmp = icmp uge i64 %2, 262144, !dbg !369
  br i1 %cmp, label %if.then, label %if.else, !dbg !368

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !371
  %call = call zeroext i8 @readb(ptr noundef %3) #8, !dbg !371
  %conv = zext i8 %call to i32, !dbg !371
  store i32 %conv, ptr %retval, align 4, !dbg !371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !371

if.else:                                          ; preds = %do.body
  %4 = load i64, ptr %port, align 8, !dbg !373
  %cmp1 = icmp ugt i64 %4, 65536, !dbg !373
  br i1 %cmp1, label %if.then3, label %if.else7, !dbg !369

if.then3:                                         ; preds = %if.else
  %5 = load i64, ptr %port, align 8, !dbg !375
  %and = and i64 %5, 65535, !dbg !375
  store i64 %and, ptr %port, align 8, !dbg !375
  %6 = load i64, ptr %port, align 8, !dbg !375
  %conv4 = trunc i64 %6 to i16, !dbg !375
  %call5 = call zeroext i8 @__inb(i16 noundef zeroext %conv4) #8, !dbg !375
  %conv6 = zext i8 %call5 to i32, !dbg !375
  store i32 %conv6, ptr %retval, align 4, !dbg !375
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !375

if.else7:                                         ; preds = %if.else
  %7 = load i64, ptr %port, align 8, !dbg !373
  call void @bad_io_access(i64 noundef %7, ptr noundef @.str) #8, !dbg !373
  br label %if.end

if.end:                                           ; preds = %if.else7
  br label %if.end8

if.end8:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !367
  br label %cleanup, !dbg !367

cleanup:                                          ; preds = %if.end8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !367
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !368

do.end:                                           ; preds = %cleanup.cont
  store i32 255, ptr %retval, align 4, !dbg !377
  br label %return, !dbg !377

return:                                           ; preds = %do.end, %cleanup
  %8 = load i32, ptr %retval, align 4, !dbg !378
  ret i32 %8, !dbg !378

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @readb(ptr noundef %addr) #3 align 16 !dbg !379 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !387, metadata !DIExpression()), !dbg !389
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #7, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !389
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0) #7, !dbg !389, !srcloc !390
  store i8 %1, ptr %ret, align 1, !dbg !389
  %2 = load i8, ptr %ret, align 1, !dbg !389
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #7, !dbg !389
  ret i8 %2, !dbg !389
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__inb(i16 noundef zeroext %port) #4 align 16 !dbg !391 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i8, align 1
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !396, metadata !DIExpression()), !dbg !398
  call void @llvm.lifetime.start.p0(i64 1, ptr %value) #7, !dbg !398
  call void @llvm.dbg.declare(metadata ptr %value, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = load i16, ptr %port.addr, align 2, !dbg !398
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #7, !dbg !398, !srcloc !399
  store i8 %1, ptr %value, align 1, !dbg !398
  %2 = load i8, ptr %value, align 1, !dbg !398
  call void @llvm.lifetime.end.p0(i64 1, ptr %value) #7, !dbg !398
  ret i8 %2, !dbg !398
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bad_io_access(i64 noundef %port, ptr noundef %access) #0 align 16 !dbg !322 {
entry:
  %port.addr = alloca i64, align 8
  %access.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !328, metadata !DIExpression()), !dbg !400
  store ptr %access, ptr %access.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %access.addr, metadata !329, metadata !DIExpression()), !dbg !401
  %0 = load i32, ptr @bad_io_access.count, align 4, !dbg !402
  %tobool = icmp ne i32 %0, 0, !dbg !402
  br i1 %tobool, label %if.then, label %if.end30, !dbg !403

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @bad_io_access.count, align 4, !dbg !404
  %dec = add i32 %1, -1, !dbg !404
  store i32 %dec, ptr @bad_io_access.count, align 4, !dbg !404
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !330, metadata !DIExpression()), !dbg !405
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !405
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !406
  %tobool1 = icmp ne i32 %2, 0, !dbg !406
  %lnot = xor i1 %tobool1, true, !dbg !406
  %lnot2 = xor i1 %lnot, true, !dbg !406
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !406
  %conv = sext i32 %lnot.ext to i64, !dbg !406
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !406
  %tobool3 = icmp ne i64 %expval, 0, !dbg !406
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !405

if.then4:                                         ; preds = %if.then
  br label %do.body, !dbg !406

do.body:                                          ; preds = %if.then4
  br label %do.body5, !dbg !407

do.body5:                                         ; preds = %do.body
  br label %do.cond, !dbg !408

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !408

do.end:                                           ; preds = %do.cond
  %3 = load i64, ptr %port.addr, align 8, !dbg !407
  %4 = load ptr, ptr %access.addr, align 8, !dbg !407
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.25, i64 noundef %3, ptr noundef %4) #8, !dbg !407
  br label %do.body6, !dbg !407

do.body6:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !334, metadata !DIExpression()), !dbg !410
  store i32 2313, ptr %__flags, align 4, !dbg !410
  br label %do.body7, !dbg !410

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !411

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !411

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !410

do.body10:                                        ; preds = %do.end9
  %5 = load i32, ptr %__flags, align 4, !dbg !413
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.26, i32 45, i32 %5, i64 12) #7, !dbg !413, !srcloc !415
  br label %do.cond11, !dbg !413

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !413

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !410

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !416

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !416

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !407
  br label %do.cond16, !dbg !410

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !410

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !407

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !418

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !418

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !407

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !407

do.end22:                                         ; preds = %do.cond21
  br label %if.end, !dbg !407

if.end:                                           ; preds = %do.end22, %if.then
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !405
  %tobool23 = icmp ne i32 %6, 0, !dbg !405
  %lnot24 = xor i1 %tobool23, true, !dbg !405
  %lnot26 = xor i1 %lnot24, true, !dbg !405
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !405
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !405
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !405
  store i64 %expval29, ptr %tmp, align 8, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !420
  %7 = load i64, ptr %tmp, align 8, !dbg !405
  br label %if.end30, !dbg !421

if.end30:                                         ; preds = %if.end, %entry
  ret void, !dbg !422
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ioread16(ptr noundef %addr) #0 align 16 !dbg !423 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !425, metadata !DIExpression()), !dbg !428
  br label %do.body, !dbg !429

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !430
  call void @llvm.dbg.declare(metadata ptr %port, metadata !426, metadata !DIExpression()), !dbg !430
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !430
  %1 = ptrtoint ptr %0 to i64, !dbg !430
  store i64 %1, ptr %port, align 8, !dbg !430
  %2 = load i64, ptr %port, align 8, !dbg !431
  %cmp = icmp uge i64 %2, 262144, !dbg !431
  br i1 %cmp, label %if.then, label %if.else, !dbg !430

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !433
  %call = call zeroext i16 @readw(ptr noundef %3) #8, !dbg !433
  %conv = zext i16 %call to i32, !dbg !433
  store i32 %conv, ptr %retval, align 4, !dbg !433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !433

if.else:                                          ; preds = %do.body
  %4 = load i64, ptr %port, align 8, !dbg !435
  %cmp1 = icmp ugt i64 %4, 65536, !dbg !435
  br i1 %cmp1, label %if.then3, label %if.else7, !dbg !431

if.then3:                                         ; preds = %if.else
  %5 = load i64, ptr %port, align 8, !dbg !437
  %and = and i64 %5, 65535, !dbg !437
  store i64 %and, ptr %port, align 8, !dbg !437
  %6 = load i64, ptr %port, align 8, !dbg !437
  %conv4 = trunc i64 %6 to i16, !dbg !437
  %call5 = call zeroext i16 @__inw(i16 noundef zeroext %conv4) #8, !dbg !437
  %conv6 = zext i16 %call5 to i32, !dbg !437
  store i32 %conv6, ptr %retval, align 4, !dbg !437
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !437

if.else7:                                         ; preds = %if.else
  %7 = load i64, ptr %port, align 8, !dbg !435
  call void @bad_io_access(i64 noundef %7, ptr noundef @.str.1) #8, !dbg !435
  br label %if.end

if.end:                                           ; preds = %if.else7
  br label %if.end8

if.end8:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !429
  br label %cleanup, !dbg !429

cleanup:                                          ; preds = %if.end8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !429
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !430

do.end:                                           ; preds = %cleanup.cont
  store i32 65535, ptr %retval, align 4, !dbg !439
  br label %return, !dbg !439

return:                                           ; preds = %do.end, %cleanup
  %8 = load i32, ptr %retval, align 4, !dbg !440
  ret i32 %8, !dbg !440

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @readw(ptr noundef %addr) #3 align 16 !dbg !441 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i16, align 2
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !445, metadata !DIExpression()), !dbg !447
  call void @llvm.lifetime.start.p0(i64 2, ptr %ret) #7, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !447
  %1 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %0) #7, !dbg !447, !srcloc !448
  store i16 %1, ptr %ret, align 2, !dbg !447
  %2 = load i16, ptr %ret, align 2, !dbg !447
  call void @llvm.lifetime.end.p0(i64 2, ptr %ret) #7, !dbg !447
  ret i16 %2, !dbg !447
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @__inw(i16 noundef zeroext %port) #4 align 16 !dbg !449 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i16, align 2
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !453, metadata !DIExpression()), !dbg !455
  call void @llvm.lifetime.start.p0(i64 2, ptr %value) #7, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %value, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load i16, ptr %port.addr, align 2, !dbg !455
  %1 = call i16 asm sideeffect "inw ${1:w}, ${0:w}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #7, !dbg !455, !srcloc !456
  store i16 %1, ptr %value, align 2, !dbg !455
  %2 = load i16, ptr %value, align 2, !dbg !455
  call void @llvm.lifetime.end.p0(i64 2, ptr %value) #7, !dbg !455
  ret i16 %2, !dbg !455
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ioread16be(ptr noundef %addr) #0 align 16 !dbg !457 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !459, metadata !DIExpression()), !dbg !462
  br label %do.body, !dbg !463

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %port, metadata !460, metadata !DIExpression()), !dbg !464
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !464
  %1 = ptrtoint ptr %0 to i64, !dbg !464
  store i64 %1, ptr %port, align 8, !dbg !464
  %2 = load i64, ptr %port, align 8, !dbg !465
  %cmp = icmp uge i64 %2, 262144, !dbg !465
  br i1 %cmp, label %if.then, label %if.else, !dbg !464

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !467
  %call = call zeroext i16 @readw(ptr noundef %3) #8, !dbg !467
  %4 = call i16 @llvm.bswap.i16(i16 %call), !dbg !467
  %conv = zext i16 %4 to i32, !dbg !467
  store i32 %conv, ptr %retval, align 4, !dbg !467
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !467

if.else:                                          ; preds = %do.body
  %5 = load i64, ptr %port, align 8, !dbg !469
  %cmp1 = icmp ugt i64 %5, 65536, !dbg !469
  br i1 %cmp1, label %if.then3, label %if.else7, !dbg !465

if.then3:                                         ; preds = %if.else
  %6 = load i64, ptr %port, align 8, !dbg !471
  %and = and i64 %6, 65535, !dbg !471
  store i64 %and, ptr %port, align 8, !dbg !471
  %7 = load i64, ptr %port, align 8, !dbg !471
  %conv4 = trunc i64 %7 to i16, !dbg !471
  %call5 = call zeroext i16 @__inw(i16 noundef zeroext %conv4) #8, !dbg !471
  %8 = call i16 @llvm.bswap.i16(i16 %call5), !dbg !471
  %conv6 = zext i16 %8 to i32, !dbg !471
  store i32 %conv6, ptr %retval, align 4, !dbg !471
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !471

if.else7:                                         ; preds = %if.else
  %9 = load i64, ptr %port, align 8, !dbg !469
  call void @bad_io_access(i64 noundef %9, ptr noundef @.str.2) #8, !dbg !469
  br label %if.end

if.end:                                           ; preds = %if.else7
  br label %if.end8

if.end8:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !463
  br label %cleanup, !dbg !463

cleanup:                                          ; preds = %if.end8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !463
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !464

do.end:                                           ; preds = %cleanup.cont
  store i32 65535, ptr %retval, align 4, !dbg !473
  br label %return, !dbg !473

return:                                           ; preds = %do.end, %cleanup
  %10 = load i32, ptr %retval, align 4, !dbg !474
  ret i32 %10, !dbg !474

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ioread32(ptr noundef %addr) #0 align 16 !dbg !475 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !477, metadata !DIExpression()), !dbg !480
  br label %do.body, !dbg !481

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !482
  call void @llvm.dbg.declare(metadata ptr %port, metadata !478, metadata !DIExpression()), !dbg !482
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !482
  %1 = ptrtoint ptr %0 to i64, !dbg !482
  store i64 %1, ptr %port, align 8, !dbg !482
  %2 = load i64, ptr %port, align 8, !dbg !483
  %cmp = icmp uge i64 %2, 262144, !dbg !483
  br i1 %cmp, label %if.then, label %if.else, !dbg !482

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !485
  %call = call i32 @readl(ptr noundef %3) #8, !dbg !485
  store i32 %call, ptr %retval, align 4, !dbg !485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !485

if.else:                                          ; preds = %do.body
  %4 = load i64, ptr %port, align 8, !dbg !487
  %cmp1 = icmp ugt i64 %4, 65536, !dbg !487
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !483

if.then2:                                         ; preds = %if.else
  %5 = load i64, ptr %port, align 8, !dbg !489
  %and = and i64 %5, 65535, !dbg !489
  store i64 %and, ptr %port, align 8, !dbg !489
  %6 = load i64, ptr %port, align 8, !dbg !489
  %conv = trunc i64 %6 to i16, !dbg !489
  %call3 = call i32 @__inl(i16 noundef zeroext %conv) #8, !dbg !489
  store i32 %call3, ptr %retval, align 4, !dbg !489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !489

if.else4:                                         ; preds = %if.else
  %7 = load i64, ptr %port, align 8, !dbg !487
  call void @bad_io_access(i64 noundef %7, ptr noundef @.str.3) #8, !dbg !487
  br label %if.end

if.end:                                           ; preds = %if.else4
  br label %if.end5

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !481
  br label %cleanup, !dbg !481

cleanup:                                          ; preds = %if.end5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !481
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !482

do.end:                                           ; preds = %cleanup.cont
  store i32 -1, ptr %retval, align 4, !dbg !491
  br label %return, !dbg !491

return:                                           ; preds = %do.end, %cleanup
  %8 = load i32, ptr %retval, align 4, !dbg !492
  ret i32 %8, !dbg !492

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #3 align 16 !dbg !493 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !497, metadata !DIExpression()), !dbg !499
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !499
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !498, metadata !DIExpression()), !dbg !499
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !499
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #7, !dbg !499, !srcloc !500
  store i32 %1, ptr %ret, align 4, !dbg !499
  %2 = load i32, ptr %ret, align 4, !dbg !499
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !499
  ret i32 %2, !dbg !499
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__inl(i16 noundef zeroext %port) #4 align 16 !dbg !501 {
entry:
  %port.addr = alloca i16, align 2
  %value = alloca i32, align 4
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !505, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #7, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %value, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load i16, ptr %port.addr, align 2, !dbg !507
  %1 = call i32 asm sideeffect "inl ${1:w}, $0", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0) #7, !dbg !507, !srcloc !508
  store i32 %1, ptr %value, align 4, !dbg !507
  %2 = load i32, ptr %value, align 4, !dbg !507
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #7, !dbg !507
  ret i32 %2, !dbg !507
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ioread32be(ptr noundef %addr) #0 align 16 !dbg !509 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !511, metadata !DIExpression()), !dbg !514
  br label %do.body, !dbg !515

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !516
  call void @llvm.dbg.declare(metadata ptr %port, metadata !512, metadata !DIExpression()), !dbg !516
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !516
  %1 = ptrtoint ptr %0 to i64, !dbg !516
  store i64 %1, ptr %port, align 8, !dbg !516
  %2 = load i64, ptr %port, align 8, !dbg !517
  %cmp = icmp uge i64 %2, 262144, !dbg !517
  br i1 %cmp, label %if.then, label %if.else, !dbg !516

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !519
  %call = call i32 @readl(ptr noundef %3) #8, !dbg !519
  %4 = call i32 @llvm.bswap.i32(i32 %call), !dbg !519
  store i32 %4, ptr %retval, align 4, !dbg !519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !519

if.else:                                          ; preds = %do.body
  %5 = load i64, ptr %port, align 8, !dbg !521
  %cmp1 = icmp ugt i64 %5, 65536, !dbg !521
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !517

if.then2:                                         ; preds = %if.else
  %6 = load i64, ptr %port, align 8, !dbg !523
  %and = and i64 %6, 65535, !dbg !523
  store i64 %and, ptr %port, align 8, !dbg !523
  %7 = load i64, ptr %port, align 8, !dbg !523
  %conv = trunc i64 %7 to i16, !dbg !523
  %call3 = call i32 @__inl(i16 noundef zeroext %conv) #8, !dbg !523
  %8 = call i32 @llvm.bswap.i32(i32 %call3), !dbg !523
  store i32 %8, ptr %retval, align 4, !dbg !523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !523

if.else4:                                         ; preds = %if.else
  %9 = load i64, ptr %port, align 8, !dbg !521
  call void @bad_io_access(i64 noundef %9, ptr noundef @.str.4) #8, !dbg !521
  br label %if.end

if.end:                                           ; preds = %if.else4
  br label %if.end5

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !515
  br label %cleanup, !dbg !515

cleanup:                                          ; preds = %if.end5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !515
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !516

do.end:                                           ; preds = %cleanup.cont
  store i32 -1, ptr %retval, align 4, !dbg !525
  br label %return, !dbg !525

return:                                           ; preds = %do.end, %cleanup
  %10 = load i32, ptr %retval, align 4, !dbg !526
  ret i32 %10, !dbg !526

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ioread64_lo_hi(ptr noundef %addr) #0 align 16 !dbg !527 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !531, metadata !DIExpression()), !dbg !534
  br label %do.body, !dbg !535

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !536
  call void @llvm.dbg.declare(metadata ptr %port, metadata !532, metadata !DIExpression()), !dbg !536
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !536
  %1 = ptrtoint ptr %0 to i64, !dbg !536
  store i64 %1, ptr %port, align 8, !dbg !536
  %2 = load i64, ptr %port, align 8, !dbg !537
  %cmp = icmp uge i64 %2, 262144, !dbg !537
  br i1 %cmp, label %if.then, label %if.else, !dbg !536

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !539
  %call = call i64 @readq(ptr noundef %3) #8, !dbg !539
  store i64 %call, ptr %retval, align 8, !dbg !539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !539

if.else:                                          ; preds = %do.body
  %4 = load i64, ptr %port, align 8, !dbg !541
  %cmp1 = icmp ugt i64 %4, 65536, !dbg !541
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !537

if.then2:                                         ; preds = %if.else
  %5 = load i64, ptr %port, align 8, !dbg !543
  %and = and i64 %5, 65535, !dbg !543
  store i64 %and, ptr %port, align 8, !dbg !543
  %6 = load i64, ptr %port, align 8, !dbg !543
  %call3 = call i64 @pio_read64_lo_hi(i64 noundef %6) #8, !dbg !543
  store i64 %call3, ptr %retval, align 8, !dbg !543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !543

if.else4:                                         ; preds = %if.else
  %7 = load i64, ptr %port, align 8, !dbg !541
  call void @bad_io_access(i64 noundef %7, ptr noundef @.str.5) #8, !dbg !541
  br label %if.end

if.end:                                           ; preds = %if.else4
  br label %if.end5

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !535
  br label %cleanup, !dbg !535

cleanup:                                          ; preds = %if.end5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !535
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !536

do.end:                                           ; preds = %cleanup.cont
  store i64 -1, ptr %retval, align 8, !dbg !545
  br label %return, !dbg !545

return:                                           ; preds = %do.end, %cleanup
  %8 = load i64, ptr %retval, align 8, !dbg !546
  ret i64 %8, !dbg !546

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @readq(ptr noundef %addr) #3 align 16 !dbg !547 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !551, metadata !DIExpression()), !dbg !553
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #7, !dbg !553
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !552, metadata !DIExpression()), !dbg !553
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !553
  %1 = call i64 asm sideeffect "movq $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0) #7, !dbg !553, !srcloc !554
  store i64 %1, ptr %ret, align 8, !dbg !553
  %2 = load i64, ptr %ret, align 8, !dbg !553
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #7, !dbg !553
  ret i64 %2, !dbg !553
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pio_read64_lo_hi(i64 noundef %port) #0 align 16 !dbg !555 {
entry:
  %port.addr = alloca i64, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  store i64 %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !559, metadata !DIExpression()), !dbg !562
  call void @llvm.lifetime.start.p0(i64 8, ptr %lo) #7, !dbg !563
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !560, metadata !DIExpression()), !dbg !564
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #7, !dbg !563
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !561, metadata !DIExpression()), !dbg !565
  %0 = load i64, ptr %port.addr, align 8, !dbg !566
  %conv = trunc i64 %0 to i16, !dbg !566
  %call = call i32 @__inl(i16 noundef zeroext %conv) #8, !dbg !567
  %conv1 = zext i32 %call to i64, !dbg !567
  store i64 %conv1, ptr %lo, align 8, !dbg !568
  %1 = load i64, ptr %port.addr, align 8, !dbg !569
  %add = add i64 %1, 4, !dbg !570
  %conv2 = trunc i64 %add to i16, !dbg !569
  %call3 = call i32 @__inl(i16 noundef zeroext %conv2) #8, !dbg !571
  %conv4 = zext i32 %call3 to i64, !dbg !571
  store i64 %conv4, ptr %hi, align 8, !dbg !572
  %2 = load i64, ptr %lo, align 8, !dbg !573
  %3 = load i64, ptr %hi, align 8, !dbg !574
  %shl = shl i64 %3, 32, !dbg !575
  %or = or i64 %2, %shl, !dbg !576
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #7, !dbg !577
  call void @llvm.lifetime.end.p0(i64 8, ptr %lo) #7, !dbg !577
  ret i64 %or, !dbg !578
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ioread64_hi_lo(ptr noundef %addr) #0 align 16 !dbg !579 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !581, metadata !DIExpression()), !dbg !584
  br label %do.body, !dbg !585

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !586
  call void @llvm.dbg.declare(metadata ptr %port, metadata !582, metadata !DIExpression()), !dbg !586
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !586
  %1 = ptrtoint ptr %0 to i64, !dbg !586
  store i64 %1, ptr %port, align 8, !dbg !586
  %2 = load i64, ptr %port, align 8, !dbg !587
  %cmp = icmp uge i64 %2, 262144, !dbg !587
  br i1 %cmp, label %if.then, label %if.else, !dbg !586

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !589
  %call = call i64 @readq(ptr noundef %3) #8, !dbg !589
  store i64 %call, ptr %retval, align 8, !dbg !589
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !589

if.else:                                          ; preds = %do.body
  %4 = load i64, ptr %port, align 8, !dbg !591
  %cmp1 = icmp ugt i64 %4, 65536, !dbg !591
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !587

if.then2:                                         ; preds = %if.else
  %5 = load i64, ptr %port, align 8, !dbg !593
  %and = and i64 %5, 65535, !dbg !593
  store i64 %and, ptr %port, align 8, !dbg !593
  %6 = load i64, ptr %port, align 8, !dbg !593
  %call3 = call i64 @pio_read64_hi_lo(i64 noundef %6) #8, !dbg !593
  store i64 %call3, ptr %retval, align 8, !dbg !593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !593

if.else4:                                         ; preds = %if.else
  %7 = load i64, ptr %port, align 8, !dbg !591
  call void @bad_io_access(i64 noundef %7, ptr noundef @.str.6) #8, !dbg !591
  br label %if.end

if.end:                                           ; preds = %if.else4
  br label %if.end5

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !585
  br label %cleanup, !dbg !585

cleanup:                                          ; preds = %if.end5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !585
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !586

do.end:                                           ; preds = %cleanup.cont
  store i64 -1, ptr %retval, align 8, !dbg !595
  br label %return, !dbg !595

return:                                           ; preds = %do.end, %cleanup
  %8 = load i64, ptr %retval, align 8, !dbg !596
  ret i64 %8, !dbg !596

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pio_read64_hi_lo(i64 noundef %port) #0 align 16 !dbg !597 {
entry:
  %port.addr = alloca i64, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  store i64 %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !599, metadata !DIExpression()), !dbg !602
  call void @llvm.lifetime.start.p0(i64 8, ptr %lo) #7, !dbg !603
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !600, metadata !DIExpression()), !dbg !604
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #7, !dbg !603
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !601, metadata !DIExpression()), !dbg !605
  %0 = load i64, ptr %port.addr, align 8, !dbg !606
  %add = add i64 %0, 4, !dbg !607
  %conv = trunc i64 %add to i16, !dbg !606
  %call = call i32 @__inl(i16 noundef zeroext %conv) #8, !dbg !608
  %conv1 = zext i32 %call to i64, !dbg !608
  store i64 %conv1, ptr %hi, align 8, !dbg !609
  %1 = load i64, ptr %port.addr, align 8, !dbg !610
  %conv2 = trunc i64 %1 to i16, !dbg !610
  %call3 = call i32 @__inl(i16 noundef zeroext %conv2) #8, !dbg !611
  %conv4 = zext i32 %call3 to i64, !dbg !611
  store i64 %conv4, ptr %lo, align 8, !dbg !612
  %2 = load i64, ptr %lo, align 8, !dbg !613
  %3 = load i64, ptr %hi, align 8, !dbg !614
  %shl = shl i64 %3, 32, !dbg !615
  %or = or i64 %2, %shl, !dbg !616
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #7, !dbg !617
  call void @llvm.lifetime.end.p0(i64 8, ptr %lo) #7, !dbg !617
  ret i64 %or, !dbg !618
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ioread64be_lo_hi(ptr noundef %addr) #0 align 16 !dbg !619 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !621, metadata !DIExpression()), !dbg !624
  br label %do.body, !dbg !625

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %port, metadata !622, metadata !DIExpression()), !dbg !626
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !626
  %1 = ptrtoint ptr %0 to i64, !dbg !626
  store i64 %1, ptr %port, align 8, !dbg !626
  %2 = load i64, ptr %port, align 8, !dbg !627
  %cmp = icmp uge i64 %2, 262144, !dbg !627
  br i1 %cmp, label %if.then, label %if.else, !dbg !626

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !629
  %call = call i64 @readq(ptr noundef %3) #8, !dbg !629
  %4 = call i64 @llvm.bswap.i64(i64 %call), !dbg !629
  store i64 %4, ptr %retval, align 8, !dbg !629
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !629

if.else:                                          ; preds = %do.body
  %5 = load i64, ptr %port, align 8, !dbg !631
  %cmp1 = icmp ugt i64 %5, 65536, !dbg !631
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !627

if.then2:                                         ; preds = %if.else
  %6 = load i64, ptr %port, align 8, !dbg !633
  %and = and i64 %6, 65535, !dbg !633
  store i64 %and, ptr %port, align 8, !dbg !633
  %7 = load i64, ptr %port, align 8, !dbg !633
  %call3 = call i64 @pio_read64be_lo_hi(i64 noundef %7) #8, !dbg !633
  store i64 %call3, ptr %retval, align 8, !dbg !633
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !633

if.else4:                                         ; preds = %if.else
  %8 = load i64, ptr %port, align 8, !dbg !631
  call void @bad_io_access(i64 noundef %8, ptr noundef @.str.7) #8, !dbg !631
  br label %if.end

if.end:                                           ; preds = %if.else4
  br label %if.end5

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !625
  br label %cleanup, !dbg !625

cleanup:                                          ; preds = %if.end5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !625
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !626

do.end:                                           ; preds = %cleanup.cont
  store i64 -1, ptr %retval, align 8, !dbg !635
  br label %return, !dbg !635

return:                                           ; preds = %do.end, %cleanup
  %9 = load i64, ptr %retval, align 8, !dbg !636
  ret i64 %9, !dbg !636

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pio_read64be_lo_hi(i64 noundef %port) #0 align 16 !dbg !637 {
entry:
  %port.addr = alloca i64, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  store i64 %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !639, metadata !DIExpression()), !dbg !642
  call void @llvm.lifetime.start.p0(i64 8, ptr %lo) #7, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !640, metadata !DIExpression()), !dbg !644
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #7, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !641, metadata !DIExpression()), !dbg !645
  %0 = load i64, ptr %port.addr, align 8, !dbg !646
  %add = add i64 %0, 4, !dbg !646
  %conv = trunc i64 %add to i16, !dbg !646
  %call = call i32 @__inl(i16 noundef zeroext %conv) #8, !dbg !646
  %1 = call i32 @llvm.bswap.i32(i32 %call), !dbg !646
  %conv1 = zext i32 %1 to i64, !dbg !646
  store i64 %conv1, ptr %lo, align 8, !dbg !647
  %2 = load i64, ptr %port.addr, align 8, !dbg !648
  %conv2 = trunc i64 %2 to i16, !dbg !648
  %call3 = call i32 @__inl(i16 noundef zeroext %conv2) #8, !dbg !648
  %3 = call i32 @llvm.bswap.i32(i32 %call3), !dbg !648
  %conv4 = zext i32 %3 to i64, !dbg !648
  store i64 %conv4, ptr %hi, align 8, !dbg !649
  %4 = load i64, ptr %lo, align 8, !dbg !650
  %5 = load i64, ptr %hi, align 8, !dbg !651
  %shl = shl i64 %5, 32, !dbg !652
  %or = or i64 %4, %shl, !dbg !653
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #7, !dbg !654
  call void @llvm.lifetime.end.p0(i64 8, ptr %lo) #7, !dbg !654
  ret i64 %or, !dbg !655
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ioread64be_hi_lo(ptr noundef %addr) #0 align 16 !dbg !656 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !658, metadata !DIExpression()), !dbg !661
  br label %do.body, !dbg !662

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !663
  call void @llvm.dbg.declare(metadata ptr %port, metadata !659, metadata !DIExpression()), !dbg !663
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !663
  %1 = ptrtoint ptr %0 to i64, !dbg !663
  store i64 %1, ptr %port, align 8, !dbg !663
  %2 = load i64, ptr %port, align 8, !dbg !664
  %cmp = icmp uge i64 %2, 262144, !dbg !664
  br i1 %cmp, label %if.then, label %if.else, !dbg !663

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !666
  %call = call i64 @readq(ptr noundef %3) #8, !dbg !666
  %4 = call i64 @llvm.bswap.i64(i64 %call), !dbg !666
  store i64 %4, ptr %retval, align 8, !dbg !666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !666

if.else:                                          ; preds = %do.body
  %5 = load i64, ptr %port, align 8, !dbg !668
  %cmp1 = icmp ugt i64 %5, 65536, !dbg !668
  br i1 %cmp1, label %if.then2, label %if.else4, !dbg !664

if.then2:                                         ; preds = %if.else
  %6 = load i64, ptr %port, align 8, !dbg !670
  %and = and i64 %6, 65535, !dbg !670
  store i64 %and, ptr %port, align 8, !dbg !670
  %7 = load i64, ptr %port, align 8, !dbg !670
  %call3 = call i64 @pio_read64be_hi_lo(i64 noundef %7) #8, !dbg !670
  store i64 %call3, ptr %retval, align 8, !dbg !670
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !670

if.else4:                                         ; preds = %if.else
  %8 = load i64, ptr %port, align 8, !dbg !668
  call void @bad_io_access(i64 noundef %8, ptr noundef @.str.8) #8, !dbg !668
  br label %if.end

if.end:                                           ; preds = %if.else4
  br label %if.end5

if.end5:                                          ; preds = %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !662
  br label %cleanup, !dbg !662

cleanup:                                          ; preds = %if.end5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !662
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end, !dbg !663

do.end:                                           ; preds = %cleanup.cont
  store i64 -1, ptr %retval, align 8, !dbg !672
  br label %return, !dbg !672

return:                                           ; preds = %do.end, %cleanup
  %9 = load i64, ptr %retval, align 8, !dbg !673
  ret i64 %9, !dbg !673

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pio_read64be_hi_lo(i64 noundef %port) #0 align 16 !dbg !674 {
entry:
  %port.addr = alloca i64, align 8
  %lo = alloca i64, align 8
  %hi = alloca i64, align 8
  store i64 %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !676, metadata !DIExpression()), !dbg !679
  call void @llvm.lifetime.start.p0(i64 8, ptr %lo) #7, !dbg !680
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !677, metadata !DIExpression()), !dbg !681
  call void @llvm.lifetime.start.p0(i64 8, ptr %hi) #7, !dbg !680
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !678, metadata !DIExpression()), !dbg !682
  %0 = load i64, ptr %port.addr, align 8, !dbg !683
  %conv = trunc i64 %0 to i16, !dbg !683
  %call = call i32 @__inl(i16 noundef zeroext %conv) #8, !dbg !683
  %1 = call i32 @llvm.bswap.i32(i32 %call), !dbg !683
  %conv1 = zext i32 %1 to i64, !dbg !683
  store i64 %conv1, ptr %hi, align 8, !dbg !684
  %2 = load i64, ptr %port.addr, align 8, !dbg !685
  %add = add i64 %2, 4, !dbg !685
  %conv2 = trunc i64 %add to i16, !dbg !685
  %call3 = call i32 @__inl(i16 noundef zeroext %conv2) #8, !dbg !685
  %3 = call i32 @llvm.bswap.i32(i32 %call3), !dbg !685
  %conv4 = zext i32 %3 to i64, !dbg !685
  store i64 %conv4, ptr %lo, align 8, !dbg !686
  %4 = load i64, ptr %lo, align 8, !dbg !687
  %5 = load i64, ptr %hi, align 8, !dbg !688
  %shl = shl i64 %5, 32, !dbg !689
  %or = or i64 %4, %shl, !dbg !690
  call void @llvm.lifetime.end.p0(i64 8, ptr %hi) #7, !dbg !691
  call void @llvm.lifetime.end.p0(i64 8, ptr %lo) #7, !dbg !691
  ret i64 %or, !dbg !692
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iowrite8(i8 noundef zeroext %val, ptr noundef %addr) #0 align 16 !dbg !693 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !697, metadata !DIExpression()), !dbg !701
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !698, metadata !DIExpression()), !dbg !702
  call void @kmsan_check_memory(ptr noundef %val.addr, i64 noundef 1) #8, !dbg !703
  br label %do.body, !dbg !704

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !705
  call void @llvm.dbg.declare(metadata ptr %port, metadata !699, metadata !DIExpression()), !dbg !705
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !705
  %1 = ptrtoint ptr %0 to i64, !dbg !705
  store i64 %1, ptr %port, align 8, !dbg !705
  %2 = load i64, ptr %port, align 8, !dbg !706
  %cmp = icmp uge i64 %2, 262144, !dbg !706
  br i1 %cmp, label %if.then, label %if.else, !dbg !705

if.then:                                          ; preds = %do.body
  %3 = load i8, ptr %val.addr, align 1, !dbg !708
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !708
  call void @writeb(i8 noundef zeroext %3, ptr noundef %4) #8, !dbg !708
  br label %if.end4, !dbg !708

if.else:                                          ; preds = %do.body
  %5 = load i64, ptr %port, align 8, !dbg !710
  %cmp1 = icmp ugt i64 %5, 65536, !dbg !710
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !706

if.then2:                                         ; preds = %if.else
  %6 = load i64, ptr %port, align 8, !dbg !712
  %and = and i64 %6, 65535, !dbg !712
  store i64 %and, ptr %port, align 8, !dbg !712
  %7 = load i8, ptr %val.addr, align 1, !dbg !712
  %8 = load i64, ptr %port, align 8, !dbg !712
  %conv = trunc i64 %8 to i16, !dbg !712
  call void @__outb(i8 noundef zeroext %7, i16 noundef zeroext %conv) #8, !dbg !712
  br label %if.end, !dbg !712

if.else3:                                         ; preds = %if.else
  %9 = load i64, ptr %port, align 8, !dbg !710
  call void @bad_io_access(i64 noundef %9, ptr noundef @.str.9) #8, !dbg !710
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !704
  br label %do.end, !dbg !705

do.end:                                           ; preds = %if.end4
  ret void, !dbg !714
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_check_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !715 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !725, metadata !DIExpression()), !dbg !727
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !726, metadata !DIExpression()), !dbg !728
  ret void, !dbg !729
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writeb(i8 noundef zeroext %val, ptr noundef %addr) #3 align 16 !dbg !730 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca ptr, align 8
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !735, metadata !DIExpression()), !dbg !737
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !736, metadata !DIExpression()), !dbg !737
  %0 = load i8, ptr %val.addr, align 1, !dbg !737
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !737
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, ptr elementtype(i8) %1) #7, !dbg !737, !srcloc !738
  ret void, !dbg !737
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outb(i8 noundef zeroext %value, i16 noundef zeroext %port) #4 align 16 !dbg !739 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i16, align 2
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !743, metadata !DIExpression()), !dbg !745
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !744, metadata !DIExpression()), !dbg !745
  %0 = load i8, ptr %value.addr, align 1, !dbg !745
  %1 = load i16, ptr %port.addr, align 2, !dbg !745
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i16 %1) #7, !dbg !745, !srcloc !746
  ret void, !dbg !745
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iowrite16(i16 noundef zeroext %val, ptr noundef %addr) #0 align 16 !dbg !747 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !751, metadata !DIExpression()), !dbg !755
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !752, metadata !DIExpression()), !dbg !756
  call void @kmsan_check_memory(ptr noundef %val.addr, i64 noundef 2) #8, !dbg !757
  br label %do.body, !dbg !758

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !759
  call void @llvm.dbg.declare(metadata ptr %port, metadata !753, metadata !DIExpression()), !dbg !759
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !759
  %1 = ptrtoint ptr %0 to i64, !dbg !759
  store i64 %1, ptr %port, align 8, !dbg !759
  %2 = load i64, ptr %port, align 8, !dbg !760
  %cmp = icmp uge i64 %2, 262144, !dbg !760
  br i1 %cmp, label %if.then, label %if.else, !dbg !759

if.then:                                          ; preds = %do.body
  %3 = load i16, ptr %val.addr, align 2, !dbg !762
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !762
  call void @writew(i16 noundef zeroext %3, ptr noundef %4) #8, !dbg !762
  br label %if.end4, !dbg !762

if.else:                                          ; preds = %do.body
  %5 = load i64, ptr %port, align 8, !dbg !764
  %cmp1 = icmp ugt i64 %5, 65536, !dbg !764
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !760

if.then2:                                         ; preds = %if.else
  %6 = load i64, ptr %port, align 8, !dbg !766
  %and = and i64 %6, 65535, !dbg !766
  store i64 %and, ptr %port, align 8, !dbg !766
  %7 = load i16, ptr %val.addr, align 2, !dbg !766
  %8 = load i64, ptr %port, align 8, !dbg !766
  %conv = trunc i64 %8 to i16, !dbg !766
  call void @__outw(i16 noundef zeroext %7, i16 noundef zeroext %conv) #8, !dbg !766
  br label %if.end, !dbg !766

if.else3:                                         ; preds = %if.else
  %9 = load i64, ptr %port, align 8, !dbg !764
  call void @bad_io_access(i64 noundef %9, ptr noundef @.str.10) #8, !dbg !764
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !758
  br label %do.end, !dbg !759

do.end:                                           ; preds = %if.end4
  ret void, !dbg !768
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writew(i16 noundef zeroext %val, ptr noundef %addr) #3 align 16 !dbg !769 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !773, metadata !DIExpression()), !dbg !775
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !774, metadata !DIExpression()), !dbg !775
  %0 = load i16, ptr %val.addr, align 2, !dbg !775
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !775
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, ptr elementtype(i16) %1) #7, !dbg !775, !srcloc !776
  ret void, !dbg !775
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outw(i16 noundef zeroext %value, i16 noundef zeroext %port) #4 align 16 !dbg !777 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i16, align 2
  store i16 %value, ptr %value.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !781, metadata !DIExpression()), !dbg !783
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !782, metadata !DIExpression()), !dbg !783
  %0 = load i16, ptr %value.addr, align 2, !dbg !783
  %1 = load i16, ptr %port.addr, align 2, !dbg !783
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16 %1) #7, !dbg !783, !srcloc !784
  ret void, !dbg !783
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iowrite16be(i16 noundef zeroext %val, ptr noundef %addr) #0 align 16 !dbg !785 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !787, metadata !DIExpression()), !dbg !791
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !788, metadata !DIExpression()), !dbg !792
  call void @kmsan_check_memory(ptr noundef %val.addr, i64 noundef 2) #8, !dbg !793
  br label %do.body, !dbg !794

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !795
  call void @llvm.dbg.declare(metadata ptr %port, metadata !789, metadata !DIExpression()), !dbg !795
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !795
  %1 = ptrtoint ptr %0 to i64, !dbg !795
  store i64 %1, ptr %port, align 8, !dbg !795
  %2 = load i64, ptr %port, align 8, !dbg !796
  %cmp = icmp uge i64 %2, 262144, !dbg !796
  br i1 %cmp, label %if.then, label %if.else, !dbg !795

if.then:                                          ; preds = %do.body
  %3 = load i16, ptr %val.addr, align 2, !dbg !798
  %4 = call i16 @llvm.bswap.i16(i16 %3), !dbg !798
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !798
  call void @writew(i16 noundef zeroext %4, ptr noundef %5) #8, !dbg !798
  br label %if.end4, !dbg !798

if.else:                                          ; preds = %do.body
  %6 = load i64, ptr %port, align 8, !dbg !800
  %cmp1 = icmp ugt i64 %6, 65536, !dbg !800
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !796

if.then2:                                         ; preds = %if.else
  %7 = load i64, ptr %port, align 8, !dbg !802
  %and = and i64 %7, 65535, !dbg !802
  store i64 %and, ptr %port, align 8, !dbg !802
  %8 = load i16, ptr %val.addr, align 2, !dbg !802
  %9 = call i16 @llvm.bswap.i16(i16 %8), !dbg !802
  %10 = load i64, ptr %port, align 8, !dbg !802
  %conv = trunc i64 %10 to i16, !dbg !802
  call void @__outw(i16 noundef zeroext %9, i16 noundef zeroext %conv) #8, !dbg !802
  br label %if.end, !dbg !802

if.else3:                                         ; preds = %if.else
  %11 = load i64, ptr %port, align 8, !dbg !800
  call void @bad_io_access(i64 noundef %11, ptr noundef @.str.11) #8, !dbg !800
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !794
  br label %do.end, !dbg !795

do.end:                                           ; preds = %if.end4
  ret void, !dbg !804
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iowrite32(i32 noundef %val, ptr noundef %addr) #0 align 16 !dbg !805 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !809, metadata !DIExpression()), !dbg !813
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !810, metadata !DIExpression()), !dbg !814
  call void @kmsan_check_memory(ptr noundef %val.addr, i64 noundef 4) #8, !dbg !815
  br label %do.body, !dbg !816

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !817
  call void @llvm.dbg.declare(metadata ptr %port, metadata !811, metadata !DIExpression()), !dbg !817
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !817
  %1 = ptrtoint ptr %0 to i64, !dbg !817
  store i64 %1, ptr %port, align 8, !dbg !817
  %2 = load i64, ptr %port, align 8, !dbg !818
  %cmp = icmp uge i64 %2, 262144, !dbg !818
  br i1 %cmp, label %if.then, label %if.else, !dbg !817

if.then:                                          ; preds = %do.body
  %3 = load i32, ptr %val.addr, align 4, !dbg !820
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !820
  call void @writel(i32 noundef %3, ptr noundef %4) #8, !dbg !820
  br label %if.end4, !dbg !820

if.else:                                          ; preds = %do.body
  %5 = load i64, ptr %port, align 8, !dbg !822
  %cmp1 = icmp ugt i64 %5, 65536, !dbg !822
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !818

if.then2:                                         ; preds = %if.else
  %6 = load i64, ptr %port, align 8, !dbg !824
  %and = and i64 %6, 65535, !dbg !824
  store i64 %and, ptr %port, align 8, !dbg !824
  %7 = load i32, ptr %val.addr, align 4, !dbg !824
  %8 = load i64, ptr %port, align 8, !dbg !824
  %conv = trunc i64 %8 to i16, !dbg !824
  call void @__outl(i32 noundef %7, i16 noundef zeroext %conv) #8, !dbg !824
  br label %if.end, !dbg !824

if.else3:                                         ; preds = %if.else
  %9 = load i64, ptr %port, align 8, !dbg !822
  call void @bad_io_access(i64 noundef %9, ptr noundef @.str.12) #8, !dbg !822
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !816
  br label %do.end, !dbg !817

do.end:                                           ; preds = %if.end4
  ret void, !dbg !826
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writel(i32 noundef %val, ptr noundef %addr) #3 align 16 !dbg !827 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !831, metadata !DIExpression()), !dbg !833
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !832, metadata !DIExpression()), !dbg !833
  %0 = load i32, ptr %val.addr, align 4, !dbg !833
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !833
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #7, !dbg !833, !srcloc !834
  ret void, !dbg !833
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__outl(i32 noundef %value, i16 noundef zeroext %port) #4 align 16 !dbg !835 {
entry:
  %value.addr = alloca i32, align 4
  %port.addr = alloca i16, align 2
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !839, metadata !DIExpression()), !dbg !841
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !840, metadata !DIExpression()), !dbg !841
  %0 = load i32, ptr %value.addr, align 4, !dbg !841
  %1 = load i16, ptr %port.addr, align 2, !dbg !841
  call void asm sideeffect "outl $0, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0, i16 %1) #7, !dbg !841, !srcloc !842
  ret void, !dbg !841
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iowrite32be(i32 noundef %val, ptr noundef %addr) #0 align 16 !dbg !843 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !845, metadata !DIExpression()), !dbg !849
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !846, metadata !DIExpression()), !dbg !850
  call void @kmsan_check_memory(ptr noundef %val.addr, i64 noundef 4) #8, !dbg !851
  br label %do.body, !dbg !852

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !853
  call void @llvm.dbg.declare(metadata ptr %port, metadata !847, metadata !DIExpression()), !dbg !853
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !853
  %1 = ptrtoint ptr %0 to i64, !dbg !853
  store i64 %1, ptr %port, align 8, !dbg !853
  %2 = load i64, ptr %port, align 8, !dbg !854
  %cmp = icmp uge i64 %2, 262144, !dbg !854
  br i1 %cmp, label %if.then, label %if.else, !dbg !853

if.then:                                          ; preds = %do.body
  %3 = load i32, ptr %val.addr, align 4, !dbg !856
  %4 = call i32 @llvm.bswap.i32(i32 %3), !dbg !856
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !856
  call void @writel(i32 noundef %4, ptr noundef %5) #8, !dbg !856
  br label %if.end4, !dbg !856

if.else:                                          ; preds = %do.body
  %6 = load i64, ptr %port, align 8, !dbg !858
  %cmp1 = icmp ugt i64 %6, 65536, !dbg !858
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !854

if.then2:                                         ; preds = %if.else
  %7 = load i64, ptr %port, align 8, !dbg !860
  %and = and i64 %7, 65535, !dbg !860
  store i64 %and, ptr %port, align 8, !dbg !860
  %8 = load i32, ptr %val.addr, align 4, !dbg !860
  %9 = call i32 @llvm.bswap.i32(i32 %8), !dbg !860
  %10 = load i64, ptr %port, align 8, !dbg !860
  %conv = trunc i64 %10 to i16, !dbg !860
  call void @__outl(i32 noundef %9, i16 noundef zeroext %conv) #8, !dbg !860
  br label %if.end, !dbg !860

if.else3:                                         ; preds = %if.else
  %11 = load i64, ptr %port, align 8, !dbg !858
  call void @bad_io_access(i64 noundef %11, ptr noundef @.str.13) #8, !dbg !858
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !852
  br label %do.end, !dbg !853

do.end:                                           ; preds = %if.end4
  ret void, !dbg !862
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iowrite64_lo_hi(i64 noundef %val, ptr noundef %addr) #0 align 16 !dbg !863 {
entry:
  %val.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !867, metadata !DIExpression()), !dbg !871
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !868, metadata !DIExpression()), !dbg !872
  call void @kmsan_check_memory(ptr noundef %val.addr, i64 noundef 8) #8, !dbg !873
  br label %do.body, !dbg !874

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !875
  call void @llvm.dbg.declare(metadata ptr %port, metadata !869, metadata !DIExpression()), !dbg !875
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !875
  %1 = ptrtoint ptr %0 to i64, !dbg !875
  store i64 %1, ptr %port, align 8, !dbg !875
  %2 = load i64, ptr %port, align 8, !dbg !876
  %cmp = icmp uge i64 %2, 262144, !dbg !876
  br i1 %cmp, label %if.then, label %if.else, !dbg !875

if.then:                                          ; preds = %do.body
  %3 = load i64, ptr %val.addr, align 8, !dbg !878
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !878
  call void @writeq(i64 noundef %3, ptr noundef %4) #8, !dbg !878
  br label %if.end4, !dbg !878

if.else:                                          ; preds = %do.body
  %5 = load i64, ptr %port, align 8, !dbg !880
  %cmp1 = icmp ugt i64 %5, 65536, !dbg !880
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !876

if.then2:                                         ; preds = %if.else
  %6 = load i64, ptr %port, align 8, !dbg !882
  %and = and i64 %6, 65535, !dbg !882
  store i64 %and, ptr %port, align 8, !dbg !882
  %7 = load i64, ptr %val.addr, align 8, !dbg !882
  %8 = load i64, ptr %port, align 8, !dbg !882
  call void @pio_write64_lo_hi(i64 noundef %7, i64 noundef %8) #8, !dbg !882
  br label %if.end, !dbg !882

if.else3:                                         ; preds = %if.else
  %9 = load i64, ptr %port, align 8, !dbg !880
  call void @bad_io_access(i64 noundef %9, ptr noundef @.str.14) #8, !dbg !880
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !874
  br label %do.end, !dbg !875

do.end:                                           ; preds = %if.end4
  ret void, !dbg !884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @writeq(i64 noundef %val, ptr noundef %addr) #3 align 16 !dbg !885 {
entry:
  %val.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !889, metadata !DIExpression()), !dbg !891
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !890, metadata !DIExpression()), !dbg !891
  %0 = load i64, ptr %val.addr, align 8, !dbg !891
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !891
  call void asm sideeffect "movq $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %0, ptr elementtype(i64) %1) #7, !dbg !891, !srcloc !892
  ret void, !dbg !891
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pio_write64_lo_hi(i64 noundef %val, i64 noundef %port) #0 align 16 !dbg !893 {
entry:
  %val.addr = alloca i64, align 8
  %port.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !897, metadata !DIExpression()), !dbg !899
  store i64 %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !898, metadata !DIExpression()), !dbg !900
  %0 = load i64, ptr %val.addr, align 8, !dbg !901
  %conv = trunc i64 %0 to i32, !dbg !901
  %1 = load i64, ptr %port.addr, align 8, !dbg !902
  %conv1 = trunc i64 %1 to i16, !dbg !902
  call void @__outl(i32 noundef %conv, i16 noundef zeroext %conv1) #8, !dbg !903
  %2 = load i64, ptr %val.addr, align 8, !dbg !904
  %shr = lshr i64 %2, 32, !dbg !905
  %conv2 = trunc i64 %shr to i32, !dbg !904
  %3 = load i64, ptr %port.addr, align 8, !dbg !906
  %add = add i64 %3, 4, !dbg !907
  %conv3 = trunc i64 %add to i16, !dbg !906
  call void @__outl(i32 noundef %conv2, i16 noundef zeroext %conv3) #8, !dbg !908
  ret void, !dbg !909
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iowrite64_hi_lo(i64 noundef %val, ptr noundef %addr) #0 align 16 !dbg !910 {
entry:
  %val.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !912, metadata !DIExpression()), !dbg !916
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !913, metadata !DIExpression()), !dbg !917
  call void @kmsan_check_memory(ptr noundef %val.addr, i64 noundef 8) #8, !dbg !918
  br label %do.body, !dbg !919

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !920
  call void @llvm.dbg.declare(metadata ptr %port, metadata !914, metadata !DIExpression()), !dbg !920
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !920
  %1 = ptrtoint ptr %0 to i64, !dbg !920
  store i64 %1, ptr %port, align 8, !dbg !920
  %2 = load i64, ptr %port, align 8, !dbg !921
  %cmp = icmp uge i64 %2, 262144, !dbg !921
  br i1 %cmp, label %if.then, label %if.else, !dbg !920

if.then:                                          ; preds = %do.body
  %3 = load i64, ptr %val.addr, align 8, !dbg !923
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !923
  call void @writeq(i64 noundef %3, ptr noundef %4) #8, !dbg !923
  br label %if.end4, !dbg !923

if.else:                                          ; preds = %do.body
  %5 = load i64, ptr %port, align 8, !dbg !925
  %cmp1 = icmp ugt i64 %5, 65536, !dbg !925
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !921

if.then2:                                         ; preds = %if.else
  %6 = load i64, ptr %port, align 8, !dbg !927
  %and = and i64 %6, 65535, !dbg !927
  store i64 %and, ptr %port, align 8, !dbg !927
  %7 = load i64, ptr %val.addr, align 8, !dbg !927
  %8 = load i64, ptr %port, align 8, !dbg !927
  call void @pio_write64_hi_lo(i64 noundef %7, i64 noundef %8) #8, !dbg !927
  br label %if.end, !dbg !927

if.else3:                                         ; preds = %if.else
  %9 = load i64, ptr %port, align 8, !dbg !925
  call void @bad_io_access(i64 noundef %9, ptr noundef @.str.15) #8, !dbg !925
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !919
  br label %do.end, !dbg !920

do.end:                                           ; preds = %if.end4
  ret void, !dbg !929
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pio_write64_hi_lo(i64 noundef %val, i64 noundef %port) #0 align 16 !dbg !930 {
entry:
  %val.addr = alloca i64, align 8
  %port.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !932, metadata !DIExpression()), !dbg !934
  store i64 %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !933, metadata !DIExpression()), !dbg !935
  %0 = load i64, ptr %val.addr, align 8, !dbg !936
  %shr = lshr i64 %0, 32, !dbg !937
  %conv = trunc i64 %shr to i32, !dbg !936
  %1 = load i64, ptr %port.addr, align 8, !dbg !938
  %add = add i64 %1, 4, !dbg !939
  %conv1 = trunc i64 %add to i16, !dbg !938
  call void @__outl(i32 noundef %conv, i16 noundef zeroext %conv1) #8, !dbg !940
  %2 = load i64, ptr %val.addr, align 8, !dbg !941
  %conv2 = trunc i64 %2 to i32, !dbg !941
  %3 = load i64, ptr %port.addr, align 8, !dbg !942
  %conv3 = trunc i64 %3 to i16, !dbg !942
  call void @__outl(i32 noundef %conv2, i16 noundef zeroext %conv3) #8, !dbg !943
  ret void, !dbg !944
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iowrite64be_lo_hi(i64 noundef %val, ptr noundef %addr) #0 align 16 !dbg !945 {
entry:
  %val.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !947, metadata !DIExpression()), !dbg !951
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !948, metadata !DIExpression()), !dbg !952
  call void @kmsan_check_memory(ptr noundef %val.addr, i64 noundef 8) #8, !dbg !953
  br label %do.body, !dbg !954

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !955
  call void @llvm.dbg.declare(metadata ptr %port, metadata !949, metadata !DIExpression()), !dbg !955
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !955
  %1 = ptrtoint ptr %0 to i64, !dbg !955
  store i64 %1, ptr %port, align 8, !dbg !955
  %2 = load i64, ptr %port, align 8, !dbg !956
  %cmp = icmp uge i64 %2, 262144, !dbg !956
  br i1 %cmp, label %if.then, label %if.else, !dbg !955

if.then:                                          ; preds = %do.body
  %3 = load i64, ptr %val.addr, align 8, !dbg !958
  %4 = call i64 @llvm.bswap.i64(i64 %3), !dbg !958
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !958
  call void @writeq(i64 noundef %4, ptr noundef %5) #8, !dbg !958
  br label %if.end4, !dbg !958

if.else:                                          ; preds = %do.body
  %6 = load i64, ptr %port, align 8, !dbg !960
  %cmp1 = icmp ugt i64 %6, 65536, !dbg !960
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !956

if.then2:                                         ; preds = %if.else
  %7 = load i64, ptr %port, align 8, !dbg !962
  %and = and i64 %7, 65535, !dbg !962
  store i64 %and, ptr %port, align 8, !dbg !962
  %8 = load i64, ptr %val.addr, align 8, !dbg !962
  %9 = load i64, ptr %port, align 8, !dbg !962
  call void @pio_write64be_lo_hi(i64 noundef %8, i64 noundef %9) #8, !dbg !962
  br label %if.end, !dbg !962

if.else3:                                         ; preds = %if.else
  %10 = load i64, ptr %port, align 8, !dbg !960
  call void @bad_io_access(i64 noundef %10, ptr noundef @.str.16) #8, !dbg !960
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !954
  br label %do.end, !dbg !955

do.end:                                           ; preds = %if.end4
  ret void, !dbg !964
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pio_write64be_lo_hi(i64 noundef %val, i64 noundef %port) #0 align 16 !dbg !965 {
entry:
  %val.addr = alloca i64, align 8
  %port.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !967, metadata !DIExpression()), !dbg !969
  store i64 %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !968, metadata !DIExpression()), !dbg !970
  %0 = load i64, ptr %val.addr, align 8, !dbg !971
  %conv = trunc i64 %0 to i32, !dbg !971
  %1 = call i32 @llvm.bswap.i32(i32 %conv), !dbg !971
  %2 = load i64, ptr %port.addr, align 8, !dbg !971
  %add = add i64 %2, 4, !dbg !971
  %conv1 = trunc i64 %add to i16, !dbg !971
  call void @__outl(i32 noundef %1, i16 noundef zeroext %conv1) #8, !dbg !971
  %3 = load i64, ptr %val.addr, align 8, !dbg !972
  %shr = lshr i64 %3, 32, !dbg !972
  %conv2 = trunc i64 %shr to i32, !dbg !972
  %4 = call i32 @llvm.bswap.i32(i32 %conv2), !dbg !972
  %5 = load i64, ptr %port.addr, align 8, !dbg !972
  %conv3 = trunc i64 %5 to i16, !dbg !972
  call void @__outl(i32 noundef %4, i16 noundef zeroext %conv3) #8, !dbg !972
  ret void, !dbg !973
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iowrite64be_hi_lo(i64 noundef %val, ptr noundef %addr) #0 align 16 !dbg !974 {
entry:
  %val.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !976, metadata !DIExpression()), !dbg !980
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !977, metadata !DIExpression()), !dbg !981
  call void @kmsan_check_memory(ptr noundef %val.addr, i64 noundef 8) #8, !dbg !982
  br label %do.body, !dbg !983

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !984
  call void @llvm.dbg.declare(metadata ptr %port, metadata !978, metadata !DIExpression()), !dbg !984
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !984
  %1 = ptrtoint ptr %0 to i64, !dbg !984
  store i64 %1, ptr %port, align 8, !dbg !984
  %2 = load i64, ptr %port, align 8, !dbg !985
  %cmp = icmp uge i64 %2, 262144, !dbg !985
  br i1 %cmp, label %if.then, label %if.else, !dbg !984

if.then:                                          ; preds = %do.body
  %3 = load i64, ptr %val.addr, align 8, !dbg !987
  %4 = call i64 @llvm.bswap.i64(i64 %3), !dbg !987
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !987
  call void @writeq(i64 noundef %4, ptr noundef %5) #8, !dbg !987
  br label %if.end4, !dbg !987

if.else:                                          ; preds = %do.body
  %6 = load i64, ptr %port, align 8, !dbg !989
  %cmp1 = icmp ugt i64 %6, 65536, !dbg !989
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !985

if.then2:                                         ; preds = %if.else
  %7 = load i64, ptr %port, align 8, !dbg !991
  %and = and i64 %7, 65535, !dbg !991
  store i64 %and, ptr %port, align 8, !dbg !991
  %8 = load i64, ptr %val.addr, align 8, !dbg !991
  %9 = load i64, ptr %port, align 8, !dbg !991
  call void @pio_write64be_hi_lo(i64 noundef %8, i64 noundef %9) #8, !dbg !991
  br label %if.end, !dbg !991

if.else3:                                         ; preds = %if.else
  %10 = load i64, ptr %port, align 8, !dbg !989
  call void @bad_io_access(i64 noundef %10, ptr noundef @.str.17) #8, !dbg !989
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !983
  br label %do.end, !dbg !984

do.end:                                           ; preds = %if.end4
  ret void, !dbg !993
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pio_write64be_hi_lo(i64 noundef %val, i64 noundef %port) #0 align 16 !dbg !994 {
entry:
  %val.addr = alloca i64, align 8
  %port.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !996, metadata !DIExpression()), !dbg !998
  store i64 %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !997, metadata !DIExpression()), !dbg !999
  %0 = load i64, ptr %val.addr, align 8, !dbg !1000
  %shr = lshr i64 %0, 32, !dbg !1000
  %conv = trunc i64 %shr to i32, !dbg !1000
  %1 = call i32 @llvm.bswap.i32(i32 %conv), !dbg !1000
  %2 = load i64, ptr %port.addr, align 8, !dbg !1000
  %conv1 = trunc i64 %2 to i16, !dbg !1000
  call void @__outl(i32 noundef %1, i16 noundef zeroext %conv1) #8, !dbg !1000
  %3 = load i64, ptr %val.addr, align 8, !dbg !1001
  %conv2 = trunc i64 %3 to i32, !dbg !1001
  %4 = call i32 @llvm.bswap.i32(i32 %conv2), !dbg !1001
  %5 = load i64, ptr %port.addr, align 8, !dbg !1001
  %add = add i64 %5, 4, !dbg !1001
  %conv3 = trunc i64 %add to i16, !dbg !1001
  call void @__outl(i32 noundef %4, i16 noundef zeroext %conv3) #8, !dbg !1001
  ret void, !dbg !1002
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ioread8_rep(ptr noundef %addr, ptr noundef %dst, i64 noundef %count) #0 align 16 !dbg !1003 {
entry:
  %addr.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %port = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1007, metadata !DIExpression()), !dbg !1012
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1008, metadata !DIExpression()), !dbg !1013
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1009, metadata !DIExpression()), !dbg !1014
  br label %do.body, !dbg !1015

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !1016
  call void @llvm.dbg.declare(metadata ptr %port, metadata !1010, metadata !DIExpression()), !dbg !1016
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1016
  %1 = ptrtoint ptr %0 to i64, !dbg !1016
  store i64 %1, ptr %port, align 8, !dbg !1016
  %2 = load i64, ptr %port, align 8, !dbg !1017
  %cmp = icmp uge i64 %2, 262144, !dbg !1017
  br i1 %cmp, label %if.then, label %if.else, !dbg !1016

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1019
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1019
  %5 = load i64, ptr %count.addr, align 8, !dbg !1019
  %conv = trunc i64 %5 to i32, !dbg !1019
  call void @mmio_insb(ptr noundef %3, ptr noundef %4, i32 noundef %conv) #8, !dbg !1019
  br label %if.end6, !dbg !1019

if.else:                                          ; preds = %do.body
  %6 = load i64, ptr %port, align 8, !dbg !1021
  %cmp1 = icmp ugt i64 %6, 65536, !dbg !1021
  br i1 %cmp1, label %if.then3, label %if.else5, !dbg !1017

if.then3:                                         ; preds = %if.else
  %7 = load i64, ptr %port, align 8, !dbg !1023
  %and = and i64 %7, 65535, !dbg !1023
  store i64 %and, ptr %port, align 8, !dbg !1023
  %8 = load i64, ptr %port, align 8, !dbg !1023
  %conv4 = trunc i64 %8 to i16, !dbg !1023
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !1023
  %10 = load i64, ptr %count.addr, align 8, !dbg !1023
  call void @insb(i16 noundef zeroext %conv4, ptr noundef %9, i64 noundef %10) #8, !dbg !1023
  br label %if.end, !dbg !1023

if.else5:                                         ; preds = %if.else
  %11 = load i64, ptr %port, align 8, !dbg !1021
  call void @bad_io_access(i64 noundef %11, ptr noundef @.str.18) #8, !dbg !1021
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !1015
  br label %do.end, !dbg !1016

do.end:                                           ; preds = %if.end6
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !1025
  %13 = load i64, ptr %count.addr, align 8, !dbg !1026
  call void @kmsan_unpoison_memory(ptr noundef %12, i64 noundef %13) #8, !dbg !1027
  ret void, !dbg !1028
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmio_insb(ptr noundef %addr, ptr noundef %dst, i32 noundef %count) #3 align 16 !dbg !1029 {
entry:
  %addr.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %data = alloca i8, align 1
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1033, metadata !DIExpression()), !dbg !1038
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1034, metadata !DIExpression()), !dbg !1039
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1035, metadata !DIExpression()), !dbg !1040
  br label %while.cond, !dbg !1041

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %count.addr, align 4, !dbg !1042
  %dec = add i32 %0, -1, !dbg !1042
  store i32 %dec, ptr %count.addr, align 4, !dbg !1042
  %cmp = icmp sge i32 %dec, 0, !dbg !1043
  br i1 %cmp, label %while.body, label %while.end, !dbg !1041

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %data) #7, !dbg !1044
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1036, metadata !DIExpression()), !dbg !1045
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1046
  %call = call zeroext i8 @__readb(ptr noundef %1) #8, !dbg !1047
  store i8 %call, ptr %data, align 1, !dbg !1045
  %2 = load i8, ptr %data, align 1, !dbg !1048
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1049
  store i8 %2, ptr %3, align 1, !dbg !1050
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1051
  %incdec.ptr = getelementptr i8, ptr %4, i32 1, !dbg !1051
  store ptr %incdec.ptr, ptr %dst.addr, align 8, !dbg !1051
  call void @llvm.lifetime.end.p0(i64 1, ptr %data) #7, !dbg !1052
  br label %while.cond, !dbg !1041, !llvm.loop !1053

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1056
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @insb(i16 noundef zeroext %port, ptr noundef %addr, i64 noundef %count) #3 align 16 !dbg !1057 {
entry:
  %port.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !1061, metadata !DIExpression()), !dbg !1067
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1062, metadata !DIExpression()), !dbg !1067
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1063, metadata !DIExpression()), !dbg !1067
  %call = call zeroext i1 @cc_platform_has(i32 noundef 4) #8, !dbg !1068
  br i1 %call, label %if.then, label %if.else, !dbg !1067

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #7, !dbg !1069
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1064, metadata !DIExpression()), !dbg !1069
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1069
  store ptr %0, ptr %value, align 8, !dbg !1069
  br label %while.cond, !dbg !1069

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i64, ptr %count.addr, align 8, !dbg !1069
  %tobool = icmp ne i64 %1, 0, !dbg !1069
  br i1 %tobool, label %while.body, label %while.end, !dbg !1069

while.body:                                       ; preds = %while.cond
  %2 = load i16, ptr %port.addr, align 2, !dbg !1070
  %call1 = call zeroext i8 @__inb(i16 noundef zeroext %2) #8, !dbg !1070
  %3 = load ptr, ptr %value, align 8, !dbg !1070
  store i8 %call1, ptr %3, align 1, !dbg !1070
  %4 = load ptr, ptr %value, align 8, !dbg !1070
  %incdec.ptr = getelementptr i8, ptr %4, i32 1, !dbg !1070
  store ptr %incdec.ptr, ptr %value, align 8, !dbg !1070
  %5 = load i64, ptr %count.addr, align 8, !dbg !1070
  %dec = add i64 %5, -1, !dbg !1070
  store i64 %dec, ptr %count.addr, align 8, !dbg !1070
  br label %while.cond, !dbg !1069, !llvm.loop !1072

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #7, !dbg !1068
  br label %if.end, !dbg !1069

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !1073
  %7 = load i64, ptr %count.addr, align 8, !dbg !1073
  %8 = load i16, ptr %port.addr, align 2, !dbg !1073
  %9 = call { ptr, i64 } asm sideeffect "rep; insb", "={di},={cx},{dx},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %8, ptr %6, i64 %7) #7, !dbg !1073, !srcloc !1075
  %asmresult = extractvalue { ptr, i64 } %9, 0, !dbg !1073
  %asmresult2 = extractvalue { ptr, i64 } %9, 1, !dbg !1073
  store ptr %asmresult, ptr %addr.addr, align 8, !dbg !1073
  store i64 %asmresult2, ptr %count.addr, align 8, !dbg !1073
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void, !dbg !1067
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #3 align 16 !dbg !1076 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !1078, metadata !DIExpression()), !dbg !1080
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1079, metadata !DIExpression()), !dbg !1081
  ret void, !dbg !1082
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ioread16_rep(ptr noundef %addr, ptr noundef %dst, i64 noundef %count) #0 align 16 !dbg !1083 {
entry:
  %addr.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %port = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1085, metadata !DIExpression()), !dbg !1090
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1086, metadata !DIExpression()), !dbg !1091
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1087, metadata !DIExpression()), !dbg !1092
  br label %do.body, !dbg !1093

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !1094
  call void @llvm.dbg.declare(metadata ptr %port, metadata !1088, metadata !DIExpression()), !dbg !1094
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1094
  %1 = ptrtoint ptr %0 to i64, !dbg !1094
  store i64 %1, ptr %port, align 8, !dbg !1094
  %2 = load i64, ptr %port, align 8, !dbg !1095
  %cmp = icmp uge i64 %2, 262144, !dbg !1095
  br i1 %cmp, label %if.then, label %if.else, !dbg !1094

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1097
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1097
  %5 = load i64, ptr %count.addr, align 8, !dbg !1097
  %conv = trunc i64 %5 to i32, !dbg !1097
  call void @mmio_insw(ptr noundef %3, ptr noundef %4, i32 noundef %conv) #8, !dbg !1097
  br label %if.end6, !dbg !1097

if.else:                                          ; preds = %do.body
  %6 = load i64, ptr %port, align 8, !dbg !1099
  %cmp1 = icmp ugt i64 %6, 65536, !dbg !1099
  br i1 %cmp1, label %if.then3, label %if.else5, !dbg !1095

if.then3:                                         ; preds = %if.else
  %7 = load i64, ptr %port, align 8, !dbg !1101
  %and = and i64 %7, 65535, !dbg !1101
  store i64 %and, ptr %port, align 8, !dbg !1101
  %8 = load i64, ptr %port, align 8, !dbg !1101
  %conv4 = trunc i64 %8 to i16, !dbg !1101
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !1101
  %10 = load i64, ptr %count.addr, align 8, !dbg !1101
  call void @insw(i16 noundef zeroext %conv4, ptr noundef %9, i64 noundef %10) #8, !dbg !1101
  br label %if.end, !dbg !1101

if.else5:                                         ; preds = %if.else
  %11 = load i64, ptr %port, align 8, !dbg !1099
  call void @bad_io_access(i64 noundef %11, ptr noundef @.str.19) #8, !dbg !1099
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !1093
  br label %do.end, !dbg !1094

do.end:                                           ; preds = %if.end6
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !1103
  %13 = load i64, ptr %count.addr, align 8, !dbg !1104
  %mul = mul i64 %13, 2, !dbg !1105
  call void @kmsan_unpoison_memory(ptr noundef %12, i64 noundef %mul) #8, !dbg !1106
  ret void, !dbg !1107
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmio_insw(ptr noundef %addr, ptr noundef %dst, i32 noundef %count) #3 align 16 !dbg !1108 {
entry:
  %addr.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %data = alloca i16, align 2
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1112, metadata !DIExpression()), !dbg !1117
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1113, metadata !DIExpression()), !dbg !1118
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1114, metadata !DIExpression()), !dbg !1119
  br label %while.cond, !dbg !1120

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %count.addr, align 4, !dbg !1121
  %dec = add i32 %0, -1, !dbg !1121
  store i32 %dec, ptr %count.addr, align 4, !dbg !1121
  %cmp = icmp sge i32 %dec, 0, !dbg !1122
  br i1 %cmp, label %while.body, label %while.end, !dbg !1120

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 2, ptr %data) #7, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1115, metadata !DIExpression()), !dbg !1124
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1125
  %call = call zeroext i16 @__readw(ptr noundef %1) #8, !dbg !1126
  store i16 %call, ptr %data, align 2, !dbg !1124
  %2 = load i16, ptr %data, align 2, !dbg !1127
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1128
  store i16 %2, ptr %3, align 2, !dbg !1129
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1130
  %incdec.ptr = getelementptr i16, ptr %4, i32 1, !dbg !1130
  store ptr %incdec.ptr, ptr %dst.addr, align 8, !dbg !1130
  call void @llvm.lifetime.end.p0(i64 2, ptr %data) #7, !dbg !1131
  br label %while.cond, !dbg !1120, !llvm.loop !1132

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1133
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @insw(i16 noundef zeroext %port, ptr noundef %addr, i64 noundef %count) #3 align 16 !dbg !1134 {
entry:
  %port.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !1136, metadata !DIExpression()), !dbg !1142
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1137, metadata !DIExpression()), !dbg !1142
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1138, metadata !DIExpression()), !dbg !1142
  %call = call zeroext i1 @cc_platform_has(i32 noundef 4) #8, !dbg !1143
  br i1 %call, label %if.then, label %if.else, !dbg !1142

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #7, !dbg !1144
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1139, metadata !DIExpression()), !dbg !1144
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1144
  store ptr %0, ptr %value, align 8, !dbg !1144
  br label %while.cond, !dbg !1144

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i64, ptr %count.addr, align 8, !dbg !1144
  %tobool = icmp ne i64 %1, 0, !dbg !1144
  br i1 %tobool, label %while.body, label %while.end, !dbg !1144

while.body:                                       ; preds = %while.cond
  %2 = load i16, ptr %port.addr, align 2, !dbg !1145
  %call1 = call zeroext i16 @__inw(i16 noundef zeroext %2) #8, !dbg !1145
  %3 = load ptr, ptr %value, align 8, !dbg !1145
  store i16 %call1, ptr %3, align 2, !dbg !1145
  %4 = load ptr, ptr %value, align 8, !dbg !1145
  %incdec.ptr = getelementptr i16, ptr %4, i32 1, !dbg !1145
  store ptr %incdec.ptr, ptr %value, align 8, !dbg !1145
  %5 = load i64, ptr %count.addr, align 8, !dbg !1145
  %dec = add i64 %5, -1, !dbg !1145
  store i64 %dec, ptr %count.addr, align 8, !dbg !1145
  br label %while.cond, !dbg !1144, !llvm.loop !1147

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #7, !dbg !1143
  br label %if.end, !dbg !1144

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !1148
  %7 = load i64, ptr %count.addr, align 8, !dbg !1148
  %8 = load i16, ptr %port.addr, align 2, !dbg !1148
  %9 = call { ptr, i64 } asm sideeffect "rep; insw", "={di},={cx},{dx},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %8, ptr %6, i64 %7) #7, !dbg !1148, !srcloc !1150
  %asmresult = extractvalue { ptr, i64 } %9, 0, !dbg !1148
  %asmresult2 = extractvalue { ptr, i64 } %9, 1, !dbg !1148
  store ptr %asmresult, ptr %addr.addr, align 8, !dbg !1148
  store i64 %asmresult2, ptr %count.addr, align 8, !dbg !1148
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void, !dbg !1142
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ioread32_rep(ptr noundef %addr, ptr noundef %dst, i64 noundef %count) #0 align 16 !dbg !1151 {
entry:
  %addr.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %port = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1153, metadata !DIExpression()), !dbg !1158
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1154, metadata !DIExpression()), !dbg !1159
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1155, metadata !DIExpression()), !dbg !1160
  br label %do.body, !dbg !1161

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !1162
  call void @llvm.dbg.declare(metadata ptr %port, metadata !1156, metadata !DIExpression()), !dbg !1162
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1162
  %1 = ptrtoint ptr %0 to i64, !dbg !1162
  store i64 %1, ptr %port, align 8, !dbg !1162
  %2 = load i64, ptr %port, align 8, !dbg !1163
  %cmp = icmp uge i64 %2, 262144, !dbg !1163
  br i1 %cmp, label %if.then, label %if.else, !dbg !1162

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1165
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1165
  %5 = load i64, ptr %count.addr, align 8, !dbg !1165
  %conv = trunc i64 %5 to i32, !dbg !1165
  call void @mmio_insl(ptr noundef %3, ptr noundef %4, i32 noundef %conv) #8, !dbg !1165
  br label %if.end6, !dbg !1165

if.else:                                          ; preds = %do.body
  %6 = load i64, ptr %port, align 8, !dbg !1167
  %cmp1 = icmp ugt i64 %6, 65536, !dbg !1167
  br i1 %cmp1, label %if.then3, label %if.else5, !dbg !1163

if.then3:                                         ; preds = %if.else
  %7 = load i64, ptr %port, align 8, !dbg !1169
  %and = and i64 %7, 65535, !dbg !1169
  store i64 %and, ptr %port, align 8, !dbg !1169
  %8 = load i64, ptr %port, align 8, !dbg !1169
  %conv4 = trunc i64 %8 to i16, !dbg !1169
  %9 = load ptr, ptr %dst.addr, align 8, !dbg !1169
  %10 = load i64, ptr %count.addr, align 8, !dbg !1169
  call void @insl(i16 noundef zeroext %conv4, ptr noundef %9, i64 noundef %10) #8, !dbg !1169
  br label %if.end, !dbg !1169

if.else5:                                         ; preds = %if.else
  %11 = load i64, ptr %port, align 8, !dbg !1167
  call void @bad_io_access(i64 noundef %11, ptr noundef @.str.20) #8, !dbg !1167
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !1161
  br label %do.end, !dbg !1162

do.end:                                           ; preds = %if.end6
  %12 = load ptr, ptr %dst.addr, align 8, !dbg !1171
  %13 = load i64, ptr %count.addr, align 8, !dbg !1172
  %mul = mul i64 %13, 4, !dbg !1173
  call void @kmsan_unpoison_memory(ptr noundef %12, i64 noundef %mul) #8, !dbg !1174
  ret void, !dbg !1175
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmio_insl(ptr noundef %addr, ptr noundef %dst, i32 noundef %count) #3 align 16 !dbg !1176 {
entry:
  %addr.addr = alloca ptr, align 8
  %dst.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %data = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1180, metadata !DIExpression()), !dbg !1185
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !1181, metadata !DIExpression()), !dbg !1186
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1182, metadata !DIExpression()), !dbg !1187
  br label %while.cond, !dbg !1188

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %count.addr, align 4, !dbg !1189
  %dec = add i32 %0, -1, !dbg !1189
  store i32 %dec, ptr %count.addr, align 4, !dbg !1189
  %cmp = icmp sge i32 %dec, 0, !dbg !1190
  br i1 %cmp, label %while.body, label %while.end, !dbg !1188

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %data) #7, !dbg !1191
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1183, metadata !DIExpression()), !dbg !1192
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1193
  %call = call i32 @__readl(ptr noundef %1) #8, !dbg !1194
  store i32 %call, ptr %data, align 4, !dbg !1192
  %2 = load i32, ptr %data, align 4, !dbg !1195
  %3 = load ptr, ptr %dst.addr, align 8, !dbg !1196
  store i32 %2, ptr %3, align 4, !dbg !1197
  %4 = load ptr, ptr %dst.addr, align 8, !dbg !1198
  %incdec.ptr = getelementptr i32, ptr %4, i32 1, !dbg !1198
  store ptr %incdec.ptr, ptr %dst.addr, align 8, !dbg !1198
  call void @llvm.lifetime.end.p0(i64 4, ptr %data) #7, !dbg !1199
  br label %while.cond, !dbg !1188, !llvm.loop !1200

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1201
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @insl(i16 noundef zeroext %port, ptr noundef %addr, i64 noundef %count) #3 align 16 !dbg !1202 {
entry:
  %port.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !1204, metadata !DIExpression()), !dbg !1210
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1205, metadata !DIExpression()), !dbg !1210
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1206, metadata !DIExpression()), !dbg !1210
  %call = call zeroext i1 @cc_platform_has(i32 noundef 4) #8, !dbg !1211
  br i1 %call, label %if.then, label %if.else, !dbg !1210

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #7, !dbg !1212
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1207, metadata !DIExpression()), !dbg !1212
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1212
  store ptr %0, ptr %value, align 8, !dbg !1212
  br label %while.cond, !dbg !1212

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i64, ptr %count.addr, align 8, !dbg !1212
  %tobool = icmp ne i64 %1, 0, !dbg !1212
  br i1 %tobool, label %while.body, label %while.end, !dbg !1212

while.body:                                       ; preds = %while.cond
  %2 = load i16, ptr %port.addr, align 2, !dbg !1213
  %call1 = call i32 @__inl(i16 noundef zeroext %2) #8, !dbg !1213
  %3 = load ptr, ptr %value, align 8, !dbg !1213
  store i32 %call1, ptr %3, align 4, !dbg !1213
  %4 = load ptr, ptr %value, align 8, !dbg !1213
  %incdec.ptr = getelementptr i32, ptr %4, i32 1, !dbg !1213
  store ptr %incdec.ptr, ptr %value, align 8, !dbg !1213
  %5 = load i64, ptr %count.addr, align 8, !dbg !1213
  %dec = add i64 %5, -1, !dbg !1213
  store i64 %dec, ptr %count.addr, align 8, !dbg !1213
  br label %while.cond, !dbg !1212, !llvm.loop !1215

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #7, !dbg !1211
  br label %if.end, !dbg !1212

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !1216
  %7 = load i64, ptr %count.addr, align 8, !dbg !1216
  %8 = load i16, ptr %port.addr, align 2, !dbg !1216
  %9 = call { ptr, i64 } asm sideeffect "rep; insl", "={di},={cx},{dx},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %8, ptr %6, i64 %7) #7, !dbg !1216, !srcloc !1218
  %asmresult = extractvalue { ptr, i64 } %9, 0, !dbg !1216
  %asmresult2 = extractvalue { ptr, i64 } %9, 1, !dbg !1216
  store ptr %asmresult, ptr %addr.addr, align 8, !dbg !1216
  store i64 %asmresult2, ptr %count.addr, align 8, !dbg !1216
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void, !dbg !1210
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iowrite8_rep(ptr noundef %addr, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !1219 {
entry:
  %addr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %port = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1223, metadata !DIExpression()), !dbg !1228
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1224, metadata !DIExpression()), !dbg !1229
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1225, metadata !DIExpression()), !dbg !1230
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1231
  %1 = load i64, ptr %count.addr, align 8, !dbg !1232
  call void @kmsan_check_memory(ptr noundef %0, i64 noundef %1) #8, !dbg !1233
  br label %do.body, !dbg !1234

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !1235
  call void @llvm.dbg.declare(metadata ptr %port, metadata !1226, metadata !DIExpression()), !dbg !1235
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1235
  %3 = ptrtoint ptr %2 to i64, !dbg !1235
  store i64 %3, ptr %port, align 8, !dbg !1235
  %4 = load i64, ptr %port, align 8, !dbg !1236
  %cmp = icmp uge i64 %4, 262144, !dbg !1236
  br i1 %cmp, label %if.then, label %if.else, !dbg !1235

if.then:                                          ; preds = %do.body
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1238
  %6 = load ptr, ptr %src.addr, align 8, !dbg !1238
  %7 = load i64, ptr %count.addr, align 8, !dbg !1238
  %conv = trunc i64 %7 to i32, !dbg !1238
  call void @mmio_outsb(ptr noundef %5, ptr noundef %6, i32 noundef %conv) #8, !dbg !1238
  br label %if.end6, !dbg !1238

if.else:                                          ; preds = %do.body
  %8 = load i64, ptr %port, align 8, !dbg !1240
  %cmp1 = icmp ugt i64 %8, 65536, !dbg !1240
  br i1 %cmp1, label %if.then3, label %if.else5, !dbg !1236

if.then3:                                         ; preds = %if.else
  %9 = load i64, ptr %port, align 8, !dbg !1242
  %and = and i64 %9, 65535, !dbg !1242
  store i64 %and, ptr %port, align 8, !dbg !1242
  %10 = load i64, ptr %port, align 8, !dbg !1242
  %conv4 = trunc i64 %10 to i16, !dbg !1242
  %11 = load ptr, ptr %src.addr, align 8, !dbg !1242
  %12 = load i64, ptr %count.addr, align 8, !dbg !1242
  call void @outsb(i16 noundef zeroext %conv4, ptr noundef %11, i64 noundef %12) #8, !dbg !1242
  br label %if.end, !dbg !1242

if.else5:                                         ; preds = %if.else
  %13 = load i64, ptr %port, align 8, !dbg !1240
  call void @bad_io_access(i64 noundef %13, ptr noundef @.str.21) #8, !dbg !1240
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !1234
  br label %do.end, !dbg !1235

do.end:                                           ; preds = %if.end6
  ret void, !dbg !1244
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmio_outsb(ptr noundef %addr, ptr noundef %src, i32 noundef %count) #3 align 16 !dbg !1245 {
entry:
  %addr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1251, metadata !DIExpression()), !dbg !1254
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1252, metadata !DIExpression()), !dbg !1255
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1253, metadata !DIExpression()), !dbg !1256
  br label %while.cond, !dbg !1257

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %count.addr, align 4, !dbg !1258
  %dec = add i32 %0, -1, !dbg !1258
  store i32 %dec, ptr %count.addr, align 4, !dbg !1258
  %cmp = icmp sge i32 %dec, 0, !dbg !1259
  br i1 %cmp, label %while.body, label %while.end, !dbg !1257

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1260
  %2 = load i8, ptr %1, align 1, !dbg !1262
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1263
  call void @__writeb(i8 noundef zeroext %2, ptr noundef %3) #8, !dbg !1264
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1265
  %incdec.ptr = getelementptr i8, ptr %4, i32 1, !dbg !1265
  store ptr %incdec.ptr, ptr %src.addr, align 8, !dbg !1265
  br label %while.cond, !dbg !1257, !llvm.loop !1266

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1268
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @outsb(i16 noundef zeroext %port, ptr noundef %addr, i64 noundef %count) #3 align 16 !dbg !1269 {
entry:
  %port.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !1273, metadata !DIExpression()), !dbg !1279
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1274, metadata !DIExpression()), !dbg !1279
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1275, metadata !DIExpression()), !dbg !1279
  %call = call zeroext i1 @cc_platform_has(i32 noundef 4) #8, !dbg !1280
  br i1 %call, label %if.then, label %if.else, !dbg !1279

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #7, !dbg !1281
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1276, metadata !DIExpression()), !dbg !1281
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1281
  store ptr %0, ptr %value, align 8, !dbg !1281
  br label %while.cond, !dbg !1281

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i64, ptr %count.addr, align 8, !dbg !1281
  %tobool = icmp ne i64 %1, 0, !dbg !1281
  br i1 %tobool, label %while.body, label %while.end, !dbg !1281

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %value, align 8, !dbg !1282
  %3 = load i8, ptr %2, align 1, !dbg !1282
  %4 = load i16, ptr %port.addr, align 2, !dbg !1282
  call void @__outb(i8 noundef zeroext %3, i16 noundef zeroext %4) #8, !dbg !1282
  %5 = load ptr, ptr %value, align 8, !dbg !1282
  %incdec.ptr = getelementptr i8, ptr %5, i32 1, !dbg !1282
  store ptr %incdec.ptr, ptr %value, align 8, !dbg !1282
  %6 = load i64, ptr %count.addr, align 8, !dbg !1282
  %dec = add i64 %6, -1, !dbg !1282
  store i64 %dec, ptr %count.addr, align 8, !dbg !1282
  br label %while.cond, !dbg !1281, !llvm.loop !1284

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #7, !dbg !1280
  br label %if.end, !dbg !1281

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !1285
  %8 = load i64, ptr %count.addr, align 8, !dbg !1285
  %9 = load i16, ptr %port.addr, align 2, !dbg !1285
  %10 = call { ptr, i64 } asm sideeffect "rep; outsb", "={si},={cx},{dx},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %9, ptr %7, i64 %8) #7, !dbg !1285, !srcloc !1287
  %asmresult = extractvalue { ptr, i64 } %10, 0, !dbg !1285
  %asmresult1 = extractvalue { ptr, i64 } %10, 1, !dbg !1285
  store ptr %asmresult, ptr %addr.addr, align 8, !dbg !1285
  store i64 %asmresult1, ptr %count.addr, align 8, !dbg !1285
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void, !dbg !1279
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iowrite16_rep(ptr noundef %addr, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !1288 {
entry:
  %addr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %port = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1290, metadata !DIExpression()), !dbg !1295
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1291, metadata !DIExpression()), !dbg !1296
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1292, metadata !DIExpression()), !dbg !1297
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1298
  %1 = load i64, ptr %count.addr, align 8, !dbg !1299
  %mul = mul i64 %1, 2, !dbg !1300
  call void @kmsan_check_memory(ptr noundef %0, i64 noundef %mul) #8, !dbg !1301
  br label %do.body, !dbg !1302

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !1303
  call void @llvm.dbg.declare(metadata ptr %port, metadata !1293, metadata !DIExpression()), !dbg !1303
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1303
  %3 = ptrtoint ptr %2 to i64, !dbg !1303
  store i64 %3, ptr %port, align 8, !dbg !1303
  %4 = load i64, ptr %port, align 8, !dbg !1304
  %cmp = icmp uge i64 %4, 262144, !dbg !1304
  br i1 %cmp, label %if.then, label %if.else, !dbg !1303

if.then:                                          ; preds = %do.body
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1306
  %6 = load ptr, ptr %src.addr, align 8, !dbg !1306
  %7 = load i64, ptr %count.addr, align 8, !dbg !1306
  %conv = trunc i64 %7 to i32, !dbg !1306
  call void @mmio_outsw(ptr noundef %5, ptr noundef %6, i32 noundef %conv) #8, !dbg !1306
  br label %if.end6, !dbg !1306

if.else:                                          ; preds = %do.body
  %8 = load i64, ptr %port, align 8, !dbg !1308
  %cmp1 = icmp ugt i64 %8, 65536, !dbg !1308
  br i1 %cmp1, label %if.then3, label %if.else5, !dbg !1304

if.then3:                                         ; preds = %if.else
  %9 = load i64, ptr %port, align 8, !dbg !1310
  %and = and i64 %9, 65535, !dbg !1310
  store i64 %and, ptr %port, align 8, !dbg !1310
  %10 = load i64, ptr %port, align 8, !dbg !1310
  %conv4 = trunc i64 %10 to i16, !dbg !1310
  %11 = load ptr, ptr %src.addr, align 8, !dbg !1310
  %12 = load i64, ptr %count.addr, align 8, !dbg !1310
  call void @outsw(i16 noundef zeroext %conv4, ptr noundef %11, i64 noundef %12) #8, !dbg !1310
  br label %if.end, !dbg !1310

if.else5:                                         ; preds = %if.else
  %13 = load i64, ptr %port, align 8, !dbg !1308
  call void @bad_io_access(i64 noundef %13, ptr noundef @.str.22) #8, !dbg !1308
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !1302
  br label %do.end, !dbg !1303

do.end:                                           ; preds = %if.end6
  ret void, !dbg !1312
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmio_outsw(ptr noundef %addr, ptr noundef %src, i32 noundef %count) #3 align 16 !dbg !1313 {
entry:
  %addr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1319, metadata !DIExpression()), !dbg !1322
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1320, metadata !DIExpression()), !dbg !1323
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1321, metadata !DIExpression()), !dbg !1324
  br label %while.cond, !dbg !1325

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %count.addr, align 4, !dbg !1326
  %dec = add i32 %0, -1, !dbg !1326
  store i32 %dec, ptr %count.addr, align 4, !dbg !1326
  %cmp = icmp sge i32 %dec, 0, !dbg !1327
  br i1 %cmp, label %while.body, label %while.end, !dbg !1325

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1328
  %2 = load i16, ptr %1, align 2, !dbg !1330
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1331
  call void @__writew(i16 noundef zeroext %2, ptr noundef %3) #8, !dbg !1332
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1333
  %incdec.ptr = getelementptr i16, ptr %4, i32 1, !dbg !1333
  store ptr %incdec.ptr, ptr %src.addr, align 8, !dbg !1333
  br label %while.cond, !dbg !1325, !llvm.loop !1334

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1336
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @outsw(i16 noundef zeroext %port, ptr noundef %addr, i64 noundef %count) #3 align 16 !dbg !1337 {
entry:
  %port.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !1339, metadata !DIExpression()), !dbg !1345
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1340, metadata !DIExpression()), !dbg !1345
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1341, metadata !DIExpression()), !dbg !1345
  %call = call zeroext i1 @cc_platform_has(i32 noundef 4) #8, !dbg !1346
  br i1 %call, label %if.then, label %if.else, !dbg !1345

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #7, !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1342, metadata !DIExpression()), !dbg !1347
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1347
  store ptr %0, ptr %value, align 8, !dbg !1347
  br label %while.cond, !dbg !1347

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i64, ptr %count.addr, align 8, !dbg !1347
  %tobool = icmp ne i64 %1, 0, !dbg !1347
  br i1 %tobool, label %while.body, label %while.end, !dbg !1347

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %value, align 8, !dbg !1348
  %3 = load i16, ptr %2, align 2, !dbg !1348
  %4 = load i16, ptr %port.addr, align 2, !dbg !1348
  call void @__outw(i16 noundef zeroext %3, i16 noundef zeroext %4) #8, !dbg !1348
  %5 = load ptr, ptr %value, align 8, !dbg !1348
  %incdec.ptr = getelementptr i16, ptr %5, i32 1, !dbg !1348
  store ptr %incdec.ptr, ptr %value, align 8, !dbg !1348
  %6 = load i64, ptr %count.addr, align 8, !dbg !1348
  %dec = add i64 %6, -1, !dbg !1348
  store i64 %dec, ptr %count.addr, align 8, !dbg !1348
  br label %while.cond, !dbg !1347, !llvm.loop !1350

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #7, !dbg !1346
  br label %if.end, !dbg !1347

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !1351
  %8 = load i64, ptr %count.addr, align 8, !dbg !1351
  %9 = load i16, ptr %port.addr, align 2, !dbg !1351
  %10 = call { ptr, i64 } asm sideeffect "rep; outsw", "={si},={cx},{dx},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %9, ptr %7, i64 %8) #7, !dbg !1351, !srcloc !1353
  %asmresult = extractvalue { ptr, i64 } %10, 0, !dbg !1351
  %asmresult1 = extractvalue { ptr, i64 } %10, 1, !dbg !1351
  store ptr %asmresult, ptr %addr.addr, align 8, !dbg !1351
  store i64 %asmresult1, ptr %count.addr, align 8, !dbg !1351
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void, !dbg !1345
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @iowrite32_rep(ptr noundef %addr, ptr noundef %src, i64 noundef %count) #0 align 16 !dbg !1354 {
entry:
  %addr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %port = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1356, metadata !DIExpression()), !dbg !1361
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1357, metadata !DIExpression()), !dbg !1362
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1358, metadata !DIExpression()), !dbg !1363
  %0 = load ptr, ptr %src.addr, align 8, !dbg !1364
  %1 = load i64, ptr %count.addr, align 8, !dbg !1365
  %mul = mul i64 %1, 4, !dbg !1366
  call void @kmsan_check_memory(ptr noundef %0, i64 noundef %mul) #8, !dbg !1367
  br label %do.body, !dbg !1368

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !1369
  call void @llvm.dbg.declare(metadata ptr %port, metadata !1359, metadata !DIExpression()), !dbg !1369
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !1369
  %3 = ptrtoint ptr %2 to i64, !dbg !1369
  store i64 %3, ptr %port, align 8, !dbg !1369
  %4 = load i64, ptr %port, align 8, !dbg !1370
  %cmp = icmp uge i64 %4, 262144, !dbg !1370
  br i1 %cmp, label %if.then, label %if.else, !dbg !1369

if.then:                                          ; preds = %do.body
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1372
  %6 = load ptr, ptr %src.addr, align 8, !dbg !1372
  %7 = load i64, ptr %count.addr, align 8, !dbg !1372
  %conv = trunc i64 %7 to i32, !dbg !1372
  call void @mmio_outsl(ptr noundef %5, ptr noundef %6, i32 noundef %conv) #8, !dbg !1372
  br label %if.end6, !dbg !1372

if.else:                                          ; preds = %do.body
  %8 = load i64, ptr %port, align 8, !dbg !1374
  %cmp1 = icmp ugt i64 %8, 65536, !dbg !1374
  br i1 %cmp1, label %if.then3, label %if.else5, !dbg !1370

if.then3:                                         ; preds = %if.else
  %9 = load i64, ptr %port, align 8, !dbg !1376
  %and = and i64 %9, 65535, !dbg !1376
  store i64 %and, ptr %port, align 8, !dbg !1376
  %10 = load i64, ptr %port, align 8, !dbg !1376
  %conv4 = trunc i64 %10 to i16, !dbg !1376
  %11 = load ptr, ptr %src.addr, align 8, !dbg !1376
  %12 = load i64, ptr %count.addr, align 8, !dbg !1376
  call void @outsl(i16 noundef zeroext %conv4, ptr noundef %11, i64 noundef %12) #8, !dbg !1376
  br label %if.end, !dbg !1376

if.else5:                                         ; preds = %if.else
  %13 = load i64, ptr %port, align 8, !dbg !1374
  call void @bad_io_access(i64 noundef %13, ptr noundef @.str.23) #8, !dbg !1374
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then3
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !1368
  br label %do.end, !dbg !1369

do.end:                                           ; preds = %if.end6
  ret void, !dbg !1378
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mmio_outsl(ptr noundef %addr, ptr noundef %src, i32 noundef %count) #3 align 16 !dbg !1379 {
entry:
  %addr.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1385, metadata !DIExpression()), !dbg !1388
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !1386, metadata !DIExpression()), !dbg !1389
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1387, metadata !DIExpression()), !dbg !1390
  br label %while.cond, !dbg !1391

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %count.addr, align 4, !dbg !1392
  %dec = add i32 %0, -1, !dbg !1392
  store i32 %dec, ptr %count.addr, align 4, !dbg !1392
  %cmp = icmp sge i32 %dec, 0, !dbg !1393
  br i1 %cmp, label %while.body, label %while.end, !dbg !1391

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %src.addr, align 8, !dbg !1394
  %2 = load i32, ptr %1, align 4, !dbg !1396
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1397
  call void @__writel(i32 noundef %2, ptr noundef %3) #8, !dbg !1398
  %4 = load ptr, ptr %src.addr, align 8, !dbg !1399
  %incdec.ptr = getelementptr i32, ptr %4, i32 1, !dbg !1399
  store ptr %incdec.ptr, ptr %src.addr, align 8, !dbg !1399
  br label %while.cond, !dbg !1391, !llvm.loop !1400

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1402
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @outsl(i16 noundef zeroext %port, ptr noundef %addr, i64 noundef %count) #3 align 16 !dbg !1403 {
entry:
  %port.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %value = alloca ptr, align 8
  store i16 %port, ptr %port.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !1405, metadata !DIExpression()), !dbg !1411
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1406, metadata !DIExpression()), !dbg !1411
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1407, metadata !DIExpression()), !dbg !1411
  %call = call zeroext i1 @cc_platform_has(i32 noundef 4) #8, !dbg !1412
  br i1 %call, label %if.then, label %if.else, !dbg !1411

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #7, !dbg !1413
  call void @llvm.dbg.declare(metadata ptr %value, metadata !1408, metadata !DIExpression()), !dbg !1413
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1413
  store ptr %0, ptr %value, align 8, !dbg !1413
  br label %while.cond, !dbg !1413

while.cond:                                       ; preds = %while.body, %if.then
  %1 = load i64, ptr %count.addr, align 8, !dbg !1413
  %tobool = icmp ne i64 %1, 0, !dbg !1413
  br i1 %tobool, label %while.body, label %while.end, !dbg !1413

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %value, align 8, !dbg !1414
  %3 = load i32, ptr %2, align 4, !dbg !1414
  %4 = load i16, ptr %port.addr, align 2, !dbg !1414
  call void @__outl(i32 noundef %3, i16 noundef zeroext %4) #8, !dbg !1414
  %5 = load ptr, ptr %value, align 8, !dbg !1414
  %incdec.ptr = getelementptr i32, ptr %5, i32 1, !dbg !1414
  store ptr %incdec.ptr, ptr %value, align 8, !dbg !1414
  %6 = load i64, ptr %count.addr, align 8, !dbg !1414
  %dec = add i64 %6, -1, !dbg !1414
  store i64 %dec, ptr %count.addr, align 8, !dbg !1414
  br label %while.cond, !dbg !1413, !llvm.loop !1416

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #7, !dbg !1412
  br label %if.end, !dbg !1413

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !1417
  %8 = load i64, ptr %count.addr, align 8, !dbg !1417
  %9 = load i16, ptr %port.addr, align 2, !dbg !1417
  %10 = call { ptr, i64 } asm sideeffect "rep; outsl", "={si},={cx},{dx},0,1,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %9, ptr %7, i64 %8) #7, !dbg !1417, !srcloc !1419
  %asmresult = extractvalue { ptr, i64 } %10, 0, !dbg !1417
  %asmresult1 = extractvalue { ptr, i64 } %10, 1, !dbg !1417
  store ptr %asmresult, ptr %addr.addr, align 8, !dbg !1417
  store i64 %asmresult1, ptr %count.addr, align 8, !dbg !1417
  br label %if.end

if.end:                                           ; preds = %if.else, %while.end
  ret void, !dbg !1411
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @ioport_map(i64 noundef %port, i32 noundef %nr) #0 align 16 !dbg !1420 {
entry:
  %retval = alloca ptr, align 8
  %port.addr = alloca i64, align 8
  %nr.addr = alloca i32, align 4
  store i64 %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !1424, metadata !DIExpression()), !dbg !1426
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1425, metadata !DIExpression()), !dbg !1427
  %0 = load i64, ptr %port.addr, align 8, !dbg !1428
  %cmp = icmp ugt i64 %0, 65535, !dbg !1430
  br i1 %cmp, label %if.then, label %if.end, !dbg !1431

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1432
  br label %return, !dbg !1432

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %port.addr, align 8, !dbg !1433
  %add = add i64 %1, 65536, !dbg !1434
  %2 = inttoptr i64 %add to ptr, !dbg !1435
  store ptr %2, ptr %retval, align 8, !dbg !1436
  br label %return, !dbg !1436

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 8, !dbg !1437
  ret ptr %3, !dbg !1437
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ioport_unmap(ptr noundef %addr) #0 align 16 !dbg !1438 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1442, metadata !DIExpression()), !dbg !1443
  ret void, !dbg !1444
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pci_iounmap(ptr noundef %dev, ptr noundef %addr) #0 align 16 !dbg !1445 {
entry:
  %dev.addr = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %port = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6127, metadata !DIExpression()), !dbg !6131
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6128, metadata !DIExpression()), !dbg !6132
  br label %do.body, !dbg !6133

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #7, !dbg !6134
  call void @llvm.dbg.declare(metadata ptr %port, metadata !6129, metadata !DIExpression()), !dbg !6134
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6134
  %1 = ptrtoint ptr %0 to i64, !dbg !6134
  store i64 %1, ptr %port, align 8, !dbg !6134
  %2 = load i64, ptr %port, align 8, !dbg !6135
  %cmp = icmp uge i64 %2, 262144, !dbg !6135
  br i1 %cmp, label %if.then, label %if.else, !dbg !6134

if.then:                                          ; preds = %do.body
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6137
  call void @iounmap(ptr noundef %3) #8, !dbg !6137
  br label %if.end4, !dbg !6137

if.else:                                          ; preds = %do.body
  %4 = load i64, ptr %port, align 8, !dbg !6139
  %cmp1 = icmp ugt i64 %4, 65536, !dbg !6139
  br i1 %cmp1, label %if.then2, label %if.else3, !dbg !6135

if.then2:                                         ; preds = %if.else
  %5 = load i64, ptr %port, align 8, !dbg !6141
  %and = and i64 %5, 65535, !dbg !6141
  store i64 %and, ptr %port, align 8, !dbg !6141
  br label %if.end, !dbg !6141

if.else3:                                         ; preds = %if.else
  %6 = load i64, ptr %port, align 8, !dbg !6139
  call void @bad_io_access(i64 noundef %6, ptr noundef @.str.24) #8, !dbg !6139
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #7, !dbg !6133
  br label %do.end, !dbg !6134

do.end:                                           ; preds = %if.end4
  ret void, !dbg !6143
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6144 dso_local void @iounmap(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6147 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__readb(ptr noundef %addr) #3 align 16 !dbg !6150 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6152, metadata !DIExpression()), !dbg !6154
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #7, !dbg !6154
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6153, metadata !DIExpression()), !dbg !6154
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6154
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0) #7, !dbg !6154, !srcloc !6155
  store i8 %1, ptr %ret, align 1, !dbg !6154
  %2 = load i8, ptr %ret, align 1, !dbg !6154
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #7, !dbg !6154
  ret i8 %2, !dbg !6154
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cc_platform_has(i32 noundef %attr) #3 align 16 !dbg !6156 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6160, metadata !DIExpression()), !dbg !6161
  ret i1 false, !dbg !6162
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @__readw(ptr noundef %addr) #3 align 16 !dbg !6163 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i16, align 2
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6165, metadata !DIExpression()), !dbg !6167
  call void @llvm.lifetime.start.p0(i64 2, ptr %ret) #7, !dbg !6167
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6166, metadata !DIExpression()), !dbg !6167
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6167
  %1 = call i16 asm sideeffect "movw $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %0) #7, !dbg !6167, !srcloc !6168
  store i16 %1, ptr %ret, align 2, !dbg !6167
  %2 = load i16, ptr %ret, align 2, !dbg !6167
  call void @llvm.lifetime.end.p0(i64 2, ptr %ret) #7, !dbg !6167
  ret i16 %2, !dbg !6167
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__readl(ptr noundef %addr) #3 align 16 !dbg !6169 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6171, metadata !DIExpression()), !dbg !6173
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !6173
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6172, metadata !DIExpression()), !dbg !6173
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6173
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #7, !dbg !6173, !srcloc !6174
  store i32 %1, ptr %ret, align 4, !dbg !6173
  %2 = load i32, ptr %ret, align 4, !dbg !6173
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !6173
  ret i32 %2, !dbg !6173
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__writeb(i8 noundef zeroext %val, ptr noundef %addr) #3 align 16 !dbg !6175 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca ptr, align 8
  store i8 %val, ptr %val.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6177, metadata !DIExpression()), !dbg !6179
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6178, metadata !DIExpression()), !dbg !6179
  %0 = load i8, ptr %val.addr, align 1, !dbg !6179
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6179
  call void asm sideeffect "movb $0,$1", "q,*m,~{dirflag},~{fpsr},~{flags}"(i8 %0, ptr elementtype(i8) %1) #7, !dbg !6179, !srcloc !6180
  ret void, !dbg !6179
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__writew(i16 noundef zeroext %val, ptr noundef %addr) #3 align 16 !dbg !6181 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca ptr, align 8
  store i16 %val, ptr %val.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6183, metadata !DIExpression()), !dbg !6185
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6184, metadata !DIExpression()), !dbg !6185
  %0 = load i16, ptr %val.addr, align 2, !dbg !6185
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6185
  call void asm sideeffect "movw $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i16 %0, ptr elementtype(i16) %1) #7, !dbg !6185, !srcloc !6186
  ret void, !dbg !6185
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__writel(i32 noundef %val, ptr noundef %addr) #3 align 16 !dbg !6187 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6189, metadata !DIExpression()), !dbg !6191
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6190, metadata !DIExpression()), !dbg !6191
  %0 = load i32, ptr %val.addr, align 4, !dbg !6191
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !6191
  call void asm sideeffect "movl $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #7, !dbg !6191, !srcloc !6192
  ret void, !dbg !6191
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!20}
!llvm.module.flags = !{!348, !349, !350, !351, !352, !353, !354, !355}
!llvm.ident = !{!356}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/iomap.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cf75afe6dfd33ac01eb19adbd082fc25")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 17)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !11, isLocal: true, isDefinition: true)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !12)
!12 = !{!13}
!13 = !DISubrange(count: 26)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !3, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !11, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioread8292", scope: !20, file: !2, line: 108, type: !179, isLocal: true, isDefinition: true)
!20 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.iomap.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/iomap\22 -D KBUILD_BASENAME=\22iomap\22 -D KBUILD_MODNAME=\22iomap\22 -D __KBUILD_MODNAME=kmod_iomap -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/iomap.ll lib/iomap.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !21, retainedTypes: !173, globals: !200, splitDebugInlining: false, nameTableKind: None)
!21 = !{!22, !30, !35, !41, !46, !54, !70, !78, !84, !91, !98, !104, !110, !117, !125, !133, !142, !147, !152, !158, !168}
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !23, line: 312, baseType: !24, size: 32, elements: !25)
!23 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!27 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!28 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!29 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !31, line: 2052, baseType: !24, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!34 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !36, line: 54, baseType: !24, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "USRQUOTA", value: 0)
!39 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!40 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !42, line: 65, baseType: !24, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!43 = !{!44, !45}
!44 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!45 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !47, line: 9, baseType: !24, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!48 = !{!49, !50, !51, !52, !53}
!49 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!50 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!51 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!52 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!53 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !55, line: 1325, baseType: !24, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!57 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!58 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!59 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!60 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!61 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!62 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!63 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!64 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!65 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!66 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!67 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!68 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!69 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !71, line: 68, baseType: !24, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!72 = !{!73, !74, !75, !76, !77}
!73 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!74 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!75 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!76 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!77 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !79, line: 16, baseType: !24, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "TT_NONE", value: 0)
!82 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!83 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !85, line: 51, baseType: !24, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!86 = !{!87, !88, !89, !90}
!87 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!88 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!89 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!90 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !92, line: 15, baseType: !24, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!93 = !{!94, !95, !96, !97}
!94 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!95 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!96 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!97 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !99, line: 26, baseType: !24, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!100 = !{!101, !102, !103}
!101 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!102 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!103 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !105, line: 45, baseType: !24, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!106 = !{!107, !108, !109}
!107 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!108 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!109 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !111, line: 487, baseType: !24, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!114 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!115 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!116 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !118, line: 620, baseType: !24, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!121 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!122 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!123 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!124 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !118, line: 597, baseType: !126, size: 32, elements: !127)
!126 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!127 = !{!128, !129, !130, !131, !132}
!128 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!129 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!130 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!131 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!132 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !111, line: 547, baseType: !24, size: 32, elements: !134)
!134 = !{!135, !136, !137, !138, !139, !140, !141}
!135 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!136 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!137 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!138 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!139 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!140 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!141 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !111, line: 564, baseType: !24, size: 32, elements: !143)
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!145 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!146 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !111, line: 577, baseType: !24, size: 32, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!150 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!151 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !111, line: 503, baseType: !24, size: 32, elements: !153)
!153 = !{!154, !155, !156, !157}
!154 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!155 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!156 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!157 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cc_attr", file: !159, line: 22, baseType: !24, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/cc_platform.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec881fca7f8cde0abb6c64a9f159f14b")
!160 = !{!161, !162, !163, !164, !165, !166, !167}
!161 = !DIEnumerator(name: "CC_ATTR_MEM_ENCRYPT", value: 0)
!162 = !DIEnumerator(name: "CC_ATTR_HOST_MEM_ENCRYPT", value: 1)
!163 = !DIEnumerator(name: "CC_ATTR_GUEST_MEM_ENCRYPT", value: 2)
!164 = !DIEnumerator(name: "CC_ATTR_GUEST_STATE_ENCRYPT", value: 3)
!165 = !DIEnumerator(name: "CC_ATTR_GUEST_UNROLL_STRING_IO", value: 4)
!166 = !DIEnumerator(name: "CC_ATTR_GUEST_SEV_SNP", value: 5)
!167 = !DIEnumerator(name: "CC_ATTR_HOTPLUG_DISABLED", value: 6)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !169, line: 10, baseType: !24, size: 32, elements: !170)
!169 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!170 = !{!171, !172}
!171 = !DIEnumerator(name: "false", value: 0)
!172 = !DIEnumerator(name: "true", value: 1)
!173 = !{!174, !175, !178, !179, !180, !182, !185, !187, !189, !193, !196, !198}
!174 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !176, line: 24, baseType: !177)
!176 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!177 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !176, line: 27, baseType: !24)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !176, line: 31, baseType: !181)
!181 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !184)
!184 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !177)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !192, line: 23, baseType: !180)
!192 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !192, line: 17, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !176, line: 21, baseType: !184)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !192, line: 19, baseType: !175)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !192, line: 21, baseType: !178)
!200 = !{!0, !7, !9, !14, !16, !18, !201, !203, !205, !207, !209, !214, !216, !221, !223, !225, !227, !229, !231, !236, !238, !243, !245, !247, !249, !251, !253, !255, !257, !262, !264, !269, !271, !273, !275, !277, !279, !284, !286, !288, !290, !292, !294, !296, !298, !303, !305, !307, !309, !311, !313, !318, !320, !338, !343}
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioread16293", scope: !20, file: !2, line: 109, type: !179, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioread16be294", scope: !20, file: !2, line: 110, type: !179, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioread32295", scope: !20, file: !2, line: 111, type: !179, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioread32be296", scope: !20, file: !2, line: 112, type: !179, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !211, isLocal: true, isDefinition: true)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 30)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !211, isLocal: true, isDefinition: true)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !218, isLocal: true, isDefinition: true)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 32)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !218, isLocal: true, isDefinition: true)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioread64_lo_hi297", scope: !20, file: !2, line: 185, type: !179, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioread64_hi_lo298", scope: !20, file: !2, line: 186, type: !179, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioread64be_lo_hi299", scope: !20, file: !2, line: 187, type: !179, isLocal: true, isDefinition: true)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioread64be_hi_lo300", scope: !20, file: !2, line: 188, type: !179, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 15)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !233, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !2, line: 219, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 24)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !2, line: 225, type: !233, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !2, line: 231, type: !240, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iowrite8301", scope: !20, file: !2, line: 233, type: !179, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iowrite16302", scope: !20, file: !2, line: 234, type: !179, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iowrite16be303", scope: !20, file: !2, line: 235, type: !179, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iowrite32304", scope: !20, file: !2, line: 236, type: !179, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iowrite32be305", scope: !20, file: !2, line: 237, type: !179, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !2, line: 268, type: !259, isLocal: true, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 29)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !2, line: 276, type: !259, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !2, line: 284, type: !266, isLocal: true, isDefinition: true)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 31)
!269 = !DIGlobalVariableExpression(var: !270, expr: !DIExpression())
!270 = distinct !DIGlobalVariable(scope: null, file: !2, line: 292, type: !266, isLocal: true, isDefinition: true)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iowrite64_lo_hi306", scope: !20, file: !2, line: 296, type: !179, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iowrite64_hi_lo307", scope: !20, file: !2, line: 297, type: !179, isLocal: true, isDefinition: true)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iowrite64be_lo_hi308", scope: !20, file: !2, line: 298, type: !179, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iowrite64be_hi_lo309", scope: !20, file: !2, line: 299, type: !179, isLocal: true, isDefinition: true)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(scope: null, file: !2, line: 362, type: !281, isLocal: true, isDefinition: true)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 21)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !2, line: 368, type: !281, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !2, line: 374, type: !281, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioread8_rep310", scope: !20, file: !2, line: 378, type: !179, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioread16_rep311", scope: !20, file: !2, line: 379, type: !179, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioread32_rep312", scope: !20, file: !2, line: 380, type: !179, isLocal: true, isDefinition: true)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !2, line: 386, type: !240, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !2, line: 392, type: !240, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !2, line: 398, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 23)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iowrite8_rep313", scope: !20, file: !2, line: 400, type: !179, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iowrite16_rep314", scope: !20, file: !2, line: 401, type: !179, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_iowrite32_rep315", scope: !20, file: !2, line: 402, type: !179, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioport_map316", scope: !20, file: !2, line: 417, type: !179, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ioport_unmap317", scope: !20, file: !2, line: 418, type: !179, isLocal: true, isDefinition: true)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !2, line: 426, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 1)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_iounmap318", scope: !20, file: !2, line: 428, type: !179, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "count", scope: !322, file: !2, line: 42, type: !126, isLocal: true, isDefinition: true)
!322 = distinct !DISubprogram(name: "bad_io_access", scope: !2, file: !2, line: 40, type: !323, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !327)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !174, !325}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!327 = !{!328, !329, !330, !334}
!328 = !DILocalVariable(name: "port", arg: 1, scope: !322, file: !2, line: 40, type: !174)
!329 = !DILocalVariable(name: "access", arg: 2, scope: !322, file: !2, line: 40, type: !325)
!330 = !DILocalVariable(name: "__ret_warn_on", scope: !331, file: !2, line: 45, type: !126)
!331 = distinct !DILexicalBlock(scope: !332, file: !2, line: 45, column: 3)
!332 = distinct !DILexicalBlock(scope: !333, file: !2, line: 43, column: 13)
!333 = distinct !DILexicalBlock(scope: !322, file: !2, line: 43, column: 6)
!334 = !DILocalVariable(name: "__flags", scope: !335, file: !2, line: 45, type: !126)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 45, column: 3)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 45, column: 3)
!337 = distinct !DILexicalBlock(scope: !331, file: !2, line: 45, column: 3)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !340, isLocal: true, isDefinition: true)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 35)
!343 = !DIGlobalVariableExpression(var: !344, expr: !DIExpression())
!344 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !345, isLocal: true, isDefinition: true)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !346)
!346 = !{!347}
!347 = !DISubrange(count: 12)
!348 = !{i32 7, !"Dwarf Version", i32 5}
!349 = !{i32 2, !"Debug Info Version", i32 3}
!350 = !{i32 1, !"wchar_size", i32 2}
!351 = !{i32 8, !"cf-protection-branch", i32 1}
!352 = !{i32 4, !"function_return_thunk_extern", i32 1}
!353 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!354 = !{i32 1, !"Code Model", i32 2}
!355 = !{i32 1, !"override-stack-alignment", i32 8}
!356 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!357 = distinct !DISubprogram(name: "ioread8", scope: !2, file: !2, line: 79, type: !358, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !362)
!358 = !DISubroutineType(types: !359)
!359 = !{!24, !360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!362 = !{!363, !364}
!363 = !DILocalVariable(name: "addr", arg: 1, scope: !357, file: !2, line: 79, type: !360)
!364 = !DILocalVariable(name: "port", scope: !365, file: !2, line: 81, type: !174)
!365 = distinct !DILexicalBlock(scope: !357, file: !2, line: 81, column: 2)
!366 = !DILocation(line: 79, column: 42, scope: !357)
!367 = !DILocation(line: 81, column: 2, scope: !357)
!368 = !DILocation(line: 81, column: 2, scope: !365)
!369 = !DILocation(line: 81, column: 2, scope: !370)
!370 = distinct !DILexicalBlock(scope: !365, file: !2, line: 81, column: 2)
!371 = !DILocation(line: 81, column: 2, scope: !372)
!372 = distinct !DILexicalBlock(scope: !370, file: !2, line: 81, column: 2)
!373 = !DILocation(line: 81, column: 2, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !2, line: 81, column: 2)
!375 = !DILocation(line: 81, column: 2, scope: !376)
!376 = distinct !DILexicalBlock(scope: !374, file: !2, line: 81, column: 2)
!377 = !DILocation(line: 82, column: 2, scope: !357)
!378 = !DILocation(line: 83, column: 1, scope: !357)
!379 = distinct !DISubprogram(name: "readb", scope: !380, file: !380, line: 56, type: !381, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !386)
!380 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!381 = !DISubroutineType(types: !382)
!382 = !{!184, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!386 = !{!387, !388}
!387 = !DILocalVariable(name: "addr", arg: 1, scope: !379, file: !380, line: 56, type: !383)
!388 = !DILocalVariable(name: "ret", scope: !379, file: !380, line: 56, type: !184)
!389 = !DILocation(line: 56, column: 1, scope: !379)
!390 = !{i64 2152783776}
!391 = distinct !DISubprogram(name: "__inb", scope: !392, file: !392, line: 22, type: !393, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !395)
!392 = !DIFile(filename: "./arch/x86/include/asm/shared/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5fb8fb51b7511acb38d36f1b825226")
!393 = !DISubroutineType(types: !394)
!394 = !{!194, !197}
!395 = !{!396, !397}
!396 = !DILocalVariable(name: "port", arg: 1, scope: !391, file: !392, line: 22, type: !197)
!397 = !DILocalVariable(name: "value", scope: !391, file: !392, line: 22, type: !194)
!398 = !DILocation(line: 22, column: 1, scope: !391)
!399 = !{i64 2152781449}
!400 = !DILocation(line: 40, column: 41, scope: !322)
!401 = !DILocation(line: 40, column: 59, scope: !322)
!402 = !DILocation(line: 43, column: 6, scope: !333)
!403 = !DILocation(line: 43, column: 6, scope: !322)
!404 = !DILocation(line: 44, column: 8, scope: !332)
!405 = !DILocation(line: 45, column: 3, scope: !331)
!406 = !DILocation(line: 45, column: 3, scope: !337)
!407 = !DILocation(line: 45, column: 3, scope: !336)
!408 = !DILocation(line: 45, column: 3, scope: !409)
!409 = distinct !DILexicalBlock(scope: !336, file: !2, line: 45, column: 3)
!410 = !DILocation(line: 45, column: 3, scope: !335)
!411 = !DILocation(line: 45, column: 3, scope: !412)
!412 = distinct !DILexicalBlock(scope: !335, file: !2, line: 45, column: 3)
!413 = !DILocation(line: 45, column: 3, scope: !414)
!414 = distinct !DILexicalBlock(scope: !335, file: !2, line: 45, column: 3)
!415 = !{i64 2155008070, i64 2155008099, i64 2155008145, i64 2155008203, i64 2155008257, i64 2155008311, i64 2155008366, i64 2155008397, i64 2155008705, i64 2155008711, i64 2155008758, i64 2155008781, i64 2155008807}
!416 = !DILocation(line: 45, column: 3, scope: !417)
!417 = distinct !DILexicalBlock(scope: !335, file: !2, line: 45, column: 3)
!418 = !DILocation(line: 45, column: 3, scope: !419)
!419 = distinct !DILexicalBlock(scope: !336, file: !2, line: 45, column: 3)
!420 = !DILocation(line: 45, column: 3, scope: !332)
!421 = !DILocation(line: 46, column: 2, scope: !332)
!422 = !DILocation(line: 47, column: 1, scope: !322)
!423 = distinct !DISubprogram(name: "ioread16", scope: !2, file: !2, line: 85, type: !358, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !424)
!424 = !{!425, !426}
!425 = !DILocalVariable(name: "addr", arg: 1, scope: !423, file: !2, line: 85, type: !360)
!426 = !DILocalVariable(name: "port", scope: !427, file: !2, line: 87, type: !174)
!427 = distinct !DILexicalBlock(scope: !423, file: !2, line: 87, column: 2)
!428 = !DILocation(line: 85, column: 43, scope: !423)
!429 = !DILocation(line: 87, column: 2, scope: !423)
!430 = !DILocation(line: 87, column: 2, scope: !427)
!431 = !DILocation(line: 87, column: 2, scope: !432)
!432 = distinct !DILexicalBlock(scope: !427, file: !2, line: 87, column: 2)
!433 = !DILocation(line: 87, column: 2, scope: !434)
!434 = distinct !DILexicalBlock(scope: !432, file: !2, line: 87, column: 2)
!435 = !DILocation(line: 87, column: 2, scope: !436)
!436 = distinct !DILexicalBlock(scope: !432, file: !2, line: 87, column: 2)
!437 = !DILocation(line: 87, column: 2, scope: !438)
!438 = distinct !DILexicalBlock(scope: !436, file: !2, line: 87, column: 2)
!439 = !DILocation(line: 88, column: 2, scope: !423)
!440 = !DILocation(line: 89, column: 1, scope: !423)
!441 = distinct !DISubprogram(name: "readw", scope: !380, file: !380, line: 57, type: !442, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !444)
!442 = !DISubroutineType(types: !443)
!443 = !{!177, !383}
!444 = !{!445, !446}
!445 = !DILocalVariable(name: "addr", arg: 1, scope: !441, file: !380, line: 57, type: !383)
!446 = !DILocalVariable(name: "ret", scope: !441, file: !380, line: 57, type: !177)
!447 = !DILocation(line: 57, column: 1, scope: !441)
!448 = !{i64 2152784190}
!449 = distinct !DISubprogram(name: "__inw", scope: !392, file: !392, line: 23, type: !450, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{!197, !197}
!452 = !{!453, !454}
!453 = !DILocalVariable(name: "port", arg: 1, scope: !449, file: !392, line: 23, type: !197)
!454 = !DILocalVariable(name: "value", scope: !449, file: !392, line: 23, type: !197)
!455 = !DILocation(line: 23, column: 1, scope: !449)
!456 = !{i64 2152782290}
!457 = distinct !DISubprogram(name: "ioread16be", scope: !2, file: !2, line: 91, type: !358, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !458)
!458 = !{!459, !460}
!459 = !DILocalVariable(name: "addr", arg: 1, scope: !457, file: !2, line: 91, type: !360)
!460 = !DILocalVariable(name: "port", scope: !461, file: !2, line: 93, type: !174)
!461 = distinct !DILexicalBlock(scope: !457, file: !2, line: 93, column: 2)
!462 = !DILocation(line: 91, column: 45, scope: !457)
!463 = !DILocation(line: 93, column: 2, scope: !457)
!464 = !DILocation(line: 93, column: 2, scope: !461)
!465 = !DILocation(line: 93, column: 2, scope: !466)
!466 = distinct !DILexicalBlock(scope: !461, file: !2, line: 93, column: 2)
!467 = !DILocation(line: 93, column: 2, scope: !468)
!468 = distinct !DILexicalBlock(scope: !466, file: !2, line: 93, column: 2)
!469 = !DILocation(line: 93, column: 2, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !2, line: 93, column: 2)
!471 = !DILocation(line: 93, column: 2, scope: !472)
!472 = distinct !DILexicalBlock(scope: !470, file: !2, line: 93, column: 2)
!473 = !DILocation(line: 94, column: 2, scope: !457)
!474 = !DILocation(line: 95, column: 1, scope: !457)
!475 = distinct !DISubprogram(name: "ioread32", scope: !2, file: !2, line: 97, type: !358, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !476)
!476 = !{!477, !478}
!477 = !DILocalVariable(name: "addr", arg: 1, scope: !475, file: !2, line: 97, type: !360)
!478 = !DILocalVariable(name: "port", scope: !479, file: !2, line: 99, type: !174)
!479 = distinct !DILexicalBlock(scope: !475, file: !2, line: 99, column: 2)
!480 = !DILocation(line: 97, column: 43, scope: !475)
!481 = !DILocation(line: 99, column: 2, scope: !475)
!482 = !DILocation(line: 99, column: 2, scope: !479)
!483 = !DILocation(line: 99, column: 2, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !2, line: 99, column: 2)
!485 = !DILocation(line: 99, column: 2, scope: !486)
!486 = distinct !DILexicalBlock(scope: !484, file: !2, line: 99, column: 2)
!487 = !DILocation(line: 99, column: 2, scope: !488)
!488 = distinct !DILexicalBlock(scope: !484, file: !2, line: 99, column: 2)
!489 = !DILocation(line: 99, column: 2, scope: !490)
!490 = distinct !DILexicalBlock(scope: !488, file: !2, line: 99, column: 2)
!491 = !DILocation(line: 100, column: 2, scope: !475)
!492 = !DILocation(line: 101, column: 1, scope: !475)
!493 = distinct !DISubprogram(name: "readl", scope: !380, file: !380, line: 58, type: !494, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{!24, !383}
!496 = !{!497, !498}
!497 = !DILocalVariable(name: "addr", arg: 1, scope: !493, file: !380, line: 58, type: !383)
!498 = !DILocalVariable(name: "ret", scope: !493, file: !380, line: 58, type: !24)
!499 = !DILocation(line: 58, column: 1, scope: !493)
!500 = !{i64 2152784607}
!501 = distinct !DISubprogram(name: "__inl", scope: !392, file: !392, line: 24, type: !502, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{!199, !197}
!504 = !{!505, !506}
!505 = !DILocalVariable(name: "port", arg: 1, scope: !501, file: !392, line: 24, type: !197)
!506 = !DILocalVariable(name: "value", scope: !501, file: !392, line: 24, type: !199)
!507 = !DILocation(line: 24, column: 1, scope: !501)
!508 = !{i64 2152783134}
!509 = distinct !DISubprogram(name: "ioread32be", scope: !2, file: !2, line: 103, type: !358, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !510)
!510 = !{!511, !512}
!511 = !DILocalVariable(name: "addr", arg: 1, scope: !509, file: !2, line: 103, type: !360)
!512 = !DILocalVariable(name: "port", scope: !513, file: !2, line: 105, type: !174)
!513 = distinct !DILexicalBlock(scope: !509, file: !2, line: 105, column: 2)
!514 = !DILocation(line: 103, column: 45, scope: !509)
!515 = !DILocation(line: 105, column: 2, scope: !509)
!516 = !DILocation(line: 105, column: 2, scope: !513)
!517 = !DILocation(line: 105, column: 2, scope: !518)
!518 = distinct !DILexicalBlock(scope: !513, file: !2, line: 105, column: 2)
!519 = !DILocation(line: 105, column: 2, scope: !520)
!520 = distinct !DILexicalBlock(scope: !518, file: !2, line: 105, column: 2)
!521 = !DILocation(line: 105, column: 2, scope: !522)
!522 = distinct !DILexicalBlock(scope: !518, file: !2, line: 105, column: 2)
!523 = !DILocation(line: 105, column: 2, scope: !524)
!524 = distinct !DILexicalBlock(scope: !522, file: !2, line: 105, column: 2)
!525 = !DILocation(line: 106, column: 2, scope: !509)
!526 = !DILocation(line: 107, column: 1, scope: !509)
!527 = distinct !DISubprogram(name: "ioread64_lo_hi", scope: !2, file: !2, line: 156, type: !528, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !530)
!528 = !DISubroutineType(types: !529)
!529 = !{!191, !360}
!530 = !{!531, !532}
!531 = !DILocalVariable(name: "addr", arg: 1, scope: !527, file: !2, line: 156, type: !360)
!532 = !DILocalVariable(name: "port", scope: !533, file: !2, line: 158, type: !174)
!533 = distinct !DILexicalBlock(scope: !527, file: !2, line: 158, column: 2)
!534 = !DILocation(line: 156, column: 40, scope: !527)
!535 = !DILocation(line: 158, column: 2, scope: !527)
!536 = !DILocation(line: 158, column: 2, scope: !533)
!537 = !DILocation(line: 158, column: 2, scope: !538)
!538 = distinct !DILexicalBlock(scope: !533, file: !2, line: 158, column: 2)
!539 = !DILocation(line: 158, column: 2, scope: !540)
!540 = distinct !DILexicalBlock(scope: !538, file: !2, line: 158, column: 2)
!541 = !DILocation(line: 158, column: 2, scope: !542)
!542 = distinct !DILexicalBlock(scope: !538, file: !2, line: 158, column: 2)
!543 = !DILocation(line: 158, column: 2, scope: !544)
!544 = distinct !DILexicalBlock(scope: !542, file: !2, line: 158, column: 2)
!545 = !DILocation(line: 159, column: 2, scope: !527)
!546 = !DILocation(line: 160, column: 1, scope: !527)
!547 = distinct !DISubprogram(name: "readq", scope: !380, file: !380, line: 94, type: !548, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !550)
!548 = !DISubroutineType(types: !549)
!549 = !{!191, !383}
!550 = !{!551, !552}
!551 = !DILocalVariable(name: "addr", arg: 1, scope: !547, file: !380, line: 94, type: !383)
!552 = !DILocalVariable(name: "ret", scope: !547, file: !380, line: 94, type: !191)
!553 = !DILocation(line: 94, column: 1, scope: !547)
!554 = !{i64 2152788516}
!555 = distinct !DISubprogram(name: "pio_read64_lo_hi", scope: !2, file: !2, line: 115, type: !556, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !558)
!556 = !DISubroutineType(types: !557)
!557 = !{!191, !174}
!558 = !{!559, !560, !561}
!559 = !DILocalVariable(name: "port", arg: 1, scope: !555, file: !2, line: 115, type: !174)
!560 = !DILocalVariable(name: "lo", scope: !555, file: !2, line: 117, type: !191)
!561 = !DILocalVariable(name: "hi", scope: !555, file: !2, line: 117, type: !191)
!562 = !DILocation(line: 115, column: 43, scope: !555)
!563 = !DILocation(line: 117, column: 2, scope: !555)
!564 = !DILocation(line: 117, column: 6, scope: !555)
!565 = !DILocation(line: 117, column: 10, scope: !555)
!566 = !DILocation(line: 119, column: 11, scope: !555)
!567 = !DILocation(line: 119, column: 7, scope: !555)
!568 = !DILocation(line: 119, column: 5, scope: !555)
!569 = !DILocation(line: 120, column: 11, scope: !555)
!570 = !DILocation(line: 120, column: 16, scope: !555)
!571 = !DILocation(line: 120, column: 7, scope: !555)
!572 = !DILocation(line: 120, column: 5, scope: !555)
!573 = !DILocation(line: 122, column: 9, scope: !555)
!574 = !DILocation(line: 122, column: 15, scope: !555)
!575 = !DILocation(line: 122, column: 18, scope: !555)
!576 = !DILocation(line: 122, column: 12, scope: !555)
!577 = !DILocation(line: 123, column: 1, scope: !555)
!578 = !DILocation(line: 122, column: 2, scope: !555)
!579 = distinct !DISubprogram(name: "ioread64_hi_lo", scope: !2, file: !2, line: 163, type: !528, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !580)
!580 = !{!581, !582}
!581 = !DILocalVariable(name: "addr", arg: 1, scope: !579, file: !2, line: 163, type: !360)
!582 = !DILocalVariable(name: "port", scope: !583, file: !2, line: 165, type: !174)
!583 = distinct !DILexicalBlock(scope: !579, file: !2, line: 165, column: 2)
!584 = !DILocation(line: 163, column: 40, scope: !579)
!585 = !DILocation(line: 165, column: 2, scope: !579)
!586 = !DILocation(line: 165, column: 2, scope: !583)
!587 = !DILocation(line: 165, column: 2, scope: !588)
!588 = distinct !DILexicalBlock(scope: !583, file: !2, line: 165, column: 2)
!589 = !DILocation(line: 165, column: 2, scope: !590)
!590 = distinct !DILexicalBlock(scope: !588, file: !2, line: 165, column: 2)
!591 = !DILocation(line: 165, column: 2, scope: !592)
!592 = distinct !DILexicalBlock(scope: !588, file: !2, line: 165, column: 2)
!593 = !DILocation(line: 165, column: 2, scope: !594)
!594 = distinct !DILexicalBlock(scope: !592, file: !2, line: 165, column: 2)
!595 = !DILocation(line: 166, column: 2, scope: !579)
!596 = !DILocation(line: 167, column: 1, scope: !579)
!597 = distinct !DISubprogram(name: "pio_read64_hi_lo", scope: !2, file: !2, line: 125, type: !556, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !598)
!598 = !{!599, !600, !601}
!599 = !DILocalVariable(name: "port", arg: 1, scope: !597, file: !2, line: 125, type: !174)
!600 = !DILocalVariable(name: "lo", scope: !597, file: !2, line: 127, type: !191)
!601 = !DILocalVariable(name: "hi", scope: !597, file: !2, line: 127, type: !191)
!602 = !DILocation(line: 125, column: 43, scope: !597)
!603 = !DILocation(line: 127, column: 2, scope: !597)
!604 = !DILocation(line: 127, column: 6, scope: !597)
!605 = !DILocation(line: 127, column: 10, scope: !597)
!606 = !DILocation(line: 129, column: 11, scope: !597)
!607 = !DILocation(line: 129, column: 16, scope: !597)
!608 = !DILocation(line: 129, column: 7, scope: !597)
!609 = !DILocation(line: 129, column: 5, scope: !597)
!610 = !DILocation(line: 130, column: 11, scope: !597)
!611 = !DILocation(line: 130, column: 7, scope: !597)
!612 = !DILocation(line: 130, column: 5, scope: !597)
!613 = !DILocation(line: 132, column: 9, scope: !597)
!614 = !DILocation(line: 132, column: 15, scope: !597)
!615 = !DILocation(line: 132, column: 18, scope: !597)
!616 = !DILocation(line: 132, column: 12, scope: !597)
!617 = !DILocation(line: 133, column: 1, scope: !597)
!618 = !DILocation(line: 132, column: 2, scope: !597)
!619 = distinct !DISubprogram(name: "ioread64be_lo_hi", scope: !2, file: !2, line: 170, type: !528, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !620)
!620 = !{!621, !622}
!621 = !DILocalVariable(name: "addr", arg: 1, scope: !619, file: !2, line: 170, type: !360)
!622 = !DILocalVariable(name: "port", scope: !623, file: !2, line: 172, type: !174)
!623 = distinct !DILexicalBlock(scope: !619, file: !2, line: 172, column: 2)
!624 = !DILocation(line: 170, column: 42, scope: !619)
!625 = !DILocation(line: 172, column: 2, scope: !619)
!626 = !DILocation(line: 172, column: 2, scope: !623)
!627 = !DILocation(line: 172, column: 2, scope: !628)
!628 = distinct !DILexicalBlock(scope: !623, file: !2, line: 172, column: 2)
!629 = !DILocation(line: 172, column: 2, scope: !630)
!630 = distinct !DILexicalBlock(scope: !628, file: !2, line: 172, column: 2)
!631 = !DILocation(line: 172, column: 2, scope: !632)
!632 = distinct !DILexicalBlock(scope: !628, file: !2, line: 172, column: 2)
!633 = !DILocation(line: 172, column: 2, scope: !634)
!634 = distinct !DILexicalBlock(scope: !632, file: !2, line: 172, column: 2)
!635 = !DILocation(line: 174, column: 2, scope: !619)
!636 = !DILocation(line: 175, column: 1, scope: !619)
!637 = distinct !DISubprogram(name: "pio_read64be_lo_hi", scope: !2, file: !2, line: 135, type: !556, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !638)
!638 = !{!639, !640, !641}
!639 = !DILocalVariable(name: "port", arg: 1, scope: !637, file: !2, line: 135, type: !174)
!640 = !DILocalVariable(name: "lo", scope: !637, file: !2, line: 137, type: !191)
!641 = !DILocalVariable(name: "hi", scope: !637, file: !2, line: 137, type: !191)
!642 = !DILocation(line: 135, column: 45, scope: !637)
!643 = !DILocation(line: 137, column: 2, scope: !637)
!644 = !DILocation(line: 137, column: 6, scope: !637)
!645 = !DILocation(line: 137, column: 10, scope: !637)
!646 = !DILocation(line: 139, column: 7, scope: !637)
!647 = !DILocation(line: 139, column: 5, scope: !637)
!648 = !DILocation(line: 140, column: 7, scope: !637)
!649 = !DILocation(line: 140, column: 5, scope: !637)
!650 = !DILocation(line: 142, column: 9, scope: !637)
!651 = !DILocation(line: 142, column: 15, scope: !637)
!652 = !DILocation(line: 142, column: 18, scope: !637)
!653 = !DILocation(line: 142, column: 12, scope: !637)
!654 = !DILocation(line: 143, column: 1, scope: !637)
!655 = !DILocation(line: 142, column: 2, scope: !637)
!656 = distinct !DISubprogram(name: "ioread64be_hi_lo", scope: !2, file: !2, line: 178, type: !528, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !657)
!657 = !{!658, !659}
!658 = !DILocalVariable(name: "addr", arg: 1, scope: !656, file: !2, line: 178, type: !360)
!659 = !DILocalVariable(name: "port", scope: !660, file: !2, line: 180, type: !174)
!660 = distinct !DILexicalBlock(scope: !656, file: !2, line: 180, column: 2)
!661 = !DILocation(line: 178, column: 42, scope: !656)
!662 = !DILocation(line: 180, column: 2, scope: !656)
!663 = !DILocation(line: 180, column: 2, scope: !660)
!664 = !DILocation(line: 180, column: 2, scope: !665)
!665 = distinct !DILexicalBlock(scope: !660, file: !2, line: 180, column: 2)
!666 = !DILocation(line: 180, column: 2, scope: !667)
!667 = distinct !DILexicalBlock(scope: !665, file: !2, line: 180, column: 2)
!668 = !DILocation(line: 180, column: 2, scope: !669)
!669 = distinct !DILexicalBlock(scope: !665, file: !2, line: 180, column: 2)
!670 = !DILocation(line: 180, column: 2, scope: !671)
!671 = distinct !DILexicalBlock(scope: !669, file: !2, line: 180, column: 2)
!672 = !DILocation(line: 182, column: 2, scope: !656)
!673 = !DILocation(line: 183, column: 1, scope: !656)
!674 = distinct !DISubprogram(name: "pio_read64be_hi_lo", scope: !2, file: !2, line: 145, type: !556, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !675)
!675 = !{!676, !677, !678}
!676 = !DILocalVariable(name: "port", arg: 1, scope: !674, file: !2, line: 145, type: !174)
!677 = !DILocalVariable(name: "lo", scope: !674, file: !2, line: 147, type: !191)
!678 = !DILocalVariable(name: "hi", scope: !674, file: !2, line: 147, type: !191)
!679 = !DILocation(line: 145, column: 45, scope: !674)
!680 = !DILocation(line: 147, column: 2, scope: !674)
!681 = !DILocation(line: 147, column: 6, scope: !674)
!682 = !DILocation(line: 147, column: 10, scope: !674)
!683 = !DILocation(line: 149, column: 7, scope: !674)
!684 = !DILocation(line: 149, column: 5, scope: !674)
!685 = !DILocation(line: 150, column: 7, scope: !674)
!686 = !DILocation(line: 150, column: 5, scope: !674)
!687 = !DILocation(line: 152, column: 9, scope: !674)
!688 = !DILocation(line: 152, column: 15, scope: !674)
!689 = !DILocation(line: 152, column: 18, scope: !674)
!690 = !DILocation(line: 152, column: 12, scope: !674)
!691 = !DILocation(line: 153, column: 1, scope: !674)
!692 = !DILocation(line: 152, column: 2, scope: !674)
!693 = distinct !DISubprogram(name: "iowrite8", scope: !2, file: !2, line: 203, type: !694, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !696)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !194, !179}
!696 = !{!697, !698, !699}
!697 = !DILocalVariable(name: "val", arg: 1, scope: !693, file: !2, line: 203, type: !194)
!698 = !DILocalVariable(name: "addr", arg: 2, scope: !693, file: !2, line: 203, type: !179)
!699 = !DILocalVariable(name: "port", scope: !700, file: !2, line: 207, type: !174)
!700 = distinct !DILexicalBlock(scope: !693, file: !2, line: 207, column: 2)
!701 = !DILocation(line: 203, column: 18, scope: !693)
!702 = !DILocation(line: 203, column: 37, scope: !693)
!703 = !DILocation(line: 206, column: 2, scope: !693)
!704 = !DILocation(line: 207, column: 2, scope: !693)
!705 = !DILocation(line: 207, column: 2, scope: !700)
!706 = !DILocation(line: 207, column: 2, scope: !707)
!707 = distinct !DILexicalBlock(scope: !700, file: !2, line: 207, column: 2)
!708 = !DILocation(line: 207, column: 2, scope: !709)
!709 = distinct !DILexicalBlock(scope: !707, file: !2, line: 207, column: 2)
!710 = !DILocation(line: 207, column: 2, scope: !711)
!711 = distinct !DILexicalBlock(scope: !707, file: !2, line: 207, column: 2)
!712 = !DILocation(line: 207, column: 2, scope: !713)
!713 = distinct !DILexicalBlock(scope: !711, file: !2, line: 207, column: 2)
!714 = !DILocation(line: 208, column: 1, scope: !693)
!715 = distinct !DISubprogram(name: "kmsan_check_memory", scope: !716, file: !716, line: 73, type: !717, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !724)
!716 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!717 = !DISubroutineType(types: !718)
!718 = !{null, !360, !719}
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !720, line: 61, baseType: !721)
!720 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !722, line: 72, baseType: !723)
!722 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !722, line: 16, baseType: !174)
!724 = !{!725, !726}
!725 = !DILocalVariable(name: "address", arg: 1, scope: !715, file: !716, line: 73, type: !360)
!726 = !DILocalVariable(name: "size", arg: 2, scope: !715, file: !716, line: 73, type: !719)
!727 = !DILocation(line: 73, column: 51, scope: !715)
!728 = !DILocation(line: 73, column: 67, scope: !715)
!729 = !DILocation(line: 75, column: 1, scope: !715)
!730 = distinct !DISubprogram(name: "writeb", scope: !380, file: !380, line: 64, type: !731, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !734)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !184, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!734 = !{!735, !736}
!735 = !DILocalVariable(name: "val", arg: 1, scope: !730, file: !380, line: 64, type: !184)
!736 = !DILocalVariable(name: "addr", arg: 2, scope: !730, file: !380, line: 64, type: !733)
!737 = !DILocation(line: 64, column: 1, scope: !730)
!738 = !{i64 2152786230}
!739 = distinct !DISubprogram(name: "__outb", scope: !392, file: !392, line: 22, type: !740, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !742)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !194, !197}
!742 = !{!743, !744}
!743 = !DILocalVariable(name: "value", arg: 1, scope: !739, file: !392, line: 22, type: !194)
!744 = !DILocalVariable(name: "port", arg: 2, scope: !739, file: !392, line: 22, type: !197)
!745 = !DILocation(line: 22, column: 1, scope: !739)
!746 = !{i64 2152781253}
!747 = distinct !DISubprogram(name: "iowrite16", scope: !2, file: !2, line: 209, type: !748, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !197, !179}
!750 = !{!751, !752, !753}
!751 = !DILocalVariable(name: "val", arg: 1, scope: !747, file: !2, line: 209, type: !197)
!752 = !DILocalVariable(name: "addr", arg: 2, scope: !747, file: !2, line: 209, type: !179)
!753 = !DILocalVariable(name: "port", scope: !754, file: !2, line: 213, type: !174)
!754 = distinct !DILexicalBlock(scope: !747, file: !2, line: 213, column: 2)
!755 = !DILocation(line: 209, column: 20, scope: !747)
!756 = !DILocation(line: 209, column: 39, scope: !747)
!757 = !DILocation(line: 212, column: 2, scope: !747)
!758 = !DILocation(line: 213, column: 2, scope: !747)
!759 = !DILocation(line: 213, column: 2, scope: !754)
!760 = !DILocation(line: 213, column: 2, scope: !761)
!761 = distinct !DILexicalBlock(scope: !754, file: !2, line: 213, column: 2)
!762 = !DILocation(line: 213, column: 2, scope: !763)
!763 = distinct !DILexicalBlock(scope: !761, file: !2, line: 213, column: 2)
!764 = !DILocation(line: 213, column: 2, scope: !765)
!765 = distinct !DILexicalBlock(scope: !761, file: !2, line: 213, column: 2)
!766 = !DILocation(line: 213, column: 2, scope: !767)
!767 = distinct !DILexicalBlock(scope: !765, file: !2, line: 213, column: 2)
!768 = !DILocation(line: 214, column: 1, scope: !747)
!769 = distinct !DISubprogram(name: "writew", scope: !380, file: !380, line: 65, type: !770, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !772)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !177, !733}
!772 = !{!773, !774}
!773 = !DILocalVariable(name: "val", arg: 1, scope: !769, file: !380, line: 65, type: !177)
!774 = !DILocalVariable(name: "addr", arg: 2, scope: !769, file: !380, line: 65, type: !733)
!775 = !DILocation(line: 65, column: 1, scope: !769)
!776 = !{i64 2152786614}
!777 = distinct !DISubprogram(name: "__outw", scope: !392, file: !392, line: 23, type: !778, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !780)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !197, !197}
!780 = !{!781, !782}
!781 = !DILocalVariable(name: "value", arg: 1, scope: !777, file: !392, line: 23, type: !197)
!782 = !DILocalVariable(name: "port", arg: 2, scope: !777, file: !392, line: 23, type: !197)
!783 = !DILocation(line: 23, column: 1, scope: !777)
!784 = !{i64 2152782094}
!785 = distinct !DISubprogram(name: "iowrite16be", scope: !2, file: !2, line: 215, type: !748, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !786)
!786 = !{!787, !788, !789}
!787 = !DILocalVariable(name: "val", arg: 1, scope: !785, file: !2, line: 215, type: !197)
!788 = !DILocalVariable(name: "addr", arg: 2, scope: !785, file: !2, line: 215, type: !179)
!789 = !DILocalVariable(name: "port", scope: !790, file: !2, line: 219, type: !174)
!790 = distinct !DILexicalBlock(scope: !785, file: !2, line: 219, column: 2)
!791 = !DILocation(line: 215, column: 22, scope: !785)
!792 = !DILocation(line: 215, column: 41, scope: !785)
!793 = !DILocation(line: 218, column: 2, scope: !785)
!794 = !DILocation(line: 219, column: 2, scope: !785)
!795 = !DILocation(line: 219, column: 2, scope: !790)
!796 = !DILocation(line: 219, column: 2, scope: !797)
!797 = distinct !DILexicalBlock(scope: !790, file: !2, line: 219, column: 2)
!798 = !DILocation(line: 219, column: 2, scope: !799)
!799 = distinct !DILexicalBlock(scope: !797, file: !2, line: 219, column: 2)
!800 = !DILocation(line: 219, column: 2, scope: !801)
!801 = distinct !DILexicalBlock(scope: !797, file: !2, line: 219, column: 2)
!802 = !DILocation(line: 219, column: 2, scope: !803)
!803 = distinct !DILexicalBlock(scope: !801, file: !2, line: 219, column: 2)
!804 = !DILocation(line: 220, column: 1, scope: !785)
!805 = distinct !DISubprogram(name: "iowrite32", scope: !2, file: !2, line: 221, type: !806, scopeLine: 222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !199, !179}
!808 = !{!809, !810, !811}
!809 = !DILocalVariable(name: "val", arg: 1, scope: !805, file: !2, line: 221, type: !199)
!810 = !DILocalVariable(name: "addr", arg: 2, scope: !805, file: !2, line: 221, type: !179)
!811 = !DILocalVariable(name: "port", scope: !812, file: !2, line: 225, type: !174)
!812 = distinct !DILexicalBlock(scope: !805, file: !2, line: 225, column: 2)
!813 = !DILocation(line: 221, column: 20, scope: !805)
!814 = !DILocation(line: 221, column: 39, scope: !805)
!815 = !DILocation(line: 224, column: 2, scope: !805)
!816 = !DILocation(line: 225, column: 2, scope: !805)
!817 = !DILocation(line: 225, column: 2, scope: !812)
!818 = !DILocation(line: 225, column: 2, scope: !819)
!819 = distinct !DILexicalBlock(scope: !812, file: !2, line: 225, column: 2)
!820 = !DILocation(line: 225, column: 2, scope: !821)
!821 = distinct !DILexicalBlock(scope: !819, file: !2, line: 225, column: 2)
!822 = !DILocation(line: 225, column: 2, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !2, line: 225, column: 2)
!824 = !DILocation(line: 225, column: 2, scope: !825)
!825 = distinct !DILexicalBlock(scope: !823, file: !2, line: 225, column: 2)
!826 = !DILocation(line: 226, column: 1, scope: !805)
!827 = distinct !DISubprogram(name: "writel", scope: !380, file: !380, line: 66, type: !828, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !24, !733}
!830 = !{!831, !832}
!831 = !DILocalVariable(name: "val", arg: 1, scope: !827, file: !380, line: 66, type: !24)
!832 = !DILocalVariable(name: "addr", arg: 2, scope: !827, file: !380, line: 66, type: !733)
!833 = !DILocation(line: 66, column: 1, scope: !827)
!834 = !{i64 2152787000}
!835 = distinct !DISubprogram(name: "__outl", scope: !392, file: !392, line: 24, type: !836, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !838)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !199, !197}
!838 = !{!839, !840}
!839 = !DILocalVariable(name: "value", arg: 1, scope: !835, file: !392, line: 24, type: !199)
!840 = !DILocalVariable(name: "port", arg: 2, scope: !835, file: !392, line: 24, type: !197)
!841 = !DILocation(line: 24, column: 1, scope: !835)
!842 = !{i64 2152782938}
!843 = distinct !DISubprogram(name: "iowrite32be", scope: !2, file: !2, line: 227, type: !806, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !844)
!844 = !{!845, !846, !847}
!845 = !DILocalVariable(name: "val", arg: 1, scope: !843, file: !2, line: 227, type: !199)
!846 = !DILocalVariable(name: "addr", arg: 2, scope: !843, file: !2, line: 227, type: !179)
!847 = !DILocalVariable(name: "port", scope: !848, file: !2, line: 231, type: !174)
!848 = distinct !DILexicalBlock(scope: !843, file: !2, line: 231, column: 2)
!849 = !DILocation(line: 227, column: 22, scope: !843)
!850 = !DILocation(line: 227, column: 41, scope: !843)
!851 = !DILocation(line: 230, column: 2, scope: !843)
!852 = !DILocation(line: 231, column: 2, scope: !843)
!853 = !DILocation(line: 231, column: 2, scope: !848)
!854 = !DILocation(line: 231, column: 2, scope: !855)
!855 = distinct !DILexicalBlock(scope: !848, file: !2, line: 231, column: 2)
!856 = !DILocation(line: 231, column: 2, scope: !857)
!857 = distinct !DILexicalBlock(scope: !855, file: !2, line: 231, column: 2)
!858 = !DILocation(line: 231, column: 2, scope: !859)
!859 = distinct !DILexicalBlock(scope: !855, file: !2, line: 231, column: 2)
!860 = !DILocation(line: 231, column: 2, scope: !861)
!861 = distinct !DILexicalBlock(scope: !859, file: !2, line: 231, column: 2)
!862 = !DILocation(line: 232, column: 1, scope: !843)
!863 = distinct !DISubprogram(name: "iowrite64_lo_hi", scope: !2, file: !2, line: 264, type: !864, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !866)
!864 = !DISubroutineType(types: !865)
!865 = !{null, !191, !179}
!866 = !{!867, !868, !869}
!867 = !DILocalVariable(name: "val", arg: 1, scope: !863, file: !2, line: 264, type: !191)
!868 = !DILocalVariable(name: "addr", arg: 2, scope: !863, file: !2, line: 264, type: !179)
!869 = !DILocalVariable(name: "port", scope: !870, file: !2, line: 268, type: !174)
!870 = distinct !DILexicalBlock(scope: !863, file: !2, line: 268, column: 2)
!871 = !DILocation(line: 264, column: 26, scope: !863)
!872 = !DILocation(line: 264, column: 45, scope: !863)
!873 = !DILocation(line: 267, column: 2, scope: !863)
!874 = !DILocation(line: 268, column: 2, scope: !863)
!875 = !DILocation(line: 268, column: 2, scope: !870)
!876 = !DILocation(line: 268, column: 2, scope: !877)
!877 = distinct !DILexicalBlock(scope: !870, file: !2, line: 268, column: 2)
!878 = !DILocation(line: 268, column: 2, scope: !879)
!879 = distinct !DILexicalBlock(scope: !877, file: !2, line: 268, column: 2)
!880 = !DILocation(line: 268, column: 2, scope: !881)
!881 = distinct !DILexicalBlock(scope: !877, file: !2, line: 268, column: 2)
!882 = !DILocation(line: 268, column: 2, scope: !883)
!883 = distinct !DILexicalBlock(scope: !881, file: !2, line: 268, column: 2)
!884 = !DILocation(line: 270, column: 1, scope: !863)
!885 = distinct !DISubprogram(name: "writeq", scope: !380, file: !380, line: 96, type: !886, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !888)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !191, !733}
!888 = !{!889, !890}
!889 = !DILocalVariable(name: "val", arg: 1, scope: !885, file: !380, line: 96, type: !191)
!890 = !DILocalVariable(name: "addr", arg: 2, scope: !885, file: !380, line: 96, type: !733)
!891 = !DILocation(line: 96, column: 1, scope: !885)
!892 = !{i64 2152789270}
!893 = distinct !DISubprogram(name: "pio_write64_lo_hi", scope: !2, file: !2, line: 240, type: !894, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !896)
!894 = !DISubroutineType(types: !895)
!895 = !{null, !191, !174}
!896 = !{!897, !898}
!897 = !DILocalVariable(name: "val", arg: 1, scope: !893, file: !2, line: 240, type: !191)
!898 = !DILocalVariable(name: "port", arg: 2, scope: !893, file: !2, line: 240, type: !174)
!899 = !DILocation(line: 240, column: 35, scope: !893)
!900 = !DILocation(line: 240, column: 54, scope: !893)
!901 = !DILocation(line: 242, column: 7, scope: !893)
!902 = !DILocation(line: 242, column: 12, scope: !893)
!903 = !DILocation(line: 242, column: 2, scope: !893)
!904 = !DILocation(line: 243, column: 7, scope: !893)
!905 = !DILocation(line: 243, column: 11, scope: !893)
!906 = !DILocation(line: 243, column: 18, scope: !893)
!907 = !DILocation(line: 243, column: 23, scope: !893)
!908 = !DILocation(line: 243, column: 2, scope: !893)
!909 = !DILocation(line: 244, column: 1, scope: !893)
!910 = distinct !DISubprogram(name: "iowrite64_hi_lo", scope: !2, file: !2, line: 272, type: !864, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !911)
!911 = !{!912, !913, !914}
!912 = !DILocalVariable(name: "val", arg: 1, scope: !910, file: !2, line: 272, type: !191)
!913 = !DILocalVariable(name: "addr", arg: 2, scope: !910, file: !2, line: 272, type: !179)
!914 = !DILocalVariable(name: "port", scope: !915, file: !2, line: 276, type: !174)
!915 = distinct !DILexicalBlock(scope: !910, file: !2, line: 276, column: 2)
!916 = !DILocation(line: 272, column: 26, scope: !910)
!917 = !DILocation(line: 272, column: 45, scope: !910)
!918 = !DILocation(line: 275, column: 2, scope: !910)
!919 = !DILocation(line: 276, column: 2, scope: !910)
!920 = !DILocation(line: 276, column: 2, scope: !915)
!921 = !DILocation(line: 276, column: 2, scope: !922)
!922 = distinct !DILexicalBlock(scope: !915, file: !2, line: 276, column: 2)
!923 = !DILocation(line: 276, column: 2, scope: !924)
!924 = distinct !DILexicalBlock(scope: !922, file: !2, line: 276, column: 2)
!925 = !DILocation(line: 276, column: 2, scope: !926)
!926 = distinct !DILexicalBlock(scope: !922, file: !2, line: 276, column: 2)
!927 = !DILocation(line: 276, column: 2, scope: !928)
!928 = distinct !DILexicalBlock(scope: !926, file: !2, line: 276, column: 2)
!929 = !DILocation(line: 278, column: 1, scope: !910)
!930 = distinct !DISubprogram(name: "pio_write64_hi_lo", scope: !2, file: !2, line: 246, type: !894, scopeLine: 247, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !931)
!931 = !{!932, !933}
!932 = !DILocalVariable(name: "val", arg: 1, scope: !930, file: !2, line: 246, type: !191)
!933 = !DILocalVariable(name: "port", arg: 2, scope: !930, file: !2, line: 246, type: !174)
!934 = !DILocation(line: 246, column: 35, scope: !930)
!935 = !DILocation(line: 246, column: 54, scope: !930)
!936 = !DILocation(line: 248, column: 7, scope: !930)
!937 = !DILocation(line: 248, column: 11, scope: !930)
!938 = !DILocation(line: 248, column: 18, scope: !930)
!939 = !DILocation(line: 248, column: 23, scope: !930)
!940 = !DILocation(line: 248, column: 2, scope: !930)
!941 = !DILocation(line: 249, column: 7, scope: !930)
!942 = !DILocation(line: 249, column: 12, scope: !930)
!943 = !DILocation(line: 249, column: 2, scope: !930)
!944 = !DILocation(line: 250, column: 1, scope: !930)
!945 = distinct !DISubprogram(name: "iowrite64be_lo_hi", scope: !2, file: !2, line: 280, type: !864, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !946)
!946 = !{!947, !948, !949}
!947 = !DILocalVariable(name: "val", arg: 1, scope: !945, file: !2, line: 280, type: !191)
!948 = !DILocalVariable(name: "addr", arg: 2, scope: !945, file: !2, line: 280, type: !179)
!949 = !DILocalVariable(name: "port", scope: !950, file: !2, line: 284, type: !174)
!950 = distinct !DILexicalBlock(scope: !945, file: !2, line: 284, column: 2)
!951 = !DILocation(line: 280, column: 28, scope: !945)
!952 = !DILocation(line: 280, column: 47, scope: !945)
!953 = !DILocation(line: 283, column: 2, scope: !945)
!954 = !DILocation(line: 284, column: 2, scope: !945)
!955 = !DILocation(line: 284, column: 2, scope: !950)
!956 = !DILocation(line: 284, column: 2, scope: !957)
!957 = distinct !DILexicalBlock(scope: !950, file: !2, line: 284, column: 2)
!958 = !DILocation(line: 284, column: 2, scope: !959)
!959 = distinct !DILexicalBlock(scope: !957, file: !2, line: 284, column: 2)
!960 = !DILocation(line: 284, column: 2, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !2, line: 284, column: 2)
!962 = !DILocation(line: 284, column: 2, scope: !963)
!963 = distinct !DILexicalBlock(scope: !961, file: !2, line: 284, column: 2)
!964 = !DILocation(line: 286, column: 1, scope: !945)
!965 = distinct !DISubprogram(name: "pio_write64be_lo_hi", scope: !2, file: !2, line: 252, type: !894, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !966)
!966 = !{!967, !968}
!967 = !DILocalVariable(name: "val", arg: 1, scope: !965, file: !2, line: 252, type: !191)
!968 = !DILocalVariable(name: "port", arg: 2, scope: !965, file: !2, line: 252, type: !174)
!969 = !DILocation(line: 252, column: 37, scope: !965)
!970 = !DILocation(line: 252, column: 56, scope: !965)
!971 = !DILocation(line: 254, column: 2, scope: !965)
!972 = !DILocation(line: 255, column: 2, scope: !965)
!973 = !DILocation(line: 256, column: 1, scope: !965)
!974 = distinct !DISubprogram(name: "iowrite64be_hi_lo", scope: !2, file: !2, line: 288, type: !864, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !975)
!975 = !{!976, !977, !978}
!976 = !DILocalVariable(name: "val", arg: 1, scope: !974, file: !2, line: 288, type: !191)
!977 = !DILocalVariable(name: "addr", arg: 2, scope: !974, file: !2, line: 288, type: !179)
!978 = !DILocalVariable(name: "port", scope: !979, file: !2, line: 292, type: !174)
!979 = distinct !DILexicalBlock(scope: !974, file: !2, line: 292, column: 2)
!980 = !DILocation(line: 288, column: 28, scope: !974)
!981 = !DILocation(line: 288, column: 47, scope: !974)
!982 = !DILocation(line: 291, column: 2, scope: !974)
!983 = !DILocation(line: 292, column: 2, scope: !974)
!984 = !DILocation(line: 292, column: 2, scope: !979)
!985 = !DILocation(line: 292, column: 2, scope: !986)
!986 = distinct !DILexicalBlock(scope: !979, file: !2, line: 292, column: 2)
!987 = !DILocation(line: 292, column: 2, scope: !988)
!988 = distinct !DILexicalBlock(scope: !986, file: !2, line: 292, column: 2)
!989 = !DILocation(line: 292, column: 2, scope: !990)
!990 = distinct !DILexicalBlock(scope: !986, file: !2, line: 292, column: 2)
!991 = !DILocation(line: 292, column: 2, scope: !992)
!992 = distinct !DILexicalBlock(scope: !990, file: !2, line: 292, column: 2)
!993 = !DILocation(line: 294, column: 1, scope: !974)
!994 = distinct !DISubprogram(name: "pio_write64be_hi_lo", scope: !2, file: !2, line: 258, type: !894, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !995)
!995 = !{!996, !997}
!996 = !DILocalVariable(name: "val", arg: 1, scope: !994, file: !2, line: 258, type: !191)
!997 = !DILocalVariable(name: "port", arg: 2, scope: !994, file: !2, line: 258, type: !174)
!998 = !DILocation(line: 258, column: 37, scope: !994)
!999 = !DILocation(line: 258, column: 56, scope: !994)
!1000 = !DILocation(line: 260, column: 2, scope: !994)
!1001 = !DILocation(line: 261, column: 2, scope: !994)
!1002 = !DILocation(line: 262, column: 1, scope: !994)
!1003 = distinct !DISubprogram(name: "ioread8_rep", scope: !2, file: !2, line: 360, type: !1004, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1006)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{null, !360, !179, !174}
!1006 = !{!1007, !1008, !1009, !1010}
!1007 = !DILocalVariable(name: "addr", arg: 1, scope: !1003, file: !2, line: 360, type: !360)
!1008 = !DILocalVariable(name: "dst", arg: 2, scope: !1003, file: !2, line: 360, type: !179)
!1009 = !DILocalVariable(name: "count", arg: 3, scope: !1003, file: !2, line: 360, type: !174)
!1010 = !DILocalVariable(name: "port", scope: !1011, file: !2, line: 362, type: !174)
!1011 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 362, column: 2)
!1012 = !DILocation(line: 360, column: 38, scope: !1003)
!1013 = !DILocation(line: 360, column: 50, scope: !1003)
!1014 = !DILocation(line: 360, column: 69, scope: !1003)
!1015 = !DILocation(line: 362, column: 2, scope: !1003)
!1016 = !DILocation(line: 362, column: 2, scope: !1011)
!1017 = !DILocation(line: 362, column: 2, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 362, column: 2)
!1019 = !DILocation(line: 362, column: 2, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 362, column: 2)
!1021 = !DILocation(line: 362, column: 2, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !2, line: 362, column: 2)
!1023 = !DILocation(line: 362, column: 2, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1022, file: !2, line: 362, column: 2)
!1025 = !DILocation(line: 364, column: 24, scope: !1003)
!1026 = !DILocation(line: 364, column: 29, scope: !1003)
!1027 = !DILocation(line: 364, column: 2, scope: !1003)
!1028 = !DILocation(line: 365, column: 1, scope: !1003)
!1029 = distinct !DISubprogram(name: "mmio_insb", scope: !2, file: !2, line: 310, type: !1030, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1032)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{null, !360, !193, !126}
!1032 = !{!1033, !1034, !1035, !1036}
!1033 = !DILocalVariable(name: "addr", arg: 1, scope: !1029, file: !2, line: 310, type: !360)
!1034 = !DILocalVariable(name: "dst", arg: 2, scope: !1029, file: !2, line: 310, type: !193)
!1035 = !DILocalVariable(name: "count", arg: 3, scope: !1029, file: !2, line: 310, type: !126)
!1036 = !DILocalVariable(name: "data", scope: !1037, file: !2, line: 313, type: !194)
!1037 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 312, column: 23)
!1038 = !DILocation(line: 310, column: 50, scope: !1029)
!1039 = !DILocation(line: 310, column: 60, scope: !1029)
!1040 = !DILocation(line: 310, column: 69, scope: !1029)
!1041 = !DILocation(line: 312, column: 2, scope: !1029)
!1042 = !DILocation(line: 312, column: 9, scope: !1029)
!1043 = !DILocation(line: 312, column: 17, scope: !1029)
!1044 = !DILocation(line: 313, column: 3, scope: !1037)
!1045 = !DILocation(line: 313, column: 6, scope: !1037)
!1046 = !DILocation(line: 313, column: 25, scope: !1037)
!1047 = !DILocation(line: 313, column: 13, scope: !1037)
!1048 = !DILocation(line: 314, column: 10, scope: !1037)
!1049 = !DILocation(line: 314, column: 4, scope: !1037)
!1050 = !DILocation(line: 314, column: 8, scope: !1037)
!1051 = !DILocation(line: 315, column: 6, scope: !1037)
!1052 = !DILocation(line: 316, column: 2, scope: !1029)
!1053 = distinct !{!1053, !1041, !1052, !1054, !1055}
!1054 = !{!"llvm.loop.mustprogress"}
!1055 = !{!"llvm.loop.unroll.disable"}
!1056 = !DILocation(line: 317, column: 1, scope: !1029)
!1057 = distinct !DISubprogram(name: "insb", scope: !380, file: !380, line: 291, type: !1058, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1060)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !197, !179, !174}
!1060 = !{!1061, !1062, !1063, !1064}
!1061 = !DILocalVariable(name: "port", arg: 1, scope: !1057, file: !380, line: 291, type: !197)
!1062 = !DILocalVariable(name: "addr", arg: 2, scope: !1057, file: !380, line: 291, type: !179)
!1063 = !DILocalVariable(name: "count", arg: 3, scope: !1057, file: !380, line: 291, type: !174)
!1064 = !DILocalVariable(name: "value", scope: !1065, file: !380, line: 291, type: !193)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !380, line: 291, column: 1)
!1066 = distinct !DILexicalBlock(scope: !1057, file: !380, line: 291, column: 1)
!1067 = !DILocation(line: 291, column: 1, scope: !1057)
!1068 = !DILocation(line: 291, column: 1, scope: !1066)
!1069 = !DILocation(line: 291, column: 1, scope: !1065)
!1070 = !DILocation(line: 291, column: 1, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1065, file: !380, line: 291, column: 1)
!1072 = distinct !{!1072, !1069, !1069, !1054, !1055}
!1073 = !DILocation(line: 291, column: 1, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1066, file: !380, line: 291, column: 1)
!1075 = !{i64 2152791693}
!1076 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !716, file: !716, line: 70, type: !717, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1077)
!1077 = !{!1078, !1079}
!1078 = !DILocalVariable(name: "address", arg: 1, scope: !1076, file: !716, line: 70, type: !360)
!1079 = !DILocalVariable(name: "size", arg: 2, scope: !1076, file: !716, line: 70, type: !719)
!1080 = !DILocation(line: 70, column: 54, scope: !1076)
!1081 = !DILocation(line: 70, column: 70, scope: !1076)
!1082 = !DILocation(line: 72, column: 1, scope: !1076)
!1083 = distinct !DISubprogram(name: "ioread16_rep", scope: !2, file: !2, line: 366, type: !1004, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1084)
!1084 = !{!1085, !1086, !1087, !1088}
!1085 = !DILocalVariable(name: "addr", arg: 1, scope: !1083, file: !2, line: 366, type: !360)
!1086 = !DILocalVariable(name: "dst", arg: 2, scope: !1083, file: !2, line: 366, type: !179)
!1087 = !DILocalVariable(name: "count", arg: 3, scope: !1083, file: !2, line: 366, type: !174)
!1088 = !DILocalVariable(name: "port", scope: !1089, file: !2, line: 368, type: !174)
!1089 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 368, column: 2)
!1090 = !DILocation(line: 366, column: 39, scope: !1083)
!1091 = !DILocation(line: 366, column: 51, scope: !1083)
!1092 = !DILocation(line: 366, column: 70, scope: !1083)
!1093 = !DILocation(line: 368, column: 2, scope: !1083)
!1094 = !DILocation(line: 368, column: 2, scope: !1089)
!1095 = !DILocation(line: 368, column: 2, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 368, column: 2)
!1097 = !DILocation(line: 368, column: 2, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 368, column: 2)
!1099 = !DILocation(line: 368, column: 2, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 368, column: 2)
!1101 = !DILocation(line: 368, column: 2, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1100, file: !2, line: 368, column: 2)
!1103 = !DILocation(line: 370, column: 24, scope: !1083)
!1104 = !DILocation(line: 370, column: 29, scope: !1083)
!1105 = !DILocation(line: 370, column: 35, scope: !1083)
!1106 = !DILocation(line: 370, column: 2, scope: !1083)
!1107 = !DILocation(line: 371, column: 1, scope: !1083)
!1108 = distinct !DISubprogram(name: "mmio_insw", scope: !2, file: !2, line: 318, type: !1109, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1111)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{null, !360, !196, !126}
!1111 = !{!1112, !1113, !1114, !1115}
!1112 = !DILocalVariable(name: "addr", arg: 1, scope: !1108, file: !2, line: 318, type: !360)
!1113 = !DILocalVariable(name: "dst", arg: 2, scope: !1108, file: !2, line: 318, type: !196)
!1114 = !DILocalVariable(name: "count", arg: 3, scope: !1108, file: !2, line: 318, type: !126)
!1115 = !DILocalVariable(name: "data", scope: !1116, file: !2, line: 321, type: !197)
!1116 = distinct !DILexicalBlock(scope: !1108, file: !2, line: 320, column: 23)
!1117 = !DILocation(line: 318, column: 50, scope: !1108)
!1118 = !DILocation(line: 318, column: 61, scope: !1108)
!1119 = !DILocation(line: 318, column: 70, scope: !1108)
!1120 = !DILocation(line: 320, column: 2, scope: !1108)
!1121 = !DILocation(line: 320, column: 9, scope: !1108)
!1122 = !DILocation(line: 320, column: 17, scope: !1108)
!1123 = !DILocation(line: 321, column: 3, scope: !1116)
!1124 = !DILocation(line: 321, column: 7, scope: !1116)
!1125 = !DILocation(line: 321, column: 26, scope: !1116)
!1126 = !DILocation(line: 321, column: 14, scope: !1116)
!1127 = !DILocation(line: 322, column: 10, scope: !1116)
!1128 = !DILocation(line: 322, column: 4, scope: !1116)
!1129 = !DILocation(line: 322, column: 8, scope: !1116)
!1130 = !DILocation(line: 323, column: 6, scope: !1116)
!1131 = !DILocation(line: 324, column: 2, scope: !1108)
!1132 = distinct !{!1132, !1120, !1131, !1054, !1055}
!1133 = !DILocation(line: 325, column: 1, scope: !1108)
!1134 = distinct !DISubprogram(name: "insw", scope: !380, file: !380, line: 292, type: !1058, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1135)
!1135 = !{!1136, !1137, !1138, !1139}
!1136 = !DILocalVariable(name: "port", arg: 1, scope: !1134, file: !380, line: 292, type: !197)
!1137 = !DILocalVariable(name: "addr", arg: 2, scope: !1134, file: !380, line: 292, type: !179)
!1138 = !DILocalVariable(name: "count", arg: 3, scope: !1134, file: !380, line: 292, type: !174)
!1139 = !DILocalVariable(name: "value", scope: !1140, file: !380, line: 292, type: !196)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !380, line: 292, column: 1)
!1141 = distinct !DILexicalBlock(scope: !1134, file: !380, line: 292, column: 1)
!1142 = !DILocation(line: 292, column: 1, scope: !1134)
!1143 = !DILocation(line: 292, column: 1, scope: !1141)
!1144 = !DILocation(line: 292, column: 1, scope: !1140)
!1145 = !DILocation(line: 292, column: 1, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !380, line: 292, column: 1)
!1147 = distinct !{!1147, !1144, !1144, !1054, !1055}
!1148 = !DILocation(line: 292, column: 1, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1141, file: !380, line: 292, column: 1)
!1150 = !{i64 2152793664}
!1151 = distinct !DISubprogram(name: "ioread32_rep", scope: !2, file: !2, line: 372, type: !1004, scopeLine: 373, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1152)
!1152 = !{!1153, !1154, !1155, !1156}
!1153 = !DILocalVariable(name: "addr", arg: 1, scope: !1151, file: !2, line: 372, type: !360)
!1154 = !DILocalVariable(name: "dst", arg: 2, scope: !1151, file: !2, line: 372, type: !179)
!1155 = !DILocalVariable(name: "count", arg: 3, scope: !1151, file: !2, line: 372, type: !174)
!1156 = !DILocalVariable(name: "port", scope: !1157, file: !2, line: 374, type: !174)
!1157 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 374, column: 2)
!1158 = !DILocation(line: 372, column: 39, scope: !1151)
!1159 = !DILocation(line: 372, column: 51, scope: !1151)
!1160 = !DILocation(line: 372, column: 70, scope: !1151)
!1161 = !DILocation(line: 374, column: 2, scope: !1151)
!1162 = !DILocation(line: 374, column: 2, scope: !1157)
!1163 = !DILocation(line: 374, column: 2, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 374, column: 2)
!1165 = !DILocation(line: 374, column: 2, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 374, column: 2)
!1167 = !DILocation(line: 374, column: 2, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !2, line: 374, column: 2)
!1169 = !DILocation(line: 374, column: 2, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1168, file: !2, line: 374, column: 2)
!1171 = !DILocation(line: 376, column: 24, scope: !1151)
!1172 = !DILocation(line: 376, column: 29, scope: !1151)
!1173 = !DILocation(line: 376, column: 35, scope: !1151)
!1174 = !DILocation(line: 376, column: 2, scope: !1151)
!1175 = !DILocation(line: 377, column: 1, scope: !1151)
!1176 = distinct !DISubprogram(name: "mmio_insl", scope: !2, file: !2, line: 326, type: !1177, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1179)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !360, !198, !126}
!1179 = !{!1180, !1181, !1182, !1183}
!1180 = !DILocalVariable(name: "addr", arg: 1, scope: !1176, file: !2, line: 326, type: !360)
!1181 = !DILocalVariable(name: "dst", arg: 2, scope: !1176, file: !2, line: 326, type: !198)
!1182 = !DILocalVariable(name: "count", arg: 3, scope: !1176, file: !2, line: 326, type: !126)
!1183 = !DILocalVariable(name: "data", scope: !1184, file: !2, line: 329, type: !199)
!1184 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 328, column: 23)
!1185 = !DILocation(line: 326, column: 50, scope: !1176)
!1186 = !DILocation(line: 326, column: 61, scope: !1176)
!1187 = !DILocation(line: 326, column: 70, scope: !1176)
!1188 = !DILocation(line: 328, column: 2, scope: !1176)
!1189 = !DILocation(line: 328, column: 9, scope: !1176)
!1190 = !DILocation(line: 328, column: 17, scope: !1176)
!1191 = !DILocation(line: 329, column: 3, scope: !1184)
!1192 = !DILocation(line: 329, column: 7, scope: !1184)
!1193 = !DILocation(line: 329, column: 26, scope: !1184)
!1194 = !DILocation(line: 329, column: 14, scope: !1184)
!1195 = !DILocation(line: 330, column: 10, scope: !1184)
!1196 = !DILocation(line: 330, column: 4, scope: !1184)
!1197 = !DILocation(line: 330, column: 8, scope: !1184)
!1198 = !DILocation(line: 331, column: 6, scope: !1184)
!1199 = !DILocation(line: 332, column: 2, scope: !1176)
!1200 = distinct !{!1200, !1188, !1199, !1054, !1055}
!1201 = !DILocation(line: 333, column: 1, scope: !1176)
!1202 = distinct !DISubprogram(name: "insl", scope: !380, file: !380, line: 293, type: !1058, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1203)
!1203 = !{!1204, !1205, !1206, !1207}
!1204 = !DILocalVariable(name: "port", arg: 1, scope: !1202, file: !380, line: 293, type: !197)
!1205 = !DILocalVariable(name: "addr", arg: 2, scope: !1202, file: !380, line: 293, type: !179)
!1206 = !DILocalVariable(name: "count", arg: 3, scope: !1202, file: !380, line: 293, type: !174)
!1207 = !DILocalVariable(name: "value", scope: !1208, file: !380, line: 293, type: !198)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !380, line: 293, column: 1)
!1209 = distinct !DILexicalBlock(scope: !1202, file: !380, line: 293, column: 1)
!1210 = !DILocation(line: 293, column: 1, scope: !1202)
!1211 = !DILocation(line: 293, column: 1, scope: !1209)
!1212 = !DILocation(line: 293, column: 1, scope: !1208)
!1213 = !DILocation(line: 293, column: 1, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1208, file: !380, line: 293, column: 1)
!1215 = distinct !{!1215, !1212, !1212, !1054, !1055}
!1216 = !DILocation(line: 293, column: 1, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1209, file: !380, line: 293, column: 1)
!1218 = !{i64 2152795642}
!1219 = distinct !DISubprogram(name: "iowrite8_rep", scope: !2, file: !2, line: 382, type: !1220, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1222)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{null, !179, !360, !174}
!1222 = !{!1223, !1224, !1225, !1226}
!1223 = !DILocalVariable(name: "addr", arg: 1, scope: !1219, file: !2, line: 382, type: !179)
!1224 = !DILocalVariable(name: "src", arg: 2, scope: !1219, file: !2, line: 382, type: !360)
!1225 = !DILocalVariable(name: "count", arg: 3, scope: !1219, file: !2, line: 382, type: !174)
!1226 = !DILocalVariable(name: "port", scope: !1227, file: !2, line: 386, type: !174)
!1227 = distinct !DILexicalBlock(scope: !1219, file: !2, line: 386, column: 2)
!1228 = !DILocation(line: 382, column: 33, scope: !1219)
!1229 = !DILocation(line: 382, column: 51, scope: !1219)
!1230 = !DILocation(line: 382, column: 70, scope: !1219)
!1231 = !DILocation(line: 385, column: 21, scope: !1219)
!1232 = !DILocation(line: 385, column: 26, scope: !1219)
!1233 = !DILocation(line: 385, column: 2, scope: !1219)
!1234 = !DILocation(line: 386, column: 2, scope: !1219)
!1235 = !DILocation(line: 386, column: 2, scope: !1227)
!1236 = !DILocation(line: 386, column: 2, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1227, file: !2, line: 386, column: 2)
!1238 = !DILocation(line: 386, column: 2, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 386, column: 2)
!1240 = !DILocation(line: 386, column: 2, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 386, column: 2)
!1242 = !DILocation(line: 386, column: 2, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 386, column: 2)
!1244 = !DILocation(line: 387, column: 1, scope: !1219)
!1245 = distinct !DISubprogram(name: "mmio_outsb", scope: !2, file: !2, line: 337, type: !1246, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1250)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{null, !179, !1248, !126}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!1250 = !{!1251, !1252, !1253}
!1251 = !DILocalVariable(name: "addr", arg: 1, scope: !1245, file: !2, line: 337, type: !179)
!1252 = !DILocalVariable(name: "src", arg: 2, scope: !1245, file: !2, line: 337, type: !1248)
!1253 = !DILocalVariable(name: "count", arg: 3, scope: !1245, file: !2, line: 337, type: !126)
!1254 = !DILocation(line: 337, column: 45, scope: !1245)
!1255 = !DILocation(line: 337, column: 61, scope: !1245)
!1256 = !DILocation(line: 337, column: 70, scope: !1245)
!1257 = !DILocation(line: 339, column: 2, scope: !1245)
!1258 = !DILocation(line: 339, column: 9, scope: !1245)
!1259 = !DILocation(line: 339, column: 17, scope: !1245)
!1260 = !DILocation(line: 340, column: 17, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1245, file: !2, line: 339, column: 23)
!1262 = !DILocation(line: 340, column: 16, scope: !1261)
!1263 = !DILocation(line: 340, column: 22, scope: !1261)
!1264 = !DILocation(line: 340, column: 3, scope: !1261)
!1265 = !DILocation(line: 341, column: 6, scope: !1261)
!1266 = distinct !{!1266, !1257, !1267, !1054, !1055}
!1267 = !DILocation(line: 342, column: 2, scope: !1245)
!1268 = !DILocation(line: 343, column: 1, scope: !1245)
!1269 = distinct !DISubprogram(name: "outsb", scope: !380, file: !380, line: 291, type: !1270, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1272)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !197, !360, !174}
!1272 = !{!1273, !1274, !1275, !1276}
!1273 = !DILocalVariable(name: "port", arg: 1, scope: !1269, file: !380, line: 291, type: !197)
!1274 = !DILocalVariable(name: "addr", arg: 2, scope: !1269, file: !380, line: 291, type: !360)
!1275 = !DILocalVariable(name: "count", arg: 3, scope: !1269, file: !380, line: 291, type: !174)
!1276 = !DILocalVariable(name: "value", scope: !1277, file: !380, line: 291, type: !193)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !380, line: 291, column: 1)
!1278 = distinct !DILexicalBlock(scope: !1269, file: !380, line: 291, column: 1)
!1279 = !DILocation(line: 291, column: 1, scope: !1269)
!1280 = !DILocation(line: 291, column: 1, scope: !1278)
!1281 = !DILocation(line: 291, column: 1, scope: !1277)
!1282 = !DILocation(line: 291, column: 1, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1277, file: !380, line: 291, column: 1)
!1284 = distinct !{!1284, !1281, !1281, !1054, !1055}
!1285 = !DILocation(line: 291, column: 1, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1278, file: !380, line: 291, column: 1)
!1287 = !{i64 2152791244}
!1288 = distinct !DISubprogram(name: "iowrite16_rep", scope: !2, file: !2, line: 388, type: !1220, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1289)
!1289 = !{!1290, !1291, !1292, !1293}
!1290 = !DILocalVariable(name: "addr", arg: 1, scope: !1288, file: !2, line: 388, type: !179)
!1291 = !DILocalVariable(name: "src", arg: 2, scope: !1288, file: !2, line: 388, type: !360)
!1292 = !DILocalVariable(name: "count", arg: 3, scope: !1288, file: !2, line: 388, type: !174)
!1293 = !DILocalVariable(name: "port", scope: !1294, file: !2, line: 392, type: !174)
!1294 = distinct !DILexicalBlock(scope: !1288, file: !2, line: 392, column: 2)
!1295 = !DILocation(line: 388, column: 34, scope: !1288)
!1296 = !DILocation(line: 388, column: 52, scope: !1288)
!1297 = !DILocation(line: 388, column: 71, scope: !1288)
!1298 = !DILocation(line: 391, column: 21, scope: !1288)
!1299 = !DILocation(line: 391, column: 26, scope: !1288)
!1300 = !DILocation(line: 391, column: 32, scope: !1288)
!1301 = !DILocation(line: 391, column: 2, scope: !1288)
!1302 = !DILocation(line: 392, column: 2, scope: !1288)
!1303 = !DILocation(line: 392, column: 2, scope: !1294)
!1304 = !DILocation(line: 392, column: 2, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 392, column: 2)
!1306 = !DILocation(line: 392, column: 2, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 392, column: 2)
!1308 = !DILocation(line: 392, column: 2, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 392, column: 2)
!1310 = !DILocation(line: 392, column: 2, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 392, column: 2)
!1312 = !DILocation(line: 393, column: 1, scope: !1288)
!1313 = distinct !DISubprogram(name: "mmio_outsw", scope: !2, file: !2, line: 344, type: !1314, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1318)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !179, !1316, !126}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!1318 = !{!1319, !1320, !1321}
!1319 = !DILocalVariable(name: "addr", arg: 1, scope: !1313, file: !2, line: 344, type: !179)
!1320 = !DILocalVariable(name: "src", arg: 2, scope: !1313, file: !2, line: 344, type: !1316)
!1321 = !DILocalVariable(name: "count", arg: 3, scope: !1313, file: !2, line: 344, type: !126)
!1322 = !DILocation(line: 344, column: 45, scope: !1313)
!1323 = !DILocation(line: 344, column: 62, scope: !1313)
!1324 = !DILocation(line: 344, column: 71, scope: !1313)
!1325 = !DILocation(line: 346, column: 2, scope: !1313)
!1326 = !DILocation(line: 346, column: 9, scope: !1313)
!1327 = !DILocation(line: 346, column: 17, scope: !1313)
!1328 = !DILocation(line: 347, column: 17, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 346, column: 23)
!1330 = !DILocation(line: 347, column: 16, scope: !1329)
!1331 = !DILocation(line: 347, column: 22, scope: !1329)
!1332 = !DILocation(line: 347, column: 3, scope: !1329)
!1333 = !DILocation(line: 348, column: 6, scope: !1329)
!1334 = distinct !{!1334, !1325, !1335, !1054, !1055}
!1335 = !DILocation(line: 349, column: 2, scope: !1313)
!1336 = !DILocation(line: 350, column: 1, scope: !1313)
!1337 = distinct !DISubprogram(name: "outsw", scope: !380, file: !380, line: 292, type: !1270, scopeLine: 292, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1338)
!1338 = !{!1339, !1340, !1341, !1342}
!1339 = !DILocalVariable(name: "port", arg: 1, scope: !1337, file: !380, line: 292, type: !197)
!1340 = !DILocalVariable(name: "addr", arg: 2, scope: !1337, file: !380, line: 292, type: !360)
!1341 = !DILocalVariable(name: "count", arg: 3, scope: !1337, file: !380, line: 292, type: !174)
!1342 = !DILocalVariable(name: "value", scope: !1343, file: !380, line: 292, type: !196)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !380, line: 292, column: 1)
!1344 = distinct !DILexicalBlock(scope: !1337, file: !380, line: 292, column: 1)
!1345 = !DILocation(line: 292, column: 1, scope: !1337)
!1346 = !DILocation(line: 292, column: 1, scope: !1344)
!1347 = !DILocation(line: 292, column: 1, scope: !1343)
!1348 = !DILocation(line: 292, column: 1, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1343, file: !380, line: 292, column: 1)
!1350 = distinct !{!1350, !1347, !1347, !1054, !1055}
!1351 = !DILocation(line: 292, column: 1, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1344, file: !380, line: 292, column: 1)
!1353 = !{i64 2152793215}
!1354 = distinct !DISubprogram(name: "iowrite32_rep", scope: !2, file: !2, line: 394, type: !1220, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1355)
!1355 = !{!1356, !1357, !1358, !1359}
!1356 = !DILocalVariable(name: "addr", arg: 1, scope: !1354, file: !2, line: 394, type: !179)
!1357 = !DILocalVariable(name: "src", arg: 2, scope: !1354, file: !2, line: 394, type: !360)
!1358 = !DILocalVariable(name: "count", arg: 3, scope: !1354, file: !2, line: 394, type: !174)
!1359 = !DILocalVariable(name: "port", scope: !1360, file: !2, line: 398, type: !174)
!1360 = distinct !DILexicalBlock(scope: !1354, file: !2, line: 398, column: 2)
!1361 = !DILocation(line: 394, column: 34, scope: !1354)
!1362 = !DILocation(line: 394, column: 52, scope: !1354)
!1363 = !DILocation(line: 394, column: 71, scope: !1354)
!1364 = !DILocation(line: 397, column: 21, scope: !1354)
!1365 = !DILocation(line: 397, column: 26, scope: !1354)
!1366 = !DILocation(line: 397, column: 32, scope: !1354)
!1367 = !DILocation(line: 397, column: 2, scope: !1354)
!1368 = !DILocation(line: 398, column: 2, scope: !1354)
!1369 = !DILocation(line: 398, column: 2, scope: !1360)
!1370 = !DILocation(line: 398, column: 2, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1360, file: !2, line: 398, column: 2)
!1372 = !DILocation(line: 398, column: 2, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 398, column: 2)
!1374 = !DILocation(line: 398, column: 2, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 398, column: 2)
!1376 = !DILocation(line: 398, column: 2, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1375, file: !2, line: 398, column: 2)
!1378 = !DILocation(line: 399, column: 1, scope: !1354)
!1379 = distinct !DISubprogram(name: "mmio_outsl", scope: !2, file: !2, line: 351, type: !1380, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1384)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !179, !1382, !126}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!1384 = !{!1385, !1386, !1387}
!1385 = !DILocalVariable(name: "addr", arg: 1, scope: !1379, file: !2, line: 351, type: !179)
!1386 = !DILocalVariable(name: "src", arg: 2, scope: !1379, file: !2, line: 351, type: !1382)
!1387 = !DILocalVariable(name: "count", arg: 3, scope: !1379, file: !2, line: 351, type: !126)
!1388 = !DILocation(line: 351, column: 45, scope: !1379)
!1389 = !DILocation(line: 351, column: 62, scope: !1379)
!1390 = !DILocation(line: 351, column: 71, scope: !1379)
!1391 = !DILocation(line: 353, column: 2, scope: !1379)
!1392 = !DILocation(line: 353, column: 9, scope: !1379)
!1393 = !DILocation(line: 353, column: 17, scope: !1379)
!1394 = !DILocation(line: 354, column: 17, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 353, column: 23)
!1396 = !DILocation(line: 354, column: 16, scope: !1395)
!1397 = !DILocation(line: 354, column: 22, scope: !1395)
!1398 = !DILocation(line: 354, column: 3, scope: !1395)
!1399 = !DILocation(line: 355, column: 6, scope: !1395)
!1400 = distinct !{!1400, !1391, !1401, !1054, !1055}
!1401 = !DILocation(line: 356, column: 2, scope: !1379)
!1402 = !DILocation(line: 357, column: 1, scope: !1379)
!1403 = distinct !DISubprogram(name: "outsl", scope: !380, file: !380, line: 293, type: !1270, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1404)
!1404 = !{!1405, !1406, !1407, !1408}
!1405 = !DILocalVariable(name: "port", arg: 1, scope: !1403, file: !380, line: 293, type: !197)
!1406 = !DILocalVariable(name: "addr", arg: 2, scope: !1403, file: !380, line: 293, type: !360)
!1407 = !DILocalVariable(name: "count", arg: 3, scope: !1403, file: !380, line: 293, type: !174)
!1408 = !DILocalVariable(name: "value", scope: !1409, file: !380, line: 293, type: !198)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !380, line: 293, column: 1)
!1410 = distinct !DILexicalBlock(scope: !1403, file: !380, line: 293, column: 1)
!1411 = !DILocation(line: 293, column: 1, scope: !1403)
!1412 = !DILocation(line: 293, column: 1, scope: !1410)
!1413 = !DILocation(line: 293, column: 1, scope: !1409)
!1414 = !DILocation(line: 293, column: 1, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1409, file: !380, line: 293, column: 1)
!1416 = distinct !{!1416, !1413, !1413, !1054, !1055}
!1417 = !DILocation(line: 293, column: 1, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1410, file: !380, line: 293, column: 1)
!1419 = !{i64 2152795193}
!1420 = distinct !DISubprogram(name: "ioport_map", scope: !2, file: !2, line: 406, type: !1421, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1423)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!179, !174, !24}
!1423 = !{!1424, !1425}
!1424 = !DILocalVariable(name: "port", arg: 1, scope: !1420, file: !2, line: 406, type: !174)
!1425 = !DILocalVariable(name: "nr", arg: 2, scope: !1420, file: !2, line: 406, type: !24)
!1426 = !DILocation(line: 406, column: 40, scope: !1420)
!1427 = !DILocation(line: 406, column: 59, scope: !1420)
!1428 = !DILocation(line: 408, column: 6, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1420, file: !2, line: 408, column: 6)
!1430 = !DILocation(line: 408, column: 11, scope: !1429)
!1431 = !DILocation(line: 408, column: 6, scope: !1420)
!1432 = !DILocation(line: 409, column: 3, scope: !1429)
!1433 = !DILocation(line: 410, column: 43, scope: !1420)
!1434 = !DILocation(line: 410, column: 48, scope: !1420)
!1435 = !DILocation(line: 410, column: 9, scope: !1420)
!1436 = !DILocation(line: 410, column: 2, scope: !1420)
!1437 = !DILocation(line: 411, column: 1, scope: !1420)
!1438 = distinct !DISubprogram(name: "ioport_unmap", scope: !2, file: !2, line: 413, type: !1439, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !1441)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !179}
!1441 = !{!1442}
!1442 = !DILocalVariable(name: "addr", arg: 1, scope: !1438, file: !2, line: 413, type: !179)
!1443 = !DILocation(line: 413, column: 33, scope: !1438)
!1444 = !DILocation(line: 416, column: 1, scope: !1438)
!1445 = distinct !DISubprogram(name: "pci_iounmap", scope: !2, file: !2, line: 424, type: !1446, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !6126)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{null, !1448, !179}
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !1450, line: 322, size: 16640, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64e0dd9d1e25edb42843f89cca6eeb66")
!1451 = !{!1452, !1458, !5901, !5902, !5903, !5904, !5915, !5916, !5917, !5918, !5919, !5920, !5921, !5922, !5923, !5926, !5927, !5928, !5929, !5930, !5931, !5932, !5933, !5934, !5935, !5936, !6010, !6011, !6012, !6014, !6015, !6016, !6017, !6018, !6019, !6020, !6021, !6022, !6023, !6024, !6025, !6026, !6027, !6028, !6029, !6030, !6031, !6032, !6035, !6036, !6037, !6038, !6039, !6040, !6041, !6042, !6043, !6047, !6048, !6049, !6050, !6051, !6052, !6053, !6054, !6055, !6056, !6057, !6058, !6059, !6060, !6061, !6062, !6063, !6064, !6065, !6066, !6067, !6068, !6069, !6070, !6071, !6072, !6073, !6074, !6075, !6076, !6077, !6078, !6079, !6080, !6081, !6082, !6083, !6084, !6085, !6086, !6087, !6089, !6090, !6091, !6093, !6094, !6096, !6097, !6098, !6099, !6105, !6112, !6113, !6114, !6115, !6116, !6117, !6118, !6119, !6120, !6121, !6122, !6123, !6124}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !1449, file: !1450, line: 323, baseType: !1453, size: 128)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !720, line: 190, size: 128, elements: !1454)
!1454 = !{!1455, !1457}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1453, file: !720, line: 191, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1453, file: !720, line: 191, baseType: !1456, size: 64, offset: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1449, file: !1450, line: 324, baseType: !1459, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !1450, line: 647, size: 8256, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1486, !1487, !1488, !1512, !1513, !1517, !1518, !1519, !1520, !1521, !1525, !1526, !1528, !5896, !5897, !5898, !5899, !5900}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1460, file: !1450, line: 648, baseType: !1453, size: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1460, file: !1450, line: 649, baseType: !1459, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1460, file: !1450, line: 650, baseType: !1453, size: 128, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1460, file: !1450, line: 651, baseType: !1453, size: 128, offset: 320)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1460, file: !1450, line: 652, baseType: !1448, size: 64, offset: 448)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !1460, file: !1450, line: 653, baseType: !1453, size: 128, offset: 512)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !1460, file: !1450, line: 655, baseType: !1469, size: 256, offset: 640)
!1469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1470, size: 256, elements: !1484)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !1472, line: 21, size: 512, elements: !1473)
!1472 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!1473 = !{!1474, !1477, !1478, !1479, !1480, !1481, !1482, !1483}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1471, file: !1472, line: 22, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !720, line: 164, baseType: !1476)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !720, line: 159, baseType: !191)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1471, file: !1472, line: 23, baseType: !1475, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1471, file: !1472, line: 24, baseType: !325, size: 64, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1471, file: !1472, line: 25, baseType: !174, size: 64, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1471, file: !1472, line: 26, baseType: !174, size: 64, offset: 256)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1471, file: !1472, line: 27, baseType: !1470, size: 64, offset: 320)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1471, file: !1472, line: 27, baseType: !1470, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1471, file: !1472, line: 27, baseType: !1470, size: 64, offset: 448)
!1484 = !{!1485}
!1485 = !DISubrange(count: 4)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1460, file: !1450, line: 656, baseType: !1453, size: 128, offset: 896)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !1460, file: !1450, line: 657, baseType: !1471, size: 512, offset: 1024)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1460, file: !1450, line: 659, baseType: !1489, size: 64, offset: 1536)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !1450, line: 773, size: 320, elements: !1491)
!1491 = !{!1492, !1496, !1500, !1504, !1508}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !1490, file: !1450, line: 774, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!126, !1459}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !1490, file: !1450, line: 775, baseType: !1497, size: 64, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !1459}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !1490, file: !1450, line: 776, baseType: !1501, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!179, !1459, !24, !126}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1490, file: !1450, line: 777, baseType: !1505, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!126, !1459, !24, !126, !126, !198}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1490, file: !1450, line: 778, baseType: !1509, size: 64, offset: 256)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!126, !1459, !24, !126, !126, !199}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !1460, file: !1450, line: 660, baseType: !179, size: 64, offset: 1600)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !1460, file: !1450, line: 661, baseType: !1514, size: 64, offset: 1664)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !1516, line: 131, flags: DIFlagFwdDecl)
!1516 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1460, file: !1450, line: 663, baseType: !184, size: 8, offset: 1728)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !1460, file: !1450, line: 664, baseType: !184, size: 8, offset: 1736)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !1460, file: !1450, line: 665, baseType: !184, size: 8, offset: 1744)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !1460, file: !1450, line: 666, baseType: !184, size: 8, offset: 1752)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1460, file: !1450, line: 671, baseType: !1522, size: 384, offset: 1760)
!1522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !1523)
!1523 = !{!1524}
!1524 = !DISubrange(count: 48)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !1460, file: !1450, line: 673, baseType: !177, size: 16, offset: 2144)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !1460, file: !1450, line: 674, baseType: !1527, size: 16, offset: 2160)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !1450, line: 255, baseType: !177)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !1460, file: !1450, line: 675, baseType: !1529, size: 64, offset: 2176)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !111, line: 705, size: 5824, elements: !1531)
!1531 = !{!1532, !5435, !5436, !5439, !5440, !5493, !5578, !5579, !5580, !5581, !5582, !5589, !5681, !5694, !5704, !5708, !5710, !5711, !5712, !5716, !5723, !5724, !5727, !5730, !5734, !5838, !5839, !5840, !5841, !5842, !5843, !5873, !5874, !5875, !5878, !5881, !5890, !5891, !5892, !5893, !5894, !5895}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1530, file: !111, line: 706, baseType: !1533, size: 512)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1534, line: 64, size: 512, elements: !1535)
!1534 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1535 = !{!1536, !1537, !1538, !1540, !1621, !5322, !5425, !5430, !5431, !5432, !5433, !5434}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1533, file: !1534, line: 65, baseType: !325, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1533, file: !1534, line: 66, baseType: !1453, size: 128, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1533, file: !1534, line: 67, baseType: !1539, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1533, file: !1534, line: 68, baseType: !1541, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1534, line: 168, size: 768, elements: !1543)
!1543 = !{!1544, !1545, !1580, !1581}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1542, file: !1534, line: 169, baseType: !1453, size: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1542, file: !1534, line: 170, baseType: !1546, size: 32, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !1547, line: 29, baseType: !1548)
!1547 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !1547, line: 17, size: 32, elements: !1549)
!1549 = !{!1550}
!1550 = !DIDerivedType(tag: DW_TAG_member, scope: !1548, file: !1547, line: 18, baseType: !1551, size: 32)
!1551 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1548, file: !1547, line: 18, size: 32, elements: !1552)
!1552 = !{!1553}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1551, file: !1547, line: 19, baseType: !1554, size: 32)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !1555, line: 14, size: 32, elements: !1556)
!1555 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!1556 = !{!1557}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1554, file: !1555, line: 15, baseType: !1558, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !1559, line: 44, baseType: !1560)
!1559 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !1559, line: 14, size: 32, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !1559, line: 15, baseType: !1563, size: 32)
!1563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !1559, line: 15, size: 32, elements: !1564)
!1564 = !{!1565, !1570, !1575}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1563, file: !1559, line: 16, baseType: !1566, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !720, line: 174, baseType: !1567)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !720, line: 172, size: 32, elements: !1568)
!1568 = !{!1569}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1567, file: !720, line: 173, baseType: !126, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !1559, line: 24, baseType: !1571, size: 16)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !1559, line: 24, size: 16, elements: !1572)
!1572 = !{!1573, !1574}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !1571, file: !1559, line: 25, baseType: !194, size: 8)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1571, file: !1559, line: 26, baseType: !194, size: 8, offset: 8)
!1575 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !1559, line: 28, baseType: !1576, size: 32)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1563, file: !1559, line: 28, size: 32, elements: !1577)
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !1576, file: !1559, line: 29, baseType: !197, size: 16)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1576, file: !1559, line: 30, baseType: !197, size: 16, offset: 16)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1542, file: !1534, line: 171, baseType: !1533, size: 512, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1542, file: !1534, line: 172, baseType: !1582, size: 64, offset: 704)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1584)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1534, line: 133, size: 192, elements: !1585)
!1585 = !{!1586, !1593, !1598}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1584, file: !1534, line: 134, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1588)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!126, !1591}
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1533)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1584, file: !1534, line: 135, baseType: !1594, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1595)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!325, !1591}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1584, file: !1534, line: 136, baseType: !1599, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1600)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!126, !1591, !1603}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1534, line: 125, size: 20736, elements: !1605)
!1605 = !{!1606, !1611, !1615, !1616, !1620}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1604, file: !1534, line: 126, baseType: !1607, size: 192)
!1607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1608, size: 192, elements: !1609)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!1609 = !{!1610}
!1610 = !DISubrange(count: 3)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1604, file: !1534, line: 127, baseType: !1612, size: 4096, offset: 192)
!1612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1608, size: 4096, elements: !1613)
!1613 = !{!1614}
!1614 = !DISubrange(count: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1604, file: !1534, line: 128, baseType: !126, size: 32, offset: 4288)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1604, file: !1534, line: 129, baseType: !1617, size: 16384, offset: 4320)
!1617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1618)
!1618 = !{!1619}
!1619 = !DISubrange(count: 2048)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1604, file: !1534, line: 130, baseType: !126, size: 32, offset: 20704)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1533, file: !1534, line: 69, baseType: !1622, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1624)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1534, line: 116, size: 384, elements: !1625)
!1625 = !{!1626, !1630, !1654, !5284, !5312, !5316}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1624, file: !1534, line: 117, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1539}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1624, file: !1534, line: 118, baseType: !1631, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1634, line: 254, size: 128, elements: !1635)
!1634 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1635 = !{!1636, !1650}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1633, file: !1634, line: 255, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!1640, !1539, !1644, !1608}
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !720, line: 66, baseType: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !722, line: 73, baseType: !1642)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !722, line: 15, baseType: !1643)
!1643 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1634, line: 30, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1645, file: !1634, line: 31, baseType: !325, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1645, file: !1634, line: 32, baseType: !1649, size: 16, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !720, line: 24, baseType: !177)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1633, file: !1634, line: 256, baseType: !1651, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!1640, !1539, !1644, !325, !719}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1624, file: !1534, line: 119, baseType: !1655, size: 64, offset: 128)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1658)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1634, line: 84, size: 320, elements: !1659)
!1659 = !{!1660, !1661, !1665, !5280, !5282}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1658, file: !1634, line: 85, baseType: !325, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1658, file: !1634, line: 86, baseType: !1662, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!1649, !1539, !1644, !126}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1658, file: !1634, line: 88, baseType: !1666, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!1649, !1539, !1669, !126}
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1634, line: 175, size: 512, elements: !1671)
!1671 = !{!1672, !1673, !1674, !1675, !5271, !5275, !5276}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1670, file: !1634, line: 176, baseType: !1645, size: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1670, file: !1634, line: 177, baseType: !719, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1670, file: !1634, line: 178, baseType: !179, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1670, file: !1634, line: 179, baseType: !1676, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!1679}
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 472, size: 1536, align: 64, elements: !1681)
!1681 = !{!1682, !5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5265, !5266, !5267, !5268, !5269, !5270}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1680, file: !31, line: 473, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 641, size: 4800, elements: !1685)
!1685 = !{!1686, !1687, !1688, !1696, !1697, !1704, !1705, !1708, !1709, !5044, !5045, !5046, !5047, !5048, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5088, !5091, !5092, !5093, !5102, !5103, !5104, !5105}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1684, file: !31, line: 642, baseType: !1649, size: 16)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1684, file: !31, line: 643, baseType: !177, size: 16, offset: 16)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1684, file: !31, line: 644, baseType: !1689, size: 32, offset: 32)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1690, line: 23, baseType: !1691)
!1690 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1690, line: 21, size: 32, elements: !1692)
!1692 = !{!1693}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1691, file: !1690, line: 22, baseType: !1694, size: 32)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !720, line: 37, baseType: !1695)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !722, line: 49, baseType: !24)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1684, file: !31, line: 645, baseType: !1453, size: 128, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1684, file: !31, line: 646, baseType: !1698, size: 32, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1690, line: 28, baseType: !1699)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1690, line: 26, size: 32, elements: !1700)
!1700 = !{!1701}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1699, file: !1690, line: 27, baseType: !1702, size: 32)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !720, line: 38, baseType: !1703)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !722, line: 50, baseType: !24)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1684, file: !31, line: 647, baseType: !24, size: 32, offset: 224)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1684, file: !31, line: 650, baseType: !1706, size: 64, offset: 256)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 607, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1684, file: !31, line: 651, baseType: !1706, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1684, file: !31, line: 654, baseType: !1710, size: 64, offset: 384)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1712)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1966, size: 2048, align: 512, elements: !1713)
!1713 = !{!1714, !4872, !4882, !4886, !4890, !4894, !4898, !4902, !4906, !4910, !4914, !4915, !4919, !4923, !4960, !4989, !4993, !4999, !5003, !5007, !5011, !5015, !5019, !5025, !5029}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1712, file: !31, line: 1967, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{!1718, !1683, !1718, !24}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1720, line: 82, size: 1536, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1721 = !{!1722, !1723, !1733, !1741, !1742, !1757, !1758, !1760, !1773, !4855, !4856, !4857, !4858, !4864, !4865, !4866}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1719, file: !1720, line: 84, baseType: !24, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1719, file: !1720, line: 85, baseType: !1724, size: 32, offset: 32)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !1725, line: 275, baseType: !1726)
!1725 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !1725, line: 275, size: 32, elements: !1727)
!1727 = !{!1728}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1726, file: !1725, line: 275, baseType: !1729, size: 32)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !1725, line: 69, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !1725, line: 64, size: 32, elements: !1731)
!1731 = !{!1732}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !1730, file: !1725, line: 65, baseType: !24, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1719, file: !1720, line: 86, baseType: !1734, size: 128, offset: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1735, line: 38, size: 128, elements: !1736)
!1735 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1736 = !{!1737, !1739}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1734, file: !1735, line: 39, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1734, file: !1735, line: 39, baseType: !1740, size: 64, offset: 64)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1719, file: !1720, line: 87, baseType: !1718, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1719, file: !1720, line: 88, baseType: !1743, size: 128, offset: 256)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1720, line: 49, size: 128, elements: !1744)
!1744 = !{!1745, !1754}
!1745 = !DIDerivedType(tag: DW_TAG_member, scope: !1743, file: !1720, line: 50, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1743, file: !1720, line: 50, size: 64, elements: !1747)
!1747 = !{!1748, !1753}
!1748 = !DIDerivedType(tag: DW_TAG_member, scope: !1746, file: !1720, line: 51, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1746, file: !1720, line: 51, size: 64, elements: !1750)
!1750 = !{!1751, !1752}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1749, file: !1720, line: 52, baseType: !199, size: 32)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1749, file: !1720, line: 52, baseType: !199, size: 32, offset: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1746, file: !1720, line: 54, baseType: !191, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1743, file: !1720, line: 56, baseType: !1755, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1719, file: !1720, line: 89, baseType: !1683, size: 64, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1719, file: !1720, line: 91, baseType: !1759, size: 256, offset: 448)
!1759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !219)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1719, file: !1720, line: 94, baseType: !1761, size: 64, offset: 704)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1762, line: 25, size: 64, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!1763 = !{!1764}
!1764 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !1762, line: 26, baseType: !1765, size: 64)
!1765 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1761, file: !1762, line: 26, size: 64, elements: !1766)
!1766 = !{!1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !1765, file: !1762, line: 28, baseType: !180, size: 64, align: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !1765, file: !1762, line: 30, baseType: !1769, size: 64)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1765, file: !1762, line: 30, size: 64, elements: !1770)
!1770 = !{!1771, !1772}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1769, file: !1762, line: 31, baseType: !1546, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1769, file: !1762, line: 32, baseType: !126, size: 32, offset: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1719, file: !1720, line: 95, baseType: !1774, size: 64, offset: 768)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1776)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1720, line: 128, size: 1024, align: 512, elements: !1777)
!1777 = !{!1778, !1782, !1783, !1790, !1796, !1800, !1804, !1808, !1809, !1813, !1817, !4845, !4849}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1776, file: !1720, line: 129, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!126, !1718, !24}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1776, file: !1720, line: 130, baseType: !1779, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1776, file: !1720, line: 131, baseType: !1784, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!126, !1787, !1789}
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1719)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1776, file: !1720, line: 132, baseType: !1791, size: 64, offset: 192)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!126, !1787, !24, !325, !1794}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1743)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1776, file: !1720, line: 134, baseType: !1797, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!126, !1787}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1776, file: !1720, line: 135, baseType: !1801, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!126, !1718}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1776, file: !1720, line: 136, baseType: !1805, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !1718}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1776, file: !1720, line: 137, baseType: !1805, size: 64, offset: 448)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1776, file: !1720, line: 138, baseType: !1810, size: 64, offset: 512)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{null, !1718, !1683}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1776, file: !1720, line: 139, baseType: !1814, size: 64, offset: 576)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1608, !1718, !1608, !126}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1776, file: !1720, line: 140, baseType: !1818, size: 64, offset: 640)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!1821, !4844}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1823, line: 70, size: 256, elements: !1824)
!1823 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1824 = !{!1825, !1826, !4840, !4841}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1822, file: !1823, line: 71, baseType: !1718, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1822, file: !1823, line: 72, baseType: !1827, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1190, size: 10752, elements: !1829)
!1829 = !{!1830, !1831, !1834, !1835, !1836, !1840, !2315, !2455, !2495, !2585, !2589, !2590, !2591, !2592, !2593, !2602, !2603, !2604, !2605, !2610, !2614, !2615, !2618, !2621, !2624, !2627, !2628, !2629, !2670, !4774, !4775, !4776, !4777, !4778, !4779, !4782, !4783, !4790, !4791, !4792, !4793, !4794, !4809, !4810, !4811, !4812, !4813, !4814, !4815, !4816, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1828, file: !31, line: 1191, baseType: !1453, size: 128)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1828, file: !31, line: 1192, baseType: !1832, size: 32, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !720, line: 21, baseType: !1833)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !720, line: 18, baseType: !199)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1828, file: !31, line: 1193, baseType: !184, size: 8, offset: 160)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1828, file: !31, line: 1194, baseType: !174, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1828, file: !31, line: 1195, baseType: !1837, size: 64, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !720, line: 52, baseType: !1838)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !722, line: 88, baseType: !1839)
!1839 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1828, file: !31, line: 1196, baseType: !1841, size: 64, offset: 320)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2366, size: 576, elements: !1843)
!1843 = !{!1844, !1845, !1846, !1853, !1857, !1861, !1865, !2300, !2301, !2305, !2307, !2308, !2309, !2311, !2312, !2313, !2314}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1842, file: !31, line: 2367, baseType: !325, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1842, file: !31, line: 2368, baseType: !126, size: 32, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1842, file: !31, line: 2376, baseType: !1847, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!126, !1850}
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1852, line: 32, flags: DIFlagFwdDecl)
!1852 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1842, file: !31, line: 2377, baseType: !1854, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1856)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 75, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1842, file: !31, line: 2378, baseType: !1858, size: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!1718, !1841, !126, !325, !179}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1842, file: !31, line: 2380, baseType: !1862, size: 64, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{null, !1827}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1842, file: !31, line: 2381, baseType: !1866, size: 64, offset: 384)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !23, line: 402, size: 9216, align: 512, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1875, !1897, !1923, !1924, !1925, !1926, !1930, !1935, !1936, !1956, !2009, !2010, !2011, !2012, !2013, !2016, !2017, !2018, !2026, !2030, !2057, !2078, !2079, !2080, !2081, !2090, !2113, !2114, !2117, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2131, !2132, !2258, !2266, !2267, !2268, !2270, !2274, !2275, !2279, !2280, !2281, !2282, !2284, !2285, !2286, !2293, !2294, !2295, !2299}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1867, file: !23, line: 403, baseType: !22, size: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1867, file: !23, line: 406, baseType: !1453, size: 128, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1867, file: !23, line: 409, baseType: !1872, size: 448, offset: 192)
!1872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1873)
!1873 = !{!1874}
!1874 = !DISubrange(count: 56)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1867, file: !23, line: 417, baseType: !1876, size: 768, offset: 640)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !23, line: 45, size: 768, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1881, !1884}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1876, file: !23, line: 46, baseType: !1533, size: 512)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1876, file: !23, line: 47, baseType: !1866, size: 64, offset: 512)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1876, file: !23, line: 48, baseType: !1539, size: 64, offset: 576)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1876, file: !23, line: 49, baseType: !1882, size: 64, offset: 640)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !23, line: 49, flags: DIFlagFwdDecl)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1876, file: !23, line: 50, baseType: !1885, size: 64, offset: 704)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1887, line: 26, size: 256, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1886, file: !1887, line: 27, baseType: !24, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1886, file: !1887, line: 28, baseType: !1891, size: 192, offset: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1892, line: 43, size: 192, elements: !1893)
!1892 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1893 = !{!1894, !1896}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1891, file: !1892, line: 44, baseType: !1895, size: 32)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !1555, line: 23, baseType: !1554)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1891, file: !1892, line: 45, baseType: !1453, size: 128, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1867, file: !23, line: 418, baseType: !1898, size: 64, offset: 1408)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !23, line: 53, size: 448, elements: !1900)
!1900 = !{!1901, !1902, !1907, !1911, !1915, !1919}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1899, file: !23, line: 54, baseType: !1645, size: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1899, file: !23, line: 55, baseType: !1903, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!1640, !1898, !1906, !1608}
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1899, file: !23, line: 57, baseType: !1908, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!1640, !1898, !1906, !325, !719}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1899, file: !23, line: 59, baseType: !1912, size: 64, offset: 256)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{null, !1866, !325}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1899, file: !23, line: 60, baseType: !1916, size: 64, offset: 320)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!126, !1866}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1899, file: !23, line: 61, baseType: !1920, size: 64, offset: 384)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null, !1866}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1867, file: !23, line: 419, baseType: !325, size: 64, offset: 1472)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1867, file: !23, line: 420, baseType: !325, size: 64, offset: 1536)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1867, file: !23, line: 421, baseType: !1539, size: 64, offset: 1600)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1867, file: !23, line: 424, baseType: !1927, size: 64, offset: 1664)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !23, line: 424, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1867, file: !23, line: 425, baseType: !1931, size: 64, offset: 1728)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1933)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !192, line: 20, baseType: !1934)
!1934 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !176, line: 26, baseType: !126)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1867, file: !23, line: 426, baseType: !24, size: 32, offset: 1792)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1867, file: !23, line: 435, baseType: !1937, size: 256, offset: 1856)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1938, line: 66, size: 256, elements: !1939)
!1938 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!1939 = !{!1940, !1949, !1950, !1955}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1937, file: !1938, line: 67, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1942, line: 13, baseType: !1943)
!1942 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !720, line: 181, baseType: !1944)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !720, line: 179, size: 64, elements: !1945)
!1945 = !{!1946}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1944, file: !720, line: 180, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !192, line: 22, baseType: !1948)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !176, line: 30, baseType: !1839)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1937, file: !1938, line: 68, baseType: !1895, size: 32, offset: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1937, file: !1938, line: 70, baseType: !1951, size: 32, offset: 96)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !1952, line: 15, size: 32, elements: !1953)
!1952 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!1953 = !{!1954}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1951, file: !1952, line: 20, baseType: !1566, size: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1937, file: !1938, line: 72, baseType: !1453, size: 128, offset: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1867, file: !23, line: 437, baseType: !1957, size: 64, offset: 2112)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1959, line: 69, size: 320, elements: !1960)
!1959 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1960 = !{!1961, !1962, !1963, !1981, !1982, !1986, !1987}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1958, file: !1959, line: 70, baseType: !325, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1958, file: !1959, line: 71, baseType: !1866, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1958, file: !1959, line: 72, baseType: !1964, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1966)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1959, line: 47, size: 256, elements: !1967)
!1967 = !{!1968, !1969, !1975, !1979}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1966, file: !1959, line: 49, baseType: !24, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1966, file: !1959, line: 51, baseType: !1970, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!126, !325, !1973}
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1958)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1966, file: !1959, line: 53, baseType: !1976, size: 64, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!126, !1608, !1973}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1966, file: !1959, line: 55, baseType: !1980, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1958, file: !1959, line: 73, baseType: !1317, size: 16, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1958, file: !1959, line: 74, baseType: !1983, size: 8, offset: 208)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !192, line: 16, baseType: !1984)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !176, line: 20, baseType: !1985)
!1985 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1958, file: !1959, line: 75, baseType: !194, size: 8, offset: 216)
!1987 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1959, line: 76, baseType: !1988, size: 64, offset: 256)
!1988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1958, file: !1959, line: 76, size: 64, elements: !1989)
!1989 = !{!1990, !1991, !1998}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1988, file: !1959, line: 77, baseType: !179, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1988, file: !1959, line: 78, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1994)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1959, line: 86, size: 128, elements: !1995)
!1995 = !{!1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1994, file: !1959, line: 87, baseType: !24, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1994, file: !1959, line: 88, baseType: !1608, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1988, file: !1959, line: 79, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1959, line: 92, size: 256, elements: !2002)
!2002 = !{!2003, !2004, !2005, !2007, !2008}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2001, file: !1959, line: 94, baseType: !24, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2001, file: !1959, line: 95, baseType: !24, size: 32, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2001, file: !1959, line: 96, baseType: !2006, size: 64, offset: 64)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2001, file: !1959, line: 97, baseType: !1964, size: 64, offset: 128)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2001, file: !1959, line: 98, baseType: !179, size: 64, offset: 192)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1867, file: !23, line: 438, baseType: !24, size: 32, offset: 2176)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1867, file: !23, line: 441, baseType: !24, size: 32, offset: 2208)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1867, file: !23, line: 442, baseType: !1927, size: 64, offset: 2240)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1867, file: !23, line: 443, baseType: !1931, size: 64, offset: 2304)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1867, file: !23, line: 444, baseType: !2014, size: 8, offset: 2368)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !720, line: 35, baseType: !2015)
!2015 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1867, file: !23, line: 451, baseType: !2014, size: 8, offset: 2376)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1867, file: !23, line: 454, baseType: !24, size: 32, offset: 2400)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1867, file: !23, line: 455, baseType: !2019, size: 64, offset: 2432)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2021, line: 23, size: 96, elements: !2022)
!2021 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2022 = !{!2023, !2024, !2025}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2020, file: !2021, line: 24, baseType: !126, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2020, file: !2021, line: 24, baseType: !126, size: 32, offset: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2020, file: !2021, line: 24, baseType: !126, size: 32, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1867, file: !23, line: 458, baseType: !2027, size: 64, offset: 2496)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!126}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1867, file: !23, line: 460, baseType: !2031, size: 4032, align: 512, offset: 2560)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2032, size: 4032, elements: !2055)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !23, line: 362, size: 576, elements: !2033)
!2033 = !{!2034, !2035, !2036}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2032, file: !23, line: 363, baseType: !179, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2032, file: !23, line: 364, baseType: !24, size: 32, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2032, file: !23, line: 367, baseType: !2037, size: 448, offset: 128)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !23, line: 319, size: 448, elements: !2038)
!2038 = !{!2039, !2040}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2037, file: !23, line: 320, baseType: !1866, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2037, file: !23, line: 321, baseType: !2041, size: 384, offset: 64)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2042, line: 40, size: 384, elements: !2043)
!2042 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2043 = !{!2044}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2041, file: !2042, line: 41, baseType: !2045, size: 384, align: 64)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2046, size: 384, align: 64, elements: !2053)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !2047, line: 5, size: 192, align: 64, elements: !2048)
!2047 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!2048 = !{!2049, !2050, !2052}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !2046, file: !2047, line: 6, baseType: !174, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !2046, file: !2047, line: 7, baseType: !2051, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !2046, file: !2047, line: 8, baseType: !2051, size: 64, offset: 128)
!2053 = !{!2054}
!2054 = !DISubrange(count: 2)
!2055 = !{!2056}
!2056 = !DISubrange(count: 7)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1867, file: !23, line: 463, baseType: !2058, size: 192, offset: 6592)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2059, line: 8, size: 192, elements: !2060)
!2059 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2060 = !{!2061, !2062, !2064}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2058, file: !2059, line: 10, baseType: !24, size: 32)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2058, file: !2059, line: 11, baseType: !2063, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2058, file: !2059, line: 12, baseType: !2065, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2067, line: 59, size: 48, elements: !2068)
!2067 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2068 = !{!2069, !2073, !2074, !2075, !2076, !2077}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2066, file: !2067, line: 60, baseType: !2070, size: 16)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !192, line: 18, baseType: !2071)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !176, line: 23, baseType: !2072)
!2072 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2066, file: !2067, line: 61, baseType: !2070, size: 16, offset: 16)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2066, file: !2067, line: 63, baseType: !24, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2066, file: !2067, line: 64, baseType: !24, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2066, file: !2067, line: 65, baseType: !24, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2066, file: !2067, line: 66, baseType: !24, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1867, file: !23, line: 465, baseType: !174, size: 64, offset: 6784)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1867, file: !23, line: 469, baseType: !24, size: 32, offset: 6848)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1867, file: !23, line: 470, baseType: !1453, size: 128, offset: 6912)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1867, file: !23, line: 471, baseType: !2082, size: 64, offset: 7040)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2084, line: 33, size: 96, elements: !2085)
!2084 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2085 = !{!2086, !2087, !2088, !2089}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2083, file: !2084, line: 37, baseType: !126, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2083, file: !2084, line: 43, baseType: !126, size: 32, offset: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2083, file: !2084, line: 45, baseType: !177, size: 16, offset: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2083, file: !2084, line: 47, baseType: !177, size: 16, offset: 80)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1867, file: !23, line: 476, baseType: !2091, size: 64, offset: 7104)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !23, line: 378, size: 256, elements: !2093)
!2093 = !{!2094, !2110, !2111, !2112}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2092, file: !23, line: 379, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2097, line: 204, baseType: !2098)
!2097 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2097, line: 197, size: 192, elements: !2099)
!2099 = !{!2100, !2102, !2103, !2104, !2106, !2108}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2098, file: !2097, line: 198, baseType: !2101, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2097, line: 21, baseType: !178)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2098, file: !2097, line: 199, baseType: !184, size: 8, offset: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2098, file: !2097, line: 200, baseType: !184, size: 8, offset: 40)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2098, file: !2097, line: 201, baseType: !2105, size: 16, offset: 48)
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2097, line: 17, baseType: !175)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2098, file: !2097, line: 202, baseType: !2107, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2097, line: 16, baseType: !180)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2098, file: !2097, line: 203, baseType: !2109, size: 64, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2097, line: 22, baseType: !180)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2092, file: !23, line: 380, baseType: !24, size: 32, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2092, file: !23, line: 381, baseType: !1608, size: 64, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2092, file: !23, line: 382, baseType: !1608, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1867, file: !23, line: 477, baseType: !2092, size: 256, offset: 7168)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1867, file: !23, line: 480, baseType: !2115, size: 64, offset: 7424)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !23, line: 480, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1867, file: !23, line: 483, baseType: !2118, size: 64, offset: 7488)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !23, line: 483, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1867, file: !23, line: 488, baseType: !1608, size: 64, offset: 7552)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1867, file: !23, line: 492, baseType: !179, size: 64, offset: 7616)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1867, file: !23, line: 493, baseType: !24, size: 32, offset: 7680)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1867, file: !23, line: 495, baseType: !179, size: 64, offset: 7744)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1867, file: !23, line: 496, baseType: !24, size: 32, offset: 7808)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1867, file: !23, line: 499, baseType: !24, size: 32, offset: 7840)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1867, file: !23, line: 500, baseType: !2127, size: 64, offset: 7872)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2129, line: 45, baseType: !2130)
!2129 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1867, file: !23, line: 503, baseType: !24, size: 32, offset: 7936)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1867, file: !23, line: 504, baseType: !2133, size: 64, offset: 8000)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2136, line: 96, size: 192, elements: !2137)
!2136 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2137 = !{!2138, !2139, !2218, !2222}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2135, file: !2136, line: 97, baseType: !24, size: 32)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2135, file: !2136, line: 98, baseType: !2140, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2136, line: 24, size: 3072, elements: !2142)
!2142 = !{!2143, !2145, !2146, !2147, !2148, !2170, !2171, !2172, !2173, !2191, !2203, !2204, !2215, !2216, !2217}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2141, file: !2136, line: 26, baseType: !2144, size: 128)
!2144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1941, size: 128, elements: !2053)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2141, file: !2136, line: 27, baseType: !2144, size: 128, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2141, file: !2136, line: 28, baseType: !126, size: 32, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2141, file: !2136, line: 31, baseType: !1546, size: 32, align: 512, offset: 512)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2141, file: !2136, line: 32, baseType: !2149, size: 960, offset: 576)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2150, line: 206, size: 960, elements: !2151)
!2150 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2151 = !{!2152, !2161, !2164, !2166, !2167, !2169}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2149, file: !2150, line: 207, baseType: !2153, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !720, line: 232, size: 128, align: 64, elements: !2155)
!2155 = !{!2156, !2157}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2154, file: !720, line: 233, baseType: !2153, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2154, file: !720, line: 234, baseType: !2158, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{null, !2153}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2149, file: !2150, line: 208, baseType: !2162, size: 256, offset: 64)
!2162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2163, size: 256, elements: !1484)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2149, file: !2150, line: 209, baseType: !2165, size: 256, offset: 320)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 256, elements: !1484)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2149, file: !2150, line: 213, baseType: !1643, size: 64, offset: 576)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2149, file: !2150, line: 215, baseType: !2168, size: 256, offset: 640)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1643, size: 256, elements: !1484)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2149, file: !2150, line: 216, baseType: !194, size: 8, offset: 896)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2141, file: !2136, line: 33, baseType: !174, size: 64, offset: 1536)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2141, file: !2136, line: 34, baseType: !174, size: 64, offset: 1600)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2141, file: !2136, line: 35, baseType: !2014, size: 8, offset: 1664)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2141, file: !2136, line: 36, baseType: !2174, size: 320, offset: 1728)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2175, line: 11, size: 320, elements: !2176)
!2175 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2176 = !{!2177, !2184, !2185, !2190}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2174, file: !2175, line: 16, baseType: !2178, size: 128)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !720, line: 198, size: 128, elements: !2179)
!2179 = !{!2180, !2182}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2178, file: !720, line: 199, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !2178, file: !720, line: 199, baseType: !2183, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2174, file: !2175, line: 17, baseType: !174, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2174, file: !2175, line: 18, baseType: !2186, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{null, !2189}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2174, file: !2175, line: 19, baseType: !199, size: 32, offset: 256)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2141, file: !2136, line: 37, baseType: !2192, size: 256, offset: 2048)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2193, line: 98, size: 256, elements: !2194)
!2193 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2194 = !{!2195, !2196, !2197}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2192, file: !2193, line: 99, baseType: !1941, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2192, file: !2193, line: 100, baseType: !1453, size: 128, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2192, file: !2193, line: 101, baseType: !2198, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2193, line: 21, baseType: !2199)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{null, !2202}
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2141, file: !2136, line: 38, baseType: !2154, size: 128, align: 64, offset: 2304)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2141, file: !2136, line: 39, baseType: !2205, size: 64, offset: 2432)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2136, line: 49, size: 768, elements: !2207)
!2207 = !{!2208, !2209, !2210, !2211, !2212, !2213, !2214}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2206, file: !2136, line: 50, baseType: !1546, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2206, file: !2136, line: 51, baseType: !2165, size: 256, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2206, file: !2136, line: 53, baseType: !2165, size: 256, offset: 320)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2206, file: !2136, line: 54, baseType: !174, size: 64, offset: 576)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2206, file: !2136, line: 55, baseType: !2205, size: 64, offset: 640)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2206, file: !2136, line: 56, baseType: !126, size: 32, offset: 704)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2206, file: !2136, line: 57, baseType: !126, size: 32, offset: 736)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2141, file: !2136, line: 40, baseType: !174, size: 64, offset: 2496)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2141, file: !2136, line: 42, baseType: !126, size: 32, offset: 2560)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2141, file: !2136, line: 43, baseType: !2134, size: 64, offset: 2624)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2135, file: !2136, line: 99, baseType: !2219, offset: 128)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2220, line: 211, elements: !2221)
!2220 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2221 = !{}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2135, file: !2136, line: 100, baseType: !2223, size: 64, offset: 128)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2136, line: 63, size: 3008, elements: !2225)
!2225 = !{!2226, !2227, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2257}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2224, file: !2136, line: 64, baseType: !2205, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2224, file: !2136, line: 65, baseType: !2228, size: 192, offset: 64)
!2228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2205, size: 192, elements: !1609)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2224, file: !2136, line: 67, baseType: !126, size: 32, offset: 256)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2224, file: !2136, line: 68, baseType: !1937, size: 256, offset: 320)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2224, file: !2136, line: 69, baseType: !1546, size: 32, offset: 576)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2224, file: !2136, line: 70, baseType: !1937, size: 256, offset: 640)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2224, file: !2136, line: 71, baseType: !174, size: 64, offset: 896)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2224, file: !2136, line: 72, baseType: !174, size: 64, offset: 960)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2224, file: !2136, line: 73, baseType: !174, size: 64, offset: 1024)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2224, file: !2136, line: 74, baseType: !174, size: 64, offset: 1088)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2224, file: !2136, line: 75, baseType: !174, size: 64, offset: 1152)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2224, file: !2136, line: 76, baseType: !174, size: 64, offset: 1216)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2224, file: !2136, line: 77, baseType: !174, size: 64, offset: 1280)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2224, file: !2136, line: 78, baseType: !174, size: 64, offset: 1344)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2224, file: !2136, line: 79, baseType: !2014, size: 8, offset: 1408)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2224, file: !2136, line: 80, baseType: !174, size: 64, offset: 1472)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2224, file: !2136, line: 81, baseType: !1937, size: 256, offset: 1536)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2224, file: !2136, line: 82, baseType: !1886, size: 256, offset: 1792)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2224, file: !2136, line: 84, baseType: !1566, size: 32, offset: 2048)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2224, file: !2136, line: 87, baseType: !174, size: 64, offset: 2112)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2224, file: !2136, line: 88, baseType: !174, size: 64, offset: 2176)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2224, file: !2136, line: 89, baseType: !2249, size: 704, offset: 2240)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2193, line: 111, size: 704, elements: !2250)
!2250 = !{!2251, !2252, !2253, !2256}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2249, file: !2193, line: 112, baseType: !2192, size: 256)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2249, file: !2193, line: 113, baseType: !2174, size: 320, offset: 256)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2249, file: !2193, line: 116, baseType: !2254, size: 64, offset: 576)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2193, line: 18, flags: DIFlagFwdDecl)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2249, file: !2193, line: 117, baseType: !126, size: 32, offset: 640)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2224, file: !2136, line: 90, baseType: !2134, size: 64, offset: 2944)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1867, file: !23, line: 515, baseType: !2259, size: 64, offset: 8064)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2261, line: 117, size: 128, elements: !2262)
!2261 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2262 = !{!2263, !2264, !2265}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2260, file: !2261, line: 118, baseType: !1933, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2260, file: !2261, line: 119, baseType: !1933, size: 32, offset: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2260, file: !2261, line: 120, baseType: !1643, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1867, file: !23, line: 516, baseType: !24, size: 32, offset: 8128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1867, file: !23, line: 519, baseType: !24, size: 32, offset: 8160)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1867, file: !23, line: 520, baseType: !2269, size: 64, offset: 8192)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1867, file: !23, line: 523, baseType: !2271, size: 64, offset: 8256)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !23, line: 523, flags: DIFlagFwdDecl)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1867, file: !23, line: 524, baseType: !24, size: 32, offset: 8320)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1867, file: !23, line: 525, baseType: !2276, size: 64, offset: 8384)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !23, line: 525, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1867, file: !23, line: 526, baseType: !24, size: 32, offset: 8448)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1867, file: !23, line: 533, baseType: !179, size: 64, offset: 8512)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1867, file: !23, line: 534, baseType: !24, size: 32, offset: 8576)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1867, file: !23, line: 535, baseType: !2283, size: 64, offset: 8640)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1867, file: !23, line: 536, baseType: !24, size: 32, offset: 8704)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1867, file: !23, line: 539, baseType: !126, size: 32, offset: 8736)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1867, file: !23, line: 540, baseType: !2287, size: 64, offset: 8768)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2289, line: 32, size: 64, elements: !2290)
!2289 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2290 = !{!2291, !2292}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2288, file: !2289, line: 33, baseType: !1933, size: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2288, file: !2289, line: 34, baseType: !1933, size: 32, offset: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1867, file: !23, line: 563, baseType: !1453, size: 128, offset: 8832)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1867, file: !23, line: 565, baseType: !1453, size: 128, offset: 8960)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1867, file: !23, line: 568, baseType: !2296, size: 64, offset: 9088)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1867, file: !23, line: 570, baseType: !1566, size: 32, offset: 9152)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1842, file: !31, line: 2382, baseType: !1841, size: 64, offset: 448)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1842, file: !31, line: 2383, baseType: !2302, size: 64, offset: 512)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !720, line: 194, size: 64, elements: !2303)
!2303 = !{!2304}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2302, file: !720, line: 195, baseType: !2181, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1842, file: !31, line: 2385, baseType: !2306, offset: 576)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2220, line: 206, elements: !2221)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1842, file: !31, line: 2386, baseType: !2306, offset: 576)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1842, file: !31, line: 2387, baseType: !2306, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1842, file: !31, line: 2388, baseType: !2310, offset: 576)
!2310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2306, elements: !1609)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1842, file: !31, line: 2390, baseType: !2306, offset: 576)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1842, file: !31, line: 2391, baseType: !2306, offset: 576)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1842, file: !31, line: 2392, baseType: !2306, offset: 576)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1842, file: !31, line: 2393, baseType: !2306, offset: 576)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1828, file: !31, line: 1197, baseType: !2316, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2318)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 2057, size: 1664, elements: !2319)
!2319 = !{!2320, !2324, !2328, !2329, !2333, !2339, !2343, !2344, !2345, !2349, !2353, !2357, !2358, !2359, !2365, !2369, !2370, !2377, !2378, !2379, !2380, !2384, !2388, !2437, !2453, !2454}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2318, file: !31, line: 2058, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!1683, !1827}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2318, file: !31, line: 2059, baseType: !2325, size: 64, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{null, !1683}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2318, file: !31, line: 2060, baseType: !2325, size: 64, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2318, file: !31, line: 2062, baseType: !2330, size: 64, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{null, !1683, !126}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2318, file: !31, line: 2063, baseType: !2334, size: 64, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!126, !1683, !2337}
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 309, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2318, file: !31, line: 2064, baseType: !2340, size: 64, offset: 320)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!126, !1683}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2318, file: !31, line: 2065, baseType: !2325, size: 64, offset: 384)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2318, file: !31, line: 2066, baseType: !1862, size: 64, offset: 448)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2318, file: !31, line: 2067, baseType: !2346, size: 64, offset: 512)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!126, !1827, !126}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2318, file: !31, line: 2068, baseType: !2350, size: 64, offset: 576)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!126, !1827, !30}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2318, file: !31, line: 2069, baseType: !2354, size: 64, offset: 640)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!126, !1827}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2318, file: !31, line: 2070, baseType: !2350, size: 64, offset: 704)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2318, file: !31, line: 2071, baseType: !2354, size: 64, offset: 768)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2318, file: !31, line: 2072, baseType: !2360, size: 64, offset: 832)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!126, !1718, !2363}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 62, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2318, file: !31, line: 2073, baseType: !2366, size: 64, offset: 896)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!126, !1827, !2063, !1608}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2318, file: !31, line: 2074, baseType: !1862, size: 64, offset: 960)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2318, file: !31, line: 2076, baseType: !2371, size: 64, offset: 1024)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!126, !2374, !1718}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2376, line: 66, flags: DIFlagFwdDecl)
!2376 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2318, file: !31, line: 2077, baseType: !2371, size: 64, offset: 1088)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2318, file: !31, line: 2078, baseType: !2371, size: 64, offset: 1152)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2318, file: !31, line: 2079, baseType: !2371, size: 64, offset: 1216)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2318, file: !31, line: 2081, baseType: !2381, size: 64, offset: 1280)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!1640, !1827, !126, !1608, !719, !1837}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2318, file: !31, line: 2082, baseType: !2385, size: 64, offset: 1344)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!1640, !1827, !126, !325, !719, !1837}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2318, file: !31, line: 2083, baseType: !2389, size: 64, offset: 1408)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!2392, !1683}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !36, line: 296, size: 1664, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2420, !2421, !2422}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2394, file: !36, line: 297, baseType: !2178, size: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2394, file: !36, line: 298, baseType: !1453, size: 128, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2394, file: !36, line: 299, baseType: !1453, size: 128, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2394, file: !36, line: 300, baseType: !1453, size: 128, offset: 384)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2394, file: !36, line: 301, baseType: !1937, size: 256, offset: 512)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2394, file: !36, line: 302, baseType: !1546, size: 32, offset: 768)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2394, file: !36, line: 303, baseType: !1566, size: 32, offset: 800)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2394, file: !36, line: 304, baseType: !1827, size: 64, offset: 832)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2394, file: !36, line: 305, baseType: !2405, size: 64, offset: 896)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !36, line: 68, size: 64, elements: !2406)
!2406 = !{!2407, !2419}
!2407 = !DIDerivedType(tag: DW_TAG_member, scope: !2405, file: !36, line: 69, baseType: !2408, size: 32)
!2408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2405, file: !36, line: 69, size: 32, elements: !2409)
!2409 = !{!2410, !2411, !2412}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2408, file: !36, line: 70, baseType: !1689, size: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2408, file: !36, line: 71, baseType: !1698, size: 32)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2408, file: !36, line: 72, baseType: !2413, size: 32)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2414, line: 24, baseType: !2415)
!2414 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2414, line: 22, size: 32, elements: !2416)
!2416 = !{!2417}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2415, file: !2414, line: 23, baseType: !2418, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2414, line: 20, baseType: !1695)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2405, file: !36, line: 74, baseType: !35, size: 32, offset: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2394, file: !36, line: 306, baseType: !1837, size: 64, offset: 960)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2394, file: !36, line: 307, baseType: !174, size: 64, offset: 1024)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2394, file: !36, line: 308, baseType: !2423, size: 576, offset: 1088)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !36, line: 205, size: 576, elements: !2424)
!2424 = !{!2425, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2436}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2423, file: !36, line: 206, baseType: !2426, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !36, line: 66, baseType: !1839)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2423, file: !36, line: 207, baseType: !2426, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2423, file: !36, line: 208, baseType: !2426, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2423, file: !36, line: 209, baseType: !2426, size: 64, offset: 192)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2423, file: !36, line: 210, baseType: !2426, size: 64, offset: 256)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2423, file: !36, line: 211, baseType: !2426, size: 64, offset: 320)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2423, file: !36, line: 212, baseType: !2426, size: 64, offset: 384)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2423, file: !36, line: 213, baseType: !2434, size: 64, offset: 448)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !2435, line: 8, baseType: !1948)
!2435 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2423, file: !36, line: 214, baseType: !2434, size: 64, offset: 512)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2318, file: !31, line: 2085, baseType: !2438, size: 64, offset: 1472)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!1643, !1827, !2441}
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2443, line: 15, size: 256, elements: !2444)
!2443 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2444 = !{!2445, !2447, !2448, !2449, !2450}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2442, file: !2443, line: 16, baseType: !2446, size: 32)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !720, line: 154, baseType: !24)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2442, file: !2443, line: 19, baseType: !126, size: 32, offset: 32)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2442, file: !2443, line: 26, baseType: !174, size: 64, offset: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2442, file: !2443, line: 33, baseType: !174, size: 64, offset: 128)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2442, file: !2443, line: 36, baseType: !2451, size: 64, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !55, line: 33, flags: DIFlagFwdDecl)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2318, file: !31, line: 2087, baseType: !2438, size: 64, offset: 1536)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2318, file: !31, line: 2089, baseType: !1862, size: 64, offset: 1600)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1828, file: !31, line: 1198, baseType: !2456, size: 64, offset: 448)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2458)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !36, line: 324, size: 704, elements: !2459)
!2459 = !{!2460, !2464, !2468, !2472, !2473, !2474, !2475, !2476, !2481, !2486, !2490}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2458, file: !36, line: 325, baseType: !2461, size: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DISubroutineType(types: !2463)
!2463 = !{!126, !2393}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2458, file: !36, line: 326, baseType: !2465, size: 64, offset: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!2393, !1827, !126}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2458, file: !36, line: 327, baseType: !2469, size: 64, offset: 128)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DISubroutineType(types: !2471)
!2471 = !{null, !2393}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2458, file: !36, line: 328, baseType: !2461, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2458, file: !36, line: 329, baseType: !2461, size: 64, offset: 256)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2458, file: !36, line: 330, baseType: !2461, size: 64, offset: 320)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2458, file: !36, line: 331, baseType: !2346, size: 64, offset: 384)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2458, file: !36, line: 334, baseType: !2477, size: 64, offset: 448)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!2480, !1683}
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2458, file: !36, line: 335, baseType: !2482, size: 64, offset: 512)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!126, !1683, !2485}
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2458, file: !36, line: 337, baseType: !2487, size: 64, offset: 576)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!126, !1683, !2480}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2458, file: !36, line: 339, baseType: !2491, size: 64, offset: 640)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!126, !1827, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1828, file: !31, line: 1199, baseType: !2496, size: 64, offset: 512)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2498)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !36, line: 430, size: 704, elements: !2499)
!2499 = !{!2500, !2511, !2512, !2516, !2517, !2518, !2533, !2556, !2560, !2561, !2584}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2498, file: !36, line: 431, baseType: !2501, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!126, !1827, !126, !126, !2504}
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2506)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !2507, line: 8, size: 128, elements: !2508)
!2507 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!2508 = !{!2509, !2510}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !2506, file: !2507, line: 9, baseType: !1821, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !2506, file: !2507, line: 10, baseType: !1718, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2498, file: !36, line: 432, baseType: !2346, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2498, file: !36, line: 433, baseType: !2513, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!126, !1827, !24}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2498, file: !36, line: 434, baseType: !2513, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2498, file: !36, line: 435, baseType: !2346, size: 64, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2498, file: !36, line: 436, baseType: !2519, size: 64, offset: 320)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!126, !1827, !126, !2522}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !36, line: 417, size: 256, elements: !2524)
!2524 = !{!2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2523, file: !36, line: 418, baseType: !126, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2523, file: !36, line: 419, baseType: !24, size: 32, offset: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2523, file: !36, line: 420, baseType: !24, size: 32, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2523, file: !36, line: 422, baseType: !24, size: 32, offset: 96)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2523, file: !36, line: 423, baseType: !24, size: 32, offset: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2523, file: !36, line: 424, baseType: !24, size: 32, offset: 160)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2523, file: !36, line: 425, baseType: !24, size: 32, offset: 192)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2523, file: !36, line: 426, baseType: !24, size: 32, offset: 224)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2498, file: !36, line: 437, baseType: !2534, size: 64, offset: 384)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!126, !1827, !2405, !2537}
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !36, line: 345, size: 960, elements: !2539)
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2538, file: !36, line: 346, baseType: !126, size: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2538, file: !36, line: 347, baseType: !191, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2538, file: !36, line: 348, baseType: !191, size: 64, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2538, file: !36, line: 349, baseType: !191, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2538, file: !36, line: 350, baseType: !191, size: 64, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2538, file: !36, line: 351, baseType: !191, size: 64, offset: 320)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2538, file: !36, line: 352, baseType: !191, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2538, file: !36, line: 353, baseType: !1947, size: 64, offset: 448)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2538, file: !36, line: 355, baseType: !1947, size: 64, offset: 512)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2538, file: !36, line: 356, baseType: !126, size: 32, offset: 576)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2538, file: !36, line: 357, baseType: !126, size: 32, offset: 608)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2538, file: !36, line: 358, baseType: !191, size: 64, offset: 640)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2538, file: !36, line: 359, baseType: !191, size: 64, offset: 704)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2538, file: !36, line: 360, baseType: !191, size: 64, offset: 768)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2538, file: !36, line: 361, baseType: !1947, size: 64, offset: 832)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2538, file: !36, line: 362, baseType: !126, size: 32, offset: 896)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2498, file: !36, line: 438, baseType: !2557, size: 64, offset: 448)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!126, !1827, !2494, !2537}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2498, file: !36, line: 440, baseType: !2534, size: 64, offset: 512)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2498, file: !36, line: 441, baseType: !2562, size: 64, offset: 576)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!126, !1827, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !36, line: 411, size: 1408, elements: !2567)
!2567 = !{!2568, !2569}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2566, file: !36, line: 412, baseType: !24, size: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2566, file: !36, line: 413, baseType: !2570, size: 1344, offset: 64)
!2570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2571, size: 1344, elements: !1609)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !36, line: 397, size: 448, elements: !2572)
!2572 = !{!2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2583}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2571, file: !36, line: 398, baseType: !24, size: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2571, file: !36, line: 399, baseType: !24, size: 32, offset: 32)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2571, file: !36, line: 401, baseType: !24, size: 32, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2571, file: !36, line: 402, baseType: !24, size: 32, offset: 96)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2571, file: !36, line: 403, baseType: !24, size: 32, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2571, file: !36, line: 404, baseType: !24, size: 32, offset: 160)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2571, file: !36, line: 405, baseType: !24, size: 32, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2571, file: !36, line: 406, baseType: !181, size: 64, offset: 256)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2571, file: !36, line: 407, baseType: !2582, size: 64, offset: 320)
!2582 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !720, line: 132, baseType: !191)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2571, file: !36, line: 408, baseType: !2582, size: 64, offset: 384)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2498, file: !36, line: 442, baseType: !2513, size: 64, offset: 640)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1828, file: !31, line: 1200, baseType: !2586, size: 64, offset: 576)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2588)
!2588 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 54, flags: DIFlagFwdDecl)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1828, file: !31, line: 1201, baseType: !174, size: 64, offset: 640)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1828, file: !31, line: 1202, baseType: !174, size: 64, offset: 704)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1828, file: !31, line: 1203, baseType: !174, size: 64, offset: 768)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1828, file: !31, line: 1204, baseType: !1718, size: 64, offset: 832)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1828, file: !31, line: 1205, baseType: !2594, size: 320, offset: 896)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !2595, line: 48, size: 320, elements: !2596)
!2595 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!2596 = !{!2597, !2598, !2599, !2600, !2601}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2594, file: !2595, line: 49, baseType: !1941, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2594, file: !2595, line: 55, baseType: !1941, size: 64, offset: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !2594, file: !2595, line: 57, baseType: !1951, size: 32, offset: 128)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2594, file: !2595, line: 59, baseType: !1895, size: 32, offset: 160)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !2594, file: !2595, line: 60, baseType: !1453, size: 128, offset: 192)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1828, file: !31, line: 1206, baseType: !126, size: 32, offset: 1216)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1828, file: !31, line: 1207, baseType: !1566, size: 32, offset: 1248)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1828, file: !31, line: 1209, baseType: !179, size: 64, offset: 1280)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1828, file: !31, line: 1211, baseType: !2606, size: 64, offset: 1344)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2609)
!2609 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1211, flags: DIFlagFwdDecl)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1828, file: !31, line: 1223, baseType: !2611, size: 64, offset: 1408)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1735, line: 34, size: 64, elements: !2612)
!2612 = !{!2613}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2611, file: !1735, line: 35, baseType: !1738, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1828, file: !31, line: 1224, baseType: !1453, size: 128, offset: 1472)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1828, file: !31, line: 1225, baseType: !2616, size: 64, offset: 1600)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 1225, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1828, file: !31, line: 1226, baseType: !2619, size: 64, offset: 1664)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !31, line: 1226, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1828, file: !31, line: 1227, baseType: !2622, size: 64, offset: 1728)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1828, file: !31, line: 1228, baseType: !2625, size: 64, offset: 1792)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1228, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1828, file: !31, line: 1229, baseType: !2178, size: 128, offset: 1856)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1828, file: !31, line: 1230, baseType: !24, size: 32, offset: 1984)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1828, file: !31, line: 1231, baseType: !2630, size: 2496, offset: 2048)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !36, line: 521, size: 2496, elements: !2631)
!2631 = !{!2632, !2633, !2634, !2636, !2668}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2630, file: !36, line: 522, baseType: !24, size: 32)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2630, file: !36, line: 523, baseType: !2594, size: 320, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2630, file: !36, line: 524, baseType: !2635, size: 192, offset: 384)
!2635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1683, size: 192, elements: !1609)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2630, file: !36, line: 525, baseType: !2637, size: 1728, offset: 576)
!2637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2638, size: 1728, elements: !1609)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !36, line: 222, size: 576, elements: !2639)
!2639 = !{!2640, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2638, file: !36, line: 223, baseType: !2641, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !36, line: 445, size: 256, elements: !2643)
!2643 = !{!2644, !2645, !2658, !2659}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2642, file: !36, line: 446, baseType: !126, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2642, file: !36, line: 447, baseType: !2646, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2648)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !36, line: 312, size: 512, elements: !2649)
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2648, file: !36, line: 313, baseType: !2346, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2648, file: !36, line: 314, baseType: !2346, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2648, file: !36, line: 315, baseType: !2346, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2648, file: !36, line: 316, baseType: !2346, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2648, file: !36, line: 317, baseType: !2461, size: 64, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2648, file: !36, line: 318, baseType: !2461, size: 64, offset: 320)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2648, file: !36, line: 319, baseType: !2461, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2648, file: !36, line: 320, baseType: !2491, size: 64, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2642, file: !36, line: 448, baseType: !1866, size: 64, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2642, file: !36, line: 449, baseType: !2641, size: 64, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2638, file: !36, line: 224, baseType: !126, size: 32, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2638, file: !36, line: 226, baseType: !1453, size: 128, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2638, file: !36, line: 227, baseType: !174, size: 64, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2638, file: !36, line: 228, baseType: !24, size: 32, offset: 320)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2638, file: !36, line: 229, baseType: !24, size: 32, offset: 352)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2638, file: !36, line: 230, baseType: !2426, size: 64, offset: 384)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2638, file: !36, line: 231, baseType: !2426, size: 64, offset: 448)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2638, file: !36, line: 232, baseType: !179, size: 64, offset: 512)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2630, file: !36, line: 526, baseType: !2669, size: 192, offset: 2304)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2646, size: 192, elements: !1609)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1828, file: !31, line: 1233, baseType: !2671, size: 2368, offset: 4544)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1184, size: 2368, elements: !2672)
!2672 = !{!2673, !2674, !2675}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2671, file: !31, line: 1185, baseType: !177, size: 16)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2671, file: !31, line: 1186, baseType: !177, size: 16, offset: 16)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2671, file: !31, line: 1187, baseType: !2676, size: 2304, offset: 64)
!2676 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2677, size: 2304, elements: !1609)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2678, line: 12, size: 768, elements: !2679)
!2678 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2679 = !{!2680, !2694, !2695, !4772, !4773}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2677, file: !2678, line: 13, baseType: !2681, size: 384)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2682, line: 17, size: 384, elements: !2683)
!2682 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2683 = !{!2684, !2685, !2686, !2693}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2681, file: !2682, line: 18, baseType: !126, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2681, file: !2682, line: 19, baseType: !126, size: 32, offset: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2681, file: !2682, line: 20, baseType: !2687, size: 192, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !2688, line: 41, baseType: !2689)
!2688 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !2688, line: 37, size: 192, elements: !2690)
!2690 = !{!2691, !2692}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2689, file: !2688, line: 38, baseType: !1546, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2689, file: !2688, line: 39, baseType: !1453, size: 128, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2681, file: !2682, line: 22, baseType: !2154, size: 128, align: 64, offset: 256)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2677, file: !2678, line: 14, baseType: !2006, size: 64, offset: 384)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2677, file: !2678, line: 15, baseType: !2696, size: 64, offset: 448)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2697, line: 16, size: 64, elements: !2698)
!2697 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2698 = !{!2699}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2696, file: !2697, line: 17, baseType: !2700, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2376, line: 746, size: 58368, elements: !2702)
!2702 = !{!2703, !2711, !2712, !2713, !2719, !2720, !2721, !2722, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2793, !2804, !2899, !2903, !2906, !2937, !2938, !2939, !2940, !2949, !2951, !2952, !2953, !2954, !2955, !2956, !2967, !2968, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2985, !2986, !2993, !2994, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3950, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3998, !4004, !4005, !4006, !4007, !4008, !4012, !4015, !4022, !4027, !4030, !4033, !4036, !4039, !4177, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4215, !4216, !4217, !4226, !4234, !4235, !4236, !4237, !4238, !4243, !4244, !4245, !4248, !4249, !4252, !4255, !4258, !4266, !4269, !4270, !4356, !4357, !4358, !4359, !4360, !4366, !4367, !4368, !4369, !4372, !4373, !4376, !4379, !4380, !4383, !4384, !4385, !4388, !4389, !4390, !4391, !4392, !4393, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4425, !4426, !4432, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4444, !4516, !4518, !4519, !4520, !4521, !4522, !4523, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546, !4547, !4551, !4552, !4553}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2701, file: !2376, line: 752, baseType: !2704, size: 192)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2705, line: 56, size: 192, elements: !2706)
!2705 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2706 = !{!2707, !2708, !2709, !2710}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2704, file: !2705, line: 57, baseType: !174, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2704, file: !2705, line: 58, baseType: !174, size: 64, offset: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2704, file: !2705, line: 59, baseType: !199, size: 32, offset: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2704, file: !2705, line: 61, baseType: !199, size: 32, offset: 160)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2701, file: !2376, line: 754, baseType: !24, size: 32, offset: 192)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2701, file: !2376, line: 767, baseType: !179, size: 64, offset: 256)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2701, file: !2376, line: 768, baseType: !2714, size: 32, offset: 320)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !2715, line: 113, baseType: !2716)
!2715 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !2715, line: 111, size: 32, elements: !2717)
!2717 = !{!2718}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !2716, file: !2715, line: 112, baseType: !1566, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2701, file: !2376, line: 770, baseType: !24, size: 32, offset: 352)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2701, file: !2376, line: 771, baseType: !24, size: 32, offset: 384)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2701, file: !2376, line: 774, baseType: !126, size: 32, offset: 416)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2701, file: !2376, line: 775, baseType: !2723, size: 128, offset: 448)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2724, line: 58, size: 128, elements: !2725)
!2724 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2725 = !{!2726, !2732, !2737, !2738}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2723, file: !2724, line: 59, baseType: !2727, size: 64)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !2728, line: 60, size: 64, elements: !2729)
!2728 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!2729 = !{!2730}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2727, file: !2728, line: 61, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, scope: !2723, file: !2724, line: 60, baseType: !2733, size: 32, offset: 64)
!2733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2723, file: !2724, line: 60, size: 32, elements: !2734)
!2734 = !{!2735, !2736}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2733, file: !2724, line: 61, baseType: !24, size: 32)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2733, file: !2724, line: 62, baseType: !1566, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2723, file: !2724, line: 65, baseType: !197, size: 16, offset: 96)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2723, file: !2724, line: 65, baseType: !197, size: 16, offset: 112)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2701, file: !2376, line: 776, baseType: !24, size: 32, offset: 576)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2701, file: !2376, line: 777, baseType: !174, size: 64, offset: 640)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2701, file: !2376, line: 778, baseType: !2700, size: 64, offset: 704)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2701, file: !2376, line: 787, baseType: !126, size: 32, offset: 768)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2701, file: !2376, line: 788, baseType: !126, size: 32, offset: 800)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2701, file: !2376, line: 790, baseType: !126, size: 32, offset: 832)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2701, file: !2376, line: 792, baseType: !126, size: 32, offset: 864)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2701, file: !2376, line: 793, baseType: !126, size: 32, offset: 896)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2701, file: !2376, line: 794, baseType: !126, size: 32, offset: 928)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2701, file: !2376, line: 795, baseType: !24, size: 32, offset: 960)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2701, file: !2376, line: 797, baseType: !2750, size: 2048, offset: 1024)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2376, line: 551, size: 2048, elements: !2751)
!2751 = !{!2752, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2772, !2775, !2776, !2777}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2750, file: !2376, line: 553, baseType: !2753, size: 128)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2376, line: 411, size: 128, elements: !2754)
!2754 = !{!2755, !2756}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2753, file: !2376, line: 412, baseType: !174, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2753, file: !2376, line: 413, baseType: !199, size: 32, offset: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2750, file: !2376, line: 554, baseType: !2046, size: 192, align: 64, offset: 128)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2750, file: !2376, line: 555, baseType: !191, size: 64, offset: 320)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2750, file: !2376, line: 556, baseType: !191, size: 64, offset: 384)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2750, file: !2376, line: 558, baseType: !1453, size: 128, offset: 448)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2750, file: !2376, line: 559, baseType: !24, size: 32, offset: 576)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2750, file: !2376, line: 561, baseType: !191, size: 64, offset: 640)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2750, file: !2376, line: 562, baseType: !191, size: 64, offset: 704)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2750, file: !2376, line: 563, baseType: !191, size: 64, offset: 768)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2750, file: !2376, line: 564, baseType: !191, size: 64, offset: 832)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2750, file: !2376, line: 565, baseType: !1947, size: 64, offset: 896)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2750, file: !2376, line: 566, baseType: !191, size: 64, offset: 960)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2750, file: !2376, line: 568, baseType: !191, size: 64, offset: 1024)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2750, file: !2376, line: 571, baseType: !126, size: 32, offset: 1088)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2750, file: !2376, line: 572, baseType: !2771, size: 64, offset: 1152)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2750, file: !2376, line: 574, baseType: !2773, size: 64, offset: 1216)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2376, line: 49, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2750, file: !2376, line: 576, baseType: !2773, size: 64, offset: 1280)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2750, file: !2376, line: 578, baseType: !174, size: 64, offset: 1344)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2750, file: !2376, line: 588, baseType: !2778, size: 512, align: 512, offset: 1536)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2376, line: 497, size: 512, align: 512, elements: !2779)
!2779 = !{!2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2778, file: !2376, line: 498, baseType: !191, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2778, file: !2376, line: 499, baseType: !191, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2778, file: !2376, line: 500, baseType: !191, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2778, file: !2376, line: 501, baseType: !199, size: 32, offset: 192)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2778, file: !2376, line: 502, baseType: !199, size: 32, offset: 224)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2778, file: !2376, line: 503, baseType: !174, size: 64, offset: 256)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2778, file: !2376, line: 504, baseType: !174, size: 64, offset: 320)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2778, file: !2376, line: 505, baseType: !174, size: 64, offset: 384)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2778, file: !2376, line: 506, baseType: !2789, size: 64, align: 64, offset: 448)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2376, line: 445, size: 64, align: 64, elements: !2790)
!2790 = !{!2791, !2792}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2789, file: !2376, line: 446, baseType: !24, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2789, file: !2376, line: 447, baseType: !24, size: 32, offset: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2701, file: !2376, line: 798, baseType: !2794, size: 384, offset: 3072)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2376, line: 592, size: 384, elements: !2795)
!2795 = !{!2796, !2797, !2798, !2799, !2800, !2801, !2802}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2794, file: !2376, line: 593, baseType: !1453, size: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2794, file: !2376, line: 594, baseType: !174, size: 64, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2794, file: !2376, line: 595, baseType: !174, size: 64, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2794, file: !2376, line: 596, baseType: !24, size: 32, offset: 256)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2794, file: !2376, line: 597, baseType: !177, size: 16, offset: 288)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2794, file: !2376, line: 598, baseType: !177, size: 16, offset: 304)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2794, file: !2376, line: 600, baseType: !2803, size: 64, offset: 320)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2701, file: !2376, line: 799, baseType: !2805, size: 1792, offset: 3456)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2376, line: 610, size: 1792, elements: !2806)
!2806 = !{!2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2896, !2897}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2805, file: !2376, line: 611, baseType: !2046, size: 192, align: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2805, file: !2376, line: 618, baseType: !191, size: 64, offset: 192)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2805, file: !2376, line: 619, baseType: !191, size: 64, offset: 256)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2805, file: !2376, line: 620, baseType: !191, size: 64, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2805, file: !2376, line: 621, baseType: !191, size: 64, offset: 384)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2805, file: !2376, line: 622, baseType: !191, size: 64, offset: 448)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2805, file: !2376, line: 629, baseType: !1947, size: 64, offset: 512)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2805, file: !2376, line: 630, baseType: !191, size: 64, offset: 576)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2805, file: !2376, line: 631, baseType: !24, size: 32, offset: 640)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2805, file: !2376, line: 653, baseType: !24, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2805, file: !2376, line: 654, baseType: !24, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2805, file: !2376, line: 655, baseType: !24, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2805, file: !2376, line: 656, baseType: !24, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2805, file: !2376, line: 662, baseType: !2821, size: 512, offset: 704)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !42, line: 118, size: 512, elements: !2822)
!2822 = !{!2823, !2831, !2832, !2837, !2892, !2893, !2894, !2895}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2821, file: !42, line: 119, baseType: !2824, size: 256)
!2824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2825, line: 9, size: 256, elements: !2826)
!2825 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2826 = !{!2827, !2828}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2824, file: !2825, line: 10, baseType: !2046, size: 192, align: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2824, file: !2825, line: 11, baseType: !2829, size: 64, offset: 192)
!2829 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2830, line: 29, baseType: !1947)
!2830 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2821, file: !42, line: 120, baseType: !2829, size: 64, offset: 256)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2821, file: !42, line: 121, baseType: !2833, size: 64, offset: 320)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!41, !2836}
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2821, file: !42, line: 122, baseType: !2838, size: 64, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !42, line: 159, size: 512, align: 512, elements: !2840)
!2840 = !{!2841, !2866, !2867, !2870, !2875, !2876, !2887, !2891}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2839, file: !42, line: 160, baseType: !2842, size: 64)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !42, line: 215, size: 4608, align: 512, elements: !2844)
!2844 = !{!2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2843, file: !42, line: 216, baseType: !1895, size: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2843, file: !42, line: 217, baseType: !24, size: 32, offset: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2843, file: !42, line: 218, baseType: !24, size: 32, offset: 64)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2843, file: !42, line: 219, baseType: !24, size: 32, offset: 96)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2843, file: !42, line: 220, baseType: !24, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2843, file: !42, line: 221, baseType: !24, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2843, file: !42, line: 222, baseType: !24, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2843, file: !42, line: 223, baseType: !24, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2843, file: !42, line: 224, baseType: !24, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2843, file: !42, line: 226, baseType: !24, size: 32, offset: 160)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2843, file: !42, line: 227, baseType: !177, size: 16, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2843, file: !42, line: 228, baseType: !177, size: 16, offset: 208)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2843, file: !42, line: 229, baseType: !24, size: 32, offset: 224)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2843, file: !42, line: 235, baseType: !2829, size: 64, offset: 256)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2843, file: !42, line: 236, baseType: !2836, size: 64, offset: 320)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2843, file: !42, line: 237, baseType: !2829, size: 64, offset: 384)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2843, file: !42, line: 238, baseType: !2836, size: 64, offset: 448)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2843, file: !42, line: 239, baseType: !2863, size: 4096, align: 512, offset: 512)
!2863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2839, size: 4096, align: 512, elements: !2864)
!2864 = !{!2865}
!2865 = !DISubrange(count: 8)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2839, file: !42, line: 161, baseType: !24, size: 32, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2839, file: !42, line: 162, baseType: !2868, size: 32, offset: 96)
!2868 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !720, line: 32, baseType: !2869)
!2869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !722, line: 96, baseType: !126)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2839, file: !42, line: 163, baseType: !2871, size: 32, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !1725, line: 274, baseType: !2872)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !1725, line: 274, size: 32, elements: !2873)
!2873 = !{!2874}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2872, file: !1725, line: 274, baseType: !1729, size: 32)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2839, file: !42, line: 164, baseType: !2836, size: 64, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2839, file: !42, line: 165, baseType: !2877, size: 128, offset: 256)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2825, line: 14, size: 128, elements: !2878)
!2878 = !{!2879}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2877, file: !2825, line: 15, baseType: !2880, size: 128)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !2047, line: 26, size: 128, elements: !2881)
!2881 = !{!2882, !2886}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2880, file: !2047, line: 27, baseType: !2883, size: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !2047, line: 12, size: 64, elements: !2884)
!2884 = !{!2885}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2883, file: !2047, line: 13, baseType: !2051, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2880, file: !2047, line: 28, baseType: !2051, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2839, file: !42, line: 166, baseType: !2888, size: 64, offset: 384)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!2829}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2839, file: !42, line: 167, baseType: !2829, size: 64, offset: 448)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2821, file: !42, line: 123, baseType: !194, size: 8, offset: 448)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2821, file: !42, line: 124, baseType: !194, size: 8, offset: 456)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2821, file: !42, line: 125, baseType: !194, size: 8, offset: 464)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2821, file: !42, line: 126, baseType: !194, size: 8, offset: 472)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2805, file: !2376, line: 671, baseType: !2821, size: 512, offset: 1216)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2805, file: !2376, line: 679, baseType: !2898, size: 64, offset: 1728)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2701, file: !2376, line: 800, baseType: !2900, size: 64, offset: 5248)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2902)
!2902 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2376, line: 800, flags: DIFlagFwdDecl)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2701, file: !2376, line: 809, baseType: !2904, size: 64, offset: 5312)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2376, line: 70, flags: DIFlagFwdDecl)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2701, file: !2376, line: 825, baseType: !2907, size: 2048, align: 512, offset: 5632)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2376, line: 509, size: 2048, align: 512, elements: !2908)
!2908 = !{!2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2907, file: !2376, line: 511, baseType: !191, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2907, file: !2376, line: 512, baseType: !191, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2907, file: !2376, line: 513, baseType: !191, size: 64, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2907, file: !2376, line: 514, baseType: !191, size: 64, offset: 192)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2907, file: !2376, line: 515, baseType: !191, size: 64, offset: 256)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2907, file: !2376, line: 516, baseType: !191, size: 64, offset: 320)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2907, file: !2376, line: 518, baseType: !191, size: 64, offset: 384)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2907, file: !2376, line: 519, baseType: !191, size: 64, offset: 448)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2907, file: !2376, line: 520, baseType: !1947, size: 64, offset: 512)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2907, file: !2376, line: 522, baseType: !191, size: 64, offset: 576)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2907, file: !2376, line: 523, baseType: !191, size: 64, offset: 640)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2907, file: !2376, line: 524, baseType: !1947, size: 64, offset: 704)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2907, file: !2376, line: 526, baseType: !1947, size: 64, offset: 768)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2907, file: !2376, line: 527, baseType: !191, size: 64, offset: 832)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2907, file: !2376, line: 529, baseType: !191, size: 64, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2907, file: !2376, line: 530, baseType: !191, size: 64, offset: 960)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2907, file: !2376, line: 531, baseType: !191, size: 64, offset: 1024)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2907, file: !2376, line: 532, baseType: !191, size: 64, offset: 1088)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2907, file: !2376, line: 533, baseType: !191, size: 64, offset: 1152)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2907, file: !2376, line: 535, baseType: !191, size: 64, offset: 1216)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2907, file: !2376, line: 536, baseType: !191, size: 64, offset: 1280)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2907, file: !2376, line: 537, baseType: !191, size: 64, offset: 1344)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2907, file: !2376, line: 538, baseType: !191, size: 64, offset: 1408)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2907, file: !2376, line: 539, baseType: !191, size: 64, offset: 1472)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2907, file: !2376, line: 540, baseType: !191, size: 64, offset: 1536)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2907, file: !2376, line: 541, baseType: !191, size: 64, offset: 1600)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2907, file: !2376, line: 542, baseType: !191, size: 64, offset: 1664)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2907, file: !2376, line: 543, baseType: !191, size: 64, offset: 1728)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2701, file: !2376, line: 833, baseType: !24, size: 32, offset: 7680)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2701, file: !2376, line: 836, baseType: !24, size: 32, offset: 7712)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2701, file: !2376, line: 837, baseType: !126, size: 32, offset: 7744)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2701, file: !2376, line: 838, baseType: !2941, size: 64, offset: 7808)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2943)
!2943 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2944, line: 19, baseType: !2945)
!2944 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2944, line: 19, size: 64, elements: !2946)
!2946 = !{!2947}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2945, file: !2944, line: 19, baseType: !2948, size: 64)
!2948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 64, elements: !316)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2701, file: !2376, line: 839, baseType: !2950, size: 64, offset: 7872)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2701, file: !2376, line: 840, baseType: !2943, size: 64, offset: 7936)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2701, file: !2376, line: 841, baseType: !179, size: 64, offset: 8000)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2701, file: !2376, line: 843, baseType: !177, size: 16, offset: 8064)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2701, file: !2376, line: 845, baseType: !177, size: 16, offset: 8080)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2701, file: !2376, line: 848, baseType: !126, size: 32, offset: 8096)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2701, file: !2376, line: 849, baseType: !2957, size: 32, offset: 8128)
!2957 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2376, line: 718, size: 32, elements: !2958)
!2958 = !{!2959, !2966}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2957, file: !2376, line: 724, baseType: !2960, size: 32)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2957, file: !2376, line: 719, size: 32, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2965}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2960, file: !2376, line: 720, baseType: !194, size: 8)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2960, file: !2376, line: 721, baseType: !194, size: 8, offset: 8)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2960, file: !2376, line: 722, baseType: !194, size: 8, offset: 16)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2960, file: !2376, line: 723, baseType: !194, size: 8, offset: 24)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2957, file: !2376, line: 725, baseType: !199, size: 32)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2701, file: !2376, line: 850, baseType: !1453, size: 128, offset: 8192)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2701, file: !2376, line: 851, baseType: !2969, size: 64, offset: 8320)
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2376, line: 60, flags: DIFlagFwdDecl)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2701, file: !2376, line: 855, baseType: !174, size: 64, offset: 8384)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2701, file: !2376, line: 856, baseType: !194, size: 8, offset: 8448)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2701, file: !2376, line: 857, baseType: !194, size: 8, offset: 8456)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2701, file: !2376, line: 858, baseType: !126, size: 32, offset: 8480)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2701, file: !2376, line: 859, baseType: !1453, size: 128, offset: 8512)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2701, file: !2376, line: 860, baseType: !126, size: 32, offset: 8640)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2701, file: !2376, line: 861, baseType: !1453, size: 128, offset: 8704)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2701, file: !2376, line: 873, baseType: !2979, size: 256, offset: 8832)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2376, line: 376, size: 256, elements: !2980)
!2980 = !{!2981, !2982, !2983, !2984}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2979, file: !2376, line: 381, baseType: !174, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2979, file: !2376, line: 384, baseType: !181, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2979, file: !2376, line: 389, baseType: !181, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2979, file: !2376, line: 392, baseType: !181, size: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2701, file: !2376, line: 875, baseType: !1453, size: 128, offset: 9088)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2701, file: !2376, line: 877, baseType: !2987, size: 320, offset: 9216)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2988, line: 86, size: 320, elements: !2989)
!2988 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2989 = !{!2990, !2991, !2992}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2987, file: !2988, line: 87, baseType: !126, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2987, file: !2988, line: 88, baseType: !1453, size: 128, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2987, file: !2988, line: 89, baseType: !1453, size: 128, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2701, file: !2376, line: 878, baseType: !2046, size: 192, align: 64, offset: 9536)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2701, file: !2376, line: 881, baseType: !2995, size: 64, offset: 9728)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !55, line: 733, size: 10240, elements: !2997)
!2997 = !{!2998, !3870}
!2998 = !DIDerivedType(tag: DW_TAG_member, scope: !2996, file: !55, line: 734, baseType: !2999, size: 10240)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2996, file: !55, line: 734, size: 10240, elements: !3000)
!3000 = !{!3001, !3005, !3018, !3749, !3750, !3751, !3752, !3753, !3754, !3761, !3762, !3763, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3802, !3804, !3807, !3850, !3851, !3852, !3855, !3856, !3857, !3860, !3861, !3862, !3868, !3869}
!3001 = !DIDerivedType(tag: DW_TAG_member, scope: !2999, file: !55, line: 739, baseType: !3002, size: 512, align: 512)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2999, file: !55, line: 739, size: 512, align: 512, elements: !3003)
!3003 = !{!3004}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !3002, file: !55, line: 747, baseType: !1566, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !2999, file: !55, line: 750, baseType: !3006, size: 128, offset: 512)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !3007, line: 218, size: 128, elements: !3008)
!3007 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!3008 = !{!3009, !3016, !3017}
!3009 = !DIDerivedType(tag: DW_TAG_member, scope: !3006, file: !3007, line: 219, baseType: !3010, size: 32)
!3010 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3006, file: !3007, line: 219, size: 32, elements: !3011)
!3011 = !{!3012, !3013}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !3010, file: !3007, line: 220, baseType: !1546, size: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !3010, file: !3007, line: 221, baseType: !3014)
!3014 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !3007, line: 197, baseType: !3015)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3007, line: 197, elements: !2221)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !3006, file: !3007, line: 223, baseType: !24, size: 32, offset: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !3006, file: !3007, line: 224, baseType: !179, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2999, file: !55, line: 752, baseType: !3019, size: 64, offset: 640)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!174, !3022, !174, !174, !174, !174}
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 994, size: 1856, align: 64, elements: !3024)
!3024 = !{!3025, !3031, !3032, !3034, !3035, !3036, !3037, !3038, !3088, !3278, !3287, !3288, !3289, !3739, !3740, !3741, !3742, !3744, !3745, !3748}
!3025 = !DIDerivedType(tag: DW_TAG_member, scope: !3023, file: !31, line: 995, baseType: !3026, size: 128)
!3026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3023, file: !31, line: 995, size: 128, elements: !3027)
!3027 = !{!3028, !3029, !3030}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !3026, file: !31, line: 996, baseType: !2727, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !3026, file: !31, line: 997, baseType: !2154, size: 128, align: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !3026, file: !31, line: 998, baseType: !24, size: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !3023, file: !31, line: 1005, baseType: !1546, size: 32, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !3023, file: !31, line: 1006, baseType: !3033, size: 32, offset: 160)
!3033 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !720, line: 156, baseType: !24)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !3023, file: !31, line: 1007, baseType: !1941, size: 64, offset: 192)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !3023, file: !31, line: 1008, baseType: !1937, size: 256, offset: 256)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !3023, file: !31, line: 1009, baseType: !1837, size: 64, offset: 512)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !3023, file: !31, line: 1010, baseType: !24, size: 32, offset: 576)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !3023, file: !31, line: 1011, baseType: !3039, size: 256, offset: 640)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 948, size: 256, elements: !3040)
!3040 = !{!3041, !3062, !3084, !3085, !3086, !3087}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3039, file: !31, line: 949, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3043, line: 34, baseType: !3044)
!3043 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3043, line: 25, size: 64, elements: !3045)
!3045 = !{!3046}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3044, file: !3043, line: 26, baseType: !3047, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !3048, line: 27, baseType: !3049)
!3048 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !3048, line: 13, size: 64, elements: !3050)
!3050 = !{!3051, !3061}
!3051 = !DIDerivedType(tag: DW_TAG_member, scope: !3049, file: !3048, line: 14, baseType: !3052, size: 32)
!3052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3049, file: !3048, line: 14, size: 32, elements: !3053)
!3053 = !{!3054, !3055}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !3052, file: !3048, line: 15, baseType: !1566, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, scope: !3052, file: !3048, line: 16, baseType: !3056, size: 32)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3052, file: !3048, line: 16, size: 32, elements: !3057)
!3057 = !{!3058, !3059}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !3056, file: !3048, line: 18, baseType: !194, size: 8)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !3056, file: !3048, line: 19, baseType: !3060, size: 24, offset: 8)
!3060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 24, elements: !1609)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !3049, file: !3048, line: 26, baseType: !1558, size: 32, offset: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3039, file: !31, line: 950, baseType: !3063, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !47, line: 59, size: 768, elements: !3065)
!3065 = !{!3066, !3067, !3068, !3069, !3071, !3072, !3073, !3074}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3064, file: !47, line: 61, baseType: !2714, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3064, file: !47, line: 62, baseType: !24, size: 32, offset: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3064, file: !47, line: 63, baseType: !1546, size: 32, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3064, file: !47, line: 65, baseType: !3070, size: 256, offset: 128)
!3070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2302, size: 256, elements: !1484)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !3064, file: !47, line: 66, baseType: !2302, size: 64, offset: 384)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !3064, file: !47, line: 68, baseType: !2687, size: 192, offset: 448)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3064, file: !47, line: 69, baseType: !2154, size: 128, align: 64, offset: 640)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !3064, file: !47, line: 70, baseType: !3075, offset: 768)
!3075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3076, elements: !3082)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !47, line: 54, size: 128, elements: !3077)
!3077 = !{!3078, !3079}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !3076, file: !47, line: 55, baseType: !126, size: 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3076, file: !47, line: 56, baseType: !3080, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !47, line: 56, flags: DIFlagFwdDecl)
!3082 = !{!3083}
!3083 = !DISubrange(count: -1)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3039, file: !31, line: 951, baseType: !46, size: 32, offset: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3039, file: !31, line: 952, baseType: !1689, size: 32, offset: 160)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3039, file: !31, line: 952, baseType: !1689, size: 32, offset: 192)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3039, file: !31, line: 953, baseType: !126, size: 32, offset: 224)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !3023, file: !31, line: 1012, baseType: !3089, size: 64, offset: 896)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3091)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !3092, line: 110, size: 1472, elements: !3093)
!3092 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!3093 = !{!3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3110, !3111, !3112, !3113, !3114, !3115, !3223, !3224, !3225, !3226, !3227, !3258, !3261, !3265, !3273}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3091, file: !3092, line: 111, baseType: !1941, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3091, file: !3092, line: 112, baseType: !1689, size: 32, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3091, file: !3092, line: 113, baseType: !1698, size: 32, offset: 96)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !3091, file: !3092, line: 114, baseType: !1689, size: 32, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !3091, file: !3092, line: 115, baseType: !1698, size: 32, offset: 160)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3091, file: !3092, line: 116, baseType: !1689, size: 32, offset: 192)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !3091, file: !3092, line: 117, baseType: !1698, size: 32, offset: 224)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !3091, file: !3092, line: 118, baseType: !1689, size: 32, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !3091, file: !3092, line: 119, baseType: !1698, size: 32, offset: 288)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !3091, file: !3092, line: 120, baseType: !24, size: 32, offset: 320)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !3091, file: !3092, line: 121, baseType: !3105, size: 64, offset: 384)
!3105 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !3106, line: 24, baseType: !3107)
!3106 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!3107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3106, line: 24, size: 64, elements: !3108)
!3108 = !{!3109}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3107, file: !3106, line: 24, baseType: !191, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !3091, file: !3092, line: 122, baseType: !3105, size: 64, offset: 448)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !3091, file: !3092, line: 123, baseType: !3105, size: 64, offset: 512)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !3091, file: !3092, line: 124, baseType: !3105, size: 64, offset: 576)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !3091, file: !3092, line: 125, baseType: !3105, size: 64, offset: 640)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !3091, file: !3092, line: 127, baseType: !184, size: 8, offset: 704)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !3091, file: !3092, line: 129, baseType: !3116, size: 64, offset: 768)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !3118, line: 195, size: 1728, elements: !3119)
!3118 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!3119 = !{!3120, !3121, !3124, !3129, !3130, !3133, !3134, !3139, !3140, !3141, !3142, !3145, !3146, !3147, !3148, !3149, !3187, !3208}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3117, file: !3118, line: 196, baseType: !2714, size: 32)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !3117, file: !3118, line: 197, baseType: !3122, size: 32, offset: 32)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !3118, line: 28, baseType: !3123)
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !720, line: 104, baseType: !1933)
!3124 = !DIDerivedType(tag: DW_TAG_member, scope: !3117, file: !3118, line: 198, baseType: !3125, size: 192, offset: 64)
!3125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3117, file: !3118, line: 198, size: 192, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !3125, file: !3118, line: 199, baseType: !1453, size: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !3125, file: !3118, line: 200, baseType: !2046, size: 192, align: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !3117, file: !3118, line: 205, baseType: !2594, size: 320, offset: 256)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !3117, file: !3118, line: 206, baseType: !3131, size: 64, offset: 576)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !3118, line: 206, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3117, file: !3118, line: 207, baseType: !179, size: 64, offset: 640)
!3134 = !DIDerivedType(tag: DW_TAG_member, scope: !3117, file: !3118, line: 208, baseType: !3135, size: 64, offset: 704)
!3135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3117, file: !3118, line: 208, size: 64, elements: !3136)
!3136 = !{!3137, !3138}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !3135, file: !3118, line: 209, baseType: !2434, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !3135, file: !3118, line: 210, baseType: !2434, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !3117, file: !3118, line: 212, baseType: !2434, size: 64, offset: 768)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3117, file: !3118, line: 213, baseType: !1689, size: 32, offset: 832)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3117, file: !3118, line: 214, baseType: !1698, size: 32, offset: 864)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3117, file: !3118, line: 215, baseType: !3143, size: 32, offset: 896)
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !3118, line: 31, baseType: !3144)
!3144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !720, line: 110, baseType: !199)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !3117, file: !3118, line: 216, baseType: !177, size: 16, offset: 928)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !3117, file: !3118, line: 217, baseType: !177, size: 16, offset: 944)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3117, file: !3118, line: 221, baseType: !2072, size: 16, offset: 960)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3117, file: !3118, line: 228, baseType: !174, size: 64, offset: 1024)
!3149 = !DIDerivedType(tag: DW_TAG_member, scope: !3117, file: !3118, line: 245, baseType: !3150, size: 320, offset: 1088)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3117, file: !3118, line: 245, size: 320, elements: !3151)
!3151 = !{!3152, !3179}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !3150, file: !3118, line: 246, baseType: !3153, size: 320)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !3118, line: 114, size: 320, elements: !3154)
!3154 = !{!3155, !3156, !3168, !3171, !3178}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3153, file: !3118, line: 116, baseType: !174, size: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, scope: !3153, file: !3118, line: 117, baseType: !3157, size: 64, offset: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3153, file: !3118, line: 117, size: 64, elements: !3158)
!3158 = !{!3159, !3167}
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !3118, line: 118, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3157, file: !3118, line: 118, size: 64, elements: !3161)
!3161 = !{!3162, !3163}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !3160, file: !3118, line: 120, baseType: !197, size: 16)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3160, file: !3118, line: 121, baseType: !3164, size: 48, offset: 16)
!3164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !3165)
!3165 = !{!3166}
!3166 = !DISubrange(count: 6)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !3157, file: !3118, line: 127, baseType: !174, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3153, file: !3118, line: 129, baseType: !3169, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !3118, line: 102, flags: DIFlagFwdDecl)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !3153, file: !3118, line: 130, baseType: !3172, size: 64, offset: 192)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !3118, line: 108, size: 192, elements: !3174)
!3174 = !{!3175, !3176, !3177}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3173, file: !3118, line: 109, baseType: !2154, size: 128, align: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3173, file: !3118, line: 110, baseType: !2714, size: 32, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !3173, file: !3118, line: 111, baseType: !2014, size: 8, offset: 160)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !3153, file: !3118, line: 131, baseType: !325, size: 64, offset: 256)
!3179 = !DIDerivedType(tag: DW_TAG_member, scope: !3150, file: !3118, line: 247, baseType: !3180, size: 320)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3150, file: !3118, line: 247, size: 320, elements: !3181)
!3181 = !{!3182, !3183, !3184, !3185, !3186}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3180, file: !3118, line: 248, baseType: !174, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !3180, file: !3118, line: 249, baseType: !174, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3180, file: !3118, line: 250, baseType: !3169, size: 64, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !3180, file: !3118, line: 251, baseType: !3172, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !3180, file: !3118, line: 252, baseType: !1608, size: 64, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_member, scope: !3117, file: !3118, line: 260, baseType: !3188, size: 256, offset: 1408)
!3188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3117, file: !3118, line: 260, size: 256, elements: !3189)
!3189 = !{!3190, !3196}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !3188, file: !3118, line: 261, baseType: !3191, size: 256)
!3191 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !3118, line: 134, size: 256, elements: !3192)
!3192 = !{!3193, !3194}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !3191, file: !3118, line: 135, baseType: !179, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3191, file: !3118, line: 136, baseType: !3195, size: 256)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !1484)
!3196 = !DIDerivedType(tag: DW_TAG_member, scope: !3188, file: !3118, line: 262, baseType: !3197, size: 256)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3188, file: !3118, line: 262, size: 256, elements: !3198)
!3198 = !{!3199, !3200}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !3197, file: !3118, line: 264, baseType: !1453, size: 128)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !3197, file: !3118, line: 265, baseType: !3201, size: 128, offset: 128)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !3202, line: 22, size: 128, elements: !3203)
!3202 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!3203 = !{!3204, !3207}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3201, file: !3202, line: 23, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !3202, line: 23, flags: DIFlagFwdDecl)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !3201, file: !3202, line: 24, baseType: !174, size: 64, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !3117, file: !3118, line: 280, baseType: !3209, size: 64, offset: 1664)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !3118, line: 176, size: 192, elements: !3211)
!3211 = !{!3212, !3221, !3222}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !3210, file: !3118, line: 177, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !3118, line: 171, baseType: !3214)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!126, !3116, !3217, !3219, !3116}
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3170)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3191)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3210, file: !3118, line: 178, baseType: !3116, size: 64, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !3210, file: !3118, line: 179, baseType: !3169, size: 64, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !3091, file: !3092, line: 130, baseType: !3116, size: 64, offset: 832)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !3091, file: !3092, line: 131, baseType: !3116, size: 64, offset: 896)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !3091, file: !3092, line: 132, baseType: !3116, size: 64, offset: 960)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3091, file: !3092, line: 135, baseType: !179, size: 64, offset: 1024)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !3091, file: !3092, line: 137, baseType: !3228, size: 64, offset: 1088)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !3230, line: 14, size: 1088, elements: !3231)
!3230 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!3231 = !{!3232, !3233, !3242, !3243, !3244, !3245, !3246, !3247}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3229, file: !3230, line: 15, baseType: !2714, size: 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !3229, file: !3230, line: 17, baseType: !3234, size: 320, offset: 64)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !3235, line: 22, size: 320, elements: !3236)
!3235 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!3236 = !{!3237, !3238, !3239, !3240}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3234, file: !3235, line: 23, baseType: !1895, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3234, file: !3235, line: 24, baseType: !1947, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3234, file: !3235, line: 26, baseType: !1453, size: 128, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !3234, file: !3235, line: 28, baseType: !3241, size: 64, offset: 256)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !3229, file: !3230, line: 19, baseType: !174, size: 64, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !3229, file: !3230, line: 20, baseType: !1941, size: 64, offset: 448)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !3229, file: !3230, line: 23, baseType: !2178, size: 128, offset: 512)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3229, file: !3230, line: 24, baseType: !1689, size: 32, offset: 640)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !3229, file: !3230, line: 29, baseType: !1941, size: 64, offset: 704)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !3229, file: !3230, line: 36, baseType: !3248, size: 320, offset: 768)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !3249, line: 15, size: 320, elements: !3250)
!3249 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!3250 = !{!3251, !3252, !3253, !3254, !3255, !3256, !3257}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3248, file: !3249, line: 16, baseType: !1895, size: 32)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !3248, file: !3249, line: 18, baseType: !126, size: 32, offset: 32)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !3248, file: !3249, line: 19, baseType: !126, size: 32, offset: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !3248, file: !3249, line: 20, baseType: !126, size: 32, offset: 96)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !3248, file: !3249, line: 21, baseType: !126, size: 32, offset: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !3248, file: !3249, line: 22, baseType: !174, size: 64, offset: 192)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3248, file: !3249, line: 23, baseType: !174, size: 64, offset: 256)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !3091, file: !3092, line: 138, baseType: !3259, size: 64, offset: 1152)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !55, line: 901, flags: DIFlagFwdDecl)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !3091, file: !3092, line: 139, baseType: !3262, size: 64, offset: 1216)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !3264, line: 16, flags: DIFlagFwdDecl)
!3264 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !3091, file: !3092, line: 140, baseType: !3266, size: 64, offset: 1280)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !3092, line: 25, size: 64, elements: !3268)
!3268 = !{!3269, !3270, !3271}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3267, file: !3092, line: 26, baseType: !1566, size: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !3267, file: !3092, line: 27, baseType: !126, size: 32, offset: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3267, file: !3092, line: 28, baseType: !3272, offset: 64)
!3272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1698, elements: !3082)
!3273 = !DIDerivedType(tag: DW_TAG_member, scope: !3091, file: !3092, line: 142, baseType: !3274, size: 128, offset: 1344)
!3274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3091, file: !3092, line: 142, size: 128, elements: !3275)
!3275 = !{!3276, !3277}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !3274, file: !3092, line: 143, baseType: !126, size: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3274, file: !3092, line: 144, baseType: !2154, size: 128, align: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !3023, file: !31, line: 1013, baseType: !3279, size: 256, offset: 960)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 970, size: 256, elements: !3280)
!3280 = !{!3281, !3282, !3283, !3284, !3285, !3286}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3279, file: !31, line: 971, baseType: !174, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3279, file: !31, line: 972, baseType: !24, size: 32, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3279, file: !31, line: 973, baseType: !24, size: 32, offset: 96)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3279, file: !31, line: 974, baseType: !24, size: 32, offset: 128)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3279, file: !31, line: 975, baseType: !24, size: 32, offset: 160)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3279, file: !31, line: 976, baseType: !1837, size: 64, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !3023, file: !31, line: 1014, baseType: !2506, size: 128, offset: 1216)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !3023, file: !31, line: 1015, baseType: !1683, size: 64, offset: 1344)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !3023, file: !31, line: 1016, baseType: !3290, size: 64, offset: 1408)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3292)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1914, size: 2112, elements: !3293)
!3293 = !{!3294, !3295, !3299, !3304, !3308, !3337, !3338, !3344, !3357, !3365, !3369, !3370, !3661, !3662, !3666, !3671, !3672, !3676, !3680, !3686, !3687, !3691, !3692, !3698, !3702, !3706, !3712, !3716, !3720, !3724, !3728, !3729, !3735}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3292, file: !31, line: 1915, baseType: !1866, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3292, file: !31, line: 1916, baseType: !3296, size: 64, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{!1837, !3022, !1837, !126}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3292, file: !31, line: 1917, baseType: !3300, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!1640, !3022, !1608, !719, !3303}
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3292, file: !31, line: 1918, baseType: !3305, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!1640, !3022, !325, !719, !3303}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3292, file: !31, line: 1919, baseType: !3309, size: 64, offset: 256)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{!1640, !3312, !3334}
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 373, size: 384, elements: !3314)
!3314 = !{!3315, !3316, !3317, !3321, !3322, !3323, !3324}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3313, file: !31, line: 374, baseType: !3022, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3313, file: !31, line: 375, baseType: !1837, size: 64, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3313, file: !31, line: 376, baseType: !3318, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{null, !3312, !1643}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3313, file: !31, line: 377, baseType: !179, size: 64, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3313, file: !31, line: 378, baseType: !126, size: 32, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3313, file: !31, line: 379, baseType: !197, size: 16, offset: 288)
!3324 = !DIDerivedType(tag: DW_TAG_member, scope: !3313, file: !31, line: 380, baseType: !3325, size: 64, offset: 320)
!3325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3313, file: !31, line: 380, size: 64, elements: !3326)
!3326 = !{!3327, !3330}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3325, file: !31, line: 386, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 386, flags: DIFlagFwdDecl)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3325, file: !31, line: 395, baseType: !3331, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!1640, !179}
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !3336, line: 17, flags: DIFlagFwdDecl)
!3336 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3292, file: !31, line: 1920, baseType: !3309, size: 64, offset: 320)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3292, file: !31, line: 1921, baseType: !3339, size: 64, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!126, !3312, !3342, !24}
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !31, line: 53, flags: DIFlagFwdDecl)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3292, file: !31, line: 1923, baseType: !3345, size: 64, offset: 448)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!126, !3022, !3348}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1858, size: 128, elements: !3350)
!3350 = !{!3351, !3356}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3349, file: !31, line: 1859, baseType: !3352, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1855, baseType: !3353)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!2014, !3348, !325, !126, !1837, !191, !24}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3349, file: !31, line: 1860, baseType: !1837, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3292, file: !31, line: 1924, baseType: !3358, size: 64, offset: 512)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!3361, !3022, !3363}
!3361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3362, line: 59, baseType: !24)
!3362 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1852, line: 31, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3292, file: !31, line: 1925, baseType: !3366, size: 64, offset: 576)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!1643, !3022, !24, !174}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3292, file: !31, line: 1926, baseType: !3366, size: 64, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3292, file: !31, line: 1927, baseType: !3371, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!126, !3022, !3374}
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !55, line: 625, size: 1344, elements: !3376)
!3376 = !{!3377, !3386, !3387, !3395, !3402, !3403, !3408, !3409, !3414, !3415, !3418, !3654, !3655, !3656, !3657, !3658, !3659}
!3377 = !DIDerivedType(tag: DW_TAG_member, scope: !3375, file: !55, line: 628, baseType: !3378, size: 128)
!3378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3375, file: !55, line: 628, size: 128, elements: !3379)
!3379 = !{!3380, !3385}
!3380 = !DIDerivedType(tag: DW_TAG_member, scope: !3378, file: !55, line: 629, baseType: !3381, size: 128)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3378, file: !55, line: 629, size: 128, elements: !3382)
!3382 = !{!3383, !3384}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !3381, file: !55, line: 631, baseType: !174, size: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !3381, file: !55, line: 632, baseType: !174, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !3378, file: !55, line: 635, baseType: !2154, size: 128, align: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !3375, file: !55, line: 639, baseType: !2995, size: 64, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !3375, file: !55, line: 640, baseType: !3388, size: 64, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !3389, line: 297, baseType: !3390)
!3389 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !3389, line: 297, size: 64, elements: !3391)
!3391 = !{!3392}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !3390, file: !3389, line: 297, baseType: !3393, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !3394, line: 19, baseType: !174)
!3394 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!3395 = !DIDerivedType(tag: DW_TAG_member, scope: !3375, file: !55, line: 646, baseType: !3396, size: 64, offset: 256)
!3396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3375, file: !55, line: 646, size: 64, elements: !3397)
!3397 = !{!3398, !3401}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !3396, file: !55, line: 647, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3400)
!3400 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !55, line: 542, baseType: !174)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !3396, file: !55, line: 648, baseType: !3400, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !3375, file: !55, line: 666, baseType: !126, size: 32, offset: 320)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !3375, file: !55, line: 667, baseType: !3404, size: 64, offset: 384)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !55, line: 579, size: 320, elements: !3406)
!3406 = !{!3407}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3405, file: !55, line: 580, baseType: !2594, size: 320)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !3375, file: !55, line: 670, baseType: !2014, size: 8, offset: 448)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !3375, file: !55, line: 681, baseType: !3410, size: 256, offset: 512)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3375, file: !55, line: 678, size: 256, elements: !3411)
!3411 = !{!3412, !3413}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3410, file: !55, line: 679, baseType: !2046, size: 192, align: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !3410, file: !55, line: 680, baseType: !174, size: 64, offset: 192)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !3375, file: !55, line: 689, baseType: !1453, size: 128, offset: 768)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !3375, file: !55, line: 691, baseType: !3416, size: 64, offset: 896)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !55, line: 691, flags: DIFlagFwdDecl)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3375, file: !55, line: 694, baseType: !3419, size: 64, offset: 960)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3421)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !3422, line: 563, size: 1024, elements: !3423)
!3422 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!3423 = !{!3424, !3428, !3429, !3433, !3437, !3441, !3618, !3622, !3626, !3630, !3631, !3632, !3636, !3640, !3646, !3650}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3421, file: !3422, line: 564, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{null, !3374}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3421, file: !3422, line: 569, baseType: !3425, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !3421, file: !3422, line: 571, baseType: !3430, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!126, !3374, !174}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !3421, file: !3422, line: 572, baseType: !3434, size: 64, offset: 192)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!126, !3374}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !3421, file: !3422, line: 578, baseType: !3438, size: 64, offset: 256)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{!126, !3374, !174, !174, !174}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !3421, file: !3422, line: 580, baseType: !3442, size: 64, offset: 320)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DISubroutineType(types: !3444)
!3444 = !{!3445, !3446}
!3445 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !55, line: 1184, baseType: !24)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !3422, line: 512, size: 896, elements: !3448)
!3448 = !{!3449, !3457, !3458, !3465, !3472, !3482, !3611, !3612, !3614, !3616}
!3449 = !DIDerivedType(tag: DW_TAG_member, scope: !3447, file: !3422, line: 513, baseType: !3450, size: 320)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3447, file: !3422, line: 513, size: 320, elements: !3451)
!3451 = !{!3452, !3453, !3454, !3455, !3456}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !3450, file: !3422, line: 514, baseType: !3374, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3450, file: !3422, line: 515, baseType: !2446, size: 32, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3450, file: !3422, line: 516, baseType: !174, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !3450, file: !3422, line: 517, baseType: !174, size: 64, offset: 192)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !3450, file: !3422, line: 518, baseType: !174, size: 64, offset: 256)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3447, file: !3422, line: 520, baseType: !54, size: 32, offset: 320)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3447, file: !3422, line: 522, baseType: !3459, size: 64, offset: 384)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !3394, line: 22, baseType: !3461)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3394, line: 22, size: 64, elements: !3462)
!3462 = !{!3463}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3461, file: !3394, line: 22, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !3394, line: 15, baseType: !174)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3447, file: !3422, line: 524, baseType: !3466, size: 64, offset: 448)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !3389, line: 372, baseType: !3468)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3389, line: 372, size: 64, elements: !3469)
!3469 = !{!3470}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3468, file: !3389, line: 372, baseType: !3471, size: 64)
!3471 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !3394, line: 16, baseType: !174)
!3472 = !DIDerivedType(tag: DW_TAG_member, scope: !3447, file: !3422, line: 527, baseType: !3473, size: 64, offset: 512)
!3473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3447, file: !3422, line: 527, size: 64, elements: !3474)
!3474 = !{!3475, !3481}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3473, file: !3422, line: 528, baseType: !3476, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !3394, line: 21, baseType: !3477)
!3477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3394, line: 21, size: 64, elements: !3478)
!3478 = !{!3479}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3477, file: !3394, line: 21, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !3394, line: 14, baseType: !174)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3473, file: !3422, line: 529, baseType: !3460, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !3447, file: !3422, line: 534, baseType: !3483, size: 64, offset: 576)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !55, line: 74, size: 512, align: 128, elements: !3485)
!3485 = !{!3486, !3487, !3605, !3610}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3484, file: !55, line: 75, baseType: !174, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, scope: !3484, file: !55, line: 83, baseType: !3488, size: 320, offset: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3484, file: !55, line: 83, size: 320, elements: !3489)
!3489 = !{!3490, !3511, !3525, !3529, !3604}
!3490 = !DIDerivedType(tag: DW_TAG_member, scope: !3488, file: !55, line: 84, baseType: !3491, size: 320)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3488, file: !55, line: 84, size: 320, elements: !3492)
!3492 = !{!3493, !3504, !3505, !3510}
!3493 = !DIDerivedType(tag: DW_TAG_member, scope: !3491, file: !55, line: 90, baseType: !3494, size: 128)
!3494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3491, file: !55, line: 90, size: 128, elements: !3495)
!3495 = !{!3496, !3497, !3502, !3503}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3494, file: !55, line: 91, baseType: !1453, size: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, scope: !3494, file: !55, line: 94, baseType: !3498, size: 128)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3494, file: !55, line: 94, size: 128, elements: !3499)
!3499 = !{!3500, !3501}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3498, file: !55, line: 96, baseType: !179, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3498, file: !55, line: 98, baseType: !24, size: 32, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !3494, file: !55, line: 102, baseType: !1453, size: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !3494, file: !55, line: 103, baseType: !1453, size: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3491, file: !55, line: 106, baseType: !1679, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, scope: !3491, file: !55, line: 107, baseType: !3506, size: 64, offset: 192)
!3506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3491, file: !55, line: 107, size: 64, elements: !3507)
!3507 = !{!3508, !3509}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3506, file: !55, line: 108, baseType: !174, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !3506, file: !55, line: 109, baseType: !174, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3491, file: !55, line: 117, baseType: !174, size: 64, offset: 256)
!3511 = !DIDerivedType(tag: DW_TAG_member, scope: !3488, file: !55, line: 119, baseType: !3512, size: 320)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3488, file: !55, line: 119, size: 320, elements: !3513)
!3513 = !{!3514, !3515, !3518, !3519, !3520}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !3512, file: !55, line: 124, baseType: !174, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !3512, file: !55, line: 125, baseType: !3516, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !55, line: 125, flags: DIFlagFwdDecl)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !3512, file: !55, line: 126, baseType: !174, size: 64, offset: 128)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !3512, file: !55, line: 127, baseType: !174, size: 64, offset: 192)
!3520 = !DIDerivedType(tag: DW_TAG_member, scope: !3512, file: !55, line: 128, baseType: !3521, size: 64, offset: 256)
!3521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3512, file: !55, line: 128, size: 64, elements: !3522)
!3522 = !{!3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !3521, file: !55, line: 133, baseType: !174, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !3521, file: !55, line: 138, baseType: !1941, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, scope: !3488, file: !55, line: 141, baseType: !3526, size: 64)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3488, file: !55, line: 141, size: 64, elements: !3527)
!3527 = !{!3528}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !3526, file: !55, line: 142, baseType: !174, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, scope: !3488, file: !55, line: 144, baseType: !3530, size: 128)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3488, file: !55, line: 144, size: 128, elements: !3531)
!3531 = !{!3532, !3603}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !3530, file: !55, line: 146, baseType: !3533, size: 64)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !71, line: 126, size: 1216, elements: !3535)
!3535 = !{!3536, !3546, !3567, !3568, !3569, !3570, !3571, !3585, !3586, !3587}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !3534, file: !71, line: 127, baseType: !3537, size: 384)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !71, line: 21, size: 384, elements: !3538)
!3538 = !{!3539, !3540, !3542, !3543, !3544, !3545}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !3537, file: !71, line: 22, baseType: !174, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !3537, file: !71, line: 23, baseType: !3541, size: 64, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !3537, file: !71, line: 24, baseType: !3541, size: 64, offset: 128)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3537, file: !71, line: 25, baseType: !174, size: 64, offset: 192)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3537, file: !71, line: 26, baseType: !174, size: 64, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3537, file: !71, line: 27, baseType: !174, size: 64, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3534, file: !71, line: 128, baseType: !3547, size: 128, offset: 384)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !3548, line: 105, size: 128, elements: !3549)
!3548 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!3549 = !{!3550, !3551}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !3547, file: !3548, line: 110, baseType: !174, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3547, file: !3548, line: 118, baseType: !3552, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !3548, line: 95, size: 448, elements: !3554)
!3554 = !{!3555, !3556, !3562, !3563, !3564, !3565, !3566}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3553, file: !3548, line: 96, baseType: !1941, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3553, file: !3548, line: 97, baseType: !3557, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !3548, line: 60, baseType: !3559)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{null, !3561}
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !3553, file: !3548, line: 98, baseType: !3557, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !3553, file: !3548, line: 99, baseType: !2014, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !3553, file: !3548, line: 100, baseType: !2014, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3553, file: !3548, line: 101, baseType: !2154, size: 128, align: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !3553, file: !3548, line: 102, baseType: !3561, size: 64, offset: 384)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !3534, file: !71, line: 129, baseType: !1886, size: 256, offset: 512)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3534, file: !71, line: 130, baseType: !70, size: 32, offset: 768)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3534, file: !71, line: 131, baseType: !24, size: 32, offset: 800)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !3534, file: !71, line: 132, baseType: !174, size: 64, offset: 832)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3534, file: !71, line: 133, baseType: !3572, size: 64, offset: 896)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3574)
!3574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !71, line: 77, size: 192, elements: !3575)
!3575 = !{!3576, !3580, !3581}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !3574, file: !71, line: 83, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DISubroutineType(types: !3579)
!3579 = !{null, !3483}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !3574, file: !71, line: 89, baseType: !3442, size: 64, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !3574, file: !71, line: 100, baseType: !3582, size: 64, offset: 128)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!126, !3533, !174, !174, !126}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3534, file: !71, line: 134, baseType: !179, size: 64, offset: 960)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !3534, file: !71, line: 135, baseType: !126, size: 32, offset: 1024)
!3587 = !DIDerivedType(tag: DW_TAG_member, scope: !3534, file: !71, line: 136, baseType: !3588, size: 128, offset: 1088)
!3588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3534, file: !71, line: 136, size: 128, elements: !3589)
!3589 = !{!3590, !3596}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3588, file: !71, line: 137, baseType: !3591, size: 128)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3592, line: 6, size: 128, elements: !3593)
!3592 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3593 = !{!3594, !3595}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3591, file: !3592, line: 7, baseType: !191, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3591, file: !3592, line: 8, baseType: !191, size: 64, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, scope: !3588, file: !71, line: 138, baseType: !3597)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3588, file: !71, line: 138, elements: !3598)
!3598 = !{!3599, !3601}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3597, file: !71, line: 138, baseType: !3600)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3597, file: !71, line: 138, elements: !2221)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3597, file: !71, line: 138, baseType: !3602)
!3602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3591, elements: !3082)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !3530, file: !55, line: 147, baseType: !179, size: 64, offset: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3488, file: !55, line: 161, baseType: !2154, size: 128, align: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, scope: !3484, file: !55, line: 164, baseType: !3606, size: 32, offset: 384)
!3606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3484, file: !55, line: 164, size: 32, elements: !3607)
!3607 = !{!3608, !3609}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3606, file: !55, line: 169, baseType: !1566, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3606, file: !55, line: 177, baseType: !24, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3484, file: !55, line: 181, baseType: !1566, size: 32, offset: 416)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3447, file: !3422, line: 535, baseType: !3483, size: 64, offset: 640)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3447, file: !3422, line: 541, baseType: !3613, size: 64, offset: 704)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !3447, file: !3422, line: 545, baseType: !3615, size: 64, offset: 768)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !3447, file: !3422, line: 549, baseType: !3617, size: 64, offset: 832)
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !3389, line: 520, baseType: !3483)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !3421, file: !3422, line: 581, baseType: !3619, size: 64, offset: 384)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DISubroutineType(types: !3621)
!3621 = !{!3445, !3446, !24}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !3421, file: !3422, line: 582, baseType: !3623, size: 64, offset: 448)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!3445, !3446, !174, !174}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !3421, file: !3422, line: 584, baseType: !3627, size: 64, offset: 512)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!174, !3374}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !3421, file: !3422, line: 588, baseType: !3442, size: 64, offset: 576)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !3421, file: !3422, line: 591, baseType: !3442, size: 64, offset: 640)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !3421, file: !3422, line: 597, baseType: !3633, size: 64, offset: 704)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!126, !3374, !174, !179, !126, !126}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3421, file: !3422, line: 603, baseType: !3637, size: 64, offset: 768)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!325, !3374}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !3421, file: !3422, line: 613, baseType: !3641, size: 64, offset: 832)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!126, !3374, !3644}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !55, line: 717, flags: DIFlagFwdDecl)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !3421, file: !3422, line: 625, baseType: !3647, size: 64, offset: 896)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!3644, !3374, !174}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !3421, file: !3422, line: 633, baseType: !3651, size: 64, offset: 960)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!3483, !3374, !174}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !3375, file: !55, line: 697, baseType: !174, size: 64, offset: 1024)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !3375, file: !55, line: 699, baseType: !3022, size: 64, offset: 1088)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !3375, file: !55, line: 700, baseType: !179, size: 64, offset: 1152)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !3375, file: !55, line: 711, baseType: !1941, size: 64, offset: 1216)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !3375, file: !55, line: 717, baseType: !3644, size: 64, offset: 1280)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !3375, file: !55, line: 722, baseType: !3660, offset: 1344)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !55, line: 570, elements: !2221)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3292, file: !31, line: 1928, baseType: !174, size: 64, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3292, file: !31, line: 1929, baseType: !3663, size: 64, offset: 832)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!126, !1683, !3022}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3292, file: !31, line: 1930, baseType: !3667, size: 64, offset: 896)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!126, !3022, !3670}
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1061, baseType: !179)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3292, file: !31, line: 1931, baseType: !3663, size: 64, offset: 960)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3292, file: !31, line: 1932, baseType: !3673, size: 64, offset: 1024)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!126, !3022, !1837, !1837, !126}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3292, file: !31, line: 1933, baseType: !3677, size: 64, offset: 1088)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DISubroutineType(types: !3679)
!3679 = !{!126, !126, !3022, !126}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3292, file: !31, line: 1934, baseType: !3681, size: 64, offset: 1152)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!126, !3022, !126, !3684}
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1063, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3292, file: !31, line: 1935, baseType: !3019, size: 64, offset: 1216)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3292, file: !31, line: 1936, baseType: !3688, size: 64, offset: 1280)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!126, !126}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3292, file: !31, line: 1937, baseType: !3681, size: 64, offset: 1344)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3292, file: !31, line: 1938, baseType: !3693, size: 64, offset: 1408)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!1640, !3696, !3022, !3303, !719, !24}
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2376, line: 59, flags: DIFlagFwdDecl)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3292, file: !31, line: 1939, baseType: !3699, size: 64, offset: 1472)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!1640, !3022, !3303, !3696, !719, !24}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3292, file: !31, line: 1940, baseType: !3703, size: 64, offset: 1536)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{null, !3022}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3292, file: !31, line: 1941, baseType: !3707, size: 64, offset: 1600)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!126, !3022, !126, !3710, !3711}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3292, file: !31, line: 1942, baseType: !3713, size: 64, offset: 1664)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!1643, !3022, !126, !1837, !1837}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3292, file: !31, line: 1944, baseType: !3717, size: 64, offset: 1728)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{null, !2374, !3022}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3292, file: !31, line: 1948, baseType: !3721, size: 64, offset: 1792)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!1640, !3022, !1837, !3022, !1837, !719, !24}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3292, file: !31, line: 1950, baseType: !3725, size: 64, offset: 1856)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!1837, !3022, !1837, !3022, !1837, !1837, !24}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3292, file: !31, line: 1953, baseType: !3673, size: 64, offset: 1920)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3292, file: !31, line: 1954, baseType: !3730, size: 64, offset: 1984)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!126, !3733, !24}
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !31, line: 1911, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3292, file: !31, line: 1955, baseType: !3736, size: 64, offset: 2048)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!126, !3733, !3342, !24}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !3023, file: !31, line: 1018, baseType: !191, size: 64, offset: 1472)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !3023, file: !31, line: 1020, baseType: !179, size: 64, offset: 1536)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !3023, file: !31, line: 1023, baseType: !179, size: 64, offset: 1600)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !3023, file: !31, line: 1027, baseType: !3743, size: 64, offset: 1664)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !3023, file: !31, line: 1029, baseType: !1679, size: 64, offset: 1728)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !3023, file: !31, line: 1030, baseType: !3746, size: 32, offset: 1792)
!3746 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3747, line: 8, baseType: !199)
!3747 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !3023, file: !31, line: 1031, baseType: !3746, size: 32, offset: 1824)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !2999, file: !55, line: 756, baseType: !174, size: 64, offset: 704)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !2999, file: !55, line: 757, baseType: !174, size: 64, offset: 768)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !2999, file: !55, line: 760, baseType: !174, size: 64, offset: 832)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !2999, file: !55, line: 761, baseType: !174, size: 64, offset: 896)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !2999, file: !55, line: 763, baseType: !174, size: 64, offset: 960)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2999, file: !55, line: 764, baseType: !3755, size: 64, offset: 1024)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !3389, line: 299, baseType: !3757)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3389, line: 299, size: 64, elements: !3758)
!3758 = !{!3759}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3757, file: !3389, line: 299, baseType: !3760, size: 64)
!3760 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !3394, line: 18, baseType: !174)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !2999, file: !55, line: 773, baseType: !1566, size: 32, offset: 1088)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !2999, file: !55, line: 785, baseType: !1566, size: 32, offset: 1120)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !2999, file: !55, line: 795, baseType: !3764, size: 64, offset: 1152)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !55, line: 726, size: 128, elements: !3766)
!3766 = !{!3767, !3768}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3765, file: !55, line: 727, baseType: !191, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3765, file: !55, line: 728, baseType: !126, size: 32, offset: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !2999, file: !55, line: 801, baseType: !174, size: 64, offset: 1216)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !2999, file: !55, line: 804, baseType: !1941, size: 64, offset: 1280)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !2999, file: !55, line: 806, baseType: !126, size: 32, offset: 1344)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !2999, file: !55, line: 808, baseType: !1546, size: 32, offset: 1376)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !2999, file: !55, line: 823, baseType: !2594, size: 320, offset: 1408)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !2999, file: !55, line: 825, baseType: !1453, size: 128, offset: 1728)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !2999, file: !55, line: 845, baseType: !126, size: 32, offset: 1856)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2999, file: !55, line: 849, baseType: !174, size: 64, offset: 1920)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2999, file: !55, line: 850, baseType: !174, size: 64, offset: 1984)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !2999, file: !55, line: 852, baseType: !174, size: 64, offset: 2048)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2999, file: !55, line: 853, baseType: !174, size: 64, offset: 2112)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !2999, file: !55, line: 854, baseType: !1943, size: 64, offset: 2176)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !2999, file: !55, line: 855, baseType: !174, size: 64, offset: 2240)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !2999, file: !55, line: 856, baseType: !174, size: 64, offset: 2304)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !2999, file: !55, line: 857, baseType: !174, size: 64, offset: 2368)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !2999, file: !55, line: 858, baseType: !174, size: 64, offset: 2432)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !2999, file: !55, line: 865, baseType: !1729, size: 32, offset: 2496)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !2999, file: !55, line: 867, baseType: !1546, size: 32, offset: 2528)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !2999, file: !55, line: 869, baseType: !174, size: 64, offset: 2560)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !2999, file: !55, line: 869, baseType: !174, size: 64, offset: 2624)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !2999, file: !55, line: 869, baseType: !174, size: 64, offset: 2688)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !2999, file: !55, line: 869, baseType: !174, size: 64, offset: 2752)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !2999, file: !55, line: 870, baseType: !174, size: 64, offset: 2816)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !2999, file: !55, line: 870, baseType: !174, size: 64, offset: 2880)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !2999, file: !55, line: 870, baseType: !174, size: 64, offset: 2944)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !2999, file: !55, line: 871, baseType: !174, size: 64, offset: 3008)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !2999, file: !55, line: 871, baseType: !174, size: 64, offset: 3072)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !2999, file: !55, line: 871, baseType: !174, size: 64, offset: 3136)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !2999, file: !55, line: 871, baseType: !174, size: 64, offset: 3200)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !2999, file: !55, line: 873, baseType: !3799, size: 3328, offset: 3264)
!3799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, size: 3328, elements: !3800)
!3800 = !{!3801}
!3801 = !DISubrange(count: 52)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !2999, file: !55, line: 875, baseType: !3803, size: 1280, offset: 6592)
!3803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3234, size: 1280, elements: !1484)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !2999, file: !55, line: 877, baseType: !3805, size: 64, offset: 7872)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !55, line: 877, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2999, file: !55, line: 880, baseType: !3808, size: 1088, offset: 7936)
!3808 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3809, line: 72, baseType: !3810)
!3809 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3809, line: 23, size: 1088, elements: !3811)
!3811 = !{!3812, !3813, !3814, !3815, !3816, !3819, !3820, !3821, !3822, !3847, !3848, !3849}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3810, file: !3809, line: 28, baseType: !191, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3810, file: !3809, line: 38, baseType: !1943, size: 64, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3810, file: !3809, line: 40, baseType: !174, size: 64, offset: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3810, file: !3809, line: 43, baseType: !2594, size: 320, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3810, file: !3809, line: 44, baseType: !3817, size: 64, offset: 512)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3809, line: 44, flags: DIFlagFwdDecl)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3810, file: !3809, line: 48, baseType: !174, size: 64, offset: 576)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3810, file: !3809, line: 59, baseType: !1937, size: 256, offset: 640)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3810, file: !3809, line: 60, baseType: !179, size: 64, offset: 896)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3810, file: !3809, line: 61, baseType: !3823, size: 64, offset: 960)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3825)
!3825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3826, line: 13, size: 1216, elements: !3827)
!3826 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3827 = !{!3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3825, file: !3826, line: 14, baseType: !179, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3825, file: !3826, line: 15, baseType: !174, size: 64, offset: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3825, file: !3826, line: 17, baseType: !174, size: 64, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3825, file: !3826, line: 17, baseType: !174, size: 64, offset: 192)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3825, file: !3826, line: 18, baseType: !174, size: 64, offset: 256)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3825, file: !3826, line: 18, baseType: !174, size: 64, offset: 320)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3825, file: !3826, line: 19, baseType: !360, size: 64, offset: 384)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3825, file: !3826, line: 21, baseType: !1643, size: 64, offset: 448)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3825, file: !3826, line: 23, baseType: !1643, size: 64, offset: 512)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3825, file: !3826, line: 24, baseType: !1643, size: 64, offset: 576)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3825, file: !3826, line: 25, baseType: !1643, size: 64, offset: 640)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3825, file: !3826, line: 26, baseType: !1643, size: 64, offset: 704)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3825, file: !3826, line: 27, baseType: !1643, size: 64, offset: 768)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3825, file: !3826, line: 28, baseType: !1643, size: 64, offset: 832)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3825, file: !3826, line: 29, baseType: !1643, size: 64, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3825, file: !3826, line: 30, baseType: !1643, size: 64, offset: 960)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3825, file: !3826, line: 31, baseType: !1643, size: 64, offset: 1024)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3825, file: !3826, line: 32, baseType: !1643, size: 64, offset: 1088)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3825, file: !3826, line: 33, baseType: !1643, size: 64, offset: 1152)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3810, file: !3809, line: 63, baseType: !1566, size: 32, offset: 1024)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3810, file: !3809, line: 69, baseType: !197, size: 16, offset: 1056)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3810, file: !3809, line: 70, baseType: !2070, size: 16, offset: 1072)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2999, file: !55, line: 882, baseType: !174, size: 64, offset: 9024)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !2999, file: !55, line: 885, baseType: !1546, size: 32, offset: 9088)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !2999, file: !55, line: 886, baseType: !3853, size: 64, offset: 9152)
!3853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3854, size: 64)
!3854 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !55, line: 732, flags: DIFlagFwdDecl)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2999, file: !55, line: 901, baseType: !3259, size: 64, offset: 9216)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !2999, file: !55, line: 904, baseType: !3022, size: 64, offset: 9280)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !2999, file: !55, line: 906, baseType: !3858, size: 64, offset: 9344)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !55, line: 906, flags: DIFlagFwdDecl)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !2999, file: !55, line: 930, baseType: !1566, size: 32, offset: 9408)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !2999, file: !55, line: 933, baseType: !1566, size: 32, offset: 9440)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !2999, file: !55, line: 935, baseType: !3863, size: 64, offset: 9472)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !85, line: 103, size: 64, elements: !3864)
!3864 = !{!3865}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3863, file: !85, line: 104, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !85, line: 101, flags: DIFlagFwdDecl)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !2999, file: !55, line: 940, baseType: !1941, size: 64, offset: 9536)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !2999, file: !55, line: 942, baseType: !2192, size: 256, offset: 9600)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !2996, file: !55, line: 986, baseType: !3871, offset: 10240)
!3871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !174, elements: !3082)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2701, file: !2376, line: 882, baseType: !2995, size: 64, offset: 9792)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2701, file: !2376, line: 884, baseType: !126, size: 32, offset: 9856)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2701, file: !2376, line: 885, baseType: !126, size: 32, offset: 9888)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2701, file: !2376, line: 886, baseType: !126, size: 32, offset: 9920)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2701, file: !2376, line: 888, baseType: !126, size: 32, offset: 9952)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2701, file: !2376, line: 890, baseType: !174, size: 64, offset: 9984)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2701, file: !2376, line: 893, baseType: !24, size: 32, offset: 10048)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2701, file: !2376, line: 896, baseType: !24, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2701, file: !2376, line: 897, baseType: !24, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2701, file: !2376, line: 898, baseType: !24, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2701, file: !2376, line: 899, baseType: !24, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2701, file: !2376, line: 919, baseType: !24, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2701, file: !2376, line: 922, baseType: !24, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2701, file: !2376, line: 923, baseType: !24, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2701, file: !2376, line: 925, baseType: !24, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2701, file: !2376, line: 939, baseType: !24, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2701, file: !2376, line: 941, baseType: !24, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2701, file: !2376, line: 944, baseType: !24, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2701, file: !2376, line: 956, baseType: !24, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2701, file: !2376, line: 962, baseType: !24, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2701, file: !2376, line: 966, baseType: !24, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2701, file: !2376, line: 969, baseType: !174, size: 64, offset: 10176)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2701, file: !2376, line: 971, baseType: !3895, size: 448, offset: 10240)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !79, line: 25, size: 448, elements: !3896)
!3896 = !{!3897, !3898, !3903}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3895, file: !79, line: 26, baseType: !174, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3895, file: !79, line: 27, baseType: !3899, size: 64, offset: 64)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!1643, !3902}
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, scope: !3895, file: !79, line: 28, baseType: !3904, size: 320, offset: 128)
!3904 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3895, file: !79, line: 28, size: 320, elements: !3905)
!3905 = !{!3906, !3915, !3940}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3904, file: !79, line: 37, baseType: !3907, size: 320)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3904, file: !79, line: 30, size: 320, elements: !3908)
!3908 = !{!3909, !3910, !3911, !3912, !3913, !3914}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3907, file: !79, line: 31, baseType: !198, size: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3907, file: !79, line: 32, baseType: !199, size: 32, offset: 64)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3907, file: !79, line: 33, baseType: !199, size: 32, offset: 96)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3907, file: !79, line: 34, baseType: !199, size: 32, offset: 128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3907, file: !79, line: 35, baseType: !191, size: 64, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3907, file: !79, line: 36, baseType: !198, size: 64, offset: 256)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3904, file: !79, line: 47, baseType: !3916, size: 192)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3904, file: !79, line: 39, size: 192, elements: !3917)
!3917 = !{!3918, !3919, !3920, !3939}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3916, file: !79, line: 40, baseType: !2868, size: 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3916, file: !79, line: 41, baseType: !78, size: 32, offset: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, scope: !3916, file: !79, line: 42, baseType: !3921, size: 64, offset: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3916, file: !79, line: 42, size: 64, elements: !3922)
!3922 = !{!3923, !3931}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3921, file: !79, line: 43, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3926, line: 7, size: 128, elements: !3927)
!3926 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3927 = !{!3928, !3930}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3925, file: !3926, line: 8, baseType: !3929, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !722, line: 93, baseType: !1839)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3925, file: !3926, line: 9, baseType: !1839, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3921, file: !79, line: 44, baseType: !3932, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3934, line: 7, size: 64, elements: !3935)
!3934 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3935 = !{!3936, !3938}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3933, file: !3934, line: 8, baseType: !3937, size: 32)
!3937 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3934, line: 5, baseType: !1933)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3933, file: !3934, line: 9, baseType: !1933, size: 32, offset: 32)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3916, file: !79, line: 46, baseType: !191, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3904, file: !79, line: 55, baseType: !3941, size: 256)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3904, file: !79, line: 49, size: 256, elements: !3942)
!3942 = !{!3943, !3946, !3947, !3948, !3949}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3941, file: !79, line: 50, baseType: !3944, size: 64)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !79, line: 14, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3941, file: !79, line: 51, baseType: !126, size: 32, offset: 64)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3941, file: !79, line: 52, baseType: !126, size: 32, offset: 96)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3941, file: !79, line: 53, baseType: !174, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3941, file: !79, line: 54, baseType: !174, size: 64, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2701, file: !2376, line: 973, baseType: !3951, size: 32, offset: 10688)
!3951 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !720, line: 27, baseType: !3952)
!3952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !722, line: 28, baseType: !126)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2701, file: !2376, line: 974, baseType: !3951, size: 32, offset: 10720)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2701, file: !2376, line: 978, baseType: !174, size: 64, offset: 10752)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2701, file: !2376, line: 987, baseType: !2700, size: 64, offset: 10816)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2701, file: !2376, line: 990, baseType: !2700, size: 64, offset: 10880)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2701, file: !2376, line: 995, baseType: !1453, size: 128, offset: 10944)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2701, file: !2376, line: 996, baseType: !1453, size: 128, offset: 11072)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2701, file: !2376, line: 997, baseType: !2700, size: 64, offset: 11200)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2701, file: !2376, line: 1005, baseType: !1453, size: 128, offset: 11264)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2701, file: !2376, line: 1006, baseType: !1453, size: 128, offset: 11392)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2701, file: !2376, line: 1009, baseType: !3063, size: 64, offset: 11520)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2701, file: !2376, line: 1010, baseType: !3964, size: 512, offset: 11584)
!3964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2178, size: 512, elements: !1484)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2701, file: !2376, line: 1011, baseType: !1453, size: 128, offset: 12096)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2701, file: !2376, line: 1012, baseType: !1453, size: 128, offset: 12224)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2701, file: !2376, line: 1014, baseType: !1885, size: 64, offset: 12352)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2701, file: !2376, line: 1017, baseType: !2063, size: 64, offset: 12416)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2701, file: !2376, line: 1020, baseType: !2063, size: 64, offset: 12480)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2701, file: !2376, line: 1023, baseType: !179, size: 64, offset: 12544)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2701, file: !2376, line: 1025, baseType: !191, size: 64, offset: 12608)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2701, file: !2376, line: 1026, baseType: !191, size: 64, offset: 12672)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2701, file: !2376, line: 1031, baseType: !191, size: 64, offset: 12736)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2701, file: !2376, line: 1032, baseType: !3975, size: 192, offset: 12800)
!3975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2376, line: 324, size: 192, elements: !3976)
!3976 = !{!3977, !3978, !3979}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3975, file: !2376, line: 326, baseType: !191, size: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3975, file: !2376, line: 327, baseType: !191, size: 64, offset: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3975, file: !2376, line: 328, baseType: !1895, size: 32, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2701, file: !2376, line: 1041, baseType: !174, size: 64, offset: 12992)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2701, file: !2376, line: 1042, baseType: !174, size: 64, offset: 13056)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2701, file: !2376, line: 1045, baseType: !191, size: 64, offset: 13120)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2701, file: !2376, line: 1048, baseType: !191, size: 64, offset: 13184)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2701, file: !2376, line: 1051, baseType: !174, size: 64, offset: 13248)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2701, file: !2376, line: 1052, baseType: !174, size: 64, offset: 13312)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2701, file: !2376, line: 1055, baseType: !3987, size: 640, offset: 13376)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3988, line: 132, size: 640, elements: !3989)
!3988 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3989 = !{!3990, !3996, !3997}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3987, file: !3988, line: 133, baseType: !3991, size: 576)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3992, size: 576, elements: !1609)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3988, line: 117, size: 192, elements: !3993)
!3993 = !{!3994, !3995}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3992, file: !3988, line: 118, baseType: !191, size: 64)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3992, file: !3988, line: 119, baseType: !2877, size: 128, offset: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3987, file: !3988, line: 134, baseType: !24, size: 32, offset: 576)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3987, file: !3988, line: 135, baseType: !24, size: 32, offset: 608)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2701, file: !2376, line: 1058, baseType: !3999, size: 448, offset: 14016)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3988, line: 144, size: 448, elements: !4000)
!4000 = !{!4001, !4002, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3999, file: !3988, line: 145, baseType: !2154, size: 128, align: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3999, file: !3988, line: 146, baseType: !1937, size: 256, offset: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3999, file: !3988, line: 147, baseType: !24, size: 32, offset: 384)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2701, file: !2376, line: 1064, baseType: !3089, size: 64, offset: 14464)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2701, file: !2376, line: 1067, baseType: !3089, size: 64, offset: 14528)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2701, file: !2376, line: 1070, baseType: !3089, size: 64, offset: 14592)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2701, file: !2376, line: 1074, baseType: !3116, size: 64, offset: 14656)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2701, file: !2376, line: 1084, baseType: !4009, size: 128, offset: 14720)
!4009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !4010)
!4010 = !{!4011}
!4011 = !DISubrange(count: 16)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2701, file: !2376, line: 1086, baseType: !4013, size: 64, offset: 14848)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2376, line: 55, flags: DIFlagFwdDecl)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2701, file: !2376, line: 1089, baseType: !4016, size: 64, offset: 14912)
!4016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4017, line: 12, size: 64, elements: !4018)
!4017 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4018 = !{!4019}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4016, file: !4017, line: 13, baseType: !4020, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4017, line: 8, flags: DIFlagFwdDecl)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2701, file: !2376, line: 1090, baseType: !4023, size: 128, offset: 14976)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4024, line: 13, size: 128, elements: !4025)
!4024 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4025 = !{!4026}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4023, file: !4024, line: 14, baseType: !1453, size: 128)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2701, file: !2376, line: 1097, baseType: !4028, size: 64, offset: 15104)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2376, line: 50, flags: DIFlagFwdDecl)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2701, file: !2376, line: 1100, baseType: !4031, size: 64, offset: 15168)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2376, line: 1100, flags: DIFlagFwdDecl)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2701, file: !2376, line: 1103, baseType: !4034, size: 64, offset: 15232)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2376, line: 53, flags: DIFlagFwdDecl)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2701, file: !2376, line: 1107, baseType: !4037, size: 64, offset: 15296)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2376, line: 56, flags: DIFlagFwdDecl)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2701, file: !2376, line: 1110, baseType: !4040, size: 64, offset: 15360)
!4040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4041, size: 64)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4042, line: 93, size: 8768, elements: !4043)
!4042 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4043 = !{!4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4091, !4100, !4101, !4103, !4104, !4105, !4108, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4146, !4147, !4154, !4164, !4167, !4168, !4171, !4172, !4173, !4174, !4175, !4176}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4041, file: !4042, line: 94, baseType: !2714, size: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4041, file: !4042, line: 95, baseType: !1566, size: 32, offset: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4041, file: !4042, line: 96, baseType: !126, size: 32, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4041, file: !4042, line: 97, baseType: !126, size: 32, offset: 96)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4041, file: !4042, line: 98, baseType: !1453, size: 128, offset: 128)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4041, file: !4042, line: 100, baseType: !2687, size: 192, offset: 256)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4041, file: !4042, line: 103, baseType: !2700, size: 64, offset: 448)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4041, file: !4042, line: 106, baseType: !4052, size: 192, offset: 512)
!4052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3264, line: 32, size: 192, elements: !4053)
!4053 = !{!4054, !4055}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4052, file: !3264, line: 33, baseType: !1453, size: 128)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4052, file: !3264, line: 34, baseType: !4056, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4057, line: 25, baseType: !4058)
!4057 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4057, line: 23, size: 64, elements: !4059)
!4059 = !{!4060}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4058, file: !4057, line: 24, baseType: !2948, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4041, file: !4042, line: 109, baseType: !2302, size: 64, offset: 704)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4041, file: !4042, line: 112, baseType: !126, size: 32, offset: 768)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4041, file: !4042, line: 114, baseType: !126, size: 32, offset: 800)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4041, file: !4042, line: 115, baseType: !2700, size: 64, offset: 832)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4041, file: !4042, line: 118, baseType: !126, size: 32, offset: 896)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4041, file: !4042, line: 119, baseType: !24, size: 32, offset: 928)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4041, file: !4042, line: 121, baseType: !4068, size: 64, offset: 960)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4042, line: 80, size: 448, elements: !4070)
!4070 = !{!4071, !4072, !4078}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4069, file: !4042, line: 81, baseType: !1566, size: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4069, file: !4042, line: 82, baseType: !4073, size: 128, offset: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4042, line: 75, size: 128, elements: !4074)
!4074 = !{!4075, !4076}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4073, file: !4042, line: 76, baseType: !2700, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4073, file: !4042, line: 77, baseType: !4077, size: 64, offset: 64)
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4069, file: !4042, line: 83, baseType: !1886, size: 256, offset: 192)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4041, file: !4042, line: 132, baseType: !24, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4041, file: !4042, line: 133, baseType: !24, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4041, file: !4042, line: 138, baseType: !24, size: 32, offset: 1056)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4041, file: !4042, line: 139, baseType: !1453, size: 128, offset: 1088)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4041, file: !4042, line: 142, baseType: !2821, size: 512, offset: 1216)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4041, file: !4042, line: 143, baseType: !2829, size: 64, offset: 1728)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4041, file: !4042, line: 150, baseType: !4086, size: 256, offset: 1792)
!4086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4087, size: 256, elements: !2053)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4042, line: 38, size: 128, elements: !4088)
!4088 = !{!4089, !4090}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4087, file: !4042, line: 39, baseType: !191, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4087, file: !4042, line: 40, baseType: !191, size: 64, offset: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4041, file: !4042, line: 156, baseType: !4092, size: 192, offset: 2048)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4042, line: 66, size: 192, elements: !4093)
!4093 = !{!4094}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4092, file: !4042, line: 67, baseType: !4095, size: 192)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4042, line: 47, size: 192, elements: !4096)
!4096 = !{!4097, !4098, !4099}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4095, file: !4042, line: 48, baseType: !1943, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4095, file: !4042, line: 49, baseType: !1943, size: 64, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4095, file: !4042, line: 50, baseType: !1943, size: 64, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4041, file: !4042, line: 160, baseType: !3987, size: 640, offset: 2240)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4041, file: !4042, line: 163, baseType: !4102, size: 256, offset: 2880)
!4102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3063, size: 256, elements: !1484)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4041, file: !4042, line: 169, baseType: !3063, size: 64, offset: 3136)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4041, file: !4042, line: 172, baseType: !126, size: 32, offset: 3200)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4041, file: !4042, line: 174, baseType: !4106, size: 64, offset: 3264)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4042, line: 174, flags: DIFlagFwdDecl)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4041, file: !4042, line: 185, baseType: !4109, size: 64, offset: 3328)
!4109 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !1725, line: 860, baseType: !4110)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1725, line: 853, size: 64, elements: !4111)
!4111 = !{!4112, !4113}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4110, file: !1725, line: 858, baseType: !1724, size: 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4110, file: !1725, line: 859, baseType: !1546, size: 32, offset: 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4041, file: !4042, line: 186, baseType: !191, size: 64, offset: 3392)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4041, file: !4042, line: 186, baseType: !191, size: 64, offset: 3456)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4041, file: !4042, line: 186, baseType: !191, size: 64, offset: 3520)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4041, file: !4042, line: 186, baseType: !191, size: 64, offset: 3584)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4041, file: !4042, line: 187, baseType: !191, size: 64, offset: 3648)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4041, file: !4042, line: 188, baseType: !191, size: 64, offset: 3712)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4041, file: !4042, line: 189, baseType: !3975, size: 192, offset: 3776)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4041, file: !4042, line: 190, baseType: !174, size: 64, offset: 3968)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4041, file: !4042, line: 190, baseType: !174, size: 64, offset: 4032)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4041, file: !4042, line: 190, baseType: !174, size: 64, offset: 4096)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4041, file: !4042, line: 190, baseType: !174, size: 64, offset: 4160)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4041, file: !4042, line: 191, baseType: !174, size: 64, offset: 4224)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4041, file: !4042, line: 191, baseType: !174, size: 64, offset: 4288)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4041, file: !4042, line: 191, baseType: !174, size: 64, offset: 4352)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4041, file: !4042, line: 191, baseType: !174, size: 64, offset: 4416)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4041, file: !4042, line: 192, baseType: !174, size: 64, offset: 4480)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4041, file: !4042, line: 192, baseType: !174, size: 64, offset: 4544)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4041, file: !4042, line: 192, baseType: !174, size: 64, offset: 4608)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4041, file: !4042, line: 192, baseType: !174, size: 64, offset: 4672)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4041, file: !4042, line: 193, baseType: !174, size: 64, offset: 4736)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4041, file: !4042, line: 193, baseType: !174, size: 64, offset: 4800)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4041, file: !4042, line: 194, baseType: !4136, size: 448, offset: 4864)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4137, line: 12, size: 448, elements: !4138)
!4137 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4138 = !{!4139, !4140, !4141, !4142, !4143, !4144, !4145}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4136, file: !4137, line: 15, baseType: !191, size: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4136, file: !4137, line: 17, baseType: !191, size: 64, offset: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4136, file: !4137, line: 19, baseType: !191, size: 64, offset: 128)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4136, file: !4137, line: 21, baseType: !191, size: 64, offset: 192)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4136, file: !4137, line: 29, baseType: !191, size: 64, offset: 256)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4136, file: !4137, line: 35, baseType: !191, size: 64, offset: 320)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4136, file: !4137, line: 44, baseType: !191, size: 64, offset: 384)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4041, file: !4042, line: 202, baseType: !181, size: 64, offset: 5312)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4041, file: !4042, line: 213, baseType: !4148, size: 2048, offset: 5376)
!4148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4149, size: 2048, elements: !4010)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4150, line: 43, size: 128, elements: !4151)
!4150 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4151 = !{!4152, !4153}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4149, file: !4150, line: 44, baseType: !723, size: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4149, file: !4150, line: 45, baseType: !723, size: 64, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4041, file: !4042, line: 216, baseType: !4155, size: 448, offset: 7424)
!4155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4042, line: 30, size: 448, elements: !4156)
!4156 = !{!4157, !4158, !4159, !4160, !4161, !4162, !4163}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4155, file: !4042, line: 31, baseType: !126, size: 32)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4155, file: !4042, line: 32, baseType: !1643, size: 64, offset: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4155, file: !4042, line: 33, baseType: !174, size: 64, offset: 128)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4155, file: !4042, line: 34, baseType: !191, size: 64, offset: 192)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4155, file: !4042, line: 34, baseType: !191, size: 64, offset: 256)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4155, file: !4042, line: 35, baseType: !174, size: 64, offset: 320)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4155, file: !4042, line: 35, baseType: !174, size: 64, offset: 384)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4041, file: !4042, line: 219, baseType: !4165, size: 64, offset: 7872)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4042, line: 219, flags: DIFlagFwdDecl)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4041, file: !4042, line: 222, baseType: !24, size: 32, offset: 7936)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4041, file: !4042, line: 223, baseType: !4169, size: 64, offset: 8000)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4042, line: 223, flags: DIFlagFwdDecl)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4041, file: !4042, line: 230, baseType: !2014, size: 8, offset: 8064)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4041, file: !4042, line: 231, baseType: !2072, size: 16, offset: 8080)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4041, file: !4042, line: 232, baseType: !2072, size: 16, offset: 8096)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4041, file: !4042, line: 234, baseType: !2995, size: 64, offset: 8128)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4041, file: !4042, line: 237, baseType: !1937, size: 256, offset: 8192)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4041, file: !4042, line: 243, baseType: !2594, size: 320, offset: 8448)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2701, file: !2376, line: 1111, baseType: !4178, size: 64, offset: 15424)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4042, line: 20, size: 16640, elements: !4180)
!4180 = !{!4181, !4182, !4183, !4184}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4179, file: !4042, line: 21, baseType: !1546, size: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4179, file: !4042, line: 22, baseType: !2714, size: 32, offset: 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4179, file: !4042, line: 23, baseType: !2687, size: 192, offset: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4179, file: !4042, line: 24, baseType: !4185, size: 16384, offset: 256)
!4185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4186, size: 16384, elements: !1613)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3264, line: 51, size: 256, elements: !4187)
!4187 = !{!4188}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4186, file: !3264, line: 52, baseType: !4189, size: 256)
!4189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3264, line: 37, size: 256, elements: !4190)
!4190 = !{!4191, !4198, !4199, !4203}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4189, file: !3264, line: 39, baseType: !4192, size: 64)
!4192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4193, line: 83, baseType: !4194)
!4193 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4193, line: 82, baseType: !4196)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{null, !126}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4189, file: !3264, line: 40, baseType: !174, size: 64, offset: 64)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4189, file: !3264, line: 46, baseType: !4200, size: 64, offset: 128)
!4200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4193, line: 86, baseType: !4201)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4193, line: 85, baseType: !2297)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4189, file: !3264, line: 48, baseType: !4056, size: 64, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2701, file: !2376, line: 1112, baseType: !4056, size: 64, offset: 15488)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2701, file: !2376, line: 1113, baseType: !4056, size: 64, offset: 15552)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2701, file: !2376, line: 1115, baseType: !4056, size: 64, offset: 15616)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2701, file: !2376, line: 1116, baseType: !4052, size: 192, offset: 15680)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2701, file: !2376, line: 1117, baseType: !174, size: 64, offset: 15872)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2701, file: !2376, line: 1118, baseType: !719, size: 64, offset: 15936)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2701, file: !2376, line: 1119, baseType: !24, size: 32, offset: 16000)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2701, file: !2376, line: 1121, baseType: !2153, size: 64, offset: 16064)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2701, file: !2376, line: 1125, baseType: !4213, size: 64, offset: 16128)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2376, line: 43, flags: DIFlagFwdDecl)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2701, file: !2376, line: 1127, baseType: !1689, size: 32, offset: 16192)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2701, file: !2376, line: 1128, baseType: !24, size: 32, offset: 16224)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2701, file: !2376, line: 1130, baseType: !4218, size: 128, offset: 16256)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4219, line: 37, size: 128, elements: !4220)
!4219 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4220 = !{!4221, !4222, !4223}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4218, file: !4219, line: 38, baseType: !126, size: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4218, file: !4219, line: 39, baseType: !1566, size: 32, offset: 32)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4218, file: !4219, line: 40, baseType: !4224, size: 64, offset: 64)
!4224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4225, size: 64)
!4225 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4219, line: 24, flags: DIFlagFwdDecl)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2701, file: !2376, line: 1131, baseType: !4227, size: 256, offset: 16384)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4228, line: 12, size: 256, elements: !4229)
!4228 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4229 = !{!4230, !4231, !4232, !4233}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4227, file: !4228, line: 13, baseType: !1608, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4227, file: !4228, line: 14, baseType: !174, size: 64, offset: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4227, file: !4228, line: 15, baseType: !174, size: 64, offset: 128)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4227, file: !4228, line: 16, baseType: !2014, size: 8, offset: 192)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2701, file: !2376, line: 1134, baseType: !191, size: 64, offset: 16640)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2701, file: !2376, line: 1135, baseType: !191, size: 64, offset: 16704)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2701, file: !2376, line: 1138, baseType: !1546, size: 32, offset: 16768)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2701, file: !2376, line: 1141, baseType: !1895, size: 32, offset: 16800)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2701, file: !2376, line: 1143, baseType: !4239, size: 64, offset: 16832)
!4239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2376, line: 735, size: 64, elements: !4240)
!4240 = !{!4241}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4239, file: !2376, line: 736, baseType: !4242, size: 64)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2701, file: !2376, line: 1147, baseType: !2880, size: 128, offset: 16896)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2701, file: !2376, line: 1149, baseType: !2700, size: 64, offset: 17024)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2701, file: !2376, line: 1151, baseType: !4246, size: 64, offset: 17088)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2376, line: 1151, flags: DIFlagFwdDecl)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2701, file: !2376, line: 1188, baseType: !179, size: 64, offset: 17152)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2701, file: !2376, line: 1191, baseType: !4250, size: 64, offset: 17216)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2376, line: 44, flags: DIFlagFwdDecl)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2701, file: !2376, line: 1194, baseType: !4253, size: 64, offset: 17280)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2376, line: 45, flags: DIFlagFwdDecl)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2701, file: !2376, line: 1197, baseType: !4256, size: 64, offset: 17344)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2376, line: 61, flags: DIFlagFwdDecl)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2701, file: !2376, line: 1199, baseType: !4259, size: 64, offset: 17408)
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !4261, line: 99, size: 128, elements: !4262)
!4261 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!4262 = !{!4263, !4264, !4265}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4260, file: !4261, line: 100, baseType: !1941, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4260, file: !4261, line: 101, baseType: !1566, size: 32, offset: 64)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4260, file: !4261, line: 103, baseType: !177, size: 16, offset: 96)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2701, file: !2376, line: 1202, baseType: !4267, size: 64, offset: 17472)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2376, line: 48, flags: DIFlagFwdDecl)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2701, file: !2376, line: 1205, baseType: !174, size: 64, offset: 17536)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2701, file: !2376, line: 1206, baseType: !4271, size: 64, offset: 17600)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3264, line: 14, baseType: !4273)
!4273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3264, line: 12, size: 384, elements: !4274)
!4274 = !{!4275}
!4275 = !DIDerivedType(tag: DW_TAG_member, scope: !4273, file: !3264, line: 13, baseType: !4276, size: 384)
!4276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4273, file: !3264, line: 13, size: 384, elements: !4277)
!4277 = !{!4278, !4279, !4280, !4281}
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4276, file: !3264, line: 13, baseType: !126, size: 32)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4276, file: !3264, line: 13, baseType: !126, size: 32, offset: 32)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4276, file: !3264, line: 13, baseType: !126, size: 32, offset: 64)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4276, file: !3264, line: 13, baseType: !4282, size: 256, offset: 128)
!4282 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4283, line: 37, size: 256, elements: !4284)
!4283 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4284 = !{!4285, !4290, !4303, !4309, !4318, !4345, !4350}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4282, file: !4283, line: 42, baseType: !4286, size: 64)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4282, file: !4283, line: 39, size: 64, elements: !4287)
!4287 = !{!4288, !4289}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4286, file: !4283, line: 40, baseType: !3952, size: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4286, file: !4283, line: 41, baseType: !1695, size: 32, offset: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4282, file: !4283, line: 50, baseType: !4291, size: 192)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4282, file: !4283, line: 45, size: 192, elements: !4292)
!4292 = !{!4293, !4295, !4296, !4302}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4291, file: !4283, line: 46, baseType: !4294, size: 32)
!4294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !722, line: 95, baseType: !126)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4291, file: !4283, line: 47, baseType: !126, size: 32, offset: 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4291, file: !4283, line: 48, baseType: !4297, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4283, line: 11, baseType: !4298)
!4298 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4283, line: 8, size: 64, elements: !4299)
!4299 = !{!4300, !4301}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4298, file: !4283, line: 9, baseType: !126, size: 32)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4298, file: !4283, line: 10, baseType: !179, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4291, file: !4283, line: 49, baseType: !126, size: 32, offset: 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4282, file: !4283, line: 57, baseType: !4304, size: 128)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4282, file: !4283, line: 53, size: 128, elements: !4305)
!4305 = !{!4306, !4307, !4308}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4304, file: !4283, line: 54, baseType: !3952, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4304, file: !4283, line: 55, baseType: !1695, size: 32, offset: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4304, file: !4283, line: 56, baseType: !4297, size: 64, offset: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4282, file: !4283, line: 66, baseType: !4310, size: 256)
!4310 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4282, file: !4283, line: 60, size: 256, elements: !4311)
!4311 = !{!4312, !4313, !4314, !4315, !4317}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4310, file: !4283, line: 61, baseType: !3952, size: 32)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4310, file: !4283, line: 62, baseType: !1695, size: 32, offset: 32)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4310, file: !4283, line: 63, baseType: !126, size: 32, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4310, file: !4283, line: 64, baseType: !4316, size: 64, offset: 128)
!4316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !722, line: 94, baseType: !1642)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4310, file: !4283, line: 65, baseType: !4316, size: 64, offset: 192)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4282, file: !4283, line: 105, baseType: !4319, size: 256)
!4319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4282, file: !4283, line: 69, size: 256, elements: !4320)
!4320 = !{!4321, !4322}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4319, file: !4283, line: 70, baseType: !179, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_member, scope: !4319, file: !4283, line: 79, baseType: !4323, size: 192, offset: 64)
!4323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4319, file: !4283, line: 79, size: 192, elements: !4324)
!4324 = !{!4325, !4326, !4327, !4334, !4339}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4323, file: !4283, line: 81, baseType: !126, size: 32)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4323, file: !4283, line: 86, baseType: !2072, size: 16)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4323, file: !4283, line: 92, baseType: !4328, size: 192)
!4328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4323, file: !4283, line: 88, size: 192, elements: !4329)
!4329 = !{!4330, !4332, !4333}
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4328, file: !4283, line: 89, baseType: !4331, size: 64)
!4331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2864)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4328, file: !4283, line: 90, baseType: !179, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4328, file: !4283, line: 91, baseType: !179, size: 64, offset: 128)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4323, file: !4283, line: 97, baseType: !4335, size: 96)
!4335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4323, file: !4283, line: 94, size: 96, elements: !4336)
!4336 = !{!4337, !4338}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4335, file: !4283, line: 95, baseType: !4331, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4335, file: !4283, line: 96, baseType: !178, size: 32, offset: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4323, file: !4283, line: 103, baseType: !4340, size: 128)
!4340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4323, file: !4283, line: 99, size: 128, elements: !4341)
!4341 = !{!4342, !4343, !4344}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4340, file: !4283, line: 100, baseType: !174, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4340, file: !4283, line: 101, baseType: !178, size: 32, offset: 64)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4340, file: !4283, line: 102, baseType: !178, size: 32, offset: 96)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4282, file: !4283, line: 111, baseType: !4346, size: 128)
!4346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4282, file: !4283, line: 108, size: 128, elements: !4347)
!4347 = !{!4348, !4349}
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4346, file: !4283, line: 109, baseType: !1643, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4346, file: !4283, line: 110, baseType: !126, size: 32, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4282, file: !4283, line: 118, baseType: !4351, size: 128)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4282, file: !4283, line: 114, size: 128, elements: !4352)
!4352 = !{!4353, !4354, !4355}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4351, file: !4283, line: 115, baseType: !179, size: 64)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4351, file: !4283, line: 116, baseType: !126, size: 32, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4351, file: !4283, line: 117, baseType: !24, size: 32, offset: 96)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2701, file: !2376, line: 1208, baseType: !4136, size: 448, offset: 17664)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2701, file: !2376, line: 1215, baseType: !191, size: 64, offset: 18112)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2701, file: !2376, line: 1217, baseType: !191, size: 64, offset: 18176)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2701, file: !2376, line: 1219, baseType: !191, size: 64, offset: 18240)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2701, file: !2376, line: 1223, baseType: !4361, size: 64, offset: 18304)
!4361 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4362, line: 99, baseType: !4363)
!4362 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4362, line: 99, size: 64, elements: !4364)
!4364 = !{!4365}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4363, file: !4362, line: 99, baseType: !2948, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2701, file: !2376, line: 1225, baseType: !1724, size: 32, offset: 18368)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2701, file: !2376, line: 1226, baseType: !126, size: 32, offset: 18400)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2701, file: !2376, line: 1227, baseType: !126, size: 32, offset: 18432)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2701, file: !2376, line: 1231, baseType: !4370, size: 64, offset: 18496)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2376, line: 1231, flags: DIFlagFwdDecl)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2701, file: !2376, line: 1233, baseType: !1453, size: 128, offset: 18560)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2701, file: !2376, line: 1240, baseType: !4374, size: 64, offset: 18688)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2376, line: 62, flags: DIFlagFwdDecl)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2701, file: !2376, line: 1242, baseType: !4377, size: 64, offset: 18752)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2376, line: 1242, flags: DIFlagFwdDecl)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2701, file: !2376, line: 1244, baseType: !1453, size: 128, offset: 18816)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2701, file: !2376, line: 1245, baseType: !4381, size: 64, offset: 18944)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2376, line: 51, flags: DIFlagFwdDecl)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2701, file: !2376, line: 1246, baseType: !1937, size: 256, offset: 19008)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2701, file: !2376, line: 1247, baseType: !24, size: 32, offset: 19264)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2701, file: !2376, line: 1250, baseType: !4386, size: 64, offset: 19328)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2376, line: 57, flags: DIFlagFwdDecl)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2701, file: !2376, line: 1251, baseType: !1937, size: 256, offset: 19392)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2701, file: !2376, line: 1252, baseType: !1453, size: 128, offset: 19648)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2701, file: !2376, line: 1259, baseType: !3644, size: 64, offset: 19776)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2701, file: !2376, line: 1260, baseType: !2072, size: 16, offset: 19840)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2701, file: !2376, line: 1261, baseType: !2072, size: 16, offset: 19856)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2701, file: !2376, line: 1314, baseType: !4394, size: 64, offset: 19904)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4396, line: 62, size: 256, align: 256, elements: !4397)
!4396 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4397 = !{!4398, !4399, !4400, !4401, !4402, !4403, !4404}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4395, file: !4396, line: 75, baseType: !178, size: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4395, file: !4396, line: 90, baseType: !178, size: 32, offset: 32)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4395, file: !4396, line: 112, baseType: !180, size: 64, offset: 64)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4395, file: !4396, line: 132, baseType: !178, size: 32, offset: 128)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4395, file: !4396, line: 140, baseType: !178, size: 32, offset: 160)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4395, file: !4396, line: 149, baseType: !178, size: 32, offset: 192)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4395, file: !4396, line: 154, baseType: !4405, offset: 224)
!4405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !3082)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2701, file: !2376, line: 1315, baseType: !199, size: 32, offset: 19968)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2701, file: !2376, line: 1316, baseType: !199, size: 32, offset: 20000)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2701, file: !2376, line: 1321, baseType: !174, size: 64, offset: 20032)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2701, file: !2376, line: 1325, baseType: !126, size: 32, offset: 20096)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2701, file: !2376, line: 1326, baseType: !126, size: 32, offset: 20128)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2701, file: !2376, line: 1327, baseType: !126, size: 32, offset: 20160)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2701, file: !2376, line: 1328, baseType: !126, size: 32, offset: 20192)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2701, file: !2376, line: 1329, baseType: !2154, size: 128, align: 64, offset: 20224)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2701, file: !2376, line: 1332, baseType: !4415, size: 128, offset: 20352)
!4415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4416, line: 51, size: 128, elements: !4417)
!4416 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4417 = !{!4418, !4423, !4424}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4415, file: !4416, line: 60, baseType: !4419, size: 64)
!4419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4420, line: 7, size: 64, elements: !4421)
!4420 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4421 = !{!4422}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4419, file: !4420, line: 12, baseType: !2945, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4415, file: !4416, line: 63, baseType: !2014, size: 8, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4415, file: !4416, line: 70, baseType: !2014, size: 8, offset: 72)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2701, file: !2376, line: 1335, baseType: !3696, size: 64, offset: 20480)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2701, file: !2376, line: 1337, baseType: !4427, size: 128, offset: 20544)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4416, line: 39, size: 128, elements: !4428)
!4428 = !{!4429, !4430, !4431}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4427, file: !4416, line: 40, baseType: !3483, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4427, file: !4416, line: 42, baseType: !178, size: 32, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4427, file: !4416, line: 43, baseType: !178, size: 32, offset: 96)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2701, file: !2376, line: 1340, baseType: !4433, size: 64, offset: 20672)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2376, line: 69, flags: DIFlagFwdDecl)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2701, file: !2376, line: 1351, baseType: !126, size: 32, offset: 20736)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2701, file: !2376, line: 1352, baseType: !126, size: 32, offset: 20768)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2701, file: !2376, line: 1354, baseType: !174, size: 64, offset: 20800)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2701, file: !2376, line: 1364, baseType: !191, size: 64, offset: 20864)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2701, file: !2376, line: 1365, baseType: !191, size: 64, offset: 20928)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2701, file: !2376, line: 1412, baseType: !174, size: 64, offset: 20992)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2701, file: !2376, line: 1453, baseType: !4442, size: 64, offset: 21056)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2376, line: 1453, flags: DIFlagFwdDecl)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2701, file: !2376, line: 1457, baseType: !4445, size: 64, offset: 21120)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !85, line: 61, size: 576, elements: !4447)
!4447 = !{!4448, !4449, !4468, !4471, !4472, !4505, !4515}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4446, file: !85, line: 62, baseType: !84, size: 32)
!4449 = !DIDerivedType(tag: DW_TAG_member, scope: !4446, file: !85, line: 64, baseType: !4450, size: 192, offset: 64)
!4450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4446, file: !85, line: 64, size: 192, elements: !4451)
!4451 = !{!4452, !4463}
!4452 = !DIDerivedType(tag: DW_TAG_member, scope: !4450, file: !85, line: 65, baseType: !4453, size: 192)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4450, file: !85, line: 65, size: 192, elements: !4454)
!4454 = !{!4455, !4462}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4453, file: !85, line: 66, baseType: !4456, size: 128)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4457, line: 50, size: 128, elements: !4458)
!4457 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4458 = !{!4459, !4460, !4461}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4456, file: !4457, line: 52, baseType: !174, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4456, file: !4457, line: 54, baseType: !24, size: 32, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4456, file: !4457, line: 55, baseType: !24, size: 32, offset: 96)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4453, file: !85, line: 67, baseType: !174, size: 64, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_member, scope: !4450, file: !85, line: 70, baseType: !4464, size: 192)
!4464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4450, file: !85, line: 70, size: 192, elements: !4465)
!4465 = !{!4466, !4467}
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4464, file: !85, line: 71, baseType: !2154, size: 128, align: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4464, file: !85, line: 72, baseType: !174, size: 64, offset: 128)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4446, file: !85, line: 76, baseType: !4469, size: 64, offset: 256)
!4469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4470, size: 64)
!4470 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !85, line: 76, flags: DIFlagFwdDecl)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4446, file: !85, line: 77, baseType: !174, size: 64, offset: 320)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4446, file: !85, line: 79, baseType: !4473, size: 64, offset: 384)
!4473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4474, size: 64)
!4474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4457, line: 25, size: 256, elements: !4475)
!4475 = !{!4476, !4482, !4486}
!4476 = !DIDerivedType(tag: DW_TAG_member, scope: !4474, file: !4457, line: 26, baseType: !4477, size: 128)
!4477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4474, file: !4457, line: 26, size: 128, elements: !4478)
!4478 = !{!4479, !4481}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4477, file: !4457, line: 27, baseType: !4480, size: 128)
!4480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 128, elements: !4010)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4477, file: !4457, line: 28, baseType: !4480, size: 128)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4474, file: !4457, line: 31, baseType: !4483, size: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4485)
!4485 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4457, line: 23, flags: DIFlagFwdDecl)
!4486 = !DIDerivedType(tag: DW_TAG_member, scope: !4474, file: !4457, line: 33, baseType: !4487, size: 64, offset: 192)
!4487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4474, file: !4457, line: 33, size: 64, elements: !4488)
!4488 = !{!4489, !4495, !4500}
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4487, file: !4457, line: 38, baseType: !4490, size: 64)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4487, file: !4457, line: 34, size: 64, elements: !4491)
!4491 = !{!4492, !4493, !4494}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4490, file: !4457, line: 35, baseType: !1933, size: 32)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4490, file: !4457, line: 36, baseType: !194, size: 8, offset: 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4490, file: !4457, line: 37, baseType: !194, size: 8, offset: 40)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4487, file: !4457, line: 42, baseType: !4496, size: 16)
!4496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4487, file: !4457, line: 39, size: 16, elements: !4497)
!4497 = !{!4498, !4499}
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4496, file: !4457, line: 40, baseType: !194, size: 8)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4496, file: !4457, line: 41, baseType: !194, size: 8, offset: 8)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4487, file: !4457, line: 46, baseType: !4501, size: 16)
!4501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4487, file: !4457, line: 43, size: 16, elements: !4502)
!4502 = !{!4503, !4504}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4501, file: !4457, line: 44, baseType: !194, size: 8)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4501, file: !4457, line: 45, baseType: !194, size: 8, offset: 8)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4446, file: !85, line: 81, baseType: !4506, size: 64, offset: 448)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !85, line: 85, size: 384, elements: !4508)
!4508 = !{!4509, !4510, !4511, !4512, !4513, !4514}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4507, file: !85, line: 86, baseType: !4469, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4507, file: !85, line: 87, baseType: !174, size: 64, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4507, file: !85, line: 88, baseType: !174, size: 64, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4507, file: !85, line: 89, baseType: !174, size: 64, offset: 192)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4507, file: !85, line: 90, baseType: !2014, size: 8, offset: 256)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4507, file: !85, line: 92, baseType: !4506, size: 64, offset: 320)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4446, file: !85, line: 82, baseType: !24, size: 32, offset: 512)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2701, file: !2376, line: 1463, baseType: !4517, offset: 21184)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2376, line: 739, elements: !2221)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2701, file: !2376, line: 1470, baseType: !2154, size: 128, align: 64, offset: 21184)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2701, file: !2376, line: 1471, baseType: !2714, size: 32, offset: 21312)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2701, file: !2376, line: 1472, baseType: !126, size: 32, offset: 21344)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2701, file: !2376, line: 1474, baseType: !2700, size: 64, offset: 21376)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2701, file: !2376, line: 1475, baseType: !2174, size: 320, offset: 21440)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2701, file: !2376, line: 1478, baseType: !4524, size: 64, offset: 21760)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3336, line: 49, size: 512, elements: !4526)
!4526 = !{!4527, !4528, !4529, !4530, !4531, !4533, !4534, !4535, !4536}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4525, file: !3336, line: 50, baseType: !4524, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4525, file: !3336, line: 51, baseType: !179, size: 64, offset: 64)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4525, file: !3336, line: 52, baseType: !174, size: 64, offset: 128)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4525, file: !3336, line: 53, baseType: !174, size: 64, offset: 192)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4525, file: !3336, line: 54, baseType: !4532, size: 64, offset: 256)
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4525, file: !3336, line: 56, baseType: !24, size: 32, offset: 320)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4525, file: !3336, line: 58, baseType: !24, size: 32, offset: 352)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4525, file: !3336, line: 59, baseType: !1476, size: 64, offset: 384)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4525, file: !3336, line: 60, baseType: !360, size: 64, offset: 448)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2701, file: !2376, line: 1482, baseType: !2714, size: 32, offset: 21824)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2701, file: !2376, line: 1489, baseType: !179, size: 64, offset: 21888)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2701, file: !2376, line: 1504, baseType: !179, size: 64, offset: 21952)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2701, file: !2376, line: 1505, baseType: !180, size: 64, offset: 22016)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2701, file: !2376, line: 1506, baseType: !191, size: 64, offset: 22080)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2701, file: !2376, line: 1507, baseType: !180, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2701, file: !2376, line: 1508, baseType: !180, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2701, file: !2376, line: 1509, baseType: !180, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2701, file: !2376, line: 1510, baseType: !2154, size: 128, align: 64, offset: 22208)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2701, file: !2376, line: 1511, baseType: !126, size: 32, offset: 22336)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2701, file: !2376, line: 1515, baseType: !4548, size: 64, offset: 22400)
!4548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !2728, line: 56, size: 64, elements: !4549)
!4549 = !{!4550}
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4548, file: !2728, line: 57, baseType: !2731, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2701, file: !2376, line: 1518, baseType: !4548, size: 64, offset: 22464)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2701, file: !2376, line: 1528, baseType: !2154, size: 128, align: 64, offset: 22528)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2701, file: !2376, line: 1552, baseType: !4554, size: 35328, offset: 23040)
!4554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4555, line: 430, size: 35328, elements: !4556)
!4555 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4556 = !{!4557, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4586, !4587, !4588, !4589, !4590, !4591, !4594, !4595, !4596, !4597}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4554, file: !4555, line: 432, baseType: !4558, size: 192)
!4558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4559, size: 192, elements: !1609)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4560, line: 16, size: 64, elements: !4561)
!4560 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4561 = !{!4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4559, file: !4560, line: 17, baseType: !197, size: 16)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4559, file: !4560, line: 18, baseType: !197, size: 16, offset: 16)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4559, file: !4560, line: 19, baseType: !197, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4559, file: !4560, line: 19, baseType: !197, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4559, file: !4560, line: 19, baseType: !197, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4559, file: !4560, line: 19, baseType: !197, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4559, file: !4560, line: 19, baseType: !197, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4559, file: !4560, line: 20, baseType: !197, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4559, file: !4560, line: 20, baseType: !197, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4559, file: !4560, line: 20, baseType: !197, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4559, file: !4560, line: 20, baseType: !197, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4559, file: !4560, line: 20, baseType: !197, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4559, file: !4560, line: 20, baseType: !197, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4554, file: !4555, line: 436, baseType: !174, size: 64, offset: 192)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4554, file: !4555, line: 440, baseType: !177, size: 16, offset: 256)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4554, file: !4555, line: 441, baseType: !177, size: 16, offset: 272)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4554, file: !4555, line: 442, baseType: !177, size: 16, offset: 288)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4554, file: !4555, line: 443, baseType: !177, size: 16, offset: 304)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4554, file: !4555, line: 447, baseType: !174, size: 64, offset: 320)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4554, file: !4555, line: 448, baseType: !174, size: 64, offset: 384)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4554, file: !4555, line: 459, baseType: !4583, size: 256, offset: 448)
!4583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4584, size: 256, elements: !1484)
!4584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4585, size: 64)
!4585 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4555, line: 428, flags: DIFlagFwdDecl)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4554, file: !4555, line: 461, baseType: !174, size: 64, offset: 704)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4554, file: !4555, line: 463, baseType: !174, size: 64, offset: 768)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4554, file: !4555, line: 465, baseType: !174, size: 64, offset: 832)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4554, file: !4555, line: 466, baseType: !174, size: 64, offset: 896)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4554, file: !4555, line: 467, baseType: !174, size: 64, offset: 960)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4554, file: !4555, line: 473, baseType: !4592, size: 64, offset: 1024)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4555, line: 10, flags: DIFlagFwdDecl)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4554, file: !4555, line: 480, baseType: !174, size: 64, offset: 1088)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4554, file: !4555, line: 482, baseType: !24, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4554, file: !4555, line: 491, baseType: !199, size: 32, offset: 1184)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4554, file: !4555, line: 501, baseType: !4598, size: 33792, offset: 1536)
!4598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4599, line: 448, size: 33792, elements: !4600)
!4599 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4600 = !{!4601, !4602, !4603, !4763, !4764, !4770, !4771}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4598, file: !4599, line: 461, baseType: !24, size: 32)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4598, file: !4599, line: 468, baseType: !174, size: 64, offset: 64)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4598, file: !4599, line: 476, baseType: !4604, size: 64, offset: 128)
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4605, size: 64)
!4605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4599, line: 356, size: 33280, align: 512, elements: !4606)
!4606 = !{!4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616}
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4605, file: !4599, line: 358, baseType: !24, size: 32)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4605, file: !4599, line: 361, baseType: !24, size: 32, offset: 32)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4605, file: !4599, line: 364, baseType: !191, size: 64, offset: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4605, file: !4599, line: 367, baseType: !191, size: 64, offset: 128)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4605, file: !4599, line: 370, baseType: !191, size: 64, offset: 192)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4605, file: !4599, line: 373, baseType: !24, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4605, file: !4599, line: 376, baseType: !24, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4605, file: !4599, line: 391, baseType: !24, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4605, file: !4599, line: 394, baseType: !24, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4605, file: !4599, line: 397, baseType: !4617, size: 32768, offset: 512)
!4617 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4599, line: 348, size: 32768, elements: !4618)
!4618 = !{!4619, !4634, !4669, !4746, !4759}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4617, file: !4599, line: 349, baseType: !4620, size: 896)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4599, line: 12, size: 896, elements: !4621)
!4621 = !{!4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4633}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4620, file: !4599, line: 13, baseType: !199, size: 32)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4620, file: !4599, line: 14, baseType: !199, size: 32, offset: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4620, file: !4599, line: 15, baseType: !199, size: 32, offset: 64)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4620, file: !4599, line: 16, baseType: !199, size: 32, offset: 96)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4620, file: !4599, line: 17, baseType: !199, size: 32, offset: 128)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4620, file: !4599, line: 18, baseType: !199, size: 32, offset: 160)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4620, file: !4599, line: 19, baseType: !199, size: 32, offset: 192)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4620, file: !4599, line: 22, baseType: !4630, size: 640, offset: 224)
!4630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 640, elements: !4631)
!4631 = !{!4632}
!4632 = !DISubrange(count: 20)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4620, file: !4599, line: 25, baseType: !199, size: 32, offset: 864)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4617, file: !4599, line: 350, baseType: !4635, size: 4096, align: 128)
!4635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4599, line: 34, size: 4096, align: 128, elements: !4636)
!4636 = !{!4637, !4638, !4639, !4640, !4641, !4656, !4657, !4658, !4660, !4662, !4664}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4635, file: !4599, line: 35, baseType: !197, size: 16)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4635, file: !4599, line: 36, baseType: !197, size: 16, offset: 16)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4635, file: !4599, line: 37, baseType: !197, size: 16, offset: 32)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4635, file: !4599, line: 38, baseType: !197, size: 16, offset: 48)
!4641 = !DIDerivedType(tag: DW_TAG_member, scope: !4635, file: !4599, line: 39, baseType: !4642, size: 128, offset: 64)
!4642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4635, file: !4599, line: 39, size: 128, elements: !4643)
!4643 = !{!4644, !4649}
!4644 = !DIDerivedType(tag: DW_TAG_member, scope: !4642, file: !4599, line: 40, baseType: !4645, size: 128)
!4645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4642, file: !4599, line: 40, size: 128, elements: !4646)
!4646 = !{!4647, !4648}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4645, file: !4599, line: 41, baseType: !191, size: 64)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4645, file: !4599, line: 42, baseType: !191, size: 64, offset: 64)
!4649 = !DIDerivedType(tag: DW_TAG_member, scope: !4642, file: !4599, line: 44, baseType: !4650, size: 128)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4642, file: !4599, line: 44, size: 128, elements: !4651)
!4651 = !{!4652, !4653, !4654, !4655}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4650, file: !4599, line: 45, baseType: !199, size: 32)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4650, file: !4599, line: 46, baseType: !199, size: 32, offset: 32)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4650, file: !4599, line: 47, baseType: !199, size: 32, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4650, file: !4599, line: 48, baseType: !199, size: 32, offset: 96)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4635, file: !4599, line: 51, baseType: !199, size: 32, offset: 192)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4635, file: !4599, line: 52, baseType: !199, size: 32, offset: 224)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4635, file: !4599, line: 55, baseType: !4659, size: 1024, offset: 256)
!4659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 1024, elements: !219)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4635, file: !4599, line: 58, baseType: !4661, size: 2048, offset: 1280)
!4661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 2048, elements: !1613)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4635, file: !4599, line: 60, baseType: !4663, size: 384, offset: 3328)
!4663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 384, elements: !346)
!4664 = !DIDerivedType(tag: DW_TAG_member, scope: !4635, file: !4599, line: 62, baseType: !4665, size: 384, offset: 3712)
!4665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4635, file: !4599, line: 62, size: 384, elements: !4666)
!4666 = !{!4667, !4668}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4665, file: !4599, line: 63, baseType: !4663, size: 384)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4665, file: !4599, line: 64, baseType: !4663, size: 384)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4617, file: !4599, line: 351, baseType: !4670, size: 1088)
!4670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4599, line: 79, size: 1088, elements: !4671)
!4671 = !{!4672, !4673, !4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683, !4684, !4685, !4686, !4745}
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4670, file: !4599, line: 80, baseType: !199, size: 32)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4670, file: !4599, line: 81, baseType: !199, size: 32, offset: 32)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4670, file: !4599, line: 82, baseType: !199, size: 32, offset: 64)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4670, file: !4599, line: 83, baseType: !199, size: 32, offset: 96)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4670, file: !4599, line: 84, baseType: !199, size: 32, offset: 128)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4670, file: !4599, line: 85, baseType: !199, size: 32, offset: 160)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4670, file: !4599, line: 86, baseType: !199, size: 32, offset: 192)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4670, file: !4599, line: 88, baseType: !4630, size: 640, offset: 224)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4670, file: !4599, line: 89, baseType: !194, size: 8, offset: 864)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4670, file: !4599, line: 90, baseType: !194, size: 8, offset: 872)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4670, file: !4599, line: 91, baseType: !194, size: 8, offset: 880)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4670, file: !4599, line: 92, baseType: !194, size: 8, offset: 888)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4670, file: !4599, line: 93, baseType: !194, size: 8, offset: 896)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4670, file: !4599, line: 94, baseType: !194, size: 8, offset: 904)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4670, file: !4599, line: 95, baseType: !4687, size: 64, offset: 960)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4689, line: 11, size: 128, elements: !4690)
!4689 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4690 = !{!4691, !4692}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4688, file: !4689, line: 12, baseType: !1643, size: 64)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4688, file: !4689, line: 13, baseType: !4693, size: 64, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4695, line: 103, size: 1344, elements: !4696)
!4695 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4696 = !{!4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4725, !4726, !4727}
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4694, file: !4695, line: 109, baseType: !174, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4694, file: !4695, line: 110, baseType: !174, size: 64, offset: 64)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4694, file: !4695, line: 111, baseType: !174, size: 64, offset: 128)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4694, file: !4695, line: 112, baseType: !174, size: 64, offset: 192)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4694, file: !4695, line: 113, baseType: !174, size: 64, offset: 256)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4694, file: !4695, line: 114, baseType: !174, size: 64, offset: 320)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4694, file: !4695, line: 117, baseType: !174, size: 64, offset: 384)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4694, file: !4695, line: 118, baseType: !174, size: 64, offset: 448)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4694, file: !4695, line: 119, baseType: !174, size: 64, offset: 512)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4694, file: !4695, line: 120, baseType: !174, size: 64, offset: 576)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4694, file: !4695, line: 121, baseType: !174, size: 64, offset: 640)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4694, file: !4695, line: 122, baseType: !174, size: 64, offset: 704)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4694, file: !4695, line: 123, baseType: !174, size: 64, offset: 768)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4694, file: !4695, line: 124, baseType: !174, size: 64, offset: 832)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4694, file: !4695, line: 125, baseType: !174, size: 64, offset: 896)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4694, file: !4695, line: 139, baseType: !174, size: 64, offset: 960)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4694, file: !4695, line: 142, baseType: !174, size: 64, offset: 1024)
!4714 = !DIDerivedType(tag: DW_TAG_member, scope: !4694, file: !4695, line: 144, baseType: !4715, size: 64, offset: 1088)
!4715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4694, file: !4695, line: 144, size: 64, elements: !4716)
!4716 = !{!4717, !4718, !4719}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4715, file: !4695, line: 146, baseType: !197, size: 16)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4715, file: !4695, line: 148, baseType: !191, size: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4715, file: !4695, line: 150, baseType: !4720, size: 64)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4695, line: 59, size: 64, elements: !4721)
!4721 = !{!4722, !4723, !4724}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4720, file: !4695, line: 61, baseType: !191, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4720, file: !4695, line: 63, baseType: !191, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4720, file: !4695, line: 65, baseType: !191, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4694, file: !4695, line: 153, baseType: !174, size: 64, offset: 1152)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4694, file: !4695, line: 154, baseType: !174, size: 64, offset: 1216)
!4727 = !DIDerivedType(tag: DW_TAG_member, scope: !4694, file: !4695, line: 156, baseType: !4728, size: 64, offset: 1280)
!4728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4694, file: !4695, line: 156, size: 64, elements: !4729)
!4729 = !{!4730, !4731, !4732}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4728, file: !4695, line: 158, baseType: !197, size: 16)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4728, file: !4695, line: 160, baseType: !191, size: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4728, file: !4695, line: 162, baseType: !4733, size: 64)
!4733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4695, line: 69, size: 64, elements: !4734)
!4734 = !{!4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744}
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4733, file: !4695, line: 71, baseType: !191, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4733, file: !4695, line: 73, baseType: !191, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4733, file: !4695, line: 75, baseType: !191, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4733, file: !4695, line: 77, baseType: !191, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4733, file: !4695, line: 80, baseType: !191, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4733, file: !4695, line: 83, baseType: !191, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4733, file: !4695, line: 86, baseType: !191, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4733, file: !4695, line: 88, baseType: !191, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4733, file: !4695, line: 93, baseType: !191, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4733, file: !4695, line: 100, baseType: !191, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4670, file: !4599, line: 96, baseType: !199, size: 32, offset: 1024)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4617, file: !4599, line: 352, baseType: !4747, size: 4608, align: 512)
!4747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4599, line: 333, size: 4608, align: 512, elements: !4748)
!4748 = !{!4749, !4750, !4757}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4747, file: !4599, line: 334, baseType: !4635, size: 4096, align: 128)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4747, file: !4599, line: 335, baseType: !4751, size: 512, offset: 4096)
!4751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4599, line: 312, size: 512, elements: !4752)
!4752 = !{!4753, !4754, !4755}
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4751, file: !4599, line: 313, baseType: !191, size: 64)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4751, file: !4599, line: 314, baseType: !191, size: 64, offset: 64)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4751, file: !4599, line: 315, baseType: !4756, size: 384, offset: 128)
!4756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 384, elements: !3165)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4747, file: !4599, line: 336, baseType: !4758, offset: 4608)
!4758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, elements: !3082)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4617, file: !4599, line: 353, baseType: !4760, size: 32768)
!4760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 32768, elements: !4761)
!4761 = !{!4762}
!4762 = !DISubrange(count: 4096)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4598, file: !4599, line: 484, baseType: !4604, size: 64, offset: 192)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4598, file: !4599, line: 491, baseType: !4765, size: 128, offset: 256)
!4765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4599, line: 404, size: 128, elements: !4766)
!4766 = !{!4767, !4768, !4769}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4765, file: !4599, line: 424, baseType: !191, size: 64)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4765, file: !4599, line: 432, baseType: !24, size: 32, offset: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4765, file: !4599, line: 440, baseType: !24, size: 32, offset: 96)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4598, file: !4599, line: 498, baseType: !4765, size: 128, offset: 384)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4598, file: !4599, line: 508, baseType: !4605, size: 33280, align: 512, offset: 512)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2677, file: !2678, line: 16, baseType: !2687, size: 192, offset: 512)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2677, file: !2678, line: 17, baseType: !1566, size: 32, offset: 704)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1828, file: !31, line: 1240, baseType: !179, size: 64, offset: 6912)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1828, file: !31, line: 1243, baseType: !199, size: 32, offset: 6976)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1828, file: !31, line: 1245, baseType: !2434, size: 64, offset: 7040)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1828, file: !31, line: 1246, baseType: !2434, size: 64, offset: 7104)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1828, file: !31, line: 1248, baseType: !178, size: 32, offset: 7168)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1828, file: !31, line: 1249, baseType: !4780, size: 64, offset: 7232)
!4780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4781 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 634, flags: DIFlagFwdDecl)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1828, file: !31, line: 1252, baseType: !218, size: 256, offset: 7296)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1828, file: !31, line: 1253, baseType: !4784, size: 128, offset: 7552)
!4784 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4785, line: 21, baseType: !4786)
!4785 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4785, line: 19, size: 128, elements: !4787)
!4787 = !{!4788}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4786, file: !4785, line: 20, baseType: !4789, size: 128)
!4789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !195, size: 128, elements: !4010)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1828, file: !31, line: 1255, baseType: !24, size: 32, offset: 7680)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1828, file: !31, line: 1261, baseType: !1937, size: 256, offset: 7744)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1828, file: !31, line: 1267, baseType: !325, size: 64, offset: 8000)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1828, file: !31, line: 1269, baseType: !1774, size: 64, offset: 8064)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1828, file: !31, line: 1271, baseType: !4795, size: 448, offset: 8128)
!4795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2443, line: 63, size: 448, elements: !4796)
!4796 = !{!4797, !4802, !4803, !4804, !4805, !4806, !4807}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4795, file: !2443, line: 64, baseType: !4798, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4799, size: 64)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!174, !4801, !2441}
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4795, file: !2443, line: 66, baseType: !4798, size: 64, offset: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4795, file: !2443, line: 69, baseType: !1643, size: 64, offset: 128)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4795, file: !2443, line: 70, baseType: !126, size: 32, offset: 192)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4795, file: !2443, line: 71, baseType: !24, size: 32, offset: 224)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4795, file: !2443, line: 74, baseType: !1453, size: 128, offset: 256)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4795, file: !2443, line: 85, baseType: !4808, size: 64, offset: 384)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1828, file: !31, line: 1274, baseType: !1941, size: 64, offset: 8576)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1828, file: !31, line: 1280, baseType: !1941, size: 64, offset: 8640)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1828, file: !31, line: 1283, baseType: !126, size: 32, offset: 8704)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1828, file: !31, line: 1286, baseType: !3746, size: 32, offset: 8736)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1828, file: !31, line: 1289, baseType: !2254, size: 64, offset: 8768)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1828, file: !31, line: 1290, baseType: !2302, size: 64, offset: 8832)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1828, file: !31, line: 1297, baseType: !3259, size: 64, offset: 8896)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1828, file: !31, line: 1304, baseType: !4817, size: 64, offset: 8960)
!4817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4818, line: 49, size: 64, elements: !4819)
!4818 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4819 = !{!4820}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4817, file: !4818, line: 50, baseType: !4821, size: 64)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4818, line: 41, size: 512, align: 512, elements: !4823)
!4823 = !{!4824, !4825, !4830}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4822, file: !4818, line: 43, baseType: !1546, size: 32)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4822, file: !4818, line: 45, baseType: !4826, size: 192, offset: 64)
!4826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4818, line: 29, size: 192, elements: !4827)
!4827 = !{!4828, !4829}
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4826, file: !4818, line: 30, baseType: !1453, size: 128)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4826, file: !4818, line: 32, baseType: !1643, size: 64, offset: 128)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4822, file: !4818, line: 46, baseType: !1643, size: 64, offset: 256)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1828, file: !31, line: 1305, baseType: !4817, size: 64, offset: 9024)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1828, file: !31, line: 1306, baseType: !2154, size: 128, align: 64, offset: 9088)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1828, file: !31, line: 1307, baseType: !2192, size: 256, offset: 9216)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1828, file: !31, line: 1309, baseType: !1937, size: 256, offset: 9472)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1828, file: !31, line: 1314, baseType: !126, size: 32, offset: 9728)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1828, file: !31, line: 1317, baseType: !1546, size: 32, align: 512, offset: 10240)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1828, file: !31, line: 1318, baseType: !1453, size: 128, offset: 10304)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1828, file: !31, line: 1320, baseType: !1546, size: 32, offset: 10432)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1828, file: !31, line: 1321, baseType: !1453, size: 128, offset: 10496)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1822, file: !1823, line: 73, baseType: !126, size: 32, offset: 128)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1822, file: !1823, line: 74, baseType: !4842, size: 64, offset: 192)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !3106, line: 42, flags: DIFlagFwdDecl)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1776, file: !1720, line: 141, baseType: !4846, size: 64, offset: 704)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!126, !2504, !2014}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1776, file: !1720, line: 142, baseType: !4850, size: 64, offset: 768)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!1718, !1718, !4853}
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1684)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1719, file: !1720, line: 96, baseType: !1827, size: 64, offset: 832)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1719, file: !1720, line: 97, baseType: !174, size: 64, offset: 896)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1719, file: !1720, line: 98, baseType: !179, size: 64, offset: 960)
!4858 = !DIDerivedType(tag: DW_TAG_member, scope: !1719, file: !1720, line: 100, baseType: !4859, size: 128, offset: 1024)
!4859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !1720, line: 100, size: 128, elements: !4860)
!4860 = !{!4861, !4862}
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4859, file: !1720, line: 101, baseType: !1453, size: 128)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4859, file: !1720, line: 102, baseType: !4863, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1719, file: !1720, line: 104, baseType: !1453, size: 128, offset: 1152)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1719, file: !1720, line: 105, baseType: !1453, size: 128, offset: 1280)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1719, file: !1720, line: 113, baseType: !4867, size: 128, offset: 1408)
!4867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1719, file: !1720, line: 109, size: 128, elements: !4868)
!4868 = !{!4869, !4870, !4871}
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4867, file: !1720, line: 110, baseType: !2178, size: 128)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4867, file: !1720, line: 111, baseType: !1734, size: 128)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4867, file: !1720, line: 112, baseType: !2154, size: 128, align: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1712, file: !31, line: 1968, baseType: !4873, size: 64, offset: 64)
!4873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4874, size: 64)
!4874 = !DISubroutineType(types: !4875)
!4875 = !{!325, !1718, !1683, !4876}
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4878, line: 10, size: 128, elements: !4879)
!4878 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4879 = !{!4880, !4881}
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4877, file: !4878, line: 11, baseType: !1980, size: 64)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4877, file: !4878, line: 12, baseType: !179, size: 64, offset: 64)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1712, file: !31, line: 1969, baseType: !4883, size: 64, offset: 128)
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DISubroutineType(types: !4885)
!4885 = !{!126, !4842, !1683, !126}
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1712, file: !31, line: 1970, baseType: !4887, size: 64, offset: 192)
!4887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4888, size: 64)
!4888 = !DISubroutineType(types: !4889)
!4889 = !{!1706, !1683, !126, !2014}
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1712, file: !31, line: 1972, baseType: !4891, size: 64, offset: 256)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!126, !1718, !1608, !126}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1712, file: !31, line: 1974, baseType: !4895, size: 64, offset: 320)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!126, !4842, !1683, !1718, !1649, !2014}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1712, file: !31, line: 1976, baseType: !4899, size: 64, offset: 384)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!126, !1718, !1683, !1718}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1712, file: !31, line: 1977, baseType: !4903, size: 64, offset: 448)
!4903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4904, size: 64)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!126, !1683, !1718}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1712, file: !31, line: 1978, baseType: !4907, size: 64, offset: 512)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4908, size: 64)
!4908 = !DISubroutineType(types: !4909)
!4909 = !{!126, !4842, !1683, !1718, !325}
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1712, file: !31, line: 1980, baseType: !4911, size: 64, offset: 576)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!126, !4842, !1683, !1718, !1649}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1712, file: !31, line: 1982, baseType: !4903, size: 64, offset: 640)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1712, file: !31, line: 1983, baseType: !4916, size: 64, offset: 704)
!4916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4917, size: 64)
!4917 = !DISubroutineType(types: !4918)
!4918 = !{!126, !4842, !1683, !1718, !1649, !1832}
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1712, file: !31, line: 1985, baseType: !4920, size: 64, offset: 768)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!126, !4842, !1683, !1718, !1683, !1718, !24}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1712, file: !31, line: 1987, baseType: !4924, size: 64, offset: 832)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!126, !4842, !1718, !4927}
!4927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4928, size: 64)
!4928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 226, size: 640, elements: !4929)
!4929 = !{!4930, !4931, !4932, !4942, !4951, !4952, !4957, !4958, !4959}
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4928, file: !31, line: 227, baseType: !24, size: 32)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4928, file: !31, line: 228, baseType: !1649, size: 16, offset: 32)
!4932 = !DIDerivedType(tag: DW_TAG_member, scope: !4928, file: !31, line: 241, baseType: !4933, size: 32, offset: 64)
!4933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4928, file: !31, line: 241, size: 32, elements: !4934)
!4934 = !{!4935, !4936}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4933, file: !31, line: 242, baseType: !1689, size: 32)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4933, file: !31, line: 243, baseType: !4937, size: 32)
!4937 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4938, line: 16, baseType: !4939)
!4938 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4938, line: 14, size: 32, elements: !4940)
!4940 = !{!4941}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4939, file: !4938, line: 15, baseType: !1694, size: 32)
!4942 = !DIDerivedType(tag: DW_TAG_member, scope: !4928, file: !31, line: 245, baseType: !4943, size: 32, offset: 96)
!4943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4928, file: !31, line: 245, size: 32, elements: !4944)
!4944 = !{!4945, !4946}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4943, file: !31, line: 246, baseType: !1698, size: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4943, file: !31, line: 247, baseType: !4947, size: 32)
!4947 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4938, line: 20, baseType: !4948)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4938, line: 18, size: 32, elements: !4949)
!4949 = !{!4950}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4948, file: !4938, line: 19, baseType: !1702, size: 32)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4928, file: !31, line: 249, baseType: !1837, size: 64, offset: 128)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4928, file: !31, line: 250, baseType: !4953, size: 128, offset: 192)
!4953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !2435, line: 13, size: 128, elements: !4954)
!4954 = !{!4955, !4956}
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4953, file: !2435, line: 14, baseType: !2434, size: 64)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4953, file: !2435, line: 15, baseType: !1643, size: 64, offset: 64)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4928, file: !31, line: 251, baseType: !4953, size: 128, offset: 320)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4928, file: !31, line: 252, baseType: !4953, size: 128, offset: 448)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4928, file: !31, line: 259, baseType: !3022, size: 64, offset: 576)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1712, file: !31, line: 1988, baseType: !4961, size: 64, offset: 896)
!4961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4962, size: 64)
!4962 = !DISubroutineType(types: !4963)
!4963 = !{!126, !4842, !2504, !4964, !199, !24}
!4964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4965, size: 64)
!4965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4966, line: 22, size: 1280, elements: !4967)
!4966 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4967 = !{!4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988}
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4965, file: !4966, line: 23, baseType: !199, size: 32)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4965, file: !4966, line: 24, baseType: !1649, size: 16, offset: 32)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4965, file: !4966, line: 25, baseType: !24, size: 32, offset: 64)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4965, file: !4966, line: 26, baseType: !3144, size: 32, offset: 96)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4965, file: !4966, line: 27, baseType: !191, size: 64, offset: 128)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4965, file: !4966, line: 28, baseType: !191, size: 64, offset: 192)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4965, file: !4966, line: 41, baseType: !191, size: 64, offset: 256)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4965, file: !4966, line: 42, baseType: !1832, size: 32, offset: 320)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4965, file: !4966, line: 43, baseType: !1832, size: 32, offset: 352)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4965, file: !4966, line: 44, baseType: !1689, size: 32, offset: 384)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4965, file: !4966, line: 45, baseType: !1698, size: 32, offset: 416)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4965, file: !4966, line: 46, baseType: !1837, size: 64, offset: 448)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4965, file: !4966, line: 47, baseType: !4953, size: 128, offset: 512)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4965, file: !4966, line: 48, baseType: !4953, size: 128, offset: 640)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4965, file: !4966, line: 49, baseType: !4953, size: 128, offset: 768)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4965, file: !4966, line: 50, baseType: !4953, size: 128, offset: 896)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4965, file: !4966, line: 51, baseType: !191, size: 64, offset: 1024)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4965, file: !4966, line: 52, baseType: !191, size: 64, offset: 1088)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4965, file: !4966, line: 53, baseType: !199, size: 32, offset: 1152)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4965, file: !4966, line: 54, baseType: !199, size: 32, offset: 1184)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4965, file: !4966, line: 55, baseType: !191, size: 64, offset: 1216)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1712, file: !31, line: 1990, baseType: !4990, size: 64, offset: 960)
!4990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4991, size: 64)
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!1640, !1718, !1608, !719}
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1712, file: !31, line: 1991, baseType: !4994, size: 64, offset: 1024)
!4994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4995, size: 64)
!4995 = !DISubroutineType(types: !4996)
!4996 = !{!126, !1683, !4997, !191, !191}
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 55, flags: DIFlagFwdDecl)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1712, file: !31, line: 1993, baseType: !5000, size: 64, offset: 1088)
!5000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5001, size: 64)
!5001 = !DISubroutineType(types: !5002)
!5002 = !{!126, !1683, !126}
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1712, file: !31, line: 1994, baseType: !5004, size: 64, offset: 1152)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!126, !1683, !1718, !3022, !24, !1649}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1712, file: !31, line: 1997, baseType: !5008, size: 64, offset: 1216)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{!126, !4842, !1683, !3022, !1649}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1712, file: !31, line: 1999, baseType: !5012, size: 64, offset: 1280)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!1706, !4842, !1718, !126}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1712, file: !31, line: 2001, baseType: !5016, size: 64, offset: 1344)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!126, !4842, !1718, !1706, !126}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1712, file: !31, line: 2003, baseType: !5020, size: 64, offset: 1408)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!126, !4842, !1718, !5023}
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !31, line: 76, flags: DIFlagFwdDecl)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1712, file: !31, line: 2005, baseType: !5026, size: 64, offset: 1472)
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!126, !1718, !5023}
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1712, file: !31, line: 2006, baseType: !5030, size: 64, offset: 1536)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!5033, !1683}
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !31, line: 3192, size: 192, elements: !5035)
!5035 = !{!5036, !5043}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5034, file: !31, line: 3193, baseType: !5037, size: 128)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !5038, line: 296, size: 128, elements: !5039)
!5038 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!5039 = !{!5040, !5041, !5042}
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !5037, file: !5038, line: 297, baseType: !1546, size: 32)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !5037, file: !5038, line: 299, baseType: !2446, size: 32, offset: 32)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !5037, file: !5038, line: 300, baseType: !179, size: 64, offset: 64)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5034, file: !31, line: 3194, baseType: !199, size: 32, offset: 128)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1684, file: !31, line: 655, baseType: !1827, size: 64, offset: 448)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1684, file: !31, line: 656, baseType: !1679, size: 64, offset: 512)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1684, file: !31, line: 659, baseType: !179, size: 64, offset: 576)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1684, file: !31, line: 663, baseType: !174, size: 64, offset: 640)
!5048 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !31, line: 671, baseType: !5049, size: 32, offset: 704)
!5049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !31, line: 671, size: 32, elements: !5050)
!5050 = !{!5051, !5053}
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5049, file: !31, line: 672, baseType: !5052, size: 32)
!5052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5049, file: !31, line: 673, baseType: !24, size: 32)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1684, file: !31, line: 675, baseType: !1832, size: 32, offset: 736)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1684, file: !31, line: 676, baseType: !1837, size: 64, offset: 768)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1684, file: !31, line: 677, baseType: !4953, size: 128, offset: 832)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1684, file: !31, line: 678, baseType: !4953, size: 128, offset: 960)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1684, file: !31, line: 679, baseType: !4953, size: 128, offset: 1088)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1684, file: !31, line: 680, baseType: !1546, size: 32, offset: 1216)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1684, file: !31, line: 681, baseType: !177, size: 16, offset: 1248)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1684, file: !31, line: 682, baseType: !194, size: 8, offset: 1264)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1684, file: !31, line: 683, baseType: !194, size: 8, offset: 1272)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1684, file: !31, line: 684, baseType: !2582, size: 64, offset: 1280)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1684, file: !31, line: 691, baseType: !174, size: 64, offset: 1344)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1684, file: !31, line: 692, baseType: !2594, size: 320, offset: 1408)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1684, file: !31, line: 694, baseType: !174, size: 64, offset: 1728)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1684, file: !31, line: 695, baseType: !174, size: 64, offset: 1792)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1684, file: !31, line: 697, baseType: !2178, size: 128, offset: 1856)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1684, file: !31, line: 698, baseType: !1453, size: 128, offset: 1984)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1684, file: !31, line: 707, baseType: !1453, size: 128, offset: 2112)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1684, file: !31, line: 708, baseType: !1453, size: 128, offset: 2240)
!5072 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !31, line: 709, baseType: !5073, size: 128, offset: 2368)
!5073 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !31, line: 709, size: 128, elements: !5074)
!5074 = !{!5075, !5076}
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5073, file: !31, line: 710, baseType: !2302, size: 64)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5073, file: !31, line: 711, baseType: !2154, size: 128, align: 64)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1684, file: !31, line: 713, baseType: !1943, size: 64, offset: 2496)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1684, file: !31, line: 714, baseType: !1943, size: 64, offset: 2560)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1684, file: !31, line: 715, baseType: !1566, size: 32, offset: 2624)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1684, file: !31, line: 716, baseType: !1566, size: 32, offset: 2656)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1684, file: !31, line: 717, baseType: !1566, size: 32, offset: 2688)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1684, file: !31, line: 719, baseType: !1566, size: 32, offset: 2720)
!5083 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !31, line: 721, baseType: !5084, size: 64, offset: 2752)
!5084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !31, line: 721, size: 64, elements: !5085)
!5085 = !{!5086, !5087}
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5084, file: !31, line: 722, baseType: !3290, size: 64)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5084, file: !31, line: 723, baseType: !2325, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1684, file: !31, line: 725, baseType: !5089, size: 64, offset: 2816)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 725, flags: DIFlagFwdDecl)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1684, file: !31, line: 726, baseType: !1680, size: 1536, align: 64, offset: 2880)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1684, file: !31, line: 727, baseType: !1453, size: 128, offset: 4416)
!5093 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !31, line: 728, baseType: !5094, size: 64, offset: 4544)
!5094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !31, line: 728, size: 64, elements: !5095)
!5095 = !{!5096, !5097, !5100, !5101}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5094, file: !31, line: 729, baseType: !3696, size: 64)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5094, file: !31, line: 730, baseType: !5098, size: 64)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 730, flags: DIFlagFwdDecl)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5094, file: !31, line: 731, baseType: !1608, size: 64)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5094, file: !31, line: 732, baseType: !24, size: 32)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1684, file: !31, line: 735, baseType: !178, size: 32, offset: 4608)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1684, file: !31, line: 738, baseType: !178, size: 32, offset: 4640)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1684, file: !31, line: 739, baseType: !4780, size: 64, offset: 4672)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1684, file: !31, line: 750, baseType: !179, size: 64, offset: 4736)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1680, file: !31, line: 474, baseType: !5037, size: 128, offset: 64)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1680, file: !31, line: 475, baseType: !2594, size: 320, offset: 192)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1680, file: !31, line: 476, baseType: !2446, size: 32, offset: 512)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1680, file: !31, line: 477, baseType: !1566, size: 32, offset: 544)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1680, file: !31, line: 482, baseType: !2880, size: 128, offset: 576)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1680, file: !31, line: 483, baseType: !174, size: 64, offset: 704)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1680, file: !31, line: 484, baseType: !174, size: 64, offset: 768)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1680, file: !31, line: 485, baseType: !5114, size: 64, offset: 832)
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5116)
!5116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 404, size: 1280, elements: !5117)
!5117 = !{!5118, !5122, !5192, !5196, !5200, !5206, !5210, !5214, !5219, !5223, !5227, !5231, !5232, !5236, !5240, !5244, !5249, !5253, !5260, !5261}
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5116, file: !31, line: 405, baseType: !5119, size: 64)
!5119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5120, size: 64)
!5120 = !DISubroutineType(types: !5121)
!5121 = !{!126, !3483, !2337}
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5116, file: !31, line: 406, baseType: !5123, size: 64, offset: 64)
!5123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5124, size: 64)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!126, !3022, !5126}
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5127, size: 64)
!5127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !55, line: 293, size: 1536, elements: !5128)
!5128 = !{!5129, !5159, !5173}
!5129 = !DIDerivedType(tag: DW_TAG_member, scope: !5127, file: !55, line: 295, baseType: !5130, size: 512)
!5130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5127, file: !55, line: 295, size: 512, elements: !5131)
!5131 = !{!5132, !5158}
!5132 = !DIDerivedType(tag: DW_TAG_member, scope: !5130, file: !55, line: 296, baseType: !5133, size: 448)
!5133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5130, file: !55, line: 296, size: 448, elements: !5134)
!5134 = !{!5135, !5136, !5145, !5146, !5147, !5156, !5157}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5133, file: !55, line: 298, baseType: !174, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_member, scope: !5133, file: !55, line: 299, baseType: !5137, size: 128, offset: 64)
!5137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5133, file: !55, line: 299, size: 128, elements: !5138)
!5138 = !{!5139, !5140}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5137, file: !55, line: 300, baseType: !1453, size: 128)
!5140 = !DIDerivedType(tag: DW_TAG_member, scope: !5137, file: !55, line: 302, baseType: !5141, size: 128)
!5141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5137, file: !55, line: 302, size: 128, elements: !5142)
!5142 = !{!5143, !5144}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !5141, file: !55, line: 303, baseType: !179, size: 64)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !5141, file: !55, line: 305, baseType: !24, size: 32, offset: 64)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5133, file: !55, line: 310, baseType: !1679, size: 64, offset: 192)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5133, file: !55, line: 311, baseType: !174, size: 64, offset: 256)
!5147 = !DIDerivedType(tag: DW_TAG_member, scope: !5133, file: !55, line: 312, baseType: !5148, size: 64, offset: 320)
!5148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5133, file: !55, line: 312, size: 64, elements: !5149)
!5149 = !{!5150, !5151}
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5148, file: !55, line: 313, baseType: !179, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5148, file: !55, line: 314, baseType: !5152, size: 64)
!5152 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !55, line: 257, baseType: !5153)
!5153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 255, size: 64, elements: !5154)
!5154 = !{!5155}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5153, file: !55, line: 256, baseType: !174, size: 64)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5133, file: !55, line: 316, baseType: !1566, size: 32, offset: 384)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5133, file: !55, line: 317, baseType: !1566, size: 32, offset: 416)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5130, file: !55, line: 323, baseType: !3484, size: 512, align: 128)
!5159 = !DIDerivedType(tag: DW_TAG_member, scope: !5127, file: !55, line: 325, baseType: !5160, size: 512, offset: 512)
!5160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5127, file: !55, line: 325, size: 512, elements: !5161)
!5161 = !{!5162, !5172}
!5162 = !DIDerivedType(tag: DW_TAG_member, scope: !5160, file: !55, line: 326, baseType: !5163, size: 320)
!5163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5160, file: !55, line: 326, size: 320, elements: !5164)
!5164 = !{!5165, !5166, !5167, !5168, !5169, !5170, !5171}
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5163, file: !55, line: 327, baseType: !174, size: 64)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5163, file: !55, line: 328, baseType: !174, size: 64, offset: 64)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5163, file: !55, line: 329, baseType: !174, size: 64, offset: 128)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5163, file: !55, line: 331, baseType: !1566, size: 32, offset: 192)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5163, file: !55, line: 332, baseType: !1566, size: 32, offset: 224)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5163, file: !55, line: 333, baseType: !1566, size: 32, offset: 256)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5163, file: !55, line: 335, baseType: !24, size: 32, offset: 288)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5160, file: !55, line: 339, baseType: !3484, size: 512, align: 128)
!5173 = !DIDerivedType(tag: DW_TAG_member, scope: !5127, file: !55, line: 341, baseType: !5174, size: 512, offset: 1024)
!5174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5127, file: !55, line: 341, size: 512, elements: !5175)
!5175 = !{!5176, !5185, !5191}
!5176 = !DIDerivedType(tag: DW_TAG_member, scope: !5174, file: !55, line: 342, baseType: !5177, size: 384)
!5177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5174, file: !55, line: 342, size: 384, elements: !5178)
!5178 = !{!5179, !5180, !5181, !5182, !5183, !5184}
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5177, file: !55, line: 343, baseType: !174, size: 64)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5177, file: !55, line: 344, baseType: !174, size: 64, offset: 64)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5177, file: !55, line: 346, baseType: !179, size: 64, offset: 128)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5177, file: !55, line: 347, baseType: !179, size: 64, offset: 192)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5177, file: !55, line: 348, baseType: !179, size: 64, offset: 256)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5177, file: !55, line: 349, baseType: !179, size: 64, offset: 320)
!5185 = !DIDerivedType(tag: DW_TAG_member, scope: !5174, file: !55, line: 352, baseType: !5186, size: 256)
!5186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5174, file: !55, line: 352, size: 256, elements: !5187)
!5187 = !{!5188, !5189, !5190}
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5186, file: !55, line: 353, baseType: !174, size: 64)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5186, file: !55, line: 354, baseType: !174, size: 64, offset: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5186, file: !55, line: 356, baseType: !1453, size: 128, offset: 128)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5174, file: !55, line: 359, baseType: !3484, size: 512, align: 128)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5116, file: !31, line: 409, baseType: !5193, size: 64, offset: 128)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!126, !1679, !2337}
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5116, file: !31, line: 412, baseType: !5197, size: 64, offset: 192)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!2014, !1679, !5126}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5116, file: !31, line: 414, baseType: !5201, size: 64, offset: 256)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{null, !5204}
!5204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5205, size: 64)
!5205 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 310, flags: DIFlagFwdDecl)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5116, file: !31, line: 416, baseType: !5207, size: 64, offset: 320)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!126, !3022, !1679, !1837, !24, !4532, !3711}
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5116, file: !31, line: 419, baseType: !5211, size: 64, offset: 384)
!5211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5212, size: 64)
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!126, !3022, !1679, !1837, !24, !24, !3483, !179}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5116, file: !31, line: 424, baseType: !5215, size: 64, offset: 448)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DISubroutineType(types: !5217)
!5217 = !{!5218, !1679, !5218}
!5218 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !720, line: 131, baseType: !191)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5116, file: !31, line: 425, baseType: !5220, size: 64, offset: 512)
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5221, size: 64)
!5221 = !DISubroutineType(types: !5222)
!5222 = !{null, !5126, !719, !719}
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5116, file: !31, line: 426, baseType: !5224, size: 64, offset: 576)
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5225, size: 64)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!2014, !5126, !2446}
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5116, file: !31, line: 427, baseType: !5228, size: 64, offset: 640)
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = !DISubroutineType(types: !5230)
!5230 = !{null, !5126}
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5116, file: !31, line: 428, baseType: !3309, size: 64, offset: 704)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5116, file: !31, line: 433, baseType: !5233, size: 64, offset: 768)
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DISubroutineType(types: !5235)
!5235 = !{!126, !1679, !5126, !5126, !91}
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5116, file: !31, line: 435, baseType: !5237, size: 64, offset: 832)
!5237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5238, size: 64)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!126, !5126}
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5116, file: !31, line: 436, baseType: !5241, size: 64, offset: 896)
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{!2014, !5126, !719, !719}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5116, file: !31, line: 438, baseType: !5245, size: 64, offset: 960)
!5245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5246, size: 64)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{null, !5126, !5248, !5248}
!5248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5116, file: !31, line: 439, baseType: !5250, size: 64, offset: 1024)
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!126, !1679, !3483}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5116, file: !31, line: 442, baseType: !5254, size: 64, offset: 1088)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!126, !5257, !3022, !5259}
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5258, size: 64)
!5258 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 66, flags: DIFlagFwdDecl)
!5259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5116, file: !31, line: 444, baseType: !3703, size: 64, offset: 1152)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5116, file: !31, line: 445, baseType: !5262, size: 64, offset: 1216)
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!126, !3312, !3334}
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1680, file: !31, line: 486, baseType: !174, size: 64, offset: 896)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1680, file: !31, line: 487, baseType: !2594, size: 320, offset: 960)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1680, file: !31, line: 488, baseType: !3746, size: 32, offset: 1280)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1680, file: !31, line: 489, baseType: !1546, size: 32, offset: 1312)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1680, file: !31, line: 490, baseType: !1453, size: 128, offset: 1344)
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1680, file: !31, line: 491, baseType: !179, size: 64, offset: 1472)
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1670, file: !1634, line: 180, baseType: !5272, size: 64, offset: 320)
!5272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!1640, !3022, !1539, !1669, !1608, !1837, !719}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1670, file: !1634, line: 182, baseType: !5272, size: 64, offset: 384)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1670, file: !1634, line: 184, baseType: !5277, size: 64, offset: 448)
!5277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5278, size: 64)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!126, !3022, !1539, !1669, !3374}
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1658, file: !1634, line: 90, baseType: !5281, size: 64, offset: 192)
!5281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1658, file: !1634, line: 91, baseType: !5283, size: 64, offset: 256)
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1624, file: !1534, line: 120, baseType: !5285, size: 64, offset: 192)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!5288, !1591}
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5289, size: 64)
!5289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5290)
!5290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !99, line: 39, size: 384, elements: !5291)
!5291 = !{!5292, !5293, !5297, !5301, !5307, !5311}
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5290, file: !99, line: 40, baseType: !98, size: 32)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !5290, file: !99, line: 41, baseType: !5294, size: 64, offset: 64)
!5294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5295, size: 64)
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!2014}
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !5290, file: !99, line: 42, baseType: !5298, size: 64, offset: 128)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!179}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !5290, file: !99, line: 43, baseType: !5302, size: 64, offset: 192)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = !DISubroutineType(types: !5304)
!5304 = !{!360, !5305}
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !99, line: 19, flags: DIFlagFwdDecl)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !5290, file: !99, line: 44, baseType: !5308, size: 64, offset: 256)
!5308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5309, size: 64)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!360}
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !5290, file: !99, line: 45, baseType: !1980, size: 64, offset: 320)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1624, file: !1534, line: 121, baseType: !5313, size: 64, offset: 256)
!5313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5314, size: 64)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!360, !1591}
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1624, file: !1534, line: 122, baseType: !5317, size: 64, offset: 320)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{null, !1591, !5320, !5321}
!5320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1533, file: !1534, line: 70, baseType: !5323, size: 64, offset: 384)
!5323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5324, size: 64)
!5324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1852, line: 190, size: 1152, elements: !5325)
!5325 = !{!5326, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5417, !5418, !5419, !5420, !5421, !5424}
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5324, file: !1852, line: 191, baseType: !1566, size: 32)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5324, file: !1852, line: 192, baseType: !1566, size: 32, offset: 32)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5324, file: !1852, line: 202, baseType: !5323, size: 64, offset: 64)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5324, file: !1852, line: 203, baseType: !325, size: 64, offset: 128)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5324, file: !1852, line: 205, baseType: !2046, size: 192, align: 64, offset: 192)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5324, file: !1852, line: 207, baseType: !360, size: 64, offset: 384)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5324, file: !1852, line: 208, baseType: !24, size: 32, offset: 448)
!5333 = !DIDerivedType(tag: DW_TAG_member, scope: !5324, file: !1852, line: 209, baseType: !5334, size: 256, offset: 512)
!5334 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5324, file: !1852, line: 209, size: 256, elements: !5335)
!5335 = !{!5336, !5345, !5349}
!5336 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5334, file: !1852, line: 210, baseType: !5337, size: 256)
!5337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1852, line: 153, size: 256, elements: !5338)
!5338 = !{!5339, !5340, !5341, !5344}
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !5337, file: !1852, line: 154, baseType: !174, size: 64)
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5337, file: !1852, line: 156, baseType: !2883, size: 64, offset: 64)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5337, file: !1852, line: 162, baseType: !5342, size: 64, offset: 128)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1852, line: 162, flags: DIFlagFwdDecl)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5337, file: !1852, line: 167, baseType: !174, size: 64, offset: 192)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !5334, file: !1852, line: 211, baseType: !5346, size: 64)
!5346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1852, line: 170, size: 64, elements: !5347)
!5347 = !{!5348}
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !5346, file: !1852, line: 171, baseType: !5323, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5334, file: !1852, line: 212, baseType: !5350, size: 256)
!5350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1852, line: 174, size: 256, elements: !5351)
!5351 = !{!5352, !5412, !5415, !5416}
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5350, file: !1852, line: 175, baseType: !5353, size: 64)
!5353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5354, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5355)
!5355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1852, line: 271, size: 768, elements: !5356)
!5356 = !{!5357, !5377, !5381, !5385, !5389, !5393, !5397, !5401, !5402, !5403, !5404, !5408}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5355, file: !1852, line: 276, baseType: !5358, size: 64)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!126, !5361}
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1852, line: 251, size: 1216, elements: !5363)
!5363 = !{!5364, !5365, !5366, !5367, !5368, !5369, !5370, !5371, !5372, !5373, !5374, !5375, !5376}
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5362, file: !1852, line: 253, baseType: !5323, size: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5362, file: !1852, line: 254, baseType: !3022, size: 64, offset: 64)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !5362, file: !1852, line: 255, baseType: !2374, size: 64, offset: 128)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5362, file: !1852, line: 256, baseType: !179, size: 64, offset: 192)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5362, file: !1852, line: 259, baseType: !1937, size: 256, offset: 256)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !5362, file: !1852, line: 260, baseType: !1937, size: 256, offset: 512)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5362, file: !1852, line: 261, baseType: !126, size: 32, offset: 768)
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5362, file: !1852, line: 262, baseType: !1453, size: 128, offset: 832)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !5362, file: !1852, line: 263, baseType: !1608, size: 64, offset: 960)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5362, file: !1852, line: 265, baseType: !719, size: 64, offset: 1024)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !5362, file: !1852, line: 266, baseType: !2014, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !5362, file: !1852, line: 267, baseType: !2014, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5362, file: !1852, line: 268, baseType: !3419, size: 64, offset: 1152)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5355, file: !1852, line: 277, baseType: !5378, size: 64, offset: 64)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5379, size: 64)
!5379 = !DISubroutineType(types: !5380)
!5380 = !{null, !5361}
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5355, file: !1852, line: 290, baseType: !5382, size: 64, offset: 128)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DISubroutineType(types: !5384)
!5384 = !{!126, !2374, !179}
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5355, file: !1852, line: 292, baseType: !5386, size: 64, offset: 192)
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5387, size: 64)
!5387 = !DISubroutineType(types: !5388)
!5388 = !{!179, !2374, !3303}
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5355, file: !1852, line: 293, baseType: !5390, size: 64, offset: 256)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = !DISubroutineType(types: !5392)
!5392 = !{!179, !2374, !179, !3303}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5355, file: !1852, line: 294, baseType: !5394, size: 64, offset: 320)
!5394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5395 = !DISubroutineType(types: !5396)
!5396 = !{null, !2374, !179}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5355, file: !1852, line: 296, baseType: !5398, size: 64, offset: 384)
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = !DISubroutineType(types: !5400)
!5400 = !{!1640, !5361, !1608, !719, !1837}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5355, file: !1852, line: 306, baseType: !719, size: 64, offset: 448)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !5355, file: !1852, line: 313, baseType: !2014, size: 8, offset: 512)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5355, file: !1852, line: 314, baseType: !5398, size: 64, offset: 576)
!5404 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5355, file: !1852, line: 317, baseType: !5405, size: 64, offset: 640)
!5405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5406, size: 64)
!5406 = !DISubroutineType(types: !5407)
!5407 = !{!3361, !5361, !3363}
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5355, file: !1852, line: 320, baseType: !5409, size: 64, offset: 704)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!126, !5361, !3374}
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5350, file: !1852, line: 176, baseType: !5413, size: 64, offset: 64)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1852, line: 35, flags: DIFlagFwdDecl)
!5415 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5350, file: !1852, line: 177, baseType: !1837, size: 64, offset: 128)
!5416 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !5350, file: !1852, line: 178, baseType: !5323, size: 64, offset: 192)
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5324, file: !1852, line: 215, baseType: !179, size: 64, offset: 768)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5324, file: !1852, line: 221, baseType: !191, size: 64, offset: 832)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5324, file: !1852, line: 223, baseType: !177, size: 16, offset: 896)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5324, file: !1852, line: 224, baseType: !1649, size: 16, offset: 912)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !5324, file: !1852, line: 225, baseType: !5422, size: 64, offset: 960)
!5422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5423, size: 64)
!5423 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1852, line: 36, flags: DIFlagFwdDecl)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5324, file: !1852, line: 227, baseType: !2154, size: 128, align: 64, offset: 1024)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1533, file: !1534, line: 71, baseType: !5426, size: 32, offset: 448)
!5426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5427, line: 19, size: 32, elements: !5428)
!5427 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5428 = !{!5429}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5426, file: !5427, line: 20, baseType: !2714, size: 32)
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1533, file: !1534, line: 73, baseType: !24, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1533, file: !1534, line: 74, baseType: !24, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1533, file: !1534, line: 75, baseType: !24, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1533, file: !1534, line: 76, baseType: !24, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1533, file: !1534, line: 77, baseType: !24, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1530, file: !111, line: 707, baseType: !1529, size: 64, offset: 512)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1530, file: !111, line: 709, baseType: !5437, size: 64, offset: 576)
!5437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5438, size: 64)
!5438 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !111, line: 37, flags: DIFlagFwdDecl)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1530, file: !111, line: 711, baseType: !325, size: 64, offset: 640)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1530, file: !111, line: 712, baseType: !5441, size: 64, offset: 704)
!5441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5442, size: 64)
!5442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5443)
!5443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !111, line: 89, size: 384, elements: !5444)
!5444 = !{!5445, !5446, !5447, !5453, !5458, !5462}
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5443, file: !111, line: 90, baseType: !325, size: 64)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5443, file: !111, line: 91, baseType: !1655, size: 64, offset: 64)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5443, file: !111, line: 92, baseType: !5448, size: 64, offset: 128)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = !DISubroutineType(types: !5450)
!5450 = !{!126, !5451, !1603}
!5451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5452, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1530)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5443, file: !111, line: 93, baseType: !5454, size: 64, offset: 192)
!5454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5455, size: 64)
!5455 = !DISubroutineType(types: !5456)
!5456 = !{!1608, !5451, !5457, !5320, !5321}
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5443, file: !111, line: 95, baseType: !5459, size: 64, offset: 256)
!5459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5460, size: 64)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{null, !1529}
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5443, file: !111, line: 97, baseType: !5463, size: 64, offset: 320)
!5463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5464, size: 64)
!5464 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5465)
!5465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !118, line: 286, size: 1472, elements: !5466)
!5466 = !{!5467, !5471, !5472, !5473, !5474, !5475, !5476, !5477, !5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5486, !5487, !5488, !5489, !5490, !5491, !5492}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !5465, file: !118, line: 287, baseType: !5468, size: 64)
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5469, size: 64)
!5469 = !DISubroutineType(types: !5470)
!5470 = !{!126, !1529}
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !5465, file: !118, line: 288, baseType: !5459, size: 64, offset: 64)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5465, file: !118, line: 289, baseType: !5468, size: 64, offset: 128)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5465, file: !118, line: 290, baseType: !5468, size: 64, offset: 192)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !5465, file: !118, line: 291, baseType: !5468, size: 64, offset: 256)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !5465, file: !118, line: 292, baseType: !5468, size: 64, offset: 320)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !5465, file: !118, line: 293, baseType: !5468, size: 64, offset: 384)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !5465, file: !118, line: 294, baseType: !5468, size: 64, offset: 448)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !5465, file: !118, line: 295, baseType: !5468, size: 64, offset: 512)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !5465, file: !118, line: 296, baseType: !5468, size: 64, offset: 576)
!5480 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !5465, file: !118, line: 297, baseType: !5468, size: 64, offset: 640)
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !5465, file: !118, line: 298, baseType: !5468, size: 64, offset: 704)
!5482 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !5465, file: !118, line: 299, baseType: !5468, size: 64, offset: 768)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !5465, file: !118, line: 300, baseType: !5468, size: 64, offset: 832)
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !5465, file: !118, line: 301, baseType: !5468, size: 64, offset: 896)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !5465, file: !118, line: 302, baseType: !5468, size: 64, offset: 960)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !5465, file: !118, line: 303, baseType: !5468, size: 64, offset: 1024)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !5465, file: !118, line: 304, baseType: !5468, size: 64, offset: 1088)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !5465, file: !118, line: 305, baseType: !5468, size: 64, offset: 1152)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !5465, file: !118, line: 306, baseType: !5468, size: 64, offset: 1216)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !5465, file: !118, line: 307, baseType: !5468, size: 64, offset: 1280)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !5465, file: !118, line: 308, baseType: !5468, size: 64, offset: 1344)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !5465, file: !118, line: 309, baseType: !5468, size: 64, offset: 1408)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1530, file: !111, line: 714, baseType: !5494, size: 64, offset: 768)
!5494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5495, size: 64)
!5495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5496)
!5496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !5497, line: 80, size: 1344, elements: !5498)
!5497 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!5498 = !{!5499, !5500, !5501, !5502, !5503, !5504, !5560, !5561, !5562, !5563, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5577}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5496, file: !5497, line: 81, baseType: !325, size: 64)
!5500 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !5496, file: !5497, line: 82, baseType: !325, size: 64, offset: 64)
!5501 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !5496, file: !5497, line: 83, baseType: !1655, size: 64, offset: 128)
!5502 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5496, file: !5497, line: 84, baseType: !1655, size: 64, offset: 192)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !5496, file: !5497, line: 85, baseType: !1655, size: 64, offset: 256)
!5504 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5496, file: !5497, line: 87, baseType: !5505, size: 64, offset: 320)
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5506, size: 64)
!5506 = !DISubroutineType(types: !5507)
!5507 = !{!126, !1529, !5508}
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !105, line: 96, size: 1152, elements: !5510)
!5510 = !{!5511, !5512, !5513, !5514, !5515, !5516, !5517, !5530, !5540, !5541, !5542, !5543, !5544, !5552, !5553, !5554, !5555, !5556, !5557}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5509, file: !105, line: 97, baseType: !325, size: 64)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5509, file: !105, line: 98, baseType: !5494, size: 64, offset: 64)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5509, file: !105, line: 100, baseType: !1866, size: 64, offset: 128)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !5509, file: !105, line: 101, baseType: !325, size: 64, offset: 192)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !5509, file: !105, line: 103, baseType: !2014, size: 8, offset: 256)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !5509, file: !105, line: 104, baseType: !104, size: 32, offset: 288)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !5509, file: !105, line: 106, baseType: !5518, size: 64, offset: 320)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5520)
!5520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !5521, line: 282, size: 1600, elements: !5522)
!5521 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!5522 = !{!5523, !5524, !5525, !5529}
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5520, file: !5521, line: 283, baseType: !218, size: 256)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5520, file: !5521, line: 284, baseType: !218, size: 256, offset: 256)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !5520, file: !5521, line: 285, baseType: !5526, size: 1024, offset: 512)
!5526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !5527)
!5527 = !{!5528}
!5528 = !DISubrange(count: 128)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5520, file: !5521, line: 286, baseType: !360, size: 64, offset: 1536)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !5509, file: !105, line: 107, baseType: !5531, size: 64, offset: 384)
!5531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5532, size: 64)
!5532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5533)
!5533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !5521, line: 217, size: 256, elements: !5534)
!5534 = !{!5535, !5536, !5538, !5539}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5533, file: !5521, line: 218, baseType: !4789, size: 128)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5533, file: !5521, line: 219, baseType: !5537, size: 64, offset: 128)
!5537 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !5521, line: 15, baseType: !174)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !5533, file: !5521, line: 220, baseType: !178, size: 32, offset: 192)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !5533, file: !5521, line: 221, baseType: !178, size: 32, offset: 224)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5509, file: !105, line: 109, baseType: !5468, size: 64, offset: 448)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5509, file: !105, line: 110, baseType: !5459, size: 64, offset: 512)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5509, file: !105, line: 111, baseType: !5468, size: 64, offset: 576)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5509, file: !105, line: 112, baseType: !5459, size: 64, offset: 640)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5509, file: !105, line: 113, baseType: !5545, size: 64, offset: 704)
!5545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5546, size: 64)
!5546 = !DISubroutineType(types: !5547)
!5547 = !{!126, !1529, !5548}
!5548 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !118, line: 60, baseType: !5549)
!5549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !118, line: 58, size: 32, elements: !5550)
!5550 = !{!5551}
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5549, file: !118, line: 59, baseType: !126, size: 32)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5509, file: !105, line: 114, baseType: !5468, size: 64, offset: 768)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5509, file: !105, line: 115, baseType: !1655, size: 64, offset: 832)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5509, file: !105, line: 116, baseType: !1655, size: 64, offset: 896)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5509, file: !105, line: 118, baseType: !5463, size: 64, offset: 960)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !5509, file: !105, line: 119, baseType: !5459, size: 64, offset: 1024)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5509, file: !105, line: 121, baseType: !5558, size: 64, offset: 1088)
!5558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5559, size: 64)
!5559 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !105, line: 121, flags: DIFlagFwdDecl)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !5496, file: !5497, line: 88, baseType: !5448, size: 64, offset: 384)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5496, file: !5497, line: 89, baseType: !5468, size: 64, offset: 448)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !5496, file: !5497, line: 90, baseType: !5459, size: 64, offset: 512)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5496, file: !5497, line: 91, baseType: !5459, size: 64, offset: 576)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5496, file: !5497, line: 92, baseType: !5459, size: 64, offset: 640)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !5496, file: !5497, line: 94, baseType: !5468, size: 64, offset: 704)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !5496, file: !5497, line: 95, baseType: !5468, size: 64, offset: 768)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5496, file: !5497, line: 97, baseType: !5545, size: 64, offset: 832)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5496, file: !5497, line: 98, baseType: !5468, size: 64, offset: 896)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !5496, file: !5497, line: 100, baseType: !5468, size: 64, offset: 960)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !5496, file: !5497, line: 102, baseType: !5468, size: 64, offset: 1024)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !5496, file: !5497, line: 103, baseType: !5459, size: 64, offset: 1088)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5496, file: !5497, line: 105, baseType: !5463, size: 64, offset: 1152)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !5496, file: !5497, line: 107, baseType: !5574, size: 64, offset: 1216)
!5574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5575, size: 64)
!5575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5576)
!5576 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !5497, line: 107, flags: DIFlagFwdDecl)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !5496, file: !5497, line: 109, baseType: !2014, size: 8, offset: 1280)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1530, file: !111, line: 715, baseType: !5508, size: 64, offset: 832)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1530, file: !111, line: 717, baseType: !179, size: 64, offset: 896)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1530, file: !111, line: 719, baseType: !179, size: 64, offset: 960)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1530, file: !111, line: 721, baseType: !1937, size: 256, offset: 1024)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1530, file: !111, line: 725, baseType: !5583, size: 448, offset: 1280)
!5583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !111, line: 517, size: 448, elements: !5584)
!5584 = !{!5585, !5586, !5587, !5588}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5583, file: !111, line: 518, baseType: !1453, size: 128)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5583, file: !111, line: 519, baseType: !1453, size: 128, offset: 128)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !5583, file: !111, line: 520, baseType: !1453, size: 128, offset: 256)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5583, file: !111, line: 521, baseType: !110, size: 32, offset: 384)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1530, file: !111, line: 726, baseType: !5590, size: 2496, offset: 1728)
!5590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !118, line: 663, size: 2496, elements: !5591)
!5591 = !{!5592, !5593, !5594, !5595, !5596, !5597, !5598, !5599, !5600, !5601, !5602, !5603, !5604, !5605, !5606, !5607, !5634, !5635, !5636, !5637, !5638, !5639, !5640, !5641, !5642, !5643, !5644, !5645, !5646, !5647, !5648, !5649, !5650, !5651, !5652, !5653, !5654, !5655, !5656, !5657, !5658, !5659, !5660, !5661, !5662, !5663, !5664, !5665, !5666, !5667, !5668, !5674, !5678}
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !5590, file: !118, line: 664, baseType: !5548, size: 32)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !5590, file: !118, line: 665, baseType: !24, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !5590, file: !118, line: 666, baseType: !24, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !5590, file: !118, line: 667, baseType: !2014, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !5590, file: !118, line: 668, baseType: !2014, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!5597 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !5590, file: !118, line: 669, baseType: !2014, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5598 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !5590, file: !118, line: 670, baseType: !2014, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !5590, file: !118, line: 671, baseType: !2014, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !5590, file: !118, line: 672, baseType: !2014, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !5590, file: !118, line: 673, baseType: !2014, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !5590, file: !118, line: 674, baseType: !2014, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !5590, file: !118, line: 675, baseType: !199, size: 32, offset: 64)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5590, file: !118, line: 676, baseType: !1546, size: 32, offset: 96)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5590, file: !118, line: 678, baseType: !1453, size: 128, offset: 128)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !5590, file: !118, line: 679, baseType: !1886, size: 256, offset: 256)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !5590, file: !118, line: 680, baseType: !5608, size: 64, offset: 512)
!5608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5609, size: 64)
!5609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !5610, line: 43, size: 1536, elements: !5611)
!5610 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!5611 = !{!5612, !5613, !5614, !5615, !5616, !5619, !5620, !5621, !5622, !5623, !5624, !5625, !5626, !5627, !5628, !5629, !5630, !5631, !5632, !5633}
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5609, file: !5610, line: 44, baseType: !325, size: 64)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5609, file: !5610, line: 45, baseType: !126, size: 32, offset: 64)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5609, file: !5610, line: 46, baseType: !1453, size: 128, offset: 128)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5609, file: !5610, line: 47, baseType: !1546, size: 32, offset: 256)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5609, file: !5610, line: 48, baseType: !5617, size: 64, offset: 320)
!5617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5618, size: 64)
!5618 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !118, line: 629, flags: DIFlagFwdDecl)
!5619 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !5609, file: !5610, line: 49, baseType: !2174, size: 320, offset: 384)
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5609, file: !5610, line: 50, baseType: !174, size: 64, offset: 704)
!5621 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !5609, file: !5610, line: 51, baseType: !2829, size: 64, offset: 768)
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !5609, file: !5610, line: 52, baseType: !2829, size: 64, offset: 832)
!5623 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !5609, file: !5610, line: 53, baseType: !2829, size: 64, offset: 896)
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !5609, file: !5610, line: 54, baseType: !2829, size: 64, offset: 960)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !5609, file: !5610, line: 55, baseType: !2829, size: 64, offset: 1024)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !5609, file: !5610, line: 56, baseType: !174, size: 64, offset: 1088)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !5609, file: !5610, line: 57, baseType: !174, size: 64, offset: 1152)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !5609, file: !5610, line: 58, baseType: !174, size: 64, offset: 1216)
!5629 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !5609, file: !5610, line: 59, baseType: !174, size: 64, offset: 1280)
!5630 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !5609, file: !5610, line: 60, baseType: !174, size: 64, offset: 1344)
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5609, file: !5610, line: 61, baseType: !1529, size: 64, offset: 1408)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5609, file: !5610, line: 62, baseType: !2014, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !5609, file: !5610, line: 63, baseType: !2014, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !5590, file: !118, line: 681, baseType: !2014, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!5635 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !5590, file: !118, line: 682, baseType: !2014, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !5590, file: !118, line: 683, baseType: !2014, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !5590, file: !118, line: 684, baseType: !24, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !5590, file: !118, line: 685, baseType: !24, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !5590, file: !118, line: 690, baseType: !2821, size: 512, offset: 640)
!5640 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !5590, file: !118, line: 691, baseType: !191, size: 64, offset: 1152)
!5641 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5590, file: !118, line: 692, baseType: !2192, size: 256, offset: 1216)
!5642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !5590, file: !118, line: 693, baseType: !2687, size: 192, offset: 1472)
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !5590, file: !118, line: 694, baseType: !5617, size: 64, offset: 1664)
!5644 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !5590, file: !118, line: 695, baseType: !1566, size: 32, offset: 1728)
!5645 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !5590, file: !118, line: 696, baseType: !1566, size: 32, offset: 1760)
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !5590, file: !118, line: 697, baseType: !24, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !5590, file: !118, line: 698, baseType: !24, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !5590, file: !118, line: 699, baseType: !24, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !5590, file: !118, line: 700, baseType: !24, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !5590, file: !118, line: 701, baseType: !24, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !5590, file: !118, line: 702, baseType: !24, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !5590, file: !118, line: 703, baseType: !2014, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !5590, file: !118, line: 704, baseType: !24, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !5590, file: !118, line: 705, baseType: !24, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !5590, file: !118, line: 706, baseType: !24, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !5590, file: !118, line: 707, baseType: !24, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !5590, file: !118, line: 708, baseType: !24, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !5590, file: !118, line: 709, baseType: !24, size: 32, offset: 1824)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !5590, file: !118, line: 710, baseType: !117, size: 32, offset: 1856)
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !5590, file: !118, line: 711, baseType: !125, size: 32, offset: 1888)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !5590, file: !118, line: 712, baseType: !125, size: 32, offset: 1920)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !5590, file: !118, line: 713, baseType: !126, size: 32, offset: 1952)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !5590, file: !118, line: 714, baseType: !126, size: 32, offset: 1984)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !5590, file: !118, line: 715, baseType: !191, size: 64, offset: 2048)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !5590, file: !118, line: 716, baseType: !191, size: 64, offset: 2112)
!5666 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !5590, file: !118, line: 717, baseType: !191, size: 64, offset: 2176)
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !5590, file: !118, line: 718, baseType: !191, size: 64, offset: 2240)
!5668 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !5590, file: !118, line: 720, baseType: !5669, size: 64, offset: 2304)
!5669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5670, size: 64)
!5670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !118, line: 632, size: 64, elements: !5671)
!5671 = !{!5672, !5673}
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5670, file: !118, line: 633, baseType: !1546, size: 32)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5670, file: !118, line: 634, baseType: !24, size: 32, offset: 32)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !5590, file: !118, line: 721, baseType: !5675, size: 64, offset: 2368)
!5675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5676, size: 64)
!5676 = !DISubroutineType(types: !5677)
!5677 = !{null, !1529, !1933}
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !5590, file: !118, line: 722, baseType: !5679, size: 64, offset: 2432)
!5679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5680, size: 64)
!5680 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !118, line: 722, flags: DIFlagFwdDecl)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1530, file: !111, line: 727, baseType: !5682, size: 64, offset: 4224)
!5682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5683, size: 64)
!5683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !118, line: 742, size: 1792, elements: !5684)
!5684 = !{!5685, !5686, !5687, !5691, !5692, !5693}
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5683, file: !118, line: 743, baseType: !5465, size: 1472)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5683, file: !118, line: 744, baseType: !5468, size: 64, offset: 1472)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !5683, file: !118, line: 745, baseType: !5688, size: 64, offset: 1536)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DISubroutineType(types: !5690)
!5690 = !{null, !1529, !2014}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !5683, file: !118, line: 746, baseType: !5468, size: 64, offset: 1600)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !5683, file: !118, line: 747, baseType: !5459, size: 64, offset: 1664)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !5683, file: !118, line: 748, baseType: !5459, size: 64, offset: 1728)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1530, file: !111, line: 736, baseType: !5695, size: 128, offset: 4288)
!5695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !111, line: 529, size: 128, elements: !5696)
!5696 = !{!5697, !5701}
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !5695, file: !111, line: 531, baseType: !5698, size: 64)
!5698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5699, size: 64)
!5699 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !5700, line: 13, flags: DIFlagFwdDecl)
!5700 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5695, file: !111, line: 532, baseType: !5702, size: 64, offset: 64)
!5702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5703, size: 64)
!5703 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !111, line: 49, flags: DIFlagFwdDecl)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1530, file: !111, line: 738, baseType: !5705, size: 64, offset: 4416)
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5707)
!5707 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !111, line: 738, flags: DIFlagFwdDecl)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1530, file: !111, line: 740, baseType: !5709, size: 64, offset: 4480)
!5709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1530, file: !111, line: 741, baseType: !191, size: 64, offset: 4544)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1530, file: !111, line: 746, baseType: !191, size: 64, offset: 4608)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1530, file: !111, line: 747, baseType: !5713, size: 64, offset: 4672)
!5713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5714, size: 64)
!5714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5715)
!5715 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !111, line: 747, flags: DIFlagFwdDecl)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1530, file: !111, line: 749, baseType: !5717, size: 64, offset: 4736)
!5717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5718, size: 64)
!5718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !111, line: 428, size: 128, elements: !5719)
!5719 = !{!5720, !5721, !5722}
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !5718, file: !111, line: 433, baseType: !24, size: 32)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !5718, file: !111, line: 434, baseType: !24, size: 32, offset: 32)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !5718, file: !111, line: 435, baseType: !174, size: 64, offset: 64)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1530, file: !111, line: 751, baseType: !1453, size: 128, offset: 4800)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1530, file: !111, line: 762, baseType: !5725, size: 64, offset: 4928)
!5725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5726, size: 64)
!5726 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !111, line: 762, flags: DIFlagFwdDecl)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1530, file: !111, line: 770, baseType: !5728, offset: 4992)
!5728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !5729, line: 5, elements: !2221)
!5729 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1530, file: !111, line: 772, baseType: !5731, size: 64, offset: 4992)
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5732, size: 64)
!5732 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !5733, line: 18, flags: DIFlagFwdDecl)
!5733 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1530, file: !111, line: 773, baseType: !5735, size: 64, offset: 5056)
!5735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5736, size: 64)
!5736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !5737, line: 41, size: 512, elements: !5738)
!5737 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!5738 = !{!5739, !5740, !5834, !5835, !5836, !5837}
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !5736, file: !5737, line: 42, baseType: !5735, size: 64)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5736, file: !5737, line: 43, baseType: !5741, size: 64, offset: 64)
!5741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5742, size: 64)
!5742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5743)
!5743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !5737, line: 125, size: 1408, elements: !5744)
!5744 = !{!5745, !5749, !5753, !5759, !5763, !5764, !5769, !5773, !5777, !5781, !5785, !5786, !5790, !5794, !5798, !5809, !5810, !5811, !5812, !5822, !5826, !5830}
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5743, file: !5737, line: 126, baseType: !5746, size: 64)
!5746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5747, size: 64)
!5747 = !DISubroutineType(types: !5748)
!5748 = !{!5735, !5735}
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !5743, file: !5737, line: 127, baseType: !5750, size: 64, offset: 64)
!5750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5751, size: 64)
!5751 = !DISubroutineType(types: !5752)
!5752 = !{null, !5735}
!5753 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !5743, file: !5737, line: 128, baseType: !5754, size: 64, offset: 128)
!5754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5755, size: 64)
!5755 = !DISubroutineType(types: !5756)
!5756 = !{!2014, !5757}
!5757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5758, size: 64)
!5758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5736)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !5743, file: !5737, line: 129, baseType: !5760, size: 64, offset: 192)
!5760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5761, size: 64)
!5761 = !DISubroutineType(types: !5762)
!5762 = !{!360, !5757, !5451}
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !5743, file: !5737, line: 131, baseType: !5754, size: 64, offset: 256)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !5743, file: !5737, line: 133, baseType: !5765, size: 64, offset: 320)
!5765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5766, size: 64)
!5766 = !DISubroutineType(types: !5767)
!5767 = !{!5768, !5757}
!5768 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !5737, line: 132, flags: DIFlagFwdDecl)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !5743, file: !5737, line: 134, baseType: !5770, size: 64, offset: 384)
!5770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5771, size: 64)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{!2014, !5757, !325}
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !5743, file: !5737, line: 136, baseType: !5774, size: 64, offset: 448)
!5774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5775, size: 64)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{!126, !5757, !325, !24, !179, !719}
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !5743, file: !5737, line: 141, baseType: !5778, size: 64, offset: 512)
!5778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5779, size: 64)
!5779 = !DISubroutineType(types: !5780)
!5780 = !{!126, !5757, !325, !2269, !719}
!5781 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !5743, file: !5737, line: 144, baseType: !5782, size: 64, offset: 576)
!5782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5783, size: 64)
!5783 = !DISubroutineType(types: !5784)
!5784 = !{!325, !5757}
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !5743, file: !5737, line: 145, baseType: !5782, size: 64, offset: 640)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !5743, file: !5737, line: 146, baseType: !5787, size: 64, offset: 704)
!5787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5788, size: 64)
!5788 = !DISubroutineType(types: !5789)
!5789 = !{!5735, !5757}
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !5743, file: !5737, line: 148, baseType: !5791, size: 64, offset: 768)
!5791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5792, size: 64)
!5792 = !DISubroutineType(types: !5793)
!5793 = !{!5735, !5757, !5735}
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !5743, file: !5737, line: 151, baseType: !5795, size: 64, offset: 832)
!5795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5796, size: 64)
!5796 = !DISubroutineType(types: !5797)
!5797 = !{!5735, !5757, !325}
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !5743, file: !5737, line: 153, baseType: !5799, size: 64, offset: 896)
!5799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5800, size: 64)
!5800 = !DISubroutineType(types: !5801)
!5801 = !{!126, !5757, !325, !325, !24, !24, !5802}
!5802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5803, size: 64)
!5803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !5737, line: 94, size: 640, elements: !5804)
!5804 = !{!5805, !5806, !5807}
!5805 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5803, file: !5737, line: 95, baseType: !5735, size: 64)
!5806 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !5803, file: !5737, line: 96, baseType: !24, size: 32, offset: 64)
!5807 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !5803, file: !5737, line: 97, baseType: !5808, size: 512, offset: 128)
!5808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 512, elements: !2864)
!5809 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !5743, file: !5737, line: 158, baseType: !5791, size: 64, offset: 960)
!5810 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !5743, file: !5737, line: 161, baseType: !5787, size: 64, offset: 1024)
!5811 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !5743, file: !5737, line: 163, baseType: !5746, size: 64, offset: 1088)
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !5743, file: !5737, line: 164, baseType: !5813, size: 64, offset: 1152)
!5813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5814, size: 64)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!126, !5757, !5816}
!5816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5817, size: 64)
!5817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !5737, line: 73, size: 128, elements: !5818)
!5818 = !{!5819, !5820, !5821}
!5819 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5817, file: !5737, line: 74, baseType: !24, size: 32)
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5817, file: !5737, line: 75, baseType: !24, size: 32, offset: 32)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !5817, file: !5737, line: 76, baseType: !5757, size: 64, offset: 64)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !5743, file: !5737, line: 166, baseType: !5823, size: 64, offset: 1216)
!5823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5824, size: 64)
!5824 = !DISubroutineType(types: !5825)
!5825 = !{!179, !5735, !126}
!5826 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !5743, file: !5737, line: 167, baseType: !5827, size: 64, offset: 1280)
!5827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5828, size: 64)
!5828 = !DISubroutineType(types: !5829)
!5829 = !{!126, !5757, !24}
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !5743, file: !5737, line: 168, baseType: !5831, size: 64, offset: 1344)
!5831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5832, size: 64)
!5832 = !DISubroutineType(types: !5833)
!5833 = !{!126, !5735}
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5736, file: !5737, line: 44, baseType: !1529, size: 64, offset: 128)
!5835 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !5736, file: !5737, line: 45, baseType: !1453, size: 128, offset: 192)
!5836 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !5736, file: !5737, line: 46, baseType: !1453, size: 128, offset: 320)
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5736, file: !5737, line: 47, baseType: !194, size: 8, offset: 448)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1530, file: !111, line: 776, baseType: !126, size: 32, offset: 5120)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1530, file: !111, line: 778, baseType: !1832, size: 32, offset: 5152)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1530, file: !111, line: 779, baseType: !199, size: 32, offset: 5184)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1530, file: !111, line: 781, baseType: !1546, size: 32, offset: 5216)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1530, file: !111, line: 782, baseType: !1453, size: 128, offset: 5248)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1530, file: !111, line: 784, baseType: !5844, size: 64, offset: 5376)
!5844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5845, size: 64)
!5845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5846)
!5846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !5847, line: 52, size: 768, elements: !5848)
!5847 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!5848 = !{!5849, !5850, !5851, !5852, !5853, !5857, !5861, !5862, !5863, !5864, !5868, !5872}
!5849 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5846, file: !5847, line: 53, baseType: !325, size: 64)
!5850 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !5846, file: !5847, line: 55, baseType: !1655, size: 64, offset: 64)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5846, file: !5847, line: 56, baseType: !1655, size: 64, offset: 128)
!5852 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !5846, file: !5847, line: 58, baseType: !5448, size: 64, offset: 192)
!5853 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !5846, file: !5847, line: 59, baseType: !5854, size: 64, offset: 256)
!5854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5855, size: 64)
!5855 = !DISubroutineType(types: !5856)
!5856 = !{!1608, !5451, !5457}
!5857 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !5846, file: !5847, line: 61, baseType: !5858, size: 64, offset: 320)
!5858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5859, size: 64)
!5859 = !DISubroutineType(types: !5860)
!5860 = !{null, !5844}
!5861 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !5846, file: !5847, line: 62, baseType: !5459, size: 64, offset: 384)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !5846, file: !5847, line: 64, baseType: !5468, size: 64, offset: 448)
!5863 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !5846, file: !5847, line: 66, baseType: !5288, size: 64, offset: 512)
!5864 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !5846, file: !5847, line: 67, baseType: !5865, size: 64, offset: 576)
!5865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5866, size: 64)
!5866 = !DISubroutineType(types: !5867)
!5867 = !{!360, !5451}
!5868 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !5846, file: !5847, line: 69, baseType: !5869, size: 64, offset: 640)
!5869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5870, size: 64)
!5870 = !DISubroutineType(types: !5871)
!5871 = !{null, !5451, !5320, !5321}
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5846, file: !5847, line: 71, baseType: !5463, size: 64, offset: 704)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1530, file: !111, line: 785, baseType: !1655, size: 64, offset: 5440)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1530, file: !111, line: 787, baseType: !5459, size: 64, offset: 5504)
!5875 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1530, file: !111, line: 788, baseType: !5876, size: 64, offset: 5568)
!5876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5877, size: 64)
!5877 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !111, line: 46, flags: DIFlagFwdDecl)
!5878 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1530, file: !111, line: 789, baseType: !5879, size: 64, offset: 5632)
!5879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5880, size: 64)
!5880 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !111, line: 48, flags: DIFlagFwdDecl)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1530, file: !111, line: 791, baseType: !5882, size: 64, offset: 5696)
!5882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5883, size: 64)
!5883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !111, line: 597, size: 128, elements: !5884)
!5884 = !{!5885, !5886, !5887, !5888, !5889}
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5883, file: !111, line: 598, baseType: !133, size: 32)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5883, file: !111, line: 599, baseType: !142, size: 32, offset: 32)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5883, file: !111, line: 600, baseType: !147, size: 32, offset: 64)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5883, file: !111, line: 601, baseType: !2014, size: 8, offset: 96)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5883, file: !111, line: 602, baseType: !2014, size: 8, offset: 104)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1530, file: !111, line: 793, baseType: !152, size: 32, offset: 5760)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1530, file: !111, line: 795, baseType: !2014, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5892 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1530, file: !111, line: 796, baseType: !2014, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5893 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1530, file: !111, line: 797, baseType: !2014, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5894 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1530, file: !111, line: 798, baseType: !2014, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5895 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1530, file: !111, line: 799, baseType: !2014, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1460, file: !1450, line: 676, baseType: !1530, size: 5824, offset: 2240)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !1460, file: !1450, line: 677, baseType: !1669, size: 64, offset: 8064)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !1460, file: !1450, line: 678, baseType: !1669, size: 64, offset: 8128)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !1460, file: !1450, line: 679, baseType: !24, size: 1, offset: 8192, flags: DIFlagBitField, extraData: i64 8192)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "unsafe_warn", scope: !1460, file: !1450, line: 680, baseType: !24, size: 1, offset: 8193, flags: DIFlagBitField, extraData: i64 8192)
!5901 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !1449, file: !1450, line: 325, baseType: !1459, size: 64, offset: 192)
!5902 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !1449, file: !1450, line: 327, baseType: !179, size: 64, offset: 256)
!5903 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !1449, file: !1450, line: 328, baseType: !1514, size: 64, offset: 320)
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !1449, file: !1450, line: 329, baseType: !5905, size: 64, offset: 384)
!5905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5906, size: 64)
!5906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !1450, line: 76, size: 832, elements: !5907)
!5907 = !{!5908, !5909, !5910, !5913, !5914}
!5908 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5906, file: !1450, line: 77, baseType: !1459, size: 64)
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5906, file: !1450, line: 78, baseType: !1453, size: 128, offset: 64)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !5906, file: !1450, line: 79, baseType: !5911, size: 64, offset: 192)
!5911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5912, size: 64)
!5912 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !1450, line: 79, flags: DIFlagFwdDecl)
!5913 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !5906, file: !1450, line: 80, baseType: !184, size: 8, offset: 256)
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !5906, file: !1450, line: 81, baseType: !1533, size: 512, offset: 320)
!5915 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !1449, file: !1450, line: 331, baseType: !24, size: 32, offset: 448)
!5916 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !1449, file: !1450, line: 332, baseType: !177, size: 16, offset: 480)
!5917 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1449, file: !1450, line: 333, baseType: !177, size: 16, offset: 496)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !1449, file: !1450, line: 334, baseType: !177, size: 16, offset: 512)
!5919 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !1449, file: !1450, line: 335, baseType: !177, size: 16, offset: 528)
!5920 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1449, file: !1450, line: 336, baseType: !24, size: 32, offset: 544)
!5921 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !1449, file: !1450, line: 337, baseType: !194, size: 8, offset: 576)
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !1449, file: !1450, line: 338, baseType: !194, size: 8, offset: 584)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "rcec_ea", scope: !1449, file: !1450, line: 344, baseType: !5924, size: 64, offset: 640)
!5924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5925, size: 64)
!5925 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcec_ea", file: !1450, line: 319, flags: DIFlagFwdDecl)
!5926 = !DIDerivedType(tag: DW_TAG_member, name: "rcec", scope: !1449, file: !1450, line: 345, baseType: !1448, size: 64, offset: 704)
!5927 = !DIDerivedType(tag: DW_TAG_member, name: "devcap", scope: !1449, file: !1450, line: 347, baseType: !199, size: 32, offset: 768)
!5928 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !1449, file: !1450, line: 348, baseType: !194, size: 8, offset: 800)
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !1449, file: !1450, line: 349, baseType: !194, size: 8, offset: 808)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !1449, file: !1450, line: 350, baseType: !194, size: 8, offset: 816)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !1449, file: !1450, line: 351, baseType: !194, size: 3, offset: 824, flags: DIFlagBitField, extraData: i64 824)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !1449, file: !1450, line: 352, baseType: !194, size: 8, offset: 832)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !1449, file: !1450, line: 353, baseType: !194, size: 8, offset: 840)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !1449, file: !1450, line: 354, baseType: !197, size: 16, offset: 848)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !1449, file: !1450, line: 355, baseType: !2283, size: 64, offset: 896)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1449, file: !1450, line: 357, baseType: !5937, size: 64, offset: 960)
!5937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5938, size: 64)
!5938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !1450, line: 918, size: 2368, elements: !5939)
!5939 = !{!5940, !5941, !5942, !5955, !5959, !5963, !5967, !5971, !5972, !5976, !5977, !5981, !6001, !6002, !6003, !6004, !6009}
!5940 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5938, file: !1450, line: 919, baseType: !1453, size: 128)
!5941 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5938, file: !1450, line: 920, baseType: !325, size: 64, offset: 128)
!5942 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !5938, file: !1450, line: 921, baseType: !5943, size: 64, offset: 192)
!5943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5944, size: 64)
!5944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5945)
!5945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !5521, line: 44, size: 320, elements: !5946)
!5946 = !{!5947, !5948, !5949, !5950, !5951, !5952, !5953, !5954}
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !5945, file: !5521, line: 45, baseType: !178, size: 32)
!5948 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5945, file: !5521, line: 45, baseType: !178, size: 32, offset: 32)
!5949 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !5945, file: !5521, line: 46, baseType: !178, size: 32, offset: 64)
!5950 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !5945, file: !5521, line: 46, baseType: !178, size: 32, offset: 96)
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5945, file: !5521, line: 47, baseType: !178, size: 32, offset: 128)
!5952 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !5945, file: !5521, line: 47, baseType: !178, size: 32, offset: 160)
!5953 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !5945, file: !5521, line: 48, baseType: !5537, size: 64, offset: 192)
!5954 = !DIDerivedType(tag: DW_TAG_member, name: "override_only", scope: !5945, file: !5521, line: 49, baseType: !178, size: 32, offset: 256)
!5955 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !5938, file: !1450, line: 922, baseType: !5956, size: 64, offset: 256)
!5956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5957, size: 64)
!5957 = !DISubroutineType(types: !5958)
!5958 = !{!126, !1448, !5943}
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !5938, file: !1450, line: 923, baseType: !5960, size: 64, offset: 320)
!5960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5961, size: 64)
!5961 = !DISubroutineType(types: !5962)
!5962 = !{null, !1448}
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !5938, file: !1450, line: 924, baseType: !5964, size: 64, offset: 384)
!5964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5965, size: 64)
!5965 = !DISubroutineType(types: !5966)
!5966 = !{!126, !1448, !5548}
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5938, file: !1450, line: 925, baseType: !5968, size: 64, offset: 448)
!5968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5969, size: 64)
!5969 = !DISubroutineType(types: !5970)
!5970 = !{!126, !1448}
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5938, file: !1450, line: 926, baseType: !5960, size: 64, offset: 512)
!5972 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !5938, file: !1450, line: 927, baseType: !5973, size: 64, offset: 576)
!5973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5974, size: 64)
!5974 = !DISubroutineType(types: !5975)
!5975 = !{!126, !1448, !126}
!5976 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_set_msix_vec_count", scope: !5938, file: !1450, line: 928, baseType: !5973, size: 64, offset: 640)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_get_vf_total_msix", scope: !5938, file: !1450, line: 929, baseType: !5978, size: 64, offset: 704)
!5978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5979, size: 64)
!5979 = !DISubroutineType(types: !5980)
!5980 = !{!199, !1448}
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !5938, file: !1450, line: 930, baseType: !5982, size: 64, offset: 768)
!5982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5983, size: 64)
!5983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5984)
!5984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !1450, line: 837, size: 448, elements: !5985)
!5985 = !{!5986, !5992, !5996, !5997, !5998, !5999, !6000}
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !5984, file: !1450, line: 839, baseType: !5987, size: 64)
!5987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5988, size: 64)
!5988 = !DISubroutineType(types: !5989)
!5989 = !{!5990, !1448, !5991}
!5990 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !1450, line: 814, baseType: !24)
!5991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !1450, line: 196, baseType: !24)
!5992 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !5984, file: !1450, line: 843, baseType: !5993, size: 64, offset: 64)
!5993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5994, size: 64)
!5994 = !DISubroutineType(types: !5995)
!5995 = !{!5990, !1448}
!5996 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !5984, file: !1450, line: 846, baseType: !5993, size: 64, offset: 128)
!5997 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !5984, file: !1450, line: 849, baseType: !5960, size: 64, offset: 192)
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !5984, file: !1450, line: 850, baseType: !5960, size: 64, offset: 256)
!5999 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !5984, file: !1450, line: 853, baseType: !5960, size: 64, offset: 320)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "cor_error_detected", scope: !5984, file: !1450, line: 856, baseType: !5960, size: 64, offset: 384)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5938, file: !1450, line: 931, baseType: !1655, size: 64, offset: 832)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !5938, file: !1450, line: 932, baseType: !1655, size: 64, offset: 896)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !5938, file: !1450, line: 933, baseType: !5509, size: 1152, offset: 960)
!6004 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !5938, file: !1450, line: 934, baseType: !6005, size: 192, offset: 2112)
!6005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !1450, line: 801, size: 192, elements: !6006)
!6006 = !{!6007, !6008}
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6005, file: !1450, line: 802, baseType: !1546, size: 32)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !6005, file: !1450, line: 803, baseType: !1453, size: 128, offset: 64)
!6009 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !5938, file: !1450, line: 935, baseType: !2014, size: 8, offset: 2304)
!6010 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1449, file: !1450, line: 358, baseType: !191, size: 64, offset: 1024)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1449, file: !1450, line: 364, baseType: !5718, size: 128, offset: 1088)
!6012 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !1449, file: !1450, line: 366, baseType: !6013, size: 32, offset: 1216)
!6013 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !1450, line: 171, baseType: !126)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !1449, file: !1450, line: 369, baseType: !194, size: 8, offset: 1248)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !1449, file: !1450, line: 370, baseType: !24, size: 1, offset: 1256, flags: DIFlagBitField, extraData: i64 1256)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !1449, file: !1450, line: 371, baseType: !24, size: 5, offset: 1257, flags: DIFlagBitField, extraData: i64 1256)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !1449, file: !1450, line: 373, baseType: !24, size: 1, offset: 1262, flags: DIFlagBitField, extraData: i64 1256)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !1449, file: !1450, line: 374, baseType: !24, size: 1, offset: 1263, flags: DIFlagBitField, extraData: i64 1256)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !1449, file: !1450, line: 375, baseType: !24, size: 1, offset: 1264, flags: DIFlagBitField, extraData: i64 1256)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !1449, file: !1450, line: 376, baseType: !24, size: 1, offset: 1265, flags: DIFlagBitField, extraData: i64 1256)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !1449, file: !1450, line: 377, baseType: !24, size: 1, offset: 1266, flags: DIFlagBitField, extraData: i64 1256)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !1449, file: !1450, line: 378, baseType: !24, size: 1, offset: 1267, flags: DIFlagBitField, extraData: i64 1256)
!6023 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !1449, file: !1450, line: 379, baseType: !24, size: 1, offset: 1268, flags: DIFlagBitField, extraData: i64 1256)
!6024 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !1449, file: !1450, line: 380, baseType: !24, size: 1, offset: 1269, flags: DIFlagBitField, extraData: i64 1256)
!6025 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !1449, file: !1450, line: 382, baseType: !24, size: 1, offset: 1270, flags: DIFlagBitField, extraData: i64 1256)
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !1449, file: !1450, line: 383, baseType: !24, size: 1, offset: 1271, flags: DIFlagBitField, extraData: i64 1256)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !1449, file: !1450, line: 384, baseType: !24, size: 1, offset: 1272, flags: DIFlagBitField, extraData: i64 1256)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !1449, file: !1450, line: 385, baseType: !24, size: 1, offset: 1273, flags: DIFlagBitField, extraData: i64 1256)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !1449, file: !1450, line: 388, baseType: !24, size: 1, offset: 1274, flags: DIFlagBitField, extraData: i64 1256)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !1449, file: !1450, line: 390, baseType: !24, size: 32, offset: 1280)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !1449, file: !1450, line: 391, baseType: !24, size: 32, offset: 1312)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !1449, file: !1450, line: 394, baseType: !6033, size: 64, offset: 1344)
!6033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6034, size: 64)
!6034 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !1450, line: 316, flags: DIFlagFwdDecl)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !1449, file: !1450, line: 395, baseType: !197, size: 16, offset: 1408)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !1449, file: !1450, line: 396, baseType: !24, size: 1, offset: 1424, flags: DIFlagBitField, extraData: i64 1424)
!6037 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_no_tlp", scope: !1449, file: !1450, line: 399, baseType: !24, size: 1, offset: 1425, flags: DIFlagBitField, extraData: i64 1424)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !1449, file: !1450, line: 400, baseType: !24, size: 1, offset: 1426, flags: DIFlagBitField, extraData: i64 1424)
!6039 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !1449, file: !1450, line: 402, baseType: !5991, size: 32, offset: 1440)
!6040 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1449, file: !1450, line: 403, baseType: !1530, size: 5824, offset: 1472)
!6041 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !1449, file: !1450, line: 405, baseType: !126, size: 32, offset: 7296)
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1449, file: !1450, line: 411, baseType: !24, size: 32, offset: 7328)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !1449, file: !1450, line: 412, baseType: !6044, size: 5632, offset: 7360)
!6044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1471, size: 5632, elements: !6045)
!6045 = !{!6046}
!6046 = !DISubrange(count: 11)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "driver_exclusive_resource", scope: !1449, file: !1450, line: 413, baseType: !1471, size: 512, offset: 12992)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1449, file: !1450, line: 415, baseType: !2014, size: 8, offset: 13504)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !1449, file: !1450, line: 417, baseType: !24, size: 1, offset: 13512, flags: DIFlagBitField, extraData: i64 13512)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !1449, file: !1450, line: 418, baseType: !24, size: 1, offset: 13513, flags: DIFlagBitField, extraData: i64 13512)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !1449, file: !1450, line: 419, baseType: !24, size: 1, offset: 13514, flags: DIFlagBitField, extraData: i64 13512)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !1449, file: !1450, line: 420, baseType: !24, size: 1, offset: 13515, flags: DIFlagBitField, extraData: i64 13512)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !1449, file: !1450, line: 421, baseType: !24, size: 1, offset: 13516, flags: DIFlagBitField, extraData: i64 13512)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !1449, file: !1450, line: 423, baseType: !24, size: 1, offset: 13517, flags: DIFlagBitField, extraData: i64 13512)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !1449, file: !1450, line: 424, baseType: !24, size: 1, offset: 13518, flags: DIFlagBitField, extraData: i64 13512)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !1449, file: !1450, line: 425, baseType: !24, size: 1, offset: 13519, flags: DIFlagBitField, extraData: i64 13512)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !1449, file: !1450, line: 426, baseType: !24, size: 1, offset: 13520, flags: DIFlagBitField, extraData: i64 13512)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !1449, file: !1450, line: 427, baseType: !24, size: 1, offset: 13521, flags: DIFlagBitField, extraData: i64 13512)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !1449, file: !1450, line: 428, baseType: !24, size: 2, offset: 13522, flags: DIFlagBitField, extraData: i64 13512)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !1449, file: !1450, line: 429, baseType: !24, size: 1, offset: 13524, flags: DIFlagBitField, extraData: i64 13512)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !1449, file: !1450, line: 430, baseType: !24, size: 1, offset: 13525, flags: DIFlagBitField, extraData: i64 13512)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !1449, file: !1450, line: 431, baseType: !24, size: 1, offset: 13526, flags: DIFlagBitField, extraData: i64 13512)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !1449, file: !1450, line: 432, baseType: !24, size: 1, offset: 13527, flags: DIFlagBitField, extraData: i64 13512)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !1449, file: !1450, line: 433, baseType: !24, size: 1, offset: 13528, flags: DIFlagBitField, extraData: i64 13512)
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !1449, file: !1450, line: 434, baseType: !24, size: 1, offset: 13529, flags: DIFlagBitField, extraData: i64 13512)
!6066 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !1449, file: !1450, line: 435, baseType: !24, size: 1, offset: 13530, flags: DIFlagBitField, extraData: i64 13512)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "is_msi_managed", scope: !1449, file: !1450, line: 436, baseType: !24, size: 1, offset: 13531, flags: DIFlagBitField, extraData: i64 13512)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !1449, file: !1450, line: 437, baseType: !24, size: 1, offset: 13532, flags: DIFlagBitField, extraData: i64 13512)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !1449, file: !1450, line: 438, baseType: !24, size: 1, offset: 13533, flags: DIFlagBitField, extraData: i64 13512)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !1449, file: !1450, line: 439, baseType: !24, size: 1, offset: 13534, flags: DIFlagBitField, extraData: i64 13512)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !1449, file: !1450, line: 440, baseType: !24, size: 1, offset: 13535, flags: DIFlagBitField, extraData: i64 13512)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !1449, file: !1450, line: 441, baseType: !24, size: 1, offset: 13536, flags: DIFlagBitField, extraData: i64 13512)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !1449, file: !1450, line: 442, baseType: !24, size: 1, offset: 13537, flags: DIFlagBitField, extraData: i64 13512)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !1449, file: !1450, line: 443, baseType: !24, size: 1, offset: 13538, flags: DIFlagBitField, extraData: i64 13512)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !1449, file: !1450, line: 451, baseType: !24, size: 1, offset: 13539, flags: DIFlagBitField, extraData: i64 13512)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !1449, file: !1450, line: 457, baseType: !24, size: 1, offset: 13540, flags: DIFlagBitField, extraData: i64 13512)
!6077 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !1449, file: !1450, line: 458, baseType: !24, size: 1, offset: 13541, flags: DIFlagBitField, extraData: i64 13512)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !1449, file: !1450, line: 459, baseType: !24, size: 1, offset: 13542, flags: DIFlagBitField, extraData: i64 13512)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !1449, file: !1450, line: 460, baseType: !24, size: 1, offset: 13543, flags: DIFlagBitField, extraData: i64 13512)
!6080 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !1449, file: !1450, line: 461, baseType: !24, size: 1, offset: 13544, flags: DIFlagBitField, extraData: i64 13512)
!6081 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !1449, file: !1450, line: 462, baseType: !24, size: 1, offset: 13545, flags: DIFlagBitField, extraData: i64 13512)
!6082 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !1449, file: !1450, line: 463, baseType: !24, size: 1, offset: 13546, flags: DIFlagBitField, extraData: i64 13512)
!6083 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !1449, file: !1450, line: 464, baseType: !24, size: 1, offset: 13547, flags: DIFlagBitField, extraData: i64 13512)
!6084 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !1449, file: !1450, line: 465, baseType: !24, size: 1, offset: 13548, flags: DIFlagBitField, extraData: i64 13512)
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "rom_bar_overlap", scope: !1449, file: !1450, line: 466, baseType: !24, size: 1, offset: 13549, flags: DIFlagBitField, extraData: i64 13512)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !1449, file: !1450, line: 467, baseType: !24, size: 1, offset: 13550, flags: DIFlagBitField, extraData: i64 13512)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !1449, file: !1450, line: 468, baseType: !6088, size: 16, offset: 13552)
!6088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !1450, line: 222, baseType: !177)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !1449, file: !1450, line: 469, baseType: !1566, size: 32, offset: 13568)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap_lock", scope: !1449, file: !1450, line: 471, baseType: !1546, size: 32, offset: 13600)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !1449, file: !1450, line: 472, baseType: !6092, size: 512, offset: 13632)
!6092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 512, elements: !4010)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !1449, file: !1450, line: 473, baseType: !2302, size: 64, offset: 14144)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !1449, file: !1450, line: 474, baseType: !6095, size: 704, offset: 14208)
!6095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1669, size: 704, elements: !6045)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !1449, file: !1450, line: 475, baseType: !6095, size: 704, offset: 14912)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "msix_base", scope: !1449, file: !1450, line: 487, baseType: !179, size: 64, offset: 15616)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "msi_lock", scope: !1449, file: !1450, line: 488, baseType: !1895, size: 32, offset: 15680)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !1449, file: !1450, line: 490, baseType: !6100, size: 320, offset: 15744)
!6100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !1450, line: 309, size: 320, elements: !6101)
!6101 = !{!6102, !6103, !6104}
!6102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6100, file: !1450, line: 310, baseType: !1937, size: 256)
!6103 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6100, file: !1450, line: 311, baseType: !24, size: 32, offset: 256)
!6104 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !6100, file: !1450, line: 312, baseType: !194, size: 8, offset: 288)
!6105 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1450, line: 497, baseType: !6106, size: 64, offset: 16064)
!6106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !1450, line: 497, size: 64, elements: !6107)
!6107 = !{!6108, !6111}
!6108 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !6106, file: !1450, line: 498, baseType: !6109, size: 64)
!6109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6110, size: 64)
!6110 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !1450, line: 317, flags: DIFlagFwdDecl)
!6111 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !6106, file: !1450, line: 499, baseType: !1448, size: 64)
!6112 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !1449, file: !1450, line: 501, baseType: !197, size: 16, offset: 16128)
!6113 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !1449, file: !1450, line: 502, baseType: !194, size: 8, offset: 16144)
!6114 = !DIDerivedType(tag: DW_TAG_member, name: "pri_cap", scope: !1449, file: !1450, line: 505, baseType: !197, size: 16, offset: 16160)
!6115 = !DIDerivedType(tag: DW_TAG_member, name: "pri_reqs_alloc", scope: !1449, file: !1450, line: 506, baseType: !199, size: 32, offset: 16192)
!6116 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_required", scope: !1449, file: !1450, line: 507, baseType: !24, size: 1, offset: 16224, flags: DIFlagBitField, extraData: i64 16224)
!6117 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_cap", scope: !1449, file: !1450, line: 510, baseType: !197, size: 16, offset: 16240)
!6118 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_features", scope: !1449, file: !1450, line: 511, baseType: !197, size: 16, offset: 16256)
!6119 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !1449, file: !1450, line: 519, baseType: !197, size: 16, offset: 16272)
!6120 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !1449, file: !1450, line: 520, baseType: !1476, size: 64, offset: 16320)
!6121 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !1449, file: !1450, line: 521, baseType: !719, size: 64, offset: 16384)
!6122 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !1449, file: !1450, line: 526, baseType: !325, size: 64, offset: 16448)
!6123 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !1449, file: !1450, line: 528, baseType: !174, size: 64, offset: 16512)
!6124 = !DIDerivedType(tag: DW_TAG_member, name: "reset_methods", scope: !1449, file: !1450, line: 531, baseType: !6125, size: 56, offset: 16576)
!6125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 56, elements: !2055)
!6126 = !{!6127, !6128, !6129}
!6127 = !DILocalVariable(name: "dev", arg: 1, scope: !1445, file: !2, line: 424, type: !1448)
!6128 = !DILocalVariable(name: "addr", arg: 2, scope: !1445, file: !2, line: 424, type: !179)
!6129 = !DILocalVariable(name: "port", scope: !6130, file: !2, line: 426, type: !174)
!6130 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 426, column: 2)
!6131 = !DILocation(line: 424, column: 34, scope: !1445)
!6132 = !DILocation(line: 424, column: 54, scope: !1445)
!6133 = !DILocation(line: 426, column: 2, scope: !1445)
!6134 = !DILocation(line: 426, column: 2, scope: !6130)
!6135 = !DILocation(line: 426, column: 2, scope: !6136)
!6136 = distinct !DILexicalBlock(scope: !6130, file: !2, line: 426, column: 2)
!6137 = !DILocation(line: 426, column: 2, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6136, file: !2, line: 426, column: 2)
!6139 = !DILocation(line: 426, column: 2, scope: !6140)
!6140 = distinct !DILexicalBlock(scope: !6136, file: !2, line: 426, column: 2)
!6141 = !DILocation(line: 426, column: 2, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6140, file: !2, line: 426, column: 2)
!6143 = !DILocation(line: 427, column: 1, scope: !1445)
!6144 = !DISubprogram(name: "iounmap", scope: !380, file: !380, line: 199, type: !6145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6145 = !DISubroutineType(types: !6146)
!6146 = !{null, !733}
!6147 = !DISubprogram(name: "__warn_printk", scope: !2084, file: !2084, line: 93, type: !6148, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6148 = !DISubroutineType(types: !6149)
!6149 = !{null, !325, null}
!6150 = distinct !DISubprogram(name: "__readb", scope: !380, file: !380, line: 60, type: !381, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !6151)
!6151 = !{!6152, !6153}
!6152 = !DILocalVariable(name: "addr", arg: 1, scope: !6150, file: !380, line: 60, type: !383)
!6153 = !DILocalVariable(name: "ret", scope: !6150, file: !380, line: 60, type: !184)
!6154 = !DILocation(line: 60, column: 1, scope: !6150)
!6155 = !{i64 2152785018}
!6156 = distinct !DISubprogram(name: "cc_platform_has", scope: !159, file: !159, line: 113, type: !6157, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !6159)
!6157 = !DISubroutineType(types: !6158)
!6158 = !{!2014, !158}
!6159 = !{!6160}
!6160 = !DILocalVariable(name: "attr", arg: 1, scope: !6156, file: !159, line: 113, type: !158)
!6161 = !DILocation(line: 113, column: 49, scope: !6156)
!6162 = !DILocation(line: 113, column: 57, scope: !6156)
!6163 = distinct !DISubprogram(name: "__readw", scope: !380, file: !380, line: 61, type: !442, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !6164)
!6164 = !{!6165, !6166}
!6165 = !DILocalVariable(name: "addr", arg: 1, scope: !6163, file: !380, line: 61, type: !383)
!6166 = !DILocalVariable(name: "ret", scope: !6163, file: !380, line: 61, type: !177)
!6167 = !DILocation(line: 61, column: 1, scope: !6163)
!6168 = !{i64 2152785424}
!6169 = distinct !DISubprogram(name: "__readl", scope: !380, file: !380, line: 62, type: !494, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !6170)
!6170 = !{!6171, !6172}
!6171 = !DILocalVariable(name: "addr", arg: 1, scope: !6169, file: !380, line: 62, type: !383)
!6172 = !DILocalVariable(name: "ret", scope: !6169, file: !380, line: 62, type: !24)
!6173 = !DILocation(line: 62, column: 1, scope: !6169)
!6174 = !{i64 2152785833}
!6175 = distinct !DISubprogram(name: "__writeb", scope: !380, file: !380, line: 68, type: !731, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !6176)
!6176 = !{!6177, !6178}
!6177 = !DILocalVariable(name: "val", arg: 1, scope: !6175, file: !380, line: 68, type: !184)
!6178 = !DILocalVariable(name: "addr", arg: 2, scope: !6175, file: !380, line: 68, type: !733)
!6179 = !DILocation(line: 68, column: 1, scope: !6175)
!6180 = !{i64 2152787382}
!6181 = distinct !DISubprogram(name: "__writew", scope: !380, file: !380, line: 69, type: !770, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !6182)
!6182 = !{!6183, !6184}
!6183 = !DILocalVariable(name: "val", arg: 1, scope: !6181, file: !380, line: 69, type: !177)
!6184 = !DILocalVariable(name: "addr", arg: 2, scope: !6181, file: !380, line: 69, type: !733)
!6185 = !DILocation(line: 69, column: 1, scope: !6181)
!6186 = !{i64 2152787758}
!6187 = distinct !DISubprogram(name: "__writel", scope: !380, file: !380, line: 70, type: !828, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !20, retainedNodes: !6188)
!6188 = !{!6189, !6190}
!6189 = !DILocalVariable(name: "val", arg: 1, scope: !6187, file: !380, line: 70, type: !24)
!6190 = !DILocalVariable(name: "addr", arg: 2, scope: !6187, file: !380, line: 70, type: !733)
!6191 = !DILocation(line: 70, column: 1, scope: !6187)
!6192 = !{i64 2152788136}
