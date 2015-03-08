<<<<<<< HEAD
﻿/*
===========================================================================

Copyright (c) 2010-2015 Darkstar Dev Teams

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see http://www.gnu.org/licenses/

This file is part of DarkStar-server source code.

===========================================================================
*/

#include "../../common/socket.h"

#include "pet_sync.h"

#include "../entities/charentity.h"

/************************************************************************
*																		*
*  Синхронизация питомца с персонажем (владельцем)						*
*																		*
************************************************************************/

CPetSyncPacket::CPetSyncPacket(CCharEntity* PChar)
{
    this->type = 0x67;
    this->size = 0x12;

    DSP_DEBUG_BREAK_IF(PChar->PPet == NULL);

    WBUFB(data, (0x04) - 4) = 0x44; 	// назначение неизвестно
    WBUFB(data, (0x05) - 4) = 0x08; 	// назначение неизвестно

    WBUFW(data, (0x06) - 4) = PChar->targid;
    WBUFL(data, (0x08) - 4) = PChar->id;

    WBUFW(data, (0x0C) - 4) = PChar->PPet->targid;
    WBUFB(data, (0x0E) - 4) = PChar->PPet->GetHPP();
    WBUFB(data, (0x0F) - 4) = PChar->PPet->GetMPP();
    WBUFW(data, (0x10) - 4) = PChar->PPet->health.tp;

    // 0x14 - начинается имя питомца, но мы его записывать не будем, "мы экономить будем" © Матроскин
}
=======
﻿/*
===========================================================================

Copyright (c) 2010-2015 Darkstar Dev Teams

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see http://www.gnu.org/licenses/

This file is part of DarkStar-server source code.

===========================================================================
*/

#include "../../common/socket.h"

#include "pet_sync.h"

#include "../entities/charentity.h"

/************************************************************************
*																		*
*  Синхронизация питомца с персонажем (владельцем)						*
*																		*
************************************************************************/

CPetSyncPacket::CPetSyncPacket(CCharEntity* PChar)
{
    this->type = 0x67;
    this->size = 0x12;

    DSP_DEBUG_BREAK_IF(PChar->PPet == nullptr);

    WBUFB(data, (0x04) - 4) = 0x44; 	// назначение неизвестно
    WBUFB(data, (0x05) - 4) = 0x08; 	// назначение неизвестно

    WBUFW(data, (0x06) - 4) = PChar->targid;
    WBUFL(data, (0x08) - 4) = PChar->id;

    WBUFW(data, (0x0C) - 4) = PChar->PPet->targid;
    WBUFB(data, (0x0E) - 4) = PChar->PPet->GetHPP();
    WBUFB(data, (0x0F) - 4) = PChar->PPet->GetMPP();
    WBUFW(data, (0x10) - 4) = PChar->PPet->health.tp;

    // 0x14 - начинается имя питомца, но мы его записывать не будем, "мы экономить будем" © Матроскин
}
>>>>>>> c91db6bd4e5c3d13dcfd2882db651fd0129d25c9
