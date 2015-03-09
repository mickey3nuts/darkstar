/*
===========================================================================

  Copyright (c) 2010-2014 Darkstar Dev Teams

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

#include <string.h>

#include "char_emotion.h"
#include "../entities/charentity.h"


CCharEmotionPacket::CCharEmotionPacket(CCharEntity * PChar, int8* buff) 
{
	this->type = 0x5a;
	this->size = 0x0c;
	
	WBUFL(data,(0x04)-4) = PChar->id;
	WBUFW(data,(0x0C)-4) = PChar->targid;

	
	WBUFL(data,(0x08)-4) = RBUFL(buff,(0x04));
	WBUFW(data,(0x0E)-4) = RBUFW(buff,(0x08));

	uint8 emoteID = RBUFB(buff,(0x0A));

	if (emoteID == 0x4A) {
		uint8 offset = RBUFB(buff,(0x0C)) - 0x1F;

		WBUFB(data,(0x10)-4) = emoteID + offset; 
		WBUFB(data,(0x12)-4) = offset; 
	}else{
		WBUFB(data,(0x10)-4) = emoteID;

		CItem * weapon = PChar->getStorage(LOC_INVENTORY)->GetItem(PChar->equip[SLOT_MAIN]);
		if (weapon != NULL && weapon->getID() != 0xFFFF) {
			WBUFW(data,(0x12)-4) = weapon->getID();
		}
	}

	WBUFB(data,(0x16)-4) = RBUFB(buff,(0x0B));
}